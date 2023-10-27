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
using PH.FabricInspection.UI.Report.ElasticReport;
using PH.Platform.BO;
using PH.Platform.Common;
using PH.Platform.ExtendLibrary;
using PH.Platform.AuthMgr.BO;

namespace PH.FabricInspection.UI.SupplierQE.Elastic
{
    public partial class sElasticHeaderListForm : PH.Platform.UI.CS.UI2.ListForm
    {
        public sElasticHeaderListForm()
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
        public sElasticHeaderListForm(bool AConditionCall, string AWhse, DateTime AIDCreateDateFrom, DateTime AIDCreateDateTo)
            : this()
        {
            _ConditionCall = AConditionCall;
            _Whse = AWhse;
            _IDCreateDateFrom = AIDCreateDateFrom;
            _IDCreateDateTo = AIDCreateDateTo;
        }

        bool _OnlyShowIncompleted;
        public sElasticHeaderListForm(bool AOnlyShowIncompleted)
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
                this.BindingSource.DataSource = (this.DataContext as FabricInspectionDataContext).sElasticHeaders
                    .Where(p => (_Whse == "" || p.Whse == _Whse) && p.IDCreateDate >= _IDCreateDateFrom && p.IDCreateDate < _IDCreateDateTo.AddDays(1))
                    .OrderByDescending(p => p.AuditNo).ThenBy(p => p.LotID);
            }
            else
            {
                IEnumerable<sElasticHeader> lists = (this.DataContext as FabricInspectionDataContext).sElasticHeaders
                    .Where(p => p.IDCreateDate >= DateTime.Now.Date.AddDays(-150) && p.IDCreateDate >= DateTime.Parse("2021-06-01"))
                    .OrderByDescending(p => p.AuditNo).ThenBy(p => p.LotID);

                if (_OnlyShowIncompleted) //只查Incompleted的数据
                {
                    lists = lists.Where(p => p.Cal_ActionLogIsCompleted == "N");
                    //barEditItemDashboard.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    bar1.Visible = false;
                }

                this.BindingSource.DataSource = lists;
            }

            this.EditorTypeName = typeof(sElasticHeaderDetailForm).FullName;
            this.bandedGridView1.OptionsBehavior.Editable = true;

            Auth_FunRight ConfirmRight = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID, "Confirm");
            btnConfirm.Enabled = (ConfirmRight != null);

            //repositoryItemCheckedComboBoxEdit_WhichPart.NullText = "";

            //bandedGridView1.BestFitColumns();

            //repositoryItemCheckEdit_Dashboard.CheckedChanged += new EventHandler(repositoryItemCheckEdit_Dashboard_CheckedChanged);
            //repositoryItemCheckEdit_DashboardOutstanding.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardOutstanding_CheckedChanged);
            //repositoryItemCheckEdit_DashboardLastStageOutstaing.CheckedChanged += new EventHandler(repositoryItemCheckEdit_DashboardLastStageOutstaing_CheckedChanged);
        }

        protected override void OnClickAddNew()
        {
            //base.OnClickAddNew();

            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

            sInputItemCodeForm frmInputItemCode = new sInputItemCodeForm();
            if (frmInputItemCode.ShowDialog() == DialogResult.OK)
            {
                sSelectLotIDForm frmElasticSelectAuditID = new sSelectLotIDForm(frmInputItemCode.AuditStage, frmInputItemCode.Company,
                    frmInputItemCode.IDCreateDate, frmInputItemCode.ItemCode, frmInputItemCode.ColorCode);

                if (frmElasticSelectAuditID.ShowDialog() == DialogResult.OK)
                {
                    List<sElasticSelectAduitIDResult> lists = frmElasticSelectAuditID.GetSelectData();
                    foreach (sElasticSelectAduitIDResult item in lists)
                    {
                        ElasticHeader obj = this.BindingSource.AddNew() as ElasticHeader;
                        obj.Company = frmInputItemCode.Company;
                        obj.Whse = item.Whse;
                        obj.AuditStage = frmInputItemCode.AuditStage;
                        obj.Auditor = SysParamHelper.Instance.UserID;
                        obj.LotID = item.LotNO;
                        obj.SuppItemRef = item.SuppItemRef;
                        obj.SuppCode = item.SuppCode;
                        obj.ItemCode = item.ItemNO;
                        obj.PONo = item.PONO;
                        obj.ColorCode = item.ColorCode;
                        obj.ProjectNo = item.ProjectNO;
                        obj.HDONo = item.HDONO;
                        obj.PackingListLength = item.PackListQty;
                        obj.PackingListLengthByLot = item.PackListQtyByLot;
                        obj.AuditSampleSizeQtyByLot = item.AuditSampleQtyByLot; //按AQL2.5计算出来的Sample Qty
                        obj.AuditSampleSizeQty = item.AuditSampleQty;
                        obj.TotalBoxQtyByLot = item.TotalBoxQtyByLot;

                        obj.InvoiceNo = item.InvoiceNo;
                        obj.IDCreateDate = frmInputItemCode.IDCreateDate;
                        obj.IDAuditDate = DateTime.Now;
                        string STDTWA = (obj.IDCreateDate ?? DateTime.MinValue).ToString("yyMMdd");
                        obj.AuditNo = db.fn_GetElasticMaxAuditID(STDTWA, obj.ItemCode, obj.ColorCode);
                        obj.AuditNo1 = obj.AuditNo.ToString().Substring(0, 6) + "-" + obj.AuditNo.ToString().Substring(6);

                        obj.AQL25StandardQtyByLot = item.AQL25StandardQtyByLot;
                        obj.AQL25StandardQty = item.AQL25StandardQty;

                        //应Shelley的要求加入以下默认值 2021-07-05
                        obj.NeedElongation = "N";
                        obj.ElongationResult = "n.a.";
                        obj.NeedShadeGrpg = "Y";

                        this.BindingSource.EndEdit();
                        obj.Save(this.DataContext, this.BindingSource);
                    }
                }
            }




            //FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

            //InputPOForm frmInputPO = new InputPOForm();
            //if (frmInputPO.ShowDialog() == DialogResult.OK)
            //{
            //    ElasticSelectAuditIDForm frmElasticSelectAuditID = new ElasticSelectAuditIDForm(frmInputPO.PONo, frmInputPO.IDCreateDate);
            //    if (frmElasticSelectAuditID.ShowDialog() == DialogResult.OK)
            //    {
            //        List<ElasticSelectAduitIDResult> lists = frmElasticSelectAuditID.GetSelectData();
            //        foreach (ElasticSelectAduitIDResult item in lists)
            //        {
            //            ElasticHeader obj = this.BindingSource.AddNew() as ElasticHeader;
            //            obj.Company = frmInputPO.Company;
            //            obj.Whse = item.Whse;
            //            obj.AuditStage = frmInputPO.AuditStage;
            //            obj.Auditor = SysParamHelper.Instance.UserID;
            //            obj.LotID = item.LotNO;
            //            obj.SuppItemRef = item.SuppItemRef;
            //            obj.SuppCode = item.SuppCode;
            //            obj.ItemCode = item.ItemNO;
            //            obj.PONo = frmInputPO.PONo;
            //            obj.ColorCode = item.ColorCode;
            //            obj.ProjectNo = item.ProjectNO;
            //            obj.HDONo = item.HDONO;
            //            obj.PackingListLength = item.PackListQty;
            //            obj.PackingListLengthByLot = item.PackListQtyByLot;
            //            obj.AuditSampleSizeQtyByLot = item.AuditSampleQtyByLot; //按AQL2.5计算出来的Sample Qty
            //            obj.AuditSampleSizeQty = item.AuditSampleQty;
            //            obj.TotalBoxQtyByLot = item.TotalBoxQtyByLot;

            //            obj.InvoiceNo = item.InvoiceNo;
            //            obj.IDCreateDate = frmInputPO.IDCreateDate;
            //            obj.IDAuditDate = DateTime.Now;
            //            string STDTWA = (obj.IDCreateDate ?? DateTime.MinValue).ToString("yyMMdd");
            //            obj.AuditNo = db.fn_GetElasticMaxAuditID(STDTWA, obj.ItemCode, obj.ColorCode);
            //            obj.AQL25StandardQtyByLot = item.AQL25StandardQtyByLot;
            //            obj.AQL25StandardQty = item.AQL25StandardQty;

            //            //应Shelley的要求加入以下默认值 2021-07-05
            //            obj.NeedElongation = "N";
            //            obj.ElongationResult = "n.a.";
            //            obj.NeedShadeGrpg = "Y";

            //            this.BindingSource.EndEdit();
            //            obj.Save(this.DataContext, this.BindingSource);
            //        }
            //    }
            //}

        }

        private void repositoryItemButtonEdit_OverallResultCoreDefectSupport_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                ElasticHeader obj = this.BindingSource.Current as ElasticHeader;
                obj.OverallResultCoreDefectSupport = frmReason.GetSelectedData();
                this.BindingSource.EndEdit();
                this.objListGridView.HideEditor();
                (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            }

        }

        #region Action Log
        private void repositoryItemButtonEdit_ActionLog_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            ElasticHeader obj = this.BindingSource.Current as ElasticHeader;

            string MissingAudit = obj.ActionLogSeqNo;
            if (string.IsNullOrEmpty(MissingAudit)) //新增Action Log
            {
                MissingAudit = null; // ECode(DateTime.Now.ToString("yyyy/MM/dd"));
            }
            var lists = (this.BindingSource.DataSource as IEnumerable<ElasticHeader>).Where(p => p.AuditNo == obj.AuditNo).Select(p => new { p.SuppCode, p.ProjectNo, /*p.BatchNo*/ });
            string Projects = FabricHelper.GetProjectFormatString(lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo.Trim()).ToList(), "/");
            string Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());

            //string Suppliers = "";
            //string Projects = "";
            ////string Batchs = "";

            //string MissingAudit = obj.ActionLogSeqNo;
            //if (string.IsNullOrEmpty(MissingAudit)) //新增Action Log
            //{
            //    MissingAudit = ECode(DateTime.Now.ToString("yyyy/MM/dd"));
            //    Suppliers = obj.SuppCode;
            //    Projects = obj.ProjectNo;
            //    //Batchs = obj.BatchNo;
            //}
            //else //打开已经保存好的Action Log
            //{
            //    var lists = (this.BindingSource.DataSource as IEnumerable<ElasticHeader>).Where(p => p.ActionLogOID == obj.ActionLogOID).Select(p => new { p.SuppCode, p.ProjectNo, /*p.BatchNo*/ });

            //    Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            //    Projects = FabricHelper.GetProjectFormatString(lists.Select(p => p.ProjectNo.Trim()).ToList(), "/");
            //    //Projects = string.Join("/", lists.Select(p => p.ProjectNo).Distinct().ToArray<string>());

            //    //Batchs = string.Join("/", lists.Select(p => p.BatchNo).Distinct().ToArray<string>());
            //}

            AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Elastic, db, MissingAudit, obj.ActionLogOID, this, Suppliers, Projects, "");
            frmAlertLog.ShowDialog();
        }

        //public string ECode(string AIDCreateDate)
        //{
        //    string Str = "Seq#" + Convert.ToDateTime(AIDCreateDate).ToString("MM");
        //    var List = this.BindingSource.DataSource as IEnumerable<ElasticHeader>;
        //    var obj = List.Where(dr => !string.IsNullOrEmpty(dr.ActionLogSeqNo) && dr.ActionLogSeqNo.StartsWith(Str))
        //        .Select(dr => dr.ActionLogSeqNo).Distinct().OrderByDescending(p => p).FirstOrDefault();

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

        public void SaveActionLogInfoByID(string AActionLogSeqNo, long? AActionLogOID)
        {
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;
            ElasticHeader obj = this.BindingSource.Current as ElasticHeader;

            IEnumerable<ElasticHeader> AllDataList = BindingSource.List as IEnumerable<ElasticHeader>;
            var lists = AllDataList.Where(p => p.AuditNo == obj.AuditNo);
            foreach (var o in lists)
            {
                if (string.IsNullOrEmpty(o.ActionLogSeqNo))
                {
                    o.ActionLogSeqNo = AActionLogSeqNo;
                    o.ActionLogOID = AActionLogOID;
                }
            }


            //obj.ActionLogOID = AActionLogOID;
            //if (string.IsNullOrEmpty(obj.ActionLogSeqNo))
            //{
            //    obj.ActionLogSeqNo = AActionLogSeqNo;
            //}

            this.BindingSource.EndEdit();
            this.objListGridView.HideEditor();
            db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        }

        //public void SaveActionLogInfoByLot(string AActionLogSeqNo, long? AActionLogOID)
        //{
        //    FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

        //    foreach (int rowIndex in this.objListGridView.GetSelectedRows())
        //    {
        //        var SelectedRow = this.objListGridView.GetRow(rowIndex) as ElasticHeader;
        //        SelectedRow.ActionLogOID = AActionLogOID;
        //        SelectedRow.ActionLogSeqNo = AActionLogSeqNo;
        //    }

        //    this.BindingSource.EndEdit();
        //    this.objListGridView.HideEditor();
        //    db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        //}

        private void toolStripMenuItemActionLogByLot_Click(object sender, EventArgs e)
        {
            string Suppliers = "";
            string Projects = "";
            //string Batchs = "";

            List<ElasticHeader> lists = new List<ElasticHeader>();
            foreach (int rowIndex in this.objListGridView.GetSelectedRows())
            {
                var SelectedRow = this.objListGridView.GetRow(rowIndex) as ElasticHeader;
                lists.Add(SelectedRow);
            }

            Suppliers = string.Join("/", lists.Select(p => p.SuppCode).Distinct().ToArray<string>());
            Projects = string.Join("/", lists.Select(p => p.ProjectNo).Distinct().ToArray<string>());
            //Batchs = string.Join("/", lists.Select(p => p.BatchNo).Distinct().ToArray<string>());

            int RefNoCount = lists.Select(p => p.AuditNo).Distinct().Count();
            if (RefNoCount > 1)
            {
                MessageBox.Show("Must be same a group Item Cde/Clr + id Create dd", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            int MissingAuditCount = lists.Where(p => !string.IsNullOrEmpty(p.ActionLogSeqNo)).Select(p => p.ActionLogSeqNo).Distinct().Count();
            if (MissingAuditCount > 0)
            {
                MessageBox.Show("Exists Action Log in the selected rows, please re-select.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            ElasticHeader obj = this.BindingSource.Current as ElasticHeader;
            FabricInspectionDataContext db = this.DataContext as FabricInspectionDataContext;

            //string MissingAudit = "Seq#" + Convert.ToDateTime(obj.Stock_In_DateShow).ToString("MM") + ECode(obj.Stock_In_DateShow);
            string MissingAudit = null;  //ECode(DateTime.Now.ToString("yyyy/MM/dd"));

            AlertLogForm frmAlertLog = new AlertLogForm(ActionLogProcessModes.Elastic, db, MissingAudit, obj.ActionLogOID, this, Suppliers, Projects, "");
            frmAlertLog.ShowDialog();
        }
        #endregion


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

            this.colWhse.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colAuditNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colMaterialType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemCde.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppItemRef.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuppCde.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colProjNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPONo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colHDONo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colAuditor.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
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
                ElasticHeader obj = bandedGridView1.GetRow(i) as ElasticHeader;
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

        string[] ShowNAFields = new string[] 
        { 
           "ActualPatternShape"
        };

        private void bandedGridView1_CustomDrawCell(object sender, DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventArgs e)
        {
            object NeedPatternShape = bandedGridView1.GetRowCellValue(e.RowHandle, "NeedPatternShape");
            if (NeedPatternShape != null && NeedPatternShape.ToString() == "N" && ShowNAFields.Contains(e.Column.FieldName))
            {
                e.DisplayText = "n.a.";
            }

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

                case "Part1DefectResultByLot":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Part1DefectResultByLot") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Part1DefectResultByLot").ToString() == "B")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    else if (bandedGridView1.GetRowCellValue(e.RowHandle, "Part1DefectResultByLot").ToString() == "C")
                    {
                        e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "Part2MeasureResultByLot":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Part2MeasureResultByLot") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Part2MeasureResultByLot").ToString() == "B")
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                    break;

                case "Part3TestingResultByLot":
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Part3TestingResultByLot") == null) return;
                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "Part3TestingResultByLot").ToString() == "B")
                    {
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
        private void bandedGridView1_CustomDrawColumnHeader(object sender, ColumnHeaderCustomDrawEventArgs e)
        {
            if (e.Column == null) return;

            if (BrushBlueColorList == null)
            {
                BrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => p.Flag == "Elastic" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BrushYellowColorList == null)
            {
                BrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => p.Flag == "Elastic" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
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

        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
        }

        private void btnShowColumnInfo_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
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
                    "Elastic", grid.FocusedColumn.FieldName, grid.FocusedColumn.Name, this.SideProgramID, this.FileID, "ElasticHeaderListForm");
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
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.IsOverDueEventLog);
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
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.IsOutstandingEventLog);
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
        //        this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.IsLastStageOutstandingEventLog);
        //    }
        //    else
        //    {
        //        this.BindingSource.DataSource = SaveAllData;
        //    }

        //    this.InitFormNavigator();
        //    this.FormatPostion();
        //}

        private void btnLoadDesignLayout_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.LoadDesignLayout();
        }

        private void btnSaveLayout1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.SaveLayoutToXml(bandedGridView1);
        }

        private void repositoryItemButtonEdit_OverallResultCoreDefectReason_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            SelectOverallFailReasonForm frmReason = new SelectOverallFailReasonForm();
            if (frmReason.ShowDialog() == DialogResult.OK)
            {
                ElasticHeader obj = this.BindingSource.Current as ElasticHeader;

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
                if (ReasonGroupList.Contains("D2"))
                {
                    if (obj.ElasticSpotDefects.Count() > 0)
                    {
                        obj.OverallResultDefectKind = "Spot";
                    }

                    if (obj.ElasticChainDefects.Count() > 0)
                    {
                        obj.OverallResultDefectKind = "Chain";
                    }

                }
                this.BindingSource.EndEdit();
                this.bandedGridView1.HideEditor();
                (this.DataContext as FabricInspectionDataContext).SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
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
                    SetGridViewBandBackColorForm frmSetBandColor = new SetGridViewBandBackColorForm(this.DataContext as FabricInspectionDataContext, "Elastic", info.Band.Name);
                    frmSetBandColor.ShowDialog();
                    return;
                }
            }
        }

        List<string> BandBrushBlueColorList;
        List<string> BandBrushYellowColorList;
        List<string> BandBrushGrayColorList;

        System.Drawing.Color GrayColor = System.Drawing.Color.FromArgb(217, 217, 217);
        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null) return;

            if (BandBrushBlueColorList == null)
            {
                BandBrushBlueColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Elastic" && (p.Color1 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushYellowColorList == null)
            {
                BandBrushYellowColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Elastic" && (p.Color2 ?? false)).Select(p => p.FieldName).ToList();
            }

            if (BandBrushGrayColorList == null)
            {
                BandBrushGrayColorList = (this.DataContext as FabricInspectionDataContext).GridViewHeaderBackColors.Where(p => (p.IsBand ?? false) && p.Flag == "Elastic" && (p.Color3 ?? false)).Select(p => p.FieldName).ToList();
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

        private void bandedGridView1_ValidateRow(object sender, DevExpress.XtraGrid.Views.Base.ValidateRowEventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            this.bandedGridView1.CloseEditor();
            try
            {
                ElasticHeader obj = this.BindingSource.Current as ElasticHeader;
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
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.DueDay > 3);
                }
                else if (SelectedItem == "Action log - behind sch.") //1st Stage date 已经超期
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.IsOverDueEventLog);
                }
                else if (SelectedItem == "Action log - o/s (1st)")   //1st Stage 没有Completed
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.IsOutstandingEventLog);
                }
                else if (SelectedItem == "Action Log - o/s (last)")  //Last Stage 没有Complete的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.IsLastStageOutstandingEventLog);
                }
                else if (SelectedItem == "Part I Grade(B, C)")      //Part I是B或C，并且超过三天没有出Action Log的
                {
                    this.BindingSource.DataSource = (SaveAllData as IEnumerable<ElasticHeader>).Where(p => p.IsPartIGradeBC);
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
                IEnumerable<ElasticHeader> lists = bandedGridView1.FilteredList().Cast<ElasticHeader>();

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

                    case "SuppItemRef":
                        e.TotalValue = lists.Select(p => p.SuppItemRef).Distinct().Count();
                        break;

                    case "SuppCode":
                        e.TotalValue = lists.Select(p => p.SuppCode).Distinct().Count();
                        break;

                    case "ProjectNo":
                        //var OriginalProjectList = lists.Where(p => !string.IsNullOrEmpty(p.ProjectNo)).Select(p => p.ProjectNo);
                        //List<string> ProjectList = new List<string>();
                        //foreach (var obj in OriginalProjectList)
                        //{
                        //    ProjectList.AddRange(obj.Split(new string[] { "\r\n" }, StringSplitOptions.RemoveEmptyEntries));
                        //}
                        //e.TotalValue = ProjectList.Distinct().Count();
                        e.TotalValue = lists.Select(p => p.ProjectNo).Distinct().Count();
                        break;

                    case "PONo":
                        e.TotalValue = lists.Select(p => p.PONo).Distinct().Count();
                        break;

                    case "HDONo":
                        e.TotalValue = lists.Select(p => p.HDONo).Distinct().Count();
                        break;

                    case "Auditor":
                        e.TotalValue = lists.Select(p => p.Auditor).Distinct().Count();
                        break;
                }

            }
        }

        private void barButtonItemiAuditForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ElasticHeader Obj = this.BindingSource.Current as ElasticHeader;
            iAuditResultFormElasticResultReport rptiAuditForm = new iAuditResultFormElasticResultReport(Obj);
            rptiAuditForm.ShowPreview();
        }

        private void barButtonItemResultNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ElasticHeader obj = this.BindingSource.Current as ElasticHeader;
            ElasticResultNoticeReport rtpResultNotice = new ElasticResultNoticeReport(obj, NoticeReportTypes.ResultNotice);
            rtpResultNotice.ShowPreview();
        }

        private void barButtonItemRejectNotice_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ElasticHeader obj = this.BindingSource.Current as ElasticHeader;

            if ((obj.AOverallResultShow == "A" || obj.AOverallResultShow == "A+"))
            {
                MessageBox.Show("Overall result is A or A+, Not allow print!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            ElasticResultNoticeReport rtpResultNotice = new ElasticResultNoticeReport(obj, NoticeReportTypes.RejectNotice);
            rtpResultNotice.ShowPreview();
        }

        private void btnConfirm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ConfirmForm frmConfim = new ConfirmForm();
            if (frmConfim.ShowDialog() == DialogResult.OK)
            {
                if (frmConfim.ConfirmType == ConfirmTypes.OnlyAuditNo)
                {
                    ElasticHeader CurrentObj = this.BindingSource.Current as ElasticHeader;
                    if (CurrentObj == null) return;

                    var List = (this.BindingSource.DataSource as IEnumerable<ElasticHeader>).Where(p => p.AuditNo == CurrentObj.AuditNo && p.AuditStage == CurrentObj.AuditStage);
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
                    IEnumerable<ElasticHeader> lists = bandedGridView1.FilteredList().Cast<ElasticHeader>();
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
