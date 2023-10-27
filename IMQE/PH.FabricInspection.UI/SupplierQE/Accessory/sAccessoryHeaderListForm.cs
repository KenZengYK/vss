using System;
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
using PH.FabricInspection.UI.Report.AccessoryReport;
using PH.MIDc.BO;
using PH.MobileQC.BO;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.ExtendLibrary;
using PH.Platform.AuthMgr.BO;


namespace PH.FabricInspection.UI.SupplierQE.Accessory
{
    public partial class sAccessoryHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public sAccessoryHeaderListForm()
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
        public sAccessoryHeaderListForm(bool AConditionCall, string AWhse, DateTime AIDCreateDateFrom, DateTime AIDCreateDateTo)
            : this()
        {
            _ConditionCall = AConditionCall;
            _Whse = AWhse;
            _IDCreateDateFrom = AIDCreateDateFrom;
            _IDCreateDateTo = AIDCreateDateTo;
        }

        bool _OnlyShowIncompleted;
        public sAccessoryHeaderListForm(bool AOnlyShowIncompleted)
            : this()
        {
            _OnlyShowIncompleted = AOnlyShowIncompleted;
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
                this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).sAccessoryHeaders
                    .Where(p => p.AuditType == "Accessories" && (_Whse == "" || p.Whse == _Whse) && p.IDCreateDate >= _IDCreateDateFrom && p.IDCreateDate < _IDCreateDateTo.AddDays(1))
                    .OrderByDescending(p => p.AuditNo).ThenBy(p => p.ItemIDNO);
            }
            else
            {
                IEnumerable<sAccessoryHeader> lists = (this.DataContext as FabricInspectionDataContext).sAccessoryHeaders
                    .Where(p => p.AuditType == "Accessories" && p.IDCreateDate >= DateTime.Now.AddDays(-150) && p.IDCreateDate >= DateTime.Parse("2021-06-01"))
                    .OrderByDescending(p => p.AuditNo).ThenBy(p => p.ItemIDNO);

                if (_OnlyShowIncompleted) //只查Incompleted的数据
                {
                    lists = lists.Where(p => p.ActionLogIsCompleted == "N");
                    //barEditItemDashboard.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    bar1.Visible = false;
                }

                this.BindingSource.DataSource = lists;

            }

            this.EditorTypeName = typeof(sAccessoryHeaderDetailForm).FullName;

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
            sInputItemCodeForm frmInputItemCode = new sInputItemCodeForm();
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

                sSelectLotIDForm frmSelectLotID = new sSelectLotIDForm(frmInputItemCode.AuditStage, frmInputItemCode.Company,
                    frmInputItemCode.IDCreateDate, frmInputItemCode.ItemCode, frmInputItemCode.ColorCode);

                if (frmSelectLotID.ShowDialog() == DialogResult.OK)
                {
                    MobileQCDataContext MobileQCDB = ContextBuilder.CreateContext<MobileQCDataContext>();
                    FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

                    List<sAccessorySelectLotIDResult> AllDataList = frmSelectLotID.GetAllData();
                    List<sAccessorySelectLotIDResult> SelectedLists = frmSelectLotID.GetSelectData();
                    int? iPackListQtyByLot = AllDataList.Select(p => p.PackListQty).Sum();
                    int iTotalBoxQty = AllDataList.Count();          //计算出 Ttl Cases **
                    int iAuditCaseQtyByLot = SelectedLists.Count();  //计算出 Audit Cases **

                    //按AQL2.5计算出PackList总数需要抽多少件、合格标准为多少件
                    var SampleObj = MobileQCDB.QC_AuditQtyRanges.FirstOrDefault(p => p.Flag == "FinalCheck" && iPackListQtyByLot >= p.Qty1 && iPackListQtyByLot <= p.Qty2);
                    int iAQLAuditQtyByLot = SampleObj == null ? 0 : (SampleObj.SQty ?? 0);       //每个Audit#总共需要抽检多少数量
                    int iAQL25StandardQtyByLot = SampleObj == null ? 0 : (SampleObj.AQty ?? 0);  //每个Audit#抽检通过的数量(超过这个数不能通过)
                    int AQLAuditBalanceQty = iAQLAuditQtyByLot;
                    int AQL25StandardBalanceQty = iAQL25StandardQtyByLot;

                    //抽检的PackList总数不能小于需要抽检的板数(Smpl Quantum**)
                    int iSelectedPackListQty = SelectedLists.Select(p => (p.PackListQty ?? 0)).Sum();
                    if (iSelectedPackListQty < iAQLAuditQtyByLot)
                    {
                        MessageBox.Show("The audit total packlist qty must be greater than or equal to Smpl Quantum** Qty: " + iAQLAuditQtyByLot.ToString(), "Warning",
                            MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    foreach (sAccessorySelectLotIDResult item in SelectedLists)
                    {
                        AccessoryHeader obj = this.BindingSource.AddNew() as AccessoryHeader;
                        obj.Company = frmInputItemCode.Company;
                        obj.AuditStage = frmInputItemCode.AuditStage;
                        obj.IDCreateDate = frmInputItemCode.IDCreateDate;
                        obj.ItemCode = item.ItemNO;
                        obj.ColorCode = item.ColorCode;
                        obj.AuditNo = db.fn_GetAccessoryMaxAuditNO((obj.IDCreateDate ?? DateTime.MinValue).ToString("yyMMdd"), obj.ItemCode, obj.ColorCode);
                        obj.AuditNo1 = obj.AuditNo.ToString().Substring(0, 6) + "-" + obj.AuditNo.ToString().Substring(6);

                        obj.AuditDate = DateTime.Now;
                        obj.Auditor = SysParamHelper.Instance.UserID;
                        obj.AuditType = "Accessories";

                        obj.Whse = item.Whse;
                        obj.PONO = item.PONO;
                        obj.SuppRef = item.SuppItemRef;
                        obj.SuppCode = item.SuppCode;
                        obj.HDONO = item.HDONO;
                        obj.InvoiceNo = item.InvoiceNo;

                        obj.ProjectNO = item.ProjectNO;
                        obj.AuditSKU = item.CupDesc; //item.CupCode;
                        obj.AuditSKUCrossCup = item.CupDesc;
                        obj.ItemIDNO = item.LotNO;

                        obj.TotalBoxQty = iTotalBoxQty;                      //计算出 Ttl Cases **
                        obj.AuditCaseQtyByLot = iAuditCaseQtyByLot;          //计算出 Audit Cases ** 

                        obj.PackListQtyByLot = iPackListQtyByLot;            //取ERP中所有行的PackList总数，不管选择是几行
                        obj.PackListQty = item.PackListQty;                  //取ERP中当前选择Lot ID的PackList数
                        obj.AQLAuditQtyByLot = iAQLAuditQtyByLot;            //按AQL2.5计算出PackList总数需要抽多少件
                        obj.AQL25StandardQtyByLot = iAQL25StandardQtyByLot;  //按AQL2.5计算出合格标准总件数(by Lot)
                        obj.AQL25StandardQty = iAQL25StandardQtyByLot;       //按AQL2.5计算出合格标准为多少件

                        decimal Ratio = iSelectedPackListQty == 0 ? 0 : 1.0000m * (obj.PackListQty ?? 0) / iSelectedPackListQty; //分摊比例

                        //抽查总数按比例分摊到每个ID中
                        obj.AQLAuditQty = Convert.ToInt32(Math.Ceiling(Ratio * (obj.AQLAuditQtyByLot ?? 0)));

                        if (obj.AQLAuditQty > AQLAuditBalanceQty)
                        {
                            obj.AQLAuditQty = AQLAuditBalanceQty;
                        }
                        AQLAuditBalanceQty -= (obj.AQLAuditQty ?? 0);

                        //抽查总合格数按比例分摊到每个ID中
                        obj.AQL25StandardQty = Convert.ToInt32(Math.Ceiling(Ratio * (obj.AQL25StandardQtyByLot ?? 0)));
                        if (obj.AQL25StandardQty > AQL25StandardBalanceQty)
                        {
                            obj.AQL25StandardQty = AQL25StandardBalanceQty;
                        }
                        AQL25StandardBalanceQty -= (obj.AQL25StandardQty ?? 0);

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

                        this.BindingSource.EndEdit();
                        obj.Save(db, this.BindingSource);
                    }
                }
            }
        }


        private void repositoryItemButtonEdit_ActionLog_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;

            var lists = (this.BindingSource.DataSource as IEnumerable<AccessoryHeader>).Where(p => p.AuditNo == obj.AuditNo && p.AuditStage == obj.AuditStage)
               .Select(p => new { p.ProjectNO, p.SuppCode, p.PONO, IDCreateDate = (p.IDCreateDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") });

            string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNO)).Select(p => p.ProjectNO.Trim()).ToList(), "/");
            string Batchs = string.Join("/", lists.Select(p => p.IDCreateDate).Distinct().ToArray<string>());

            string ActionLogNO = obj.ActionLogNO;
            if (string.IsNullOrEmpty(ActionLogNO))
            {
                ActionLogNO = null;  // ECode(DateTime.Now.ToString("yyyy/MM/dd"));
            }

            //string Suppliers = "";
            //string Projects = "";
            //string Batchs = "";

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
            //    var lists = (this.BindingSource.DataSource as IEnumerable<AccessoryHeader>).Where(p => p.ActionLogOID == obj.ActionLogOID)
            //        .Select(p => new {p.ProjectNO, p.SuppCode, p.PONO, IDCreateDate = (p.IDCreateDate ?? DateTime.MinValue).ToString("yyyy/MM/dd") });

            //    Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            //    Projects = FabricHelper.GetProjectFormatString(lists.Select(p => p.ProjectNO.Trim()).ToList(), "/");
            //    //Projects = string.Join("/", lists.Select(p => p.PONO.Trim()).Distinct().ToArray<string>());
            //    Batchs = string.Join("/", lists.Select(p => p.IDCreateDate).Distinct().ToArray<string>());
            //}

            AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Accessories, db, ActionLogNO, obj.ActionLogID, this, Suppliers, Projects, Batchs);
            frmAlertLog.ShowDialog();
        }


        //public string ECode(string AIDCreateDate)
        //{
        //    string Str = "Seq#" + Convert.ToDateTime(AIDCreateDate).ToString("MM");
        //    var List = this.BindingSource.DataSource as IEnumerable<AccessoryHeader>;
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

        public void SaveActionLogInfoByID(string AActionLogNO, long? AActionLogOID)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;

            IEnumerable<AccessoryHeader> AllDataList = BindingSource.List as IEnumerable<AccessoryHeader>;
            var lists = AllDataList.Where(p => p.AuditNo == obj.AuditNo);
            foreach (var o in lists)
            {
                if (string.IsNullOrEmpty(o.ActionLogNO))
                {
                    o.ActionLogNO = AActionLogNO;
                    o.ActionLogOID = AActionLogOID;
                }
            }

            //obj.ActionLogOID = AActionLogOID;
            //if (string.IsNullOrEmpty(obj.ActionLogNO))
            //{
            //    obj.ActionLogNO = AActionLogNO;
            //}

            this.BindingSource.EndEdit();
            this.bandedGridView1.HideEditor();
            db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        }

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
                AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
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
                AccessoryHeader obj = bandedGridView1.GetRow(i) as AccessoryHeader;
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

        private void gridView1_FocusedColumnChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedColumnChangedEventArgs e)
        {
            //if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            //{
            //    MessageBox.Show("Colmun Name: " + e.FocusedColumn.Name + Environment.NewLine + "FieldName: " + e.FocusedColumn.FieldName);
            //}
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                GridView grid = objListGridControl.FocusedView as GridView;
                SetGridViewHeaderBackColorForm frmSetColor = new SetGridViewHeaderBackColorForm(this.DataContext as FabricInspectionDataContext,
                    "Accessories", grid.FocusedColumn.FieldName, grid.FocusedColumn.Name, this.SideProgramID, this.FileID, "AccessoryHeaderListForm");
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
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.IsOverDueEventLog);
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
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.IsOutstandingEventLog);
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
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.IsLastStageOutstandingEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        private void bandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            this.bandedGridView1.CloseEditor();
            try
            {
                AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
                if (obj != null)
                {
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

        List<string> BrushBlueColorList;
        List<string> BrushYellowColorList;
        List<string> GrayYellowColorList;
        System.Drawing.Color BlueColor = System.Drawing.Color.FromArgb(197, 217, 241);
        System.Drawing.Color YellowColor = System.Drawing.Color.FromArgb(235, 241, 222);
        System.Drawing.Color GrayColor = System.Drawing.Color.FromArgb(217, 217, 217);
        private void bandedGridView1_CustomDrawColumnHeader(object sender, ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            if (BrushBlueColorList == null)
            {
                BrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) == false && p.Flag == "Accessories" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BrushYellowColorList == null)
            {
                BrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) == false && p.Flag == "Accessories" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (GrayYellowColorList == null)
            {
                GrayYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) == false && p.Flag == "Accessories" && (p.Color3 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BrushBlueColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = BlueColor;
            }
            else if (BrushYellowColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = YellowColor;
            }
            else if (GrayYellowColorList.Contains(e.Column.FieldName))
            {
                e.Appearance.BackColor = GrayColor;
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
        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null) return;

            if (BandBrushBlueColorList == null)
            {
                BandBrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Accessories" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushYellowColorList == null)
            {
                BandBrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Accessories" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushGrayColorList == null)
            {
                BandBrushGrayColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Accessories" && (p.Color3 ?? false)).Select(p => p.FieldName).ToList();
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

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.IsAdministrator)
            {
                DXMouseEventArgs eax = e as DXMouseEventArgs;
                BandedGridHitInfo info = bandedGridView1.CalcHitInfo(eax.Location);
                if (info.InBandPanel)
                {
                    BandedGridView grid = objListGridControl.FocusedView as BandedGridView;
                    SetGridViewBandBackColorForm frmSetBandColor = new SetGridViewBandBackColorForm(this.DataContext as FabricInspectionDataContext, "Accessories", info.Band.Name);
                    frmSetBandColor.ShowDialog();
                    return;
                }
            }

        }

        private void repositoryItemButtonEdit_OverallResultCoreDefectReason_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;

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
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.DueDay > 3);
                }
                else if (SelectedItem == "Action log - behind sch.") //1st Stage date 已经超期
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.IsOverDueEventLog);
                }
                else if (SelectedItem == "Action log - o/s (1st)")   //1st Stage 没有Completed
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.IsOutstandingEventLog);
                }
                else if (SelectedItem == "Action Log - o/s (last)")  //Last Stage 没有Complete的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.IsLastStageOutstandingEventLog);
                }
                else if (SelectedItem == "Part I Grade(B, C)")      //Part I是B或C，并且超过三天没有出Action Log的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<AccessoryHeader>).Where(p => p.IsPartIGradeBC);
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
                IEnumerable<AccessoryHeader> lists = bandedGridView1.FilteredList().Cast<AccessoryHeader>();

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

        private void barButtonItemiAuditForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
            iAuditFormAccessoriesHeaderReport rptiAuditForm = new iAuditFormAccessoriesHeaderReport(obj);
            rptiAuditForm.ShowPreview();
        }

        private void barButtonItemResultNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
            if (obj == null) return;
            AccessoriesResultNoticeReport rtpResultNotice = new AccessoriesResultNoticeReport(obj, NoticeReportTypes.ResultNotice);
            rtpResultNotice.ShowPreview();
        }

        private void barButtonItemRejectNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            AccessoryHeader obj = this.BindingSource.Current as AccessoryHeader;
            if ((obj.AOverallResultShow == "A" || obj.AOverallResultShow == "A+"))
            {
                MessageBox.Show("Overall result is A or A+, Not allow print!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            AccessoriesResultNoticeReport rtpResultNotice = new AccessoriesResultNoticeReport(obj, NoticeReportTypes.RejectNotice);
            rtpResultNotice.ShowPreview();
        }

        private void btnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ConfirmForm frmConfim = new ConfirmForm();
            if (frmConfim.ShowDialog() == DialogResult.OK)
            {
                if (frmConfim.ConfirmType == ConfirmTypes.OnlyAuditNo)
                {
                    AccessoryHeader CurrentObj = this.BindingSource.Current as AccessoryHeader;
                    if (CurrentObj == null) return;

                    var List = (this.BindingSource.DataSource as IEnumerable<AccessoryHeader>).Where(p => p.AuditNo == CurrentObj.AuditNo && p.AuditStage == CurrentObj.AuditStage);
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
                    IEnumerable<AccessoryHeader> lists = bandedGridView1.FilteredList().Cast<AccessoryHeader>();
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

        private void repositoryItemCheckedComboBoxEdit_WhichPart_ParseEditValue(object sender, DevExpress.XtraEditors.Controls.ConvertEditValueEventArgs e)
        {
            if (e.Value == null)
            {
                e.Value = "";
            }

        }


    }
}
