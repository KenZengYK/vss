using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using DevExpress.Utils;
using DevExpress.Utils.Drawing;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraGrid.Views.BandedGrid.ViewInfo;
using DevExpress.XtraGrid.Views.Grid;
using PH.FabricInspection.BO;
using PH.FabricInspection.UI.Main;
using PH.FabricInspection.UI.Report.BraCupReport;
using PH.MIDc.BO;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.ExtendLibrary;
using PH.POPC.BO;
using PH.Platform.AuthMgr.BO;
using PH.FabricInspection.UI.Select;

namespace PH.FabricInspection.UI.BraCup
{
    public partial class BraCupHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public BraCupHeaderListForm()
        {
            InitializeComponent();
        }

        bool _ConditionCall = false;
        string _Whse;
        DateTime _IDCreateDateFrom;
        DateTime _IDCreateDateTo;
        /// <summary>
        /// 带查询条件调用构造函数
        /// </summary>
        /// <param name="AConditionCall">必须为True</param>
        /// <param name="AWhse">Warehouse</param>
        /// <param name="AIDCreateDateFrom">id Create Date开始日期</param>
        /// <param name="AIDCreateDateTo">id Create Date结束日期</param>
        public BraCupHeaderListForm(bool AConditionCall, string AWhse, DateTime AIDCreateDateFrom, DateTime AIDCreateDateTo)
            : this()
        {
            _ConditionCall = AConditionCall;
            _Whse = AWhse;
            _IDCreateDateFrom = AIDCreateDateFrom;
            _IDCreateDateTo = AIDCreateDateTo;
        }

        bool _OnlyShowIncompleted;
        public BraCupHeaderListForm(bool AOnlyShowIncompleted)
            : this()
        {
            _OnlyShowIncompleted = AOnlyShowIncompleted;
        }

        string _Status;
        public BraCupHeaderListForm(string AStatus)
            : this()
        {
            _Status = AStatus;
        }


        public override void DataBind()
        {
            btnShowColumnInfo.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                btnShowColumnInfo.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            }

            //this.AlwaysShowDesignLayout = true;


            base.DataBind();
            this.DataContext = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            if (_ConditionCall)
            {
                this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).BraCupHeaders
                    .Where(p => (_Whse == "" || p.Whse == _Whse) && p.IDCreateDate >= _IDCreateDateFrom && p.IDCreateDate < _IDCreateDateTo.AddDays(1))
                    .OrderByDescending(p => p.AuditNo).ThenBy(p => p.AuditStage).ThenBy(p => p.ItemIDNO);
            }
            else
            {
                IEnumerable<BraCupHeader> lists = (this.DataContext as FabricInspectionDataContext).BraCupHeaders
                    .Where(p => p.IDCreateDate >= DateTime.Now.AddDays(-150) && p.Status == _Status)
                    .OrderByDescending(p => p.AuditNo).ThenBy(p => p.AuditStage).ThenBy(p => p.ItemIDNO);

                if (_OnlyShowIncompleted) //只查Incompleted的数据
                {
                    lists = lists.Where(p => p.ActionLogIsCompleted == "N");
                    //barEditItemDashboard.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    bar1.Visible = false;
                }

                this.BindingSource.DataSource = lists;
            }

            this.EditorTypeName = typeof(BraCupHeaderDetailForm).FullName;

            this.objListGridView.OptionsBehavior.Editable = true;

            Auth_FunRight ConfirmRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Confirm");
            btnConfirm.Enabled = (ConfirmRight != null);

            //this.bandedGridView1.BestFitColumns();
            //this.colActionLogNO.OptionsColumn.AllowEdit = true;
            //repositoryItemCheckEdit_Dashboard.CheckedChanged += new EventHandler(repositoryItemCheckEdit_Dashboard_CheckedChanged);
            //repositoryItemCheckEdit_DashboardOutstanding.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardOutstanding_CheckedChanged);
            //repositoryItemCheckEdit_DashboardLastStageOutstaing.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardLastStageOutstaing_CheckedChanged);
        }

        protected override void OnClickAddNew()
        {
            //base.OnClickAddNew();
            InputItemCodeForm frmInputItemCode = new InputItemCodeForm();
            if (frmInputItemCode.ShowDialog() == DialogResult.OK)
            {
                //int Index = this.objListGridView.LocateByValue(0, colLotID, frmInputItemCode.ItemCode);
                //if (Index >= 0)
                //{
                //    this.objListGridView.FocusedRowHandle = Index;
                //    base.OnClickOpen();
                //}
                //else
                //{

                SelectLotIDForm frmSelectLotID = new SelectLotIDForm(frmInputItemCode.AuditStage, frmInputItemCode.Company,
                    frmInputItemCode.IDCreateDate, frmInputItemCode.ItemCode, frmInputItemCode.ColorCode);

                if (frmSelectLotID.ShowDialog() == DialogResult.OK)
                {
                    FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

                    List<BraCupSelectLotIDResult> AllDataList = frmSelectLotID.GetAllData();
                    List<BraCupSelectLotIDResult> SelectList = frmSelectLotID.GetSelectData();
                    MobileQCDataContext MobileQCDB = ContextBuilder.CreateContext<MobileQCDataContext>();
                    POPCDataContext POPCDB = ContextBuilder.CreateContext<POPCDataContext>();
                    int? iPackListQtyByLot = AllDataList.Select(p => p.PackListQty).Sum();

                    Dictionary<string, int> dictAQLAuditBalanceQty = new Dictionary<string, int>();
                    Dictionary<string, int> dictAQL25StandardBalanceQty = new Dictionary<string, int>();

                    foreach (BraCupSelectLotIDResult item in SelectList)
                    {
                        BraCupHeader obj = this.BindingSource.AddNew() as BraCupHeader;
                        obj.Company = frmInputItemCode.Company;
                        obj.AuditStage = frmInputItemCode.AuditStage;
                        obj.IDCreateDate = frmInputItemCode.IDCreateDate;
                        obj.ItemCode = item.ItemNO;
                        obj.ColorCode = item.ColorCode;
                        obj.AuditNo = db.fn_GetBraCupMaxAuditNO((obj.IDCreateDate ?? DateTime.MinValue).ToString("yyMMdd"), obj.ItemCode, obj.ColorCode);
                        obj.AuditNo1 = obj.AuditNo.ToString().Substring(0, 6) + "-" + obj.AuditNo.ToString().Substring(6);

                        obj.AuditDate = DateTime.Now;
                        obj.Auditor = SysParamHelper.Instance.UserID;
                        obj.Whse = item.Whse;
                        obj.PONO = item.PONO;
                        obj.SuppRef = item.SuppItemRef;
                        obj.SuppCode = item.SuppCode;
                        obj.HDONO = item.HDONO;
                        obj.InvoiceNo = item.InvoiceNo;
                        obj.ProjectNO = item.ProjectNO;
                        obj.TotalBoxQty = AllDataList.Count();

                        obj.PackListQtyByLot = iPackListQtyByLot; //Pkg list Qty **
                        obj.PackListQty = item.PackListQty;       //抽检的单个Size Cup的PackList Qty

                        obj.AuditSKU = item.CupDesc; //item.CupCode;
                        //obj.AuditSKUCrossCup = item.CupDesc;
                        obj.ItemIDNO = item.LotNO;
                        //obj.UnderPullSizeCupQtyByLot = SelectList.Select(p => p.CupDesc).Distinct().Count();         //抽检了多少个Size Cup
                        obj.UnderPackingListSizeCupQtyByLot = AllDataList.Select(p => p.CupDesc).Distinct().Count(); //本次抽检批次中所有的Size Cup，包括抽检和未抽检查的


                        //从MIDc中取布封 
                        MIDcDataContext MIDcDB = ContextBuilder.CreateContext<MIDcDataContext>();
                        var MIDcObj = MIDcDB.Details.FirstOrDefault(p => p.SuppRef == obj.SuppRef);
                        if (MIDcObj != null)
                        {
                            obj.AgreedUsableWidthMin = MIDcObj.SupplierWidthMin.HasValue ? MIDcObj.SupplierWidthMin : MIDcObj.SupplierWidth;
                            obj.AgreedUsableWidthMax = MIDcObj.SupplierWidthMax.HasValue ? MIDcObj.SupplierWidthMax : MIDcObj.SupplierWidth;

                            //计算 width Result
                            obj.WidthResultByID = (obj.EdgeToEdgeWidth >= obj.AgreedUsableWidthMin && obj.EdgeToEdgeWidth <= obj.AgreedUsableWidthMax) ? "A" : "B";
                        }


                        if (string.IsNullOrEmpty(item.CrossCup)) //如果没有Cross Cup时，同一种Size Cup也需要按Cross Cup的算法计算
                        {
                            item.CrossCup = item.CupDesc;
                        }

                        //if (string.IsNullOrEmpty(item.CrossCup)) //没有Cross Cup
                        //{
                        //    obj.AuditSKUCrossCup = item.CupDesc;
                        //    var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && obj.PackListQty >= p.Qty1 && obj.PackListQty <= p.Qty2);
                        //    obj.AQLAuditQtyByCrossCup = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);      //需要抽检的数量 by cross cup
                        //    obj.AQL25StandardQtyByCrossCup = SampleObj == null ? 0 : (SampleObj.AQty ?? 0); //抽检合格标准数 by cross cup, 超过这个数则不合格
                        //}
                        //else //有Cross Cup
                        //{
                        string[] CupGroups = item.CrossCup.Split(new string[] { "/" }, StringSplitOptions.RemoveEmptyEntries);
                        string Str = "";

                        var CupList = POPCDB.POColorSizeDetails.Where(p => p.PONO == item.PONO && (p.VersionFlag ?? false) &&
                              p.ItemCode == item.ItemNO && p.SupplierReference == item.SuppItemRef && p.ColorCode == item.ColorCode)
                             .Select(p => new { p.SizeDesc, p.FitDesc }).ToList().Select(p => new { SizeCup = p.SizeDesc.Trim() + p.FitDesc.Trim() }).Distinct().ToList();
                        foreach (var cup in CupList)
                        {
                            string POCup = CupGroups.FirstOrDefault(p => p == cup.SizeCup);
                            if (!string.IsNullOrEmpty(POCup))
                            {
                                Str += POCup.Trim() + "/";
                            }
                        }
                        obj.AuditSKUCrossCup = Str.TrimEnd('/');  //从PO SKU中取得Cross Cup，可能CrossCupGroup表中的一些Size Cup在PO中没有

                        //计算Pkg list qty - Sz Grpg Qty*
                        string[] AuditSKUCrossCups = obj.AuditSKUCrossCup.Split(new string[] { "/" }, StringSplitOptions.RemoveEmptyEntries);
                        obj.PackListQtyByCrossCup = AllDataList.Where(p => p.SuppItemRef == item.SuppItemRef && p.ColorCode == item.ColorCode && AuditSKUCrossCups.Contains(p.CupDesc.Trim()))
                            .Select(p => p.PackListQty).Sum();

                        var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && obj.PackListQtyByCrossCup >= p.Qty1 && obj.PackListQtyByCrossCup <= p.Qty2);

                        //如果不是第一次检查，需要由1st的Level 2 升为 Level 3 检查
                        if (frmInputItemCode.AuditStage != "1st")
                        {
                            SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Seq == SampleObj.Seq + 1);
                        }



                        obj.AQLAuditQtyByCrossCup = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);      //需要抽检的数量 by cross cup
                        obj.AQL25StandardQtyByCrossCup = SampleObj == null ? 0 : (SampleObj.AQty ?? 0); //抽检合格标准数 by cross cup, 超过这个数则不合格

                        int iPackListQtyByCrossCupOnlySelected = SelectList.Where(p => p.SuppItemRef == item.SuppItemRef && p.ColorCode == item.ColorCode && AuditSKUCrossCups.Contains(p.CupDesc.Trim()))
                            .Select(p => (p.PackListQty ?? 0)).Sum();


                        obj.PackListQtyByCrossCupOnlySelected = iPackListQtyByCrossCupOnlySelected; //保存到DB，为了处理2nd Audit时的计算

                        if (!dictAQLAuditBalanceQty.ContainsKey(obj.AuditSKUCrossCup))
                        {
                            dictAQLAuditBalanceQty.Add(obj.AuditSKUCrossCup, (obj.AQLAuditQtyByCrossCup ?? 0));
                        }

                        if (!dictAQL25StandardBalanceQty.ContainsKey(obj.AuditSKUCrossCup))
                        {
                            dictAQL25StandardBalanceQty.Add(obj.AuditSKUCrossCup, (obj.AQL25StandardQtyByCrossCup ?? 0));
                        }

                        decimal Ratio = iPackListQtyByCrossCupOnlySelected == 0 ? 0 : 1.0000m * (obj.PackListQty ?? 0) / iPackListQtyByCrossCupOnlySelected; //分摊比例

                        obj.AQLAuditQty = Convert.ToInt32(Math.Ceiling(Ratio * (obj.AQLAuditQtyByCrossCup ?? 0)));           //需要抽检的数量
                        if (obj.AQLAuditQty > dictAQLAuditBalanceQty[obj.AuditSKUCrossCup])
                        {
                            obj.AQLAuditQty = dictAQLAuditBalanceQty[obj.AuditSKUCrossCup];
                        }
                        dictAQLAuditBalanceQty[obj.AuditSKUCrossCup] -= (obj.AQLAuditQty ?? 0);

                        obj.AQL25StandardQty = Convert.ToInt32(Math.Ceiling(Ratio * (obj.AQL25StandardQtyByCrossCup ?? 0))); //抽检合格标准数, 超过这个数则不合格
                        if (obj.AQL25StandardQty > dictAQL25StandardBalanceQty[obj.AuditSKUCrossCup])
                        {
                            obj.AQL25StandardQty = dictAQL25StandardBalanceQty[obj.AuditSKUCrossCup];
                        }
                        dictAQL25StandardBalanceQty[obj.AuditSKUCrossCup] -= (obj.AQL25StandardQty ?? 0);
                        //}


                        this.BindingSource.EndEdit();
                        obj.Save(db, this.BindingSource);

                        ////List<BraCupSelectLotIDResult> AllData = frmSelectLotID.GetAllData();

                        ////從Cross Cup Group中取得所有的Cup，然後根據PO中有的Cup生成 SKU based on cross cup group
                        //var CrossCupGroup = (this.DataContext as FabricInspectionDataContext).CrossCupGroups.FirstOrDefault(p =>
                        //    p.SuppRef == item.SuppItemRef && p.CupGroup.Contains(item.CupDesc.Trim()));

                        //if (CrossCupGroup != null && !string.IsNullOrEmpty(CrossCupGroup.CupGroup)) //有Cross Cup的情况
                        //{
                        //    string[] CupGroups = CrossCupGroup.CupGroup.Split(new string[] { "/" }, StringSplitOptions.RemoveEmptyEntries);
                        //    string Str = "";

                        //    var CupList = POPCDB.POColorSizeDetails.Where(p => p.PONO == item.PONO && (p.VersionFlag ?? false) &&
                        //          p.ItemCode == item.ItemNO && p.SupplierReference == item.SuppItemRef && p.ColorCode == item.ColorCode)
                        //         .Select(p => new { p.SizeDesc, p.FitCode }).ToList().Select(p => new { SizeCup = p.SizeDesc + p.FitCode }).Distinct().ToList();
                        //    foreach (var cup in CupList)
                        //    {
                        //        string POCup = CupGroups.FirstOrDefault(p => p == cup.SizeCup);
                        //        if (!string.IsNullOrEmpty(POCup))
                        //        {
                        //            Str += POCup.Trim() + "/";
                        //        }
                        //    }
                        //    obj.AuditSKUCrossCup = Str.TrimEnd('/');  //从PO SKU中取得Cross Cup

                        //    //List<BraCupSelectLotIDResult> AllData = frmSelectLotID.GetAllData();
                        //    string[] AuditSKUCrossCups = obj.AuditSKUCrossCup.Split(new string[] { "/" }, StringSplitOptions.RemoveEmptyEntries);
                        //    obj.PackListQty = AllDataList.Where(p => p.SuppItemRef == item.SuppItemRef && p.ColorCode == item.ColorCode && AuditSKUCrossCups.Contains(p.CupDesc.Trim()))
                        //        .Select(p => p.PackListQty).Sum();

                        //    var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && obj.PackListQty >= p.Qty1 && obj.PackListQty <= p.Qty2);
                        //    obj.AQLAuditQty = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);

                        //}
                        //else //没有Cross Cup的情况
                        //{
                        //    //List<BraCupSelectLotIDResult> AllData = frmSelectLotID.GetAllData();
                        //    obj.PackListQty = AllDataList.Where(p => p.SuppItemRef == item.SuppItemRef && p.ColorCode == item.ColorCode && p.CupDesc.Trim() == item.CupDesc.Trim())
                        //        .Select(p => p.PackListQty).Sum();

                        //    var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && obj.PackListQty >= p.Qty1 && obj.PackListQty <= p.Qty2);
                        //    obj.AQLAuditQty = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);

                        //}


                        //this.BindingSource.EndEdit();
                        //obj.Save(db, this.BindingSource);
                    }
                }
            }
        }


        private void repositoryItemButtonEdit_ActionLog_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            BraCupHeader obj = this.BindingSource.Current as BraCupHeader;

            var lists = (this.BindingSource.DataSource as IEnumerable<BraCupHeader>).Where(p => p.AuditNo == obj.AuditNo && p.AuditStage == obj.AuditStage)
                  .Select(p => new { p.ProjectNO, p.SuppCode, p.PONO, IDCreateDate = (p.IDCreateDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") });

            string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNO)).Select(p => p.ProjectNO.Trim()).ToList(), "/");
            string Batchs = string.Join("/", lists.Select(p => p.IDCreateDate).Distinct().ToArray<string>());

            string ActionLogNO = obj.ActionLogNO;
            if (string.IsNullOrEmpty(ActionLogNO))
            {
                ActionLogNO = null; // ECode(DateTime.Now.ToString("yyyy/MM/dd"));
            }


            //string ActionLogNO = obj.ActionLogNO;
            //if (string.IsNullOrEmpty(ActionLogNO)) //新增Action Log
            //{
            //    DateTime IDCreateDate = (obj.IDCreateDate ?? DateTime.MinValue);

            //    //ActionLogNO = "Seq#" + IDCreateDate.ToString("MM") + ECode(IDCreateDate.ToString("yyyy/MM/dd"));
            //    ActionLogNO = ECode(DateTime.Now.ToString("yyyy/MM/dd"));

            //    Suppliers = obj.SuppCode;
            //    Projects = obj.ProjectNO;
            //    Batchs = "";
            //}
            //else //打开已经保存好的Action Log
            //{
            //    var lists = (this.BindingSource.DataSource as IEnumerable<BraCupHeader>).Where(p => p.ActionLogOID == obj.ActionLogOID)
            //        .Select(p => new { p.ProjectNO, p.SuppCode, p.PONO, IDCreateDate = (p.IDCreateDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") });

            //    Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            //    Projects = FabricHelper.GetProjectFormatString(lists.Select(p => p.ProjectNO.Trim()).ToList(), "/");
            //    //Projects = string.Join("/", lists.Select(p => p.PONO.Trim()).Distinct().ToArray<string>());
            //    Batchs = string.Join("/", lists.Select(p => p.IDCreateDate).Distinct().ToArray<string>());
            //}

            //AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.BraCup, db, ActionLogNO, obj.ActionLogOID, this, Suppliers, Projects, Batchs);
            //frmAlertLog.ShowDialog();

            CurrentActionLogAuditNo = (this.BindingSource.Current as BraCupHeader).AuditNo;
            IEnumerable<BraCupHeader> MainSheetList = (this.BindingSource.DataSource as IEnumerable<BraCupHeader>).Where(p => p.AuditNo == obj.AuditNo && p.AuditStage == obj.AuditStage);
            AlertLogForm frmAlertLog = new AlertLogForm();
            frmAlertLog.PrepareActionLogData<BraCupHeaderListForm, BraCupHeader>(ActionLogProcessModes.BraCup, db, this, obj.ActionLogID, MainSheetList, Suppliers, Projects, Batchs);
            frmAlertLog.ShowDialog();
        }


        //public string ECode(string AIDCreateDate)
        //{
        //    string Str = "Seq#" + Convert.ToDateTime(AIDCreateDate).ToString("MM");
        //    var List = this.BindingSource.DataSource as IEnumerable<BraCupHeader>;
        //    var obj = List.Where(dr => !string.IsNullOrEmpty(dr.ActionLogNO) && dr.ActionLogNO.StartsWith(Str))
        //        .Select(dr => dr.ActionLogNO).Distinct().OrderByDescending(p => p).FirstOrDefault();

        //    if (obj == null)
        //    {
        //        return Str + "aa";
        //    }

        //    char LastChar = Convert.ToChar(obj.Substring(obj.Length - 1, 1)); //取最后一位字符
        //    if (LastChar != 'z')
        //    {
        //        char LastCharNew = Convert.ToChar((int)LastChar + 1);
        //        return obj.Substring(0, obj.Length - 1) + LastCharNew;
        //    }
        //    else
        //    {
        //        char PenultimateChar = Convert.ToChar(obj.Substring(obj.Length - 2, 1)); //取倒数第二个字符

        //        if (PenultimateChar == 'z')
        //        {
        //            return "Error";
        //        }

        //        char PenultimateCharNew = Convert.ToChar((int)PenultimateChar + 1);
        //        return obj.Substring(0, obj.Length - 2) + PenultimateCharNew + "a";
        //    }
        //}

        int? CurrentActionLogAuditNo;
        public void SaveActionLogInfoByID(string AActionLogID, IEnumerable<PH.FabricInspection.BO.ActionLogHeader> AActionLogHeaderList)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            BraCupHeader obj = this.BindingSource.Current as BraCupHeader;

            IEnumerable<BraCupHeader> AllDataList = BindingSource.List as IEnumerable<BraCupHeader>;
            //var MainSheetList = AllDataList.Where(p => p.AuditNo == obj.AuditNo && p.AuditStage == obj.AuditStage);
            //var MainSheetList = AllDataList.Where(p => p.AuditNo == obj.AuditNo);
            var MainSheetList = AllDataList.Where(p => p.AuditNo == CurrentActionLogAuditNo);

            foreach (var o in MainSheetList)
            {
                o.ActionLogID = null;
                o.ActionLogNO = null;
                o.ActionLogTaking = null;
                o.ActionLogGroup = null;
                o.ActionLogCategory = null;
                o.ActionLogTargetDate = null;
                o.ActionLogRevisedDate = null;
                o.ActionLogCmplDate = null;
                o.ActionLogIsCompleted = null;
            }

            if (AActionLogHeaderList.Count() > 0) //AActionLogHeaderList没有记录时，可能是删除了所有的Action Log Stage, 上面已经清除一ActionLog的信息
            {
                foreach (var o in MainSheetList)
                {
                    var GroupList = AActionLogHeaderList.Where(p => p.PONO == o.PONO && p.ColorCode == o.ColorCode);
                    o.ActionLogID = AActionLogID;

                    //从Action Log中计算出每一行(Lot ID)对应的Action Log Seq# (最多三个)
                    string ActionLogSeqNos = string.Join(",", GroupList.Select(p => p.ActionLogSeqNoShow).OrderBy(p => p).Take(3).ToArray());
                    o.ActionLogNO = ActionLogSeqNos;
                    o.ActionLogTaking = "Y";
                    o.ActionLogGroup = "G";
                    o.ActionLogCategory = string.Join(",", GroupList.Select(p => p.ItemNo).OrderBy(p => p).Take(3).ToArray());

                    o.ActionLogTargetDate = GroupList.Max(p => p.PlanEndDate);
                    o.ActionLogRevisedDate = GroupList.Max(p => p.PlanEndDate); //1st 沒有Rev. Date
                    o.ActionLogCmplDate = GroupList.Max(p => p.CompletedDate);
                    o.ActionLogIsCompleted = GroupList.Any(p => !p.CompletedDate.HasValue) ? "N" : "Y";
                }
            }

            this.BindingSource.EndEdit();
            this.bandedGridView1.HideEditor();
            db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        }

        //public void SaveActionLogInfoByID(string AActionLogNO, long? AActionLogOID)
        //{
        //    FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
        //    BraCupHeader obj = this.BindingSource.Current as BraCupHeader;

        //    IEnumerable<BraCupHeader> AllDataList = BindingSource.List as IEnumerable<BraCupHeader>;
        //    var lists = AllDataList.Where(p => p.AuditNo == obj.AuditNo);
        //    foreach (var o in lists)
        //    {
        //        if (string.IsNullOrEmpty(o.ActionLogNO))
        //        {
        //            o.ActionLogNO = AActionLogNO;
        //            o.ActionLogOID = AActionLogOID;
        //        }
        //    }

        //    //obj.ActionLogOID = AActionLogOID;
        //    //if (string.IsNullOrEmpty(obj.ActionLogNO))
        //    //{
        //    //    obj.ActionLogNO = AActionLogNO;
        //    //}

        //    this.BindingSource.EndEdit();
        //    this.bandedGridView1.HideEditor();
        //    db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        //}

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            string strParameterType = "SDPS";

            FabricInspectionDataContext db = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            SysParamHelper sph = SysParamHelper.Instance;
            if (sph.LangID == "TW" || sph.LangID == "CN")
            {
                var Lists = db.Fabric_Sys_Parameters.Where(p => p.Parameter_Type == strParameterType).Select(p => new { Code = p.Parameter_Key, Solution = p.Parameter_Desc }).ToList();
                Lists.Insert(0, null);
                this.repositoryItemLookUpEdit_FailSolution.DataSource = Lists;
                this.repositoryItemLookUpEdit_FailSolution.DisplayMember = "Solution";
                this.repositoryItemLookUpEdit_FailSolution.NullText = "";
                this.repositoryItemLookUpEdit_FailSolution.ValueMember = "Code";
            }
            else
            {
                var Lists = db.Fabric_Sys_Parameters.Where(p => p.Parameter_Type == strParameterType).Select(p => new { Code = p.Parameter_Key, Solution = p.ParameterEnglishDesc }).ToList();
                Lists.Insert(0, null);
                this.repositoryItemLookUpEdit_FailSolution.DataSource = Lists;
                this.repositoryItemLookUpEdit_FailSolution.DisplayMember = "Solution";
                this.repositoryItemLookUpEdit_FailSolution.NullText = "";
                this.repositoryItemLookUpEdit_FailSolution.ValueMember = "Code";
            }

            CalOddEvenRowFlag();

            bandedGridView1.OptionsView.RowAutoHeight = true;
            bandedGridView1.OptionsView.ShowFooter = true;
            bandedGridView1.OptionsView.ShowGroupPanel = true;

            this.colWhse.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colAduitNO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppRef.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colProjectNO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPONO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colHDONO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colAuditor.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
        }

        private void repositoryItemButtonEdit_OverallResultCoreDefectSupport_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
                obj.OverallResultCoreDefectSupport = frmReason.GetSelectedData();
                this.BindingSource.EndEdit();
                this.bandedGridView1.HideEditor();
                (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            int? SaveAuditNo = 0;
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                BraCupHeader obj = bandedGridView1.GetRow(i) as BraCupHeader;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveAuditNo = obj.AuditNo;
                }
                else
                {
                    if (obj.AuditNo == SaveAuditNo)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveAuditNo = obj.AuditNo;
                    }
                }
            }
        }


        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            //{
            //    GridView grid = objListGridControl.FocusedView as GridView;
            //    MessageBox.Show("Colmun Name: " + grid.FocusedColumn.Name + Environment.NewLine + "FieldName: " + grid.FocusedColumn.FieldName);
            //}

            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                GridView grid = objListGridControl.FocusedView as GridView;
                SetGridViewHeaderBackColorForm frmSetColor = new SetGridViewHeaderBackColorForm(this.DataContext as FabricInspectionDataContext,
                    "BraCup", grid.FocusedColumn.FieldName, grid.FocusedColumn.Name, this.SideProgramID, this.FileID, "BraCupHeaderListForm");
                frmSetColor.ShowDialog();
            }
        }

        //object SaveAllData = null;
        //void repositoryItemCheckEdit_Dashboard_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_Outstanding.EditValue)) { barEditItem_Outstanding.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_LastStageOutstanding.EditValue)) { barEditItem_LastStageOutstanding.EditValue = false; }
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.IsOverDueEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        //void repositoryItemCheckEdit_DashboardOutstanding_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_BehindSch.EditValue)) { barEditItem_BehindSch.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_LastStageOutstanding.EditValue)) { barEditItem_LastStageOutstanding.EditValue = false; }
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.IsOutstandingEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        //void repositoryItemCheckEdit_DashboardLastStageOutstaing_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (SaveAllData == null)
        //    {
        //        SaveAllData = this.BindingSource.DataSource;
        //    }

        //    CheckEdit edit = sender as CheckEdit;
        //    if (edit.Checked)
        //    {
        //        if (Convert.ToBoolean(barEditItem_BehindSch.EditValue)) { barEditItem_BehindSch.EditValue = false; }
        //        if (Convert.ToBoolean(barEditItem_Outstanding.EditValue)) { barEditItem_Outstanding.EditValue = false; }
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.IsLastStageOutstandingEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                DXMouseEventArgs eax = e as DXMouseEventArgs;
                BandedGridHitInfo info = bandedGridView1.CalcHitInfo(eax.Location);
                if (info.InBandPanel)
                {
                    BandedGridView grid = objListGridControl.FocusedView as BandedGridView;
                    SetGridViewBandBackColorForm frmSetBandColor = new SetGridViewBandBackColorForm(this.DataContext as FabricInspectionDataContext, "BraCup", info.Band.Name);
                    frmSetBandColor.ShowDialog();
                    return;
                }
            }
        }

        private void bandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            this.bandedGridView1.CloseEditor();
            try
            {
                BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
                if (obj != null)
                {
                    EditSmplQuantumByLot(obj);
                    obj.Save(this.DataContext, this.BindingSource);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("保存失敗!Error happened \n" + ex.Message, "保存記錄");
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        //By Lot 修改 Smpl Quanntum, 用于2nd Audit
        void EditSmplQuantumByLot(BraCupHeader ACurrent)
        {
            if (ACurrent.AuditStage == "1st") return;
            //int EditValue = ACurrent.AQLAuditQty ?? 0; //编辑Smpl Quantum *栏位的值

            Dictionary<string, int> dictAQL25StandardBalanceQty = new Dictionary<string, int>();
            var List = (this.BindingSource.DataSource as IEnumerable<BraCupHeader>)
                .Where(p => p.AuditNo == ACurrent.AuditNo && p.AuditStage == ACurrent.AuditStage && p.AuditSKUCrossCup == ACurrent.AuditSKUCrossCup);

            int TotalAQLAuditQty = List.Select(p => p.AQLAuditQty ?? 0).Sum();
            foreach (var obj in List)
            {
                if (TotalAQLAuditQty >= (obj.PackListQtyByCrossCup ?? 0)) //Full Inspection 全检
                {
                    obj.AQL25StandardQty = 0;
                    obj.IsByCrossCupFulInspection = true; //一个Audit#中，某个Cross Cup全检的标记字段
                }
                else //AQL检查
                {
                    if (!dictAQL25StandardBalanceQty.ContainsKey(obj.AuditSKUCrossCup))
                    {
                        dictAQL25StandardBalanceQty.Add(obj.AuditSKUCrossCup, (obj.AQL25StandardQtyByCrossCup ?? 0));
                    }

                    decimal Ratio = obj.PackListQtyByCrossCupOnlySelected == 0 ? 0 : 1.0000m * (obj.PackListQty ?? 0) / (obj.PackListQtyByCrossCupOnlySelected ?? 0); //分摊比例
                    obj.AQL25StandardQty = Convert.ToInt32(Math.Ceiling(Ratio * (obj.AQL25StandardQtyByCrossCup ?? 0))); //抽检合格标准数, 超过这个数则不合格
                    if (ACurrent.AQL25StandardQty > dictAQL25StandardBalanceQty[ACurrent.AuditSKUCrossCup])
                    {
                        obj.AQL25StandardQty = dictAQL25StandardBalanceQty[obj.AuditSKUCrossCup];
                    }
                    dictAQL25StandardBalanceQty[obj.AuditSKUCrossCup] -= (obj.AQL25StandardQty ?? 0);

                    obj.IsByCrossCupFulInspection = null;
                }
            }






            //int BanalceValue = EditValue;

            ////按AQL2.5计算出PackList总数需要抽多少件、合格标准为多少件
            //MobileQCDataContext MobileQCDB = ContextBuilder.CreateContext<MobileQCDataContext>();
            //var SampleObj = MobileQCDB.QC_AuditQtyRanges.Where(p => p.Flag == "FinalCheck" && p.SQty <= EditValue).OrderByDescending(p => p.SQty).FirstOrDefault();
            //int AQL25BanalceValue = SampleObj.AQty ?? 0;

            //var List = (this.BindingSource.DataSource as IEnumerable<ElasticHeader>).Where(p => p.AuditNo == ACurrent.AuditNo && p.AuditStage == ACurrent.AuditStage);
            //decimal TotalPackList = List.Select(p => p.PackingListLength ?? 0).Sum();
            //foreach (var obj in List)
            //{
            //    obj.AuditSampleSizeQtyByLot = EditValue; //修改By Lot中的一行 Smpl Quantum **，其他行都变成一样的值

            //    if (TotalPackList == 0)
            //    {
            //        obj.AuditSampleSizeQty = null;
            //    }
            //    else
            //    {
            //        obj.AuditSampleSizeQty = Convert.ToInt32(Math.Ceiling((1.0000M * obj.PackingListLength ?? 0) / TotalPackList * EditValue)); //按比例重新计算Assigned Smpl Quantum *
            //    }

            //    if (obj.AuditSampleSizeQty > BanalceValue)
            //    {
            //        obj.AuditSampleSizeQty = BanalceValue;
            //    }
            //    BanalceValue -= (obj.AuditSampleSizeQty ?? 0);

            //    obj.AQL25StandardQtyByLot = SampleObj.AQty; //重新计算Acc. Limit **


            //    //重新计算Acc. Limit *
            //    obj.AQL25StandardQty = Convert.ToInt32(Math.Ceiling((1.0000M * obj.PackingListLength ?? 0) / TotalPackList * (obj.AQL25StandardQtyByLot ?? 0)));
            //    if (obj.AQL25StandardQty > AQL25BanalceValue)
            //    {
            //        obj.AQL25StandardQty = AQL25BanalceValue;
            //    }
            //    AQL25BanalceValue -= (obj.AQL25StandardQty ?? 0);

            //}
        }

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            switch (e.Column.FieldName)
            {
                case "DueDay":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "DueDay") == null) return;
                    int DueDays = Convert.ToInt32(bandedGridView1.GetRowCellValue(e.RowHandle, "DueDay").ToString());
                    if (DueDays > 3)
                    {
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "OverallResult":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "OverallResult") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "OverallResult").ToString() == "B+" ||
                        bandedGridView1.GetRowCellValue(e.RowHandle, "OverallResult").ToString() == "B")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (bandedGridView1.GetRowCellValue(e.RowHandle, "OverallResult").ToString() == "C")
                    {
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "Whse":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Whse") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Whse").ToString() == "RT")
                    {
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;
            }
        }

        List<string> BrushBlueColorList;
        List<string> BrushYellowColorList;
        System.Drawing.Color BlueColor = System.Drawing.Color.FromArgb(197, 217, 241);
        System.Drawing.Color YellowColor = System.Drawing.Color.FromArgb(235, 241, 222);
        System.Drawing.Color GrayColor = System.Drawing.Color.FromArgb(217, 217, 217);
        private void bandedGridView1_CustomDrawColumnHeader(object sender, ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            if (BrushBlueColorList == null)
            {
                BrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => p.Flag == "BraCup" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BrushYellowColorList == null)
            {
                BrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => p.Flag == "BraCup" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BrushBlueColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = BlueColor;
            }
            else if (BrushYellowColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = YellowColor;
            }

            e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;
            Brush brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Appearance.BackColor, e.Appearance.BackColor, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);
            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);
            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        List<string> BandBrushBlueColorList;
        List<string> BandBrushYellowColorList;
        List<string> BandBrushGrayColorList;
        private void bandedGridView1_CustomDrawBandHeader(object sender, BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null) return;

            if (BandBrushBlueColorList == null)
            {
                BandBrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "BraCup" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushYellowColorList == null)
            {
                BandBrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "BraCup" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushGrayColorList == null)
            {
                BandBrushGrayColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "BraCup" && (p.Color3 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushBlueColorList.Contains(e.Band.Name))
            {
                e.Appearance.BackColor = BlueColor;
            }
            else if (BandBrushYellowColorList.Contains(e.Band.Name))
            {
                e.Appearance.BackColor = YellowColor;
            }
            else if (BandBrushGrayColorList.Contains(e.Band.Name))
            {
                e.Appearance.BackColor = GrayColor;
            }

            e.Band.AppearanceHeader.BackColor = e.Appearance.BackColor;
            Brush brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), e.Appearance.BackColor, e.Appearance.BackColor, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);
            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        private void repositoryItemButtonEdit_OverallResultCoreDefectReason_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                BraCupHeader obj = this.BindingSource.Current as BraCupHeader;

                List<string> ReasonGroupList = new List<string>();
                List<string> ReasonDefectNameList = new List<string>();
                frmReason.GetSelectedDataBySplit(ref ReasonGroupList, ref ReasonDefectNameList);

                obj.OverallResultReasonGroup = string.Join("; ", ReasonGroupList.Distinct().ToArray());
                obj.OverallResultCoreDefecName = string.Join("; ", ReasonDefectNameList.ToArray());

                obj.OverallResultDefectKind = "n.a.";
                if (string.IsNullOrEmpty(obj.OverallResultReasonGroup))
                {
                    obj.OverallResultDefectKind = null;
                }
                this.BindingSource.EndEdit();
                this.bandedGridView1.HideEditor();
                (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }
        }

        object SaveAllData = null;
        private void barEditItemDashboard_EditValueChanged(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            try
            {
                if (SaveAllData == null)
                {
                    SaveAllData = this.BindingSource.DataSource;
                }

                string SelectedItem = barEditItemDashboard.EditValue.ToString();
                if (string.IsNullOrEmpty(SelectedItem))
                {
                    this.BindingSource.DataSource = SaveAllData;
                }
                else if (SelectedItem == "Audit complete due days")  //Due days大于3天
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.DueDay > 3);
                }
                else if (SelectedItem == "Action log - behind sch.") //1st Stage date 已经超期
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.IsOverDueEventLog);
                }
                else if (SelectedItem == "Action log - o/s (1st)")   //1st Stage 没有Completed
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.IsOutstandingEventLog);
                }
                else if (SelectedItem == "Action Log - o/s (last)")  //Last Stage 没有Complete的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.IsLastStageOutstandingEventLog);
                }
                else if (SelectedItem == "Part I Grade(B, C)")      //Part I是B或C，并且超过三天没有出Action Log的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<BraCupHeader>).Where(p => p.IsPartIGradeBC);
                }

                this.InitFormNavigator();
                this.FormatPostion();
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }
        }

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<BraCupHeader> lists = bandedGridView1.FilteredList().Cast<BraCupHeader>();

                switch (item.FieldName)
                {
                    case "Whse":
                        e.TotalValue = lists.Select(p => p.Whse).Distinct().Count();
                        break;

                    case "AuditNo":
                        e.TotalValue = lists.Select(p => p.AuditNo).Distinct().Count();
                        break;

                    case "MaterialType":
                        e.TotalValue = lists.Select(p => p.MaterialType).Distinct().Count();
                        break;

                    case "ItemCode":
                        e.TotalValue = lists.Select(p => p.ItemCode).Distinct().Count();
                        break;

                    case "ColorCode":
                        e.TotalValue = lists.Select(p => p.ColorCode).Distinct().Count();
                        break;

                    case "SuppRef":
                        e.TotalValue = lists.Select(p => p.SuppRef).Distinct().Count();
                        break;

                    case "SuppCode":
                        e.TotalValue = lists.Select(p => p.SuppCode).Distinct().Count();
                        break;

                    case "ProjectNO":
                        //var OriginalProjectList = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo);
                        //List<string> ProjectList = new List<string>();
                        //foreach (var obj in OriginalProjectList)
                        //{
                        //    ProjectList.AddRange(obj.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries));
                        //}
                        //e.TotalValue = ProjectList.Distinct().Count();
                        e.TotalValue = lists.Select(p => p.ProjectNO).Distinct().Count();
                        break;

                    case "PONO":
                        e.TotalValue = lists.Select(p => p.PONO).Distinct().Count();
                        break;

                    case "HDONO":
                        e.TotalValue = lists.Select(p => p.HDONO).Distinct().Count();
                        break;

                    case "Auditor":
                        e.TotalValue = lists.Select(p => p.Auditor).Distinct().Count();
                        break;
                }

            }
        }

        private void barButtonItem1_ItemClick_1(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            QueryForm frmQuery = new QueryForm();
            if (frmQuery.ShowDialog() == DialogResult.OK)
            {
                BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
                DevExpress.XtraReports.UI.XtraReport rptFinal = new DevExpress.XtraReports.UI.XtraReport();



                if (frmQuery.NeedPrintBraCupiAuditFormMainReport)
                {
                    iAuditFormBraCupReport rptMain = new iAuditFormBraCupReport(obj);
                    if ((frmQuery.NeedPrintBraCupiAuditFormMainReport) && (frmQuery.NeedPrintBraCupiAuditFormDefectReport))
                    {
                        rptMain.xrLabel3.Visible = rptMain.xrLabel5.Visible = rptMain.xrLabel7.Visible = false;
                        rptMain.xrLabel8.Visible = rptMain.xrLabel4.Visible = rptMain.xrLabel6.Visible = false;
                    }

                    rptMain.CreateDocument();
                    rptFinal.Pages.AddRange(rptMain.Pages);
                }

                if (frmQuery.NeedPrintBraCupiAuditFormDefectReport)
                {
                    DetailDefectSubReport rptDefect = new DetailDefectSubReport(obj);
                    rptDefect.CreateDocument();
                    rptFinal.Pages.AddRange(rptDefect.Pages);
                }

                rptFinal.ShowPreview();
            }
        }

        private void barButtonItemResultNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
            if (obj == null) return;
            BraCupResultNoticeReport Rpt = new BraCupResultNoticeReport(obj, NoticeReportTypes.ResultNotice);
            Rpt.ShowPreview();
        }

        private void barButtonItemRejectNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            BraCupHeader obj = this.BindingSource.Current as BraCupHeader;
            if (obj.AOverallResultGradeShow == "A" || obj.AOverallResultGradeShow == "A+")
            {
                MessageBox.Show("Overall result is A or A+, Not allow print!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            BraCupResultNoticeReport rtpResultNotice = new BraCupResultNoticeReport(obj, NoticeReportTypes.RejectNotice);
            rtpResultNotice.ShowPreview();
        }

        private void btnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ConfirmForm frmConfim = new ConfirmForm();
            if (frmConfim.ShowDialog() == DialogResult.OK)
            {
                if (frmConfim.ConfirmType == ConfirmTypes.OnlyAuditNo)
                {
                    BraCupHeader CurrentObj = this.BindingSource.Current as BraCupHeader;
                    if (CurrentObj == null) return;

                    var List = (this.BindingSource.DataSource as IEnumerable<BraCupHeader>).Where(p => p.AuditNo == CurrentObj.AuditNo && p.AuditStage == CurrentObj.AuditStage);
                    foreach (var obj in List)
                    {
                        if (string.IsNullOrEmpty(obj.OverallConfirmBy) || obj.OverallConfirmBy == "n.a.")
                        {
                            obj.OverallConfirmBy = SysParamHelper.Instance.UserID;
                        }
                    }
                    (this.DataContext as FabricInspectionDataContext).SubmitChanges();
                }
                else if (frmConfim.ConfirmType == ConfirmTypes.All)
                {
                    IEnumerable<BraCupHeader> lists = bandedGridView1.FilteredList().Cast<BraCupHeader>();
                    foreach (var obj in lists)
                    {
                        if (string.IsNullOrEmpty(obj.OverallConfirmBy) || obj.OverallConfirmBy == "n.a.")
                        {
                            obj.OverallConfirmBy = SysParamHelper.Instance.UserID;
                        }
                    }
                    (this.DataContext as FabricInspectionDataContext).SubmitChanges();
                }
            }
        }

        private void repositoryItemButtonEdit_ErrorCode_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            BraCupHeader CurrentObj = this.BindingSource.Current as BraCupHeader;
            if (CurrentObj == null) return;

            SelectErrorCodeForm frmSelectErrorCode = new SelectErrorCodeForm();
            if (frmSelectErrorCode.ShowDialog() == DialogResult.OK)
            {
                CurrentObj.ErrorCode = frmSelectErrorCode.ErrorCode;
                CurrentObj.ErrorNameEN = frmSelectErrorCode.ErrorNameEN;
                DataContext.SubmitChanges();
            }
        }

        private void repositoryItemCheckedComboBoxEdit_WhichPart_ParseEditValue(object sender, DevExpress.XtraEditors.Controls.ConvertEditValueEventArgs e)
        {
            if (e.Value == null)
            {
                e.Value = "";
            }

        }

        private void bandedGridView1_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            BraCupHeader obj = this.bandedGridView1.GetRow(e.FocusedRowHandle) as BraCupHeader;
            colAQLAuditQty.OptionsColumn.AllowEdit = obj != null && obj.AuditStage != "1st";
        }

    }
}
