using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Reflection;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.Misc.BO;
using System.Text;
using PH.RWO.BO;
using PH.DespatchSample.BO;


namespace PH.SPC.BO
{
    public class SampleOrderList : BaseEntityList<SampleOrder, SPCDataContext>
    {

        //RWO系统中调用的接口， 由David修改 2021-10-12
        public AutoGenerateSPCResult AutoGenerateSPC(PH.RWO.BO.WorkOrder workOrder)
        {
            AutoGenerateSPCResult result = new AutoGenerateSPCResult() { Result = true, Msg = "" };
            SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();
            RWOSOPCDataContext db_RWO = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            DSPDataContext db_DespatchSample = ContextBuilder.CreateContext<DSPDataContext>();
            string Str = "";
            try
            {
                var SampleTypeList = db_RWO.WorkOrderSamples
                 .Where(p => p.WorkOrderNo == workOrder.WorkOrderNo && p.WorkShop.StartsWith("PPWs") && (p.SampleQty ?? 0) > 0)
                 .GroupBy(g => new { g.SampleType })
                 .Select(g => new { g.Key, g });

                if (SampleTypeList.Count() == 0)
                {
                    result.Result = false;
                    result.Msg = string.Format("提示：{0} 沒有數據（PPWS）可以生成辦單！", workOrder.WorkOrderNo);
                    return result;
                }

                //如果WO里保存了生成的SplO#，则按SplO#先删除，再生成一次板单，然后将板单号保存到WO中
                if (!string.IsNullOrEmpty(workOrder.SampleOrderNOs)) //格式为：ETAM00256-005-0/ETAM00256-006-0
                {
                    string[] SampleOrders = workOrder.SampleOrderNOs.Split('/');
                    foreach (string obj in SampleOrders)
                    {
                        string[] OneSampleOrder = obj.Split('-');
                        string SplONo = OneSampleOrder[0];
                        int Version1 = Convert.ToInt32(OneSampleOrder[1]);
                        int Version2 = Convert.ToInt32(OneSampleOrder[2]);

                        var sampeOrder = db.SampleOrders.FirstOrDefault(p => p.SampleOrderID == SplONo && p.Version1 == Version1 && p.Version2 == Version2);

                        if (sampeOrder == null) //说明SPC系统中删除了这张板单
                        {
                            continue;
                        }

                        //因为Smpl Type + Project# + Create Date合并了，所以可能存在一个SplO#下对应有一个Project但几个WO的情况，
                        //如果有多个WO在同一个SplO#下, 只能删除SplO#下对应的Style，不能整个SplO#删除
                        if (sampeOrder.Styles.Where(p => p.WorkOrderID != workOrder.WorkOrderNo).Count() > 0) //除了当时WO，还有其他WO时，只删除当前WO对应的Style
                        {
                            Style style = sampeOrder.Styles.FirstOrDefault(p => p.WorkOrderID == workOrder.WorkOrderNo);
                            if (style != null)
                            {
                                db.Styles.DeleteOnSubmit(style);
                                sampeOrder.Styles.Remove(style);
                            }
                        }
                        else
                        {
                            db.SampleOrders.DeleteOnSubmit(sampeOrder);
                        }
                    }
                    db.SubmitChanges();
                }

                //按PH Style#找出最大的SplO#
                //string SampleOrderNo; = db.Styles.Where(p => p.StyleID == workOrder.StyleNo).Select(p => p.SampleOrder.SampleOrderID).Max();

                PHPlatformMiscDataContext MiscDB = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
                string[] NeedNilSmplTypes = new string[] { "CS", "LBT", "LBT-1", "PKS", "PPR", "PPS", "TC", "WT", "GDS", "Keep", "SH", "TOP", "TOP-1", "WS", "WS-1", "AD" };
                var customers = from c in db_RWO.CustomerCodes where c.CustomerCode1 == workOrder.Project.Customer select c;
                foreach (var st in SampleTypeList)
                {
                    //Sample Order

                    //Prj# + Smpl Type + Create Date 要合并成一张SplO#
                    string ProjectNo = workOrder.Project.ProjectNo;
                    var NewSampleOrder = db.SampleOrders
                        .Where(p => p.ProjectNo == ProjectNo && p.SampleType == st.Key.SampleType && p.CreateDate.HasValue && (p.CreateDate ?? DateTime.MaxValue).Date == DateTime.Now.Date)
                        .OrderByDescending(p => p.SampleOrderID).ThenByDescending(p => p.Version1).ThenByDescending(p => p.Version2).FirstOrDefault();

                    if (NewSampleOrder == null)
                    {
                        //因為WARN用戶要求改為PVH, 所以先排除掉WARN的再取最大的SampleOrderID  2023-02-17
                        string SampleOrderNo = db.Styles.Where(p => p.StyleID == workOrder.StyleNo && !p.SampleOrder.SampleOrderID.StartsWith("WARN")).Select(p => p.SampleOrder.SampleOrderID).Max();

                        if (string.IsNullOrEmpty(SampleOrderNo)) //这个款没有做过任何板的情况
                        {
                            //throw new Exception(string.Format("The sample information is nothing of StyleNo {0}", workOrder.StyleNo));
                            result.Result = false;
                            result.Msg = string.Format("款 {0} 沒有發現任何板單信息.\r\nThe sample information is nothing of StyleNo {0}", workOrder.StyleNo);
                            return result;
                        }

                        NewSampleOrder = new SampleOrder();
                        NewSampleOrder.FromWOSystem = true; //标识这个Sample Order是从WO 系统中导入的
                        //NewSampleOrder.GenerateFromWorkOrderStatus = false;
                        NewSampleOrder.SampleOrderID = SampleOrderNo;
                        NewSampleOrder.Version1 = db.SampleOrders.Where(p => p.SampleOrderID == SampleOrderNo).Select(p => (p.Version1 ?? 0)).Max() + 1;
                        NewSampleOrder.Version2 = 0;
                        NewSampleOrder.SampleType = st.Key.SampleType;
                        NewSampleOrder.PatternSource = "Nil";
                        var SampleTypeObj = db_DespatchSample.SampleTypeMasterDBs.FirstOrDefault(p => p.FlagType == "1" && p.SampleTypeCode == NewSampleOrder.SampleType);
                        NewSampleOrder.StageCode = SampleTypeObj == null ? "" : SampleTypeObj.SmplStage;

                        NewSampleOrder.CustomerID = customers.First<PH.RWO.BO.CustomerCode>().Customer;
                        NewSampleOrder.Table = PH.Platform.Common.SysParamHelper.Instance.UserID;
                        NewSampleOrder.CreateDate = DateTime.Now;
                        NewSampleOrder.ProjectNo = workOrder.Project.ProjectNo;
                        NewSampleOrder.FactoryStartDate = workOrder.FactoryWorkShipCompleted;
                        NewSampleOrder.DueDate = workOrder.Project.Customer == "TAMA" ? workOrder.FCLExFtyShipCompleted : workOrder.LCLExFtyShipCompleted;
                        NewSampleOrder.ShipmentDate = workOrder.DeliveryShipCompleted;
                        NewSampleOrder.Factory = workOrder.Project.Factory;

                        NewSampleOrder.ProjectNo = workOrder.Project.ProjectNo;
                        NewSampleOrder.Season = workOrder.Project.Season;
                        NewSampleOrder.ProductGroup = workOrder.CustomerCollection;

                        //客方組別 - 根據客戶默認 Nil ?(可以的話,我們提供客戶給你) Irene要求
                        //NewSampleOrder.CustomerGroup = "";

                        if (NeedNilSmplTypes.Contains(NewSampleOrder.SampleType))
                        {
                            NewSampleOrder.SamplePurpose = "Smpl Only";
                        }

                        db.SampleOrders.InsertOnSubmit(NewSampleOrder);
                    }

                    // NewSampleOrder.AutoSampleOrderID();
                    //(this.CurrentDataContext as SPCDataContext).GetTable<SampleOrder>().InsertOnSubmit(objSampleOrder);

                    //Style
                    Style NewStyle = new Style();
                    NewStyle.SampleOrder = NewSampleOrder;
                    NewStyle.StyleID = workOrder.StyleNo;
                    NewStyle.CustomerStyle = workOrder.CustomerStyleNo; //Customer Style#
                    NewStyle.ProductCategory = workOrder.Category; //Product Cat.

                    var ProductCategoryObj = MiscDB.Misc_DataDictionaries.FirstOrDefault(p => p.DataType == "PH.Project.ProductCategory" && p.DataCode == workOrder.Category);
                    if (ProductCategoryObj != null)
                    {
                        NewStyle.ProductDesc = ProductCategoryObj.Description;
                    }

                    if (workOrder.StyleNo.Length >= 7)
                    {
                        NewStyle.Class = workOrder.StyleNo.Substring(5, 2);
                    }

                    //初样板单
                    NewStyle.CustomerLDStyle = "Nil";
                    var DvpStyle = db.Styles.FirstOrDefault(p => p.StyleID == workOrder.StyleNo && p.SampleOrder.SampleType.ToUpper() == "DVP");
                    NewStyle.CustomerLDStyle = DvpStyle == null ? "Nil" : DvpStyle.StyleID;

                    NewStyle.ProjectNo = workOrder.ProjectNo;      //Project#
                    NewStyle.WorkOrderID = workOrder.WorkOrderNo;  //WO#
                    NewStyle.FWStartDate = workOrder.FactoryWorkShipCompleted; //FW Start Date
                    NewStyle.ExftyDate = workOrder.Project.Customer == "TAMA" ? workOrder.FCLExFtyShipCompleted : workOrder.LCLExFtyShipCompleted; // Ex-fty Date
                    var obj = db_RWO.WorkOrderSamples.FirstOrDefault(p => p.WorkOrderNo == workOrder.WorkOrderNo && p.WorkShop.StartsWith("PPWs") && (p.SampleQty ?? 0) > 0);
                    NewStyle.ProductWs = obj == null ? null : obj.WorkShop;
                    NewStyle.ProductSite = workOrder.Project.Factory; //2022-04-02加入
                    NewSampleOrder.Styles.Add(NewStyle);

                    //Sample Type
                    StyleSort NewSampeType = new StyleSort();
                    NewSampeType.Style = NewStyle;
                    NewSampeType.SortID = st.Key.SampleType;
                    NewSampeType.SortDate = DateTime.Now;
                    NewSampeType.MarkSource = "Nil";      //纸样来源
                    NewSampeType.MaterialStatus = "Nil";  //物料来源
                    NewStyle.StyleSorts.Add(NewSampeType);

                    //Version
                    StyleSortEdition NewVersion = new StyleSortEdition();
                    NewVersion.StyleSort = NewSampeType;
                    NewVersion.EditionID = 1;
                    NewVersion.EditionDate = DateTime.Now;
                    NewSampeType.StyleSortEditions.Add(NewVersion);

                    //SKU
                    var SKUList = db_RWO.WorkOrderSamples.Where(p => p.Company == workOrder.Company && p.SalesOrderNo == workOrder.SalesOrderNo &&
                        p.WorkOrderNo == workOrder.WorkOrderNo && p.SampleType == st.Key.SampleType && (p.SampleQty ?? 0) > 0);

                    NewVersion.EditionDueDate = SKUList.Select(p => p.SampleDespatchDate).Min();

                    foreach (var sku in SKUList)
                    {
                        StyleSize NewStyleSize = new StyleSize();
                        NewStyleSize.StyleSortEdition = NewVersion;
                        NewStyleSize.ColorID = sku.ColorCode;
                        NewStyleSize.Cup = sku.CustCup;
                        NewStyleSize.SizeID = sku.SizeDesc; //客方尺码
                        NewStyleSize.Qty = sku.SampleQty;   //SKU 速递件数
                        NewVersion.StyleSizes.Add(NewStyleSize);
                    }

                    //db.SampleOrders.InsertOnSubmit(NewSampleOrder);
                    NewSampleOrder.ReCalculateTotalInformation();
                    db.SubmitChanges();

                    Str += NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow + " / ";

                    //生成板單信息到SPC后，也將信息導入到預產工廠系統中, 由David增加 2018-12-18
                    string SqlStr = string.Format("exec sp_SPC2Pre_SamepleSystem {0}, '{1}'", NewSampleOrder.OID, NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow);
                    (this.CurrentDataContext as SPCDataContext).ExecuteCommand(SqlStr);
                    //(this.CurrentDataContext as SPCDataContext).ExecuteCommand(string.Format("exec sp_SPC2Pre_SamepleSystem '{0}'", NewSampleOrder.SampleOrderID + "-" + NewSampleOrder.SuffixNoShow));
                }
                Str = Str.TrimEnd(' ', '/');
                result.Result = true;
                result.Msg = Str;
                return result;
            }
            catch (Exception ex)
            {
                result.Result = false;
                result.Msg = string.Format("生成失敗！ {0}", ex.ToString());
                return result;
            }

        }

        ////RWO系统中调用的接口， 由David修改 2021-09-24
        //public SampleOrder AutoGenerateSPC(PH.RWO.BO.WorkOrder workOrder)
        //{

        //    //GenerateSPCform form = new GenerateSPCform("詢問", string.Format("{0} 的辦單已經由 {1} 生成, 辦單號為 {2},需要再重新生成一次嗎?", this.CurWorkOrder.WorkOrderNo, style.SampleOrder.Table, style.SampleOrderNoShow), style);

        //    //select * from Style where WorkOrderID = 'W368662'

        //    //SPCDataContext db = this.CurrentDataContext as SPCDataContext;
        //    //db.Styles.Where(p => p.WorkOrderID == workOrder.WorkOrderNo);


        //    SampleOrder objSampleOrder = new SampleOrder();
        //    objSampleOrder.GenerateFromWorkOrderStatus = false;
        //    try
        //    {
        //        PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();

        //        var customers = from c in context.CustomerCodes where c.CustomerCode1 == workOrder.Project.Customer select c;
        //        if (customers.Count() == 0)
        //        {
        //            objSampleOrder.GenerateFromWorkOrderTips = string.Format("提示：沒有找到 {0} 對應的客戶代碼！", workOrder.Project.Customer);
        //            return objSampleOrder;
        //        }
        //        var objs = from c in context.WorkOrderSamples
        //                   where c.WorkOrderNo == workOrder.WorkOrderNo && c.WorkShop.StartsWith("PPWs") && (c.SampleQty ?? 0) > 0
        //                   group c by new { c.SampleType } into g
        //                   select new { g.Key, g };

        //        if (objs.Count() == 0)
        //        {
        //            objSampleOrder.GenerateFromWorkOrderTips = string.Format("提示：{0} 沒有數據（PPWS）可以生成辦單！", workOrder.WorkOrderNo);
        //            return objSampleOrder;
        //        }

        //        objSampleOrder.CurrentDataContext = this.CurrentDataContext;
        //        objSampleOrder.Table = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        //        objSampleOrder.CustomerID = customers.First<PH.RWO.BO.CustomerCode>().Customer;
        //        objSampleOrder.CreateDate = DateTime.Now;

        //        //objSampleOrder.Phase = 3;
        //        //objSampleOrder.ProjectNo = workOrder.Project.ProjectNo;
        //        //objSampleOrder.FactoryStartDate = workOrder.FactoryWorkShipCompleted;
        //        //objSampleOrder.DueDate = workOrder.Project.Customer == "TAMA" ? workOrder.FCLExFtyShipCompleted : workOrder.LCLExFtyShipCompleted;
        //        //objSampleOrder.ShipmentDate = workOrder.DeliveryShipCompleted;
        //        objSampleOrder.AutoSampleOrderID();
        //        (this.CurrentDataContext as SPCDataContext).GetTable<SampleOrder>().InsertOnSubmit(objSampleOrder);

        //        Style objStyle = new Style();
        //        objStyle.SampleOrder = objSampleOrder;
        //        objStyle.CurrentDataContext = this.CurrentDataContext;
        //        //objStyle.SampleOrderID = objSampleOrder.SampleOrderID;
        //        //objStyle.ChildSampleOrderSuffix = objStyle.GetNewChildSmplOrderSuffix();
        //        objStyle.StyleID = workOrder.StyleNo;
        //        //objStyle.CustomerLDStyle = "";                      //Initial Style Ref.
        //        objStyle.CustomerStyle = workOrder.CustomerStyleNo; //Customer Style#
        //        objStyle.Stage = 3;
        //        objStyle.ProductCategory = workOrder.Category; //Product Cat.
        //        objStyle.ProjectNo = workOrder.ProjectNo;      //Project#
        //        objStyle.WorkOrderID = workOrder.WorkOrderNo;  //WO#
        //        objStyle.FWStartDate = workOrder.FactoryWorkShipCompleted; //FW Start Date
        //        objStyle.ExftyDate = workOrder.Project.Customer == "TAMA" ? workOrder.FCLExFtyShipCompleted : workOrder.LCLExFtyShipCompleted; // Ex-fty Date

        //        var obj = context.WorkOrderSamples.FirstOrDefault(p => p.WorkOrderNo == workOrder.WorkOrderNo && p.WorkShop.StartsWith("PPWs") && (p.SampleQty ?? 0) > 0);
        //        objStyle.ProductWs = obj == null ? null : obj.WorkShop;

        //        //objStyle.Season = workOrder.Project.Season;
        //        //objStyle.SizeMatrix = workOrder.SizeMatrix;
        //        //objStyle.Brand = workOrder.BrandName;//1
        //        //objStyle.Group = workOrder.CustomerCollection; //3
        //        objSampleOrder.Styles.Add(objStyle);
        //        (this.CurrentDataContext as SPCDataContext).GetTable<Style>().InsertOnSubmit(objStyle);

        //        foreach (var item in objs)
        //        {
        //            StyleSort objStyleSort = new StyleSort();
        //            objStyleSort.CurrentDataContext = this.CurrentDataContext;
        //            objStyleSort.Style = objStyle;
        //            //objStyleSort.SampleOrderID = objStyle.SampleOrderID;
        //            //objStyleSort.StyleID = objStyle.StyleID;
        //            objStyleSort.SortID = item.g.Key.SampleType;
        //            objStyle.StyleSorts.Add(objStyleSort);
        //            (this.CurrentDataContext as SPCDataContext).GetTable<StyleSort>().InsertOnSubmit(objStyleSort);


        //            StyleSortEdition objStyleSortEdition = new StyleSortEdition();
        //            objStyleSortEdition.CurrentDataContext = this.CurrentDataContext;
        //            objStyleSortEdition.StyleSort = objStyleSort;
        //            objStyleSortEdition.EditionDate = DateTime.Now; //Issue Date
        //            objStyleSortEdition.AutoEditionID();

        //            //objStyleSortEdition.SampleOrderID = objStyleSort.SampleOrderID;
        //            //objStyleSortEdition.StyleID = objStyleSort.StyleID;
        //            //objStyleSortEdition.SortID = objStyleSort.SortID;
        //            (this.CurrentDataContext as SPCDataContext).GetTable<StyleSortEdition>().InsertOnSubmit(objStyleSortEdition);



        //            var objs2 = from c in context.WorkOrderSamples
        //                        where c.Company == workOrder.Company && c.SalesOrderNo == workOrder.SalesOrderNo && c.WorkOrderNo == workOrder.WorkOrderNo
        //                        && c.SampleType == item.g.Key.SampleType
        //                         && (c.SampleQty ?? 0) > 0
        //                        select c;

        //            objStyleSortEdition.EditionDueDate = objs2.Select(p => p.SampleDespatchDate).Min(); //Request Despatch Date

        //            foreach (var item2 in objs2)
        //            {
        //                StyleSize objStyleSize = new StyleSize();
        //                objStyleSize.CurrentDataContext = this.CurrentDataContext;
        //                objStyleSize.StyleSortEdition = objStyleSortEdition; //是否是取最大或是最小值？？？
        //                objStyleSize.ColorID = item2.ColorCode;
        //                objStyleSize.Cup = item2.CustCup;
        //                objStyleSize.SizeID = item2.SizeDesc; //客方尺码
        //                objStyleSize.Qty = item2.SampleQty;   //SKU 速递件数


        //                //objStyleSize.SampleOrderID = objStyleSortEdition.SampleOrderID;
        //                //objStyleSize.StyleID = objStyleSortEdition.StyleID;
        //                //objStyleSize.SortID = objStyleSortEdition.SortID;
        //                //objStyleSize.Cup = item2.Cup;
        //                //objStyleSize.SizeWorld = item2.Size;
        //                //objStyleSort.ProduceDepartment = item2.WorkShop;//5
        //                //objStyleSortEdition.EditionDueDate = item2.SampleDespatchDate;

        //                objStyleSortEdition.StyleSizes.Add(objStyleSize);
        //                (this.CurrentDataContext as SPCDataContext).GetTable<StyleSize>().InsertOnSubmit(objStyleSize);

        //            }
        //        }


        //        objSampleOrder.Save();

        //        //生成板單信息到SPC后，也將信息導入到預產工廠系統中, 由David增加 2018-12-18
        //        (this.CurrentDataContext as SPCDataContext).ExecuteCommand(string.Format("exec sp_SPC2Pre_SamepleSystem '{0}'", objSampleOrder.SampleOrderID));

        //        objSampleOrder.GenerateFromWorkOrderTips = string.Format("生成成功！ 辦單號：“{0}”", objSampleOrder.SampleOrderID);
        //        objSampleOrder.GenerateFromWorkOrderStatus = true;
        //        return objSampleOrder;
        //    }
        //    catch (Exception ex)
        //    {
        //        objSampleOrder.GenerateFromWorkOrderTips = string.Format("生成失敗！ {0}", ex.ToString());
        //        return objSampleOrder;
        //    }

        //}

        //public SampleOrder AutoGenerateSPC(PH.RWO.BO.WorkOrder workOrder)
        //{
        //    SampleOrder objSampleOrder = new SampleOrder();
        //    objSampleOrder.GenerateFromWorkOrderStatus = false;
        //    try
        //    {
        //        PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();

        //        var customers = from c in context.CustomerCodes where c.CustomerCode1 == workOrder.Project.Customer select c;
        //        if (customers.Count() == 0)
        //        {
        //            objSampleOrder.GenerateFromWorkOrderTips = string.Format("提示：沒有找到 {0} 對應的客戶代碼！", workOrder.Project.Customer);
        //            return objSampleOrder;
        //        }
        //        var objs = from c in context.WorkOrderSamples
        //                   where c.WorkOrderNo == workOrder.WorkOrderNo && c.WorkShop.StartsWith("PPWs") && (c.SampleQty ?? 0) > 0
        //                   group c by new { c.SampleType } into g
        //                   select new { g.Key, g };

        //        if (objs.Count() == 0)
        //        {
        //            objSampleOrder.GenerateFromWorkOrderTips = string.Format("提示：{0} 沒有數據（PPWS）可以生成辦單！", workOrder.WorkOrderNo);
        //            return objSampleOrder;
        //        }

        //        objSampleOrder.CurrentDataContext = this.CurrentDataContext;
        //        objSampleOrder.CustomerID = customers.First<PH.RWO.BO.CustomerCode>().Customer;
        //        objSampleOrder.ProjectNo = workOrder.Project.ProjectNo;
        //        objSampleOrder.FactoryStartDate = workOrder.FactoryWorkShipCompleted;
        //        objSampleOrder.Table = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        //        objSampleOrder.DueDate = workOrder.Project.Customer == "TAMA" ? workOrder.FCLExFtyShipCompleted : workOrder.LCLExFtyShipCompleted;
        //        objSampleOrder.ShipmentDate = workOrder.DeliveryShipCompleted;
        //        objSampleOrder.Phase = 3;
        //        objSampleOrder.AutoSampleOrderID();
        //        (this.CurrentDataContext as SPCDataContext).GetTable<SampleOrder>().InsertOnSubmit(objSampleOrder);

        //        Style objStyle = new Style();
        //        objStyle.CurrentDataContext = this.CurrentDataContext;
        //        objStyle.SampleOrderID = objSampleOrder.SampleOrderID;
        //        objStyle.StyleID = workOrder.StyleNo;
        //        objStyle.CustomerStyle = workOrder.CustomerStyleNo;
        //        objStyle.Season = workOrder.Project.Season;
        //        objStyle.SampleOrder = objSampleOrder;
        //        objStyle.SizeMatrix = workOrder.SizeMatrix;
        //        objStyle.Brand = workOrder.BrandName;//1
        //        objStyle.ProductCategory = workOrder.Category;//2
        //        objStyle.Group = workOrder.CustomerCollection; //3
        //        objStyle.WorkOrderID = workOrder.WorkOrderNo; //4
        //        objSampleOrder.Styles.Add(objStyle);
        //        (this.CurrentDataContext as SPCDataContext).GetTable<Style>().InsertOnSubmit(objStyle);

        //        foreach (var item in objs)
        //        {
        //            StyleSort objStyleSort = new StyleSort();
        //            objStyleSort.CurrentDataContext = this.CurrentDataContext;
        //            objStyleSort.Style = objStyle;
        //            objStyleSort.SampleOrderID = objStyle.SampleOrderID;
        //            objStyleSort.StyleID = objStyle.StyleID;
        //            objStyleSort.SortID = item.g.Key.SampleType;
        //            objStyle.StyleSorts.Add(objStyleSort);
        //            (this.CurrentDataContext as SPCDataContext).GetTable<StyleSort>().InsertOnSubmit(objStyleSort);


        //            StyleSortEdition objStyleSortEdition = new StyleSortEdition();
        //            objStyleSortEdition.CurrentDataContext = this.CurrentDataContext;
        //            objStyleSortEdition.StyleSort = objStyleSort;
        //            objStyleSortEdition.SampleOrderID = objStyleSort.SampleOrderID;
        //            objStyleSortEdition.StyleID = objStyleSort.StyleID;
        //            objStyleSortEdition.SortID = objStyleSort.SortID;
        //            objStyleSortEdition.EditionDate = DateTime.Now;//6
        //            //4 objStyleSortEdition.AutoEditionID();
        //            (this.CurrentDataContext as SPCDataContext).GetTable<StyleSortEdition>().InsertOnSubmit(objStyleSortEdition);



        //            var objs2 = from c in context.WorkOrderSamples
        //                        where c.Company == workOrder.Company && c.SalesOrderNo == workOrder.SalesOrderNo && c.WorkOrderNo == workOrder.WorkOrderNo
        //                        && c.SampleType == item.g.Key.SampleType
        //                         && (c.SampleQty ?? 0) > 0
        //                        select c;

        //            foreach (var item2 in objs2)
        //            {
        //                StyleSize objStyleSize = new StyleSize();
        //                objStyleSize.CurrentDataContext = this.CurrentDataContext;
        //                objStyleSize.StyleSortEdition = objStyleSortEdition;//是否是取最大或是最小值？？？
        //                objStyleSize.SampleOrderID = objStyleSortEdition.SampleOrderID;
        //                objStyleSize.StyleID = objStyleSortEdition.StyleID;
        //                objStyleSize.SortID = objStyleSortEdition.SortID;
        //                objStyleSize.ColorID = item2.ColorCode;
        //                //objStyleSize.Cup = item2.Cup;
        //                objStyleSize.Cup = item2.CustCup;
        //                objStyleSize.SizeWorld = item2.Size;
        //                objStyleSize.Qty = item2.SampleQty;
        //                objStyleSize.SizeID = item2.SizeDesc;

        //                objStyleSort.ProduceDepartment = item2.WorkShop;//5
        //                objStyleSortEdition.EditionDueDate = item2.SampleDespatchDate;
        //                objStyleSortEdition.StyleSizes.Add(objStyleSize);
        //                (this.CurrentDataContext as SPCDataContext).GetTable<StyleSize>().InsertOnSubmit(objStyleSize);

        //            }
        //        }

        //        objSampleOrder.Save();

        //        //生成板單信息到SPC后，也將信息導入到預產工廠系統中, 由David增加 2018-12-18
        //        (this.CurrentDataContext as SPCDataContext).ExecuteCommand(string.Format("exec sp_SPC2Pre_SamepleSystem '{0}'", objSampleOrder.SampleOrderID));

        //        objSampleOrder.GenerateFromWorkOrderTips = string.Format("生成成功！ 辦單號：“{0}”", objSampleOrder.SampleOrderID);
        //        objSampleOrder.GenerateFromWorkOrderStatus = true;
        //        return objSampleOrder;
        //    }
        //    catch (Exception ex)
        //    {
        //        objSampleOrder.GenerateFromWorkOrderTips = string.Format("生成失敗！ {0}", ex.ToString());
        //        return objSampleOrder;
        //    }

        //}

        public void HandleEditionID(StyleSortEdition instance)
        {
            PH.SPC.BO.SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            var aa = from a in context.StyleSortEditions
                     where a.SampleOrderID == instance.SampleOrderID
                     && a.StyleID == instance.StyleID && a.SortID == instance.SortID
                     select a;

            int maxEditionID;

            maxEditionID = (aa.Count() == 0) ? 0 : aa.Max(a => (a.EditionID ?? 0));
            instance.EditionID = maxEditionID == 0 ? 1 : maxEditionID + 1;
        }

        //public string AutoGenerateSPC1(PH.RWO.BO.WorkOrder workOrder)
        //{
        //    try
        //    {
        //        PH.RWO.BO.RWOSOPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.RWO.BO.RWOSOPCDataContext>();

        //        var customers = from c in context.CustomerCodes where c.CustomerCode1 == workOrder.Project.Customer select c;
        //        if (customers.Count() == 0)
        //            return string.Format("提示：沒有找到 {0} 對應的客戶代碼！", workOrder.Project.Customer);

        //        var objs = from c in context.WorkOrderSamples
        //                   where c.WorkOrderNo == workOrder.WorkOrderNo && c.WorkShop.StartsWith("PPWs")
        //                   group c by new { c.SampleType } into g
        //                   select new { g.Key, g };

        //        if (objs.Count() == 0) return string.Format("提示：{0} 沒有數據（PPWS）可以生成辦單！", workOrder.WorkOrderNo);


        //        SampleOrder objSampleOrder = new SampleOrder();
        //        objSampleOrder.CurrentDataContext = this.CurrentDataContext;
        //        objSampleOrder.CustomerID = customers.First<PH.RWO.BO.CustomerCode>().Customer;
        //        objSampleOrder.ProjectNo = workOrder.Project.ProjectNo;
        //        objSampleOrder.FactoryStartDate = workOrder.FactoryWorkShipCompleted;
        //        objSampleOrder.Table = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;
        //        objSampleOrder.DueDate = workOrder.Project.Customer == "TAMA" ? workOrder.FCLExFtyShipCompleted : workOrder.LCLExFtyShipCompleted;
        //        objSampleOrder.ShipmentDate = workOrder.DeliveryShipCompleted;
        //        objSampleOrder.Phase = 3;
        //        objSampleOrder.AutoSampleOrderID();
        //        (this.CurrentDataContext as SPCDataContext).GetTable<SampleOrder>().InsertOnSubmit(objSampleOrder);

        //        Style objStyle = new Style();
        //        objStyle.CurrentDataContext = this.CurrentDataContext;
        //        objStyle.SampleOrderID = objSampleOrder.SampleOrderID;
        //        objStyle.StyleID = workOrder.StyleNo;
        //        objStyle.CustomerStyle = workOrder.CustomerStyleNo;
        //        objStyle.Season = workOrder.Project.Season;
        //        objStyle.SampleOrder = objSampleOrder;
        //        objStyle.SizeMatrix = workOrder.SizeMatrix;
        //        objStyle.Brand = workOrder.BrandName;//1
        //        objStyle.ProductCategory = workOrder.Category;//2
        //        objStyle.Group = workOrder.CustomerCollection; //3
        //        objStyle.WorkOrderID = workOrder.WorkOrderNo; //4
        //        objSampleOrder.Styles.Add(objStyle);
        //        (this.CurrentDataContext as SPCDataContext).GetTable<Style>().InsertOnSubmit(objStyle);




        //        foreach (var item in objs)
        //        {
        //            StyleSort objStyleSort = new StyleSort();
        //            objStyleSort.CurrentDataContext = this.CurrentDataContext;
        //            objStyleSort.Style = objStyle;
        //            objStyleSort.SampleOrderID = objStyle.SampleOrderID;
        //            objStyleSort.StyleID = objStyle.StyleID;
        //            objStyleSort.SortID = item.g.Key.SampleType;
        //            objStyle.StyleSorts.Add(objStyleSort);
        //            (this.CurrentDataContext as SPCDataContext).GetTable<StyleSort>().InsertOnSubmit(objStyleSort);


        //            StyleSortEdition objStyleSortEdition = new StyleSortEdition();
        //            objStyleSortEdition.CurrentDataContext = this.CurrentDataContext;
        //            objStyleSortEdition.StyleSort = objStyleSort;
        //            objStyleSortEdition.SampleOrderID = objStyleSort.SampleOrderID;
        //            objStyleSortEdition.StyleID = objStyleSort.StyleID;
        //            objStyleSortEdition.SortID = objStyleSort.SortID;
        //            objStyleSortEdition.EditionDate = DateTime.Now;//6
        //            //4 objStyleSortEdition.AutoEditionID();
        //            (this.CurrentDataContext as SPCDataContext).GetTable<StyleSortEdition>().InsertOnSubmit(objStyleSortEdition);

        //            var objs2 = from c in context.WorkOrderSamples
        //                        where c.Company == workOrder.Company && c.SalesOrderNo == workOrder.SalesOrderNo && c.WorkOrderNo == workOrder.WorkOrderNo && c.SampleType == item.g.Key.SampleType
        //                        select c;

        //            foreach (var item2 in objs2)
        //            {
        //                StyleSize objStyleSize = new StyleSize();
        //                objStyleSize.CurrentDataContext = this.CurrentDataContext;
        //                objStyleSize.StyleSortEdition = objStyleSortEdition;//是否是取最大或是最小值？？？
        //                objStyleSize.SampleOrderID = objStyleSortEdition.SampleOrderID;
        //                objStyleSize.StyleID = objStyleSortEdition.StyleID;
        //                objStyleSize.SortID = objStyleSortEdition.SortID;
        //                objStyleSize.ColorID = item2.ColorCode;
        //                objStyleSize.Cup = item2.Cup;
        //                objStyleSize.SizeWorld = item2.Size;
        //                objStyleSize.Qty = item2.SampleQty;
        //                objStyleSize.SizeID = item2.SizeDesc;

        //                objStyleSort.ProduceDepartment = item2.WorkShop;//5
        //                objStyleSortEdition.EditionDueDate = item2.SampleDespatchDate;
        //                objStyleSortEdition.StyleSizes.Add(objStyleSize);
        //                (this.CurrentDataContext as SPCDataContext).GetTable<StyleSize>().InsertOnSubmit(objStyleSize);

        //            }
        //        }

        //        objSampleOrder.Save();

        //        return string.Format("生成成功！ 辦單號：“{0}”", objSampleOrder.SampleOrderID);
        //    }
        //    catch (Exception ex)
        //    {
        //        return string.Format("生成失敗！ {0}", ex.ToString());
        //    }

        //}


    }


    public class SeasonList : BaseEntityList<Misc_DataDictionary, PHPlatformMiscDataContext>
    {
        /// <summary>
        /// 得到Style中使用的所有Seanson
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Misc_DataDictionary> GetAllSeason()
        {
            PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var lists = from a in context.Misc_DataDictionaries
                        where a.DataType == "PH.MIDc.Season"
                        select a;
            return lists;
        }
    }


    public class DelayCauseList : BaseEntityList<Misc_DataDictionary, PHPlatformMiscDataContext>
    {
        /// <summary>
        /// 得到所有DelayCause
        /// </summary>
        /// <returns></returns>
        public IEnumerable<Misc_DataDictionary> GetAllDelayCause()
        {
            PHPlatformMiscDataContext context = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var lists = from a in context.Misc_DataDictionaries
                        where a.DataType == "PH.SPC.DelayCause"
                        select a;
            return lists;
        }
    }

    public class WorkNoteList : BaseEntityList<StyleSortEdition, SPCDataContext>
    {
        public IEnumerable<StyleSortEdition> GetStyleSortEditions(string sampleOrderID, string styleID, string sortID, int editionID)
        {
            //SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            var lists = from a in CurrentDataContext.StyleSortEditions
                        where a.SampleOrderID == sampleOrderID
                        && a.StyleID == styleID && a.SortID == sortID && a.EditionID == editionID
                        select a;
            return lists;
        }

        public IEnumerable<StyleSortEdition> GetStyleSortEditions(Int64 OID)
        {
            //SPCDataContext context = ContextBuilder.CreateContext<SPCDataContext>();
            var lists = CurrentDataContext.StyleSortEditions.Where(p => p.OID == OID);
            return lists;
        }
    }

    public class DefaultSizeRatioList : BaseEntityList<PH.Sales.BO.Detail, PH.Sales.BO.SalesDataContext>
    {
        public List<SizeRatio> GetSizeRatios(string cust, string brand, string category)
        {
            var aa = from a in this.CurrentDataContext.Details
                     where a.Customer == cust && a.Brand == brand && a.ProductCategory == category
                     //orderby a.CupOrder ascending
                     select a;
            List<SizeRatio> lists = new List<SizeRatio>();
            SizeRatio sr;
            foreach (var item in aa)
            {
                sr = new SizeRatio();
                sr.Cup = item.Cup;
                sr.Brand = item.Brand;
                sr.Customer = item.Customer;
                sr.ProductCategory = item.ProductCategory;
                sr.Qty = item.Qty;
                sr.Size = item.Size;
                sr.Team = item.Team;
                lists.Add(sr);
            }
            return lists;
        }
    }

    public class ConfirmStyleHelper : BaseEntityList<ConfirmStyle, SPCDataContext>
    {

    }

    public class AutoGenerateSPCResult
    {
        public bool Result { get; set; }
        public string Msg { get; set; }
    }

}
