

namespace PH.POPC.BO
{
    using System.Data.Linq;
    using System.Data.Linq.Mapping;
    using System.Data;
    using System.Collections.Generic;
    using System.Reflection;
    using System.Linq;
    using System.Linq.Expressions;
    using System.ComponentModel;
    using System;
    using System.Globalization;
    using System.IO;
    using PH.Platform.BO;
    using PH.BasicInfo.BO;
    using PH.MIDc.BO;

    partial class POPCDataContext
    {
        //partial void OnCreated()
        //{

        //    PH.BO.PHDataContextStore.Instance.RegisterDataContext(this);
        //}

        //public new void SubmitChanges()
        //{
        //    new PH.BO.PHDataContext(this).SubmitChanges();

        //}

        //[Function(Name = "dbo.sp_GetOrderLine")]
        //public ISingleResult<sp_GetOrderLineResult> sp_GetOrderLine([Parameter(Name = "Company", DbType = "VarChar(2)")] string company, [Parameter(Name = "PONO", DbType = "VarChar(20)")] string pONO, [Parameter(Name = "Version", DbType = "Int")] System.Nullable<int> version, [Parameter(Name = "AmendmentNo", DbType = "Int")] System.Nullable<int> amendmentNo)
        //{
        //    IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), company, pONO, version, amendmentNo);
        //    return ((ISingleResult<sp_GetOrderLineResult>)(result.ReturnValue));
        //}


        //[Function(Name = "dbo.sp_POColorSizeDetail_Solid")]
        //public int sp_POColorSizeDetail_Solid([Parameter(Name = "Company", DbType = "VarChar(50)")] string company, [Parameter(Name = "PONO", DbType = "VarChar(50)")] string pONO, [Parameter(DbType = "Int")] System.Nullable<int> version, [Parameter(Name = "AmendmentNo", DbType = "Int")] System.Nullable<int> amendmentNo, [Parameter(Name = "ItemCode", DbType = "VarChar(50)")] string itemCode, [Parameter(Name = "ReportType", DbType = "Int")] System.Nullable<int> reportType, [Parameter(Name = "SupplierReference", DbType = "VarChar(20)")] string supplierReference)
        //{
        //    IExecuteResult result = this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), company, pONO, version, amendmentNo, itemCode, reportType, supplierReference);
        //    return ((int)(result.ReturnValue));
        //}



        //[Function(Name = "dbo.fn_GetCustomerSizeSystem", IsComposable = true)]
        //public string fn_GetCustomerSizeSystem([Parameter(DbType = "VarChar(10)")] string company, [Parameter(Name = "ProjectNo", DbType = "VarChar(20)")] string projectNo)
        //{
        //    return ((string)(this.ExecuteMethodCall(this, ((MethodInfo)(MethodInfo.GetCurrentMethod())), company, projectNo).ReturnValue));
        //}

    }
    //public class DropthingsDataContext2 : POPCDataContext, IDisposable
    //{
    //    public new void Dispose()
    //    {
    //        if (base.Connection != null)
    //            if (base.Connection.State != System.Data.ConnectionState.Closed)
    //            {
    //                base.Connection.Close();
    //                base.Connection.Dispose();
    //            }

    //        base.Dispose();
    //    }
    //}
    public enum PODimension { None, One, Two, ThreeS, ThreeR, Four }
    partial class POFormat : PH.Platform.BO.BaseEntity
    {

    }
    partial class POAdviceNote : PH.Platform.BO.BaseEntity
    {

        public bool Choose { get; set; }
        public string Status
        {
            get
            {
                if (string.IsNullOrEmpty(ANStatus))
                    return "WIP";
                else if (ANStatus == "C")
                    return "Completed";
                else return ANStatus;
            }
        }
        public string PONOs
        {
            get
            {
                string po = "";
                foreach (var item in this.POAdviceNotePOs)
                {
                    po += item.PONO + ", ";
                }
                po = po.Trim();
                if (po.Length > 1)
                    po = po.Substring(0, po.Length - 1);
                return po;
            }
        }

        public string POIssueDates //由David加入 2022-06-20
        {
            get
            {
                string IssueDate = "";
                foreach (var item in this.POAdviceNotePOs)
                {
                    IssueDate += item.POIssueDate.Value.ToString("yyyy-MM-dd") + ", ";
                }
                return IssueDate = IssueDate.TrimEnd(',', ' ');
            }
        }

        ////由David增加, 2022-06-28
        //public DateTime? GRNDate
        //{
        //    get
        //    {
        //        if (CurrentDataContext == null)
        //        {
        //            CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();
        //        }
        //        return (CurrentDataContext as POPCDataContext).POChangesMonitors.Where(p => p.AdviceNote == this.AdviceNote).Max(p => p.GRNDate);
        //    }
        //}

    }
    partial class POAdviceNotePO : PH.Platform.BO.BaseEntity
    {

    }

    partial class POInAdvance : PH.Platform.BO.BaseEntity
    {
        public bool IsRejRecord { get; set; }


        partial void OnCreated()
        {
            this.ID = Guid.NewGuid();
            this.CreateDate = DateTime.Now;
            this.PurchaseOfficer = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
        }

        public string OddEvenRowFlag { get; set; }
        public string HaveColoristCommDesc { get { return (!this.HaveColoristComm.HasValue) ? "" : (this.HaveColoristComm.Value ? "Y" : "N"); } }
        public string HaveCustCommDesc { get { return (!this.HaveCustComm.HasValue) ? "" : (this.HaveCustComm.Value ? "Y" : "N"); } }
        public string SampleNewItem { get { return !this.BOMNewItem.HasValue ? "" : ((this.BOMNewItem.Value) ? "Y" : "N"); } }

        //用于计算王生要求加的Log中相关栏位的计算, 由David加入 20220-05-10
        public override void Save(DataContext ADataContext, System.Windows.Forms.BindingSource ABindingSource)
        {
            //base.Save(ADataContext, ABindingSource);

            CurrentDataContext = ADataContext;
            CurrentBindingSource = ABindingSource;
            POPCDataContext db = CurrentDataContext as POPCDataContext;

            POInAdvance CurrentObj = ABindingSource.Current as POInAdvance;
            if (CurrentObj.LDOption == "N") //由David加入
            {
                CurrentObj.LDSeq = 99;
            }

            IEnumerable<POInAdvance> AllDataList = ABindingSource.List as IEnumerable<POInAdvance>;
            var ByLogList = AllDataList.Where(p => !string.IsNullOrEmpty(p.LogNo) && p.LogNo == this.LogNo);

            List<string> StyleList = new List<string>();
            foreach (var obj in ByLogList)
            {
                if (!string.IsNullOrEmpty(obj.GmtStyleNo))
                {
                    StyleList.AddRange(obj.GmtStyleNo.Split(new string[] { "/" }, StringSplitOptions.RemoveEmptyEntries).ToList());
                }
            }
            int TtlStyle = StyleList.Distinct().Count();

            int TtlSupp = ByLogList.Where(p => !string.IsNullOrEmpty(p.Supplier)).Select(p => p.Supplier).Distinct().Count();
            int TtlItem = ByLogList.Where(p => !string.IsNullOrEmpty(p.SuppRef)).Select(p => p.SuppRef).Distinct().Count();
            foreach (var obj in ByLogList)
            {
                obj.TotalStyle = TtlStyle;
                obj.TotalSupp = TtlSupp;
                obj.TotalItem = TtlItem;
            }
        }

    }
    partial class SupplierCustomerSizeCup : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.FID = Guid.NewGuid();
            this.CustSize = string.Empty;
            this.SuppCup = string.Empty;
            this.Customer = string.Empty;
            this.CustStyleNo = string.Empty;
            this.CustSize = string.Empty;
            this.CustCup = string.Empty;
            this.PHStyleNo = string.Empty;
            this.Remark = string.Empty;
        }

        //public static List<PH.Platform.Misc.BO.Misc_DataDictionary> m_SizeList;
        //public List<PH.Platform.Misc.BO.Misc_DataDictionary> SizeList
        //{
        //    get
        //    {
        //        if (m_SizeList == null)
        //        {
        //            DicList dic = new DicList();
        //            m_SizeList = dic.GetDataDictionary("PH.PO.Size").ToList();
        //        }
        //        return m_SizeList;
        //    }
        //}

        //public static List<PH.Platform.Misc.BO.Misc_DataDictionary> m_CupList;
        //public List<PH.Platform.Misc.BO.Misc_DataDictionary> CupList
        //{
        //    get
        //    {
        //        if (m_CupList == null)
        //        {
        //            DicList dic = new DicList();
        //            m_CupList = dic.GetDataDictionary("PH.PO.Cup").ToList();
        //        }
        //        return m_CupList;
        //    }
        //}


        public string SuppSizeDesc
        {
            get
            {
                //string sizeDesc = SizeList.Where(p => p.DataCode == this.SuppSize).Select(p => p.Description).FirstOrDefault();
                //return string.IsNullOrEmpty(sizeDesc) ? this.SuppSize : sizeDesc;

                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.SuppSize);
                return dictionary == null ? this.SuppSize : dictionary.Description;
            }
        }

        public string SuppCupDesc
        {
            get
            {
                //string CupDesc = CupList.Where(p => p.DataCode == this.SuppCup).Select(p => p.Description).FirstOrDefault();
                //return string.IsNullOrEmpty(CupDesc) ? this.SuppCup : CupDesc;

                if (string.IsNullOrEmpty(this.SuppCup)) return "";
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.SuppCup);
                return dictionary == null ? this.SuppCup : dictionary.Description;
            }
        }

        public string CustSizeDesc
        {
            get
            {
                //string sizeDesc = SizeList.Where(p => p.DataCode == this.CustSize).Select(p => p.Description).FirstOrDefault();
                //return string.IsNullOrEmpty(sizeDesc) ? this.CustSize : sizeDesc;

                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.CustSize);
                return dictionary == null ? this.CustSize : dictionary.Description;
            }
        }

        public string CustCupDesc
        {
            get
            {
                //string CupDesc = CupList.Where(p => p.DataCode == this.CustCup).Select(p => p.Description).FirstOrDefault();
                //return string.IsNullOrEmpty(CupDesc) ? this.CustCup : CupDesc;

                if (string.IsNullOrEmpty(this.CustCup)) return "";
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.CustCup);
                return dictionary == null ? this.CustCup : dictionary.Description;
            }
        }

    }

    partial class SupplierSizeCup : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.SizeCode = string.Empty;
            this.CupCode = string.Empty;
        }
        public static List<PH.Platform.Misc.BO.Misc_DataDictionary> m_SizeList;
        public List<PH.Platform.Misc.BO.Misc_DataDictionary> SizeList
        {
            get
            {
                if (m_SizeList == null)
                {
                    DicList dic = new DicList();
                    m_SizeList = dic.GetDataDictionary("PH.PO.Size").ToList();
                }
                return m_SizeList;
            }
        }

        public static List<PH.Platform.Misc.BO.Misc_DataDictionary> m_CupList;
        public List<PH.Platform.Misc.BO.Misc_DataDictionary> CupList
        {
            get
            {
                if (m_CupList == null)
                {
                    DicList dic = new DicList();
                    m_CupList = dic.GetDataDictionary("PH.PO.Cup").ToList();
                }
                return m_CupList;
            }
        }

        public string SizeDesc
        {
            get
            {
                //    string sizeDesc=SizeList.Where(p => p.DataCode == this.SizeCode).Select(p => p.Description).FirstOrDefault();
                //    return string.IsNullOrEmpty(sizeDesc) ? this.SizeCode : sizeDesc;

                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.SizeCode);
                return dictionary == null ? this.SizeCode : dictionary.Description;
            }
        }
        public string CupDesc
        {
            get
            {
                //string CupDesc = CupList.Where(p => p.DataCode == this.CupCode).Select(p => p.Description).FirstOrDefault();
                //return string.IsNullOrEmpty(CupDesc) ? this.CupCode : CupDesc;

                if (string.IsNullOrEmpty(this.CupCode)) return "";
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.CupCode);
                return dictionary == null ? this.CupCode : dictionary.Description;
            }
        }

    }
    partial class CustomerSizeCup : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.CustSizeCode = string.Empty;
            this.CustCupCode = string.Empty;
        }

        public string SizeDesc
        {
            get
            {
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.SizeCode);
                return dictionary == null ? this.SizeCode : dictionary.Description;
            }
        }

        public string CupDesc
        {
            get
            {
                if (string.IsNullOrEmpty(this.CupCode)) return "";

                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.CupCode);
                return dictionary == null ? this.CupCode : dictionary.Description;
            }
        }
    }

    partial class POReport : PH.Platform.BO.BaseEntity
    { }
    partial class POWireBoneMatrix : PH.Platform.BO.BaseEntity
    {
        public string ItemSize { get { return this.POColorSizeDetail.ItemSize; } }
        public string ItemCode
        {
            get
            {
                return this.POColorSizeDetail.ItemCode;
            }
        }
        public string ColorCode
        {
            get
            {
                return this.POColorSizeDetail.ColorCode;
            }
        }
        public string SizeCode
        {
            get
            {
                return this.POColorSizeDetail.SizeCode;
            }
        }

        public string FitCode
        {
            get
            {
                return this.POColorSizeDetail.FitCode;
            }
        }
        public string ColorShade
        {
            get
            {
                return this.POColorSizeDetail.ColorShade;
            }
        }
        public System.Nullable<decimal> Price
        {
            get
            {
                return this.POColorSizeDetail.Price;
            }
        }
        public string SupplierReference
        {
            get
            {
                return this.POColorSizeDetail.SupplierReference;
            }
        }

        public string GarmentColor
        {
            get
            {
                return this.POColorSizeDetail.GarmentColor;
            }
        }
        public System.Nullable<bool> MultiPrice
        {
            get
            {
                return this.POColorSizeDetail.MultiPrice;
            }
        }

        public string CustomerSize
        {
            get
            {
                return this.CustSizeDesc;
            }
        }
        public string CustomerCup
        {
            get
            {
                return this.CustCupDesc;
            }
        }

        public string SupplierColorShade
        {
            get
            {
                return string.IsNullOrEmpty(this.ColorShade) ? null : this.ColorShade;
            }
        }
        public string EndCustOrderNo
        {
            get
            {
                return this.POColorSizeDetail.CustOrderNo;
            }
        }
        public string EndCustStyleNo
        {
            get
            {
                return this.POColorSizeDetail.CustStyleNo;
            }
        }
        public string OurColorName { get { return this.POColorSizeDetail.OurColorName; } }

        public string ProjectNO { get { return this.POColorSizeDetail.ProjectNO; } }
        public decimal? SupplierPOQty { get { return this.POColorSizeDetail.SupplierPOQty; } }

        public string ColorDesc { get { return this.POColorSizeDetail.ColorDesc; } }
        public string SizeDesc { get { return this.POColorSizeDetail.SizeDesc; } }
        public string FitDesc { get { return this.POColorSizeDetail.FitDesc; } }
        public string CustomerSizeSystem { get { return this.POColorSizeDetail.CustomerSizeSystem; } }
        //public string SupplierSize { get { return this.POColorSizeDetail.SizeCode; } }
        public string SupplierSize { get { return this.POColorSizeDetail.SizeDesc; } }


        public decimal? Tolerance { get { return this.POColorSizeDetail.Tolerance; } }
        public decimal? SuppAmount { get { return this.POColorSizeDetail.SuppAmount; } }
        public string SupplierUOM { get { return this.POColorSizeDetail.SupplierUOM; } }
        public string Currency { get { return this.POColorSizeDetail.Currency; } }

        public int? Week { get { return this.POColorSizeDetail.Week; } }

        public string WeekStr { get { return string.Format("Week {0}", this.Week); } }
        public string DeliveryWeek { get { return this.Week.HasValue ? string.Format("{0:yyyy'/'MM'/'dd} ({1})", this.DeliveryDate, this.Week) : null; } }

        public DateTime? DeliveryDate { get { return this.POColorSizeDetail.DeliveryDate; } }

        public string Supplier { get { return this.POColorSizeDetail.Supplier; } }
        public string SupplierName { get { return this.POColorSizeDetail.SupplierName; } }

        public string FabricWidth { get { return this.POColorSizeDetail.FabricWidth; } }

        public int SizeOrder { get { return this.POColorSizeDetail.SizeOrder; } }
        public int CupOrder { get { return this.POColorSizeDetail.CupOrder; } }
        public int? SizeID { get { return this.POColorSizeDetail.SizeID; } }
        public int? FitID { get { return this.POColorSizeDetail.FitID; } }

        public string PriceDependent { get { return this.POColorSizeDetail.PriceDependent; } }

        public string StyleColorDiff { get { return this.POColorSizeDetail.StyleColorDiff; } }
        public string StyleColorAndDiff { get { return this.POColorSizeDetail.StyleColorAndDiff; } }

        public string SuppSizeDesc { get { return this.SizeDesc; } }
        public string SuppCupDesc { get { return this.FitDesc; } }


        public string CustSizeDesc
        {
            get
            {
                if (string.IsNullOrEmpty(this.Size)) return "";
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.Size);
                return dictionary == null ? this.Size : dictionary.Description;
            }
        }
        public string CustCupDesc
        {
            get
            {
                if (string.IsNullOrEmpty(this.Cup)) return "";
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.Cup);
                return dictionary == null ? this.Cup : dictionary.Description;
            }
        }

    }

    partial class POSKUOperate : PH.Platform.BO.BaseEntity
    {
        public DateTime? DipDropDeadDate
        {
            get
            {
                //PO Delivery Date - Time Frame 1 (day) - Time Frame 2 (day) - 45 day
                if (this.POColorSizeDetail != null && this.POColorSizeDetail.PODeliveryDate.HasValue)
                {
                    if (!string.IsNullOrEmpty(this.POColorSizeDetail.LadDipOption) && this.POColorSizeDetail.LadDipOption != "D")
                        return this.POColorSizeDetail.PODeliveryDate.Value.AddDays(-(this.POColorSizeDetail.TimeFrame1 ?? 0) - (this.POColorSizeDetail.TimeFrame2 ?? 0) - 45);
                }
                return null;
            }
        }
        public DateTime? BulkDropDeadDate
        {
            get
            {
                //PO Delivery Date - Time Frame 1 (day) - Time Frame 2 (day) - 15 day
                if (this.POColorSizeDetail != null && this.POColorSizeDetail.PODeliveryDate.HasValue)
                {
                    return this.POColorSizeDetail.PODeliveryDate.Value.AddDays(-(this.POColorSizeDetail.TimeFrame1 ?? 0) - (this.POColorSizeDetail.TimeFrame2 ?? 0) - 15);
                }
                return null;
            }
        }

        public DateTime? BulkCompletedDate
        {
            get
            {
                if (this.POColorSizeDetail == null) return null;

                switch (this.POColorSizeDetail.BulkOption)
                {
                    case "B"://b) . 1st B/S App by Cust , 2nd B/S App by PH
                    case "C"://c) . Supp send to Cust. App
                        return this.CustOperateDate;
                    case "A"://a) . PH App
                    case "D"://d) . Supp App 
                    default:
                        return this.OperateDate;
                }
            }
        }
        public string BulkStatus
        {
            get
            {
                if (this.POColorSizeDetail == null) return null;

                switch (this.POColorSizeDetail.BulkOption)
                {
                    case "B"://b) . 1st B/S App by Cust , 2nd B/S App by PH
                    case "C"://c) . Supp send to Cust. App
                        return this.CustStatus;
                    case "A"://a) . PH App
                    case "D"://d) . Repeat 
                    default:
                        return this.Status;
                }
            }
        }

        public DateTime? DipCompletedDate
        {
            get
            {
                if (this.POColorSizeDetail == null) return null;

                switch (this.POColorSizeDetail.LadDipOption)
                {
                    case "B"://b) . App by PH at first , then PH send to Cust. App
                    case "C"://c) . Supp send to Cust. App
                        return this.CustOperateDate;
                    case "A"://a) . PH App
                    case "D"://d) . Repeat 
                    default:
                        return this.OperateDate;
                }

            }
        }
        public string DipStatus
        {
            get
            {
                if (this.POColorSizeDetail == null) return null;

                switch (this.POColorSizeDetail.LadDipOption)
                {
                    case "B"://b) . App by PH at first , then PH send to Cust. App
                    case "C"://c) . Supp send to Cust. App
                        return this.CustStatus;
                    case "A"://a) . PH App
                    case "D"://d) . Repeat 
                    default:
                        return this.Status;
                }
            }
        }

        public string DipDesc { get { return "L/D"; } }
        public string BulkDesc { get { return "S/S"; } }

        partial void OnFlagChanged()
        {
            if (this.HandleType == Common.SampleApproval && this.Flag.HasValue)
            {

                this.Status = (this.Flag.Value) ? "App." : "Rej.";

                this.SendPropertyChanged("Status");
            }
        }

        #region From PO

        public bool IsOutStanding { get { return this.POColorSizeDetail == null ? false : this.POColorSizeDetail.IsOutStanding; } }
        public string POStatus
        {
            get
            {
                return IsOutStanding ? "WIP" : "Completed";
                //return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.POStatus;
                //(this.POColorSizeDetail.PODetail.POHeader.IsOutStanding == "Completed" || (this.StockInConfirmed ?? false) ? "Completed" : "WIP");
            }
        }
        //1.Header
        public int NumOfProject { get { return this.POColorSizeDetail.PODetail == null ? 0 : this.POColorSizeDetail.PODetail.POHeader.NumOfProject; } }
        public DateTime? POIssueDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.OrderDate; } }
        public DateTime? POReqDeliveryDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.ShipmentDate; } }
        public string Factory { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Factory; } }
        public string Supplier { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.Supplier; } }
        public string SupplierLocation { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.LocationOfSuppFactoryDesc; } }
        public string EndCustCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndCustCode; } }
        public string PurchaseOfficer { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer; } }
        public string Team { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Dept; } }
        public string ClassCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ClassCode; } }

        public int? TimeFrame1 { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.POHeader.TransitFrame; } }
        public int? TimeFrame2 { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.TimeFrame2; } }
        public string Incoterms { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Incoterms; } }
        public string TransitModePO { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ShipMode; } }
        public string TransitPoint { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitPoint; } }
        public string TransitPointCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitPointCode; } }
        public string EndPoint
        {
            get
            {
                string s = this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndPoint;
                if (string.IsNullOrEmpty(s)) return s;

                int i = s.IndexOf("/");
                if (i - 1 > 0)
                    s = s.Substring(0, i - 1);
                s = s.Replace("\"", "");
                return s;
            }
        }

        //2.detail
        public string ProjectNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ProjectNO; } }
        public string ItemCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ItemCode; } }
        public DateTime? PODeliveryDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.ConfirmETADate; } }
        public DateTime? WOExftyDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.WOStartDate; } }
        public DateTime? HDODate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.HDODate; } }

        //3.SKU
        public string CustStyleNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustStyleNo; } }
        public string CustOrderNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustOrderNo; } }
        public string ColorCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorCode; } }

        public string SizeDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeDesc; } }
        public string FitDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitDesc; } }
        public string SizeCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeCode; } }
        public string FitCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitCode; } }

        public DateTime? GoodsReceivingDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.HDOETA; } }
        public decimal? Price { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Price; } }
        public decimal? PHPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Qty; } }
        public decimal? PHOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.PHOutstandingQty; } }
        public decimal? SupplierPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierPOQty; } }
        public decimal? SupplierOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierOutstandingQty; } }
        public decimal? POBalancePercent { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.POBalancePercent; } }

        public string SupplierReference { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierReference; } }
        public string ColorShade { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorShade; } set { } }
        public string SupplierUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierUOM; } }
        public string PHUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PHUom; } }
        public string GarmentColor { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.GarmentColor; } }

        #endregion

    }
    public partial class POColorShade : PH.Platform.BO.BaseEntity
    {
    }
    public partial class PORC : PH.Platform.BO.BaseEntity
    {

        //由David加入 2022-03-21
        public string DeliveryRouting
        {
            get
            {
                return this.POColorSizeDetail.DeliveryRouting;
            }
        }

        //由David加入 2022-03-14
        public string BuyerCode
        {
            get
            {
                return this.POColorSizeDetail.BuyerCode;
            }
        }

        //由David增加 2022-06-08
        public DateTime? WOFWStartDate
        {
            get;
            set;
        }


        //由David增加 2022-06-08
        public DateTime? WOExftyDate
        {
            get;
            set;
        }

        //由David加入 2022-06-08
        public DateTime? PODeliveryDateShow
        {
            get
            {
                return PODeliveryDate.HasValue ? PODeliveryDate : POReqDeliveryDate;
            }
            set { }
        }

        //由David加入 2022-06-08
        public string TransitMode1Show
        {
            get
            {
                return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ShipMode;
            }
            set { }
        }

        //由David加入 2022-06-08
        public string TransitMode2Show
        {
            get
            {
                return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitMode2;
            }
            set { }
        }

        //由David加入 2022-06-08
        public DateTime? TimeFramIIStartPointDateShow
        {
            get
            {
                return PODeliveryDateShow.HasValue ? PODeliveryDateShow.Value.AddDays(TimeFrame1 ?? 0) : (DateTime?)null;

            }
            set { }
        }

        public DateTime? TimeFramIIEndPointDateShow
        {
            get
            {
                return TimeFramIIStartPointDateShow.HasValue ? TimeFramIIStartPointDateShow.Value.AddDays(TimeFrame2 ?? 0) : (DateTime?)null;

            }
            set { }
        }



        public string ReplacementDesc { get { return (this.Replacement ?? false) ? "Y" : "N"; } }
        public string RCRFlagDesc { get { return (this.RCRFlag ?? false) ? "Y" : "N"; } }
        public decimal? SuppRCQty
        {
            get
            {
                return this.POColorSizeDetail == null || this.POColorSizeDetail.ConversionFactor() == 0 ? (decimal?)null :
                    (this.RCQty.HasValue ? decimal.Round((this.RCQty ?? 0) / this.POColorSizeDetail.ConversionFactor(), 1, MidpointRounding.AwayFromZero) : (decimal?)null);
            }
        }

        #region From PO

        public bool IsOutStanding { get { return this.POColorSizeDetail == null ? false : this.POColorSizeDetail.IsOutStanding; } }
        public string POStatus
        {
            get
            {
                return IsOutStanding ? "WIP" : "Completed";
                //return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.POStatus;
                //(this.POColorSizeDetail.PODetail.POHeader.IsOutStanding == "Completed" || (this.StockInConfirmed ?? false) ? "Completed" : "WIP");
            }
        }
        //1.Header
        public int NumOfProject { get { return this.POColorSizeDetail.PODetail == null ? 0 : this.POColorSizeDetail.PODetail.POHeader.NumOfProject; } }
        public DateTime? POIssueDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.OrderDate; } }
        public DateTime? POReqDeliveryDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.ShipmentDate; } }
        public string Factory { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Factory; } }
        public string Supplier { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.Supplier; } }
        public string SupplierLocation { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.LocationOfSuppFactoryDesc; } }
        public string EndCustCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndCustCode; } }
        public string PurchaseOfficer { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer; } }
        public string Team { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Dept; } }
        //public string ClassCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ClassCode; } }
        public string OrderClassDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.OrderClassDesc; } }
        public string Currency { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Currency; } }

        public int? TimeFrame1 { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.POHeader.TransitFrame; } }
        public int? TimeFrame2 { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.TimeFrame2; } }
        public string Incoterms { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Incoterms; } }
        public string TransitModePO { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ShipMode; } }
        public string TransitPoint { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitPoint; } }
        public string TransitPointCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitPointCode; } }
        public string EndPoint
        {
            get
            {
                //由David修改 2022-05-06
                return this.POColorSizeDetail.PODetail.POHeader.TimeFrameIIStartPoint;

                //string s = this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndPoint;
                //if (string.IsNullOrEmpty(s)) return s;

                //int i = s.IndexOf("/");
                //if (i - 1 > 0)
                //    s = s.Substring(0, i - 1);
                //s = s.Replace("\"", "");
                //return s;
            }
        }

        //2.detail
        public string ProjectNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ProjectNO; } }
        public string ItemCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ItemCode; } }
        public DateTime? PODeliveryDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.ConfirmETADate; } }
        //public DateTime? WOExftyDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.WOStartDate; } }
        public DateTime? ETAPointOfDestDate { get { return this.PODeliveryDate.HasValue ? this.PODeliveryDate.Value.AddDays(this.TimeFrame1 ?? 0) : (DateTime?)null; } }
        public DateTime? HDODate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.HDODate; } }
        public int? DeliveryMonth { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.DeliveryMonth; } }
        public int? DeliveryYear { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.DeliveryYear; } }


        public string ClassCode
        {
            get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.ClassCode; }
            set { this.POColorSizeDetail.PODetail.ClassCode = value; }
        }
        public string ClassCodeENDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.ClassCodeENDesc; } }
        public string ClassCodeCNDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.ClassCodeCNDesc; } }
        //3.SKU
        public string CustStyleNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustStyleNo; } }
        public string CustOrderNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustOrderNo; } }
        public string ColorCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorCode; } }

        public string SizeDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeDesc; } }
        public string FitDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitDesc; } }
        public string SizeCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeCode; } }
        public string FitCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitCode; } }

        public DateTime? GoodsReceivingDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.HDOETA; } }
        public decimal? Price { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Price; } }
        public decimal? PHPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Qty; } }
        public decimal? PHOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.PHOutstandingQty; } }
        public decimal? SupplierPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierPOQty; } }
        public decimal? SupplierOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierOutstandingQty; } }
        public decimal? POBalancePercent { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.POBalancePercent; } }

        public string SupplierReference { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierReference; } }
        public string ColorShade { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorShade; } }
        public string SupplierUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierUOM; } }
        public string PHUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PHUom; } }
        public string GarmentColor { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.GarmentColor; } }

        public string BrandName { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.BrandName; } }
        public string GmtColorName { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.GmtColorName; } }
        public string ItemColorName { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ItemColorName; } }
        public string FlowupFlag { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FlowupFlag; } }
        public string PONOAlert { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PONOAlert; } }
        public string PONOAlert2 { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PONOAlert2; } }

        public string MaterialGroup { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.MaterialGroup; } }

        #region RoundWorkOrder

        public string RoundNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.RoundNo; } }
        public string WO { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.WO; } }
        public int RNo { get { return this.POColorSizeDetail == null ? 0 : this.POColorSizeDetail.RNo; } }

        public PH.RWO.BO.RoundWorkOrder RWO { get { return this.POColorSizeDetail == null ? null : this.POColorSizeDetail.RWO; } }
        public DateTime? RWO_FWStartDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.RWO_FWStartDate; } }
        public DateTime? RWO_ExftyDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.RWO_ExftyDate; } }
        public int? RWO_QTY { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.RWO_QTY; } }

        #endregion

        #endregion

    }
    public partial class PORCDetail : PH.Platform.BO.BaseEntity
    {
    }

    public class InvoiceNonMatching
    {
        public string Supplier { get; set; }
        public string AdviceNote { get; set; }
        public string PONO { get; set; }
        public string ItemCode { get; set; }
        public string SupplierReference { get; set; }
        public string ColorCode { get; set; }
        public string SizeCupDesc { get; set; }
        public string SupplierUOM { get; set; }
        public decimal? UsefulStockInQty { get; set; }

        public decimal? Useful { get; set; }
        public double? StockInQty { get; set; }

        public decimal? PriceVAT { get; set; }
        public decimal? InvoicePrice { get; set; }

        public decimal? UsefulStockInAmount
        {
            get
            {
                return (PriceVAT ?? 0) * (UsefulStockInQty ?? 0);
            }
        }

        public decimal? InvoiceAmount
        {
            get
            {
                if (!InvoicePrice.HasValue || !UsefulStockInQty.HasValue) return null;
                return (InvoicePrice ?? 0) * (UsefulStockInQty ?? 0);
            }
        }
        public decimal? DiffAmount
        {
            get
            {
                if (!InvoiceAmount.HasValue || !UsefulStockInAmount.HasValue) return null;
                return (InvoiceAmount ?? 0) - (UsefulStockInAmount ?? 0);
            }
        }

    }

    public partial class POChangesMonitor : PH.Platform.BO.BaseEntity
    {
        public decimal? PHAcoumt
        {
            get
            {
                //return this.POColorSizeDetail.PHAmount;

                if (this.POColorSizeDetail.VATPrice.HasValue)
                {
                    return (this.POColorSizeDetail.VATPrice ?? 0) * Convert.ToDecimal(this.SplitQty ?? 0);


                }
                return null;


                //return this.POColorSizeDetail.VATPrice.HasValue ? (this.POColorSizeDetail.VATPrice ?? 0) * Convert.ToDecimal(this.SplitQty ?? 0) : (decimal?) null;
            }

        }



        public DateTime? cPODeliveryDateShow
        {
            get
            {
                if (POActualTransitDate != null)
                {
                    return POActualTransitDate;

                }
                else if (RevisedDeliveryDateShow != null)
                {
                    return RevisedDeliveryDateShow;
                }

                return PODeliveryDate;
            }
        }


        /// <summary>
        /// Stock in 毛数量
        /// </summary>
        public double? GrossQty
        {
            get
            {
                if ((ReceivedQty ?? 0) == 0) //没有入仓
                {
                    return 0;
                }
                else
                {
                    if (RCCode == "1A" || RCCode == "1B") return GRNQty; //1A或1B时，不需要退货
                    else return GRNQty - RCQty; //其他情况需要退货
                }
            }
        }

        /// <summary>
        /// Stock in 净数量
        /// </summary>
        public double? NetQty
        {
            get
            {
                if (RCCode == "1A" || RCCode == "1B") return GrossQty - RCQty;
                else return GrossQty;
            }
        }

        /// <summary>
        /// Stock in 可用率
        /// </summary>
        public double? StockInUseful
        {
            get
            {
                return (GrossQty ?? 0) == 0 ? null : (NetQty / GrossQty * 100.00);
            }
        }

        //按Alice的要求，L3中的Rev. Delivery Date直接从L2中取得，以免在L2中修改了Rev. Delivery Date后，在L3中还要修改一次Rev. Delivery Date
        public DateTime? RevisedDeliveryDateShow
        {
            get
            {
                return this.POColorSizeDetail.RevDeliveryDate;
            }
        }

        //# region Invoice Matching Step2中用到的字段
        public decimal? Useful { get; set; }

        public decimal? UsefulStockInQty
        {
            get
            {
                return Convert.ToDecimal(StockInQty) * Useful / 100.00m;
            }
        }

        //public decimal? Useful { get; set; }

        ////public decimal? Useful
        ////{
        ////    get
        ////    {
        ////        if (CurrentDataContext == null)
        ////        {
        ////            CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();
        ////        }

        ////        return (CurrentDataContext as POPCDataContext).fn_GetUseful(SupplierReference, AdviceNote);
        ////    }
        ////}

        //public decimal? UsefulStockInQty
        //{
        //    get
        //    {
        //        return Convert.ToDecimal((StockInQty ?? 0)) * (Useful.HasValue ? (Useful ?? 100.00M) : 100.00M) / 100.00M;
        //    }
        //}


        //public decimal? InvoiceAmount
        //{
        //    get
        //    {
        //        if (!InvoicePrice.HasValue || !SupplierPOQty.HasValue) return null;
        //        return (InvoicePrice ?? 0) * (UsefulStockInQty ?? 0);
        //        //return (InvoicePrice ?? 0) * (SupplierPOQty ?? 0);
        //    }
        //}

        //public decimal? UsefulStockInAmount
        //{
        //    get
        //    {
        //        if (!PriceVAT.HasValue || !UsefulStockInQty.HasValue) return null;
        //        return (PriceVAT ?? 0) * (UsefulStockInQty ?? 0);
        //    }
        //}

        //public decimal? DiffAmount
        //{
        //    get
        //    {
        //        if (!InvoiceAmount.HasValue || !UsefulStockInAmount.HasValue) return null;
        //        return (InvoiceAmount ?? 0) - (UsefulStockInAmount ?? 0);
        //    }
        //}

        //#endregion


        public double? AffectDays
        {
            get
            {
                if (!RWO_DaysDiff.HasValue || !AffectPercent.HasValue) return null;

                double result = (RWO_DaysDiff ?? 0) * (AffectPercent ?? 0) / 100.00;

                //计算天数，正数向上取整，负数向下取整
                return (result >= 0) ? Math.Ceiling(result) : Math.Floor(result);
            }
        }

        public TimeFrameII TimeFrameIIObject
        {
            get
            {
                POHeader po = this.POColorSizeDetail.PODetail.POHeader;
                BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
                if (po.TimeFrameIIEndPoint == "RT" && po.TransitMode2 == "Ocean") //如果是运到孟加拉并且是船运的话，需要区分丰水期和枯水期
                {
                    string LogisticSeason = (PODeliveryDate_Final.Value.Month >= 4 && PODeliveryDate_Final.Value.Month <= 8) ? "Dry" : "Wet";
                    TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == po.TimeFrameIIStartPoint && p.EndPoint == po.TimeFrameIIEndPoint &&
                                      p.TransitMode == po.TransitMode2 && p.LogisticSeason == LogisticSeason);

                    return obj;
                }
                else
                {
                    TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == po.TimeFrameIIStartPoint && p.EndPoint == po.TimeFrameIIEndPoint && p.TransitMode == po.TransitMode2);
                    return obj;
                }



                //POHeader po = this.POColorSizeDetail.PODetail.POHeader;
                //BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
                //int Count = db.TimeFrameIIs.Where(p => p.StartPoint == po.TimeFrameIIStartPoint && p.EndPoint == po.TimeFrameIIEndPoint && p.TransitMode == po.TransitMode2).Count();
                //if (Count > 1)
                //{
                //    string LogisticSeason = (PODeliveryDate_Final.Value.Month >= 4 && PODeliveryDate_Final.Value.Month <= 8) ? "Dry" : "Wet";
                //    TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == po.TimeFrameIIStartPoint && p.EndPoint == po.TimeFrameIIEndPoint &&
                //                      p.TransitMode == po.TransitMode2 && p.LogisticSeason == LogisticSeason);

                //    return obj;
                //}
                //else
                //{
                //    TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == po.TimeFrameIIStartPoint && p.EndPoint == po.TimeFrameIIEndPoint && p.TransitMode == po.TransitMode2);
                //    return obj;
                //}
            }
        }

        public int? TimeFrame2
        {
            get
            {
                TimeFrameII obj = TimeFrameIIObject;
                return obj == null ? null : obj.LeadTimeDay;
            }
            set { }
        }



        public string MaterialStandBy
        {
            get { return this.POColorSizeDetail.MaterialStandBy; }
            set { this.POColorSizeDetail.MaterialStandBy = value; }
        }

        //Add by shulin 2022-07-20
        //  private DateTime? _POActualTransitDate{get{return this.POActualTransitDate}};

        //public DateTime? POActualTransitDate
        //{
        //    get;
        //    set;

        //}
        //public DateTime? HDOReleasedDate { get; set; }

        //public string ActionLogSeqNoShow
        //{
        //    get
        //    {
        //        return ActionLogSeqNo;


        //        //if (string.IsNullOrEmpty(ActionLogSeqNo)) return null;

        //        //return ActionLogSeqNo.IndexOf('-') > 0 ? ActionLogSeqNo : ActionLogSeqNo.Substring(4, 4); 
        //    }
        //    //get { return ActionLogSeqNo.HasValue ? ActionLogSeqNo.Value.ToString().Substring(4, 4) : null; }
        //}

        //public string ActionLogTaking
        //{
        //    get { return string.IsNullOrEmpty(this.ActionLogSeqNo) ? null : "Y"; }
        //}

        //public string ActionLogCode
        //{
        //    get { return ActionLogHeader == null ? null : ActionLogHeader.ItemNo; }
        //}


        public DateTime? ActionLogCompletionStage_Target { get { return CurrActionLogHeader == null ? null : CurrActionLogHeader.PlanEndDate; } }
        public DateTime? ActionLogCompletionStage_Revised { get { return CurrActionLogHeader == null ? null : CurrActionLogHeader.RevisedDate; } }
        public DateTime? ActionLogCompletionStage_Cmpl { get { return CurrActionLogHeader == null ? null : CurrActionLogHeader.CompletedDate; } }

        //ActionLogHeader _CurrActionLogHeader = null;
        public ActionLogHeader CurrActionLogHeader
        {
            get
            {
                //POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
                //return db.ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);

                return this.ActionLogHeader;



                //if (CurrentDataContext == null)
                //{
                //    CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();
                //}


                //if (_CurrActionLogHeader == null)
                // {
                //  _CurrActionLogHeader = ContextBuilder.CreateContext<POPCDataContext>().ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
                //_CurrActionLogHeader = (CurrentDataContext as POPCDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
                //}
                //return _CurrActionLogHeader;
            }
        }

        public string OddEvenRowFlag { get; set; }


        public int? StartWindows
        {
            get
            {
                if (!WOExftyDate.HasValue || !WOFWStartDate.HasValue)
                {
                    return null;
                }
                return (WOExftyDate.Value - WOFWStartDate.Value).Days;
            }
        }

        public int? ExftyWindows
        {
            //get
            //{
            //    DateTime? date = TimeFrameIIReceiveGoodEndPointDateShow.HasValue ? TimeFrameIIReceiveGoodEndPointDateShow : ArrivalPointofdestinationShow;

            //    if (!date.HasValue || !WOExftyDate.HasValue)
            //    {
            //        return null;
            //    }

            //    return ((WOExftyDate ?? DateTime.MinValue) - (date ?? DateTime.MinValue)).Days;
            //}
            get
            {


                DateTime? date = TimeFrameIIReceiveGoodEndPointDateShow.HasValue ? TimeFrameIIReceiveGoodEndPointDateShow : ArrivalPointofdestinationShow;

                if (!date.HasValue || !WOExftyDate.HasValue)
                {
                    return null;
                }

                if ((RWO_DaysDiff ?? 0) < 0)
                {
                    return ((WOExftyDate ?? DateTime.MinValue) - (date ?? DateTime.MinValue)).Days;
                }
                else
                {
                    return StartWindows ?? 0;
                }

            }



        }

        public string SplitMode
        {
            get
            {
                //return "aa";

                if (HowManyLot == "--")
                {
                    return "--";
                }

                bool HasRC = this.POColorSizeDetail.POChangesMonitors.Distinct(new POChangesMonitorComparer())
                    .Where(p => p.PONO == PONO && p.OrderLine == OrderLine && p.ColorCode == ColorCode).Any(p => p.RCQty > 0);

                int NoRCCount = this.POColorSizeDetail.POChangesMonitors.Distinct(new POChangesMonitorComparer())
                    .Where(p => p.PONO == PONO && p.OrderLine == OrderLine && p.ColorCode == ColorCode && (p.RCQty ?? 0) == 0).Count();

                if (HasRC) //有RC
                {
                    return NoRCCount > 1 ? "RC+Qty" : "RC";

                    //if (NoRCCount > 1) //RC分多水回来
                    //{
                    //    return "RC+Qty";
                    //}
                    //else //RC分一水回来
                    //{
                    //    return (RCQty ?? 0) > 0 ? "RC" : "--";
                    //}
                }
                else  //没有RC的，都显示Qty
                {
                    if (this.ProjectNo.ToUpper().StartsWith("NO"))
                    {
                        return "DRQ";
                    }
                    else
                    {
                        return "Qty";
                    }
                }





                //if (HasRC)
                //{
                //    return (RCQty ?? 0) > 0 ? "RC" : "--";
                //}
                //else //没有RC的，都显示Qty
                //{
                //    return "Qty";
                //}
                //return HasRC ? "RC" : "Qty";
            }
        }

        public double InwardQtyDiffShow
        {
            get
            {
                return (SplitQty ?? 0) - (GRNQty ?? 0);
            }
            set { }
        }


        /// <summary>
        /// 最终的 PO Delivery Date, 由David增加 2022-07-23
        /// 1. 当有 Act. Date 时取 Act. Date
        /// 2. 没有Act. Date, 有Adj. Date时取Adj. Date
        /// 3. 否则取 Cfmd Date.
        /// </summary>
        public DateTime? PODeliveryDate_Final
        {
            get
            {
                if (POActualTransitDate.HasValue) return POActualTransitDate;
                else if (RevisedDeliveryDateShow.HasValue) return RevisedDeliveryDateShow;
                else return PODeliveryDate;
            }
        }

        /// <summary>
        /// 最终的Time Frmae I 天数
        /// 1. 如果有Adj. days取时 Adj. days
        /// 2. 否则取Def. days
        /// </summary>
        public int? TimeFrameIDays_Final
        {
            get
            {
                return TimeFrame1Change.HasValue ? TimeFrame1Change : TimeFrame1;
            }
        }

        /// <summary>
        /// 最终的Time Frmae II 天数
        /// 1. 如果有Adj. days取时 Adj. days
        /// 2. 否则取Def. days
        /// </summary>
        public int? TimeFrameIIDays_Final
        {
            get
            {
                return TimeFrame2Change.HasValue ? TimeFrame2Change : TimeFrame2;
            }
        }


        // TF2's Recv'g Start Pt.  由David增加 2022-05-20
        public DateTime? TimeFrameIIReceiveGoodStartPointDateShow
        {
            get
            {
                if (HDOReleasedDate.HasValue) //如果有HDO Release Date时，直接取HDO Release Date
                {
                    return HDOReleasedDate;
                }


                //如果修改了Delivery Date 或 Tansit Mode 1, 则需要重算 TF2's Recv'g Start Pt.
                if (POActualTransitDate.HasValue || RevisedDeliveryDateShow.HasValue || (TimeFrame1Change ?? 0) > 0)
                {
                    return PODeliveryDate_Final.Value.AddDays(TimeFrameIDays_Final ?? 0);
                }

                return null;

                ////Addby shulin 2022-07-21
                //if (POActualTransitDate.HasValue)
                //{
                //    return POActualTransitDate.Value.AddDays(TimeFrame1 ?? 0);
                //}
                ////如果修改了Delivery Date 或 Tansit Mode 1, 则需要重算 TF2's Recv'g Start Pt.
                //else if ((RevisedDeliveryDate.HasValue) || ((TimeFrame1Change ?? 0) > 0))
                //{
                //    DateTime? dtDeliveryDate = RevisedDeliveryDate.HasValue ? RevisedDeliveryDate : PODeliveryDate;
                //    int? iTimeFrame1 = TimeFrame1Change.HasValue ? TimeFrame1Change : TimeFrame1;
                //    return (dtDeliveryDate ?? DateTime.MinValue).AddDays(iTimeFrame1 ?? 0);
                //}

                ////如果修改了Delivery Date 或 Tansit Mode 1, 则需要重算 TF2's Recv'g Start Pt.
                //if ((RevisedDeliveryDate.HasValue) || ((TimeFrame1Change ?? 0) > 0))
                //{
                //    DateTime? dtDeliveryDate = RevisedDeliveryDate.HasValue ? RevisedDeliveryDate : PODeliveryDate;
                //    int? iTimeFrame1 = TimeFrame1Change.HasValue ? TimeFrame1Change : TimeFrame1;
                //    return (dtDeliveryDate ?? DateTime.MinValue).AddDays(iTimeFrame1 ?? 0);
                //}




                //return null;

            }
            //set { }
        }

        public DateTime? TimeFrameIIReceiveGoodStartPointDate_Final
        {
            get { return TimeFrameIIReceiveGoodStartPointDateShow.HasValue ? TimeFrameIIReceiveGoodStartPointDateShow : ETAPointOfDestDate; }
        }


        //TF2's Recv'g End Pt. 由David增加 2022-05-20
        public DateTime? TimeFrameIIReceiveGoodEndPointDateShow
        {
            get
            {

                if (HDOReleasedDate.HasValue)
                {
                    return TimeFrameIIReceiveGoodStartPointDate_Final.Value.AddDays(TimeFrameIIDays_Final ?? 0);
                }

                //如果修改了Delivery Date、Tansit Mode 1、Transit Mode 2中的任何一个, 则需要重算 TF2's Recv'g End Pt.
                if (POActualTransitDate.HasValue || RevisedDeliveryDateShow.HasValue || (TimeFrame1Change ?? 0) > 0 || (TimeFrame2Change ?? 0) > 0)
                {
                    return PODeliveryDate_Final.Value.AddDays(TimeFrameIDays_Final ?? 0).AddDays(TimeFrameIIDays_Final ?? 0);
                }

                return null;


                ////Addby shulin 2022-07-21
                //if (POActualTransitDate.HasValue)
                //{
                //    return (POActualTransitDate ?? DateTime.MinValue).AddDays((TimeFrame1 ?? 0) + (TimeFrame2 ?? 0));
                //}
                ////如果修改了Delivery Date、Tansit Mode 1、Transit Mode 2中的任何一个, 则需要重算 TF2's Recv'g End Pt.
                //else if ((RevisedDeliveryDate.HasValue) || ((TimeFrame1Change ?? 0) > 0) || ((TimeFrame2Change ?? 0) > 0))
                //{
                //    DateTime? dtDeliveryDate = RevisedDeliveryDate.HasValue ? RevisedDeliveryDate : PODeliveryDate;
                //    int? iTimeFrame1 = TimeFrame1Change.HasValue ? TimeFrame1Change : TimeFrame1;
                //    int? iTimeFrame2 = TimeFrame2Change.HasValue ? TimeFrame2Change : TimeFrame2;
                //    return (dtDeliveryDate ?? DateTime.MinValue).AddDays(iTimeFrame1 ?? 0).AddDays(iTimeFrame2 ?? 0);
                //}


                ////如果修改了Delivery Date、Tansit Mode 1、Transit Mode 2中的任何一个, 则需要重算 TF2's Recv'g End Pt.
                //if ((RevisedDeliveryDate.HasValue) || ((TimeFrame1Change ?? 0) > 0) || ((TimeFrame2Change ?? 0) > 0))
                //{
                //    DateTime? dtDeliveryDate = RevisedDeliveryDate.HasValue ? RevisedDeliveryDate : PODeliveryDate;
                //    int? iTimeFrame1 = TimeFrame1Change.HasValue ? TimeFrame1Change : TimeFrame1;
                //    int? iTimeFrame2 = TimeFrame2Change.HasValue ? TimeFrame2Change : TimeFrame2;
                //    return (dtDeliveryDate ?? DateTime.MinValue).AddDays(iTimeFrame1 ?? 0).AddDays(iTimeFrame2 ?? 0);
                //}

            }
            // set { }
        }



        //由David增加 2022-05-09
        public DateTime? WOFWStartDate { get; set; }
        public DateTime? WOExftyDate { get; set; }

        //由David增加 2022-06-29
        public int TotalWO { get; set; }
        public string ChosenWO { get; set; }


        //由David加入 2022-05-09
        public string TransitMode2Show
        {
            get
            {
                return this.POColorSizeDetail.PODetail.POHeader.TransitMode2;
            }
            set
            {
                this.POColorSizeDetail.PODetail.POHeader.TransitMode2 = value;
            }
        }

        //由David加入 2022-05-09
        public DateTime? ArrivalPointofdestinationShow
        {
            get
            {

                return ETAPointOfDestDate.HasValue ? ETAPointOfDestDate.Value.AddDays(TimeFrame2 ?? 0) : (DateTime?)null;

                //return this.POColorSizeDetail.ArrivalPointofdestinationShow;

                //DateTime? GetDateTime = RevDeliveryDate ?? PODeliveryDate;
                //if (GetDateTime == null) return null;
                //DateTime DelDateTime = GetDateTime ?? DateTime.MaxValue;
                //return DelDateTime.AddDays(TimeFrame1 ?? 0).AddDays(TimeFrame2 ?? 0);
            }
            set { }
        }



        //由David加入 2022-03-25
        public string DeliveryRouting
        {
            get
            {
                if (POColorSizeDetail == null) return "";

                return this.POColorSizeDetail.PODetail.POHeader.DeliveryRouting;
            }
            set { }
        }


        //由David加入 2022-03-14
        public string BuyerCode
        {
            get
            {
                return this.POColorSizeDetail.BuyerCode;
            }
            set { }
        }


        //public string HowManyLot { get { return PartialShipment ? string.Format("{0} shpt", LotDesc) : "--"; } }
        public string HowManyLot { get { return PartialShipment ? string.Format("{0}/{1}", this.SplitNo, this.Lots) : "--"; } set { } }
        public string LotDesc
        {
            get
            {
                switch (this.SplitNo)
                {
                    case 1: return "1st";
                    case 2: return "2nd";
                    case 3: return "3rd";
                    default:
                        return string.Format("{0}th", this.SplitNo);

                }
            }
            set { }
        }
        public int Lots
        {
            get
            {
                return this.POColorSizeDetail == null ? 0 : this.POColorSizeDetail.POChangesMonitors.Distinct(new POChangesMonitorComparer()).Count();
                //return this.POColorSizeDetail == null ? 0 : this.POColorSizeDetail.POChangesMonitors.Distinct(new iequ.Count();
                //return this.POColorSizeDetail == null ? 0 : this.POColorSizeDetail.POChangesMonitors.Max(p => p.SplitNo); //由David修改算法 2022-05-24
            }
            set { }
        }

        public bool PartialShipment { get { return this.Lots > 1; } }
        public bool RevisedDelivery { get { return this.RevisedDeliveryDateShow.HasValue && (this.PODeliveryDate ?? DateTime.MinValue) != (this.RevisedDeliveryDateShow ?? DateTime.MinValue); } }
        public bool Over7Days //超过7天才算Changed
        {
            get
            {
                return this.RevisedDeliveryDateShow.HasValue
                    && (Math.Abs(((this.PODeliveryDate ?? DateTime.MinValue) - (this.RevisedDeliveryDateShow ?? DateTime.MinValue)).Days) > 7);
            }
            set { }
        }
        public bool TransitModeHaveChanged
        {
            get
            {
                return (!string.IsNullOrEmpty(this.TransitMode1Change) && (this.TransitMode1Change != this.TransitModePO)) ||
                       (!string.IsNullOrEmpty(this.TransitMode2Change) && (this.TransitMode2Change != this.TransitMode2Show));
            }
            set { }
        }

        public string PartialShipmentDesc { get { return PartialShipment ? "Y" : "N"; } set { } }
        public string RevisedDeliveryDesc { get { return RevisedDelivery ? "Y" : "N"; } set { } }
        public string TransitModeHaveChangedDesc { get { return TransitModeHaveChanged ? "Y" : "N"; } set { } }

        public string TransitModeChangedDesc { get { return TransitModeHaveChanged ? this.TransitModeChanged : "--"; } }
        public string TransitModeChangeT1Desc { get { return TransitModeHaveChanged ? Convert.ToString(this.TransitModeChangeT1) : "--"; } set { } }
        public string TransitModeChangeT2Desc { get { return TransitModeHaveChanged ? Convert.ToString(this.TransitModeChangeT2) : "--"; } set { } }

        public int? TransitModeChangeT1 { get { return TransitModeHaveChanged ? this.ChangedTimeFrame1 : this.TimeFrame1; } set { } }//Time Frame 1
        public int? TransitModeChangeT2 { get { return this.TimeFrame2; } set { } }//same as PO Time Frame 2

        public DateTime? MaterialETADate1 { get { return this.RevisedDeliveryDateShow.HasValue ? this.RevisedDeliveryDateShow.Value.AddDays(this.TransitModeChangeT1 ?? 0) : (DateTime?)null; } set { } }
        public DateTime? MaterialETADate2 { get { return this.RevisedDeliveryDateShow.HasValue ? this.RevisedDeliveryDateShow.Value.AddDays((this.TransitModeChangeT1 ?? 0) + (this.TransitModeChangeT2 ?? 0)) : (DateTime?)null; } set { } }

        public double? CummQty
        {
            get
            {
                if (this.POColorSizeDetail == null)
                    return null;
                else
                {
                    var aa = this.POColorSizeDetail.POChangesMonitors.Distinct(new POChangesMonitorComparer()).Where(p => p.SplitNo <= this.SplitNo).Sum(q => q.SplitQty);

                    return aa;
                }
            }
            set { }
        }
        public int? DeliveryDiff
        {
            get
            {
                //POActualTransitDate
                //    RevisedDeliveryDate
                //    PODeliveryDate

                //int? days = null;

                //if (PODeliveryDate.HasValue)
                //    days = null;

                //if (RevisedDeliveryDate.HasValue)
                //{
                //    days = (RevisedDeliveryDate.Value - PODeliveryDate.Value).Days;
                //}
                //return days;


                //DateTime? date = RevisedDeliveryDate.HasValue ? RevisedDeliveryDate.Value : PODeliveryDate;
                //if (!date.HasValue || !POActualTransitDate.HasValue)
                //{
                //    return null;
                //}

                //return (date.Value - POActualTransitDate.Value).Days;


                if (POActualTransitDate.HasValue)
                {
                    if (RevisedDeliveryDateShow.HasValue)
                    {
                        return (RevisedDeliveryDateShow.Value - POActualTransitDate.Value).Days;
                    }
                    else
                    {
                        return (PODeliveryDate.Value - POActualTransitDate.Value).Days;
                    }
                }
                else
                {
                    return this.RevisedDeliveryDateShow.HasValue ? (this.PODeliveryDate.Value - this.RevisedDeliveryDateShow.Value).Days : (int?)null;
                }
            }
        }


        public string ActionStatusDesc
        {
            get
            {
                return (this.ActionStatus ?? false) ? "Completed" : "WIP";
                //return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.POStatus;
                //(this.POColorSizeDetail.PODetail.POHeader.IsOutStanding == "Completed" || (this.StockInConfirmed ?? false) ? "Completed" : "WIP");
            }
            set { }
        }

        public string ETDFlag { get { return this.ActualETD.HasValue ? (this.ActualETD.Value == this.ActualETA.Value ? "E" : "N") : "--"; } set { } }

        #region From PO

        public bool IsOutStanding { get { return this.POColorSizeDetail == null ? false : this.POColorSizeDetail.IsOutStanding; } set { } }
        public string POStatus
        {
            get
            {
                return IsOutStanding ? "WIP" : "Cmpl";
                //return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.POStatus;
                //(this.POColorSizeDetail.PODetail.POHeader.IsOutStanding == "Completed" || (this.StockInConfirmed ?? false) ? "Completed" : "WIP");
            }
            set { }
        }
        //1.Header
        public int NumOfProject { get { return this.POColorSizeDetail.PODetail == null ? 0 : this.POColorSizeDetail.PODetail.POHeader.NumOfProject; } set { } }
        public DateTime? POIssueDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.OrderDate; } set { } }
        public DateTime? POReqDeliveryDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.ShipmentDate; } set { } }
        public string Factory { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Factory; } set { } }
        public string Supplier { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.Supplier; } set { } }
        public string SupplierLocation { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.LocationOfSuppFactoryDesc; } set { } }
        public string EndCustCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndCustCode; } set { } }
        public string PurchaseOfficer { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer; } set { } }
        public string Team { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Dept; } set { } }
        //public string ClassCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ClassCode; } }
        public string OrderClassDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.OrderClassDesc; } set { } }
        public string Currency { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Currency; } set { } }
        public string PaymentTerms { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.PaymentTerms; } set { } }

        public int? TimeFrame1 { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.POHeader.TransitFrame; } set { } }

        //public int? TimeFrame2  我就知
        //{
        //    get
        //    {
        //        TimeFrameII obj = this.POColorSizeDetail.PODetail.POHeader.TimeFrameIIObject;
        //        if (obj == null) return null;
        //        return obj.LeadTimeDay;


        //        //if (HDOReleasedDate.HasValue) //如果有HDO Release date時，Time Frame II的天數要减掉 Handing HKCCS天数, 由David加入 2022-07-23
        //        //{
        //        //    return (obj.LeadTimeDay ?? 0) - (obj.HandlingHKCCS ?? 0);
        //        //}
        //        //else
        //        //{
        //        //    return obj.LeadTimeDay;

        //        //    //return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.POHeader.TimeFrame2;
        //        //}
        //    }

        //    set { }
        //}


        public string Incoterms { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Incoterms; } set { } }
        public string TransitModePO { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ShipMode; } set { } }
        public string TransitPoint { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitPoint; } set { } }
        public string TransitPointCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitPointCode; } set { } }
        public string EndPoint
        {
            get
            {
                //由David修改 2022-05-06
                return this.POColorSizeDetail.PODetail.POHeader.TimeFrameIIStartPoint;


                //string s = this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndPoint;
                //if (string.IsNullOrEmpty(s)) return s;

                //int i = s.IndexOf("/");
                //if (i - 1 > 0)
                //    s = s.Substring(0, i - 1);
                //s = s.Replace("\"", "");
                //return s;
            }
            set { }
        }

        //2.detail
        public string ProjectNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ProjectNO; } set { } }
        public string ItemCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ItemCode; } set { } }
        public DateTime? PODeliveryDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.ConfirmETADate; } set { } }
        //public DateTime? WOExftyDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.WOStartDate; } }
        public DateTime? ETAPointOfDestDate { get { return this.PODeliveryDate.HasValue ? this.PODeliveryDate.Value.AddDays(this.TimeFrame1 ?? 0) : (DateTime?)null; } set { } }
        //public DateTime? HDODate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.HDODate; } set { } }
        public DateTime? HDODate { get { return this.POColorSizeDetail == null || (this.GRNQty ?? 0) == 0 ? (DateTime?)null : this.POColorSizeDetail.HDODate; } set { } }

        public string ClassCode
        {
            get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.ClassCode; }
            set { this.POColorSizeDetail.PODetail.ClassCode = value; }
        }
        public string ClassCodeENDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.ClassCodeENDesc; } set { } }
        public string ClassCodeCNDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.ClassCodeCNDesc; } set { } }
        //3.SKU
        public string CustStyleNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustStyleNo; } set { } }
        public string CustOrderNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustOrderNo; } set { } }
        public string ColorCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorCode; } set { } }

        public string SizeDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeDesc; } set { } }
        public string FitDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitDesc; } set { } }
        public string SizeCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeCode; } set { } }
        public string FitCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitCode; } set { } }

        public DateTime? GoodsReceivingDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.HDOETA; } set { } }
        public decimal? Price { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Price; } set { } }
        public decimal? PriceVAT { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.VATPrice; } set { } } //由David增加 2022-06-24
        public decimal? PHPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Qty; } set { } }
        public decimal? PHOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.PHOutstandingQty; } set { } }
        public decimal? SupplierPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierPOQty; } set { } }

        //修改Balance Qty的算法, David 2022-05-25
        public decimal? SupplierOutstandingQty
        {
            get
            {
                if (SplitNo == 1)
                {
                    //return (SupplierPOQty ?? 0) - Convert.ToDecimal((NetQty ?? 0) - (DRQty ?? 0)) / Convert.ToDecimal((ConvertFactor ?? 1));
                    //以采购单位来计算
                    return (SupplierPOQty ?? 0) -
                           (Convert.ToDecimal(NetQty ?? 0) / Convert.ToDecimal(ConvertFactor ?? 1)) -
                           (Convert.ToDecimal(DRQty ?? 0) / Convert.ToDecimal(ConvertFactor ?? 1));
                }
                else
                {
                    if (this.POColorSizeDetail == null) return null;

                    POChangesMonitor PreSplit = this.POColorSizeDetail.POChangesMonitors.FirstOrDefault(p => p.SplitNo == this.SplitNo - 1);
                    if (PreSplit == null) return null;

                    //return PreSplit.SupplierOutstandingQty - Convert.ToDecimal((NetQty ?? 0) - (DRQty ?? 0)) / Convert.ToDecimal((ConvertFactor ?? 1));
                    return PreSplit.SupplierOutstandingQty -
                           (Convert.ToDecimal(NetQty ?? 0) / Convert.ToDecimal(ConvertFactor ?? 1)) -
                           (Convert.ToDecimal(DRQty ?? 0) / Convert.ToDecimal(ConvertFactor ?? 1));
                }
            }
            set { }
        }


        //public decimal? SupplierOutstandingQty
        //{
        //    get
        //    {
        //        if (SplitNo == 1)
        //        {
        //           return (SupplierPOQty ?? 0) - Convert.ToDecimal( (NetQty ?? 0)-(DRQty??0) ) / Convert.ToDecimal((ConvertFactor ?? 1));
        //           //return (SupplierPOQty ?? 0) - Convert.ToDecimal((NetQty ?? 0)) / Convert.ToDecimal((ConvertFactor ?? 1)) ;

        //        }
        //        else
        //        {
        //            if (this.POColorSizeDetail == null) return null;

        //            POChangesMonitor PreSplit = this.POColorSizeDetail.POChangesMonitors.FirstOrDefault(p => p.SplitNo == this.SplitNo - 1);
        //            if (PreSplit == null) return null;

        //            //return PreSplit.SupplierOutstandingQty - Convert.ToDecimal((NetQty ?? 0) - (DRQty??0) ) / Convert.ToDecimal((ConvertFactor ?? 1));
        //            return PreSplit.SupplierOutstandingQty - Convert.ToDecimal((NetQty ?? 0)) / Convert.ToDecimal((ConvertFactor ?? 1));
        //        }
        //    }
        //    set { }
        //}

        //public decimal? SupplierOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierOutstandingQty; } set { } }


        public decimal? POBalancePercent
        {
            get
            {
                return SupplierPOQty.HasValue ? (SupplierOutstandingQty / SupplierPOQty) : 0;
            }
            set { }
        }

        //public decimal? POBalancePercent { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.POBalancePercent; } set { } }

        public string SupplierReference { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierReference; } set { } }
        public string ColorShade { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorShade; } set { } }
        public string SupplierUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierUOM; } set { } }
        public string PHUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PHUom; } set { } }
        public string GarmentColor { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.GarmentColor; } set { } }

        public string BrandName { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.BrandName; } set { } }
        public string GmtColorName { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.GmtColorName; } set { } }
        public string ItemColorName { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ItemColorName; } set { } }
        public string FlowupFlag { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FlowupFlag; } set { } }
        public string PONOAlert { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PONOAlert; } set { } }
        public string PONOAlert2 { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PONOAlert2; } set { } }

        public string MaterialGroup { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.MaterialGroup; } set { } }

        #region RoundWorkOrder

        public string RoundNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.RoundNo; } set { } }
        public string WO { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.WO; } set { } }
        public int RNo { get { return this.POColorSizeDetail == null ? 0 : this.POColorSizeDetail.RNo; } set { } }

        public PH.RWO.BO.RoundWorkOrder RWO { get { return this.POColorSizeDetail == null ? null : this.POColorSizeDetail.RWO; } set { } }
        public DateTime? RWO_FWStartDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.RWO_FWStartDate; } set { } }
        public DateTime? RWO_ExftyDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.RWO_ExftyDate; } set { } }
        public int? RWO_QTY { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.RWO_QTY; } set { } }

        //public string RWO_DaysDiff { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.RWO_DaysDiff.ToString(); } set { } }
        public int? RWO_DaysDiff
        {
            get
            {
                if (!WOFWStartDate.HasValue) return null;

                DateTime dtWOFWStartDate = WOFWStartDate ?? DateTime.MinValue;
                DateTime dtTimeFrameIIReceiveGoodEndPointDate = TimeFrameIIReceiveGoodEndPointDateShow.HasValue ?
                    (TimeFrameIIReceiveGoodEndPointDateShow ?? DateTime.MinValue) :
                    (ArrivalPointofdestinationShow ?? DateTime.MinValue);

                return (dtWOFWStartDate - dtTimeFrameIIReceiveGoodEndPointDate).Days;
            }
            //set { }
        }


        #endregion

        #endregion

        #region Stock in qty
        public string SizeCupDesc
        {
            get
            {
                string s = string.Format("{0}{1}", this.SizeDesc, string.IsNullOrEmpty(this.FitDesc) ? "" : this.FitDesc.TrimEnd());
                return string.IsNullOrEmpty(s.Trim()) ? "N/A" : s;
            }
            set { }
        }
        public string InvUOM { get { return this.SupplierUOM; } set { } }

        private double? _ConvertFactor;
        public double? ConvertFactor
        {
            get
            {
                if (!_ConvertFactor.HasValue)
                    _ConvertFactor = this.POColorSizeDetail == null ? (double?)null : this.POColorSizeDetail.PODetail.ConversionFactor;
                return _ConvertFactor;
            }
            set { }
        }
        public double? InvConvertFactor { get { return (this.ConvertFactor ?? 0) == 0 ? (double?)null : 1 / this.ConvertFactor; } set { } }

        //public double? PHStockInvQty { get { return  this.POChangesMonitors.Sum(q => q.StockInQty); } }
        public double? SuppGRNQty { get { return (ConvertFactor ?? 0) == 0 ? (double?)null : this.GRNQty / ConvertFactor; } set { } }//理論上InvoiceQty等於SuppGRNQty 
        public double? SuppStockInQty { get { return (ConvertFactor ?? 0) == 0 ? (double?)null : this.StockInQty / ConvertFactor; } set { } }
        public double? DiffStkInv
        {
            get
            {
                return (this.InvoiceQty.HasValue && this.SuppStockInQty.HasValue) ?
                    1 - Convert.ToDouble(this.InvoiceQty) / Convert.ToDouble(this.SuppStockInQty) : (double?)null;
            }
            set { }
        }
        //public decimal? InvAmount { get { return this.InvoiceQty * this.Price; } set { } } //--> this.InvoiceQty is supp
        public decimal? InvAmount { get { return this.InvoiceQty * this.PriceVAT; } set { } } //由David修改 2022-06-24


        public double? LineQty1 { get { return this.Lots == 1 ? this.SplitQty : (double?)null; } set { } }
        public double? LineQty2 { get { return this.Lots != 1 ? this.SplitQty : (double?)null; } set { } }
        public double? CummQty2 { get { return this.Lots != 1 ? this.CummQty : (double?)null; } set { } }



        #endregion

        #region Invoice Matching
        //poheader
        public bool? CurrencyFlag
        {
            get { return this.POColorSizeDetail == null ? (bool?)null : this.POColorSizeDetail.PODetail.POHeader.CurrencyFlag; }
            set { this.POColorSizeDetail.PODetail.POHeader.CurrencyFlag = value; }
        }
        public bool? PaymentTermFlag
        {
            get { return this.POColorSizeDetail == null ? (bool?)null : this.POColorSizeDetail.PODetail.POHeader.PaymentTermFlag; }
            set { this.POColorSizeDetail.PODetail.POHeader.PaymentTermFlag = value; }
        }
        public bool? IncotermFlag
        {
            get { return this.POColorSizeDetail == null ? (bool?)null : this.POColorSizeDetail.PODetail.POHeader.IncotermFlag; }
            set { this.POColorSizeDetail.PODetail.POHeader.IncotermFlag = value; }
        }
        //podetail
        public bool? UnitFlag
        {
            get { return this.POColorSizeDetail == null ? (bool?)null : this.POColorSizeDetail.PODetail.UnitFlag; }
            set { this.POColorSizeDetail.PODetail.UnitFlag = value; }
        }

        //poColorSizeDetail
        public bool? BDownFlag
        {
            get { return this.POColorSizeDetail == null ? (bool?)null : this.POColorSizeDetail.BDownFlag; }
            set { this.POColorSizeDetail.BDownFlag = value; }
        }
        public bool? PriceFlag
        {
            get { return this.POColorSizeDetail == null ? (bool?)null : this.POColorSizeDetail.PriceFlag; }
            set { this.POColorSizeDetail.PriceFlag = value; }
        }


        public string GRNQtyFlagDesc { get { return (!GRNQtyFlag.HasValue) ? "--" : (GRNQtyFlag.Value ? "Y" : "N"); } set { } }
        public string BDownFlagDesc { get { return (!BDownFlag.HasValue) ? "--" : (BDownFlag.Value ? "Y" : "N"); } set { } }
        public string UnitFlagDesc { get { return (!UnitFlag.HasValue) ? "--" : (UnitFlag.Value ? "Y" : "N"); } set { } }
        public string PriceFlagDesc { get { return (!this.PriceFlag.HasValue) ? "--" : (PriceFlag.Value ? "Y" : "N"); } set { } }
        public string InvoiceAmountFlagDesc { get { return (!this.InvoiceAmountFlag.HasValue) ? "--" : (InvoiceAmountFlag.Value ? "Y" : "N"); } set { } }
        public string InvoiceNoFlagDesc { get { return (!this.InvoiceNoFlag.HasValue) ? "--" : (InvoiceNoFlag.Value ? "Y" : "N"); } set { } }
        public string InvoiceDateFlagDesc { get { return (!this.InvoiceDateFlag.HasValue) ? "--" : (InvoiceDateFlag.Value ? "Y" : "N"); } set { } }
        public string CurrencyFlagDesc { get { return (!this.CurrencyFlag.HasValue) ? "--" : (CurrencyFlag.Value ? "Y" : "N"); } set { } }
        #endregion

        #region Supplier Delivery Performance


        public double? QtyOnTime
        {
            get
            {
                if (this.GRNDate.HasValue && this.PODeliveryDate.HasValue)
                {
                    int d = (this.GRNDate.Value - this.PODeliveryDate.Value).Days;
                    return (d <= 0) ? this.GRNQty : 0;
                }
                else return 0;
            }
            set { }
        }
        public double? Qty1Week
        {
            get
            {
                if (this.GRNDate.HasValue && this.PODeliveryDate.HasValue)
                {
                    int d = (this.GRNDate.Value - this.PODeliveryDate.Value).Days;
                    return (d > 0 && d <= 7) ? this.GRNQty : 0;
                }
                else return 0;
            }
            set { }
        }
        public double? Qty10days
        {
            get
            {
                if (this.GRNDate.HasValue && this.PODeliveryDate.HasValue)
                {
                    int d = (this.GRNDate.Value - this.PODeliveryDate.Value).Days;
                    return (d > 7 && d <= 10) ? this.GRNQty : 0;
                }
                else return 0;
            }
            set { }
        }
        public double? Qty2Weeks
        {
            get
            {
                if (this.GRNDate.HasValue && this.PODeliveryDate.HasValue)
                {
                    int d = (this.GRNDate.Value - this.PODeliveryDate.Value).Days;
                    return (d > 10 && d <= 14) ? this.GRNQty : 0;
                }
                else return 0;
            }
            set { }
        }
        public double? QtyAfter2Weeks
        {
            get
            {
                if (this.GRNDate.HasValue && this.PODeliveryDate.HasValue)
                {
                    int d = (this.GRNDate.Value - this.PODeliveryDate.Value).Days;
                    return (d > 14) ? this.GRNQty : 0;
                }
                else return 0;
            }
            set { }
        }

        #endregion

    }
    partial class POEmail : PH.Platform.BO.BaseEntity
    {
    }
    partial class PONotify : PH.Platform.BO.BaseEntity
    {
        //public List<POChangesMonitor> POChangesMonitors { get; set; }
        public List<POColorSizeDetail> POColorSizeDetails { get; set; }
        public POClassification POClassification
        {
            get
            {
                return (POClassification)(this.Classification ?? 0);
            }
        }
        public string ClassificationDesc
        {
            get
            {
                switch (this.POClassification)
                {
                    case POClassification.Help:
                        return "Help - (Program issue)";
                    case POClassification.Broadcast:
                        return "Broadcast (All divisions)";
                    case POClassification.Division:
                        return string.Format("Division Dependent ({0})", this.Division);
                    default:
                        return "";
                }
            }
        }
        public string IsInternalDesc
        {
            get
            {
                return (this.IsInternal ?? false) ? "Internal" : "External";
            }
        }

        public string GetCurrentNotepadNo()
        {
            PH.POPC.BO.POPCDataContext context = (PH.POPC.BO.POPCDataContext)this.CurrentDataContext;
            if (context == null) context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            int i = (from a in context.PONotifies
                     where a.DT < this.DT
                     select a).Count();

            return string.Format("NO-{0}", i.ToString().PadLeft(5, '0'));
        }

        public string ToEmailName
        {
            get
            {
                return GetEmailName(this.ToEmail);
            }
        }
        public string CcEmailName
        {
            get
            {
                return GetEmailName(this.CcEmail);
            }
        }
        private string GetEmailName(string emails)
        {
            if (string.IsNullOrEmpty(emails)) return "";

            POEmailList list = new POEmailList();
            string names = "";
            string[] ss = emails.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
            foreach (string s in ss)
            {
                PH.POPC.BO.POEmail ea = list.GetEmailByMail(s.Trim());
                string s1;
                if (ea != null)
                    s1 = ea.UserName;
                else
                    s1 = GetEmailPreName(s.Trim());
                if (!string.IsNullOrEmpty(s1))
                    names += string.Format("{0}, ", s1);
            }
            return names;
        }
        private string GetEmailPreName(string email)
        {
            string[] ss = email.Split(new string[] { "@" }, StringSplitOptions.RemoveEmptyEntries);
            if (ss.Length > 0)
                return ss[0];
            return "";
        }
    }
    partial class PONotifyPO : PH.Platform.BO.BaseEntity
    {
        //public POChangesMonitor _monitor;
        //public POChangesMonitor Monitor
        //{
        //    get
        //    {
        //        if (_monitor == null)
        //        {
        POChangesMonitorList list = new POChangesMonitorList();
        //            _monitor = list.GetPOChangesMonitor(this.PONO, this.OrderLine, this.SKU, this.SplitNo);
        //        }
        //        return _monitor;
        //    }
        //}

        public POColorSizeDetail _monitor;
        public POColorSizeDetail Monitor
        {
            get
            {
                if (_monitor == null)
                {
                    POSKUList list = new POSKUList();
                    _monitor = list.GetPOSKU(this.PONO, this.OrderLine, this.SKU);
                }
                return _monitor;
            }
        }

        #region detail

        public string SupplierReference { get { return Monitor == null ? "" : _monitor.SupplierReference; } }
        public string SizeDesc { get { return Monitor == null ? "" : _monitor.SizeDesc; } }
        public string FitDesc { get { return Monitor == null ? "" : _monitor.FitDesc; } }
        public string ColorCode { get { return Monitor == null ? "" : _monitor.ColorCode; } }
        public string ColorShade { get { return Monitor == null ? "" : _monitor.ColorShade; } }
        public decimal? SupplierPOQty { get { return Monitor == null ? (decimal?)null : _monitor.SupplierPOQty; } }
        public decimal? SupplierOutstandingQty { get { return Monitor == null ? (decimal?)null : _monitor.SupplierOutstandingQty; } }
        public string SupplierUOM { get { return Monitor == null ? "" : _monitor.SupplierUOM; } }
        public DateTime? POReqDeliveryDate { get { return Monitor == null ? (DateTime?)null : _monitor.POReqDeliveryDate; } }
        public DateTime? PODeliveryDate { get { return Monitor == null ? (DateTime?)null : _monitor.PODeliveryDate; } }
        //public DateTime? RevisedDeliveryDate { get { return Monitor == null ? (DateTime?)null : _monitor.RevisedDeliveryDate; } }
        public string Incoterms { get { return Monitor == null ? "" : _monitor.Incoterms; } }
        public string TransitModePO { get { return Monitor == null ? "" : _monitor.TransitModePO; } }

        //p.Supplier,
        //p.PONO,
        //p.ProjectNO,
        //p.SupplierReference,
        //p.SizeDesc,
        //p.FitDesc,
        //p.ColorCode,
        //p.ColorShade,
        //string.Format("{0:#,0.##}", p.SupplierPOQty),
        //string.Format("{0:#,0.##}", p.SupplierOutstandingQty),
        //p.SupplierUOM,
        ////string.Format("{0:yyyy/MM/dd}", p.POReqDeliveryDate),
        //string.Format("{0:yyyy/MM/dd}", p.PODeliveryDate),
        //p.Incoterms,// string.Format("{0:yyyy/MM/dd}", ),// p.RevisedDeliveryDate
        //p.TransitModePO

        #endregion
    }
    public enum POClassification
    {
        //0:help  1:Broadcast (All divisions) 2:Division Dependent (A, B, C, E)
        Help,
        Broadcast,
        Division
    }
    public enum UserCategory
    {
        //0: PH  1: Customer  2: Supp 3: Sub-Contractor
        PH,
        Customer,
        Supplier,
        SubContractor
    }
    partial class POConfirm : PH.Platform.BO.BaseEntity
    {
        private string _POVersion;
        public string POVersion
        {
            get
            {
                _POVersion = string.Format("{0}.{1}", this._Version, this.AmendmentNo);
                return _POVersion;
            }
        }
    }
    //ItemCode, SKU对于 POType= POType.MIDcPO 没有意义,永远为9个空格
    public class POColorSizeDetailsMatrix
    {
        public POColorSizeDetailsMatrix()
        {

        }
        public POPCDataContext Context { get; set; }

        #region POColorSizeDetail

        public string Company { get; set; }
        public string PONO { get; set; }
        public int Version { get; set; }
        public int AmendmentNo { get; set; }
        public int OrderLine { get; set; }
        public string SKU { get; set; }
        public string ItemCode { get; set; }
        public string ColorCode { get; set; }
        public string SizeCode { get; set; }

        public string FitCode { get; set; }
        public string ColorShade { get; set; }
        public System.Nullable<decimal> Price { get; set; }
        public string SupplierReference { get; set; }
        public string CustStyleNo { get; set; }
        public string CustOrderNo { get; set; }
        public System.Nullable<bool> VersionFlag { get; set; }
        public string GarmentColor { get; set; }
        public System.Nullable<bool> MultiPrice { get; set; }
        #endregion

        #region Matrix

        public int Seq { get; set; }
        public string CustomerSize { get; set; }
        public string CustomerCup { get; set; }
        public System.Nullable<decimal> Qty { get; set; }
        //[Remark] [nvarchar](3000) NULL,
        #endregion

        #region Calc
        public string SupplierColorShade
        {
            get
            {
                return string.IsNullOrEmpty(this.ColorShade) ? null : this.ColorShade;
            }
        }
        public string EndCustOrderNo
        {
            get
            {
                return string.IsNullOrEmpty(this.CustOrderNo) ? null : this.CustOrderNo;
            }
        }
        public string EndCustStyleNo
        {
            get
            {
                return string.IsNullOrEmpty(this.CustStyleNo) ? null : this.CustStyleNo;
            }
        }
        public string OurColorName { get { return string.Format("{0} {1}", this.ColorCode, this.ColorDesc); } }

        public string ProjectNO { get; set; }
        public decimal? SupplierPOQty { get; set; }

        public string ColorDesc { get; set; }
        public string SizeDesc { get; set; }
        public string FitDesc { get; set; }
        public string CustomerSizeSystem { get; set; }
        public string SupplierSize { get; set; }


        public decimal? Tolerance { get; set; }
        public decimal? SuppAmount { get; set; }
        public string SupplierUOM { get; set; }
        public string Currency { get; set; }

        public int? Week { get; set; }

        public string WeekStr { get { return string.Format("Week {0}", this.Week); } }
        public string DeliveryWeek { get { return this.Week.HasValue ? string.Format("{0:yyyy'/'MM'/'dd} ({1})", this.DeliveryDate, this.Week) : null; } }

        public DateTime? DeliveryDate { get; set; }

        public string Supplier { get; set; }
        public string SupplierName { get; set; }

        public string FabricWidth { get; set; }

        public int SizeOrder
        {
            get
            {
                Context.CommandTimeout = 1000;
                string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Size' and [Value]='{0}' ", this.SizeCode);
                int? orders = Context.ExecuteQuery<int>(sql).FirstOrDefault();
                return (orders ?? 0);

            }
        }

        public int CupOrder
        {
            get
            {
                Context.CommandTimeout = 1000;
                string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Cup' and [Value]='{0}' ", this.FitCode);
                int? orders = Context.ExecuteQuery<int>(sql).FirstOrDefault();
                return (orders ?? 0);

            }
        }
        public string PriceDependent { get { return this.MultiPrice.HasValue ? ((this.MultiPrice ?? false) ? "*" : "") : ""; } }

        public string StyleColorDiff
        {
            get
            {
                if (string.IsNullOrEmpty(this.GarmentColor) || string.IsNullOrEmpty(this.ColorCode))
                    return "";
                else
                    //return (this.GarmentColor.Substring(0, 1) == this.ColorCode.Substring(0, 1)) ? "" : "!";
                    return (this.GarmentColor == this.ColorCode) ? "" : "!";
            }
        }
        public string StyleColorAndDiff
        {
            get
            {
                return
                    string.Format((string.IsNullOrEmpty(StyleColorDiff) ? "{0}{1}" : "{0} ( {1} )"), GarmentColor, StyleColorDiff);
            }
        }
        //public bool HaveWireBoneMatrix
        //{
        //    get
        //    {
        //        if (this.SKU.StartsWith("WIR") || this.SKU.StartsWith("BON") || this.SKU.StartsWith("BOE") || this.SKU.StartsWith("WIF"))
        //        {
        //            if (!string.IsNullOrEmpty(this.ColorCode) && !string.IsNullOrEmpty(this.SizeCode) && string.IsNullOrEmpty(this.FitCode))
        //                return true;
        //            else
        //                return false;
        //        }
        //        else
        //            return false;
        //    }
        //}
        #endregion
    }
    public class POItemColor
    {
        public string Company { get; set; }
        public string Supplier { get; set; }
        public string SuppRef { get; set; }
        public string PONO { get; set; }//key
        public string ItemCode { get; set; }//key
        public string ColorCode { get; set; }//key
        public string ColorName { get; set; }
        public bool Match { get; set; }
        //private string _gmtColorCode;
        public string GmtColorCode { get; set; }
        //{
        //    get { return _gmtColorCode; }
        //    set
        //    {
        //        _gmtColorCode = value;
        //        PH.MIDc.BO.Color c= GetMIDcColorObject(_gmtColorCode);
        //        GmtColorName = c == null ? "" : c.Description;
        //    }
        //}
        public string GmtColorName { get; set; }

        //由David增加 2022-06-09
        public PODetail CurPODetail { get; set; }
        public string Cust { get; set; }

        private PH.MIDc.BO.Color GetMIDcColorObject(string colorCode)
        {
            PH.MIDc.BO.MIDcDataContext midcContext = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
            var aa = (from a in midcContext.Colors
                      where a.Color1 == colorCode
                      select a).FirstOrDefault();

            return aa;
        }
    }
    //ItemCode, SKU对于 POType= POType.MIDcPO 没有意义,永远为9个空格
    partial class POColorSizeDetail : PH.Platform.BO.BaseEntity
    {
        public string ActionLogSeqNoShow
        {
            //get { return ActionLogSeqNo.HasValue ? ActionLogSeqNo.Value.ToString().Substring(4, 4) : null; }
            //get { return ActionLogSeqNo.IndexOf('-') > 0 ? ActionLogSeqNo : ActionLogSeqNo.Substring(4, 4); }
            get { return ActionLogSeqNo; }
        }

        public string ActionLogTaking
        {
            //get { return this.ActionLogSeqNo.HasValue ? "Y" : null; }
            get { return string.IsNullOrEmpty(ActionLogSeqNo) ? null : "Y"; }
        }

        public DateTime? ActionLogCompletionStage_Target { get { return CurrActionLogHeader == null ? null : CurrActionLogHeader.PlanEndDate; } }
        public DateTime? ActionLogCompletionStage_Revised { get { return CurrActionLogHeader == null ? null : CurrActionLogHeader.RevisedDate; } }
        public DateTime? ActionLogCompletionStage_Cmpl { get { return CurrActionLogHeader == null ? null : CurrActionLogHeader.CompletedDate; } }

        //ActionLogHeader _CurrActionLogHeader = null;
        private ActionLogHeader CurrActionLogHeader
        {
            get
            {
                POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
                return db.ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);

                //if (CurrentDataContext == null)
                //{
                //    CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();
                //}

                //if (_CurrActionLogHeader == null)
                //{
                //    _CurrActionLogHeader = (CurrentDataContext as POPCDataContext).ActionLogHeaders.FirstOrDefault(p => p.OID == this.ActionLogOID);
                //}
                //return _CurrActionLogHeader;
            }
        }


        public string OddEvenRowFlag { get; set; }

        //由David加入 2022-06-16
        public int? DropDeadDateDiffDay
        {
            get
            {
                if (POStatus == "Completed" || (!string.IsNullOrEmpty(BulkStatus) && (BulkStatus.ToUpper() == "APP." || BulkStatus.ToUpper() == "NIL")))
                {
                    return null;
                }

                return BulkDropDeadDate.HasValue ? (BulkDropDeadDate.Value - DateTime.Today.Date).Days : (int?)null;
            }
        }

        //由David加入 2022-03-21
        public string DeliveryRouting
        {
            get
            {
                return this.PODetail.POHeader.DeliveryRouting;
            }
            set { }
        }

        //由David加入 2022-03-14
        public string BuyerCode
        {
            get
            {
                return this.PODetail.POHeader.BuyerCode;
            }
            set
            {
                this.PODetail.POHeader.BuyerCode = value;
            }
        }

        partial void OnCreated()
        {
            this.SKU = string.Format("{0}{1:HHmmss}", " ".PadLeft(9), DateTime.Now);
            //if (this.PODetail.POHeader.POType == (int)PH.POPC.BO.POType.MIDcPO)
            //{
            //    this.Price = 0;
            //    this.Qty = 0;
            //}
        }
        //spec. item width
        public string ItemSize
        {
            get
            {
                string size = null;

                if (this.PODetail == null || this.PODetail.POHeader == null || this.PODetail.POHeader.SupplierProfile == null)
                    return null;
                //if (this.PODetail.POHeader.SupplierProfile != null)
                //{
                if (string.IsNullOrEmpty(this.SizeCode)) return size;
                //string spec = this.PODetail.POHeader.SupplierProfile.WidthSpec;
                string spec = this.PODetail.ItemWidthSpec;

                if (spec == SupplierWidthSpec.TrimBandWidth || spec == SupplierWidthSpec.SizeRange || spec == SupplierWidthSpec.SizeCupRange)
                {
                    try
                    {
                        int i = Convert.ToInt32(this.SizeCode);
                        size = string.Format("{0}MM", i);
                    }
                    catch
                    {
                        return size;
                    }
                }
                //}
                return size;
            }
            set { }
        }

        public string SupplierColorShade
        {
            get
            {
                return string.IsNullOrEmpty(this.ColorShade) ? null : this.ColorShade;
            }
            set { }

        }
        public string EndCustOrderNo
        {
            get
            {
                return string.IsNullOrEmpty(this.CustOrderNo) ? null : this.CustOrderNo;
            }
            set { }

        }
        public string EndCustStyleNo
        {
            get
            {
                return string.IsNullOrEmpty(this.CustStyleNo) ? null : this.CustStyleNo;
            }
            set { }

        }
        public string OurColorName { get { return string.Format("{0} {1}", this.ColorCode, this.ColorDesc); } set { ;} }

        partial void OnItemCodeChanged()
        {
            this.SetSKU();
        }

        partial void OnColorCodeChanged()
        {
            this.SetSKU();
        }

        partial void OnSizeCodeChanged()
        {
            this.SetSKU();
        }

        partial void OnFitCodeChanged()
        {
            this.SetSKU();
        }

        private void SetSKU()
        {
            if (this.PODetail == null || this.PODetail.POHeader.POType == (int)POType.MIDcPO) return;

            this.SKU = (string.IsNullOrEmpty(this.ItemCode) ? string.Empty : this.ItemCode.Trim()) +
                       (string.IsNullOrEmpty(this.ColorCode) ? string.Empty : this.ColorCode.Trim()) +
                       (string.IsNullOrEmpty(this.SizeCode) ? string.Empty : this.SizeCode.Trim()) +
                       (string.IsNullOrEmpty(this.FitCode) ? string.Empty : this.FitCode.Trim());
        }

        private string _POVersion;
        public string POVersion
        {
            get
            {
                _POVersion = string.Format("{0}.{1}", this._Version, this.AmendmentNo);
                return _POVersion;
            }
        }
        //private int? _Line;
        public int? Line
        {
            get
            {
                if (this.PODetail == null)
                    return null;
                else
                    return this.PODetail.OrderLine;
            }
            set { }

        }

        private string _ProjectNO;
        public string ProjectNO
        {
            get
            {
                if (string.IsNullOrEmpty(this._ProjectNO))
                {
                    this._ProjectNO = this.PODetail == null ? null : this.PODetail.ProjectNo;
                }
                return this._ProjectNO;
            }
            set
            {
                this._ProjectNO = value;
            }
        }

        public byte[] SKUPhoto { get; set; }

        internal protected decimal ConversionFactor()
        {
            if (this.PODetail == null)
            {
                return 1;
            }
            else
            {
                if (this.PODetail.ConversionFactor == null || this.PODetail.ConversionFactor.Value == 0)
                {
                    return 1;
                }
                else
                {
                    return Convert.ToDecimal(this.PODetail.ConversionFactor.Value);
                }
            }
        }

        public DateTime? ETADate
        {
            get
            {
                return this.PODetail == null ? null : this.PODetail.ETADate;
            }
            set { }

        }
        public decimal PHBALAMount
        {
            get { return (this.PHOutstandingQty ?? 0) * Convert.ToDecimal(this.Price ?? 0) * this.ExRate / this.ConversionFactor(); }
            set { }
        }


        public decimal POBalancePercent
        {
            get { return (Qty ?? 0) == 0 ? 0 : (this.PHOutstandingQty ?? 0) / (Qty ?? 0); }
            set { }
        }

        private decimal? _supplierPOQty;
        public decimal? SupplierPOQty
        {
            get
            {
                //return this.Qty.HasValue ? decimal.Round((this.Qty ?? 0) / this.ConversionFactor(), 1, MidpointRounding.AwayFromZero) : (decimal?)null;
                //Xsj20160509:由於數據庫的精度是3位小數，所以這裡該為和數據庫一致，以避免由於精度的誤差造成POColorSizeDetail的供應商數量和POWireBoneMatrix中的供應商數量不相同。
                //return this.Qty.HasValue ? decimal.Round((this.Qty ?? 0) / this.ConversionFactor(), 3, MidpointRounding.AwayFromZero) : (decimal?)null;

                return this.Qty.HasValue ? decimal.Round((this.Qty ?? 0) / this.ConversionFactor(), 3, MidpointRounding.AwayFromZero) : (decimal?)null;
            }
            set
            {
                _supplierPOQty = value;
                //this.Qty = decimal.Round((_supplierPOQty ?? 0) * this.ConversionFactor(), 2, MidpointRounding.AwayFromZero);
                //Xsj20160509:由於數據庫的精度是3位小數，所以這裡該為和數據庫一致，以避免由於精度的誤差造成POColorSizeDetail的供應商數量和POWireBoneMatrix中的供應商數量不相同。
                this.Qty = decimal.Round((_supplierPOQty ?? 0) * this.ConversionFactor(), 3, MidpointRounding.AwayFromZero);
            }
            //get
            //{
            //    return this.Qty;
            //}
            //set
            //{
            //    _supplierPOQty = value;
            //    this.Qty = _supplierPOQty;
            //}

        }

        public decimal SupplierOutstandingQty
        {

            get { return (this.PHOutstandingQty ?? 0) / this.ConversionFactor(); }
            set { }
        }

        public decimal ActualOvershipQty
        {
            get
            {
                if ((this.TotalReceivedQty ?? 0) != 0)
                {
                    return (this.TotalReceivedQty ?? 0) - this.Qty ?? 0;
                }
                else
                {
                    return 0;
                }
            }
            set { }

        }

        public decimal OvershipPercent
        {

            get
            {
                if ((this.TotalReceivedQty ?? 0) != 0 && this.Qty.Value != 0)
                {
                    return ((this.TotalReceivedQty ?? 0) - (this.Qty ?? 0)) / (this.Qty ?? 1);
                }
                else
                {
                    return 0;
                }
            }
            set { }
        }

        public bool IsOutStanding
        {
            get
            {
                if (this.PHOutstandingQty > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            set { }
        }

        public string DifferenceDate
        {
            get
            {
                string msg = string.Empty;
                if (this.DeliveryDate == null || this.HDOETA == null)
                {
                    msg = string.Empty;
                }
                else
                {
                    TimeSpan ts0 = (DateTime)this.DeliveryDate - (DateTime)this.HDOETA;
                    int days = ts0.Days;
                    string str = days > 0 ? "Move up" : "Delay";
                    string week = "Week";
                    days = Math.Abs(days);
                    if (days == 0) msg = "On Time";// "笷夹戳";
                    else if (days >= 1 && days <= 7) msg = string.Format("{0} 1 {1}", str, week);//  str + "1琍戳";
                    else if (days >= 8 && days <= 14) msg = string.Format("{0} 2 {1}", str, week);//  str + "2琍戳";
                    else if (days >= 15 && days <= 21) msg = string.Format("{0} 3 {1}", str, week);//  str + "3琍戳";
                    else if (days >= 22 && days <= 28) msg = string.Format("{0} 4 {1}", str, week);//  str + "4琍戳";
                    else if (days >= 29) msg = string.Format("{0} {1}", str, "Over 1 month");//  str + "1る";
                }
                return msg;
            }
            set { }
        }

        private string _colorDesc;
        public string ColorDesc { get { OnColorDesc(); return _colorDesc; } set { _colorDesc = value; } }
        private string OnColorDesc()
        {
            //此算法由David修改 2020-01-14, 取Color Name時，先从POColorSizeDetail中取，然后再从MIDc中的Color表中取
            if (string.IsNullOrEmpty(ItemCode)) return "";

            if (!string.IsNullOrEmpty(this.ItemColorName)) //由David增加 2022-04-27
            {
                this._colorDesc = this.ItemColorName;
            }
            else
            {
                if (!string.IsNullOrEmpty(this.GmtColorName))
                {
                    this._colorDesc = this.GmtColorName;
                }
                else
                {
                    MIDcList list = new MIDcList();
                    PH.MIDc.BO.Color color = list.GetColorObject(this.ColorCode);
                    this._colorDesc = color == null ? this.ColorCode : color.Description;
                    if (this._colorDesc == PH.POPC.BO.Common.VirtualColorCode) this._colorDesc = null;
                }
            }
            return this._colorDesc;

            //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //context.CommandTimeout = 1000;
            //string sql = string.Format("select Description from [PH.MIDc].dbo.Color where Color='{0}' ", this.ColorCode);
            //this._colorDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();
            //if (string.IsNullOrEmpty(this._colorDesc)) this._colorDesc = this.ColorCode;


            //if (string.IsNullOrEmpty(ItemCode)) return "";

            ////if (this.ItemCode.StartsWith("WIR") || this.ItemCode.StartsWith("BON"))
            ////{
            ////    this._colorDesc = OnSizeDesc(this.ColorCode);
            ////}
            ////else
            ////{
            //MIDcList list = new MIDcList();
            //PH.MIDc.BO.Color color = list.GetColorObject(this.ColorCode);
            //this._colorDesc = color == null ? this.ColorCode : color.Description;
            //if (this._colorDesc == PH.POPC.BO.Common.VirtualColorCode) this._colorDesc = null;
            ////}
            //return this._colorDesc;

            ////POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            ////context.CommandTimeout = 1000;
            ////string sql = string.Format("select Description from [PH.MIDc].dbo.Color where Color='{0}' ", this.ColorCode);
            ////this._colorDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();
            ////if (string.IsNullOrEmpty(this._colorDesc)) this._colorDesc = this.ColorCode;
        }

        private string _SizeDesc;
        public string SizeDesc { get { OnSizeDesc(this.SizeCode); return _SizeDesc; } set { _SizeDesc = value; } }
        private string OnSizeDesc(string sizeCode)
        {
            DicList dic = new DicList();
            PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", sizeCode);
            this._SizeDesc = dictionary == null ? sizeCode : dictionary.Description;
            return this._SizeDesc;
            //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //string sql = string.Format("select Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.MIDc.Size' and DataCode='{0}' ", this.SizeCode);
            //this._SizeDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();
            //if (string.IsNullOrEmpty(this._SizeDesc)) this._SizeDesc = this.SizeCode;
        }

        //List<DictionaryData> _FitData;
        public string FitDesc
        {
            get
            {
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.FitCode);
                return dictionary == null ? this.FitCode : dictionary.Description;


                //if (_FitData == null)
                //{
                //    POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                //    string sql = string.Format("select [DataType], [DataCode],[DataName], [Description]  from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.PO.Cup'");
                //    this._FitData = context.ExecuteQuery<DictionaryData>(sql).ToList();
                //}
                //DictionaryData data = this._FitData.Find(P => P.DataCode == this._FitCode);
                //if (data == null)
                //{
                //    return this._FitCode;
                //}
                //else
                //{
                //    return data.Description;
                //}
            }
            set { }
        }


        /// <summary>
        /// old
        /// </summary>
        public string CustSize
        {
            get
            {
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.SizeCode);
                return dictionary == null ? "" : dictionary.Description;
            }
            set { }
        }

        #region New Supp,Cust Size desc

        public string CustomerSizeSystem
        {
            get
            {
                POPCDataContext context;
                if (this.CurrentDataContext == null)
                    context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                else
                    context = this.CurrentDataContext as POPCDataContext;

                string s = context.fn_GetCustomerSizeSystem(this.Company, this.ProjectNO);
                if (string.IsNullOrEmpty(s)) s = "B";
                return s;
            }
            set { }
        }
        /// <summary>
        /// new
        /// </summary>
        public string CustomerSize
        {
            get
            {
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.SizeCode);
                return dictionary == null ? "" : dictionary.Description;

                //string s = string.Empty;
                //bool bok = (this.PODetail != null && this.PODetail.POHeader != null);
                //if (bok)
                //{
                //    foreach (var item in this.POWireBoneMatrixes)
                //    {
                //        s = item.Size;
                //    }
                //}
                //if (!bok || (bok && s == string.Empty))
                //{
                //    DicList dic = new DicList();
                //    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.POPC.CustomerSizeCup", string.Format("{0}-{1}", this.CustomerSizeSystem, this.SizeCode));
                //    s = dictionary == null ? "" : dictionary.Description;
                //}
                //return s;
            }
            set { }
        }
        public string CustomerCup
        {
            get
            {
                string s = string.Empty;
                bool bok = (this.PODetail != null && this.PODetail.POHeader != null && (this.PODetail.POHeader.MoreBuyerSizeCup ?? false));
                if (bok)
                {
                    foreach (var item in this.POWireBoneMatrixes)
                    {
                        s = item.Cup;
                    }
                }
                if (!bok || (bok && s == string.Empty))
                {
                    s = this.FitDesc;
                }
                return s;
            }
            set { }
        }

        public string SupplierSize
        {
            get
            {
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.POPC.SupplierSize", this.SizeCode);
                return dictionary == null ? "" : dictionary.Description;
            }
            set { }
        }
        #endregion

        public string CommodityDesc
        {
            get
            {
                return this.PODetail == null ? "" : this.PODetail.CommodityDesc;
            }
            set { }

        }

        #region Converted Item
        public string ConvertedItemOperation
        {
            get
            {
                return this.PODetail == null ? "" : this.PODetail.ConvertedItemOperation;
            }
            set { }
        }
        public string ConvertedItemMaterial
        {
            get
            {
                return this.PODetail == null ? "" : this.PODetail.ConvertedItemMaterial;
            }
            set { }
        }
        public string ConvertedSuppRef
        {
            get
            {
                return this.PODetail == null ? "" : this.PODetail.ConvertedSuppRef;
            }
            set { }
        }
        public string ConvertedItemWidth
        {
            get
            {
                return this.PODetail == null ? "" : this.PODetail.ConvertedItemWidth;
            }
            set { }
        }
        public string ConvertedItemDesc
        {
            get
            {
                return this.PODetail == null ? "" : this.PODetail.ConvertedItemDesc;
            }
            set { }
        }
        public string ConvertedItemUnit
        {
            get
            {
                return this.PODetail == null ? "" : this.PODetail.ConvertedItemUnit;
            }
            set { }
        }

        #endregion

        public decimal? Tolerance
        {
            get
            {
                return this.PODetail == null ? null : this.PODetail.Tolerance;
            }
            set { }
        }

        private decimal? _SuppAmount;
        /// <summary>
        /// Supplier Amount
        /// </summary>
        /// 
        //------Xsj20160415:為打印VAT單價而註釋掉前面的代碼，添加後面的代碼。-------  
        //public decimal? SuppAmount
        //{
        //    get
        //    {
        //        _SuppAmount = this.Price.HasValue ? (this.Price ?? 0) * this.SupplierPOQty : null;// (this.Qty ?? 0F);
        //        return _SuppAmount;
        //    }
        //    set { _SuppAmount = value; }
        //}

        //xsj20160601:VAT單價=原單價*（1 + VAT稅率）
        public decimal? _vatPrice;
        public decimal? VATPrice
        {
            get
            {
                if (this.PODetail != null)
                {
                    _vatPrice = this.Price.HasValue ? this.Price * (1 + (this.PODetail.VAT ?? 0) / 100) : null;
                }
                else
                {
                    _vatPrice = this.Price.HasValue ? this.Price : null;
                }

                //Xsj20160713:對含稅單價進行四捨五入 
                if ((_vatPrice ?? 0) == 0)
                {
                    return null;
                }
                return Math.Round((_vatPrice ?? 0), 4, MidpointRounding.AwayFromZero);
            }
            set { }
        }

        public decimal? SuppAmount
        {
            get
            {
                _SuppAmount = this.VATPrice.HasValue ? (this.VATPrice ?? 0) * this.SupplierPOQty : null;
                return _SuppAmount;
            }
            set { _SuppAmount = value; }
        }
        //-----------------------------------------------------------------------------

        private decimal _phAmount;
        /// <summary>
        /// PH Amount(HKD)
        /// </summary>
        public decimal PHAmount
        {
            get
            {
                _phAmount = (SuppAmount ?? 0) * this.ExRate;
                //_phAmount = (this.Price ?? 0) * (this.Qty ?? 0) * this.ExRate;
                return _phAmount;
            }
            set { }
        }
        public decimal ExRate
        {
            get
            {
                if (this.PODetail == null)
                {
                    return 0;
                }
                else
                {
                    return Convert.ToDecimal(this.PODetail.POHeader.Rate ?? 0);
                }
            }
            set { }
        }
        public string SupplierUOM
        {
            get
            {
                if (this.PODetail == null)
                {
                    return null;
                }
                else
                {
                    return this.PODetail.SupplierUom;
                }
            }
            set { }
        }
        public string PHUom
        {
            get
            {
                if (this.PODetail == null)
                {
                    return null;
                }
                else
                {
                    return this.PODetail.PHUom;
                }
            }
            set { }
        }
        public string Currency
        {
            get
            {
                if (this.PODetail == null)
                {
                    return "";
                }
                else
                {
                    if (this.PODetail.POHeader == null)
                    {
                        return "";
                    }
                }
                return this.PODetail.POHeader.Currency;
            }
            set { }
        }
        public int? Week
        {
            get
            {
                int? msg = null;
                if (this.PODetail == null) return null;
                if (this.DeliveryDate != null)
                {
                    CultureInfo myCI = new CultureInfo("en-US");
                    Calendar myCal = myCI.Calendar;
                    int iWeek = myCal.GetWeekOfYear(this.DeliveryDate.Value, CalendarWeekRule.FirstFullWeek, System.DayOfWeek.Sunday);
                    msg = iWeek;
                }
                return msg;
            }
            set { }
        }
        public static int? GetWeek(DateTime dt)
        {

            int? msg = null;
            if (dt == DateTime.MinValue) return null;


            CultureInfo myCI = new CultureInfo("en-US");
            Calendar myCal = myCI.Calendar;
            int iWeek = myCal.GetWeekOfYear(dt, CalendarWeekRule.FirstFullWeek, System.DayOfWeek.Sunday);
            msg = iWeek;

            return msg;

        }
        public string WeekStr { get { return string.Format("Week {0}", this.Week.ToString().PadLeft(2, '0')); } set { } }
        //public string DeliveryWeek { get { return string.Format("{0:yyyy'/'MM'/'dd}\r\nWeek {1}", this.DeliveryDate, this.Week); } }
        public string DeliveryWeek { get { return this.Week.HasValue ? string.Format("{0:yyyy'/'MM'/'dd} ({1})", this.DeliveryDate, this.Week) : null; } set { } }

        public DateTime? DeliveryDate
        {
            get
            {
                if (this.PODetail == null)
                {
                    return null;
                }
                else
                {
                    if (this.PODetail.POHeader != null && this.PODetail.POHeader.POType == (int)PH.POPC.BO.POType.MIDcPO)
                        return this.PODetail.POHeader.ShipmentDate;
                    return this.PODetail.ConfirmETADate;
                }
            }
            set { }
        }
        public int? DeliveryDaysDiff
        {
            get
            {
                if (this.PODetail == null)
                {
                    return null;
                }
                else
                {
                    return this.PODetail.DeliveryDaysDiff;
                }
            }
            set { }
        }

        public string Supplier
        {
            get
            {
                if (this.PODetail != null)
                    return this.PODetail.Supplier;
                else
                    return null;
            }
            set { }
        }

        public string SupplierName
        {
            get
            {
                if (this.PODetail != null)
                    return this.PODetail.SupplierName;
                else
                    return null;
            }
            set { }
        }

        public string FabricWidth
        {
            get
            {
                if (string.IsNullOrEmpty(this.SupplierReference)) return "";
                if (this.PODetail == null || this.PODetail.POHeader == null || this.PODetail.POHeader.SupplierProfile == null)
                    return "";

                //string spec = this.PODetail.ItemWidthSpec;
                //if (spec == SupplierWidthSpec.ItemWidth)
                //{
                if (MIDcDetail == null) return "";
                if (this.PODetail.POHeader.POType == (int)POType.MIDcPO)
                    return string.Format("{0:0.####}MM", MIDcDetail.SupplierWidth);
                else return MIDcDetail.SupplierWidthS1;
                //}
                //}
                //return "";
            }
            set { }
        }
        public string SpecificSize
        {
            get
            {
                if (string.IsNullOrEmpty(this.SupplierReference)) return "--";

                if (MIDcDetail == null) return "--";
                string s = MIDcDetail.SizeSpec;
                try
                {
                    decimal d = Convert.ToDecimal(s);
                    if (d != 0)
                    {
                        if (MIDcDetail.SingleRangeSize.ToUpper() == "ST") //2DSt时，不显示MM 由David修改 2022-04-11 
                        {
                            s = string.Format("{0:0.###}", d);
                        }
                        else
                        {
                            s = string.Format("{0:0.###}MM", d);
                        }
                    }
                    else
                        s = "";
                }
                catch
                {
                }
                return string.IsNullOrEmpty(s) ? "--" : s;
            }
            set { }
        }
        public string SizeRangeEN
        {
            get
            {
                if (this.PODetail != null && this.PODetail.POHeader != null && this.PODetail.POHeader.SupplierDimension == PODimension.Four)
                    return "Data, see it at page 2";

                if (string.IsNullOrEmpty(this.SupplierReference)) return "--";

                if (MIDcDetail == null) return "--";
                string s = MIDcDetail.SizeRange;
                return string.IsNullOrEmpty(s) ? "--" : s;
            }
            set { }
        }
        public string SizeRangeCN
        {
            get
            {
                if (this.PODetail != null && this.PODetail.POHeader != null && this.PODetail.POHeader.SupplierDimension == PODimension.Four)
                    return "數據, 顯示在第二頁";

                if (string.IsNullOrEmpty(this.SupplierReference)) return "--";

                if (MIDcDetail == null) return "--";
                string s = MIDcDetail.SizeRange;
                return string.IsNullOrEmpty(s) ? "--" : s;
            }
            set { }
        }

        public int SizeOrder
        {
            get
            {
                POPCDataContext context = this.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                if (context == null)
                    context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Size' and [Value]='{0}' ", this.SizeCode);
                int? orders = context.ExecuteQuery<int>(sql).FirstOrDefault();
                return (orders ?? 0);

            }
            set { }
        }

        public int CupOrder
        {
            get
            {
                POPCDataContext context = this.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                if (context == null)
                    context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Cup' and [Value]='{0}' ", this.FitCode);
                int? orders = context.ExecuteQuery<int>(sql).FirstOrDefault();
                return (orders ?? 0);

            }
            set { }
        }


        //C:     c.PHOutstandingQty * c.Price* a.Rate/ISNULL(NULLIF(b.ConversionFactor,0),1) AS PHBALAMount (HKD)
        //C:     c.qty/ISNULL(NULLIF(b.ConversionFactor,0),1) as SupplierPOQty
        //C:     c.PHOutstandingQty/ISNULL(NULLIF(b.ConversionFactor,0),1) as SupplierOutstandingQty
        //C:     case when ISNULL(a.TotalReceivedQty,0)=0 then null else (ISNULL(a.TotalReceivedQty,0) - ISNULL(c.qty,0)) end AS ActualOvershipQty
        //C:     case when ISNULL(a.TotalReceivedQty,0)=0 or ISNULL(c.Qty,0)=0 then null else ((ISNULL(a.TotalReceivedQty,0) - ISNULL(c.qty,0)) / c.qty) end AS OvershipPercent, --->Overship Percent%
        //C:     c.PHOutstandingQty>0 as IsOutStanding

        // public string PriceDependent { get { return this.MultiPrice.HasValue ? ((this.MultiPrice ?? false) ? "Y" : "N") : ""; } }
        public string PriceDependent { get { return this.MultiPrice.HasValue ? ((this.MultiPrice ?? false) ? "*" : "") : ""; } set { } }

        public bool? GmtColorMatch
        {
            get
            {
                if (string.IsNullOrEmpty(this.GarmentColor) || string.IsNullOrEmpty(this.ColorCode))
                    return null;
                else
                    return (this.GarmentColor == this.ColorCode);
            }
            set { }
        }
        public string StyleColorDiff
        {
            get
            {
                return this.OrderLine > 100 ? ""
                    : (!GmtColorMatch.HasValue ? "" : ((GmtColorMatch ?? false) ? "" : "!"));
            }
            set { }
        }
        public string StyleColorAndDiff
        {
            get
            {
                return
                    string.Format((string.IsNullOrEmpty(StyleColorDiff) ? "{0}{1}" : "{0} ( {1} )"), GarmentColor, StyleColorDiff);
            }
            set { }
        }

        public bool HaveWireBoneMatrix
        {
            get
            {
                if (this.SKU.StartsWith("WIR") || this.SKU.StartsWith("BON") || this.SKU.StartsWith("BOE") || this.SKU.StartsWith("WIF"))
                {
                    if (!string.IsNullOrEmpty(this.ColorCode) && !string.IsNullOrEmpty(this.SizeCode) && string.IsNullOrEmpty(this.FitCode))
                        return true;
                    else
                        return false;
                }
                else
                    return false;
            }
            set { }
        }

        public bool MatrixIsOK
        {
            get
            {
                decimal qty = Math.Round((this.SupplierPOQty ?? 0), 1, MidpointRounding.AwayFromZero);

                decimal q1 = 0;
                foreach (var m in this.POWireBoneMatrixes)
                {
                    q1 += Math.Round((m.Qty ?? 0), 1, MidpointRounding.AwayFromZero);
                }
                if (q1 == 0)
                    return false;
                else if (qty != q1)
                    return false;
                return true;
            }
            set { }
        }

        public decimal MatrixTotalQty
        {
            get
            {
                decimal q1 = 0;
                foreach (var m in this.POWireBoneMatrixes)
                {
                    q1 += (m.Qty ?? 0);
                }
                return q1;
            }
            set { }
        }


        private PH.MIDc.BO.Detail _MIDcDetail;
        public PH.MIDc.BO.Detail MIDcDetail
        {
            get
            {
                if (_MIDcDetail == null)
                {
                    PH.POPC.BO.MIDcList midcList = new PH.POPC.BO.MIDcList();
                    _MIDcDetail = midcList.GetMIDc(this.SupplierReference, this.ItemCode);
                }
                return _MIDcDetail;
            }
            set { }
        }
        public string MaterialGroup
        {
            get
            {
                return this.MIDcDetail == null ? "" : this.MIDcDetail.MaterialGroup;
            }
            set { }
        }
        public string MIDcItemCode
        {
            get
            {
                return this.MIDcDetail == null ? "" : this.MIDcDetail.MaterialCode;
            }
            set { }
        }
        public string MIDcSpecSize
        {
            get
            {
                if (this.MIDcDetail == null) return "--";
                else
                    switch (this.MIDcDetail.SingleRangeSize)
                    {
                        case "Mw":
                            return "Marker Width";
                        case "Ss":
                            return "Acc. Width";
                        case "Sw":
                            return "Specific Width";
                        case "Sl":
                            return "Specific Length";
                        case "St":
                            return "Specific Thickness";
                        case "Rs":
                            return "Size Range";
                        case "Rc":
                            return "Size Matrix";
                        default:
                            return "--";
                    }
            }
            set { }
        }
        public string MIDcSpecSizeCN
        {
            get
            {
                if (this.MIDcDetail == null) return "--";
                else
                    switch (this.MIDcDetail.SingleRangeSize)
                    {
                        case "Mw":
                            return "嘜架封度";
                        case "Ss":
                            return "附件闊";  //封度
                        case "Sw":
                            return "指定闊度";
                        case "Sl":
                            return "指定長度";
                        case "St":
                            return "指定粗細";  //"指定厚度";
                        case "Rs":
                            return "尺碼範圍";
                        case "Rc":
                            return "尺碼矩陣";
                        default:
                            return "--";
                    }
            }
            set { }
        }
        public bool IsSpecialSize
        {
            get
            {
                if (this.MIDcDetail == null) return false;
                else
                    switch (this.MIDcDetail.SingleRangeSize)
                    {
                        //case "Mw":
                        case "Ss":
                        case "Sw":
                        case "Sl":
                        case "St":
                            return true;
                        //case "Rs":
                        //case "Rc":
                        //    return false;
                        default:
                            return false;
                    }
            }
            set { }
        }
        //--3Ds-Mw Marker Width
        //--3Ds-Ss Specific Size
        //--3Ds-Sw Specific Width
        //--3Ds-Sl Specific Length
        //--3Ds-St Specific Thickness
        //--3Dr-Rs Size Range
        //--3Dr-Rw Width Range
        //--3Dr-Rl Length Range
        //--4D-Rc Size Matrix

        #region Pending - Liability determination

        private bool? _IsPendingByCustT;
        public bool? IsPendingByCustT
        {
            get
            {
                if (!_IsPendingByCustT.HasValue)
                {
                    _IsPendingByCustT = IsPendingByCust;
                }
                return _IsPendingByCustT;
            }
            set { _IsPendingByCustT = value; }
        }
        private bool? _IsPendingByPHT;
        public bool? IsPendingByPHT
        {
            get
            {
                if (!_IsPendingByPHT.HasValue)
                {
                    _IsPendingByPHT = IsPendingByPH;
                }
                return _IsPendingByPHT;
            }
            set { _IsPendingByPHT = value; }
        }

        public bool IsPendingByCust { get { return (this.PendingByCust ?? 0) != 0; } set { } }
        public bool IsPendingByPH { get { return (this.PendingByPH ?? 0) != 0; } set { } }

        public decimal? PendingByCustAmount { get { return IsPendingByCust ? Convert.ToDecimal(this.PendingByCust ?? 0) * this.SuppAmount / 100 : (decimal?)null; } set { } }
        public decimal? PendingByPHAmount { get { return IsPendingByPH ? Convert.ToDecimal(this.PendingByPH ?? 0) * this.SuppAmount / 100 : (decimal?)null; } set { } }

        //report showing
        public string IsPendingByCustStr { get { return IsPendingByCust ? "Y" : "N"; } set { } }
        public string IsPendingByPHStr { get { return IsPendingByPH ? "Y" : "N"; } set { } }

        public string PendingByCustStr { get { return this.PendingByCust.HasValue ? string.Format("{0}", this.PendingByCust) : "--"; } set { } }
        public string PendingByPHStr { get { return this.PendingByPH.HasValue ? string.Format("{0}", this.PendingByPH) : "--"; } set { } }

        public string PendingByCustAmountStr { get { return this.PendingByCustAmount.HasValue ? string.Format("{0:N2}", this.PendingByCustAmount) : "--"; } set { } }
        public string PendingByPHAmountStr { get { return this.PendingByPHAmount.HasValue ? string.Format("{0:N2}", this.PendingByPHAmount) : "--"; } set { } }
        #endregion


        #region From PO

        public bool StockInConfirmed
        {
            get
            {
                var aa = from a in this.PORCs
                         //where a.HandleType == "Lot"
                         select a;
                return aa.Count() == 0 ? false : aa.All(p => (p.InvoiceFlag ?? false));

            }
            set { }
        }
        public string POStatus
        {
            get
            {
                return this.IsOutStanding ? "WIP" : "Cmpl";
                //return this.PODetail == null ? "" :
                //    (this.PODetail.POHeader.IsOutStanding == "Completed" || (this.StockInConfirmed) ? "Completed" : "WIP");
            }
            set { }
        }


        //1.Header
        public int NumOfProject { get { return this.PODetail == null ? 0 : this.PODetail.POHeader.NumOfProject; } set { } }
        public DateTime? POIssueDate { get { return this.PODetail == null ? (DateTime?)null : this.PODetail.POHeader.OrderDate; } set { } }
        public DateTime? POReqDeliveryDate { get { return this.PODetail == null ? (DateTime?)null : this.PODetail.POHeader.ShipmentDate; } set { } }
        public string Factory { get { return this.PODetail == null ? "" : this.PODetail.POHeader.Factory; } set { } }
        public string PaymentTerms { get { return this.PODetail == null ? "" : this.PODetail.POHeader.PaymentTerms; } set { } }
        public string SupplierLocation { get { return this.PODetail == null ? "" : this.PODetail.POHeader.LocationOfSuppFactoryDesc; } set { } }
        public string EndCustCode { get { return this.PODetail == null ? "" : this.PODetail.POHeader.EndCustCode; } set { } }
        public string PurchaseOfficer { get { return this.PODetail == null ? "" : this.PODetail.POHeader.PurchaseOfficer; } set { } }
        public string Team { get { return this.PODetail == null ? "" : this.PODetail.POHeader.Dept; } set { } }

        public int? TimeFrame1 { get { return this.PODetail == null ? (int?)null : this.PODetail.POHeader.TransitFrame; } set { } }
        //public int? TimeFrame2 { get { return this.PODetail == null ? (int?)null : this.PODetail.POHeader.TimeFrame2; } }

        //update by shulin 20210623
        public int? TimeFrame2
        {
            get
            {
                return this.PODetail.TimeFrame2;


                //if (this.PODetail.POHeader.TimeFrame2 == null)
                //{
                //    PH.BasicInfo.BO.BasicInfoDataContext db = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
                //    PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey Obj = db.ForPointDeliveryofDestinationPHKeys.Where(dr => dr.Name == this.EndPoint).FirstOrDefault();

                //    if (Obj == null) return null; //由David加入这一句，2021-11-16

                //    if (this.PODetail.POHeader.TransitMode2 == null && this.EndPoint != null)
                //    {
                //        var AEndPointFactoryFrame = Obj.EndPointFactoryFrames.Where(dr => dr.PHFactory == this.Factory).OrderBy(dr => dr.OID).FirstOrDefault();

                //        if (AEndPointFactoryFrame != null)
                //        {
                //            return AEndPointFactoryFrame.TimeFrame;
                //        }
                //        else { return null; }

                //    }
                //    else
                //    {
                //        return this.PODetail.POHeader.TimeFrame2;
                //    }

                //}
                //else { return this.PODetail.POHeader.TimeFrame2; }
            }
            set { }
        }

        public string Incoterms { get { return this.PODetail == null ? "" : this.PODetail.POHeader.Incoterms; } set { } }

        public string TransitPoint { get { return this.PODetail == null ? "" : this.PODetail.POHeader.TransitPoint; } set { } }
        public string TransitPointCode { get { return this.PODetail == null ? "" : this.PODetail.POHeader.TransitPointCode; } set { } }

        //public string TransitModePO { get { return this.PODetail == null ? "" : this.PODetail.POHeader.ShipMode; } }

        //update by shulin 20210623
        public string TransitModePO
        {
            get
            {

                return this.PODetail == null ? "" : this.PODetail.POHeader.ShipMode;
            }
            set
            {
                this.PODetail.POHeader.ShipMode = value;
                //SupplierInfo info = DataAccess.GetSupplierInfo(this.PODetail.POHeader.Supplier, this.PODetail.POHeader.Factory, this.PODetail.POHeader.LocationOfSuppFactory, this.PODetail.POHeader.OrderDate.Value, value);
                //if(info==null)this.PODetail.POHeader.TransitFrame =null;
                //this.PODetail.POHeader.TransitFrame = info.TransitFrame;
            }
        }


        //add by shulin 20210610 應ALice需求添加
        //Begin
        public string TransitMode2Show
        {
            get
            {
                return this.PODetail.POHeader.TransitMode2;
                //PH.BasicInfo.BO.BasicInfoDataContext db = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
                //PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey Obj =  db.ForPointDeliveryofDestinationPHKeys.Where(dr => dr.Name == this.EndPoint).FirstOrDefault();
                //if (this.PODetail.POHeader.TransitMode2 == null && this.EndPoint !=null)
                //{
                //    var AEndPointFactoryFrame = Obj.EndPointFactoryFrames.Where(dr => dr.PHFactory == this.Factory).ToList();

                //    if (AEndPointFactoryFrame.Count() == 1)
                //    {
                //        return AEndPointFactoryFrame.Select(dr => dr.TransitMode).FirstOrDefault().ToString();
                //    }
                //    else { return null; }

                //}
                //else 
                //{
                //  return   this.PODetail.POHeader.TransitMode2; 
                //}

            }
            set
            {
                this.PODetail.POHeader.TransitMode2 = value;
            }
        }

        public DateTime? ArrivalPointofdestinationShow
        {
            get
            {
                DateTime? GetDateTime = RevDeliveryDate ?? PODeliveryDate;

                if (GetDateTime == null) return null;

                DateTime DelDateTime = GetDateTime ?? DateTime.MaxValue;

                return DelDateTime.AddDays(TimeFrame1 ?? 0).AddDays(TimeFrame2 ?? 0);
                //return this.PODetail == null ? "" : this.PODetail.POHeader.TransitMode2;
            }
            set { }
            //set
            //{
            //    this.PODetail.POHeader.TransitMode2 = value;
            //}
        }


        partial void OnRevDeliveryDateChanged()
        {

            //DateTime?  RevDeliveryDate = this.RevDeliveryDate;
            //if (this.CurrentDataContext== null) this.CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();
            //List<POColorSizeDetail> Alist =
            //(this.CurrentDataContext as POPCDataContext).POColorSizeDetails.
            //    Where(dr => dr.Company == this.Company &&
            //                dr.PONO == this.PONO &&
            //                dr.Version == this.Version &&
            //                dr.AmendmentNo == this.AmendmentNo &&
            //                dr.OrderLine == this.OrderLine &&
            //                dr.ColorCode == this.ColorCode &&
            //                dr.SupplierReference == this.SupplierReference &&
            //               dr.VersionFlag == this.VersionFlag
            //                ).ToList();
            //foreach (POColorSizeDetail Obj in Alist) 
            //{
            //    Obj.RevDeliveryDate = RevDeliveryDate;
            //}

            //(this.CurrentDataContext as POPCDataContext).SubmitChanges();

        }



        //end







        public string EndPoint
        {
            get
            {
                //由David修改 2022-05-05
                return this.PODetail.POHeader.TimeFrameIIStartPoint;

                //string s = this.PODetail == null ? "" : this.PODetail.POHeader.EndPoint;
                //if (string.IsNullOrEmpty(s)) return s;

                //int i = s.IndexOf("/");
                //if (i - 1 > 0)
                //    s = s.Substring(0, i - 1);
                //s = s.Replace("\"", "");
                //return s;
            }
            set { }
        }
        public string OrderClassDesc { get { return this.PODetail == null ? "" : this.PODetail.POHeader.OrderClassDesc; } set { } }

        //2.detail
        //public string ProjectNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ProjectNO; } }
        //public string ItemCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ItemCode; } }
        public DateTime? PODeliveryDate { get { return this.PODetail == null ? (DateTime?)null : this.PODetail.ConfirmETADate; } set { } }


        //由David增加 2022-05-04
        public DateTime? WOFWStartDate
        {
            get;
            set;
            //get
            //{
            //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();

            //    return (this.CurrentDataContext as POPCDataContext).fn_GetOurWOFWStartDate(this.PODetail.ProjectNo);
            //}
            //set { }
        }


        //由David修改算法， 2020-03-02
        public DateTime? WOExftyDate
        {
            get;
            set;

            //get
            //{
            //    if (this.CurrentDataContext == null) this.CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();

            //    return (this.CurrentDataContext as POPCDataContext).fn_GetOurWOExFtyDate(this.PODetail.ProjectNo);

            //}
            //set { }
        }
        //public DateTime? WOExftyDate { get { return this.PODetail == null ? (DateTime?)null : this.PODetail.WOStartDate; } }


        public DateTime? ETAPointOfDestDate { get { return this.PODeliveryDate.HasValue ? this.PODeliveryDate.Value.AddDays(this.TimeFrame1 ?? 0) : (DateTime?)null; } }
        //public DateTime? HDODate { get { return this.PODetail == null ? (DateTime?)null : this.PODetail.HDODate; } }

        private double? _ConvertFactor;
        public double? ConvertFactor
        {
            get
            {
                if (!_ConvertFactor.HasValue)
                    _ConvertFactor = this.PODetail == null ? (double?)null : this.PODetail.ConversionFactor;
                return _ConvertFactor;
            }
            set { }
        }

        public string ClassCode
        {
            get { return this.PODetail == null ? "" : this.PODetail.ClassCode; }
            set { this.PODetail.ClassCode = value; }
        }
        public string ClassCodeENDesc { get { return this.PODetail == null ? "" : this.PODetail.ClassCodeENDesc; } set { } }
        public string ClassCodeCNDesc { get { return this.PODetail == null ? "" : this.PODetail.ClassCodeCNDesc; } set { } }

        public string Replenishment { get { return this.PODetail == null ? "" : this.PODetail.Replenishment; } set { } }

        //由David增加 2022-05-06
        public string ReplenishmentShow
        {
            get
            {
                //return string.IsNullOrEmpty(Replenishment) ? "" : "Y";

                //只要有一行Order Line有打印，就算打印过了.
                bool POPrinted = this.PODetail.POHeader.PODetails.Any(p => !string.IsNullOrEmpty(p.Replenishment));
                return POPrinted ? "Y" : "";
            }
            set { }
        }


        public string ReplenishmentDesc { get { return this.PODetail == null ? "" : this.PODetail.ReplenishmentDesc; } set { } }
        public string ReplenishmentWO { get { return this.PODetail == null ? "" : this.PODetail.WorkOrderNo; } set { } }


        //3.SKU
        //public string CustStyleNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustStyleNo; } }
        //public string ColorCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorCode; } }
        //public string SizeDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeDesc; } }
        //public string FitDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitDesc; } }

        public decimal? POQty { get { return this.Qty; } set { } }
        public DateTime? GoodsReceivingDate { get { return this.HDOETA; } set { } }
        //public string SupplierReference { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierReference; } }
        //public string ColorShade { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorShade; } set { } }
        //public string SupplierUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierUOM; } }

        public string BrandName { get { return this.PODetail == null ? "" : this.PODetail.BrandName; } set { if (this.PODetail != null) this.PODetail.BrandName = value; } }
        public string PONOAlert
        {
            get
            {
                return string.Format("{0}{1}", this.PONO, string.IsNullOrEmpty(this.FlowupFlag) ? "" : "*");
            }
            set { }
        }
        public string PONOAlert2
        {
            get
            {
                foreach (var a in this.PODetail.POColorSizeDetails)
                {
                    if (!string.IsNullOrEmpty(a.FlowupFlag))
                    {
                        return string.Format("{0}*", this.PONO);
                    }
                }
                return this.PONO;
            }
            set { }
        }

        #region RoundWorkOrder

        public string WO
        {
            get
            {
                //W098159-1/1-1/1
                if (!string.IsNullOrEmpty(this.RoundNo))
                    return this.RoundNo.Substring(0, 7);

                else return "";
            }
            set { }
        }
        public int RNo
        {
            get
            {
                string s = "";
                if (!string.IsNullOrEmpty(this.RoundNo))
                {
                    int ipos = this.RoundNo.LastIndexOf("-");
                    if (ipos != -1)
                    {
                        string r = this.RoundNo.Substring(ipos + 1);
                        int j = r.LastIndexOf("/");
                        if (j != -1)
                            s = r.Substring(0, j);
                    }
                }
                if (string.IsNullOrEmpty(s))
                    return 0;
                try
                {
                    int ir = Convert.ToInt32(s);
                    return ir;
                }
                catch
                {
                }
                return 0;
            }
            set { }
        }

        private PH.RWO.BO.RoundWorkOrder _rwo;
        public PH.RWO.BO.RoundWorkOrder RWO
        {
            get
            {
                if (_rwo == null && !string.IsNullOrEmpty(RoundNo))
                {
                    PH.RWO.BO.RoundWorkOrderList list = new PH.RWO.BO.RoundWorkOrderList();
                    _rwo = list.GetRoundWorkOrder(this.WO, this.GarmentColor, this.RNo);
                }
                return _rwo;
            }
            set
            {
                SetRWO(value);
            }
        }
        private void SetRWO(PH.RWO.BO.RoundWorkOrder rwo)
        {
            _rwo = rwo;
            if (_rwo != null)
            {
                this.RoundNo = _rwo.RoNo;
                this.GarmentColor = _rwo.ColorCode;
                if (this.PODetail != null)
                    this.PODetail.WorkOrderNo = _rwo.WorkOrderNo;
            }
        }

        public DateTime? RWO_FWStartDate
        {
            get
            {
                if (RWO != null)
                    return this.RWO.FactoryWorkStartDate;
                else return null;
            }
            set { }
        }
        public DateTime? RWO_ExftyDate
        {
            get
            {
                if (RWO != null)
                    return this.RWO.LCLExFtyDate;
                else return null;
            }
            set { }
        }
        public int? RWO_QTY
        {
            get
            {
                if (RWO != null)
                    return this.RWO.Qty;
                else return null;
            }
            set { }
        }

        //public string RWO_DaysDiff
        public int? RWO_DaysDiff
        {
            get
            {
                int i = 0;
                //Days behind or less than 2 days ahead (Not matching)  -  "RWO FW start dd" minus "ETA Pt. of Dest + Time Frame 2 (day)"
                //No. of day(s) (+/-)  [behind (-) ahead (+)]  (1 column)

                //if (RWO_FWStartDate.HasValue && ETAPointOfDestDate.HasValue)
                if (WOFWStartDate.HasValue && ETAPointOfDestDate.HasValue)
                {
                    //由David修改以下逻辑 2022-05-06
                    i = ((WOFWStartDate ?? DateTime.MinValue) - (ETAPointOfDestDate.Value)).Days - (this.TimeFrame2 ?? 0);
                    return i;
                    //string s = i >= 0 ? "+ " : "- ";
                    //return string.Format("{0}{1}", s, Math.Abs(i));

                    //i = (this.RWO_FWStartDate.Value - ETAPointOfDestDate.Value).Days + (this.TimeFrame2 ?? 0);
                    //string s = (i > -3 && i < 3) ? "" : ((i > 2) ? "+ " : "- ");
                    //return string.Format("{0}{1}", s, Math.Abs(i));
                }
                else return null;
                //else return "";
            }
            set { }
        }

        #endregion

        #endregion

        //---- (Level - 1) ---------------
        #region Color/Size Dependent

        #region Sample Approval status
        public IEnumerable<POSKUOperate> SampleApprovals
        {
            get
            {
                var aa = from a in this.POSKUOperates
                         where a.HandleType == Common.SampleApproval
                         orderby a.HandleNo
                         select a;
                return aa;
            }
            set { }
        }
        public POSKUOperate LastSampleApproval
        {
            get
            {
                if (this.SampleApprovals == null)
                    return null;
                int i = this.SampleApprovals.Count();
                if (i == 0)
                    return null;
                else
                    return this.SampleApprovals.Last();
            }
            set { }
        }

        public string SampleNewItem { get { return !this.NewItem.HasValue ? "" : ((this.NewItem.Value) ? "Y" : "N"); } set { } }
        // new item
        partial void OnNewItemChanged()
        {
            if (this.NewItem.HasValue && !this.NewItem.Value)
            {
                POSKUOperate op = this.LastSampleApproval;
                if (op == null)
                {
                    op = new POSKUOperate();
                    op.POColorSizeDetail = this;
                    op.CurrentDataContext = this.CurrentDataContext;

                    op.Company = this.Company;
                    op.PONO = this.PONO;
                    op.Version = this.Version;
                    op.AmendmentNo = this.AmendmentNo;
                    op.OrderLine = this.OrderLine;
                    op.SKU = this.SKU;
                    op.HandleType = PH.POPC.BO.Common.SampleApproval;
                    op.HandleNo = (this.SampleSeq ?? 0) + 1;
                    this.POSKUOperates.Add(op);
                }
                this.LastSampleApproval.Flag = true;
                this.LastSampleApproval.OperateDate = (DateTime?)null;
                //If choose "N" - approval Y/N? column should automatic change to "Y" and other column should show - -, except TTL left Item(s) by proj to be updated after report printing thru calculation.
            }
        }

        public string SampleApproval { get { return this.LastSampleApproval == null ? "" : ((this.LastSampleApproval.Flag ?? false) ? "Y" : "N"); } set { } }
        public int? SampleSeq { get { return this.LastSampleApproval == null ? (int?)null : this.LastSampleApproval.HandleNo; } set { } }
        public DateTime? SampleReceiptDate { get { return this.LastSampleApproval == null ? (DateTime?)null : this.LastSampleApproval.ReceiveDate; } set { } }
        public DateTime? SampleCompletedDate { get { return this.LastSampleApproval == null ? (DateTime?)null : this.LastSampleApproval.OperateDate; } set { } }
        public string SampleStatus { get { return this.LastSampleApproval == null ? "" : this.LastSampleApproval.Status; } set { } }

        public string SampleReceiptDateDesc { get { return this.LastSampleApproval == null ? "" : ((this.LastSampleApproval.Flag ?? false) ? "--" : string.Format("{0:dd/MM/yy}", this.LastSampleApproval.ReceiveDate)); } set { } }
        public string SampleCompletedDateDesc { get { return this.LastSampleApproval == null ? "" : ((this.LastSampleApproval.Flag ?? false) ? "--" : string.Format("{0:dd/MM/yy}", this.LastSampleApproval.OperateDate)); } set { } }

        public string SampleTtlLeftItem { get { return this.PODetail.SampleTtlLeftItem; } set { } }
        public string SampleTtlLeftItemReport { get; set; }
        //{
        //    get
        //    {
        //        // return this.PODetail == null ? "" : ((this.NewItem ?? false) ? this.PODetail.SampleTtlLeftItem : "--");
        //    }
        //}

        public string SampleFollowby
        {
            get
            {
                return this.LastSampleApproval == null ? "" :
                    ((this.LastSampleApproval.Flag ?? false) ? "--" : this.LastSampleApproval.SubmitNo);
            }
            set { }
        }
        public string SampleAuditedby
        {
            get
            {
                return this.LastSampleApproval == null ? "" :
                    ((this.LastSampleApproval.Flag ?? false) ? "--" : this.LastSampleApproval.BOMAuditedBy);
            }
            set { }
        }
        #endregion

        #region ColorStd
        public IEnumerable<POSKUOperate> ColorStds
        {
            get
            {
                var aa = from a in this.POSKUOperates
                         where a.HandleType == Common.ColorStd// "ColorStd"
                         orderby a.HandleNo
                         select a;
                return aa;
            }
            set { }
        }
        public POSKUOperate LastColorStd
        {
            get
            {
                if (this.ColorStds == null)
                    return null;
                int i = this.ColorStds.Count();
                if (i == 0)
                    return null;
                else
                    return this.ColorStds.Last();
            }
            set { }
        }

        public int? ColorStdSeq { get { return this.LastColorStd == null ? (int?)null : this.LastColorStd.HandleNo; } set { value = 0; } }
        public DateTime? ColorStdReceiptDate { get { return this.LastColorStd == null ? (DateTime?)null : this.LastColorStd.ReceiveDate; } set { } }

        //public string ColorStdSwatch3D { get { return this.LastColorStd == null ? "" : this.LastColorStd.Swatch3D; } }
        public string ColorStdSwatchCard { get { return this.LastColorStd == null ? "" : this.LastColorStd.SwatchCard; } set { } }
        public string ColorStdSwatchColorNo { get { return this.LastColorStd == null ? "" : this.LastColorStd.SubmitNo; } set { } }
        public string ColorStdPHCust { get { return this.LastColorStd == null ? "--" : ((this.LastColorStd.Flag.HasValue) ? (this.LastColorStd.Flag.Value ? "Cust" : "PH") : "--"); } set { } }
        public DateTime? ColorStdToSuppDate { get { return this.LastColorStd == null ? (DateTime?)null : this.LastColorStd.OperateDate; } set { } }

        #endregion

        #region DipSubmit
        public IEnumerable<POSKUOperate> DipSubmits
        {
            get
            {
                var aa = from a in this.POSKUOperates
                         where a.HandleType == Common.DipSubmit// "BulkSubmission"
                         orderby a.HandleNo
                         select a;
                return aa;
            }
            set { }
        }
        public POSKUOperate LastDipSubmit
        {
            get
            {
                if (this.DipSubmits == null)
                    return null;
                int i = this.DipSubmits.Count();
                if (i == 0)
                    return null;
                else
                    return this.DipSubmits.Last();
            }
            set { }
        }

        public string DipNo { get { return this.LastDipSubmit == null ? "" : this.LastDipSubmit.SubmitNo; } set { } }
        public int? DipSeq
        {
            get
            {
                if (LadDipOption == "N") //由David加入 2022-06-15
                {
                    return 99;
                }

                return this.LastDipSubmit == null ? 0 : this.LastDipSubmit.HandleNo;
            }
            set { }
        }

        public DateTime? DipReceiptDate { get { return this.LastDipSubmit == null ? (DateTime?)null : this.LastDipSubmit.ReceiveDate; } set { } }
        public DateTime? DipCompletedDate
        {
            get
            {
                if (this.LastDipSubmit == null)
                    return null;
                else
                {
                    switch (this.LadDipOption)
                    {
                        case "B"://b) . App by PH at first , then PH send to Cust. App
                        case "C"://c) . Supp send to Cust. App
                            return this.LastDipSubmit.CustOperateDate;
                        case "A"://a) . PH App
                        case "D"://d) . Repeat 
                        default:
                            return this.LastDipSubmit.OperateDate;
                    }
                }
            }
            set { }
        }
        public string DipStatus
        {
            get
            {
                if (this.LastDipSubmit == null)
                    return "";
                else
                {
                    switch (this.LadDipOption)
                    {
                        case "B"://b) . App by PH at first , then PH send to Cust. App
                        case "C"://c) . Supp send to Cust. App
                            return this.LastDipSubmit.CustStatus;
                        case "A"://a) . PH App
                        case "D"://d) . Repeat 
                        default:
                            return this.LastDipSubmit.Status;
                    }
                }
            }
            set { }
        }
        public DateTime? DipDropDeadDate { get { return this.LastDipSubmit == null ? (DateTime?)null : this.LastDipSubmit.DipDropDeadDate; } set { } }
        public string DipColoristComment { get { return this.LastDipSubmit == null ? "" : this.LastDipSubmit.Remark; } set { } }
        public string DipCustComment { get { return this.LastDipSubmit == null ? "" : this.LastDipSubmit.CustRemark; } set { } }

        public DateTime? DipPHToCustDate { get { return this.LastDipSubmit == null ? (DateTime?)null : this.LastDipSubmit.PHToCustDate; } set { } }
        public string DipPHStatus { get { return this.LastDipSubmit == null ? "" : this.LastDipSubmit.Status; } set { } }
        public DateTime? DipSuppToCustDate { get { return this.LastDipSubmit == null ? (DateTime?)null : this.LastDipSubmit.SuppToCustDate; } set { } }

        #region show in Report

        public string DipNo_Desc { get { return this.LadDipOption == "D" ? "--" : this.DipNo; } set { } }
        public string DipSeq_Desc { get { return this.LadDipOption == "D" ? "--" : string.Format("{0}", this.DipSeq); } set { } }
        public string DipReceiptDate_Desc { get { return this.LadDipOption == "D" ? "--" : string.Format("{0:dd/MM/yy}", this.DipReceiptDate); } set { } }
        public string DipCompletedDate_Desc { get { return this.LadDipOption == "D" ? "--" : string.Format("{0:dd/MM/yy}", this.DipCompletedDate); } set { } }
        public string DipStatus_Desc { get { return this.LadDipOption == "D" ? "--" : this.DipStatus; } set { } }
        public string DipDropDeadDate_Desc { get { return this.LadDipOption == "D" ? "--" : string.Format("{0:dd/MM/yy}", this.DipDropDeadDate); } set { } }

        public string DipHaveColoristCommDesc
        {
            get
            {
                return this.LastDipSubmit == null ? "" :
                    ((!this.LastDipSubmit.HaveColoristComm.HasValue) ? "" : (this.LastDipSubmit.HaveColoristComm.Value ? "Y" : "N"));
            }
            set { }
        }
        public string DipHaveCustCommDesc
        {
            get
            {
                return this.LastDipSubmit == null ? "" :
                    ((!this.LastDipSubmit.HaveCustComm.HasValue) ? "" : (this.LastDipSubmit.HaveCustComm.Value ? "Y" : "N"));
            }
            set { }
        }
        #endregion

        #endregion

        #region Bulk Submission
        public IEnumerable<POSKUOperate> BulkSubmits
        {
            get
            {
                var aa = from a in this.POSKUOperates
                         where a.HandleType == Common.BulkSubmission //"BulkSubmit"
                         orderby a.HandleNo
                         select a;
                return aa;
            }
            set { }
        }
        public POSKUOperate LastBulkSubmission
        {
            get
            {
                if (this.BulkSubmits == null)
                    return null;
                int i = this.BulkSubmits.Count();
                if (i == 0)
                    return null;
                else
                    return this.BulkSubmits.Last();
            }
            set { }
        }

        public int? BulkSubmitSeq
        {
            get
            {
                //return this.LastBulkSubmission == null ? 0 : this.LastBulkSubmission.HandleNo;

                if (BulkOption == "N")  //由David加入 2022-06-15
                {
                    return 99;
                }

                return this.LastBulkSubmission == null ? 0 : this.LastBulkSubmission.HandleNo;

            }
            set { }
        }
        public DateTime? BulkReceiptDate { get { return this.LastBulkSubmission == null ? (DateTime?)null : this.LastBulkSubmission.ReceiveDate; } set { } }
        public string BulkSubmitNo { get { return this.LastBulkSubmission == null ? "" : this.LastBulkSubmission.SubmitNo; } set { } }
        public DateTime? BulkCompletedDate
        {
            get
            {
                if (this.LastBulkSubmission == null)
                    return null;
                else
                {
                    switch (this.BulkOption)
                    {
                        case "B"://b) . 1st B/S App by Cust , 2nd B/S App by PH
                        case "C"://c) . Supp send to Cust. App
                            return this.LastBulkSubmission.CustOperateDate;
                        case "A"://a) . PH App
                        case "D"://d) . Supp App 
                        default:
                            return this.LastBulkSubmission.OperateDate;
                    }
                }
            }
            set { }
        }
        public string BulkStatus
        {
            get
            {
                if (this.LastBulkSubmission == null)
                    return "";
                else
                {
                    switch (this.BulkOption)
                    {
                        case "B"://b) . 1st B/S App by Cust , 2nd B/S App by PH
                        case "C"://c) . Supp send to Cust. App
                            return this.LastBulkSubmission.CustStatus;
                        case "A"://a) . PH App
                        case "D"://d) . Repeat 
                        default:
                            return this.LastBulkSubmission.Status;
                    }
                }
            }
            set { }
        }
        public double? BulkQty { get { return this.LastBulkSubmission == null ? (double?)null : this.LastBulkSubmission.Qty; } set { } }

        public DateTime? BulkDropDeadDate
        {
            get
            {
                return InnerBulkDropDeadDate;  //由david修改算法 2022-06-15
                //return this.LastBulkSubmission == null ? InnerBulkDropDeadDate : this.LastBulkSubmission.BulkDropDeadDate;
            }
            set { }
        }

        public string BulkRemark { get { return this.LastBulkSubmission == null ? "" : this.LastBulkSubmission.Remark; } set { } }

        public int? BulkNumOfBatch
        {
            get
            {
                var aa = (from a in this.BulkSubmits
                          where !string.IsNullOrEmpty(a.SubmitNo)
                          select new { a.SubmitNo }).Distinct();

                return aa.Count() == 0 ? (int?)null : aa.Count();
            }
            set { }
        }
        public double? BulkTotalAppQty
        {
            get
            {
                //var aa = (from a in this.BulkSubmits
                //          where a.Status == "App." || a.Status == "Re-App."
                //          select a).Sum(q => q.Qty);
                var aa = from a in this.BulkSubmits
                         where a.Status == "App." || a.Status == "Re-App."
                         select a;
                double d = 0;
                foreach (var a in aa)
                {
                    if (a.Qty.HasValue)
                        d += (a.Qty ?? 0);
                }
                return d == 0 ? (double?)null : d;
            }
            set { }
        }

        protected DateTime? InnerBulkDropDeadDate
        {
            get
            {
                //由David修改算法 2022-06-15
                if (BulkOption == "N")
                {
                    return null;
                }

                DateTime? date = (RevDeliveryDate ?? DateTime.MinValue) != DateTime.MinValue ? RevDeliveryDate : PODeliveryDate;
                if (date.HasValue)
                {
                    //int Day = this.Factory == "SL" ? -7 : -15;
                    //return date.Value.AddDays(Day);

                    if (Factory == "SL")
                    {
                        return date.Value.AddDays(-7);
                    }
                    else
                    {
                        MaterialTypeDropDeadDate obj = DropDeadDateByMaterialType;
                        if (this.PODetail.POHeader.SupplierFactory == null || this.PODetail.POHeader.SupplierFactory.CountryCode == "CHN") //中国区
                        {
                            int day = obj == null ? -15 : (obj.BulkDDDDay ?? 0);
                            return date.Value.AddDays(-day);
                        }
                        else //海外
                        {
                            int day = obj == null ? -15 : (DropDeadDateByMaterialType.BulkDDDDay ?? 0) + (DropDeadDateByMaterialType.OverseaAddDay ?? 0);
                            return date.Value.AddDays(-day);
                        }
                    }
                }

                return null;


                ////PO Delivery Date - Time Frame 1 (day) - Time Frame 2 (day) - 15 day
                //if (this.PODeliveryDate.HasValue)
                //{
                //    return this.PODeliveryDate.Value.AddDays(-(this.TimeFrame1 ?? 0) - (this.TimeFrame2 ?? 0) - 15);
                //}
                //return null;
            }
            set { }
        }

        public MaterialTypeDropDeadDate DropDeadDateByMaterialType
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();
                }
                return (CurrentDataContext as POPCDataContext).MaterialTypeDropDeadDates.FirstOrDefault(p => p.MaterilaType == ItemCode.Substring(0, 3));
            }
        }

        public DateTime? BulkPHToCustDate { get { return this.LastBulkSubmission == null ? (DateTime?)null : this.LastBulkSubmission.PHToCustDate; } set { } }
        public string BulkPHStatus { get { return this.LastBulkSubmission == null ? "" : this.LastBulkSubmission.Status; } set { } }
        public DateTime? BulkSuppToCustDate { get { return this.LastBulkSubmission == null ? (DateTime?)null : this.LastBulkSubmission.SuppToCustDate; } set { } }


        #endregion

        #region TestStatus
        public IEnumerable<POSKUOperate> TestStatuses
        {
            get
            {
                var aa = from a in this.POSKUOperates
                         where a.HandleType == Common.TestStatus// "TestStatus"
                         orderby a.HandleNo
                         select a;
                return aa;
            }
            set { }
        }
        public POSKUOperate LastTestStatus
        {
            get
            {
                if (this.TestStatuses == null)
                    return null;
                int i = this.TestStatuses.Count();
                if (i == 0)
                    return null;
                else
                    return this.TestStatuses.Last();
            }
            set { }
        }

        public string TestApproval { get { return this.LastTestStatus == null ? "N" : ((this.LastTestStatus.Flag ?? false) ? "Y" : "N"); } set { } }
        public int? TestSeq
        {
            get
            {
                if (TestApproval == "N") //由David加入 2022-06-18 
                {
                    return 99;
                }

                //由David修改 2022-05-17
                return (this.LastTestStatus == null || TestApproval == "" || TestApproval == "N") ? 0 : this.LastTestStatus.HandleNo;
                //return this.LastTestStatus == null ? 0 : this.LastTestStatus.HandleNo; 
            }
            set { }
        }

        public DateTime? TestReceiptDate { get { return this.LastTestStatus == null ? (DateTime?)null : this.LastTestStatus.ReceiveDate; } set { } }
        public DateTime? TestCompletedDate { get { return this.LastTestStatus == null ? (DateTime?)null : this.LastTestStatus.OperateDate; } set { } }
        public string TestStatus { get { return this.LastTestStatus == null ? "" : this.LastTestStatus.Status; } set { } }

        #region show in report

        public string TestSeq_Desc { get { return TestApproval == "N" ? "--" : string.Format("{0}", TestSeq); } set { } }
        public string TestReceiptDate_Desc { get { return TestApproval == "N" ? "--" : string.Format("{0:dd/MM/yy}", TestReceiptDate); } set { } }
        public string TestCompletedDate_Desc { get { return TestApproval == "N" ? "--" : string.Format("{0:dd/MM/yy}", TestCompletedDate); } set { } }
        public string TestStatus_Desc { get { return TestApproval == "N" ? "--" : string.Format("{0}", TestStatus); } set { } }

        #endregion

        #endregion

        #endregion


        #region Invoice Matching
        //poheader
        public bool? CurrencyFlag
        {
            get { return this.PODetail == null ? (bool?)null : this.PODetail.POHeader.CurrencyFlag; }
            set { this.PODetail.POHeader.CurrencyFlag = value; }
        }
        public bool? PaymentTermFlag
        {
            get { return this.PODetail == null ? (bool?)null : this.PODetail.POHeader.PaymentTermFlag; }
            set { this.PODetail.POHeader.PaymentTermFlag = value; }
        }
        public bool? IncotermFlag
        {
            get { return this.PODetail == null ? (bool?)null : this.PODetail.POHeader.IncotermFlag; }
            set { this.PODetail.POHeader.IncotermFlag = value; }
        }
        //podetail
        public bool? UnitFlag
        {
            get { return this.PODetail == null ? (bool?)null : this.PODetail.UnitFlag; }
            set { this.PODetail.UnitFlag = value; }
        }



        #endregion

        public static List<PODetail> GetLevelDataSource(List<object> objs, string projectNo)
        {

            List<PODetail> csdList = new List<PODetail>();
            #region Get POColorSizeDetail

            foreach (var t in objs)
            {
                if (t is POColorSizeDetail)
                {
                    POColorSizeDetail t0 = t as POColorSizeDetail;

                    if (!string.IsNullOrEmpty(projectNo))
                    {
                        if (t0.ProjectNO != projectNo) continue;
                    }

                    PODetail t1 = csdList.Find(delegate(PODetail t2)
                    {
                        return t0.Company == t2.Company && t0.PONO == t2.PONO && t0.Version == t2.Version && t0.AmendmentNo == t2.AmendmentNo
                           && t0.OrderLine == t2.OrderLine;
                    });
                    if (t1 != null) continue;
                    if (t0.PODetail == null) continue;


                    csdList.Add(t0.PODetail);
                }
                else if (t is PODetail)
                {
                    csdList.Add(t as PODetail);
                }
            }

            #endregion

            return csdList;

        }
        public static List<PODetail> GetLevelaDataSource(IEnumerable<POColorSizeDetail> objs, string projectNo)
        {

            List<PODetail> csdList = new List<PODetail>();
            #region Get POColorSizeDetail

            foreach (var t in objs)
            {
                if (t is POColorSizeDetail)
                {
                    POColorSizeDetail t0 = t as POColorSizeDetail;

                    if (!string.IsNullOrEmpty(projectNo))
                    {
                        if (t0.ProjectNO != projectNo) continue;
                    }

                    PODetail t1 = csdList.Find(delegate(PODetail t2)
                    {
                        return t0.Company == t2.Company && t0.PONO == t2.PONO && t0.Version == t2.Version && t0.AmendmentNo == t2.AmendmentNo
                           && t0.OrderLine == t2.OrderLine;
                    });
                    if (t1 != null) continue;
                    if (t0.PODetail == null) continue;


                    csdList.Add(t0.PODetail);
                }
                //else if (t is PODetail)
                //{
                //    csdList.Add(t as PODetail);
                //}
            }

            #endregion

            return csdList;

        }

        //public static List<POColorSizeDetail> GetLevelDataSource(List<object> objs)
        //{
        //    return GetLevelDataSource(objs, (bool?)null);
        //}
        public static List<POColorSizeDetail> GetLevelDataSource(List<object> objs, bool? changed)
        {
            //List<POPCLevel2Supplement> list = new List<POPCLevel2Supplement>();
            //if (objs == null) return list;

            List<POColorSizeDetail> csdList = new List<POColorSizeDetail>();
            #region Get POColorSizeDetail

            foreach (var t in objs)
            {
                if (t is POChangesMonitor)
                {
                    POChangesMonitor t0 = t as POChangesMonitor;

                    if (changed.HasValue)// is level 2
                    {
                        if (changed ?? false)
                        {
                            if (!((t0.RevisedDelivery && t0.Over7Days) || t0.TransitModeHaveChanged))
                                continue;
                        }
                        else
                        {
                            if ((t0.RevisedDelivery && t0.Over7Days) || t0.TransitModeHaveChanged)
                                continue;
                        }
                    }

                    POColorSizeDetail t1 = csdList.Find(delegate(POColorSizeDetail t2)
                    {
                        return t0.Company == t2.Company && t0.PONO == t2.PONO && t0.Version == t2.Version && t0.AmendmentNo == t2.AmendmentNo
                           && t0.OrderLine == t2.OrderLine && t0.SKU == t2.SKU;
                    });
                    if (t1 != null) continue;
                    if (t0.POColorSizeDetail == null) continue;


                    csdList.Add(t0.POColorSizeDetail);
                }
                else if (t is PORC)
                {
                    PORC t0 = t as PORC;

                    POColorSizeDetail t1 = csdList.Find(delegate(POColorSizeDetail t2)
                    {
                        return t0.Company == t2.Company && t0.PONO == t2.PONO && t0.Version == t2.Version && t0.AmendmentNo == t2.AmendmentNo
                           && t0.OrderLine == t2.OrderLine && t0.SKU == t2.SKU;
                    });
                    if (t1 != null) continue;
                    if (t0.POColorSizeDetail == null) continue;

                    csdList.Add(t0.POColorSizeDetail);
                }
                else if (t is POColorSizeDetail)
                {
                    csdList.Add(t as POColorSizeDetail);
                }
            }

            #endregion

            return csdList;// GetLevel2SupplementDataSource(csdList);

        }

        public static List<POChangesMonitor> GetLevel2DataSource(List<object> objs, bool? changed)
        {
            List<POColorSizeDetail> csdList = GetLevelDataSource(objs, changed);

            List<POChangesMonitor> cmList = new List<POChangesMonitor>();

            foreach (var t in objs)
            {
                if (t is POChangesMonitor)
                {
                    POChangesMonitor t0 = t as POChangesMonitor;
                    POColorSizeDetail t1 = csdList.Find(delegate(POColorSizeDetail t2)
                    {
                        return t0.Company == t2.Company && t0.PONO == t2.PONO && t0.Version == t2.Version && t0.AmendmentNo == t2.AmendmentNo
                           && t0.OrderLine == t2.OrderLine && t0.SKU == t2.SKU;
                    });
                    if (t1 == null) continue;

                    cmList.Add(t0);
                }
            }

            return cmList;

        }

        public static List<POItemChangeMaster> GetLevel2DataSourceItemChange(List<object> objs, bool? changed)
        {
            List<POItemChangeMaster> csdList = new List<POItemChangeMaster>();
            //List<string> ps = new List<string>();
            System.Collections.Hashtable ht = new System.Collections.Hashtable();

            #region Get Project No

            foreach (var t in objs)
            {
                if (t is POChangesMonitor)
                {
                    POChangesMonitor t0 = t as POChangesMonitor;

                    if (changed.HasValue)
                    {
                        if (changed ?? false)
                        {
                            if (!(t0.RevisedDelivery || t0.TransitModeHaveChanged))
                                continue;
                        }
                        else
                        {
                            if (t0.RevisedDelivery || t0.TransitModeHaveChanged)
                                continue;
                        }
                    }

                    if (string.IsNullOrEmpty(t0.ProjectNo)) continue;
                    if (ht.Contains(t0.ProjectNo)) continue;

                    ht.Add(t0.ProjectNo, t0.ProjectNo);

                }
                else if (t is PORC)
                {
                    PORC t0 = t as PORC;

                    if (ht.Contains(t0.ProjectNo)) continue;

                    ht.Add(t0.ProjectNo, t0.ProjectNo);

                    //POItemChange t1 = csdList.Find(delegate(POItemChange t2)
                    //{
                    //    return t0.Company == t2.Company && t0.ProjectNo == t2.ProjectNo && t0.ItemCode == t2.ItemCode
                    //        && (string.IsNullOrEmpty(t0.GarmentColor) ? "" : t0.GarmentColor) == t2.GarmentColor;
                    //});
                    //if (t1 != null) continue;
                    //if (t0.POColorSizeDetail == null) continue;
                    //t1 = new POItemChange()
                    //{
                    //    EndCustCode = t0.EndCustCode,
                    //    Company = t0.Company,
                    //    ProjectNo = t0.ProjectNo,
                    //    ItemCode = t0.ItemCode,
                    //    GarmentColor = (string.IsNullOrEmpty(t0.GarmentColor) ? "" : t0.GarmentColor),
                    //    GmtColorName = t0.POColorSizeDetail.GmtColorName
                    //};

                    //csdList.Add(t1);
                }
                else if (t is POColorSizeDetail)
                {
                    POColorSizeDetail t0 = t as POColorSizeDetail;
                    if (ht.Contains(t0.ProjectNO)) continue;

                    ht.Add(t0.ProjectNO, t0.ProjectNO);
                    //POItemChange t1 = csdList.Find(delegate(POItemChange t2)
                    //{
                    //    return t0.Company == t2.Company && t0.ProjectNO == t2.ProjectNo && t0.ItemCode == t2.ItemCode
                    //        && (string.IsNullOrEmpty(t0.GarmentColor) ? "" : t0.GarmentColor) == t2.GarmentColor;
                    //});
                    //if (t1 != null) continue;
                    //t1 = new POItemChange()
                    //{
                    //    EndCustCode = t0.EndCustCode,
                    //    Company = t0.Company,
                    //    ProjectNo = t0.ProjectNO,
                    //    ItemCode = t0.ItemCode,
                    //    GarmentColor = (string.IsNullOrEmpty(t0.GarmentColor) ? "" : t0.GarmentColor),
                    //    GmtColorName = t0.GmtColorName
                    //};

                    //csdList.Add(t1);
                }
            }

            #endregion

            #region Calc

            //array of projects
            string[] ps = new string[ht.Count];
            int i = 0;
            foreach (System.Collections.DictionaryEntry item in ht)
            {
                ps[i] = (string)item.Value;
                ++i;
            }
            POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");
            context.CommandTimeout = 1000;

            //all items(item+gmt clr)
            var aa = (from a in context.POColorSizeDetails
                      where a.Company == "P1" && (a.VersionFlag ?? false) && ps.Contains(a.PODetail.ProjectNo)
                      select new
                      {
                          a.PODetail.POHeader.EndCustCode,
                          a.PODetail.ProjectNo,
                          a.ItemCode,
                          GarmentColor = ((a.GarmentColor != null && a.GarmentColor != "") ? "" : a.GarmentColor),
                          GmtColorName = ((a.GmtColorName != null && a.GmtColorName != "") ? "" : a.GmtColorName)
                      }).Distinct();

            //all items with changed
            var bb = (from a in context.POColorSizeDetails
                      where a.Company == "P1" && (a.VersionFlag ?? false) && ps.Contains(a.PODetail.ProjectNo)
                           && a.POChangesMonitors.Any(p =>
                             (p.RevisedDeliveryDate.HasValue && p.POColorSizeDetail.PODetail.ConfirmETADate != p.RevisedDeliveryDate)
                              || ((p.TransitModeChanged != null && p.TransitModeChanged != "") && (p.TransitModeChanged != p.POColorSizeDetail.PODetail.POHeader.ShipMode)))
                      select new
                      {
                          a.PODetail.ProjectNo,
                          a.ItemCode,
                          GarmentColor = ((a.GarmentColor != null && a.GarmentColor != "") ? "" : a.GarmentColor)
                      }).Distinct();

            //apply to POItemChangeMaster & POItemChange
            foreach (string s in ps)
            {
                POItemChangeMaster m = new POItemChangeMaster() { Company = "P1", ProjectNo = s };
                //this project's items
                var a1 = from a in aa
                         where a.ProjectNo == s
                         select a;

                foreach (var d in a1)
                {
                    //changed?
                    var c = from a in bb
                            where a.ProjectNo == d.ProjectNo && a.ItemCode == d.ItemCode && a.GarmentColor == d.GarmentColor
                            select a;
                    bool isChanged = c.Count() > 0;

                    //details
                    POItemChange t = new POItemChange()
                    {
                        Master = m,
                        EndCustCode = d.EndCustCode,
                        Company = "P1",
                        ProjectNo = d.ProjectNo,
                        ItemCode = d.ItemCode,
                        GarmentColor = d.GarmentColor,
                        GmtColorName = d.GmtColorName,
                        Changed = isChanged
                    };
                    m.EndCustCode = t.EndCustCode;
                    m.POItemChanges.Add(t);
                }
                csdList.Add(m);
            }


            //foreach (System.Collections.DictionaryEntry item in ht)
            //{
            //    //count by project no
            //    var aa = (from a in context.POColorSizeDetails
            //              where a.Company == "P1" && (a.VersionFlag ?? false) && ht.Contains(a.PODetail.ProjectNo)
            //              select new { a.ItemCode, GarmentColor = (string.IsNullOrEmpty(a.GarmentColor) ? "" : a.GarmentColor) }).Distinct();
            //    int ttl = aa.Count();

            //    var bb = (from a in context.POColorSizeDetails
            //              where a.Company == "P1" && (a.VersionFlag ?? false) && a.PODetail.ProjectNo == item.Value
            //              && a.POChangesMonitors.Any(p =>
            //                  (p.RevisedDeliveryDate.HasValue && p.POColorSizeDetail.PODetail.ConfirmETADate != p.RevisedDeliveryDate)
            //                  || ((p.TransitModeChanged != null && p.TransitModeChanged != "") && (p.TransitModeChanged != p.POColorSizeDetail.PODetail.POHeader.ShipMode)))
            //              select new { a.PODetail.POHeader.EndCustCode, a.ItemCode, GarmentColor = (string.IsNullOrEmpty(a.GarmentColor) ? "" : a.GarmentColor) }).Distinct();
            //    int i = bb.Count();

            //    item.Changed = i;
            //    item.Total = ttl;
            //}

            #endregion

            return csdList;
        }



        //Xsj20151009: Add Trade method ------------- 
        //public string TradeMethod
        //{
        //    get
        //    {
        //        if (this._tradeMethod == null)
        //        {
        //            if (this.PODetail != null)
        //            {
        //                this._tradeMethod = this.PODetail.TradeMethod;
        //            }
        //            else
        //            {
        //                this._tradeMethod = "";
        //            }
        //        }
        //        return this._tradeMethod;
        //    }

        //    set
        //    {
        //        if (this._tradeMethod != value)
        //        {
        //            this._tradeMethod = value;
        //        }
        //    }
        //}
        //private string _tradeMethod=null;

        public string TradeMethod
        {
            get
            {
                return this.PODetail.TradeMethod;
            }

            set
            {
                this.PODetail.TradeMethod = value;
                this.ClassCode = value;
                //this.PODetail.ClassCode = value;
            }
        }
        //-------------------------------------------

        //-------------------------------------------
        //Xsj20160628:添加海關物料名稱的顯示
        private string _hsMaterialName;
        public string HSMaterialName
        {
            get
            {
                if (string.IsNullOrEmpty(this._hsMaterialName))
                {
                    PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                    if (this.MIDcDetail != null)
                    {
                        PH.MIDc.BO.CustomMaterial bo = context.CustomMaterials.Where(p => p.MidcHSCode == this.MIDcDetail.HsCode).FirstOrDefault();
                        if (bo != null)
                        {
                            this._hsMaterialName = bo.materialName;
                        }
                    }
                }
                return this._hsMaterialName;
            }
            set { }
        }
        //-------------------------------------------

        //由David加入 2022-03-26 海關編碼，不是MIDc的物料編碼
        string _CustomHSCode;
        public string CustomHSCode
        {
            get
            {
                if (string.IsNullOrEmpty(this._CustomHSCode))
                {
                    PH.MIDc.BO.MIDcDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
                    if (this.MIDcDetail != null)
                    {
                        PH.MIDc.BO.CustomMaterial bo = context.CustomMaterials.Where(p => p.MidcHSCode == this.MIDcDetail.HsCode).FirstOrDefault();
                        if (bo != null)
                        {
                            this._CustomHSCode = bo.CustomNo;
                        }
                    }
                }
                return this._CustomHSCode;
            }
            set { }
        }


        //由David加入 2019-06-26，查看HS Code和HS Name
        string _HSCode;
        public string HSCode
        {
            get
            {
                if (!string.IsNullOrEmpty(_HSCode)) return _HSCode;

                POPCDataContext context = this.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                if (context == null)
                    context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

                context.CommandTimeout = 8000;
                string SqlStr = string.Format("select top 1 HSCode from [PH.MIDc]..Detail where SuppRef = '{0}'", this.SupplierReference);
                _HSCode = context.ExecuteQuery<string>(SqlStr).FirstOrDefault();

                return _HSCode;
            }
            set { }
        }

        string _HSName;
        public string HSName
        {
            get
            {
                if (string.IsNullOrEmpty(this.HSCode)) return "";
                if (!string.IsNullOrEmpty(_HSName)) return _HSName;

                POPCDataContext context = this.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                if (context == null)
                    context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 8000;
                string SqlStr = string.Format("select top 1 MaterialName from [PH.MIDc]..CustomMaterial where MidcHSCode = '{0}' and FGType = 'RM'", this.HSCode);
                _HSName = context.ExecuteQuery<string>(SqlStr).FirstOrDefault();
                return _HSName;

            }
            set { }
        }

    }
    public class POItemChangeMaster
    {
        public POItemChangeMaster()
        {
            POItemChanges = new List<POItemChange>();
        }
        public string EndCustCode { get; set; }
        public string Company { get; set; }//
        public string ProjectNo { get; set; }//

        public int ChangedItem
        {
            get
            {
                var aa = from a in POItemChanges
                         where a.Changed
                         select a;
                return aa.Count();
            }
        }
        public int TotalItem { get { return POItemChanges.Count; } }
        public decimal Per { get { return Convert.ToDecimal(ChangedItem) / Convert.ToDecimal(TotalItem == 0 ? 1 : TotalItem); } }
        public List<POItemChange> POItemChanges { get; set; }
    }
    public class POItemChange
    {
        public POItemChangeMaster Master { get; set; }
        public string EndCustCode { get; set; }
        public string Company { get; set; }//
        public string ProjectNo { get; set; }//
        public string ItemCode { get; set; }//
        public string GarmentColor { get; set; }//
        public string GmtColorName { get; set; }
        public bool Changed { get; set; }
        public int ChangedInt { get { return Changed ? 1 : 0; } }
    }

    //ItemCode对于 POType= POType.MIDcPO 没有意义,永远为9个空格
    partial class PODetail : PH.Platform.BO.BaseEntity
    {
        public TimeFrameII TimeFrameIIObject
        {
            get
            {
                BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
                int Count = db.TimeFrameIIs.Where(p => p.StartPoint == POHeader.TimeFrameIIStartPoint && p.EndPoint == POHeader.TimeFrameIIEndPoint && p.TransitMode == POHeader.TransitMode2).Count();
                if (Count > 1)
                {
                    string LogisticSeason = (ConfirmETADate.Value.Month >= 5 && ConfirmETADate.Value.Month <= 9) ? "Dry" : "Wet";
                    TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == POHeader.TimeFrameIIStartPoint && p.EndPoint == POHeader.TimeFrameIIEndPoint &&
                                      p.TransitMode == POHeader.TransitMode2 && p.LogisticSeason == LogisticSeason);

                    return obj;
                }
                else
                {
                    TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == POHeader.TimeFrameIIStartPoint && p.EndPoint == POHeader.TimeFrameIIEndPoint && p.TransitMode == POHeader.TransitMode2);
                    return obj;
                }
            }
        }

        public int? TimeFrame2
        {
            get
            {
                //由David修改算法
                TimeFrameII obj = TimeFrameIIObject;
                return obj == null ? null : obj.LeadTimeDay;
            }
        }


        public override bool Save()
        {
            if (this.POHeader != null)
            {
                if (this.POHeader.PODetails.Count > 1)
                    this.POHeader.IndividualAssociate = 1;//Associate
                else if (this.POHeader.PODetails.Count == 1)
                    this.POHeader.IndividualAssociate = 0;// Individual
            }
            return base.Save();
        }
        partial void OnCreated()
        {
            this.HaveSupplementSheet = false;
        }

        private string _POVersion;
        public string POVersion
        {
            get
            {
                _POVersion = string.Format("{0}.{1}", this._Version, this.AmendmentNo);
                return _POVersion;
            }
        }

        public string Colors
        {
            get
            {
                string _Colors = string.Empty;
                if (this.POHeader.POType == (int)POType.POSticker)
                {
                    foreach (var item in this.POColorSizeDetails)
                    {
                        _Colors += item.ColorCode.Trim() + "———" + Convert.ToInt32(item.SupplierPOQty).ToString() + item.SupplierUOM + "\r\n";
                    }
                }

                //if (this.weight != null && this.weight.Value > 0)
                //{
                //    _Colors += "Weight:" + this.weight.Value.ToString() + "\r\n";
                //}
                //if (_Colors.Length > 0)
                //{
                //    _Colors = _Colors.Substring(0, _Colors.Length - 2);
                //}
                return _Colors;
            }
        }

        public string NewCommodity
        {
            get
            {
                string msg = this.Commodity;
                if (this.weight != null && this.weight.Value > 0)
                {
                    msg += " 重量:" + this.weight.Value.ToString() + "kg";
                }
                return msg;

            }
        }

        private int? _Line;
        public int? Line
        {
            get
            {
                return this._Line;
            }
            set
            {
                this._Line = value;
            }
        }

        public byte[] POPhoto
        {
            get
            {
                byte[] bt;
                if (this.PODetailPhoto == null || this.PODetailPhoto.Photo == null)
                {
                    bt = null;
                }
                else
                {
                    bt = this.PODetailPhoto.Photo;
                }
                return bt;
            }
        }
        private string _IsOutStanding;
        public string IsOutStanding
        {
            get
            {
                if (this.POHeader != null)
                {
                    if (this.POHeader.POType == (int)POType.PO)
                    {
                        this._IsOutStanding = (this.PHOutstandingQty ?? 0) > 0 ? "OutStanding" : "Completed";
                    }
                    else
                    {

                        switch (this.POHeader.Status)
                        {
                            case "0":
                                this._IsOutStanding = "Completed";
                                break;
                            case "1":
                                this._IsOutStanding = "OutStanding";
                                break;
                            case "-1":
                                this._IsOutStanding = "Cancelled";
                                break;
                            default:
                                this._IsOutStanding = "OutStanding";
                                break;
                        }
                        if (this.POHeader.Flag == "1" || this.Flag == "1") this._IsOutStanding = "Cancelled";
                    }
                }
                return this._IsOutStanding;
            }
        }

        public string Status
        {
            get
            {
                string _Status = "1";
                if (this.POHeader != null)
                {
                    if (this.POHeader.POType == (int)POType.PO)
                    {
                        _Status = (this.PHOutstandingQty ?? 0) > 0 ? "1" : "0";
                    }
                    else
                    {
                        _Status = this.POHeader.Status;
                    }
                }
                return _Status;
            }

        }
        public DateTime? ETADate
        {
            get
            {
                if (!(this.ConfirmETADate == null || this.Leadtime == null))
                {
                    return this.ConfirmETADate.Value.AddDays((int)this.Leadtime);
                }
                else
                {
                    return this.ConfirmETADate;
                }
            }
        }


        public DateTime? ShipMentDate
        {
            get
            {
                if (!(this.POHeader == null))
                {
                    return this.POHeader.ShipmentDate;
                }
                else
                {
                    return null;
                }
            }
        }

        public string Customer
        {

            get
            {
                string str = string.Empty;
                if (!string.IsNullOrEmpty(this.ProjectNo))
                {
                    if (this.ProjectNo.Substring(0, 3) == "EX-")
                    {
                        str = this.ProjectNo.Substring(3, 4);
                    }
                    else
                    {
                        str = this.ProjectNo.Substring(0, 4);
                    }
                }

                return str;

            }
        }

        public byte[] Photo { get; set; }
        //B:     ETADate= b.ConfirmETADate + b.LeadTime;
        //B:     case SUBSTRING(b.ProjectNo,1,3) when 'EX-' then SUBSTRING(b.ProjectNo,4,4) else SUBSTRING(b.ProjectNo,1,4) end AS Customer ---> Customer

        private decimal _PHAmount;
        public decimal PHAmount
        {
            get
            {
                _PHAmount = 0;
                foreach (POColorSizeDetail c in this.POColorSizeDetails)
                {
                    _PHAmount += (c.PHAmount + (this.AdditionalCost ?? 0));
                }
                return _PHAmount;
            }
        }

        private decimal _SuppAmount;
        public decimal SuppAmount
        {
            get
            {
                _SuppAmount = 0;
                try
                {
                    //不同PO的訂單　總的金額算法不一樣
                    if (this.POHeader == null || this.POHeader.POType == (int)POType.PO || this.POHeader.POType == (int)POType.MIDcPO)
                    {
                        foreach (POColorSizeDetail c in this.POColorSizeDetails)
                        {
                            if (this.POHeader.POType == (int)POType.PO)
                            {

                                double ProcessRate = this.POHeader.Rate == 0 ? 1 : (this.POHeader.Rate ?? 1);
                                _SuppAmount += ((c.SuppAmount ?? 0) + (this.AdditionalCost ?? 0) / Convert.ToDecimal(ProcessRate));

                                //_SuppAmount += ((c.SuppAmount ?? 0) + (this.AdditionalCost ?? 0) / Convert.ToDecimal(this.POHeader.Rate ?? 1));
                            }
                            else //if (  this.POHeader.POType == (int)POType.MIDcPO)
                                _SuppAmount += (c.SuppAmount ?? 0);
                        }
                    }
                    else
                    {
                        _SuppAmount = (this.SuppQty) * (this.SupplierPrice ?? 0) +
                           this.PHQty * ((this.PrintedCost ?? 0) + (this.StickCost ?? 0) + (this.HandWorkCost ?? 0) + (this.AdditionalCost ?? 0));
                        //   ((this.AdditionalCost ?? 0) / Convert.ToDecimal(this.POHeader.Rate ?? 1));
                    }
                }
                catch (Exception ex)
                {

                }
                return _SuppAmount;
            }
        }


        //------Xsj20160415:為打印海關PO而添加以下代碼。-------  
        private decimal _SuppAmountForHSPO;
        public decimal SuppAmountForHSPO
        {
            get
            {
                _SuppAmountForHSPO = 0;
                //Xsj20160415:Add to 獲取折扣 
                decimal priceRatio = 1;
                MIDcHSMaterialList helper = new MIDcHSMaterialList();
                string midcHSCode = this.MIDcDetail.HsCode;
                if (!string.IsNullOrEmpty(midcHSCode))
                {
                    PH.MIDc.BO.CustomMaterial custMaterial = helper.GetCustomMaterial(midcHSCode);
                    if (custMaterial != null)
                    {
                        priceRatio = custMaterial.PriceRatio ?? 1;
                    }
                }
                //不同PO的訂單　總的金額算法不一樣
                if (this.POHeader == null || this.POHeader.POType == (int)POType.PO || this.POHeader.POType == (int)POType.MIDcPO)
                {
                    foreach (POColorSizeDetail c in this.POColorSizeDetails)
                    {
                        if (this.POHeader.POType == (int)POType.PO)
                        {
                            double ProcessRate = this.POHeader.Rate == 0 ? 1 : (this.POHeader.Rate ?? 1);
                            _SuppAmountForHSPO += ((c.SuppAmount ?? 0) * priceRatio + (this.AdditionalCost ?? 0) / Convert.ToDecimal(ProcessRate));

                            //_SuppAmountForHSPO += ((c.SuppAmount ?? 0) * priceRatio + (this.AdditionalCost ?? 0) / Convert.ToDecimal(this.POHeader.Rate ?? (this.POHeader.Rate)));
                        }
                        else
                        {
                            _SuppAmountForHSPO += (c.SuppAmount ?? 0) * priceRatio;
                        }
                    }
                }
                else
                {
                    _SuppAmountForHSPO = (this.SuppQty) * (this.SupplierPrice ?? 0) * priceRatio +
                       this.PHQty * ((this.PrintedCost ?? 0) + (this.StickCost ?? 0) + (this.HandWorkCost ?? 0) + (this.AdditionalCost ?? 0));
                }
                return _SuppAmountForHSPO;
            }
        }
        //-----------------------------------------------------


        #region VAT value

        private decimal? _vat;
        public decimal? VAT
        {
            get
            {
                if (this._vat.HasValue) return this._vat;

                if (this.POHeader == null || this.POHeader.SupplierProfile == null) this._vat = null;
                else this._vat = this.POHeader.SupplierProfile.GetVATValue(this.MatType);

                return this._vat;
            }
        }
        public decimal SuppAmountVAT
        {
            get
            {
                return SuppAmount * (VAT ?? 0) / 100;

            }
        }
        public decimal SuppAmountGrand
        {
            get
            {
                return SuppAmount * (1 + (VAT ?? 0) / 100);

            }
        }


        #endregion


        public decimal PrintedCostLine
        {
            get { return this.PHQty * (this.PrintedCost ?? 0); }
        }

        public decimal StickCostLine
        {
            get { return this.PHQty * (this.StickCost ?? 0); }
        }
        public decimal HandWorkCostLine
        {
            get { return this.PHQty * (this.HandWorkCost ?? 0); }
        }

        private PH.MIDc.BO.Detail _MIDcDetail;
        public PH.MIDc.BO.Detail MIDcDetail
        {
            get
            {
                if (_MIDcDetail == null)
                {
                    PH.POPC.BO.MIDcList midcList = new PH.POPC.BO.MIDcList();
                    _MIDcDetail = midcList.GetMIDc(this.SupplierReference, this.ItemCode);
                    //_MIDcDetail = midcList.GetMIDc(this.SupplierReference);
                }
                return _MIDcDetail;
            }
        }

        public string MIDcItemCode
        {
            get
            {
                return this.MIDcDetail == null ? "" : this.MIDcDetail.MaterialCode;
            }

        }
        public string MIDcDimension
        {
            get
            {
                return this.MIDcDetail == null ? "" : this.MIDcDetail.Dimension;
            }
        }
        public string MIDcDimensionDesc
        {
            get
            {
                return this.MIDcDetail == null ? "" : this.MIDcDetail.MIDcDimensionDesc;

            }
        }
        public string CommodityDesc
        {
            get
            {
                //string s = this.Commodity;
                string s = string.Empty;
                //string s = string.IsNullOrEmpty(this.Commodity) ? "" :
                //    (this.Commodity.StartsWith("0") ? this.Commodity.Substring(1) : this.Commodity);
                if (string.IsNullOrEmpty(s))
                {
                    //MIDcList list = new MIDcList();
                    //PH.MIDc.BO.Detail d = list.GetMIDc(this.SupplierReference, this.ItemCode);
                    if (MIDcDetail == null) return s;
                    s = (this.POHeader != null && this.POHeader.POType == (int)PH.POPC.BO.POType.MIDcPO) ?
                        MIDcDetail.Description : MIDcDetail.Commodity;
                    if (string.IsNullOrEmpty(s)) s = "";
                }
                else
                {
                    s = this.Commodity.StartsWith("0") ? this.Commodity.Substring(1) : this.Commodity;
                }
                return s.TrimEnd();
            }
        }

        #region Converted Item
        private PH.MIDc.BO.MaterialProcess _MIDcMaterialProcess;
        public PH.MIDc.BO.MaterialProcess MIDcMaterialProcess
        {
            get
            {
                if (_MIDcMaterialProcess == null)
                {
                    if (MIDcDetail == null) return _MIDcMaterialProcess;
                    foreach (var a in MIDcDetail.MaterialProcesses)
                    {
                        _MIDcMaterialProcess = a;
                        if (a.IsMain ?? false)
                        {
                            break;
                        }
                    }
                }
                return _MIDcMaterialProcess;
            }
        }

        public string ConvertedItemOperation
        {
            get
            {
                return this.MIDcDetail == null ? "" : this.MIDcDetail.Operation;
            }
        }

        public string ConvertedItemMaterial
        {
            get
            {
                string s = "";
                if (MIDcDetail == null) return s;
                foreach (var a in MIDcDetail.MaterialProcesses)
                {
                    s += string.Format("\n{0}", string.IsNullOrEmpty(a.MIDcItemCode) ? "N.A." : a.MIDcItemCode);
                }
                return s.Trim();
            }
        }
        public string ConvertedSuppRef
        {
            get
            {
                string s = "";
                if (MIDcDetail == null) return s;
                foreach (var a in MIDcDetail.MaterialProcesses)
                {
                    s += string.Format("\n{0}", a.MatlForProcess);
                }
                return s.Trim();
            }
        }
        public string ConvertedItemWidth
        {
            get
            {
                string s = "";
                if (MIDcDetail == null) return s;
                foreach (var a in MIDcDetail.MaterialProcesses)
                {
                    string s1 = (a.ItemWidth ?? 0) == 0 ? "N.A." : string.Format("{0:N0} mm", a.ItemWidth);
                    s += string.Format("\n{0}", s1);
                }
                return s.Trim();
            }
        }
        public string ConvertedItemDesc
        {
            get
            {
                string s = "";
                if (MIDcDetail == null) return s;
                foreach (var a in MIDcDetail.MaterialProcesses)
                {
                    s += string.Format("\n{0}", string.IsNullOrEmpty(a.MIDcItemDesc) ? "N.A." : a.MIDcItemDesc);
                }
                return s.Trim();
            }
        }
        public string ConvertedItemUnit
        {
            get
            {
                string s = "";
                if (MIDcDetail == null) return s;
                foreach (var a in MIDcDetail.MaterialProcesses)
                {
                    s += string.Format("\n{0}", string.IsNullOrEmpty(a.MIDcItemUnit) ? "N.A." : a.MIDcItemUnit);
                }
                return s.Trim();
            }
        }

        #endregion

        private decimal _PHQty;
        public decimal PHQty
        {
            get
            {
                _PHQty = 0;
                foreach (POColorSizeDetail d in this.POColorSizeDetails)
                {
                    _PHQty += (d.Qty ?? 0);
                }
                return _PHQty;
            }
        }

        private decimal _SuppQty;
        public decimal SuppQty
        {
            get
            {
                _SuppQty = 0;
                _SuppQty = this.PHQty / Convert.ToDecimal(this.ConversionFactor == null || this.ConversionFactor == 0 ? 1.0 : this.ConversionFactor);
                return _SuppQty;
            }
        }

        public string Currency
        {
            get
            {
                if (this.POHeader != null)
                    return this.POHeader.Currency;
                else
                    return string.Empty;
            }
        }
        public int? Week
        {
            get
            {
                int? msg = null;
                if (this.DeliveryDate != null)
                {
                    CultureInfo myCI = new CultureInfo("en-US");
                    Calendar myCal = myCI.Calendar;
                    //int iWeek = myCal.GetWeekOfYear(this.ConfirmETADate.Value, myCI.DateTimeFormat.CalendarWeekRule, myCI.DateTimeFormat.FirstDayOfWeek);
                    int iWeek = myCal.GetWeekOfYear(this.DeliveryDate.Value, CalendarWeekRule.FirstFullWeek, System.DayOfWeek.Sunday);
                    msg = iWeek;
                }
                return msg;
            }
        }
        public int? DeliveryMonth
        {
            get
            {
                int? msg = null;
                if (this.DeliveryDate != null)
                {
                    msg = this.DeliveryDate.Value.Year * 10 + this.DeliveryDate.Value.Month;
                }
                return msg;
            }
        }
        public int? DeliveryYear
        {
            get
            {
                int? msg = null;
                if (this.DeliveryDate != null)
                {
                    msg = this.DeliveryDate.Value.Year;
                }
                return msg;
            }
        }
        public string DeliveryWeek { get { return string.Format("{0:yyyy'/'MM'/'dd}     Week {1}", this.DeliveryDate, this.Week); } }
        public DateTime? DeliveryDate
        {
            get
            {
                if (this.POHeader != null && this.POHeader.POType == (int)PH.POPC.BO.POType.MIDcPO)
                    return this.POHeader.ShipmentDate;
                return this.ConfirmETADate;
            }
        }
        public int? DeliveryDaysDiff
        {
            get
            {
                if (DeliveryDate.HasValue && this.POReqDeliveryDate.HasValue)
                    return (DeliveryDate.Value - POReqDeliveryDate.Value).Days;
                else return null;
            }
        }


        public string Supplier
        {
            get
            {
                if (this.POHeader != null)
                    return this.POHeader.Supplier;
                else
                    return null;
            }
        }
        public string SupplierName
        {
            get
            {
                if (this.POHeader != null)
                    return this.POHeader.SupplierName;
                else
                    return null;
            }
        }

        public bool HaveWireBoneMatrix
        {
            get
            {
                if (this.ItemCode.StartsWith("WIR") || this.ItemCode.StartsWith("BON") || this.ItemCode.StartsWith("BOE") || this.ItemCode.StartsWith("WIF"))
                {
                    foreach (var c in this.POColorSizeDetails)
                    {
                        if (!string.IsNullOrEmpty(c.ColorCode) && !string.IsNullOrEmpty(c.SizeCode) && string.IsNullOrEmpty(c.FitCode))
                            return true;
                        else
                            return false;
                    }
                }
                else
                    return false;
                return false;
            }
        }

        public string MatType
        {
            get
            {
                if (this.POHeader != null && this.POHeader.POType == (int)POType.MIDcPO)
                {
                    return this.MIDcDetail == null ? "" : this.MIDcDetail.MaterialType;
                }
                else
                {
                    if (string.IsNullOrEmpty(this.ItemCode)) return "";
                    return this.ItemCode.Substring(0, Math.Min(3, this.ItemCode.Length));
                }
            }
        }

        private PH.BasicInfo.BO.MaterialTypeDimension _materialTypeDimension;
        public PH.BasicInfo.BO.MaterialTypeDimension MaterialTypeDimension
        {
            get
            {
                if (_materialTypeDimension == null)
                {
                    PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                    _materialTypeDimension = (from a in list.CurrentDataContext.MaterialTypeDimensions
                                              where a.ERPSupplier == this.Supplier && a.MaterialType == this.MatType //&& a.EndCustomer == this.POHeader.EndCustCode
                                              select a).FirstOrDefault<PH.BasicInfo.BO.MaterialTypeDimension>();
                }
                return _materialTypeDimension;
            }
        }

        public string ItemWidthSpec
        {
            get
            {
                //PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                //PH.BasicInfo.BO.MaterialTypeDimension a1 = (from a in list.CurrentDataContext.MaterialTypeDimensions
                //                                            where a.ERPSupplier == this.Supplier && a.MaterialType == this.MatType && a.EndCustomer == this.POHeader.EndCustCode
                //                                            select a).FirstOrDefault<PH.BasicInfo.BO.MaterialTypeDimension>();
                //if (a1 != null)
                //{
                //    return a1.WidthSpec;
                //}

                //a1 = (from a in list.CurrentDataContext.MaterialTypeDimensions
                //      where a.ERPSupplier == this.Supplier && a.MaterialType == this.MatType
                //      select a).FirstOrDefault<PH.BasicInfo.BO.MaterialTypeDimension>();
                if (MaterialTypeDimension != null)
                {
                    return MaterialTypeDimension.WidthSpec;
                }

                return this.POHeader.SupplierProfile.WidthSpec;
            }
        }

        public string SampleTtlLeftItem { get; set; }

        public string GetSampleTtlLeftItem()
        {
            POPCDataContext context;
            if (this.CurrentDataContext == null)
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");
            }
            else
                context = this.CurrentDataContext as POPCDataContext;
            context.CommandTimeout = 1000;

            var aa = (from a in context.PODetails
                      where a.Company == this.Company && (a.VersionFlag ?? false) && a.ProjectNo == this.ProjectNo
                      select new { a.ItemCode }).Distinct();
            int ttl = aa.Count();

            var bb = (from a in context.POColorSizeDetails
                      where a.Company == this.Company && (a.VersionFlag ?? false) && a.PODetail.ProjectNo == this.ProjectNo
                      && a.POSKUOperates.Any(p => (p.Flag ?? false) && p.HandleType == Common.SampleApproval)
                      select new { a.ItemCode }).Distinct();
            int app = bb.Count();

            return string.Format("{0}/{1}", ttl - app, ttl);

        }

        //public string Currency
        //{
        //    get 
        //    {
        //        if (this.POHeader != null)
        //        {
        //            return this.POHeader.Currency;
        //        }
        //        else
        //        {
        //            return string.Empty;
        //        }
        //    }
        //}

        public string ClassCodeENDesc
        {
            get
            {
                return GetClassCodeDesc(this.ClassCode, "EN");
            }
        }
        public string ClassCodeCNDesc
        {
            get
            {
                return GetClassCodeDesc(this.ClassCode, "CN");
            }
        }
        private string GetClassCodeDesc(string classCode, string lang)
        {
            if (string.IsNullOrEmpty(classCode)) return "";

            DicList dic = new DicList();
            PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary(Common.ClassCodeDictionary, classCode);
            string s = dictionary == null ? "" : (lang == "CN" ? dictionary.Description : dictionary.DataName);
            //s = string.Format("{0} - {1}", classCode, s);
            return s;
        }


        public string ReplenishmentDesc
        {
            get
            {
                return GetReplenishmentDesc(this.Replenishment);
            }
        }
        private string GetReplenishmentDesc(string replenishment)
        {
            if (string.IsNullOrEmpty(replenishment)) return "";

            DicList dic = new DicList();
            PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary(Common.ReplenishmentDictionary, replenishment);
            string s = dictionary == null ? "" : dictionary.Description;
            return s;
        }

        #region POHeader

        //1.Header
        public DateTime? POIssueDate { get { return this.POHeader == null ? (DateTime?)null : this.POHeader.OrderDate; } }
        public DateTime? POReqDeliveryDate { get { return this.POHeader == null ? (DateTime?)null : this.POHeader.ShipmentDate; } }
        public string Factory { get { return this.POHeader == null ? "" : this.POHeader.Factory; } }
        public string PaymentTerms { get { return this.POHeader == null ? "" : this.POHeader.PaymentTerms; } }
        public string SupplierLocation { get { return this.POHeader == null ? "" : this.POHeader.LocationOfSuppFactoryDesc; } }
        public string EndCustCode { get { return this.POHeader == null ? "" : this.POHeader.EndCustCode; } }
        public string PurchaseOfficer { get { return this.POHeader == null ? "" : this.POHeader.PurchaseOfficer; } }
        public string Team { get { return this.POHeader == null ? "" : this.POHeader.Dept; } }

        public int? TimeFrame1 { get { return this.POHeader == null ? (int?)null : this.POHeader.TransitFrame; } }
        //public int? TimeFrame2 { get { return this.POHeader == null ? (int?)null : this.POHeader.TimeFrame2; } }
        public string Incoterms { get { return this.POHeader == null ? "" : this.POHeader.Incoterms; } }
        public string TransitModePO { get { return this.POHeader == null ? "" : this.POHeader.ShipMode; } }
        public string TransitPoint { get { return this.POHeader == null ? "" : this.POHeader.TransitPoint; } }
        public string TransitPointCode { get { return this.POHeader == null ? "" : this.POHeader.TransitPointCode; } }
        public string EndPoint
        {
            get
            {
                string s = this.POHeader == null ? "" : this.POHeader.EndPoint;
                if (string.IsNullOrEmpty(s)) return s;

                int i = s.IndexOf("/");
                if (i - 1 > 0)
                    s = s.Substring(0, i - 1);
                s = s.Replace("\"", "");
                return s;
            }
        }
        public string OrderClassDesc { get { return this.POHeader == null ? "" : this.POHeader.OrderClassDesc; } }
        #endregion
    }
    partial class POHeader : PH.Platform.BO.BaseEntity, PH.Platform.Email.BO.SendMail.ISendReport//,ICreatePOPDFToDB 
    {
        //根据Material Type 从 MIDc 中取 PO Form#, 由David加入 2023-04-09
        public string FormNo
        {
            get
            {
                PODetail detail = this.PODetails.FirstOrDefault();
                if (detail == null || string.IsNullOrEmpty(detail.ItemCode) || detail.ItemCode.Length < 3)
                {
                    return null;
                }

                string MaterialType = detail.ItemCode.Substring(0, 3);

                MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
                PH.MIDc.BO.MaterialType obj = MIDcDB.MaterialTypes.FirstOrDefault(p => p.MaterialType1 == MaterialType);

                if (obj == null)
                {
                    throw new Exception(string.Format("Not exits material type {0} in MIDc system, pls check!", MaterialType));
                    //return null;
                }

                return obj == null ? null : obj.SuppSizeCupElement;


                //    string Str = "";

                //    if (SupplierDimension == PODimension.Four)
                //    {
                //        Str = "4D";  //"4Dsm";
                //    }
                //    else if (SupplierDimension == PODimension.ThreeR)
                //    {
                //        Str = "3Dsr";
                //    }
                //    else if (SupplierDimension == PODimension.ThreeS)
                //    {
                //        Str = "2D";   //"2Dsw";
                //        if (IsSpecialSize)
                //        {
                //            Str = "2D" + this.PODetails.FirstOrDefault().POColorSizeDetails.FirstOrDefault().MIDcDetail.SingleRangeSize.ToLower();
                //        }
                //    }
                //    else
                //    {
                //        Str = "2Dw";
                //    }

                //    if (Str == "2Dss")
                //    {
                //        Str = "3Dss"; //"2Dsc";
                //    }


                //    return Str;
            }
        }


        ////由David加入 2022-03-14
        //POBasicInfo _POBasicInfo = null;
        //private POBasicInfo CurrentPOBasicInfo
        //{
        //    get
        //    {
        //        if (CurrentDataContext == null) { CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>(); }
        //        if (_POBasicInfo == null) { _POBasicInfo = (CurrentDataContext as POPCDataContext).POBasicInfos.FirstOrDefault(p => p.PONO == this.PONO); }
        //        return _POBasicInfo;
        //    }
        //    set
        //    {
        //        _POBasicInfo = value;
        //    }
        //}

        //public string BuyerCode
        //{
        //    get
        //    {
        //        return CurrentPOBasicInfo == null ? "" : CurrentPOBasicInfo.BuyerCode;
        //    }
        //    set
        //    {
        //        if (CurrentPOBasicInfo == null)
        //        {
        //            CurrentPOBasicInfo = new POBasicInfo();
        //            CurrentPOBasicInfo.PONO = this.PONO;
        //            CurrentPOBasicInfo.BuyerCode = value;
        //            (CurrentDataContext as POPCDataContext).POBasicInfos.InsertOnSubmit(CurrentPOBasicInfo);
        //            (CurrentDataContext as POPCDataContext).SubmitChanges();
        //        }
        //    }
        //}


        #region ISendReport Members
        public void Execute(MemoryStream stream)
        {
            try
            {
                string sql = " delete POPDF where Company={0} and PONO={1} and Version={2} and AmendmentNo={3}";
                sql += " Insert into POPDF (Company,PONO,Version,AmendmentNo,PDF) values ({0},{1},{2},{3},{4}) ";
                object[] oparams = new object[5];
                oparams[0] = this.Company;
                oparams[1] = this.PONO;
                oparams[2] = this.Version;
                oparams[3] = this.AmendmentNo;
                oparams[4] = stream.ToArray();
                POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1800;
                context.ExecuteCommand(sql, oparams);
            }
            catch
            { }
        }
        #endregion

        partial void OnCreated()
        {
            this.MoreBuyerSizeCup = false;
        }

        public string POSubject
        {
            get
            {
                if (this.POType == (int)PH.POPC.BO.POType.MIDcPO)
                    return "Purchase Order (Material Sample)";
                else
                {
                    if (this.IsScPO)
                        return "Sub-contracting Order";
                    else
                        return "Purchase Order";
                }
            }
        }
        public string POSuffixSubject
        {
            get
            {
                switch (this.OrderClass)
                {
                    case 2:
                        return "- Re-dyeing";
                    case 3:
                        return "for Sample Room";
                    default:
                        return "";
                }
            }
        }
        public string POSubjectCN
        {
            get
            {
                if (this.POType == (int)PH.POPC.BO.POType.MIDcPO)
                    return "樣 板 采 購 單";
                else
                {
                    if (this.IsScPO)
                        return "加 工 訂 單";
                    else
                        return "采   購   單";
                }
            }
        }
        public string POSuffixSubjectCN
        {
            get
            {
                switch (this.OrderClass)
                {
                    case 2:
                        return "- 花染";
                    case 3:
                        return "- 板房";
                    default:
                        return "";
                }
            }
        }
        public string POSubjectTH
        {
            get
            {
                if (this.POType == (int)PH.POPC.BO.POType.MIDcPO)
                    return "Purchase Order (Material Sample)";
                else
                {
                    if (this.IsScPO)
                        return "ออเดอร์ซับคอนแทรค";
                    else
                        return "ใบสั่งซื้อ";
                }
            }
        }
        public string POSuffixSubjectTH
        {
            get
            {
                switch (this.OrderClass)
                {
                    case 2:
                        return "- Re-dyeing";
                    case 3:
                        return "for Sample Room";
                    default:
                        return "";
                }
            }
        }

        public string ReportName
        {
            set;
            get;
        }
        public string PPNO
        {
            get
            {
                if (string.IsNullOrEmpty(this.ProjectNos))
                {
                    return PONO;
                }
                else
                {
                    return PONO + "--" + this.Projects + "--" + this.WorkOrderNos;
                }
            }
        }

        private int? _Choice = 0;
        public int? Choice
        {
            set { _Choice = value; }
            get { return _Choice; }
        }
        public string ProjectNos
        {
            get
            {
                string projects = string.Empty;
                if (this.PODetails != null)
                {
                    foreach (PH.POPC.BO.PODetail item in this.PODetails)
                    {
                        if (!string.IsNullOrEmpty(item.ProjectNo) && projects.Contains(item.ProjectNo) == false)
                        {
                            projects += item.ProjectNo.Trim() + ",";
                        }
                    }
                    if (projects.Length > 0) projects = projects.Substring(0, projects.Length - 1);
                }
                return projects;
            }
        }

        public string WorkOrderNos
        {
            get
            {
                string workOrderNos = string.Empty;
                var aa = (from a in this.PODetails
                          where string.IsNullOrEmpty(a.WorkOrderNo) == false
                          orderby a.OrderLine
                          select new { a.WorkOrderNo }).Distinct();
                foreach (var item in aa)
                {
                    workOrderNos += item.WorkOrderNo.Trim() + "/";
                }
                if (workOrderNos.Length > 1) workOrderNos = workOrderNos.Substring(0, workOrderNos.Length - 1);
                return workOrderNos;
            }
        }

        private string _POVersion;
        public string POVersion
        {
            get
            {
                _POVersion = string.Format("{0}.{1}", this._Version, this.AmendmentNo);
                return _POVersion;
            }
        }

        public string POTypeDesc
        {
            get
            {
                if (this.POType == 1)
                {
                    return "ERP PO ";
                }
                else
                {
                    return "PO";
                }
            }
        }
        private string _IsOutStanding;
        public string IsOutStanding
        {
            get
            {
                //if (this.POType == 1)
                //{
                //    this._IsOutStanding = (this.PHOutstandingQty ?? 0) > 0 ? "OutStanding" : "Completed";
                //}
                //else if (this.POType == 2)
                //{
                switch (this.Status)
                {
                    case "0":
                        this._IsOutStanding = "Completed";
                        break;
                    case "1":
                        this._IsOutStanding = "OutStanding";
                        break;
                    case "-1":
                        this._IsOutStanding = "Cancelled";
                        break;
                    default:
                        this._IsOutStanding = "OutStanding";
                        break;
                }


                if (this.Flag == "1")
                    this._IsOutStanding = "Cancelled";
                return this._IsOutStanding;
            }
        }

        //public string SupplierName { get; set; }
        //public string PaymentTerms { get; set; }
        //public string DeliveryTerm { get; set; }
        //public string AttnPerson { get; set; }
        //public string TelNumber { get; set; }
        //public string FaxNumber { get; set; }
        //public string SupplierAddress { get; set; }
        //public string Country { get; set; }
        //public string Currency { get ; set; }
        // PH.BasicInfo.BO.SupplierProfile sup;

        //private PH.BasicInfo.BO.SupplierProfile _supplierProfile;
        //public PH.BasicInfo.BO.SupplierProfile  SupplierProfile 
        //{
        //    set { this._supplierProfile=value;}
        //    get {return this._supplierProfile;}
        //}



        //private string _PaymentMethodDesc;
        public string PaymentMethodDesc
        {
            get
            {
                return this.PaymentTermENDesc;

                string payterm = string.Empty;
                if (this.POType == (int)PH.POPC.BO.POType.PO)
                {
                    //PHMonth_EnglishLong(ANextMonth)
                    if (string.IsNullOrEmpty(this.PaymentMethod) || string.IsNullOrEmpty(this.PaymentTermsType) || string.IsNullOrEmpty(this.PaymentTerms)) return string.Empty;

                    int ANextMonth = Convert.ToDateTime(this.OrderDate ?? DateTime.MinValue).AddMonths(1).Month;
                    string pmth = this.PaymentMethod.Trim(); //TTR
                    string pttp05 = this.PaymentTermsType.Trim(); //D
                    string pdays = string.Empty, EnMonth = string.Empty;
                    string[] Month = new string[]
                                { 
                                "January",
                                "February",
                                "March",
                                "April",
                                "May",
                                "June",
                                "July",
                                "August",
                                "September",
                                "October",
                                "November",
                                "December"
                                };

                    EnMonth = Month[ANextMonth - 1];
                    if (pttp05 != "")
                    {
                        pdays = this.PaymentTerms.Replace(pttp05, "");
                        if (pttp05 == "M")
                        {
                            pdays = ((Convert.ToInt16(pdays.Substring(0, 1)) - 1) * 30 + Convert.ToInt16(pdays.Substring(1, pdays.Length - 1))).ToString();
                        }
                    }

                    switch (pmth)
                    {
                        #region //LETTER OF CREDIT
                        case "LETTER OF CREDIT":
                            if ((pdays == "1") || (pdays == "0"))
                            {
                                payterm = "L/C at sight";
                            }
                            else
                            {
                                payterm = "L/C " + pdays + " days sight";
                            }
                            break;
                        #endregion
                        #region //CHEQUE
                        case "CHEQUE":
                            if (pttp05 == "M")
                            {
                                if (pdays == "1")
                                {
                                    payterm = "monthly settlement by cheque";
                                }
                                else if (pdays != "0")
                                {
                                    payterm = pdays + " days credit against monthly statement by cheque";
                                }
                                else
                                {
                                    payterm = "1st day of " + EnMonth + " credit against monthly statement by cheque";
                                }
                            }
                            else if (pttp05 == "D")
                            {
                                if ((pdays == "1") || (pdays == "0"))
                                {
                                    payterm = "payment on delivery by cheque";
                                }
                                else
                                {
                                    payterm = pdays + " days credit against invoice by cheque";
                                }
                            }
                            break;
                        #endregion
                        #region //default
                        default:
                            if (pttp05 == "M")
                            {
                                if (pdays == "1")
                                {
                                    payterm = "monthly settlement by " + pmth;
                                }
                                else if (pdays != "0")
                                {
                                    payterm = pdays + " days credit against monthly statement by " + pmth;
                                }
                                else
                                {
                                    payterm = "1st day of " + EnMonth + " credit against monthly statement by " + pmth;
                                }
                            }
                            else if (pttp05 == "D")
                            {
                                if ((pdays == "1") || (pdays == "0"))
                                {
                                    payterm = "payment on delivery by " + pmth;
                                }
                                else
                                {
                                    payterm = pdays + " days credit against invoice by " + pmth;
                                }

                            }
                            break;
                        #endregion
                    }
                }
                else
                {
                    //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    //string sql = string.Format("select Description from [PH.Platform.Misc].dbo.Misc_DataDictionary where DataType='PH.POPC.PaymentMethod' and DataCode='{0}' ", this.PaymentMethod);
                    //payterm = context.ExecuteQuery<string>(sql).FirstOrDefault();
                    //payterm = string.IsNullOrEmpty(payterm) ? this.PaymentMethod : payterm;

                    DicList dic = new DicList();
                    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.POPC.PaymentMethod", this.PaymentMethod);
                    payterm = dictionary == null ? this.PaymentMethod : dictionary.Description;
                    payterm = string.Format("{0} {1}", payterm, this.PaymentTermsDesc);

                }
                return payterm;
            }
        }


        private decimal _PHAmount;
        public decimal PHAmount
        {
            get
            {
                _PHAmount = 0;
                foreach (PODetail d in this.PODetails)
                {
                    _PHAmount += d.PHAmount;
                }
                return _PHAmount;
            }
        }

        private decimal _SuppAmount;
        public decimal SuppAmount
        {
            get
            {
                _SuppAmount = 0;
                foreach (PODetail d in this.PODetails)
                {
                    _SuppAmount += d.SuppAmount;
                }
                return _SuppAmount;
            }
        }


        //------Xsj20160415:為打印海關PO而添加以下代碼。-------  
        private decimal _SuppAmountForHSPO;
        public decimal SuppAmountForHSPO
        {
            get
            {
                _SuppAmountForHSPO = 0;
                foreach (PODetail d in this.PODetails)
                {
                    _SuppAmountForHSPO += d.SuppAmountForHSPO;
                }
                return _SuppAmountForHSPO;
            }
        }
        //-----------------------------------------------------

        #region VAT
        public bool HaveVAT
        {
            get
            {
                foreach (var item in this.PODetails)
                {
                    if ((item.VAT ?? 0) > 0) return true;
                }
                return false;
            }
        }

        public decimal? VAT
        {
            get
            {
                DicList list = new DicList();
                var a = list.GetDataDictionary("PH.POPC.VAT", this.Factory);
                if (a == null) return null;
                decimal? d = null;
                try
                {
                    d = Convert.ToDecimal(a.DataName);
                    return d;
                }
                catch
                {
                }
                return null;
                //return 0.07M;
            }
        }

        public decimal SuppAmountVAT
        {
            get
            {
                return SuppAmount * (VAT ?? 0) / 100;

            }
        }


        public decimal SuppAmountGrand
        {
            get
            {
                return SuppAmount * (1 + (VAT ?? 0) / 100);
            }
        }


        //------Xsj20160415:為打印海關PO而添加以下代碼。-------
        public decimal SuppAmountGrandForHSPO
        {
            get
            {
                return SuppAmountForHSPO * (1 + (VAT ?? 0) / 100);
            }
        }
        //-----------------------------------------------------
        #endregion

        private decimal _PHQty;
        public decimal PHQty
        {
            get
            {
                _PHQty = 0;
                foreach (PODetail d in this.PODetails)
                {
                    _PHQty += d.PHQty;
                }
                return _PHQty;
            }
        }

        private decimal _SuppQty;
        public decimal SuppQty
        {
            get
            {
                _SuppQty = 0;
                foreach (PODetail d in this.PODetails)
                {
                    _SuppQty += d.SuppQty;
                }
                return _SuppQty;
            }
        }

        public string OrderClassDesc
        {
            get
            {
                switch (this.OrderClass)
                {
                    case 1:
                        return "Default";
                    case 2:
                        return "Re-dyeing";
                    case 3:
                        return "Sample Yardage";
                    case 4:
                        return "Processing PO"; //Sub-contract PO
                    case 6:
                        return "Service Order";
                    case 8:
                        goto case 4;
                    default:
                        goto case 1;
                }

                //Default-1
                //Re-dyeing -2
                //PO for Sample-3
                //Processing PO 4,8
                //,(case when OrderClass=1 then 'Default'
                //      when OrderClass=2 then 'Re-dyeing'
                //      when OrderClass=3 then 'PO for Sample'
                //      when OrderClass=4 then 'Processing PO'
                //      when OrderClass=8 then 'Processing PO'
            }
        }

        public string OrderClassString
        {
            get
            {
                switch (this.OrderClass)
                {
                    //case 1:
                    //    return "Default";
                    case 2:
                        return " - Redye";
                    case 3:
                        return " - Sample Yardage";
                    case 4:
                        return " - Processing PO"; //Sub-contract PO
                    case 6:
                        return "  - Service Order";
                    case 8:
                        goto case 4;
                    default:
                        return "";
                }

                //                Default-1
                //Re-dyeing -2
                //PO for Sample-3
                //Processing PO 4,8
                //,(case when OrderClass=1 then 'Default'
                //      when OrderClass=2 then 'Re-dyeing'
                //      when OrderClass=3 then 'PO for Sample'
                //      when OrderClass=4 then 'Processing PO'
                //      when OrderClass=8 then 'Processing PO'
            }
        }


        //private string _CustStyleNo;
        //public string CustStyleNo
        //{
        //    get
        //    {
        //        _CustStyleNo = "";
        //        if (this.PODetails == null || this.PODetails.Count == 0) return _CustStyleNo;

        //        PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
        //        var aa = (from a in context.PODetails
        //                  where a.AmendmentNo == this.AmendmentNo
        //                  && a.Version == this.Version
        //                  && a.Company == this.Company
        //                  && a.PONO == this.PONO

        //                  select new { a.CustStyleNo }).Distinct();
        //        foreach (var d in aa)
        //        {
        //            if (!string.IsNullOrEmpty(d.CustStyleNo))
        //            {
        //                _CustStyleNo += (d.CustStyleNo + ",");
        //            }
        //        }
        //        return _CustStyleNo;
        //    }
        //}

        //private string _CustOrderNo;
        //public string CustOrderNo
        //{
        //    get
        //    {
        //        _CustOrderNo = "";
        //        if (this.PODetails == null || this.PODetails.Count == 0) return _CustOrderNo;
        //        PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
        //        var aa = (from a in context.PODetails
        //                  where a.AmendmentNo == this.AmendmentNo
        //                  && a.Version == this.Version
        //                  && a.Company == this.Company
        //                  && a.PONO == this.PONO
        //                  select new { a.CustOrderNo }).Distinct();
        //        foreach (var d in aa)
        //        {
        //            if (!string.IsNullOrEmpty(d.CustOrderNo))
        //            {
        //                _CustOrderNo += (d.CustOrderNo + ",");
        //            }
        //        }
        //        return _CustOrderNo;
        //    }
        //}


        public void SetSupplierOtherValue(PH.BasicInfo.BO.SupplierProfile sup)
        {
            this.Supplier = sup.ERPSupplier;
            this.SupplierName = sup.SupplierName;
            this.AttnPerson = sup.AttnPerson;
            this.TelNumber = sup.TEL;
            this.FaxNumber = sup.Fax;
            this.Currency = sup.Currency;
            this.PaymentTerms = sup.PaymentTerms;

            if (this.POType == (int)PH.POPC.BO.POType.POSticker)
            {
                this.ShipMode = sup.ShipMode;
                this.DeliveryTerm = this.Incoterms = sup.DeliveryTerms;
            }
            this.SupplierAddress = sup.Address;
            this.Country = sup.Country;
            this.Currency = sup.Currency;
            this.PaymentMethod = sup.PaymentMethod;
            this.Rate = GetRate(sup.Currency);

            #region Xsj20110323 add
            this.Email = sup.EMail;
            #endregion


        }

        private double? GetRate(string currency)
        {
            PH.BasicInfo.BO.BasicInfoDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            var Currencies = (from aa in context.Currencies where aa.Currency1 == Currency select aa).FirstOrDefault();
            if (Currencies == null)
            {
                return 0;
            }
            else
            {
                return Convert.ToDouble(Currencies.StdSellRate);
            }

        }

        private string _deliveryTermsDesc;
        public string DeliveryTermsDesc
        {
            get
            {
                if (this.POType == (int)PH.POPC.BO.POType.PO)
                    return this.IncotermsENDesc;
                else
                {
                    PH.BasicInfo.BO.IncotermList list = new PH.BasicInfo.BO.IncotermList();
                    PH.BasicInfo.BO.Incoterm incoterm = (from a in list.CurrentDataContext.Incoterms
                                                         where a.Code == this.Incoterms
                                                         select a).FirstOrDefault<PH.BasicInfo.BO.Incoterm>();
                    this._deliveryTermsDesc = incoterm == null ? this.Incoterms : incoterm.CHIDes;
                    return this._deliveryTermsDesc;
                }
                //OnDeliveryTerm();
                //return this._deliveryTermsDesc;
            }
            set { this._deliveryTermsDesc = value; }
        }

        private string _paymentTermsDesc;
        public string PaymentTermsDesc
        {
            get
            {
                if (this.POType == (int)PH.POPC.BO.POType.PO)
                {
                    this._paymentTermsDesc = PaymentMethodDesc;
                }
                else
                {
                    //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    //string sql = string.Format("select Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.MIDc.PaymentTerms' and DataCode='{0}' ", this.PaymentTerms);
                    //this._paymentTermsDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();

                    DicList dic = new DicList();
                    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.MIDc.PaymentTerms", this.PaymentTerms);
                    this._paymentTermsDesc = dictionary == null ? this.PaymentTerms : dictionary.Description;

                }
                return this._paymentTermsDesc;
            }
            set { this._paymentTermsDesc = value; }
        }

        private string _shipModeDesc;
        public string ShipModeDesc
        {
            get
            {
                //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                //string sql = string.Format("select Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.MIDc.ShipMode' and DataCode='{0}' ", this.ShipMode);
                //this._shipModeDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();
                //this._shipModeDesc = string.IsNullOrEmpty(this._shipModeDesc) ? this.ShipMode : this._shipModeDesc;
                //return this._shipModeDesc;

                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.MIDc.ShipMode", this.ShipMode);
                this._shipModeDesc = dictionary == null ? this.ShipMode : dictionary.Description;
                return this._shipModeDesc;
            }

        }

        #region Beneficiary & Agent

        public string Beneficiary { get { return this.SupplierProfile == null ? "--" : this.SupplierProfile.Beneficiary; } }
        public string BeneficiaryName
        {
            get
            {
                string name = "--";
                if (!string.IsNullOrEmpty(this.Beneficiary))
                {
                    PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                    PH.BasicInfo.BO.SupplierProfile sp = (from a in list.CurrentDataContext.SupplierProfiles
                                                          where a.ERPSupplier == this.Beneficiary || a.Supplier == this.Beneficiary
                                                          select a).FirstOrDefault<PH.BasicInfo.BO.SupplierProfile>();
                    if (sp != null) name = sp.SupplierName;
                    else name = this.Beneficiary;
                }
                return name;
            }
        }

        public string Agent { get { return this.SupplierProfile == null ? "--" : this.SupplierProfile.Agent; } }
        public string AgentName
        {
            get
            {
                string name = "--";
                if (!string.IsNullOrEmpty(this.Agent))
                {
                    PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                    PH.BasicInfo.BO.SupplierProfile sp = (from a in list.CurrentDataContext.SupplierProfiles
                                                          where a.ERPSupplier == this.Agent || a.Supplier == this.Agent
                                                          select a).FirstOrDefault<PH.BasicInfo.BO.SupplierProfile>();
                    if (sp != null) name = sp.SupplierName;
                    else name = this.Agent;
                }
                return name;
            }
        }
        #endregion

        private string _reportTitleDesc;
        public string ReportTitleDesc
        {
            get
            {
                //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                //string sql = string.Format("select Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.POPC.POCategory' and DataCode='{0}' ", this.MaterialCategory);
                //this._reportTitleDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();
                //return this._reportTitleDesc;

                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.POPC.POCategory", this.MaterialCategory);
                this._reportTitleDesc = dictionary == null ? this.MaterialCategory : dictionary.Description;
                return this._reportTitleDesc;

            }

        }
        partial void OnPaymentTermsChanged()
        {

            OnPaymentTerms();
            this.SendPropertyChanged("PaymentTermsDesc");
        }
        partial void OnDeliveryTermChanged()
        {
            //OnDeliveryTerm();
            //this.SendPropertyChanged("DeliveryTermsDesc");
        }
        private void OnPaymentTerms()
        {
            //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //string sql = string.Format("select Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.MIDc.PaymentTerms' and DataCode='{0}' ", this.PaymentTerms);
            //this._paymentTermsDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();

            DicList dic = new DicList();
            PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.MIDc.PaymentTerms", this.PaymentTerms);
            this._paymentTermsDesc = dictionary == null ? this.PaymentTerms : dictionary.Description;

        }
        private void OnDeliveryTerm()
        {
            //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //string sql = string.Format("select Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.MIDc.DeliveryTerms' and DataCode='{0}' ", this.DeliveryTerm);
            //this._deliveryTermsDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();
            //this._deliveryTermsDesc = string.IsNullOrEmpty(this._deliveryTermsDesc) ? this.DeliveryTerm : this._deliveryTermsDesc;

            DicList dic = new DicList();
            PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.MIDc.DeliveryTerms", this.Incoterms);
            this._deliveryTermsDesc = dictionary == null ? this.Incoterms : dictionary.Description;
        }
        private void OnShipMode()
        {
            //POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //string sql = string.Format("select Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.MIDc.ShipMode' and DataCode='{0}' ", this.ShipMode);
            //this._shipModeDesc = context.ExecuteQuery<string>(sql).FirstOrDefault();
            //this._shipModeDesc = string.IsNullOrEmpty(this._shipModeDesc) ? this.ShipMode : this._shipModeDesc;

            DicList dic = new DicList();
            PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.MIDc.ShipMode", this.ShipMode);
            this._shipModeDesc = dictionary == null ? this.ShipMode : dictionary.Description;
        }
        public string AttnPersonDesc
        {
            get
            {
                int i = 0;
                try
                {
                    i = Convert.ToInt32(this.AttnPerson);
                }
                catch
                {
                    return this.AttnPerson;
                }
                DicList dic = new DicList();
                string dataCode = string.Format("{0}{1}", this.Supplier.TrimEnd(), i);
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.SupplierAttn", dataCode);
                return dictionary == null ? "" : dictionary.Description;
            }

        }
        public string Projects
        {
            get
            {

                return this.ProjectNos;
            }
        }
        public string WorkOrders
        {
            get
            {
                return this.WorkOrderNos;
            }
        }
        public string MIDcDimensionDesc //3Ds, 3Dr, 4D
        {
            get
            {
                foreach (var item in this.PODetails)
                {
                    return item.MIDcDimensionDesc;
                }
                return "";

            }
        }
        public PODimension BuyerDimension
        {
            get
            {
                PODimension d = PODimension.None;
                foreach (var item in this.PODetails)
                {
                    if (string.IsNullOrEmpty(item.BuyerQtyDimension)) continue;

                    string s = item.BuyerQtyDimension.Substring(0, 1);
                    switch (s)
                    {
                        case "1": d = PODimension.One; break;
                        case "2": d = PODimension.Two; break;
                        case "3":
                            if (MIDcDimensionDesc == "3Ds") d = PODimension.ThreeS;
                            else d = PODimension.ThreeR;
                            //d = PODimension.ThreeR; 
                            break;
                        case "4": d = PODimension.Four; break;
                        default: d = PODimension.None; break;
                    }
                    break;
                }
                return d;
            }
        }
        public PODimension SupplierDimension
        {
            get
            {
                PODimension d = PODimension.None;
                foreach (var item in this.PODetails)
                {
                    if (string.IsNullOrEmpty(item.SuppQtyDimension)) continue;

                    string s = item.SuppQtyDimension.Substring(0, 1);
                    switch (s)
                    {
                        case "1": d = PODimension.One; break;
                        case "2": d = PODimension.Two; break;
                        case "3":
                            if (MIDcDimensionDesc == "3Ds") d = PODimension.ThreeS;
                            else d = PODimension.ThreeR;
                            //d = PODimension.ThreeR; 
                            break;
                        case "4": d = PODimension.Four; break;
                        default: d = PODimension.None; break;
                    }
                    break;
                }

                return d;
            }
        }
        public bool HaveSupplementSheet
        {
            get
            {
                bool haveSupplementSheet = false;
                foreach (var item in this.PODetails)
                {
                    haveSupplementSheet = (item.HaveSupplementSheet ?? false);
                    break;
                }
                return haveSupplementSheet;
            }
        }

        public bool MatrixIsOK
        {
            get
            {
                ////Xsj2016:filter Completed Order
                //if (this.Status == "0")
                //{
                //    return true;
                //}
                ////----------------------------------

                foreach (var d in this.PODetails)
                {
                    //ChandlerXiao:20160328 add to filte cancel orderlines 
                    if (!string.IsNullOrEmpty(d.Flag) || !(d.VersionFlag ?? false))
                    {
                        continue;
                    }
                    //-----------------------------------------------------
                    foreach (var c in d.POColorSizeDetails)
                    {
                        decimal qty = Math.Round((c.SupplierPOQty ?? 0), 1, MidpointRounding.AwayFromZero);//Convert.ToInt32(c.SupplierPOQty ?? 0);

                        decimal q1 = 0;
                        foreach (var m in c.POWireBoneMatrixes)
                        {
                            q1 += Math.Round((m.Qty ?? 0), 1, MidpointRounding.AwayFromZero);// Convert.ToInt32(m.Qty ?? 0);
                        }
                        //if (q1 == 0) 
                        //{
                        //    return false;
                        //}
                        //else if (qty != q1)
                        //{
                        //    return false;
                        //}
                        //Xsj20160509：更改以上代碼為以下代碼，實現顧慮掉POColorSizeDetail的Qty和POWireBoneMatrix的供應商Qty同時=0的情況。
                        if (qty != q1)
                        {
                            return false;
                        }
                    }
                }
                return true;
            }
        }
        public bool IsWireBoneMatrix
        {
            get
            {
                foreach (var d in this.PODetails)
                {
                    if (d.ItemCode.StartsWith("WIR") || d.ItemCode.StartsWith("BON") || d.ItemCode.StartsWith("BOE") || d.ItemCode.StartsWith("WIF"))
                    {
                        foreach (var c in d.POColorSizeDetails)
                        {
                            if (!string.IsNullOrEmpty(c.ColorCode) && !string.IsNullOrEmpty(c.SizeCode) && string.IsNullOrEmpty(c.FitCode))
                                return true;
                            else
                                return false;
                        }
                    }
                    else
                        return false;
                }
                return false;
            }
        }

        public string ItemWidthSpec
        {
            get
            {
                foreach (var item in this.PODetails)
                {
                    return item.ItemWidthSpec;
                }
                return this.SupplierProfile.WidthSpec;
            }
        }
        public string IncotermsENDesc { get { return string.Format("{0} ({1})", this.Incoterm == null ? "" : this.Incoterm.EngDes, this.Incoterms); } }
        public string IncotermsCNDesc { get { return this.IncotermsENDesc; } }
        public string IncotermsTHDesc { get { return this.IncotermsENDesc;/*string.Format("{0} ({1})", this.Incoterm == null ? "" : this.Incoterm.ThaiDesc, this.Incoterms); */} }

        private PH.BasicInfo.BO.SupplierProfile _supplierProfile;
        public PH.BasicInfo.BO.SupplierProfile SupplierProfile
        {
            get
            {
                if (_supplierProfile == null)
                {
                    PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
                    _supplierProfile = (from a in list.CurrentDataContext.SupplierProfiles
                                        where a.ERPSupplier == this.Supplier
                                        select a).FirstOrDefault<PH.BasicInfo.BO.SupplierProfile>();
                }

                return this._supplierProfile;
            }
        }

        public PH.BasicInfo.BO.IncontermsTransit IncontermsTransit
        {
            get
            {
                //PH.BasicInfo.BO.IncontermsTransit v = (from a in SupplierProfile.IncontermsTransits
                //                                       where a.ERPSupplier == this.Supplier
                //                                       && a.PHFactories == this.Factory
                //                                       && a.FromEffectivedDate <= this.OrderDate
                //                                       && a.IsLCL == true
                //                                       && a.LocationofSuppFactory == this.LocationOfSuppFactory
                //                                       select a).FirstOrDefault();
                //return v;

                PH.BasicInfo.BO.IncontermsTransit v = null;
                if (this.SupplierProfile != null)
                {
                    v = (from a in SupplierProfile.IncontermsTransits
                         where a.ERPSupplier == this.Supplier
                         && a.PHFactories == this.Factory
                         && a.FromEffectivedDate <= this.OrderDate
                         && a.IsLCL == true
                         && a.LocationofSuppFactory == this.LocationOfSuppFactory
                         select a).FirstOrDefault();
                }
                return v;
            }
        }

        //public TimeFrameII GetTimeFrameIIObject(DateTime? APODeliveryDate)
        //{
        //    BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
        //    int Count = db.TimeFrameIIs.Where(p => p.StartPoint == this.TimeFrameIIStartPoint && p.EndPoint == this.TimeFrameIIEndPoint && p.TransitMode == this.TransitMode2).Count();
        //    if (Count > 1)
        //    {
        //        string LogisticSeason = (APODeliveryDate.Value.Month >= 5 && APODeliveryDate.Value.Month <= 9) ? "Dry" : "Wet";
        //        TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == this.TimeFrameIIStartPoint && p.EndPoint == this.TimeFrameIIEndPoint &&
        //                          p.TransitMode == this.TransitMode2 && p.LogisticSeason == LogisticSeason);

        //        return obj;
        //    }
        //    else
        //    {
        //        TimeFrameII obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == this.TimeFrameIIStartPoint && p.EndPoint == this.TimeFrameIIEndPoint && p.TransitMode == this.TransitMode2);
        //        return obj;
        //    }
        //}

        //public int? TimeFrame2
        //{
        //    get
        //    {
        //        //由David修改算法
        //        TimeFrameII obj = GetTimeFrameIIObject(;
        //        return obj == null ? null : obj.LeadTimeDay;

        //        //BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
        //        //var obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == this.TimeFrameIIStartPoint &&
        //        //    p.EndPoint == this.TimeFrameIIEndPoint && p.TransitMode == this.TransitMode2);

        //        //return obj == null ? null : obj.LeadTimeDay;




        //        //BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
        //        //var obj6P = db.IncontermsTransits.FirstOrDefault(p => p.ERPSupplier == this.Supplier);
        //        //var obj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == obj6P.PointofDestination &&
        //        //    p.EndPoint == this.TimeFrameIIEndPoint &&
        //        //    p.TransitMode == this.TransitMode2);

        //        //return obj == null ? null : obj.LeadTimeDay;


        //        //if (this.IncontermsTransit == null) return 0;

        //        //PH.BasicInfo.BO.SupplierProfileList list = new PH.BasicInfo.BO.SupplierProfileList();
        //        //var TF = list.CurrentDataContext.EndPointFactoryFrames
        //        //    .Where(P => P.EndPointCode == this.IncontermsTransit.PointofDestination && P.PHFactory == this.IncontermsTransit.PHFactories &&
        //        //               (string.IsNullOrEmpty(this.TransitMode2) || P.TransitMode == this.TransitMode2)).Select(S => S.TimeFrame).FirstOrDefault();
        //        //return TF;
        //    }
        //}

        /// <summary>
        /// Time Frame II 的 Start Point, 相當於PO收貨終點的代碼，如：SLWHse, 由David增加 2022-05-05
        /// </summary>
        public string TimeFrameIIStartPoint
        {
            get
            {
                if (string.IsNullOrEmpty(this.EndPoint)) return "";

                string[] Strs = this.EndPoint.Split(new string[] { "&", "/" }, StringSplitOptions.RemoveEmptyEntries);
                try
                {
                    return Strs[0].Trim();
                }
                catch
                {
                    return "";
                }
            }
        }

        /// <summary>
        /// Time Frame II 的 End Point, 由David增加 2022-05-05
        /// </summary>
        public string TimeFrameIIEndPoint
        {
            get
            {
                return this.Factory == "BD" ? "RT" : "RM";
                //return this.Factory == "BD" ? "CLWHse" : "SLWHse";

            }
        }



        public PH.BasicInfo.BO.IncontermsTransitForMIDc IncontermsTransitForMIDc
        {
            get
            {
                //PH.BasicInfo.BO.IncontermsTransitForMIDc v = (from a in SupplierProfile.IncontermsTransitForMIDcs
                //                                              where a.ERPSupplier == this.Supplier
                //                                              && a.PHFactories == this.Factory
                //                                              && a.FromEffectivedDate <= this.OrderDate
                //                                              && a.IsLCL == true
                //                                              && a.LocationofSuppFactory == this.LocationOfSuppFactory
                //                                              select a).FirstOrDefault();

                //return v;


                PH.BasicInfo.BO.IncontermsTransitForMIDc v = null;
                if (this.SupplierProfile != null)
                {
                    v = (from a in SupplierProfile.IncontermsTransitForMIDcs
                         where a.ERPSupplier == this.Supplier
                         && a.PHFactories == this.Factory
                         && a.FromEffectivedDate <= this.OrderDate
                         && a.IsLCL == true
                         && a.LocationofSuppFactory == this.LocationOfSuppFactory
                         select a).FirstOrDefault();
                }

                return v;
            }
        }

        public PH.BasicInfo.BO.SupplierFactory SupplierFactory
        {
            get
            {
                //var v = (from a in SupplierProfile.SupplierFactories
                //         where a.ERPSupplier == this.Supplier
                //         && a.SupplierFactoryCode == this.LocationOfSuppFactory
                //         select a).FirstOrDefault();

                //return v;

                PH.BasicInfo.BO.SupplierFactory v = null;
                if (this.SupplierProfile != null)
                {
                    v = (from a in SupplierProfile.SupplierFactories
                         where a.ERPSupplier == this.Supplier
                             && a.SupplierFactoryCode == this.LocationOfSuppFactory
                         select a).FirstOrDefault<PH.BasicInfo.BO.SupplierFactory>();
                }
                return v;
            }
        }

        private PH.BasicInfo.BO.Incoterm _incoterm;
        public PH.BasicInfo.BO.Incoterm Incoterm
        {
            get
            {
                if (_incoterm == null)
                {
                    PH.BasicInfo.BO.IncotermList list = new PH.BasicInfo.BO.IncotermList();
                    _incoterm = (from a in list.CurrentDataContext.Incoterms
                                 where a.Code == this.Incoterms
                                 select a).FirstOrDefault<PH.BasicInfo.BO.Incoterm>();
                }

                return this._incoterm;
            }
        }

        public string TransitPointCode
        {
            get
            {
                if (Incoterm == null)
                    return "";

                //O-1P = Point of Origin
                //O-2P = Place of Origin
                //O-3P = Port of Origin
                //D-4P = Port of Destination
                //D-5P = Place of Destination
                //D-6P = Point of Destination

                if (Incoterm.PointOfOrigin ?? false)
                    return "O-1P";
                else if (Incoterm.PlaceOfOrigin ?? false)
                    return "O-2P";
                else if (Incoterm.PortOfOrigin ?? false)
                    return "O-3P";
                else if (Incoterm.PortOfDestination ?? false)
                    return "D-4P";
                else if (Incoterm.PlaceOfDestination ?? false)
                    return "D-5P";
                else if (Incoterm.PointOfDestination ?? false)
                    return "D-6P";

                return "";
            }
        }

        public PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey PointofDestination
        {
            get
            {
                string code = (this.POType == (int)PH.POPC.BO.POType.MIDcPO) ?
                    this.IncontermsTransitForMIDc.PointofDestination : this.IncontermsTransit.PointofDestination;
                PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKeyList list = new PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKeyList();

                var aa = (from a in list.CurrentDataContext.ForPointDeliveryofDestinationPHKeys
                          where a.Code == code
                          select a).FirstOrDefault<PH.BasicInfo.BO.ForPointDeliveryofDestinationPHKey>();

                return aa;
            }
        }

        public string TransitPointEN
        {
            get
            {
                if (this.Incoterm == null)
                    return this.TransitPoint;

                string s = string.Format("{0}:", this.Incoterm.TransitPointDescEN);
                return s;
            }
        }
        public string TransitPointCN
        {
            get
            {
                if (this.Incoterm == null)
                    return this.TransitPoint;

                string s = string.Format("{0}:", this.Incoterm.TransitPointDescCH);
                return s;
            }
        }
        public string TransitPointTH
        {
            get
            {
                if (this.Incoterm == null)
                    return this.TransitPoint;

                //string s = string.Format("{0}:\r\n  {1}", this.Incoterm.TransitPointDescTH, this.IncontermsTransit.IncotermsPointPort);
                string s = string.Format("{0}:", this.Incoterm.TransitPointDescTH);
                return s;
            }
        }

        public string IncotermsPointPort
        {
            get
            {
                string s = (this.POType == (int)PH.POPC.BO.POType.MIDcPO) ?
                    (this.IncontermsTransitForMIDc == null ? "" : this.IncontermsTransitForMIDc.IncotermsPointPort)
                    : (this.IncontermsTransit == null ? "" : this.IncontermsTransit.TransitPointRegionCode); //由David修改 2023-02-18
                //: (this.IncontermsTransit == null ? "" : this.IncontermsTransit.IncotermsPointPort);
                return s;
            }
        }

        public string LocationOfSuppFactoryDesc
        {
            get
            {
                //if (this.SupplierFactory == null)
                //    return this.LocationOfSuppFactory;

                return this.SupplierFactory == null ? this.LocationOfSuppFactory : this.SupplierFactory.Description;
            }
        }

        public string LocationOfSuppFactoryDescCN
        {
            get
            {
                //if (this.SupplierFactory == null)
                //    return this.LocationOfSuppFactory;

                return this.SupplierFactory == null ? this.LocationOfSuppFactory : this.SupplierFactory.DescriptionCN;
            }
        }


        public string EndPointCN
        {
            get
            {
                return this.EndPoint;
                if (this.PointofDestination == null)
                    return this.EndPoint;

                string s = this.EndPoint;
                if (PointofDestination != null)
                {
                    s = string.Format("{0}{1}{0} \\ {2}", "\"", PointofDestination.Name, PointofDestination.CHIDes);
                }

                return s;
            }
        }
        public string EndPointTH
        {
            get
            {
                return this.EndPoint;
                if (this.PointofDestination == null)
                    return this.EndPoint;

                string s = this.EndPoint;
                if (PointofDestination != null)
                {
                    s = string.Format("{0}{1}{0} \\ {2}", "\"", PointofDestination.Name, PointofDestination.ThaiDes);
                }

                return s;
            }
        }

        public string EndPointAddressCN
        {
            get
            {
                return this.EndPointAddress;
                //if (this.PointofDestination == null || IncontermsTransit == null)
                //    return this.EndPointAddress;

                //string s = this.EndPointAddress;
                //if (PointofDestination != null)
                //{
                //    s = PointofDestination.Code == "9" ? IncontermsTransit.ForwarderAddressCH : PointofDestination.CHIAddress;
                //}

                //return s;
            }
        }
        public string EndPointAddressTH
        {
            get
            {
                return this.EndPointAddress;
                //if (this.PointofDestination == null || IncontermsTransit == null)
                //    return this.EndPointAddress;

                //string s = this.EndPointAddress;
                //if (PointofDestination != null)
                //{
                //    s = PointofDestination.Code != "9" ? IncontermsTransit.ForwarderAddressTH : PointofDestination.ThaiAddress;
                //}

                //return s;
            }
        }

        public string PaymentTermENDesc
        {
            get
            {
                DicList list = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dd = list.GetDataDictionary("PH.MIDc.PaymentTerms", this.PaymentTerms);
                return dd == null ? this.PaymentTerms : string.Format("{0} ({1})", dd.Description, this.PaymentTerms);
            }
        }
        public string PaymentTermCNDesc
        {
            get
            {
                return this.PaymentTermENDesc;

                DicList list = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dd = list.GetDataDictionary("PH.MIDc.PaymentTerms", this.PaymentTerms + " C");
                return dd == null ? this.PaymentTerms : string.Format("{0} ({1})", dd.Description, this.PaymentTerms);
            }
        }

        public string TransitModeCN
        {
            get
            {
                return this.ShipMode;
                DicList list = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dd = list.GetDataDictionary("PH.POPC.TransitMode", this.ShipMode);
                return dd == null ? this.ShipMode : dd.DataName;
            }
        }
        public string TransitModeTH
        {
            get
            {
                return this.ShipMode;
                DicList list = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dd = list.GetDataDictionary("PH.POPC.TransitMode", this.ShipMode);
                return dd == null ? this.ShipMode : dd.Description;
            }
        }

        private PH.Platform.AuthMgr.BO.Auth_User GetUser(string username)
        {
            PH.Platform.AuthMgr.BO.DataListHelper helper = new PH.Platform.AuthMgr.BO.DataListHelper();
            PH.Platform.AuthMgr.BO.Auth_User user = helper.GetUserList().Where(p => p.UserName == username).FirstOrDefault();
            return user;
        }
        public string PurchaseOfficerEmail
        {
            get
            {
                if (this.POType == (int)PH.POPC.BO.POType.MIDcPO)
                {
                    if (!string.IsNullOrEmpty(this.PurchaseOfficer))
                    {
                        PH.Platform.AuthMgr.BO.Auth_User user = GetUser(this.PurchaseOfficer);

                        return (user != null) ? user.Email : "";
                    }
                    else
                    {
                        return "";
                    }
                }
                else
                {
                    DicList list = new DicList();
                    PH.Platform.Misc.BO.Misc_DataDictionary dd = list.GetDataDictionary("PH.POPC.PurchaseOfficerEmail", this.PurchaseOfficer);
                    return dd == null ? "" : dd.Description;
                }
            }
        }
        public string PurchaseOfficerAndEmail
        {
            get
            {
                return string.IsNullOrEmpty(PurchaseOfficerEmail) ? this.PurchaseOfficer : string.Format("{0} ({1})", this.PurchaseOfficer, this.PurchaseOfficerEmail);
            }
        }

        partial void OnLocationOfSuppFactoryChanging(string value)
        {
            if (!string.IsNullOrEmpty(value))
            {
                SupplierInfo info = DataAccess.GetSupplierInfo(this.Supplier, this.Factory, value, this.OrderDate.Value);
                if (info != null)
                {
                    this.ShipMode = info.ShipMode;
                    this.Incoterms = info.Incoterms;
                    this.TransitPoint = info.TransitPoint;
                    this.TransitFrame = info.TransitFrame;
                    this.EndPoint = info.EndPoint;
                    this.EndPointAddress = info.EndPointAddress;
                    this.DeliveryTerm = info.Incoterms;

                    //this.TransitMode2 = "Ocean";//Add by shulin 20210610 應Alice需求添加
                }
            }
        }

        //private void OnTransitMode2Changed() 
        //{

        //}


        public string SpecialNote
        {
            get
            {
                return (this.POType == (int)PH.POPC.BO.POType.MIDcPO) ?
                    (IncontermsTransitForMIDc == null ? "" :
                       ((this.Factory == "KB" && (this.Supplier == "RUEY" || this.Supplier == "RGNA")) ? IncontermsTransitForMIDc.SpecialNote : "")
                       )
                    : (IncontermsTransit == null ? "" :
                       ((this.Factory == "KB" && (this.Supplier == "RUEY" || this.Supplier == "RGNA")) ? IncontermsTransit.SpecialNote : "")
                       );

                //  if (IncontermsTransit == null) return "";

                //return (this.Factory == "KB" && (this.Supplier == "RUEY" || this.Supplier == "RGNA")) ? IncontermsTransit.SpecialNote : "";
            }
        }
        public string SpecialNote1
        {
            get
            {
                if (string.IsNullOrEmpty(SpecialNote)) return "";

                string[] c = new string[1] { "\r\n" };
                string[] ss = SpecialNote.Split(c, StringSplitOptions.None);
                if (ss.Length > 0) return ss[0];
                else return SpecialNote;
                //return SpecialNote.Substring(0, Math.Min(115, SpecialNote.Length));
            }
        }
        public string SpecialNote2
        {
            get
            {
                if (string.IsNullOrEmpty(SpecialNote)) return "";

                string[] c = new string[1] { "\r\n" };
                string[] ss = SpecialNote.Split(c, StringSplitOptions.None);
                if (ss.Length > 1) return ss[1];
                else return "";

                //if (string.IsNullOrEmpty(SpecialNote) || SpecialNote.Length < 115) return "";

                //return SpecialNote.Substring(115, SpecialNote.Length - 115);
            }
        }

        public bool HaveMultiPrice
        {
            get
            {
                foreach (var d in this.PODetails)
                {
                    foreach (var cs in d.POColorSizeDetails)
                    {
                        if (cs.MultiPrice ?? false)
                            return true;
                    }
                }
                return false;
            }
        }
        public bool HaveMultiProjectsByPrice
        {
            get
            {
                var aa = (from a in this.PODetails
                          from b in a.POColorSizeDetails
                          select new { a.ItemCode, b.ColorCode, b.Price, a.ProjectNo }).Distinct();

                var bb = from a in aa
                         group a by new { a.ItemCode, a.ColorCode, a.Price } into p
                         select new { p.Key, PrjCount = p.Count() };

                foreach (var b in bb)
                {
                    if (b.PrjCount > 1) return true;
                }
                return false;
            }
        }
        public bool IsMultiItems
        {
            get
            {
                var cc = (from b in this.PODetails
                          select new { b.ItemCode }
                         ).Distinct();
                return (cc.Count() > 1);
            }
        }
        public bool IsScPO
        {
            get
            {
                return (this.OrderClass == 4 || this.OrderClass == 8);

            }
        }
        public bool IsDometisMarkets
        {
            get
            {
                return (this.Currency == "RMB");
                //return (this.Currency == "RMB" && this.EndCustCode == "ESSE");


            }
        }
        public bool IsStyleColorDiff
        {
            get
            {
                foreach (var d in this.PODetails)
                {
                    foreach (var cs in d.POColorSizeDetails)
                    {
                        if (cs.StyleColorDiff == "!")
                            return true;
                    }
                }
                return false;
            }
        }
        public int NumOfProject
        {
            get
            {
                var aa = (from a in this.PODetails
                          where !string.IsNullOrEmpty(a.ProjectNo)
                          orderby a.OrderLine
                          select new { a.ProjectNo }).Distinct();
                return aa.Count();
            }
        }

        public string ClassCodeENDesc
        {
            get
            {
                return GetClassCodeDesc(this.ClassCode, "EN");
            }
        }
        public string ClassCodeCNDesc
        {
            get
            {
                return GetClassCodeDesc(this.ClassCode, "CN");
            }
        }
        private string GetClassCodeDesc(string classCode, string lang)
        {
            if (string.IsNullOrEmpty(classCode)) return "";

            DicList dic = new DicList();
            PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary(BO.Common.ClassCodeDictionary, classCode);
            string s = dictionary == null ? "" : (lang == "CN" ? dictionary.Description : dictionary.DataName);
            //s = string.Format("{0} - {1}", classCode, s);
            return s;
        }

        //2D only
        public bool IsSpecialSize
        {
            get
            {
                foreach (var d in this.PODetails)
                {
                    foreach (var c in d.POColorSizeDetails)
                    {
                        return c.IsSpecialSize;
                        //return (string.IsNullOrEmpty(c.FabricWidth));
                    }
                }
                return false;
            }
        }
        public string MIDcSpecSize
        {
            get
            {
                foreach (var d in this.PODetails)
                {
                    foreach (var c in d.POColorSizeDetails)
                    {
                        return c.MIDcSpecSize;
                    }
                }
                return "--";
            }
        }
        public string MIDcSpecSizeCN
        {
            get
            {
                foreach (var d in this.PODetails)
                {
                    foreach (var c in d.POColorSizeDetails)
                    {
                        return c.MIDcSpecSizeCN;
                    }
                }
                return "--";
            }
        }


        //Xsj20151005: Add for China Custom Control 
        public string TradeMethod
        {
            get
            {
                string val = "";
                if (this.SupplierProfile != null)
                {
                    val = this.SupplierProfile.TradeMethod;
                }

                //if (val == "C1" && val=="E1") //Xsj:直接进口
                //{
                //Xsj:直接进口的允许在打印时作国内结转
                //PH.POPC.BO.PODetail detailBO = this.PODetails.Where(p => p.ClassCode == "B").FirstOrDefault();
                //if (detailBO != null)
                //{
                //    val = "C2";
                //} 
                //}
                return val;
            }
        }

        //Xsj20160706:為外幣客戶裝人民幣結算（應對海關需求）而添加以下代碼---------
        //Xsj:出PO報表時，取MIDC的ERPSupplierName,以避免ERP的中文亂碼
        public string MIDcSupplierName
        {
            get
            {
                if (this._midcSupplierName == null && this.SupplierProfile != null)
                {
                    this._midcSupplierName = this.SupplierProfile.SupplierName;
                }
                return this._midcSupplierName;
            }
        }
        public string _midcSupplierName;

        //Xsj:出PO報表時，取MIDC的ERPSupplierAddress,以避免ERP的中文亂碼
        public string MIDcSupplierAddress
        {
            get
            {
                if (this._midcSupplierAddress == null && this.SupplierProfile != null)
                {
                    this._midcSupplierAddress = this.SupplierProfile.Address;
                }
                return this._midcSupplierAddress;
            }
        }
        public string _midcSupplierAddress;
        //-------------------------------------------------------------------------


        //-------------------------------------------

        ////------Xsj20160415:為打印海關PO而添加以下代碼。-------
        //public POHeader ClonePOHeader()
        //{
        //    POHeader newPOHeader = new POHeader();
        //    newPOHeader.Company = this.Company;
        //    newPOHeader.PONO = this.PONO;
        //    newPOHeader.Version = this.Version;
        //    newPOHeader.AmendmentNo = this.AmendmentNo;
        //    newPOHeader.OrderDate = this.OrderDate;
        //    newPOHeader.Supplier = this.Supplier;
        //    newPOHeader.Flag = this.Flag;
        //    newPOHeader.Dept = this.Dept;
        //    newPOHeader.PurchaseOfficerCode = this.PurchaseOfficerCode;
        //    newPOHeader.PurchaseOfficer = this.PurchaseOfficer;
        //    newPOHeader.OrderClass = this.OrderClass;
        //    newPOHeader.CustStyleNo = this.CustStyleNo;
        //    newPOHeader.CustOrderNo = this.CustOrderNo;
        //    newPOHeader.ERPAmendment = this.ERPAmendment;
        //    newPOHeader.Factory = this.Factory;
        //    newPOHeader.TotalReceivedQty = this.TotalReceivedQty;
        //    newPOHeader.Rate = this.Rate;
        //    newPOHeader.ShipmentDate = this.ShipmentDate;
        //    newPOHeader.ShipMode = this.ShipMode;
        //    newPOHeader.PaymentTermsType = this.PaymentTermsType;
        //    newPOHeader.PaymentMethod = this.PaymentMethod;
        //    newPOHeader.ReceivingAddress = this.ReceivingAddress;
        //    newPOHeader.AddtionalTermsAndConditions = this.AddtionalTermsAndConditions;
        //    newPOHeader.DeliveryAddress = this.DeliveryAddress;
        //    newPOHeader.SupplierName = this.SupplierName;
        //    newPOHeader.PaymentTerms = this.PaymentTerms;
        //    newPOHeader.DeliveryTerm = this.DeliveryTerm;
        //    newPOHeader.AttnPerson = this.AttnPerson;
        //    newPOHeader.TelNumber = this.TelNumber;
        //    newPOHeader.FaxNumber = this.FaxNumber;
        //    newPOHeader.SupplierAddress = this.SupplierAddress;
        //    newPOHeader.Destination = this.Destination;
        //    newPOHeader.Country = this.Country;
        //    newPOHeader.Currency = this.Currency;
        //    newPOHeader.POType = this.POType;
        //    newPOHeader.LastUpdateDtime = this.LastUpdateDtime;
        //    newPOHeader.PHOutstandingQty = this.PHOutstandingQty;
        //    newPOHeader.ReportTitle = this.ReportTitle;
        //    newPOHeader.MaterialCategory = this.MaterialCategory;
        //    newPOHeader.Status = this.Status;
        //    newPOHeader.PHAttnPerson = this.PHAttnPerson;
        //    newPOHeader.remark = this.remark;
        //    newPOHeader.VersionFlag = this.VersionFlag;
        //    newPOHeader.Email = this.Email;
        //    newPOHeader.Incoterms = this.Incoterms;
        //    newPOHeader.EndCustCode = this.EndCustCode;
        //    newPOHeader.LocationOfSuppFactory = this.LocationOfSuppFactory;
        //    newPOHeader.TransitPoint = this.TransitPoint;
        //    newPOHeader.EndPoint = this.EndPoint;
        //    newPOHeader.EndPointAddress = this.EndPointAddress;
        //    newPOHeader.TransitFrame = this.TransitFrame;
        //    newPOHeader.IndividualAssociate = this.IndividualAssociate;
        //    newPOHeader.MoreBuyerSizeCup = this.MoreBuyerSizeCup;
        //    newPOHeader.ClassCode = this.ClassCode;
        //    newPOHeader.FOC = this.FOC;
        //    newPOHeader.CurrencyFlag = this.CurrencyFlag;
        //    newPOHeader.PaymentTermFlag = this.PaymentTermFlag;
        //    newPOHeader.IncotermFlag = this.IncotermFlag;
        //    return newPOHeader;
        //}
        ////-----------------------------------------------------

    }

    partial class POPDF : PH.Platform.BO.BaseEntity
    {
        private string _POVersion;
        public string POVersion
        {
            get
            {
                _POVersion = string.Format("{0}.{1}", this._Version, this.AmendmentNo);
                return _POVersion;
            }
        }
    }
    partial class POTerm : PH.Platform.BO.BaseEntity
    {
        private string _POVersion;
        public string POVersion
        {
            get
            {
                _POVersion = string.Format("{0}.{1}", this._Version, this.AmendmentNo);
                return _POVersion;
            }
        }
        public string LanguageCode { get; set; }

    }
    partial class POColorStandard : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.ID = Guid.NewGuid();
            this.CreateDate = DateTime.Now;
        }
    }
    partial class POLadDipNoPO : PH.Platform.BO.BaseEntity
    {
        partial void OnCreated()
        {
            this.ID = Guid.NewGuid();
            this.CreateDate = DateTime.Now;
        }
    }
    partial class Term : PH.Platform.BO.BaseEntity
    { }
    partial class Report : PH.Platform.BO.BaseEntity
    { }
    partial class TestStatus : PH.Platform.BO.BaseEntity
    { }

    public class EmailInfo : PH.Platform.BO.BaseEntity
    {
        public string EmailTo { get; set; }
        public string Message { get; set; }
        public string ServerName { get; set; }
    }

    //[Table(Name = "dbo.ReportData")]
    //public class ReportData
    //{

    //    private int _Version;

    //    private int _AmendmentNo;

    //    private string _PONO;

    //    private string _SKU;

    //    private decimal _Qty;

    //    private string _LC;

    //    private string _Remark;

    //    private double _Rate;

    //    private string _DSIZ15;

    //    private string _Factory;

    //    private decimal _TotalReceivedQty;

    //    private int _Leadtime;

    //    private long _ID;

    //    private string _AddtionalTermsAndConditions;

    //    private string _Company;

    //    private int _OrderLine;

    //    private string _ItemCode;

    //    private string _ColorCode;

    //    private System.Nullable<System.DateTime> _OrderDate;

    //    private string _ProjectNo;

    //    private string _Supplier;

    //    private System.Nullable<System.DateTime> _ShipmentDate;

    //    private char _Flag;

    //    private string _ColorShade;

    //    private int _PHOutstandingQty;

    //    private decimal _Price;

    //    private System.Nullable<System.DateTime> _ConfirmETADate;

    //    private System.Nullable<System.DateTime> _HDOETA;

    //    private string _SupplierUom;

    //    private string _Currency;

    //    private string _PurchaseOfficer;

    //    private int _SizeID;

    //    private int _FitID;

    //    private string _SupplierReference;

    //    private string _Dept;

    //    private System.Nullable<System.DateTime> _WOStartDate;

    //    private int _OrderClass;

    //    private double _ConversionFactor;

    //    private string _PHUom;

    //    private string _WOStatus;

    //    private string _CustOrderNo;

    //    private string _CustStyleNo;

    //    private System.DateTime _GoodsInwardsDate;

    //    private string _WorkOrderNo;

    //    private decimal _Tolerance;

    //    private string _OvershipMemo;

    //    private string _Type;

    //    private string _Conf;

    //    private string _CustomerColorDesc;

    //    private string _DBZY;

    //    private string _DIPOK;

    //    private string _DIPRJ;

    //    private string _Hdl;

    //    private string _Lab;

    //    private string _labok;

    //    private string _ladiff;

    //    private string _ladt;

    //    private string _qc;

    //    private string _QN;

    //    private int _ReturnPOQty;

    //    private string _RWO;

    //    private string _strdt;

    //    private string _Subdt;

    //    private string _SUBMOK;

    //    private string _SUBMRJ;

    //    private string _Swatch;

    //    private string _swdiff;

    //    private string _swdt;

    //    private string _whkept;

    //    private System.Nullable<bool> _havePDF;

    //    private string _ERPSupplier;

    //    private string _SupplierName;

    //    private string _Address;

    //    private string _Address1;

    //    private string _Address2;

    //    private string _Address3;

    //    private string _TelNumber;

    //    private string _FaxNumber;

    //    private string _MobilePhone;

    //    private string _EMail;

    //    private string _Country;

    //    private string _Beneficiary;

    //    private string _Agent;

    //    private string _Active;

    //    private string _AttnPerson;

    //    private string _Remarks;

    //    private string _PaymentTerms;

    //    private string _CreditDays;

    //    private decimal _StandardDev;

    //    private decimal _TradingDis;

    //    private decimal _FurtherDis;

    //    private decimal _EstInterest;

    //    private decimal _BankCharge;

    //    private decimal _StockInterest;

    //    private decimal _Transportation;

    //    private decimal _InlandForwarderHandling;

    //    private decimal _InlandTransportation;

    //    private decimal _TransitLoadingTransportation;

    //    private decimal _Frieght;

    //    private decimal _Frieght_Air;

    //    private decimal _Frieght_Boat;

    //    private decimal _AdditionalFrieght;

    //    private decimal _SubCharge;

    //    private string _DeliveryTerm;

    //    private string _ShipMode;

    //    private string _DischargePort;

    //    private string _DeliveryMode;

    //    private decimal _TransitTimeTruck;

    //    private decimal _TransitTimeAir;

    //    private decimal _TransitTimeBoat;

    //    private string _MaterialGroup;

    //    private string _PaymentTermsType;

    //    private string _PaymentMethod;

    //    private string _ReceivingAddress;

    //    private string _DeliveryAddress;

    //    private System.Nullable<System.DateTime> _ETADate;

    //    private string _Specification;

    //    private string _AdditionalReason;

    //    private decimal _AdditionalCost;

    //    private string _Commodity;

    //    private string _SizeCode;

    //    private string _IntelSize;

    //    private string _FitCode;

    //    private string _Difference;

    //    private System.Nullable<decimal> _OvershipQty;

    //    private System.Nullable<int> _Con_Recount;

    //    private System.Nullable<System.DateTime> _Con_ConfirmDate;

    //    private System.Nullable<int> _Bul_Recount;

    //    private System.Nullable<System.DateTime> _Bul_OpDate;

    //    private string _Bul_Status;

    //    private string _Bul_SubmitNo;

    //    private System.Nullable<int> _Co1_Recount;

    //    private System.Nullable<System.DateTime> _Col_OpDate;

    //    private System.Nullable<int> _Dip_Recount;

    //    private System.Nullable<System.DateTime> _Dip_Opdate;

    //    private string _Dip_Status;

    //    private System.Nullable<decimal> _OvershipPercent;

    //    private System.Nullable<int> _DBZYNew;

    //    private System.Nullable<double> _AMount;

    //    private System.Nullable<double> _SuppQTY;

    //    private double _SuppOSQTY;

    //    private string _DdtStr;

    //    private int _DiffDate;

    //    private int _TransitLeadtime;

    //    public ReportData()
    //    {
    //    }

    //    [Column(Storage = "_Version", DbType = "Int NOT NULL")]
    //    public int Version
    //    {
    //        get
    //        {
    //            return this._Version;
    //        }
    //        set
    //        {
    //            if ((this._Version != value))
    //            {
    //                this._Version = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AmendmentNo", DbType = "Int NOT NULL")]
    //    public int AmendmentNo
    //    {
    //        get
    //        {
    //            return this._AmendmentNo;
    //        }
    //        set
    //        {
    //            if ((this._AmendmentNo != value))
    //            {
    //                this._AmendmentNo = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PONO", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
    //    public string PONO
    //    {
    //        get
    //        {
    //            return this._PONO;
    //        }
    //        set
    //        {
    //            if ((this._PONO != value))
    //            {
    //                this._PONO = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SKU", DbType = "VarChar(15) NOT NULL", CanBeNull = false)]
    //    public string SKU
    //    {
    //        get
    //        {
    //            return this._SKU;
    //        }
    //        set
    //        {
    //            if ((this._SKU != value))
    //            {
    //                this._SKU = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Qty", DbType = "Decimal(18,2) NOT NULL")]
    //    public decimal Qty
    //    {
    //        get
    //        {
    //            return this._Qty;
    //        }
    //        set
    //        {
    //            if ((this._Qty != value))
    //            {
    //                this._Qty = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_LC", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
    //    public string LC
    //    {
    //        get
    //        {
    //            return this._LC;
    //        }
    //        set
    //        {
    //            if ((this._LC != value))
    //            {
    //                this._LC = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Remark", DbType = "VarChar(2000) NOT NULL", CanBeNull = false)]
    //    public string Remark
    //    {
    //        get
    //        {
    //            return this._Remark;
    //        }
    //        set
    //        {
    //            if ((this._Remark != value))
    //            {
    //                this._Remark = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Rate", DbType = "Float NOT NULL")]
    //    public double Rate
    //    {
    //        get
    //        {
    //            return this._Rate;
    //        }
    //        set
    //        {
    //            if ((this._Rate != value))
    //            {
    //                this._Rate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DSIZ15", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
    //    public string DSIZ15
    //    {
    //        get
    //        {
    //            return this._DSIZ15;
    //        }
    //        set
    //        {
    //            if ((this._DSIZ15 != value))
    //            {
    //                this._DSIZ15 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Factory", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string Factory
    //    {
    //        get
    //        {
    //            return this._Factory;
    //        }
    //        set
    //        {
    //            if ((this._Factory != value))
    //            {
    //                this._Factory = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TotalReceivedQty", DbType = "Decimal(15,3) NOT NULL")]
    //    public decimal TotalReceivedQty
    //    {
    //        get
    //        {
    //            return this._TotalReceivedQty;
    //        }
    //        set
    //        {
    //            if ((this._TotalReceivedQty != value))
    //            {
    //                this._TotalReceivedQty = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Leadtime", DbType = "Int NOT NULL")]
    //    public int Leadtime
    //    {
    //        get
    //        {
    //            return this._Leadtime;
    //        }
    //        set
    //        {
    //            if ((this._Leadtime != value))
    //            {
    //                this._Leadtime = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ID", DbType = "BigInt NOT NULL")]
    //    public long ID
    //    {
    //        get
    //        {
    //            return this._ID;
    //        }
    //        set
    //        {
    //            if ((this._ID != value))
    //            {
    //                this._ID = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AddtionalTermsAndConditions", DbType = "VarChar(3000) NOT NULL", CanBeNull = false)]
    //    public string AddtionalTermsAndConditions
    //    {
    //        get
    //        {
    //            return this._AddtionalTermsAndConditions;
    //        }
    //        set
    //        {
    //            if ((this._AddtionalTermsAndConditions != value))
    //            {
    //                this._AddtionalTermsAndConditions = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Company", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
    //    public string Company
    //    {
    //        get
    //        {
    //            return this._Company;
    //        }
    //        set
    //        {
    //            if ((this._Company != value))
    //            {
    //                this._Company = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OrderLine", DbType = "Int NOT NULL")]
    //    public int OrderLine
    //    {
    //        get
    //        {
    //            return this._OrderLine;
    //        }
    //        set
    //        {
    //            if ((this._OrderLine != value))
    //            {
    //                this._OrderLine = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ItemCode", DbType = "VarChar(9) NOT NULL", CanBeNull = false)]
    //    public string ItemCode
    //    {
    //        get
    //        {
    //            return this._ItemCode;
    //        }
    //        set
    //        {
    //            if ((this._ItemCode != value))
    //            {
    //                this._ItemCode = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ColorCode", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
    //    public string ColorCode
    //    {
    //        get
    //        {
    //            return this._ColorCode;
    //        }
    //        set
    //        {
    //            if ((this._ColorCode != value))
    //            {
    //                this._ColorCode = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OrderDate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> OrderDate
    //    {
    //        get
    //        {
    //            return this._OrderDate;
    //        }
    //        set
    //        {
    //            if ((this._OrderDate != value))
    //            {
    //                this._OrderDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ProjectNo", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
    //    public string ProjectNo
    //    {
    //        get
    //        {
    //            return this._ProjectNo;
    //        }
    //        set
    //        {
    //            if ((this._ProjectNo != value))
    //            {
    //                this._ProjectNo = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Supplier", DbType = "VarChar(10) NOT NULL", CanBeNull = false)]
    //    public string Supplier
    //    {
    //        get
    //        {
    //            return this._Supplier;
    //        }
    //        set
    //        {
    //            if ((this._Supplier != value))
    //            {
    //                this._Supplier = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ShipmentDate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> ShipmentDate
    //    {
    //        get
    //        {
    //            return this._ShipmentDate;
    //        }
    //        set
    //        {
    //            if ((this._ShipmentDate != value))
    //            {
    //                this._ShipmentDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Flag", DbType = "VarChar(1) NOT NULL")]
    //    public char Flag
    //    {
    //        get
    //        {
    //            return this._Flag;
    //        }
    //        set
    //        {
    //            if ((this._Flag != value))
    //            {
    //                this._Flag = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ColorShade", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string ColorShade
    //    {
    //        get
    //        {
    //            return this._ColorShade;
    //        }
    //        set
    //        {
    //            if ((this._ColorShade != value))
    //            {
    //                this._ColorShade = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PHOutstandingQty", DbType = "Int NOT NULL")]
    //    public int PHOutstandingQty
    //    {
    //        get
    //        {
    //            return this._PHOutstandingQty;
    //        }
    //        set
    //        {
    //            if ((this._PHOutstandingQty != value))
    //            {
    //                this._PHOutstandingQty = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Price", DbType = "Decimal(18,4) NOT NULL")]
    //    public decimal Price
    //    {
    //        get
    //        {
    //            return this._Price;
    //        }
    //        set
    //        {
    //            if ((this._Price != value))
    //            {
    //                this._Price = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ConfirmETADate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> ConfirmETADate
    //    {
    //        get
    //        {
    //            return this._ConfirmETADate;
    //        }
    //        set
    //        {
    //            if ((this._ConfirmETADate != value))
    //            {
    //                this._ConfirmETADate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_HDOETA", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> HDOETA
    //    {
    //        get
    //        {
    //            return this._HDOETA;
    //        }
    //        set
    //        {
    //            if ((this._HDOETA != value))
    //            {
    //                this._HDOETA = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SupplierUom", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
    //    public string SupplierUom
    //    {
    //        get
    //        {
    //            return this._SupplierUom;
    //        }
    //        set
    //        {
    //            if ((this._SupplierUom != value))
    //            {
    //                this._SupplierUom = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Currency", DbType = "VarChar(5) NOT NULL", CanBeNull = false)]
    //    public string Currency
    //    {
    //        get
    //        {
    //            return this._Currency;
    //        }
    //        set
    //        {
    //            if ((this._Currency != value))
    //            {
    //                this._Currency = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PurchaseOfficer", DbType = "VarChar(25) NOT NULL", CanBeNull = false)]
    //    public string PurchaseOfficer
    //    {
    //        get
    //        {
    //            return this._PurchaseOfficer;
    //        }
    //        set
    //        {
    //            if ((this._PurchaseOfficer != value))
    //            {
    //                this._PurchaseOfficer = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SizeID", DbType = "Int NOT NULL")]
    //    public int SizeID
    //    {
    //        get
    //        {
    //            return this._SizeID;
    //        }
    //        set
    //        {
    //            if ((this._SizeID != value))
    //            {
    //                this._SizeID = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_FitID", DbType = "Int NOT NULL")]
    //    public int FitID
    //    {
    //        get
    //        {
    //            return this._FitID;
    //        }
    //        set
    //        {
    //            if ((this._FitID != value))
    //            {
    //                this._FitID = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SupplierReference", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
    //    public string SupplierReference
    //    {
    //        get
    //        {
    //            return this._SupplierReference;
    //        }
    //        set
    //        {
    //            if ((this._SupplierReference != value))
    //            {
    //                this._SupplierReference = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Dept", DbType = "VarChar(15) NOT NULL", CanBeNull = false)]
    //    public string Dept
    //    {
    //        get
    //        {
    //            return this._Dept;
    //        }
    //        set
    //        {
    //            if ((this._Dept != value))
    //            {
    //                this._Dept = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_WOStartDate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> WOStartDate
    //    {
    //        get
    //        {
    //            return this._WOStartDate;
    //        }
    //        set
    //        {
    //            if ((this._WOStartDate != value))
    //            {
    //                this._WOStartDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OrderClass", DbType = "Int NOT NULL")]
    //    public int OrderClass
    //    {
    //        get
    //        {
    //            return this._OrderClass;
    //        }
    //        set
    //        {
    //            if ((this._OrderClass != value))
    //            {
    //                this._OrderClass = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ConversionFactor", DbType = "Float NOT NULL")]
    //    public double ConversionFactor
    //    {
    //        get
    //        {
    //            return this._ConversionFactor;
    //        }
    //        set
    //        {
    //            if ((this._ConversionFactor != value))
    //            {
    //                this._ConversionFactor = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PHUom", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
    //    public string PHUom
    //    {
    //        get
    //        {
    //            return this._PHUom;
    //        }
    //        set
    //        {
    //            if ((this._PHUom != value))
    //            {
    //                this._PHUom = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_WOStatus", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
    //    public string WOStatus
    //    {
    //        get
    //        {
    //            return this._WOStatus;
    //        }
    //        set
    //        {
    //            if ((this._WOStatus != value))
    //            {
    //                this._WOStatus = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CustOrderNo", DbType = "VarChar(65) NOT NULL", CanBeNull = false)]
    //    public string CustOrderNo
    //    {
    //        get
    //        {
    //            return this._CustOrderNo;
    //        }
    //        set
    //        {
    //            if ((this._CustOrderNo != value))
    //            {
    //                this._CustOrderNo = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CustStyleNo", DbType = "VarChar(65) NOT NULL", CanBeNull = false)]
    //    public string CustStyleNo
    //    {
    //        get
    //        {
    //            return this._CustStyleNo;
    //        }
    //        set
    //        {
    //            if ((this._CustStyleNo != value))
    //            {
    //                this._CustStyleNo = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_GoodsInwardsDate", DbType = "DateTime NOT NULL")]
    //    public System.DateTime GoodsInwardsDate
    //    {
    //        get
    //        {
    //            return this._GoodsInwardsDate;
    //        }
    //        set
    //        {
    //            if ((this._GoodsInwardsDate != value))
    //            {
    //                this._GoodsInwardsDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_WorkOrderNo", DbType = "VarChar(7) NOT NULL", CanBeNull = false)]
    //    public string WorkOrderNo
    //    {
    //        get
    //        {
    //            return this._WorkOrderNo;
    //        }
    //        set
    //        {
    //            if ((this._WorkOrderNo != value))
    //            {
    //                this._WorkOrderNo = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Tolerance", DbType = "Decimal(5,2) NOT NULL")]
    //    public decimal Tolerance
    //    {
    //        get
    //        {
    //            return this._Tolerance;
    //        }
    //        set
    //        {
    //            if ((this._Tolerance != value))
    //            {
    //                this._Tolerance = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OvershipMemo", DbType = "VarChar(200) NOT NULL", CanBeNull = false)]
    //    public string OvershipMemo
    //    {
    //        get
    //        {
    //            return this._OvershipMemo;
    //        }
    //        set
    //        {
    //            if ((this._OvershipMemo != value))
    //            {
    //                this._OvershipMemo = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Type", DbType = "VarChar(6)")]
    //    public string Type
    //    {
    //        get
    //        {
    //            return this._Type;
    //        }
    //        set
    //        {
    //            if ((this._Type != value))
    //            {
    //                this._Type = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Conf", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string Conf
    //    {
    //        get
    //        {
    //            return this._Conf;
    //        }
    //        set
    //        {
    //            if ((this._Conf != value))
    //            {
    //                this._Conf = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CustomerColorDesc", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string CustomerColorDesc
    //    {
    //        get
    //        {
    //            return this._CustomerColorDesc;
    //        }
    //        set
    //        {
    //            if ((this._CustomerColorDesc != value))
    //            {
    //                this._CustomerColorDesc = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DBZY", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string DBZY
    //    {
    //        get
    //        {
    //            return this._DBZY;
    //        }
    //        set
    //        {
    //            if ((this._DBZY != value))
    //            {
    //                this._DBZY = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DIPOK", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string DIPOK
    //    {
    //        get
    //        {
    //            return this._DIPOK;
    //        }
    //        set
    //        {
    //            if ((this._DIPOK != value))
    //            {
    //                this._DIPOK = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DIPRJ", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string DIPRJ
    //    {
    //        get
    //        {
    //            return this._DIPRJ;
    //        }
    //        set
    //        {
    //            if ((this._DIPRJ != value))
    //            {
    //                this._DIPRJ = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Hdl", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string Hdl
    //    {
    //        get
    //        {
    //            return this._Hdl;
    //        }
    //        set
    //        {
    //            if ((this._Hdl != value))
    //            {
    //                this._Hdl = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Lab", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string Lab
    //    {
    //        get
    //        {
    //            return this._Lab;
    //        }
    //        set
    //        {
    //            if ((this._Lab != value))
    //            {
    //                this._Lab = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_labok", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string labok
    //    {
    //        get
    //        {
    //            return this._labok;
    //        }
    //        set
    //        {
    //            if ((this._labok != value))
    //            {
    //                this._labok = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ladiff", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string ladiff
    //    {
    //        get
    //        {
    //            return this._ladiff;
    //        }
    //        set
    //        {
    //            if ((this._ladiff != value))
    //            {
    //                this._ladiff = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ladt", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string ladt
    //    {
    //        get
    //        {
    //            return this._ladt;
    //        }
    //        set
    //        {
    //            if ((this._ladt != value))
    //            {
    //                this._ladt = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_qc", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string qc
    //    {
    //        get
    //        {
    //            return this._qc;
    //        }
    //        set
    //        {
    //            if ((this._qc != value))
    //            {
    //                this._qc = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_QN", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string QN
    //    {
    //        get
    //        {
    //            return this._QN;
    //        }
    //        set
    //        {
    //            if ((this._QN != value))
    //            {
    //                this._QN = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ReturnPOQty", DbType = "Int NOT NULL")]
    //    public int ReturnPOQty
    //    {
    //        get
    //        {
    //            return this._ReturnPOQty;
    //        }
    //        set
    //        {
    //            if ((this._ReturnPOQty != value))
    //            {
    //                this._ReturnPOQty = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_RWO", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string RWO
    //    {
    //        get
    //        {
    //            return this._RWO;
    //        }
    //        set
    //        {
    //            if ((this._RWO != value))
    //            {
    //                this._RWO = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_strdt", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string strdt
    //    {
    //        get
    //        {
    //            return this._strdt;
    //        }
    //        set
    //        {
    //            if ((this._strdt != value))
    //            {
    //                this._strdt = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Subdt", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string Subdt
    //    {
    //        get
    //        {
    //            return this._Subdt;
    //        }
    //        set
    //        {
    //            if ((this._Subdt != value))
    //            {
    //                this._Subdt = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SUBMOK", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string SUBMOK
    //    {
    //        get
    //        {
    //            return this._SUBMOK;
    //        }
    //        set
    //        {
    //            if ((this._SUBMOK != value))
    //            {
    //                this._SUBMOK = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SUBMRJ", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string SUBMRJ
    //    {
    //        get
    //        {
    //            return this._SUBMRJ;
    //        }
    //        set
    //        {
    //            if ((this._SUBMRJ != value))
    //            {
    //                this._SUBMRJ = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Swatch", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string Swatch
    //    {
    //        get
    //        {
    //            return this._Swatch;
    //        }
    //        set
    //        {
    //            if ((this._Swatch != value))
    //            {
    //                this._Swatch = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_swdiff", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string swdiff
    //    {
    //        get
    //        {
    //            return this._swdiff;
    //        }
    //        set
    //        {
    //            if ((this._swdiff != value))
    //            {
    //                this._swdiff = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_swdt", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string swdt
    //    {
    //        get
    //        {
    //            return this._swdt;
    //        }
    //        set
    //        {
    //            if ((this._swdt != value))
    //            {
    //                this._swdt = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_whkept", DbType = "VarChar(13) NOT NULL", CanBeNull = false)]
    //    public string whkept
    //    {
    //        get
    //        {
    //            return this._whkept;
    //        }
    //        set
    //        {
    //            if ((this._whkept != value))
    //            {
    //                this._whkept = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_havePDF", DbType = "Bit")]
    //    public System.Nullable<bool> havePDF
    //    {
    //        get
    //        {
    //            return this._havePDF;
    //        }
    //        set
    //        {
    //            if ((this._havePDF != value))
    //            {
    //                this._havePDF = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ERPSupplier", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string ERPSupplier
    //    {
    //        get
    //        {
    //            return this._ERPSupplier;
    //        }
    //        set
    //        {
    //            if ((this._ERPSupplier != value))
    //            {
    //                this._ERPSupplier = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SupplierName", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string SupplierName
    //    {
    //        get
    //        {
    //            return this._SupplierName;
    //        }
    //        set
    //        {
    //            if ((this._SupplierName != value))
    //            {
    //                this._SupplierName = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Address", DbType = "VarChar(100) NOT NULL", CanBeNull = false)]
    //    public string Address
    //    {
    //        get
    //        {
    //            return this._Address;
    //        }
    //        set
    //        {
    //            if ((this._Address != value))
    //            {
    //                this._Address = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Address1", DbType = "VarChar(100) NOT NULL", CanBeNull = false)]
    //    public string Address1
    //    {
    //        get
    //        {
    //            return this._Address1;
    //        }
    //        set
    //        {
    //            if ((this._Address1 != value))
    //            {
    //                this._Address1 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Address2", DbType = "VarChar(100) NOT NULL", CanBeNull = false)]
    //    public string Address2
    //    {
    //        get
    //        {
    //            return this._Address2;
    //        }
    //        set
    //        {
    //            if ((this._Address2 != value))
    //            {
    //                this._Address2 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Address3", DbType = "VarChar(100) NOT NULL", CanBeNull = false)]
    //    public string Address3
    //    {
    //        get
    //        {
    //            return this._Address3;
    //        }
    //        set
    //        {
    //            if ((this._Address3 != value))
    //            {
    //                this._Address3 = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TelNumber", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
    //    public string TelNumber
    //    {
    //        get
    //        {
    //            return this._TelNumber;
    //        }
    //        set
    //        {
    //            if ((this._TelNumber != value))
    //            {
    //                this._TelNumber = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_FaxNumber", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
    //    public string FaxNumber
    //    {
    //        get
    //        {
    //            return this._FaxNumber;
    //        }
    //        set
    //        {
    //            if ((this._FaxNumber != value))
    //            {
    //                this._FaxNumber = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_MobilePhone", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
    //    public string MobilePhone
    //    {
    //        get
    //        {
    //            return this._MobilePhone;
    //        }
    //        set
    //        {
    //            if ((this._MobilePhone != value))
    //            {
    //                this._MobilePhone = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_EMail", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string EMail
    //    {
    //        get
    //        {
    //            return this._EMail;
    //        }
    //        set
    //        {
    //            if ((this._EMail != value))
    //            {
    //                this._EMail = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Country", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string Country
    //    {
    //        get
    //        {
    //            return this._Country;
    //        }
    //        set
    //        {
    //            if ((this._Country != value))
    //            {
    //                this._Country = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Beneficiary", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string Beneficiary
    //    {
    //        get
    //        {
    //            return this._Beneficiary;
    //        }
    //        set
    //        {
    //            if ((this._Beneficiary != value))
    //            {
    //                this._Beneficiary = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Agent", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string Agent
    //    {
    //        get
    //        {
    //            return this._Agent;
    //        }
    //        set
    //        {
    //            if ((this._Agent != value))
    //            {
    //                this._Agent = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Active", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string Active
    //    {
    //        get
    //        {
    //            return this._Active;
    //        }
    //        set
    //        {
    //            if ((this._Active != value))
    //            {
    //                this._Active = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AttnPerson", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string AttnPerson
    //    {
    //        get
    //        {
    //            return this._AttnPerson;
    //        }
    //        set
    //        {
    //            if ((this._AttnPerson != value))
    //            {
    //                this._AttnPerson = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Remarks", DbType = "VarChar(250) NOT NULL", CanBeNull = false)]
    //    public string Remarks
    //    {
    //        get
    //        {
    //            return this._Remarks;
    //        }
    //        set
    //        {
    //            if ((this._Remarks != value))
    //            {
    //                this._Remarks = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PaymentTerms", DbType = "VarChar(500)")]
    //    public string PaymentTerms
    //    {
    //        get
    //        {
    //            return this._PaymentTerms;
    //        }
    //        set
    //        {
    //            if ((this._PaymentTerms != value))
    //            {
    //                this._PaymentTerms = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_CreditDays", DbType = "VarChar(20) NOT NULL", CanBeNull = false)]
    //    public string CreditDays
    //    {
    //        get
    //        {
    //            return this._CreditDays;
    //        }
    //        set
    //        {
    //            if ((this._CreditDays != value))
    //            {
    //                this._CreditDays = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_StandardDev", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal StandardDev
    //    {
    //        get
    //        {
    //            return this._StandardDev;
    //        }
    //        set
    //        {
    //            if ((this._StandardDev != value))
    //            {
    //                this._StandardDev = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TradingDis", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal TradingDis
    //    {
    //        get
    //        {
    //            return this._TradingDis;
    //        }
    //        set
    //        {
    //            if ((this._TradingDis != value))
    //            {
    //                this._TradingDis = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_FurtherDis", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal FurtherDis
    //    {
    //        get
    //        {
    //            return this._FurtherDis;
    //        }
    //        set
    //        {
    //            if ((this._FurtherDis != value))
    //            {
    //                this._FurtherDis = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_EstInterest", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal EstInterest
    //    {
    //        get
    //        {
    //            return this._EstInterest;
    //        }
    //        set
    //        {
    //            if ((this._EstInterest != value))
    //            {
    //                this._EstInterest = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_BankCharge", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal BankCharge
    //    {
    //        get
    //        {
    //            return this._BankCharge;
    //        }
    //        set
    //        {
    //            if ((this._BankCharge != value))
    //            {
    //                this._BankCharge = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_StockInterest", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal StockInterest
    //    {
    //        get
    //        {
    //            return this._StockInterest;
    //        }
    //        set
    //        {
    //            if ((this._StockInterest != value))
    //            {
    //                this._StockInterest = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Transportation", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal Transportation
    //    {
    //        get
    //        {
    //            return this._Transportation;
    //        }
    //        set
    //        {
    //            if ((this._Transportation != value))
    //            {
    //                this._Transportation = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_InlandForwarderHandling", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal InlandForwarderHandling
    //    {
    //        get
    //        {
    //            return this._InlandForwarderHandling;
    //        }
    //        set
    //        {
    //            if ((this._InlandForwarderHandling != value))
    //            {
    //                this._InlandForwarderHandling = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_InlandTransportation", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal InlandTransportation
    //    {
    //        get
    //        {
    //            return this._InlandTransportation;
    //        }
    //        set
    //        {
    //            if ((this._InlandTransportation != value))
    //            {
    //                this._InlandTransportation = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TransitLoadingTransportation", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal TransitLoadingTransportation
    //    {
    //        get
    //        {
    //            return this._TransitLoadingTransportation;
    //        }
    //        set
    //        {
    //            if ((this._TransitLoadingTransportation != value))
    //            {
    //                this._TransitLoadingTransportation = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Frieght", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal Frieght
    //    {
    //        get
    //        {
    //            return this._Frieght;
    //        }
    //        set
    //        {
    //            if ((this._Frieght != value))
    //            {
    //                this._Frieght = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Frieght_Air", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal Frieght_Air
    //    {
    //        get
    //        {
    //            return this._Frieght_Air;
    //        }
    //        set
    //        {
    //            if ((this._Frieght_Air != value))
    //            {
    //                this._Frieght_Air = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Frieght_Boat", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal Frieght_Boat
    //    {
    //        get
    //        {
    //            return this._Frieght_Boat;
    //        }
    //        set
    //        {
    //            if ((this._Frieght_Boat != value))
    //            {
    //                this._Frieght_Boat = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AdditionalFrieght", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal AdditionalFrieght
    //    {
    //        get
    //        {
    //            return this._AdditionalFrieght;
    //        }
    //        set
    //        {
    //            if ((this._AdditionalFrieght != value))
    //            {
    //                this._AdditionalFrieght = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SubCharge", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal SubCharge
    //    {
    //        get
    //        {
    //            return this._SubCharge;
    //        }
    //        set
    //        {
    //            if ((this._SubCharge != value))
    //            {
    //                this._SubCharge = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DeliveryTerm", DbType = "VarChar(500)")]
    //    public string DeliveryTerm
    //    {
    //        get
    //        {
    //            return this._DeliveryTerm;
    //        }
    //        set
    //        {
    //            if ((this._DeliveryTerm != value))
    //            {
    //                this._DeliveryTerm = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ShipMode", DbType = "VarChar(36) NOT NULL", CanBeNull = false)]
    //    public string ShipMode
    //    {
    //        get
    //        {
    //            return this._ShipMode;
    //        }
    //        set
    //        {
    //            if ((this._ShipMode != value))
    //            {
    //                this._ShipMode = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DischargePort", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string DischargePort
    //    {
    //        get
    //        {
    //            return this._DischargePort;
    //        }
    //        set
    //        {
    //            if ((this._DischargePort != value))
    //            {
    //                this._DischargePort = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DeliveryMode", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string DeliveryMode
    //    {
    //        get
    //        {
    //            return this._DeliveryMode;
    //        }
    //        set
    //        {
    //            if ((this._DeliveryMode != value))
    //            {
    //                this._DeliveryMode = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TransitTimeTruck", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal TransitTimeTruck
    //    {
    //        get
    //        {
    //            return this._TransitTimeTruck;
    //        }
    //        set
    //        {
    //            if ((this._TransitTimeTruck != value))
    //            {
    //                this._TransitTimeTruck = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TransitTimeAir", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal TransitTimeAir
    //    {
    //        get
    //        {
    //            return this._TransitTimeAir;
    //        }
    //        set
    //        {
    //            if ((this._TransitTimeAir != value))
    //            {
    //                this._TransitTimeAir = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TransitTimeBoat", DbType = "Decimal(15,4) NOT NULL")]
    //    public decimal TransitTimeBoat
    //    {
    //        get
    //        {
    //            return this._TransitTimeBoat;
    //        }
    //        set
    //        {
    //            if ((this._TransitTimeBoat != value))
    //            {
    //                this._TransitTimeBoat = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_MaterialGroup", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string MaterialGroup
    //    {
    //        get
    //        {
    //            return this._MaterialGroup;
    //        }
    //        set
    //        {
    //            if ((this._MaterialGroup != value))
    //            {
    //                this._MaterialGroup = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PaymentTermsType", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
    //    public string PaymentTermsType
    //    {
    //        get
    //        {
    //            return this._PaymentTermsType;
    //        }
    //        set
    //        {
    //            if ((this._PaymentTermsType != value))
    //            {
    //                this._PaymentTermsType = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_PaymentMethod", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
    //    public string PaymentMethod
    //    {
    //        get
    //        {
    //            return this._PaymentMethod;
    //        }
    //        set
    //        {
    //            if ((this._PaymentMethod != value))
    //            {
    //                this._PaymentMethod = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ReceivingAddress", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
    //    public string ReceivingAddress
    //    {
    //        get
    //        {
    //            return this._ReceivingAddress;
    //        }
    //        set
    //        {
    //            if ((this._ReceivingAddress != value))
    //            {
    //                this._ReceivingAddress = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DeliveryAddress", DbType = "VarChar(250) NOT NULL", CanBeNull = false)]
    //    public string DeliveryAddress
    //    {
    //        get
    //        {
    //            return this._DeliveryAddress;
    //        }
    //        set
    //        {
    //            if ((this._DeliveryAddress != value))
    //            {
    //                this._DeliveryAddress = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_ETADate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> ETADate
    //    {
    //        get
    //        {
    //            return this._ETADate;
    //        }
    //        set
    //        {
    //            if ((this._ETADate != value))
    //            {
    //                this._ETADate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Specification", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string Specification
    //    {
    //        get
    //        {
    //            return this._Specification;
    //        }
    //        set
    //        {
    //            if ((this._Specification != value))
    //            {
    //                this._Specification = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AdditionalReason", DbType = "VarChar(200) NOT NULL", CanBeNull = false)]
    //    public string AdditionalReason
    //    {
    //        get
    //        {
    //            return this._AdditionalReason;
    //        }
    //        set
    //        {
    //            if ((this._AdditionalReason != value))
    //            {
    //                this._AdditionalReason = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AdditionalCost", DbType = "Decimal(15,2) NOT NULL")]
    //    public decimal AdditionalCost
    //    {
    //        get
    //        {
    //            return this._AdditionalCost;
    //        }
    //        set
    //        {
    //            if ((this._AdditionalCost != value))
    //            {
    //                this._AdditionalCost = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Commodity", DbType = "VarChar(500) NOT NULL", CanBeNull = false)]
    //    public string Commodity
    //    {
    //        get
    //        {
    //            return this._Commodity;
    //        }
    //        set
    //        {
    //            if ((this._Commodity != value))
    //            {
    //                this._Commodity = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SizeCode", DbType = "VarChar(3) NOT NULL", CanBeNull = false)]
    //    public string SizeCode
    //    {
    //        get
    //        {
    //            return this._SizeCode;
    //        }
    //        set
    //        {
    //            if ((this._SizeCode != value))
    //            {
    //                this._SizeCode = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_IntelSize", DbType = "VarChar(30) NOT NULL", CanBeNull = false)]
    //    public string IntelSize
    //    {
    //        get
    //        {
    //            return this._IntelSize;
    //        }
    //        set
    //        {
    //            if ((this._IntelSize != value))
    //            {
    //                this._IntelSize = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_FitCode", DbType = "VarChar(2) NOT NULL", CanBeNull = false)]
    //    public string FitCode
    //    {
    //        get
    //        {
    //            return this._FitCode;
    //        }
    //        set
    //        {
    //            if ((this._FitCode != value))
    //            {
    //                this._FitCode = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Difference", DbType = "VarChar(50) NOT NULL", CanBeNull = false)]
    //    public string Difference
    //    {
    //        get
    //        {
    //            return this._Difference;
    //        }
    //        set
    //        {
    //            if ((this._Difference != value))
    //            {
    //                this._Difference = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OvershipQty", DbType = "Decimal(20,3)")]
    //    public System.Nullable<decimal> OvershipQty
    //    {
    //        get
    //        {
    //            return this._OvershipQty;
    //        }
    //        set
    //        {
    //            if ((this._OvershipQty != value))
    //            {
    //                this._OvershipQty = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Con_Recount", DbType = "Int")]
    //    public System.Nullable<int> Con_Recount
    //    {
    //        get
    //        {
    //            return this._Con_Recount;
    //        }
    //        set
    //        {
    //            if ((this._Con_Recount != value))
    //            {
    //                this._Con_Recount = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Con_ConfirmDate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> Con_ConfirmDate
    //    {
    //        get
    //        {
    //            return this._Con_ConfirmDate;
    //        }
    //        set
    //        {
    //            if ((this._Con_ConfirmDate != value))
    //            {
    //                this._Con_ConfirmDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Bul_Recount", DbType = "Int")]
    //    public System.Nullable<int> Bul_Recount
    //    {
    //        get
    //        {
    //            return this._Bul_Recount;
    //        }
    //        set
    //        {
    //            if ((this._Bul_Recount != value))
    //            {
    //                this._Bul_Recount = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Bul_OpDate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> Bul_OpDate
    //    {
    //        get
    //        {
    //            return this._Bul_OpDate;
    //        }
    //        set
    //        {
    //            if ((this._Bul_OpDate != value))
    //            {
    //                this._Bul_OpDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Bul_Status", DbType = "VarChar(20)")]
    //    public string Bul_Status
    //    {
    //        get
    //        {
    //            return this._Bul_Status;
    //        }
    //        set
    //        {
    //            if ((this._Bul_Status != value))
    //            {
    //                this._Bul_Status = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Bul_SubmitNo", DbType = "VarChar(100)")]
    //    public string Bul_SubmitNo
    //    {
    //        get
    //        {
    //            return this._Bul_SubmitNo;
    //        }
    //        set
    //        {
    //            if ((this._Bul_SubmitNo != value))
    //            {
    //                this._Bul_SubmitNo = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Co1_Recount", DbType = "Int")]
    //    public System.Nullable<int> Co1_Recount
    //    {
    //        get
    //        {
    //            return this._Co1_Recount;
    //        }
    //        set
    //        {
    //            if ((this._Co1_Recount != value))
    //            {
    //                this._Co1_Recount = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Col_OpDate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> Col_OpDate
    //    {
    //        get
    //        {
    //            return this._Col_OpDate;
    //        }
    //        set
    //        {
    //            if ((this._Col_OpDate != value))
    //            {
    //                this._Col_OpDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Dip_Recount", DbType = "Int")]
    //    public System.Nullable<int> Dip_Recount
    //    {
    //        get
    //        {
    //            return this._Dip_Recount;
    //        }
    //        set
    //        {
    //            if ((this._Dip_Recount != value))
    //            {
    //                this._Dip_Recount = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Dip_Opdate", DbType = "DateTime")]
    //    public System.Nullable<System.DateTime> Dip_Opdate
    //    {
    //        get
    //        {
    //            return this._Dip_Opdate;
    //        }
    //        set
    //        {
    //            if ((this._Dip_Opdate != value))
    //            {
    //                this._Dip_Opdate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_Dip_Status", DbType = "VarChar(20)")]
    //    public string Dip_Status
    //    {
    //        get
    //        {
    //            return this._Dip_Status;
    //        }
    //        set
    //        {
    //            if ((this._Dip_Status != value))
    //            {
    //                this._Dip_Status = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_OvershipPercent", DbType = "Decimal(38,19)")]
    //    public System.Nullable<decimal> OvershipPercent
    //    {
    //        get
    //        {
    //            return this._OvershipPercent;
    //        }
    //        set
    //        {
    //            if ((this._OvershipPercent != value))
    //            {
    //                this._OvershipPercent = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DBZYNew", DbType = "Int")]
    //    public System.Nullable<int> DBZYNew
    //    {
    //        get
    //        {
    //            return this._DBZYNew;
    //        }
    //        set
    //        {
    //            if ((this._DBZYNew != value))
    //            {
    //                this._DBZYNew = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_AMount", DbType = "Float")]
    //    public System.Nullable<double> AMount
    //    {
    //        get
    //        {
    //            return this._AMount;
    //        }
    //        set
    //        {
    //            if ((this._AMount != value))
    //            {
    //                this._AMount = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SuppQTY", DbType = "Float")]
    //    public System.Nullable<double> SuppQTY
    //    {
    //        get
    //        {
    //            return this._SuppQTY;
    //        }
    //        set
    //        {
    //            if ((this._SuppQTY != value))
    //            {
    //                this._SuppQTY = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_SuppOSQTY", DbType = "Float NOT NULL")]
    //    public double SuppOSQTY
    //    {
    //        get
    //        {
    //            return this._SuppOSQTY;
    //        }
    //        set
    //        {
    //            if ((this._SuppOSQTY != value))
    //            {
    //                this._SuppOSQTY = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DdtStr", DbType = "VarChar(18)")]
    //    public string DdtStr
    //    {
    //        get
    //        {
    //            return this._DdtStr;
    //        }
    //        set
    //        {
    //            if ((this._DdtStr != value))
    //            {
    //                this._DdtStr = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_DiffDate", DbType = "Int NOT NULL")]
    //    public int DiffDate
    //    {
    //        get
    //        {
    //            return this._DiffDate;
    //        }
    //        set
    //        {
    //            if ((this._DiffDate != value))
    //            {
    //                this._DiffDate = value;
    //            }
    //        }
    //    }

    //    [Column(Storage = "_TransitLeadtime", DbType = "Int NOT NULL")]
    //    public int TransitLeadtime
    //    {
    //        get
    //        {
    //            return this._TransitLeadtime;
    //        }
    //        set
    //        {
    //            if ((this._TransitLeadtime != value))
    //            {
    //                this._TransitLeadtime = value;
    //            }
    //        }
    //    }

    //    public string NewVersion
    //    {
    //        get
    //        {
    //            return this.Version.ToString() + "." + this.AmendmentNo.ToString();
    //        }
    //    }
    //    public bool IsOutStanding
    //    {
    //        get
    //        {
    //            return (this.PHOutstandingQty > 0);
    //        }
    //    }


    //    public string DifferenceDate
    //    {

    //        get
    //        {
    //            string msg = string.Empty;
    //            if (this.ConfirmETADate == null || this.HDOETA == null)
    //            {
    //                msg = string.Empty;
    //            }
    //            else
    //            {
    //                TimeSpan ts0 = (DateTime)this.ConfirmETADate - (DateTime)this.HDOETA;
    //                int days = ts0.Days;
    //                string str = days > 0 ? "Move up" : "Delay";//提前 遲期
    //                string week = "Week";
    //                days = Math.Abs(days);
    //                if (days == 0) msg = "On Time";// "達標如期返料";
    //                else if (days >= 1 && days <= 7) msg = string.Format("{0} 1 {1}", str, week);//  str + "1個星期返料";
    //                else if (days >= 8 && days <= 14) msg = string.Format("{0} 2 {1}", str, week);//  str + "2個星期返料";
    //                else if (days >= 15 && days <= 21) msg = string.Format("{0} 3 {1}", str, week);//  str + "3個星期返料";
    //                else if (days >= 22 && days <= 28) msg = string.Format("{0} 4 {1}", str, week);//  str + "4個星期返料";
    //                else if (days >= 29) msg = string.Format("{0} {1}", str, "Over 1 month");//  str + "1個月以上返料";
    //            }
    //            return msg;
    //        }
    //    }
    //}

    public partial class View_Level1ColorDependent : PH.Platform.BO.BaseEntity
    {

        private decimal? _supplierPOQty;
        public decimal? SupplierPOQty
        {
            get
            {
                return this.Qty.HasValue ? decimal.Round((this.Qty ?? 0) / Convert.ToDecimal(this.ConversionFactor), 1, MidpointRounding.AwayFromZero) : (decimal?)null;
            }
            set { _supplierPOQty = value; this.Qty = decimal.Round((_supplierPOQty ?? 0) * Convert.ToDecimal(this.ConversionFactor), 2, MidpointRounding.AwayFromZero); }
        }
        public decimal SupplierOutstandingQty
        {

            get { return (this.PHOutstandingQty ?? 0) / Convert.ToDecimal(this.ConversionFactor); }
        }
        public decimal POBalancePercent
        {
            get { return (Qty ?? 0) == 0 ? 0 : (this.PHOutstandingQty ?? 0) / (Qty ?? 0); }
            set { value = 0; }
        }

        //public int? BulkNumOfBatch
        //{
        //    get
        //    {
        //        var aa = (from a in this.BulkSubmits
        //                  where !string.IsNullOrEmpty(a.SubmitNo)
        //                  select new { a.SubmitNo }).Distinct();
        //        return aa.Count();
        //    }
        //}
        //public double? BulkTotalAppQty
        //{
        //    get
        //    {
        //        var aa = (from a in this.BulkSubmits
        //                  where a.Status == "App." || a.Status == "Re-App."
        //                  select a).Sum(q => q.Qty);
        //        return aa;
        //    }
        //}

        public DateTime? DipDropDeadDate
        {
            get
            {
                //PO Delivery Date - Time Frame 1 (day) - Time Frame 2 (day) - 45 day
                if (this.PODeliveryDate.HasValue)
                {
                    if (!string.IsNullOrEmpty(this.LadDipOption) && this.LadDipOption != "D")
                        return this.PODeliveryDate.Value.AddDays(-(this.TimeFrame1 ?? 0) - (this.TimeFrame2 ?? 0) - 45);
                }
                return null;
            }
        }
        public DateTime? BulkDropDeadDate
        {
            get
            {
                //PO Delivery Date - Time Frame 1 (day) - Time Frame 2 (day) - 15 day
                if (this.PODeliveryDate.HasValue)
                {
                    return this.PODeliveryDate.Value.AddDays(-(this.TimeFrame1 ?? 0) - (this.TimeFrame2 ?? 0) - 15);
                }
                return null;
            }
        }

        public string EndPointHeader
        {
            get
            {
                string s = this.EndPoint;
                if (string.IsNullOrEmpty(s)) return s;

                int i = s.IndexOf("/");
                if (i - 1 > 0)
                    s = s.Substring(0, i - 1);
                return s;
            }
        }
    }

    public partial class View_POPC_PUR //: PH.Platform.BO.BaseEntity
    {

        public string DifferenceDate1
        {
            get
            {
                string msg = string.Empty;
                if (this.ConfirmETADate == null || this.HDOETA == null)
                {
                    msg = string.Empty;
                }
                else
                {
                    TimeSpan ts0 = (DateTime)this.ConfirmETADate - (DateTime)this.HDOETA;
                    int days = ts0.Days;
                    string str = days > 0 ? "Move up" : "Delay";//提前 遲期
                    string week = "Week";
                    days = Math.Abs(days);
                    if (days == 0) msg = "On Time";// "達標如期返料";
                    else if (days >= 1 && days <= 7) msg = string.Format("{0} 1 {1}", str, week);//  str + "1個星期返料";
                    else if (days >= 8 && days <= 14) msg = string.Format("{0} 2 {1}", str, week);//  str + "2個星期返料";
                    else if (days >= 15 && days <= 21) msg = string.Format("{0} 3 {1}", str, week);//  str + "3個星期返料";
                    else if (days >= 22 && days <= 28) msg = string.Format("{0} 4 {1}", str, week);//  str + "4個星期返料";
                    else if (days >= 29) msg = string.Format("{0} {1}", str, "Over 1 month");//  str + "1個月以上返料";
                }
                return msg;
            }
        }
        public string DifferenceDateString(string language)
        {
            string msg;
            int languageIndex;

            switch (language)
            {
                case "EN":
                    languageIndex = 0;
                    break;
                case "ZH":
                    languageIndex = 2;
                    break;

                default:
                    languageIndex = 0;
                    break;
            }

            msg = string.Empty;
            if (this.ConfirmETADate == null || this.HDOETA == null)
            {
                msg = string.Empty;
            }
            else
            {
                TimeSpan ts0 = (DateTime)this.ConfirmETADate - (DateTime)this.HDOETA;
                int days = ts0.Days;
                //double iDBZYNew = Convert.ToDouble(val);
                string str = (days > 0) ? POPCLanguage.LMoveup[languageIndex] : POPCLanguage.LDelay[languageIndex];
                days = Math.Abs(days);
                if (days == 0) msg = POPCLanguage.LOnTime[languageIndex];// "達標如期返料";
                else if (days >= 1 && days <= 7) msg = string.Format("{0} 1 {1}", str, POPCLanguage.LWeek[languageIndex]);// str + "1個星期返料";
                else if (days >= 8 && days <= 14) msg = string.Format("{0} 2 {1}", str, POPCLanguage.LWeek[languageIndex]);//  str + "2個星期返料";
                else if (days >= 15 && days <= 21) msg = string.Format("{0} 3 {1}", str, POPCLanguage.LWeek[languageIndex]);//  str + "3個星期返料";
                else if (days >= 22 && days <= 28) msg = string.Format("{0} 4 {1}", str, POPCLanguage.LWeek[languageIndex]);//  str + "4個星期返料";
                else if (days >= 29) msg = string.Format("{0} {1}", str, POPCLanguage.LOverOneMonth[languageIndex]);//  str + "1個月以上返料";
            }
            return msg;

        }
        public bool POHeaderFlag { get; set; }
        public bool PODetailFlag { get; set; }
        public bool POColorSizeDetailFlag { get; set; }
        public System.Nullable<DateTime> ConfirmMaterialDate
        {
            get
            {
                if (this.ConfirmETADate == null)
                {
                    return null;
                }
                else
                {
                    int days = (this.TransitFrame ?? 0) + (this.TimeFrame2 ?? 0);
                    return this.ConfirmETADate.Value.AddDays(days);
                }
            }
        }

        public System.Nullable<DateTime> MaterialStandbyDate1
        {
            get
            {
                if (this.FtyDate1 == null)
                {
                    return null;
                }
                else
                {
                    int days = (this.TimeFrame2 ?? 0);
                    return this.FtyDate1.Value.AddDays(days);
                }
            }
        }

        public System.Nullable<DateTime> MaterialStandbyDate2
        {
            get
            {
                if (this.FtyDate2 == null)
                {
                    return null;
                }
                else
                {
                    int days = (this.TimeFrame2 ?? 0);
                    return this.FtyDate2.Value.AddDays(days);
                }
            }
        }
        public System.Nullable<DateTime> MaterialStandbyDate3
        {
            get
            {
                if (this.FtyDate3 == null)
                {
                    return null;
                }
                else
                {
                    int days = (this.TimeFrame2 ?? 0);
                    return this.FtyDate3.Value.AddDays(days);
                }
            }
        }

        public System.Nullable<DateTime> MaterialStandbyDate4
        {
            get
            {
                if (this.FtyDate4 == null)
                {
                    return null;
                }
                else
                {
                    int days = (this.TimeFrame2 ?? 0);
                    return this.FtyDate4.Value.AddDays(days);
                }
            }
        }

        public System.Nullable<double> MaterialStandbyTotalQty
        {
            get
            {
                return (Qty1 ?? 0) + (Qty2 ?? 0) + (Qty3 ?? 0) + (Qty4 ?? 0);
            }
        }
        public System.Nullable<double> MaterialStandbyTotalPer
        {
            get
            {
                return (Percent1 ?? 0) + (Percent2 ?? 0) + (Percent3 ?? 0) + (Percent4 ?? 0);
            }
        }

        //public string Title1 { get; set; }
        //public string Title2 { get; set; }
        //public string Title3 { get; set; }
        //public string Title4 { get; set; }


    }
    public static class POPCLanguage
    {
        public static readonly string[] LRight = new string[4] { "You do not have the Right to Use this Function.", "你没有权限使用这个功能.", "你沒有權限使用這個功能.", "You do not have the Right to Use this Function." };
        public static readonly string[] LHint = new string[4] { "Hint", "提示", "提示", "Hint" };

        public static readonly string[] LSaveTips = new string[4] { "Data has been modified, save it now?", "数据已经修改过,是否要保存?", "數據已經修改過,是否要保存?", "Data has been modified, save it now?" };
        public static readonly string[] LCurrentConfirmDate = new string[4] { "Current\r\nConfirm Date", "现况日期", "現況日期", "Current\r\nConfirm Date" };
        public static readonly string[] LDifferenceDate = new string[4] { "Difference date", "达标指引", "達標指引", "Difference date" };// Difference date (Confirm date & Goods inwards date)
        public static readonly string[] LMoveup = new string[4] { "Move up", "提前", "提前", "Move up" };
        public static readonly string[] LDelay = new string[4] { "Delay", "迟期", "遲期", "Delay" };
        public static readonly string[] LOnTime = new string[4] { "On time", "达标如期返料", "達標如期返料", "On time" };
        public static readonly string[] LWeek = new string[4] { "Week", "星期", "星期", "Week" };
        public static readonly string[] LOverOneMonth = new string[4] { "Over 1 month", "1个月以上", "1個月以上", "Over 1 month" };
    }

    public class TempReportGroup
    {
        public TempReportGroup()
        {

        }
        public string ItemCode { get; set; }
        public string SupplierReference { get; set; }
    }

    //public enum POType
    //{
    //    PO = 1,
    //    POSticker = 2
    //}
    class DictionaryData
    {
        public string DataType { get; set; }
        public string DataCode { get; set; }
        public string DataName { get; set; }
        public string Description { get; set; }
    }

    public class POERPList
    {
        public int GetERPAmendmentNo(string cono, string pono)
        {
            string sql1 = string.Format("select distinct cast(SCIN02 as int) as ERPAmendmentNo  from AULT4F1.PMP02 WHERE  cono02 = '{0}' and ordn02 = '{1}'", cono, pono);


            string sql2 = sql1.Replace("'", "''");
            string sql = string.Format("select * from openquery([AS400],'{0}')", sql2);

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            List<POPC_ERPAmendment> list = context.ExecuteQuery<POPC_ERPAmendment>(sql).ToList<POPC_ERPAmendment>();
            int i = 0;
            foreach (POPC_ERPAmendment item in list)
            {
                i = (item.ERPAMENDMENTNO ?? 0);
            }
            return i;
        }
        public string GetERPTermsConditions(string cono, string pono)
        {
            string sql1 = string.Format(@"select distinct txln11 as Remark,txno11 as LineNo from ault4f1.pmp11
   where cono11='{0}' and rval11='{1}' and xtyp11='O' and (txln11 <'000' or txln11>'999') and txno11<>25 and txno11<>26 
   order by txno11",
                 cono, pono);

            string sql2 = sql1.Replace("'", "''");
            string sql = string.Format("select * from openquery([AS400],'{0}')", sql2);

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            List<POPC_ERPTerms> list = context.ExecuteQuery<POPC_ERPTerms>(sql).ToList<POPC_ERPTerms>();
            string s = "";
            foreach (POPC_ERPTerms item in list)
            {
                s += string.Format("{0}", item.REMARK + "\r\n");
            }
            return s;
        }

        public void UpdateERPAmendmentNo(string cono, string pono)
        {
            string sql = string.Format("UPDATE AULT4F1.PMP02 SET SCIN02 = IFNULL(SCIN02,0)+1  WHERE  cono02 = '{0}' and ordn02 = '{1}'", cono, pono);
            DB.AS400DB.Execute(sql);
            sql = string.Format("UPDATE AULT4F1.PMP02 SET PIND02 = '4'   WHERE  cono02 = '{0}' and ordn02 = '{1}' and PIND02 = '3'", cono, pono);
            DB.AS400DB.Execute(sql);
        }
    }

    public class POPC_ERPAmendment
    {
        public int? ERPAMENDMENTNO { get; set; }
    }

    public class POPC_ERPTerms
    {
        public string REMARK { get; set; }
        public decimal? LINENO { get; set; }
    }

    public class DicList : BaseEntityList<PH.Platform.Misc.BO.Misc_DataDictionary, PH.Platform.Misc.BO.PHPlatformMiscDataContext>
    {
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionary(string DataType)
        {
            var lists = from a in CurrentDataContext.Misc_DataDictionaries
                        where a.DataType == DataType
                        orderby a.DataCode
                        select a;
            return lists;
        }
        public IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> GetDataDictionaryOrderByName(string DataType)
        {
            var lists = from a in CurrentDataContext.Misc_DataDictionaries
                        where a.DataType == DataType
                        orderby a.DataName
                        select a;
            return lists;
        }

        public PH.Platform.Misc.BO.Misc_DataDictionary GetDataDictionary(string DataType, string DataCode)
        {
            var dic = (from a in CurrentDataContext.Misc_DataDictionaries
                       where a.DataType == DataType && a.DataCode == DataCode
                       select a).FirstOrDefault();
            return dic;

        }
    }
    public partial class PODetailPhoto : BaseEntity
    { }

    public class POChangesMonitorList : BaseEntityList<POChangesMonitor, POPCDataContext>
    {
        public POChangesMonitor GetPOChangesMonitor(string pono, int orderline, string sku, int splitno)
        {
            var aa = (from a in CurrentDataContext.POChangesMonitors
                      where a.Company == "P1" && a.PONO == pono && a.OrderLine == orderline && a.SKU == sku && a.SplitNo == splitno && (a.POColorSizeDetail.VersionFlag ?? false)
                      select a).FirstOrDefault();
            return aa;

        }

        public IEnumerable<POChangesMonitor> GetPOChangesMonitors(DateTime etdFrom, DateTime etdTo)
        {
            var aa = from c in CurrentDataContext.POChangesMonitors
                     where c.Company == "P1"
                             && (c.POColorSizeDetail.VersionFlag ?? false)
                             && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                             && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                             && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                             && c.POColorSizeDetail.PHOutstandingQty > 0 //Outstanding
                         //&& (condition.POStatus == 0 //All
                         //   || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                         //   || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                         //   )
                            && (etdFrom == DateTime.MinValue || (c.ActualETD >= etdFrom && c.ActualETD < etdTo.AddDays(1)))
                     select c;
            return aa;

        }

    }
    public class POEmailList : BaseEntityList<POEmail, POPCDataContext>
    {
        public POEmail GetEmailByName(string username)
        {
            var aa = (from a in CurrentDataContext.POEmails
                      where a.UserName == username
                      select a).FirstOrDefault();
            return aa;
        }
        public POEmail GetEmailByMail(string email)
        {
            var aa = (from a in CurrentDataContext.POEmails
                      where a.Email == email
                      select a).FirstOrDefault();
            return aa;
        }
        public POEmail GetEmailBySupp(string supp)
        {
            var aa = (from a in CurrentDataContext.POEmails
                      where a.Supplier == supp
                      select a).FirstOrDefault();
            return aa;
        }

        public IEnumerable<POEmail> GetUsersByCategory(UserCategory category)
        {
            var aa = from a in CurrentDataContext.POEmails
                     where (a.Flag ?? 0) == (int)category
                     orderby a.UserName
                     select a;
            return aa;
        }
        public IEnumerable<POEmail> GetPHUsers(string division, string customer, string supplier, string subContractor)
        {
            var aa = from a in CurrentDataContext.POEmails
                     where (a.Flag ?? 0) == (int)UserCategory.PH
                     && (string.IsNullOrEmpty(division) || a.Division == division)
                     && (string.IsNullOrEmpty(customer) || a.Customer == customer)
                     && (string.IsNullOrEmpty(supplier) || a.Supplier == supplier)
                     && (string.IsNullOrEmpty(subContractor) || a.SubContractor == subContractor)
                     orderby a.UserName
                     select a;
            return aa;
        }

        public IEnumerable<POEmail> GetPHUsersByDivision(string division)
        {
            var aa = from a in CurrentDataContext.POEmails
                     where (a.Flag ?? 0) == (int)UserCategory.PH
                     && a.Division == division
                     orderby a.UserName
                     select a;
            return aa;
        }
        public IEnumerable<POEmail> GetPHUsersByCustomer(string customer)
        {
            var aa = from a in CurrentDataContext.POEmails
                     where (a.Flag ?? 0) == (int)UserCategory.PH
                     && a.Customer == customer
                     orderby a.UserName
                     select a;
            return aa;
        }
        public IEnumerable<POEmail> GetPHUsersBySupplier(string supplier)
        {
            var aa = from a in CurrentDataContext.POEmails
                     where (a.Flag ?? 0) == (int)UserCategory.PH
                     && a.Supplier == supplier
                     orderby a.UserName
                     select a;
            return aa;
        }
        public IEnumerable<POEmail> GetPHUsersBySubContractor(string subContractor)
        {
            var aa = from a in CurrentDataContext.POEmails
                     where (a.Flag ?? 0) == (int)UserCategory.PH
                     && a.SubContractor == subContractor
                     orderby a.UserName
                     select a;
            return aa;
        }
    }

    public class POSKUList : BaseEntityList<POColorSizeDetail, POPCDataContext>
    {
        public POColorSizeDetail GetPOSKU(string pono, int orderline, string sku)
        {
            var aa = (from a in CurrentDataContext.POColorSizeDetails
                      where a.Company == "P1" && a.PONO == pono && a.OrderLine == orderline && a.SKU == sku && (a.VersionFlag ?? false)
                      select a).FirstOrDefault();
            return aa;

        }
        public List<POColorSizeDetail> GetPOSKU1(string cono, string pono, int version, int amendmentno, string itemcode)
        {
            var lists = from a in CurrentDataContext.POColorSizeDetails
                        where a.Company == cono && a.PONO == pono && a.Version == version && a.AmendmentNo == amendmentno && a.ItemCode == itemcode
                        orderby a.ColorCode, a.FitID
                        select a;

            List<POColorSizeDetail> skus = lists.ToList<POColorSizeDetail>();
            List<POColorSizeDetail> sku_group = new List<POColorSizeDetail>();
            List<POColorSizeDetail> sku_result = new List<POColorSizeDetail>();
            foreach (POColorSizeDetail t0 in skus)
            {
                POColorSizeDetail t1 = sku_group.Find(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM;
                });
                if (t1 == null)
                {
                    sku_group.Add(t0);
                }
            }

            foreach (POColorSizeDetail t0 in sku_group)
            {
                List<POColorSizeDetail> sku_temp = skus.FindAll(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM;
                });

                decimal d = 0;

                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    d += (t1.Price ?? 0) * (t1.SupplierPOQty ?? 0);
                }
                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    t1.TotalReceivedQty = d;
                    sku_result.Add(t1);
                }
            }

            sku_result.Sort(SortColorCup);

            return sku_result;
        }
        public List<POColorSizeDetail> GetPOSKU(string cono, string pono, int version, int amendmentno, string itemcode, string supplierReference)
        {
            var lists = from a in CurrentDataContext.POColorSizeDetails
                        where a.Company == cono && a.PONO == pono && a.Version == version && a.AmendmentNo == amendmentno && a.ItemCode == itemcode && a.SupplierReference == supplierReference
                        orderby a.ColorCode, a.FitID
                        select a;

            List<POColorSizeDetail> skus = lists.ToList<POColorSizeDetail>();
            List<POColorSizeDetail> sku_group = new List<POColorSizeDetail>();
            List<POColorSizeDetail> sku_result = new List<POColorSizeDetail>();
            foreach (POColorSizeDetail t0 in skus)
            {
                POColorSizeDetail t1 = sku_group.Find(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM;
                });
                if (t1 == null)
                {
                    sku_group.Add(t0);
                }
            }

            foreach (POColorSizeDetail t0 in sku_group)
            {
                List<POColorSizeDetail> sku_temp = skus.FindAll(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM;
                });

                decimal d = 0;

                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    d += (t1.Price ?? 0) * (t1.SupplierPOQty ?? 0);
                }
                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    t1.TotalReceivedQty = d;
                    sku_result.Add(t1);
                }
            }

            sku_result.Sort(SortColorCup);

            return sku_result;
        }
        public List<POColorSizeDetail> GetPOSKUETA1(string cono, string pono, int version, int amendmentno, string itemcode)
        {
            var lists = from a in CurrentDataContext.POColorSizeDetails
                        where a.Company == cono && a.PONO == pono && a.Version == version && a.AmendmentNo == amendmentno && a.ItemCode == itemcode
                        orderby a.ColorCode, a.FitID
                        select a;

            List<POColorSizeDetail> skus = lists.ToList<POColorSizeDetail>();
            List<POColorSizeDetail> sku_group = new List<POColorSizeDetail>();
            List<POColorSizeDetail> sku_result = new List<POColorSizeDetail>();
            foreach (POColorSizeDetail t0 in skus)
            {
                POColorSizeDetail t1 = sku_group.Find(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM && t0.ETADate == t2.ETADate;
                });
                if (t1 == null)
                {
                    sku_group.Add(t0);
                }
            }

            foreach (POColorSizeDetail t0 in sku_group)
            {
                List<POColorSizeDetail> sku_temp = skus.FindAll(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM && t0.ETADate == t2.ETADate;
                });

                decimal d = 0;

                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    d += (t1.Price ?? 0) * (t1.SupplierPOQty ?? 0);
                }
                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    t1.TotalReceivedQty = d;
                    sku_result.Add(t1);
                }
            }

            sku_result.Sort(SortColorCup);

            return sku_result;
        }
        public List<POColorSizeDetail> GetPOSKUETA(string cono, string pono, int version, int amendmentno, string itemcode, string supplierReference)
        {
            var lists = from a in CurrentDataContext.POColorSizeDetails
                        where a.Company == cono && a.PONO == pono && a.Version == version && a.AmendmentNo == amendmentno && a.ItemCode == itemcode && a.SupplierReference == supplierReference
                        orderby a.ColorCode, a.FitID
                        select a;

            List<POColorSizeDetail> skus = lists.ToList<POColorSizeDetail>();
            List<POColorSizeDetail> sku_group = new List<POColorSizeDetail>();
            List<POColorSizeDetail> sku_result = new List<POColorSizeDetail>();
            foreach (POColorSizeDetail t0 in skus)
            {
                POColorSizeDetail t1 = sku_group.Find(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM && t0.ETADate == t2.ETADate;
                });
                if (t1 == null)
                {
                    sku_group.Add(t0);
                }
            }

            foreach (POColorSizeDetail t0 in sku_group)
            {
                List<POColorSizeDetail> sku_temp = skus.FindAll(delegate(POColorSizeDetail t2)
                {
                    return t0.OurColorName == t2.OurColorName && t0.ColorShade == t2.ColorShade && t0.FitCode == t2.FitCode
                        && t0.Price == t2.Price && t0.SupplierUOM == t2.SupplierUOM && t0.ETADate == t2.ETADate;
                });

                decimal d = 0;

                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    d += (t1.Price ?? 0) * (t1.SupplierPOQty ?? 0);
                }
                foreach (POColorSizeDetail t1 in sku_temp)
                {
                    t1.TotalReceivedQty = d;
                    sku_result.Add(t1);
                }
            }

            sku_result.Sort(SortColorCup);

            return sku_result;
        }

        private int SortColorCup(POColorSizeDetail x, POColorSizeDetail y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {

                    i = x.ColorCode.CompareTo(y.ColorCode);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = (x.FitID ?? 0) - (y.FitID ?? 0);
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

        public IEnumerable<POColorSizeDetail> GetPOSKUbySuppRef(string cono, string pono, int version, int amendmentno, string itemcode, string suppref)
        {
            var lists = from a in CurrentDataContext.POColorSizeDetails
                        where a.Company == cono && a.PONO == pono && a.Version == version && a.AmendmentNo == amendmentno && a.ItemCode == itemcode && a.SupplierReference == suppref
                        orderby a.ColorCode, a.FitID
                        select a;

            return lists;
        }
        public IEnumerable<POColorSizeDetail> GetPOSKUbyColor(string cono, string pono, string itemcode, string colorCode)
        {
            var lists = from b in CurrentDataContext.POColorSizeDetails
                        where b.Company == cono && b.ItemCode == itemcode && (b.VersionFlag ?? false) && b.PONO == pono && b.ColorCode == colorCode
                        select b;

            return lists;
        }
        public IEnumerable<POColorSizeDetail> GetPOSKUbyColor(int version, int amendmentno, string cono, string pono, string itemcode, string colorCode)
        {
            var lists = from b in CurrentDataContext.POColorSizeDetails
                        where b.Company == cono && b.ItemCode == itemcode && b.Version == version && b.AmendmentNo == amendmentno
                        && b.PONO == pono && b.ColorCode == colorCode
                        select b;

            return lists;
        }

        public IEnumerable<POColorSizeDetail> GetPOSKUbyColorPrice(string cono, string pono, string itemcode, string colorCode, decimal? price)
        {
            var lists = from b in CurrentDataContext.POColorSizeDetails
                        where b.Company == cono && b.ItemCode == itemcode && (b.VersionFlag ?? false) && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                        select b;

            return lists;
        }
        public IEnumerable<POColorSizeDetail> GetPOSKUbyColorPrice(int version, int amendmentno, string cono, string pono, string itemcode, string colorCode, decimal? price)
        {
            var lists = from b in CurrentDataContext.POColorSizeDetails
                        where b.Company == cono && b.ItemCode == itemcode && b.Version == version && b.AmendmentNo == amendmentno
                        && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                        orderby b.FitCode
                        select b;

            return lists;
        }
        public IEnumerable<POColorSizeDetail> GetPOSKUbyColorPriceProject(int version, int amendmentno, string cono, string pono, string itemcode, string colorCode, decimal? price, string project)
        {
            var lists = from a in CurrentDataContext.PODetails
                        from b in a.POColorSizeDetails
                        where a.Company == cono && a.ItemCode == itemcode && a.Version == version && a.AmendmentNo == amendmentno
                        && a.PONO == pono && b.ColorCode == colorCode && b.Price == price
                        && a.ProjectNo == project
                        orderby b.FitCode
                        select b;

            return lists;
        }

        public IEnumerable<POWireBoneMatrix> GetPOColorSizeDetailsMatrix(int version, int amendmentno, string cono, string pono, string itemcode, string colorCode, decimal? price, string project)
        {
            var lists = from a in CurrentDataContext.PODetails
                        from b in a.POColorSizeDetails
                        from c in b.POWireBoneMatrixes
                        where a.Company == cono && a.ItemCode == itemcode && a.Version == version && a.AmendmentNo == amendmentno
                        && a.PONO == pono && b.ColorCode == colorCode && b.Price == price
                        && a.ProjectNo == project
                        orderby b.FitID   //應Cary和Julia要求修改排序字段，由david修改 2018-06-05 
                        //orderby b.FitCode
                        select c;

            return lists;
        }
        public IEnumerable<POWireBoneMatrix> GetMIDcPOColorSizeDetailsMatrix(int version, int amendmentno, string cono, string pono, string suppRef, string colorCode, decimal? price)
        {
            var lists = from a in CurrentDataContext.PODetails
                        from b in a.POColorSizeDetails
                        from c in b.POWireBoneMatrixes
                        where a.Company == cono && a.SupplierReference == suppRef && a.Version == version && a.AmendmentNo == amendmentno
                        && a.PONO == pono && b.ColorCode == colorCode && b.Price == price
                        //&& a.ProjectNo == project
                        orderby b.FitCode
                        select c;


            return lists;
        }

        public POInAdvance GetPOInAdvance(string transitCode)
        {
            var aa = (from a in CurrentDataContext.POInAdvances
                      where a.TransitCode == transitCode
                      select a).FirstOrDefault();
            return aa;

        }
        //public IEnumerable<AutoEmailCheck> GetAutoEmailCheck()
        //{
        //    var aa = from a in CurrentDataContext.POHeaders
        //             where a.PODetails.Any(p => (p.ConfirmETADate ?? DateTime.MinValue) == DateTime.Today.AddDays(-14))
        //             group a by new { Supp = a.Supplier, Division = a.Dept } into g
        //             select new { g.Key, g };
        //    return aa;

        //}

    }
    public class POAdviceNoteList : BaseEntityList<POAdviceNote, POPCDataContext>
    {
        public IEnumerable<POAdviceNote> GetPOAdviceNotesBySupp(string[] supps, string[] pos, string[] notes, int status)
        {
            var lists = from a in CurrentDataContext.POAdviceNotes
                        where (supps.Length == 0 || supps.Contains(a.Supplier))
                             && (notes.Length == 0 || notes.Contains(a.AdviceNote))
                             && (status == 0 //All
                                || (status == 1 && (a.ANStatus == "" || a.ANStatus == null)) //Outstanding
                                || (status == 2 && a.ANStatus == "C") //Completed
                                )
                            && (pos.Length == 0 || a.POAdviceNotePOs.Any(p => pos.Contains(p.PONO)))
                        orderby a.Supplier, a.AdviceNote
                        select a;

            return lists;
        }
        public IEnumerable<string> GetDNs(string[] supps, int status)
        {
            var lists = (from a in CurrentDataContext.POAdviceNotes
                         where (supps.Length == 0 || supps.Contains(a.Supplier))
                              && (status == 0 //All
                                 || (status == 1 && (a.ANStatus == "" || a.ANStatus == null)) //Outstanding
                                 || (status == 2 && a.ANStatus == "C") //Completed
                                 )
                         orderby a.Supplier, a.AdviceNote
                         select a.AdviceNote).Distinct();

            return lists;
        }
        public IEnumerable<string> GePONOs(string[] supps, int status)
        {
            var lists = (from a in CurrentDataContext.POAdviceNotePOs
                         where (supps.Length == 0 || supps.Contains(a.Supplier))
                              && (status == 0 //All
                                 || (status == 1 && (a.POAdviceNote.ANStatus == "" || a.POAdviceNote.ANStatus == null)) //Outstanding
                                 || (status == 2 && a.POAdviceNote.ANStatus == "C") //Completed
                                 )
                         orderby a.Supplier, a.PONO
                         select a.PONO).Distinct();

            return lists;
        }
        public bool SetAdviceNoteCompleted(string note)
        {
            var aa = (from a in CurrentDataContext.POAdviceNotes
                      where a.AdviceNote == note
                      select a).FirstOrDefault();

            return true;
        }

    }
    public class BuyerSKUList : BaseEntityList<POWireBoneMatrix, POPCDataContext>
    {
        class TempSizeMatrix
        {
            public TempSizeMatrix(BuyerSKUList buyerSkus)
            {
                _buyerSkus = buyerSkus;
            }
            private BuyerSKUList _buyerSkus;
            public string ItemCode { get; set; }
            public string SupplierReference { get; set; }
            public string PONO { get; set; }
            public string ColorCode { get; set; }
            public string SizeCode { get; set; }
            public string Size { get; set; }
            public string Cup { get; set; }
            public string SuppUom { get; set; }
            public decimal? TotalQty { get; set; }

            public string SizeDesc
            {
                get
                {
                    DicList dic = new DicList();
                    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.Size);
                    return dictionary == null ? this.Size : dictionary.Description;
                }
            }

            public string CupDesc
            {
                get
                {
                    if (string.IsNullOrEmpty(this.Cup)) return "";
                    DicList dic = new DicList();
                    PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.Cup);
                    return dictionary == null ? this.Cup : dictionary.Description;
                }
            }

            public int SizeOrder
            {
                get
                {
                    POPCDataContext context = _buyerSkus.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                    if (context == null)
                        context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    context.CommandTimeout = 1000;
                    string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Size' and [Value]='{0}' ", this.Size);
                    int? orders = context.ExecuteQuery<int>(sql).FirstOrDefault();
                    return (orders ?? 0);

                }
            }
            public int CupOrder
            {
                get
                {
                    POPCDataContext context = _buyerSkus.CurrentDataContext as PH.POPC.BO.POPCDataContext;
                    if (context == null)
                        context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                    context.CommandTimeout = 1000;
                    string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Cup' and [Value]='{0}' ", this.Cup);
                    int? orders = context.ExecuteQuery<int>(sql).FirstOrDefault();
                    return (orders ?? 0);

                }
            }

        }
        public IEnumerable<POWireBoneMatrix> GetPOSBuyerSKUbyColorPrice(int version, int amendmentno, string cono, string pono, string itemcode, string colorCode, decimal? price)
        {
            var lists = from b in CurrentDataContext.POColorSizeDetails
                        from c in b.POWireBoneMatrixes
                        where b.Company == cono && b.ItemCode == itemcode && b.Version == version && b.AmendmentNo == amendmentno
                        && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                        orderby b.FitCode
                        select c;

            return lists;
        }
        public IEnumerable<POColorSizeDetail> GetPOSuppSKUbyColorPrice(int version, int amendmentno, string cono, string pono, string itemcode, string colorCode, decimal? price)
        {
            var lists = from b in CurrentDataContext.POColorSizeDetails
                        where b.Company == cono && b.ItemCode == itemcode && b.Version == version && b.AmendmentNo == amendmentno
                        && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                        && b.POWireBoneMatrixes.Any()
                        orderby b.FitCode
                        select b;

            return lists;
        }
        public List<POWireBoneMatrixTemp> GetWireBoneMatrix(int version, int amendmentno, string cono, string pono, string itemcode, string colorCode, decimal? price)
        {
            var aa = from b in CurrentDataContext.POColorSizeDetails
                     from c in b.POWireBoneMatrixes
                     where b.Company == cono && b.ItemCode == itemcode && b.Version == version && b.AmendmentNo == amendmentno
                     && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                     group c by new { c.POColorSizeDetail.ItemCode, c.PONO, c.POColorSizeDetail.ColorCode, c.POColorSizeDetail.SizeCode, c.POColorSizeDetail.FitCode, c.Size, c.Cup } into g
                     orderby g.Key.SizeCode
                     select new
                     {
                         g.Key,
                         TotalQty = g.Sum(c => c.Qty)
                     };

            var bb = from b in CurrentDataContext.POColorSizeDetails
                     where b.Company == cono && b.ItemCode == itemcode && b.Version == version && b.AmendmentNo == amendmentno
                     && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                     && b.POWireBoneMatrixes.Any()
                     group b by new { b.ItemCode, b.PONO, b.ColorCode, b.SizeCode, b.FitCode } into g
                     orderby g.Key.SizeCode
                     select new
                     {
                         g.Key,
                         TotalQty = g.Sum(b => b.Qty)
                     };

            List<POWireBoneMatrixTemp> list = new List<POWireBoneMatrixTemp>();
            //distinct Supp size
            int j = 0;
            foreach (var b1 in bb)
            {
                var cc = from c in aa
                         where c.Key.ItemCode == b1.Key.ItemCode && c.Key.PONO == b1.Key.PONO && c.Key.ColorCode == b1.Key.ColorCode && c.Key.SizeCode == b1.Key.SizeCode && c.Key.FitCode == b1.Key.FitCode
                         select c;

                List<TempSizeMatrix> matrixs = new List<TempSizeMatrix>();
                foreach (var item in cc)
                {
                    TempSizeMatrix t = new TempSizeMatrix(this);
                    t.ItemCode = item.Key.ItemCode;
                    t.PONO = item.Key.PONO;
                    t.ColorCode = item.Key.ColorCode;
                    t.SizeCode = item.Key.SizeCode;
                    t.Size = item.Key.Size;
                    t.Cup = item.Key.Cup;
                    //t.SuppUom = item.Key.SupplierUOM;
                    t.TotalQty = item.TotalQty;

                    matrixs.Add(t);
                }
                matrixs.Sort(CompareSizeMatrix);

                POWireBoneMatrixTemp m = new POWireBoneMatrixTemp();
                m.ItemCode = b1.Key.ItemCode;
                m.PONO = b1.Key.PONO;
                m.ColorCode = b1.Key.ColorCode;
                m.SuppSize = b1.Key.SizeCode;
                m.SuppCup = b1.Key.FitCode;
                //m.SupplierUOM = b1.Key.SupplierUOM;
                m.BackColorIndex = j;
                j++;

                int i = 0;
                foreach (TempSizeMatrix item in matrixs)
                {
                    i++;
                    //string buycup = string.Format("{0}{1}", item.Size, item.Cup);
                    string buycup = string.Format("{0}{1}", item.SizeDesc, item.CupDesc);
                    switch (i)
                    {
                        case 1:
                            m.BuyerSizeCup1 = buycup;
                            m.SuppQty1 = item.TotalQty;
                            break;
                        case 2:
                            m.BuyerSizeCup2 = buycup;
                            m.SuppQty2 = item.TotalQty;
                            break;
                        case 3:
                            m.BuyerSizeCup3 = buycup;
                            m.SuppQty3 = item.TotalQty;
                            break;
                        case 4:
                            m.BuyerSizeCup4 = buycup;
                            m.SuppQty4 = item.TotalQty;
                            break;
                        case 5:
                            m.BuyerSizeCup5 = buycup;
                            m.SuppQty5 = item.TotalQty;
                            break;
                        case 6:
                            m.BuyerSizeCup6 = buycup;
                            m.SuppQty6 = item.TotalQty;
                            break;
                        case 7:
                            m.BuyerSizeCup7 = buycup;
                            m.SuppQty7 = item.TotalQty;
                            break;
                        default:
                            break;
                    }
                }
                list.Add(m);

            }
            list.Sort(POWireBoneMatrixTemp.SortSizeCup);
            return list;
        }
        public List<POWireBoneMatrixTemp> GetMIDcWireBoneMatrix(int version, int amendmentno, string cono, string pono, string supplierReference, string colorCode, decimal? price)
        {
            var aa = from b in CurrentDataContext.POColorSizeDetails
                     from c in b.POWireBoneMatrixes
                     where b.Company == cono && b.SupplierReference == supplierReference && b.Version == version && b.AmendmentNo == amendmentno
                     && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                     group c by new { c.POColorSizeDetail.SupplierReference, c.PONO, c.POColorSizeDetail.ColorCode, c.POColorSizeDetail.SizeCode, c.POColorSizeDetail.FitCode, c.Size, c.Cup } into g
                     orderby g.Key.SizeCode
                     select new
                     {
                         g.Key,
                         TotalQty = g.Sum(c => c.Qty)
                     };

            var bb = from b in CurrentDataContext.POColorSizeDetails
                     where b.Company == cono && b.SupplierReference == supplierReference && b.Version == version && b.AmendmentNo == amendmentno
                     && b.PONO == pono && b.ColorCode == colorCode && b.Price == price
                     && b.POWireBoneMatrixes.Any()
                     group b by new { b.SupplierReference, b.PONO, b.ColorCode, b.SizeCode, b.FitCode } into g
                     orderby g.Key.SizeCode
                     select new
                     {
                         g.Key,
                         TotalQty = g.Sum(b => b.Qty)
                     };

            List<POWireBoneMatrixTemp> list = new List<POWireBoneMatrixTemp>();
            //distinct Supp size
            int j = 0;
            foreach (var b1 in bb)
            {
                var cc = from c in aa
                         where c.Key.SupplierReference == b1.Key.SupplierReference && c.Key.PONO == b1.Key.PONO && c.Key.ColorCode == b1.Key.ColorCode && c.Key.SizeCode == b1.Key.SizeCode && c.Key.FitCode == b1.Key.FitCode
                         select c;

                List<TempSizeMatrix> matrixs = new List<TempSizeMatrix>();
                foreach (var item in cc)
                {
                    TempSizeMatrix t = new TempSizeMatrix(this);
                    t.SupplierReference = item.Key.SupplierReference;
                    t.PONO = item.Key.PONO;
                    t.ColorCode = item.Key.ColorCode;
                    t.SizeCode = item.Key.SizeCode;
                    t.Size = item.Key.Size;
                    t.Cup = item.Key.Cup;
                    //t.SuppUom = item.Key.SupplierUOM;
                    t.TotalQty = item.TotalQty;

                    matrixs.Add(t);
                }
                matrixs.Sort(CompareSizeMatrix);

                POWireBoneMatrixTemp m = new POWireBoneMatrixTemp();
                m.SupplierReference = b1.Key.SupplierReference;
                m.PONO = b1.Key.PONO;
                m.ColorCode = b1.Key.ColorCode;
                m.SuppSize = b1.Key.SizeCode;
                m.SuppCup = b1.Key.FitCode;
                //m.SupplierUOM = b1.Key.SupplierUOM;
                m.BackColorIndex = j;
                j++;

                int i = 0;
                foreach (TempSizeMatrix item in matrixs)
                {
                    i++;
                    //string buycup = string.Format("{0}{1}", item.Size, item.Cup);
                    string buycup = string.Format("{0}{1}", item.SizeDesc, item.CupDesc);
                    switch (i)
                    {
                        case 1:
                            m.BuyerSizeCup1 = buycup;
                            m.SuppQty1 = item.TotalQty;
                            break;
                        case 2:
                            m.BuyerSizeCup2 = buycup;
                            m.SuppQty2 = item.TotalQty;
                            break;
                        case 3:
                            m.BuyerSizeCup3 = buycup;
                            m.SuppQty3 = item.TotalQty;
                            break;
                        case 4:
                            m.BuyerSizeCup4 = buycup;
                            m.SuppQty4 = item.TotalQty;
                            break;
                        case 5:
                            m.BuyerSizeCup5 = buycup;
                            m.SuppQty5 = item.TotalQty;
                            break;
                        case 6:
                            m.BuyerSizeCup6 = buycup;
                            m.SuppQty6 = item.TotalQty;
                            break;
                        case 7:
                            m.BuyerSizeCup7 = buycup;
                            m.SuppQty7 = item.TotalQty;
                            break;
                        default:
                            break;
                    }
                }
                list.Add(m);

            }
            list.Sort(POWireBoneMatrixTemp.SortSizeCup);
            return list;
        }

        private static int CompareSizeMatrix(TempSizeMatrix x, TempSizeMatrix y)
        {
            if (x == null)
            {
                if (y == null)
                    return 0;
                else
                    return -1;
            }
            else
            {
                if (y == null)
                    return 1;
                else
                {
                    int i = x.CupOrder - y.CupOrder;

                    if (i > 0)
                        return 1;
                    else if (i < 0)
                        return -1;
                    else
                    {
                        i = x.SizeOrder - y.SizeOrder;
                        if (i > 0)
                            return 1;
                        else if (i < 0)
                            return -1;
                        else return 0;
                    }
                }
            }
        }
    }

    public class MIDcList : BaseEntityList<PH.MIDc.BO.Detail, PH.MIDc.BO.MIDcDataContext>
    {
        public PH.MIDc.BO.Detail GetMIDc(string suppRef)
        {
            var midc = (from a in CurrentDataContext.Details
                        where a.SuppRef == suppRef
                        select a).FirstOrDefault();
            return midc;

        }
        public PH.MIDc.BO.Detail GetMIDc(string suppRef, string itemCode)
        {
            PH.MIDc.BO.Detail d = GetMIDc(suppRef);
            if (d == null)
            {
                d = (from a in CurrentDataContext.Details
                     where a.MaterialCode == itemCode
                     select a).FirstOrDefault();
            }
            if (d == null && !string.IsNullOrEmpty(itemCode))
            {
                d = (from a in CurrentDataContext.Details
                     where a.MaterialCode.Substring(0, 8) == itemCode.Substring(0, 8)
                     select a).FirstOrDefault();
            }
            return d;

        }
        public PH.MIDc.BO.Color GetColorObject(string colorCode)
        {
            var midc = (from a in CurrentDataContext.Colors
                        where a.Color1 == colorCode
                        select a).FirstOrDefault();
            return midc;
        }
    }

    public class ColorShade
    {
        PH.POPC.BO.POPCDataContext m_Context;
        PH.POPC.BO.POColorSizeDetail m_POColorSizeDetail;
        public ColorShade(POColorSizeDetail POColorSizeDetail)
        {
            this.m_POColorSizeDetail = POColorSizeDetail;
            m_Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            m_Context.CommandTimeout = 1000;
        }

        //Xsj20160429:插入POColorShade記錄
        private void UpdatePOPC()
        {
            string sql = string.Format(@"if not exists(
                                        select * from  POColorShade 
                                        where   Company='{0}' 
                                        and     ColorCode='{1}'
                                        and     ItemCode ='{2}' 
                                        and     Supplier='{3}'
                                        and     ColorType=5 
                                        and     ColorShade='{4}'
                                        )
                                        begin
                                            insert into POColorShade (Company ,ColorCode,ItemCode,Supplier,ColorType,ColorShade)
                                            values ('{0}','{1}','{2}','{3}','5','{4}') 
                                        end", this.m_POColorSizeDetail.Company, this.m_POColorSizeDetail.ColorCode,
                                            this.m_POColorSizeDetail.ItemCode, this.m_POColorSizeDetail.Supplier, this.m_POColorSizeDetail.ColorShade);
            m_Context.ExecuteCommand(sql);
        }
        private void UPdatePHP10()
        {
            string sql = string.Format(@"if not exists (select * from PHP10 
                                        where CONO10='{0}'
                                        and   PCOL10='{1}'
                                        and   TYPE10='{2}'
                                        and   CUSN10='{3}'
                                        and   VNDR10='{4}'
                                        and   PSTL10='{5}'
                                        and   DESC10='{6}'
                                        and   UpdateFlag=0
                                        )
                                        begin
	                                        insert PHP10 (CONO10,PCOL10,TYPE10,CUSN10 ,VNDR10,PSTL10,DESC10,CODE10,UpdateFlag,CreateDate)
	                                        values ('{0}','{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}' ,0,GetDate())
                                        end  
                                        ", this.m_POColorSizeDetail.Company, this.m_POColorSizeDetail.ColorCode, "5", string.Empty,
                                              this.m_POColorSizeDetail.Supplier, this.m_POColorSizeDetail.ItemCode, this.m_POColorSizeDetail.ColorShade, string.Empty);
            m_Context.ExecuteCommand(sql);
        }
        private void UPdatePHP11()
        {
            string sql = string.Format(@"if not exists (select * from PHP11 
                                        where CONO11='{0}'
                                        and   ORDN11='{1}'
                                        and   LINE11='{2}'
                                        and   PCOL11='{3}'
                                        and   TYPE11='{4}'
                                        and   DESC11='{5}'
                                        and   UpdateFlag=0
                                        )
                                        begin
	                                        insert PHP11 (CONO11,ORDN11,LINE11 ,PCOL11,TYPE11,DESC11,CODE11,UpdateFlag,CreateDate)
	                                        values ('{0}','{1}', '{2}', '{3}', '{4}', '{5}', '{6}' ,0, GetDate())
                                        end ", this.m_POColorSizeDetail.Company, this.m_POColorSizeDetail.PONO, this.m_POColorSizeDetail.OrderLine,
                                             this.m_POColorSizeDetail.ColorCode, "1", this.m_POColorSizeDetail.ColorShade, string.Empty);
            m_Context.ExecuteCommand(sql);
        }
        public void Update()
        {
            UpdatePOPC();
            UPdatePHP10();
            UPdatePHP11();
        }

        public static void UpdateErpData()
        {
            UpdateErpDataPHP10();
            UpdateErpDataPHP11();
        }

        //Xsj:更新ERP的色影
        public static void UpdateErpDataPHP10()
        {
            DateTime dt = DateTime.Now;

            PH.POPC.BO.POPCDataContext Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            Context.CommandTimeout = 10000;
            List<PHP10> list1 = Context.PHP10s.Where(p => p.UpdateFlag == false).OrderBy(p => p.CreateDate).ToList();
            string sql = string.Empty;
            foreach (PHP10 item in list1)
            {
                sql = string.Format("Call zphlib_aul.sp_popcUpdatePHP10 ('{0}','{1}','{2}','{3}','{4}')",
                  item.CONO10, item.VNDR10, item.PSTL10, item.PCOL10, item.DESC10);
                PH.POPC.BO.DB.AS400DB.Execute(sql);
                item.UpdateFlag = true;
            }
            //Context.SubmitChanges();
            sql = string.Format("update a set a.UpdateFlag=1 from  [PH.POPC].[dbo].[PHP10] a where UpdateFlag=0 and createdate<'{0:yyyy/MM/dd HH:mm:ss}'  ", dt);
            Context.ExecuteCommand(sql);
        }
        public static void UpdateErpDataPHP11()
        {
            DateTime dt = DateTime.Now;

            PH.POPC.BO.POPCDataContext Context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            Context.CommandTimeout = 10000;

            List<PHP11> list2 = Context.PHP11s.Where(p => p.UpdateFlag == false).OrderBy(p => p.CreateDate).ToList();
            string sql = string.Empty;
            foreach (PHP11 item in list2)
            {
                sql = string.Format("Call ZPHLIB_AUL.sp_popcUpdatePHP11 ('{0}','{1}','{2}','{3}','{4}')",
                   item.CONO11, item.ORDN11, item.LINE11, item.PCOL11, item.DESC11);
                PH.POPC.BO.DB.AS400DB.Execute(sql);
                item.UpdateFlag = true;
            }
            //Context.SubmitChanges();
            sql = string.Format("update a set a.UpdateFlag=1 from  [PH.POPC].[dbo].[PHP11] a where UpdateFlag=0 and createdate<'{0:yyyy/MM/dd HH:mm:ss}'  ", dt);
            Context.ExecuteCommand(sql);
        }

    }

    public class POWireBoneMatrixTemp
    {
        public POWireBoneMatrixTemp()
        {
            ColorsRed = new int[11];
            ColorsGreen = new int[11];
            ColorsBlue = new int[11];

            ColorsRed[0] = 213;
            ColorsGreen[0] = 251;
            ColorsBlue[0] = 249;

            ColorsRed[1] = 237;
            ColorsGreen[1] = 209;
            ColorsBlue[1] = 224;

            ColorsRed[2] = 230;
            ColorsGreen[2] = 253;
            ColorsBlue[2] = 215;

            ColorsRed[3] = 250;
            ColorsGreen[3] = 223;
            ColorsBlue[3] = 194;

            ColorsRed[4] = 192;
            ColorsGreen[4] = 191;
            ColorsBlue[4] = 249;

            ColorsRed[5] = 230;
            ColorsGreen[5] = 217;
            ColorsBlue[5] = 196;

            ColorsRed[6] = 232;
            ColorsGreen[6] = 218;
            ColorsBlue[6] = 117;

            ColorsRed[7] = 213;
            ColorsGreen[7] = 230;
            ColorsBlue[7] = 230;

            ColorsRed[8] = 210;
            ColorsGreen[8] = 216;
            ColorsBlue[8] = 148;

            ColorsRed[9] = 244;
            ColorsGreen[9] = 247;
            ColorsBlue[9] = 230;

            ColorsRed[10] = 188;
            ColorsGreen[10] = 237;
            ColorsBlue[10] = 199;

        }
        public int[] ColorsRed;
        public int[] ColorsGreen;
        public int[] ColorsBlue;
        public string ItemCode { get; set; }
        public string SupplierReference { get; set; }
        public string PONO { get; set; }
        public string ColorCode { get; set; }
        public string SuppSize { get; set; }
        public string SuppCup { get; set; }

        public string SizeDesc
        {
            get
            {
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Size", this.SuppSize);
                return dictionary == null ? this.SuppSize : dictionary.Description;
            }
        }
        public string CupDesc
        {
            get
            {
                if (string.IsNullOrEmpty(this.SuppCup)) return "";
                DicList dic = new DicList();
                PH.Platform.Misc.BO.Misc_DataDictionary dictionary = dic.GetDataDictionary("PH.PO.Cup", this.SuppCup);
                return dictionary == null ? this.SuppCup : dictionary.Description;
            }
        }

        public string SuppSizeCup { get { return string.Format("{0}{1}", this.SizeDesc, this.CupDesc).Trim(); } }
        public string SupplierUOM { get; set; }

        public int SizeOrder
        {
            get
            {
                POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Size' and [Value]='{0}' ", this.SuppSize);
                int? orders = context.ExecuteQuery<int>(sql).FirstOrDefault();
                return (orders ?? 0);
            }
        }

        public int CupOrder
        {
            get
            {
                POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                string sql = string.Format("SELECT [Orders] FROM [PH.RWO1].[dbo].[RwoOrders] where [Type]='Cup' and [Value]='{0}' ", this.SuppCup);
                int? orders = context.ExecuteQuery<int>(sql).FirstOrDefault();
                return (orders ?? 0);
            }
        }

        public int BackColorIndex { get; set; }
        //public bool IsQty { get; set; }

        public string BuyerSizeCup1 { get; set; }
        public string BuyerSizeCup2 { get; set; }
        public string BuyerSizeCup3 { get; set; }
        public string BuyerSizeCup4 { get; set; }
        public string BuyerSizeCup5 { get; set; }
        public string BuyerSizeCup6 { get; set; }
        public string BuyerSizeCup7 { get; set; }

        public decimal? SuppQty1 { get; set; }
        public decimal? SuppQty2 { get; set; }
        public decimal? SuppQty3 { get; set; }
        public decimal? SuppQty4 { get; set; }
        public decimal? SuppQty5 { get; set; }
        public decimal? SuppQty6 { get; set; }
        public decimal? SuppQty7 { get; set; }

        public decimal? SubTotalQty
        {
            get
            {
                //if (this.IsQty)
                return (SuppQty1 ?? 0) + (SuppQty2 ?? 0) + (SuppQty3 ?? 0) + (SuppQty4 ?? 0) + (SuppQty5 ?? 0) + (SuppQty6 ?? 0) + (SuppQty7 ?? 0);
                //else
                //    return (int?)null;
            }
        }

        public static int SortSizeCup(POWireBoneMatrixTemp x, POWireBoneMatrixTemp y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = string.Compare(x.SuppSizeCup, y.SuppSizeCup);
                    //i = x.SizeOrder - y.SizeOrder;
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else return 0;
                    //{
                    //    i = x.CupOrder - y.CupOrder;
                    //    if (i < 0) return -1;
                    //    else if (i > 0) return 1;
                    //    else return 0;
                    //}
                }
            }
        }


    }
    public class SpecSize
    {
        public int Order { get; set; }
        public string Size { get; set; }
        public string SizeDesc { get; set; }
        public string SizeType { get; set; }

        public static int SortSize(SpecSize x, SpecSize y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.Order - y.Order;
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.Size.CompareTo(y.Size);
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

    }
    public static class SupplierWidthSpec
    {
        /// <summary>
        /// Not Apply to Item Width & Spec Width = 0
        /// </summary>
        public const string NotApplyto = "0";
        /// <summary>
        /// Item Width = 1
        /// </summary>
        public const string ItemWidth = "1";
        /// <summary>
        /// Spec Width = 2
        /// </summary>
        public const string TrimBandWidth = "2";
        public const string SizeRange = "3";
        public const string SizeCupRange = "4";
        public const string SolidSize = "5";
    }
    public class EmailAddress
    {
        public string UserID { get; set; }
        public string UserName { get; set; }
        public string EMail { get; set; }

        public override string ToString()
        {
            //return string.Format("{0};{1}", UserName, EMail);
            return string.Format("{0}", UserName);
        }
    }

    //    public class ColorShade
    //    {
    //        public void UpdatePHP11(string Company, string PONo, string OrderLine, string ColorCode, string ColorShade)
    //        {
    //            string sSQL = string.Format("Call ZPHLIB_AUL.sp_popcUpdatePHP11 ('{0}','{1}',{2},'{3}','{4}')",
    //                    Company, PONo, OrderLine, ColorCode, ColorShade);
    //            PH.POPC.BO.DB.AS400DB.Execute(sSQL);
    //        }
    //        public void UpdatePOPC(string Company, string ColorCode, string ItemCode, string Supplier, string ColorShade)
    //        {

    //            string sql = string.Format(@"
    //if not exists(
    //select * from  POColorShade 
    //where   Company='{0}' 
    //and     ColorCode='{1}'
    //and     ItemCode ='{2}' 
    //and     Supplier='{3}'
    //and     ColorType=5 
    //and     ColorShade='{4}'
    //)
    //begin
    //    insert into POColorShade (Company ,ColorCode,ItemCode,Supplier,ColorType,ColorShade)
    //    values ('{0}','{1}','{2}','{3}','5','{4}') 
    //end", Company, ColorCode, ItemCode, Supplier, ColorShade);
    //            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
    //            context.CommandTimeout = 1000;
    //            context.ExecuteCommand(sql);
    //        }
    //        public void UPdatePHP10(string Company, string ColorCode, string ItemCode, string Supplier, string ColorShade)
    //        {
    //            //            string sql = string.Format(@"
    //            //if not exists(
    //            //select * from  ault4f1.php10 
    //            //where   cono10='{0}' 
    //            //and     pcol10='{1}'
    //            //and     pstl10 ='{2}' 
    //            //and     vndr10='{3}'
    //            //and     type10=5 
    //            //)
    //            //begin
    //            //    insert into ault4f1.php10  (cono10 ,pcol10,pstl10,vndr10,type10,desc10)
    //            //    values ('{0}','{1}','{2}','{3}','5','{4}') 
    //            //end", Company, ColorCode, ItemCode, Supplier, ColorShade);
    //            // PH.Common.UI.DB.AS400DB.Execute(sql);

    //            string sql = string.Format(@"
    //    insert into ault4f1.php10  (cono10 ,pcol10,pstl10,vndr10,type10,desc10)
    //    values ('{0}','{1}','{2}','{3}','5','{4}') ",
    //Company, ColorCode, ItemCode, Supplier, ColorShade);
    //            PH.POPC.BO.DB.AS400DB.Execute(sql);
    //        }
    //        public void UpdateAll()
    //        {
    //            string sql = @"
    //select a.* 
    //from dbo.POColorShade a
    //left join  openquery([As400],'select * from  ault4f1.php10 where type10=5  ') b
    //        on  Company=b.cono10   collate  Chinese_Taiwan_Stroke_CI_AS
    //        and ColorCode=pcol10   collate  Chinese_Taiwan_Stroke_CI_AS
    //        and ItemCode=pstl10    collate  Chinese_Taiwan_Stroke_CI_AS
    //        and Supplier=vndr10    collate  Chinese_Taiwan_Stroke_CI_AS
    //        and ColorShade=desc10  collate  Chinese_Taiwan_Stroke_CI_AS
    //where a.ColorType=5 and b.cono10 is null";
    //            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
    //            context.CommandTimeout = 1000;
    //            var aa = context.ExecuteQuery<PH.POPC.BO.POColorShade>(sql).ToList();
    //            foreach (var item in aa)
    //            {
    //                sql = string.Format(@"
    //insert into ault4f1.php10  (cono10 ,pcol10,pstl10,vndr10,type10,desc10)
    //values ('{0}','{1}','{2}','{3}','5','{4}') ",
    //item.Company, item.ColorCode, item.ItemCode, item.Supplier, item.ColorShade);
    //                PH.POPC.BO.DB.AS400DB.Execute(sql);
    //            }


    //            sql = @"
    //select distinct Company,PONo,OrderLine,ColorCode,ColorShade
    //from dbo.POColorSizeDetail a
    //left join 
    //openquery([As400],'select * from  ault4f1.php11 where type11=1') b
    //on   a.Company=b.cono11  collate  Chinese_Taiwan_Stroke_CI_AS
    //and  a.PONO=b.ORDN11  collate  Chinese_Taiwan_Stroke_CI_AS
    //and  a.OrderLine=b.Line11 
    //and  a.ColorCode=pcol11   collate  Chinese_Taiwan_Stroke_CI_AS
    //and  a.ColorShade=desc11  collate  Chinese_Taiwan_Stroke_CI_AS
    //where b.cono11 is null and ColorShade<>'' and ColorShade is not null
    //";
    //            System.Data.DataTable dt = PH.POPC.BO.DB.GetDataTable(sql);
    //            foreach (DataRow item in dt.Rows)
    //            {
    //                sql = string.Format("Call ZPHLIB_AUL.sp_popcUpdatePHP11 ('{0}','{1}',{2},'{3}','{4}')",
    //                   item["Company"].ToString(), item["PONo"].ToString(), item["OrderLine"].ToString(), item["ColorCode"].ToString(), item["ColorShade"].ToString());
    //                PH.POPC.BO.DB.AS400DB.Execute(sql);
    //            }
    //        }
    //    }m


    #region BackEnd Event
    public class BackEndEventArgs : EventArgs
    {
        public BackEndEventArgs(string parameters)
        {
            this.Parameters = parameters;
        }
        public string Parameters;
    }
    public delegate void BackEndEventHandler(object sender, BackEndEventArgs e);
    #endregion

    #region POPC Level 2 - Entrance Key
    public class POPCLevel2
    {
        public POColorSizeDetail POColorSizeDetail { get; set; }

        public int SplitNo { get; set; }
        public int Lots { get; set; }
        public string HowManyLot { get { return string.Format("{0}/{1}", this.SplitNo, this.Lots); } }

        public DateTime? RevisedDeliveryDate { get; set; }
        public string TransitModeChanged { get; set; }
        public int? ChangedTimeFrame1 { get; set; }

        public double? SplitQty { get; set; }
        public double? CummQty { get; set; }

        public bool HaveSplited { get; set; }

        public bool PartialShipment { get { return this.Lots > 1; } }
        public bool RevisedDelivery { get { return this.RevisedDeliveryDate.HasValue && (this.PODeliveryDate ?? DateTime.MinValue) != (this.RevisedDeliveryDate ?? DateTime.MinValue); } }
        public bool TransitModeHaveChanged { get { return !string.IsNullOrEmpty(this.TransitModeChanged) && (this.TransitModeChanged != this.TransitModePO); } }

        public string PartialShipmentDesc { get { return PartialShipment ? "Y" : "N"; } }
        public string RevisedDeliveryDesc { get { return RevisedDelivery ? "Y" : "N"; } }
        public string TransitModeHaveChangedDesc { get { return TransitModeHaveChanged ? "Y" : "N"; } }

        public string TransitModeChangedDesc { get { return TransitModeHaveChanged ? this.TransitModeChanged : "--"; } }
        public string TransitModeChangeT1Desc { get { return TransitModeHaveChanged ? Convert.ToString(this.TransitModeChangeT1) : "--"; } }
        public string TransitModeChangeT2Desc { get { return TransitModeHaveChanged ? Convert.ToString(this.TransitModeChangeT2) : "--"; } }

        public int? TransitModeChangeT1 { get { return TransitModeHaveChanged ? this.ChangedTimeFrame1 : this.TimeFrame1; } }//Time Frame 1
        public int? TransitModeChangeT2 { get { return this.TimeFrame2; } }//same as PO Time Frame 2

        public DateTime? MaterialETADate1 { get { return this.RevisedDeliveryDate.HasValue ? this.RevisedDeliveryDate.Value.AddDays(this.TransitModeChangeT1 ?? 0) : (DateTime?)null; } }
        public DateTime? MaterialETADate2 { get { return this.RevisedDeliveryDate.HasValue ? this.RevisedDeliveryDate.Value.AddDays((this.TransitModeChangeT1 ?? 0) + (this.TransitModeChangeT2 ?? 0)) : (DateTime?)null; } }

        public int? DeliveryDiff { get { return this.RevisedDeliveryDate.HasValue ? (this.PODeliveryDate.Value - this.RevisedDeliveryDate.Value).Days : (int?)null; } }


        #region From PO

        public bool IsOutStanding { get { return this.POColorSizeDetail == null ? false : this.POColorSizeDetail.IsOutStanding; } }
        public string POStatus
        {
            get
            {
                return IsOutStanding ? "WIP" : "Completed";
                //return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.POStatus;
                //(this.POColorSizeDetail.PODetail.POHeader.IsOutStanding == "Completed" || (this.StockInConfirmed ?? false) ? "Completed" : "WIP");
            }
        }
        //1.Header
        public int NumOfProject { get { return this.POColorSizeDetail.PODetail == null ? 0 : this.POColorSizeDetail.PODetail.POHeader.NumOfProject; } }
        public DateTime? POIssueDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.OrderDate; } }
        public DateTime? POReqDeliveryDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.POHeader.ShipmentDate; } }
        public string Factory { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Factory; } }
        public string Supplier { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.Supplier; } }
        public string SupplierLocation { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.LocationOfSuppFactoryDesc; } }
        public string EndCustCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndCustCode; } }
        public string PurchaseOfficer { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer; } }
        public string Team { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Dept; } }
        public string ClassCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ClassCode; } }

        public int? TimeFrame1 { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.POHeader.TransitFrame; } }
        public int? TimeFrame2 { get { return this.POColorSizeDetail == null ? (int?)null : this.POColorSizeDetail.PODetail.TimeFrame2; } }
        public string Incoterms { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.Incoterms; } }
        public string TransitModePO { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.ShipMode; } }

        public string TransitPoint { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.TransitPoint; } }
        public string EndPoint
        {
            get
            {
                string s = this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PODetail.POHeader.EndPoint;
                if (string.IsNullOrEmpty(s)) return s;

                int i = s.IndexOf("/");
                if (i - 1 > 0)
                    s = s.Substring(0, i - 1);
                s = s.Replace("\"", "");
                return s;
            }
        }

        //2.detail
        public string ProjectNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ProjectNO; } }
        public string ItemCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ItemCode; } }
        public DateTime? PODeliveryDate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.ConfirmETADate; } }
        public DateTime? WOExftyDate { get { return this.POColorSizeDetail.PODetail == null ? (DateTime?)null : this.POColorSizeDetail.PODetail.WOStartDate; } }
        public DateTime? HDODate { get { return this.POColorSizeDetail == null ? (DateTime?)null : this.POColorSizeDetail.HDODate; } }

        //3.SKU
        public string CustStyleNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustStyleNo; } }
        public string CustOrderNo { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.CustOrderNo; } }
        public string ColorCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorCode; } }

        public string SizeDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeDesc; } }
        public string FitDesc { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitDesc; } }
        public string SizeCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SizeCode; } }
        public string FitCode { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.FitCode; } }

        public decimal? Price { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Price; } }
        public decimal? PHPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.Qty; } }
        public decimal? PHOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.PHOutstandingQty; } }
        public decimal? SupplierPOQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierPOQty; } }
        public decimal? SupplierOutstandingQty { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.SupplierOutstandingQty; } }
        public decimal? POBalancePercent { get { return this.POColorSizeDetail == null ? (decimal?)null : this.POColorSizeDetail.POBalancePercent; } }

        public string SupplierReference { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierReference; } }
        public string ColorShade { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.ColorShade; } set { } }
        public string SupplierUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.SupplierUOM; } }
        public string PHUOM { get { return this.POColorSizeDetail == null ? "" : this.POColorSizeDetail.PHUom; } }

        #endregion

        public static int SortData(POPCLevel2 x, POPCLevel2 y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.SplitNo - y.SplitNo;
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else return 0;
                }
            }
        }
    }

    #endregion

    public class POPCLevel2Supplement
    {
        public POPCLevel2Supplement()
        {
            SizeCupQtys = new List<POPCLevel2SizeCup>();
        }

        public string Team { get; set; }
        public string PurchaseOfficer { get; set; }
        public string PONO { get; set; }
        public string Color { get { return string.IsNullOrEmpty(ColorName) ? ColorCode : ColorName; } }
        public string ColorCode { get; set; }
        public string ColorName { get; set; }
        public string SizeCupQty
        {
            get
            {
                string s = "";
                foreach (var t in SizeCupQtys)
                {
                    s += string.Format("{0} ", t.SizeCupCode);
                }
                return s;
            }
        }
        public decimal? TotalQty
        {
            get
            {
                decimal d = 0;
                foreach (var t in SizeCupQtys)
                {
                    d += (t.Qty ?? 0);
                }
                return d;
            }
        }

        List<POPCLevel2SizeCup> SizeCupQtys { get; set; }

        //public static List<POPCLevel2Supplement> GetLevel2SupplementDataSource(IEnumerable<POColorSizeDetail> objs)
        //public static List<POPCLevel2Supplement> GetLevel2SupplementDataSource(List<object> objs)
        //{
        //    return GetLevel2SupplementDataSource(objs, (bool?)null);
        //}

        /// <summary>
        /// Get Level2b Supplement DataSource
        /// </summary>
        /// <param name="objs"></param>
        /// <param name="changed"> null: all data; false: not changed; true: changed</param>
        /// <returns>List<POPCLevel2Supplement></returns>
        public static List<POPCLevel2Supplement> GetLevel2SupplementDataSource(List<object> objs, bool? changed)
        {
            List<POColorSizeDetail> csds = POColorSizeDetail.GetLevelDataSource(objs, changed);
            List<POPCLevel2Supplement> list = new List<POPCLevel2Supplement>();
            if (objs == null) return list;

            foreach (POColorSizeDetail t in csds)
            {
                //POColorSizeDetail t = t0 as POColorSizeDetail;
                //if (t == null) continue;
                if (string.IsNullOrEmpty(t.FitCode)) continue;

                //第一層
                POPCLevel2Supplement t1 = list.Find(delegate(POPCLevel2Supplement t2)
                {
                    return t.Team == t2.Team && t.PurchaseOfficer == t2.PurchaseOfficer && t.PONO == t2.PONO && t.ColorCode == t2.ColorCode;
                });
                if (t1 == null)
                {
                    t1 = new POPCLevel2Supplement() { Team = t.Team, PurchaseOfficer = t.PurchaseOfficer, PONO = t.PONO, ColorCode = t.ColorCode, ColorName = t.ItemColorName };
                    list.Add(t1);
                }
                //第二層
                POPCLevel2SizeCup sc = t1.SizeCupQtys.Find(delegate(POPCLevel2SizeCup sc2)
                {
                    return t.SizeCode == sc2.SizeCode && t.FitCode == sc2.CupCode;
                });
                if (sc == null)
                {
                    sc = new POPCLevel2SizeCup() { SizeCode = t.SizeCode, CupCode = t.FitCode, SizeDesc = t.SizeDesc, CupDesc = t.FitDesc, Qty = t.SupplierOutstandingQty };
                    t1.SizeCupQtys.Add(sc);
                }
                else sc.Qty = (sc.Qty ?? 0) + (t.SupplierOutstandingQty);
            }

            foreach (var t in list)
            {
                t.SizeCupQtys.Sort(POPCLevel2SizeCup.SortData);
            }
            list.Sort(POPCLevel2Supplement.SortData);

            return list;
        }

        public static int SortData(POPCLevel2Supplement x, POPCLevel2Supplement y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.PONO.CompareTo(y.PONO);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.ColorCode.CompareTo(y.ColorCode);
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

    }
    internal class POPCLevel2SizeCup
    {
        public string SizeCode { get; set; }
        public string CupCode { get; set; }
        public string SizeDesc { get; set; }
        public string CupDesc { get; set; }
        public decimal? Qty { get; set; }

        public string SizeCupCode
        {
            get
            {
                return string.IsNullOrEmpty(SizeCode) ? "" : string.Format("{0}{1}/{2:N0} ",
                    string.IsNullOrEmpty(SizeDesc) ? "" : SizeDesc.TrimEnd(),
                    string.IsNullOrEmpty(CupDesc) ? "" : CupDesc.TrimEnd(),
                    Qty);
            }
        }

        public static int SortData(POPCLevel2SizeCup x, POPCLevel2SizeCup y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.SizeCode.CompareTo(y.SizeCode);
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else
                    {
                        i = x.CupDesc.CompareTo(y.CupDesc);
                        if (i < 0) return -1;
                        else if (i > 0) return 1;
                        else return 0;
                    }
                }
            }
        }

    }
    public class SizeCupOrder
    {
        public int Id { get; set; }
        public string PH { get; set; }
        public string Supplier { get; set; }

        public static int SortOrder(SizeCupOrder x, SizeCupOrder y)
        {
            int i;
            if (x == null)
            {
                if (y == null) return 0;
                else return -1;
            }
            else
            {
                if (y == null) return 1;
                else
                {
                    i = x.Id - y.Id;
                    if (i < 0) return -1;
                    else if (i > 0) return 1;
                    else return 0;
                }
            }
        }
    }
    public enum CompareTypeI
    {
        INV2DN,//1.1
        INV2DNs,//1.2
        INVs2DN//2
    }
    public enum CompareTypeII
    {
        None,
        DeliveryNote,
        Item,
        PO
    }

    public class InvoiceUnitQty
    {
        //public string ItemCode { get; set; }
        public string SuppRef { get; set; }
        public string AdviceNote { get; set; }
        public string PHUom { get; set; }
        public decimal? GRNQty { get; set; }
        public decimal? RCQty { get; set; }
        public decimal? StockInQty { get; set; }
        public decimal? Useful { get; set; }
        public decimal? InvoiceQty { get; set; }

        public string PaymentTerms { get; set; }
        //public string Incoterms { get; set; }

        public decimal? RCPercent
        {
            get
            {
                return (GRNQty ?? 0) == 0 ? 0.00M : 100.00M * RCQty / GRNQty;
            }
        }

        public decimal? UsefulStockInQty
        {
            get
            {
                return (StockInQty ?? 0) * (Useful.HasValue ? (Useful ?? 100.00M) : 100.00M) / 100.00M;
            }
        }

        public string InvoiceType
        {
            get
            {
                return Currency == "RMB" ? "VAT" : "Com";
            }
        }

        public decimal? ConvertFactor { get; set; }
        public decimal? SuppStockInQty { get; set; }
        public decimal? SuppStockInQtyUseful
        {
            get
            {
                return (UsefulStockInQty ?? 0) / (ConvertFactor ?? 1);
                //return (SuppStockInQty ?? 0) * (Useful ?? 100.00M) / 100.00M;
            }
        }


        public string SupplierUOM { get; set; }
        public decimal? PackingListQtyOnSuppUom { get; set; }
        public decimal? QtyDiffOnSuppUom
        {
            get
            {
                if (!PackingListQtyOnSuppUom.HasValue || !SuppStockInQtyUseful.HasValue) return null;
                return Math.Round((PackingListQtyOnSuppUom ?? 0), 2, MidpointRounding.AwayFromZero) - Math.Round((SuppStockInQtyUseful ?? 0), 2, MidpointRounding.AwayFromZero);

                //return (SuppStockInQtyUseful ?? 0) - (PackingListQtyOnSuppUom ?? 0);
            }
        }

        public string Currency { get; set; }
        public decimal? UnitPrice { get; set; }
        public decimal? UnitPriceVAT { get; set; }
        public decimal? SubTotalAmount
        {
            get
            {
                return (Currency == "RMB" ? (UnitPriceVAT ?? 0) : (UnitPrice ?? 0)) * (InvoiceQty ?? 0);
            }
        }

        public decimal? TotalAmount { get; set; }

        public decimal? InvoiceTotalAmount { get; set; }
        public decimal? DiffTotalAmount
        {
            get
            {
                if (!InvoiceTotalAmount.HasValue || !TotalAmount.HasValue) return null;
                return Math.Round((InvoiceTotalAmount ?? 0), 2, MidpointRounding.AwayFromZero) - Math.Round((TotalAmount ?? 0), 2, MidpointRounding.AwayFromZero);

                //return Math.Round((TotalAmount ?? 0), 2, MidpointRounding.AwayFromZero) - Math.Round((InvoiceTotalAmount ?? 0), 2, MidpointRounding.AwayFromZero);
            }
        }

        public string ClaimDiffBy_RCQtyFlag { get; set; }
        public string ClaimDiffBy_MoneyFlag { get; set; }
        public string AmountDiff_ReviseInvoice { get; set; }
        public string AmountDiff_DN { get; set; }
        public string AmountDiff_CN { get; set; }
        public string AmountDiff_FOC { get; set; }





        public string SuppUnit { get; set; }

        public decimal? InvQty { get; set; }
        public decimal? POPCQty { get; set; }
        public decimal? DiffQty
        {
            get
            {
                if (InvQty.HasValue)
                    return (InvQty ?? 0) - (POPCQty ?? 0);
                else return null;
            }
        }
        public string DiffQtyStr
        {
            get
            {
                if (!DiffQty.HasValue) return "N.A.";
                else
                {
                    if (DiffQty.Value == 0) return "Matching";
                    else return string.Format("{0:#,##0.####}", DiffQty);
                }
            }
        }

        public decimal? InvAmount { get; set; }
        public decimal? POPCAmount { get; set; }
        public decimal? POPCVATAmount { get; set; } //由David加入 2022-06-21
        public decimal? DiffAmount
        {
            get
            {
                if (InvAmount.HasValue)
                    return (InvAmount ?? 0) - (POPCAmount ?? 0);
                else return null;
            }
        }

        public bool? Validation
        {
            get
            {
                if (!DiffQty.HasValue) return null;
                else
                {
                    return (DiffQty.Value == 0);
                }

            }
        }

    }

    public class AutoEmailCheck
    {
        public string Supp { get; set; }
        public string Division { get; set; }
        public IEnumerable<AutoEmailDetail> Details { get; set; }
    }
    public class AutoEmailDetail
    {
        public string Supp { get; set; }
        public string Division { get; set; }
        public string PONO { get; set; }
        public string ProjectNo { get; set; }
        public string SuppRef { get; set; }
        public string ColorCode { get; set; }
        public string ColorName { get; set; }
        public string ColorShade { get; set; }
        public decimal SuppBalanceQty { get; set; }
        public string SuppUnit { get; set; }
        public DateTime DeliveryDate { get; set; }
    }



    //------Xsj20160415:添加以下代碼，以打印海關的PO-------
    public class MIDcHSMaterialList : BaseEntityList<PH.MIDc.BO.CustomMaterial, PH.MIDc.BO.MIDcDataContext>
    {
        public PH.MIDc.BO.CustomMaterial GetCustomMaterial(string midcHSCode)
        {
            var custMaterial = (from a in CurrentDataContext.CustomMaterials
                                where a.MidcHSCode == midcHSCode
                                select a).FirstOrDefault();
            return custMaterial;

        }
    }
    //------------------------END--------------------------



    //------------Xsj20160927:添加以下代碼，用於打印RC-------------

    public class RCBO
    {
        public string CUSR92 { get; set; }
        public string RCNO92 { get; set; }
        public string VEND92 { get; set; }
        public string SupplierName { get; set; }
        public string StatusCode { get; set; }
        public string STATUSText { get; set; }
        public string CreationUser { get; set; }
        public string CreateDate { get; set; }
        public string GRN { get; set; }
        public string PONO { get; set; }
        public int Rep { get; set; }
        public string ItemNO { get; set; }
        public string SuppRef { get; set; }
        public string LotNumber { get; set; }
        public string Col { get; set; }
        public string SIZE { get; set; }
        public string ProjectNO { get; set; }
        public string ColorShade { get; set; }
        public string ColGroup { get; set; }
        public string UseFul { get; set; }
        public string Location { get; set; }
        public string StockRoom { get; set; }
        public decimal ReturnedQty { get; set; }
        public string UOM { get; set; }
        public decimal Price { get; set; }
        public string Currency { get; set; }
        public decimal Amount { get; set; }
        public string ReasonCode { get; set; }
        public string ResonText { get; set; }

        public string SuppSize { get; set; }
        public string SuppCup { get; set; }
    }

    //------------------------END--------------------------
    public class POPCLevel1WeeklyAmountReportClass
    {
        public int? Page { get; set; }
        public string Code { get; set; }
        public int? Week1 { get; set; }
        public double? AllAmount1 { get; set; }
        public double? BalanceAmount1 { get; set; }
        public int? Week2 { get; set; }
        public double? AllAmount2 { get; set; }
        public double? BalanceAmount2 { get; set; }
        public int? Week3 { get; set; }
        public double? AllAmount3 { get; set; }
        public double? BalanceAmount3 { get; set; }
        public int? Week4 { get; set; }
        public double? AllAmount4 { get; set; }
        public double? BalanceAmount4 { get; set; }
        public int? Week5 { get; set; }
        public double? AllAmount5 { get; set; }
        public double? BalanceAmount5 { get; set; }
        public int? Week6 { get; set; }
        public double? AllAmount6 { get; set; }
        public double? BalanceAmount6 { get; set; }
        public int? Week7 { get; set; }
        public double? AllAmount7 { get; set; }
        public double? BalanceAmount7 { get; set; }
        public int? Week8 { get; set; }
        public double? AllAmount8 { get; set; }
        public double? BalanceAmount8 { get; set; }

        public int? Year1 { get; set; }
        public int? Year2 { get; set; }
        public int? Year3 { get; set; }
        public int? Year4 { get; set; }
        public int? Year5 { get; set; }
        public int? Year6 { get; set; }
        public int? Year7 { get; set; }
        public int? Year8 { get; set; }


    }

    //public partial class POBasicInfo : BaseEntity
    //{

    //}

    public partial class POReportConfig : BaseEntity
    {

    }


    //Leve2 汇总BO, 由David增加 2022-05-13
    //public partial class POColorSizeDetail
    //{
    //    public int TotalSizeCode { get; set; }
    //    public int TotalSizeDesc { get; set; }
    //    public int TotalFitCode { get; set; }
    //    public int TotalFitDesc { get; set; }
    //}

    //public partial class POChangesMonitor
    //{
    //    public int TotalSizeCode { get; set; }
    //    public int TotalSizeDesc { get; set; }
    //    public int TotalFitCode { get; set; }
    //    public int TotalFitDesc { get; set; }
    //}

    public class POColorSizeDetailSummary : POColorSizeDetail
    {
        public decimal? TotalSupplierPOQty { get; set; }
        public decimal? TotalSupplierOutstandingQty { get; set; }
        public decimal? TotalPOBalancePercent { get; set; }

        public int TotalSizeCode { get; set; }
        public int TotalSizeDesc { get; set; }
        public int TotalFitCode { get; set; }
        public int TotalFitDesc { get; set; }


        public List<TempActionLogClass> ActionLogList { get; set; }

        public long?[] ActionLogOIDs
        {
            get { return ActionLogList.Select(p => p.OID).ToArray(); }
        }


        public string TotalActionLogSeqNoShow
        {
            get
            {
                //return ActionLogList.Select(p => p.SeqNoShow).Count() == 0 ? null : string.Join("\r\n", ActionLogList.Select(p => p.SeqNoShow).ToArray());
                return string.Join("\r\n", ActionLogList.Select(p => p.SeqNoShow).ToArray());
            }
        }

        public string TotalActionLogTaking
        {
            get { return string.IsNullOrEmpty(TotalActionLogSeqNoShow) ? null : "Y"; }
        }

        public string TotalActionLogGroup
        {
            get
            {
                if (string.IsNullOrEmpty(TotalActionLogSeqNoShow))
                {
                    return null;
                }

                return ActionLogList.Any(p => p.Group == "Y") ? "Y" : "N";
            }
        }

        public string TotalActionLogCompletionStage_Target
        {
            get { return string.Join("\r\n", ActionLogList.Select(p => p.TargetDate.HasValue ? p.TargetDate.Value.ToString("MM-dd") : "").ToArray()); }
        }

        public string TotalActionLogCompletionStage_Revised
        {
            get { return string.Join("\r\n", ActionLogList.Select(p => p.RevisedDate.HasValue ? p.RevisedDate.Value.ToString("MM-dd") : "").ToArray()); }
        }

        public string TotalActionLogCompletionStage_Cmpl
        {
            get { return string.Join("\r\n", ActionLogList.Select(p => p.CmplDate.HasValue ? p.CmplDate.Value.ToString("MM-dd") : "").ToArray()); }
        }

    }


    public class TempActionLogClass
    {
        public long? OID { get; set; }
        public string SeqNoShow { get; set; }
        public string Taking { get; set; }
        public string Group { get; set; }
        public DateTime? TargetDate { get; set; }
        public DateTime? RevisedDate { get; set; }
        public DateTime? CmplDate { get; set; }
    }

    public class GroupActionLogComparer : IEqualityComparer<TempActionLogClass>
    {

        public bool Equals(TempActionLogClass x, TempActionLogClass y)
        {
            if (x == null || y == null)
            {
                return false;
            }

            return x.OID == y.OID;
        }

        public int GetHashCode(TempActionLogClass obj)
        {
            return obj.OID.ToString().GetHashCode();

            //return (obj.Company +
            //   obj.PONO +
            //   obj.Version.ToString() +
            //   obj.AmendmentNo.ToString() +
            //   obj.OrderLine.ToString() +
            //   obj.SKU.ToString() +
            //   obj.SplitNo.ToString()).GetHashCode();
        }

    }


    public class POChangesMonitorSummary : POChangesMonitor
    {
        ////Add by shulin 2022-07-20
        //public DateTime? POActualTransitDate { get; set; }

        #region 这些属性用于 L3 - Action Log Incomplete Report
        public DateTime? TimeFrame2DateShow
        {
            get
            {
                return TimeFrameIIReceiveGoodEndPointDateShow.HasValue ? TimeFrameIIReceiveGoodEndPointDateShow : ArrivalPointofdestinationShow;
            }
        }

        public DateTime? ActionLogDetail_StartFollowDate { get; set; }
        public int? ActionLogDetail_FollowCount { get; set; }
        public string ActionLogDetail_Sender { get; set; }
        public string ActionLogDetail_FollowSummary { get; set; }

        public DateTime? ActionLogHeader_TargetDate { get; set; }


        public bool IsGroupFirstRow { get; set; }
        public bool IsGroupLastRow { get; set; }

        #endregion


        public decimal? TotalPHAcoumt { get; set; }
        public decimal? TotalSupplierPOQty { get; set; }
        public decimal? TotalSupplierOutstandingQty { get; set; }
        public decimal? TotalPOBalancePercent { get; set; }

        public double? TotalSplitQty { get; set; }
        public double? TotalDRQty { get; set; }

        public double? TotalGRNQty { get; set; }
        public double? TotalRCQty { get; set; }
        public double? TotalStockInQty { get; set; }
        public double? TotalCummQty { get; set; }
        public double? TotalReceivedQty { get; set; } //Label Qty

        public double? TotalGlossQty { get; set; }
        public double? TotalNetQty { get; set; }
        public double? TotalStockInUseful { get; set; }


        public decimal? TotalAddQty { get; set; }
        public decimal? TotalAddQtyFOC { get; set; }

        public int TotalSizeCode { get; set; }
        public int TotalSizeDesc { get; set; }
        public int TotalFitCode { get; set; }
        public int TotalFitDesc { get; set; }

        public string TotalHowManyLot { get; set; }
        public string TotalSplitMode
        {
            get
            {
                if (TotalHowManyLot == "--")
                {
                    return "--";
                }

                return this.SplitMode;
            }
        }

        public string TotalSplitShpt
        {
            get
            {
                return TotalHowManyLot == "--" ? "N" : "Y";
            }
        }

        //public List<TempActionLogClass> ActionLogList { get; set; }

        //public long?[] ActionLogOIDs
        //{
        //    get { return ActionLogList.Select(p => p.OID).ToArray(); }
        //}

        //public string TotalActionLogSeqNoShow
        //{
        //    get
        //    {
        //        string Str = string.Join("\r\n", ActionLogList.Select(p => p.SeqNoShow).ToArray());
        //        return string.IsNullOrEmpty(Str) ? null : Str;

        //        //return string.Join("\r\n", ActionLogList.Select(p => p.SeqNoShow).ToArray()); 
        //    }
        //}

        //public string TotalActionLogTaking
        //{
        //    get { return string.IsNullOrEmpty(TotalActionLogSeqNoShow) ? null : "Y"; }
        //}

        //public string TotalActionLogGroup
        //{
        //    get
        //    {
        //        if (string.IsNullOrEmpty(TotalActionLogSeqNoShow))
        //        {
        //            return null;
        //        }

        //        return ActionLogList.Any(p => p.Group == "Y") ? "Y" : "N";
        //    }
        //}

        //public string TotalActionLogCompletionStage_Target
        //{
        //    get { return string.Join("\r\n", ActionLogList.Select(p => p.TargetDate.HasValue ? p.TargetDate.Value.ToString("MM-dd") : "").ToArray()); }
        //}

        //public string TotalActionLogCompletionStage_Revised
        //{
        //    get { return string.Join("\r\n", ActionLogList.Select(p => p.RevisedDate.HasValue ? p.RevisedDate.Value.ToString("MM-dd") : "").ToArray()); }
        //}

        //public string TotalActionLogCompletionStage_Cmpl
        //{
        //    get { return string.Join("\r\n", ActionLogList.Select(p => p.CmplDate.HasValue ? p.CmplDate.Value.ToString("MM-dd") : "").ToArray()); }
        //}


    }

    public class POChangesMonitorComparer : IEqualityComparer<POChangesMonitor>
    {
        public bool Equals(POChangesMonitor x, POChangesMonitor y)
        {
            if (x == null || y == null)
            {
                return false;
            }

            return x.Company == y.Company &&
                   x.PONO == y.PONO &&
                   x.Version == y.Version &&
                   x.AmendmentNo == y.AmendmentNo &&
                   x.OrderLine == y.OrderLine &&
                   x.SKU == y.SKU &&
                   x.SplitNo == y.SplitNo;
        }

        public int GetHashCode(POChangesMonitor obj)
        {
            return (obj.Company +
               obj.PONO +
               obj.Version.ToString() +
               obj.AmendmentNo.ToString() +
               obj.OrderLine.ToString() +
               obj.SKU.ToString() +
               obj.SplitNo.ToString()).GetHashCode();
        }
    }

    public partial class ActionLogCategory : BaseEntity
    {

    }

    public partial class ActionLogHeader : BaseEntity
    {
        public IEnumerable<ActionLogDetail> ActionLogDetailList
        {
            get
            {
                if (CurrentDataContext == null)
                {
                    CurrentDataContext = ContextBuilder.CreateContext<POPCDataContext>();
                }
                return (CurrentDataContext as POPCDataContext).ActionLogDetails.Where(p => p.ActionLogID == ActionLogID && p.ActionLogSeqNo == ActionLogSeqNo);
            }
        }

        public string OddEvenRowFlag { get; set; }

        public string NoOfSplit { get { return string.Format("{0}/{1}", this.SplitNo.ToString(), this.TotalSplit.ToString()); } }

        public string ActionLogSeqNoShow
        {
            get
            {
                //return string.IsNullOrEmpty( ActionLogSeqNo) ? ActionLogSeqNo.Value.ToString().Substring(4, 4) : null; 
                //return ActionLogSeqNo;

                return string.IsNullOrEmpty(ActionLogSeqNo) ? null : ActionLogSeqNo.Substring(2);
            }
        }

        public string ActionLogNoStageShow
        {
            get
            {
                if (string.IsNullOrEmpty(ActionLogSeqNoShow))
                {
                    return null;
                }
                return ActionLogSeqNoShow.TrimEnd('*');
            }
        }

        public string ActionLogIsCompletedShow
        {
            get
            {
                if (string.IsNullOrEmpty(ActionLogSeqNoShow))
                {
                    return null;
                }
                return ActionLogSeqNoShow.EndsWith("*") ? "*" : null;
            }
        }

        partial void OnIsCompletedChanged()
        {
            this.CompletedDate = (this.IsCompleted ?? false) ? DateTime.Now : new Nullable<DateTime>();
            //if (CompletedDate.HasValue)
            //{
            //    this.ActionLogSeqNo = this.ActionLogSeqNo + "*";
            //}
            //else
            //{
            //    this.ActionLogSeqNo = this.ActionLogSeqNo.TrimEnd('*');
            //}
        }

        partial void OnLastStageIsCompletedChanged()
        {
            //if (!(this.IsCompleted ?? false))
            //{
            //    this.LastStageCompletedDate = null;
            //    throw new Exception("Can't complete, 1st stage is incomplete");
            //}

            this.LastStageCompletedDate = (this.LastStageIsCompleted ?? false) ? DateTime.Now : new Nullable<DateTime>();

            NeedActionLogSendCompletedEmail = (this.LastStageIsCompleted ?? false);
        }

        //是否需要发送Action Log Completed邮件
        public bool NeedActionLogSendCompletedEmail { get; set; }
    }

    public partial class ActionLogDetail : BaseEntity
    {
    }

    public partial class ActionLogCompleteReason : BaseEntity
    {
    }

    public partial class ActionLogEmail
    {
        public long ID { get; set; }
        public string From { get; set; }
        public string To { get; set; }
        public string cc { get; set; }
        public string Subject { get; set; }
        public string Message { get; set; }
        public long DetailID { get; set; }
    }

    public partial class ChoiceWOSeqNoClass
    {
        public Int64 SeqNo { get; set; }
        public string WO { get; set; }
        public DateTime FactoryStartDate { get; set; }
        public DateTime ExftyDate { get; set; }
    }

    public partial class MaterialTypeDropDeadDate : BaseEntity
    {

    }

    public partial class sp_GetOutstandingAdviceNoteResult
    {
        public string Factory { get; set; }
        public string Company { get; set; }
        public string PONO { get; set; }
        public int OrderLine { get; set; }
        public int? Version { get; set; }
        public int? AmendmentNo { get; set; }
        public string Supplier { get; set; }
        public string Currency { get; set; }
        public string PaymentTerms { get; set; }
        public DateTime? POIssueDate { get; set; }
        public string BuyerCode { get; set; }
        public string AdviceNote { get; set; }
        public DateTime? GRNDate { get; set; }
        public DateTime? HDODate { get; set; }
        public string PurchaseOfficer { get; set; }
        public string PaymentDone { get; set; }
        public DateTime? InvoiceDate { get; set; }
        public string InvoiceNo { get; set; }
        public string InvoiceMatchingDone { get; set; }
        public DateTime? PaymentDoneDate { get; set; }
        public double? POQty { get; set; }
        public string SplitShpt { get; set; }
        public double? GRNQty { get; set; }
        public double? RCQty { get; set; }
        public double? RCPercent { get; set; }
        public double? StockInQty { get; set; }
        public DateTime? StockInDate { get; set; }
        public DateTime? FillUpDate { get; set; }
        public DateTime? InvoiceMatchingDate { get; set; }
        public DateTime? InvoiceMatchingDropDeadDate { get; set; }
        public DateTime? PaymentDropDeadDate { get; set; }
        public string PHUom { get; set; }
        public string SupplierUom { get; set; }
        public int? LogNo { get; set; }
        public int? Suffix { get; set; }
        public string Transferred { get; set; }
        public string Status { get; set; }

        public string RCCode { get; set; }
        public double? GrossQty { get; set; }
        public double? NetQty { get; set; }
        public double? StockInUseful { get; set; }

        public double? BalanceQty { get; set; }
        public double? BalancePercent { get; set; }


        string _LogNoShow;
        public string LogNoShow
        {
            get
            {
                if (string.IsNullOrEmpty(_LogNoShow))
                {
                    string Str = "0000000000" + (this.LogNo ?? 0).ToString();
                    _LogNoShow = Str.Substring(Str.Length - 5, 5);
                }
                return _LogNoShow;
            }
            set
            {
                _LogNoShow = value;
            }
        }

        public string MatchingDropDeadDateWeek
        {
            get
            {
                if (InvoiceMatchingDropDeadDate.HasValue)
                {
                    return InvoiceMatchingDropDeadDate.Value.Year.ToString() + "-" + (InvoiceMatchingDropDeadDate.Value.DayOfYear / 7 + 1);
                }

                return "";
            }
            set { }

        }

        public string PaymentDropDeadDateWeek
        {
            get
            {
                if (PaymentDropDeadDate.HasValue)
                {
                    return PaymentDropDeadDate.Value.Year.ToString() + "-" + (PaymentDropDeadDate.Value.DayOfYear / 7 + 1);
                }

                return "";
            }
            set { }
        }

    }

    public partial class POInvoiceMatching : BaseEntity
    {

    }

    public partial class Field : BaseEntity
    {

    }

    // Level 3中选择做Action Log的行辅助类
    public class L3ActionLogSelectResult
    {
        public string PONO { get; set; }
        public int OrderLine { get; set; }
        public string ColorCode { get; set; }
        public int SplitNo { get; set; }
        public int TotalSplit { get; set; }

        public string ActionLogID { get; set; }
        public string ActionLogSeqNo { get; set; }

        public string SuppCode { get; set; }
        public string SuppRef { get; set; }
        public string ProjectNo { get; set; }
        public DateTime? WOFWStartDate { get; set; }
        public string Factory { get; set; }
        public string ItemCode { get; set; }
        public int? RWO_DaysDiff { get; set; }
        public string PrdnSite { get; set; }

    }

    /// <summary>
    /// Action Log 工作模式
    /// </summary>
    public enum ActionLogWorkModes
    {
        AddNew,
        Edit,
        Complete
    }

    public partial class ActionLogIMQE : BaseEntity
    {

    }


    public partial class Z_OutstandingPO : BaseEntity
    {

    }
}
