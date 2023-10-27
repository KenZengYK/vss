using System;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Drawing;
using System.Text;
using System.Reflection;
using System.Windows.Forms;
using DevExpress.XtraReports.UI;
using System.Drawing.Drawing2D;
using PH.Platform.BO;
using PH.Platform.AuthMgr.BO;

namespace PH.MR.UI
{
    public partial class frmHSCodeMR : PH.Platform.UI.CS.UI0.BlankForm
    {
        #region

        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.GroupControl gcCondition;
        private DevExpress.XtraEditors.SimpleButton btnMRGetData;
        private System.Windows.Forms.ImageList imageList1;
        private DevExpress.XtraEditors.GroupControl gcPrintView;
        private System.Windows.Forms.Label label27;
        private DevExpress.XtraEditors.SimpleButton btnReportDesign;
        private System.Windows.Forms.Timer timer1;
        private DevExpress.XtraEditors.ComboBoxEdit btnExport;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.ButtonEdit editProject;
        private DevExpress.XtraEditors.TextEdit editCONO;
        private DevExpress.XtraEditors.RadioGroup rgReportOption;
        private System.Windows.Forms.Label label7;
        private DevExpress.XtraEditors.RadioGroup rgReportType;
        private DevExpress.XtraEditors.SimpleButton btnMR2Compiere;
        private DevExpress.XtraEditors.PanelControl pnlTips;
        private System.Windows.Forms.Label lbCONO;
        private System.Windows.Forms.Label lbProject;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private DevExpress.XtraEditors.GroupControl gcCompiere;
        private DevExpress.XtraEditors.SimpleButton btnSaveVersion;
        private DevExpress.XtraEditors.PanelControl pnlReport;
        private DevExpress.XtraEditors.SimpleButton btnGetVersion;
        private System.Windows.Forms.Label lbFlag;
        private DevExpress.XtraTab.XtraTabPage tpEnquiry;
        private DevExpress.XtraTab.XtraTabPage tpReport;
        private DevExpress.XtraTab.XtraTabControl tcMain;
        private DevExpress.XtraGrid.GridControl gcVersions;
        private DevExpress.XtraGrid.Views.Grid.GridView gvVersions;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
        private DevExpress.XtraEditors.PanelControl pnlVersionPrint;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.SimpleButton btnOpenVersion;
        private DevExpress.XtraTab.XtraTabPage tpHistory;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton btnReturn;
        private DevExpress.XtraEditors.PanelControl pnlHistoryData;
        private DevExpress.XtraEditors.TextEdit editHistoryProject;
        private DevExpress.XtraEditors.TextEdit editHistoryCono;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label8;
        private DevExpress.XtraEditors.TextEdit editHistoryVersion;
        private System.Windows.Forms.Label lblDept;
        private System.Windows.Forms.Label label12;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraEditors.RadioGroup rgDept;
        private DevExpress.XtraEditors.TextEdit editHistoryDeptVersion;
        private DevExpress.XtraEditors.SimpleButton btnMarkComplete;
        private DevExpress.XtraEditors.SimpleButton btnCompareMR;
        private DevExpress.XtraEditors.SimpleButton btnComparePO;
        private DevExpress.XtraEditors.SimpleButton btnCompareMU;
        private DevExpress.XtraEditors.GroupControl pnlVersion;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraEditors.SimpleButton btnClearSelect;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
        private System.Windows.Forms.ImageList imlCustomDrawImages;
        private DevExpress.XtraEditors.ButtonEdit but_Customer;
        private System.Windows.Forms.Label label10;
        private DevExpress.XtraEditors.ComboBoxEdit cbb_factory;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.DateEdit date_to;
        private DevExpress.XtraEditors.DateEdit date_from;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label14;
        private DevExpress.XtraEditors.SimpleButton btnGetProjects;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn11;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn12;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit2;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit2;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit3;
        #endregion

        public frmHSCodeMR()
        {
            InitializeComponent();
        }

        public frmHSCodeMR(string option)
        {
            InitializeComponent();

            GetShowFormOption(option);

            InitData();
        }

        public frmHSCodeMR(ShowFormOption option)
        {
            InitializeComponent();
            this._ShowFormOption = option;
            InitData();
        }

        public void GetShowFormOption(string option)
        {
            switch (option)
            {
                case "MR":
                    this._ShowFormOption = ShowFormOption.MR;
                    break;
                case "RoundMR":
                    this._ShowFormOption = ShowFormOption.RoundMR;
                    break;
                case "QN":
                    this._ShowFormOption = ShowFormOption.QN;
                    break;
                case "HistoryEnquiry":
                    this._ShowFormOption = ShowFormOption.HistoryEnquiry;
                    break;
                case "Compiere":
                    this._ShowFormOption = ShowFormOption.Compiere;
                    break;
                case "HSCode":
                    this._ShowFormOption = ShowFormOption.HSCode;
                    break;
                default:
                    break;
            }

        }

        #region Feilds

        private ShowFormOption _ShowFormOption;
        private string _project;
        private string _cono;
        private string _dept; 
        MRHelper MRHelper_GetData;
        MRHelper Cur_MRHelper; 
        private bool isXPVersion;
        private bool _HaveRight_MRGetdata = false;
        private bool _HaveRight_MarkComplete = false; 
        private int languageIndex;
        private int _printVersion_Curr = -1;
        private int _printVersion_Pre = -1;
        private bool _isGetData = false;//true: only get history versions 
        private bool _rightAllVersion;
        private List<MR_Version> _mrVersionList;
        private frmMRHistory _frmMRHistory;  


        #endregion

        #region Init Value
        private void InitData()
        {
            if (PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID.ToLower() == "admin")
            {
                this._rightAllVersion = true;
                this._HaveRight_MRGetdata = true;
                this._HaveRight_MarkComplete = true;
            }
            else
            {
                //IList<PH.Sys.BO.RightModule> Rightlist = PH.UI.Global.GetUserRightByModule("PH.MR.UI.frmRoundMR");
                IList<Auth_FunRight> Rightlist = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.MenuID);

                if (Rightlist.Where(p => p.FunRight == "MR.GenerateNewData").FirstOrDefault() != null)
                    this._HaveRight_MRGetdata = true;
                else
                    this._HaveRight_MRGetdata = false;

                if (Rightlist.Where(p => p.FunRight == "MR.History.MarkComplete").FirstOrDefault() != null)
                    this._HaveRight_MarkComplete = true;
                else
                    this._HaveRight_MarkComplete = false;

                if (Rightlist.Where(p => p.FunRight == "MR.History.AllVersions").FirstOrDefault() != null)
                    this._rightAllVersion = true;
                else
                    this._rightAllVersion = false;
            }





            languageIndex = PH.MR.UI.Config.LanguageIndex;       


            InitFunction();

            MRHelper_GetData = new MRHelper();
            Cur_MRHelper = null;

            this.btnExport.SelectedIndex = 0;
            //this.btnCompareMR.SelectedIndex = 0;

            this.lbCONO.Text = "";
            this.lbProject.Text = "";
            this.lblDept.Text = "";
        }
        private void InitFunction()
        {


            this._dept = PH.MR.UI.Commons.GetUserCodeDept(PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID, "Department");//z..r this._dept = PH.AuthManage.Utils.AuthController.User.Department;
            this.rgDept.Properties.Items[0].Description = "Dept: " + this._dept;
            this.rgDept.SelectedIndex = 0;

            this.tcMain.Dock = DockStyle.Fill;
            this.tcMain.ShowTabHeader = DevExpress.Utils.DefaultBoolean.False;
            this.tcMain.SelectedTabPageIndex = 0;

            //this.gcPrintView.Visible = _ShowFormOption == ShowFormOption.MR;
            //this.gcCompiere.Visible = _ShowFormOption == ShowFormOption.Compiere;
            //this.gcCompiere.Location = this.gcPrintView.Location;
            //this.tcVersion.Visible = _ShowFormOption == ShowFormOption.HistoryEnquiry;
            //this.pnlSaveVersion.Visible = this.btnGetVersion.Visible = _ShowFormOption == ShowFormOption.HistoryEnquiry;
            //this.pnlTips.Location = new Point(this.pnlTips.Location.X, this.gcPrintView.Location.Y + this.gcPrintView.Size.Height - this.pnlTips.Size.Height - 5);


            this.gcPrintView.Visible = false;
            switch (_ShowFormOption)
            {
                case ShowFormOption.MR:
                    this.rgReportType.SelectedIndex = Convert.ToInt32(_ShowFormOption);
                    this.gcPrintView.Visible = true;

                    this.gcCondition.Size = new Size(224, 110);
                    this.gcCondition.Location = new Point(60, 60);
                    this.gcPrintView.Size = new Size(224, 180);
                    this.gcPrintView.Location = new Point(this.gcCondition.Location.X, this.gcCondition.Location.Y + this.gcCondition.Size.Height - 1);
                    this.pnlTips.Location = new Point(this.gcCondition.Location.X + this.gcCondition.Size.Width + 20, this.gcCondition.Location.Y);
                    this.lbFlag.Location = new Point(this.gcCondition.Location.X + 20, this.gcCondition.Location.Y - this.lbFlag.Height - 10);
                    this.lbFlag.Visible = true;
                    this.lbFlag.Text = _ShowFormOption.ToString();

                    this.gcPrintView.Enabled = true;
                    this.rgReportType.Visible = false;
                    this.label7.Visible = false;
                    this.label27.Visible = false;
                    break;
                case ShowFormOption.RoundMR:
                    goto case ShowFormOption.MR;
                case ShowFormOption.QN:
                    goto case ShowFormOption.MR;
                case ShowFormOption.Compiere:
                    this.gcCompiere.Visible = true;
                    this.gcCondition.Size = new Size(224, 100);
                    this.gcCondition.Location = new Point(60, 60);
                    this.gcCompiere.Size = new Size(224, 100);
                    this.gcCompiere.Location = new Point(this.gcCondition.Location.X, this.gcCondition.Location.Y + this.gcCondition.Size.Height - 1);
                    this.pnlTips.Location = new Point(this.gcCondition.Location.X + this.gcCondition.Size.Width + 20, this.gcCondition.Location.Y);
                    this.lbFlag.Location = new Point(this.gcCondition.Location.X + 20, this.gcCondition.Location.Y - this.lbFlag.Height - 10);
                    this.lbFlag.Visible = true;
                    this.lbFlag.Text = "KB";
                    break;
                case ShowFormOption.HistoryEnquiry:
                    //this.CreateWaitDialog("please waiting...", "get History Versions");
                    this.tcMain.SelectedTabPageIndex = 1;

                    this.gcCondition.ShowCaption = false;
                    this.gcCondition.Location = new Point(3, 14);
                    this.gcCondition.Size = new Size(520, 40);
                    this.gcCondition.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
                    this.label1.Location = new Point(14, 14);
                    this.editCONO.Location = new Point(80, 10);
                    this.label2.Location = new Point(130, 14);
                    this.editProject.Location = new Point(210, 10);
                    //this.rgDept.Location = new Point(300, 30);
                    this.btnMRGetData.Location = new Point(380, 5);
                    this.gcCondition.Dock = DockStyle.Top;
                    this.tpEnquiry.Controls.Add(this.gcCondition);
                    this.pnlVersion.Dock = DockStyle.Fill;
                    //this.tcVersion.Visible = true;
                    //this.pnlVersion.Visible = this.btnGetVersion.Visible = true;

                    this.editProject.Properties.Buttons[1].Visible = true;
                    //this.editMRProject.KeyDown -= new KeyEventHandler(editMRProject_KeyDown);
                    //this.tcVersion.Location = new Point(this.gcCondition.Location.X + this.gcCondition.Size.Width + 5, this.gcCondition.Location.Y);

                    this.rgReportType.Visible = false;
                    this.label7.Visible = false;
                    this.label27.Visible = false;

                    this.gcPrintView.Size = new Size(224, 140);
                    this.gcPrintView.ShowCaption = false;
                    this.pnlVersionPrint.Controls.Add(this.gcPrintView);
                    this.gcPrintView.Dock = DockStyle.Fill;
                    //this.gcPrintView.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
                    this.gcPrintView.Enabled = true;
                    this.gcPrintView.Visible = true;

                    //this.tpEnquiry.Controls.Add(this.pnlTips);
                    //this.pnlTips.Location = new Point(this.pnlVersion.Location.X + this.pnlVersion.Width + 10, this.pnlVersion.Location.Y);


                    this.btnCompareMU.Enabled = this.btnCompareMR.Enabled = this.btnComparePO.Enabled = false;
                    this.btnMarkComplete.Enabled = this.btnOpenVersion.Enabled = this.btnPrint.Enabled = this.btnExport.Enabled = this.btnSaveVersion.Enabled = false;
                    DoGetAllVersions();

                    this.btnClearSelect.Enabled = true;
                    //_frmMRVersion = new frmMRVersion();
                    //_frmMRVersion.Bounds = this.pnlVersion.DisplayRectangle;
                    //_frmMRVersion.Visible = false;
                    //pnlVersion.Controls.Add(_frmMRVersion);
                    //_frmMRVersion.Dock = DockStyle.Fill;
                    //_frmMRVersion.Show();

                    break;
                case ShowFormOption.HSCode:
                    this.rgReportType.SelectedIndex = Convert.ToInt32(_ShowFormOption);
                    this.gcPrintView.Visible = true;

                    //this.gcCondition.Size = new Size(220, 310);
                    //this.gcCondition.Location = new Point(60, 60);
                    ////this.gcPrintView.Size = new Size(224, 180);
                    //this.gcPrintView.Location = new Point(this.gcCondition.Location.X, this.gcCondition.Location.Y + this.gcCondition.Size.Height - 1);
                    //this.pnlTips.Location = new Point(this.gcCondition.Location.X + this.gcCondition.Size.Width + 20, this.gcCondition.Location.Y);
                    //this.lbFlag.Location = new Point(this.gcCondition.Location.X + 20, this.gcCondition.Location.Y - this.lbFlag.Height - 10);
                    //this.lbFlag.Visible = true;
                    //this.lbFlag.Text = _ShowFormOption.ToString();

                    //this.gcPrintView.Enabled = true;
                    //this.rgReportType.Visible = false;
                    //this.label7.Visible = false;
                    //this.label27.Visible = false;
                    break;
                default:
                    break;
            }

        }
        #endregion

        #region Show Print
        private void MRPrint(object da, PrintAgainOption printAgain)
        {
            ActionInitStatus();

            DataAction fda = (DataAction)da;
            MRHelper MRHelper = new MRHelper();
            MRHelper.dataAction = fda;
            MRHelper.Assign(this.Cur_MRHelper);
            CheckHasPrinted(MRHelper);

            MRHelper.PrintVersion = this._printVersion_Curr;
            MRHelper.ReportOption = (PHPrintReportOption)rgReportOption.EditValue;
            MRHelper.PrintAgain = printAgain;
            MRHelper.Dept = this._dept;
            if (this._ShowFormOption == ShowFormOption.HistoryEnquiry)
            {
                MR_Version mrv = GetCompareVersions(false)[0];
                //int version = GetCompareVersions(false)[0].VERSION;
                MRHelper.DeptVersion = mrv.DEPTVERSION;
                MRHelper.Dept = mrv.DEPT;// this._actionDept;
                MRHelper.CONO = mrv.COMPANY;
                MRHelper.Project = mrv.PROJECT;
                MRHelper.PrintVersion = mrv.VERSION;
            }

            MRHelper.phReportAction = PHReportAction.ShowReport;
            this.Cur_MRHelper = MRHelper;

            ReportCreatorForm.CreateReport(MRHelper);

        }
        private void Print_Click(object sender, EventArgs e)
        {
            GetDataAndPrint();
        }
        private void GetDataAndPrint()
        {
            if (_ShowFormOption == ShowFormOption.HistoryEnquiry) 
                PrintClick();
            else
                if (GetMRDataClick())
                {
                    if (this.Cur_MRHelper == null) return;
                    if (this.Cur_MRHelper.GenerateDataStatus == GenerateDataStatus.Cancel) return;

                    PrintClick();
                }
        }
        private bool PrintClick()
        {
            DataAction da = (DataAction)rgReportType.EditValue;

            if (!CheckCanPrintofHistory()) return false;
            MRPrint(da, PrintAgainOption.None);
            return true;
        }
        private bool CheckCanPrintofHistory()
        {
            this._printVersion_Curr = -1;
            int selectVersion = -1;
            if (_ShowFormOption != ShowFormOption.HistoryEnquiry) return true;
            int i = 0;

            foreach (MR_Version mrv in this._mrVersionList)
            {
                if (!mrv.IsCheck) continue;
                i++;
                selectVersion = mrv.VERSION;// Convert.ToInt32(row["VERSION"]);
            }
            if (i != 1)
            {
                MessageBox.Show((i == 0) ? "must select a version to print or export." : "Only can select one version to print or export.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            this._printVersion_Curr = selectVersion;
            return true;
        }
        private void CheckHasPrinted(MRHelper mrHelper)
        {
            if (this._printVersion_Curr == -1)
            {
                this._printVersion_Pre = this._printVersion_Curr;
                return;
            }
            if (this._printVersion_Curr != this._printVersion_Pre)
            {
                mrHelper.hasPrintedReport = HasPrintedReport.None;
                this._printVersion_Pre = this._printVersion_Curr;
            }
        }
        #endregion

        #region DesignReport
        private void MRDesign(object da, PrintAgainOption printAgain)
        {
            ActionInitStatus();

            DataAction fda = (DataAction)da;
            MRHelper MRHelper = new MRHelper();
            MRHelper.dataAction = fda;
            //MRHelper.QueryCondition = MRHelper_GetData.QueryCondition;
            MRHelper.Assign(this.Cur_MRHelper);

            //MRHelper.DT = MRHelper_GetData.DT;
            //MRHelper.TM = MRHelper_GetData.TM;
            //MRHelper.JOBN = MRHelper_GetData.JOBN;
            //MRHelper.Project = MRHelper_GetData.Project;
            //MRHelper.Ordn = MRHelper_GetData.Ordn;
            //MRHelper.WorkOrder = MRHelper_GetData.WorkOrder;
            MRHelper.ReportOption = (PHPrintReportOption)rgReportOption.EditValue;
            MRHelper.phReportAction = PHReportAction.DesignReport;
            MRHelper.PrintAgain = printAgain;
            if (this._ShowFormOption == ShowFormOption.HistoryEnquiry)
            {
                MR_Version mrv = GetCompareVersions(false)[0];
                //int version = GetCompareVersions(false)[0].VERSION;
                MRHelper.DeptVersion = mrv.DEPTVERSION;
                MRHelper.Dept = mrv.DEPT;// this._actionDept;
                MRHelper.CONO = mrv.COMPANY;
                MRHelper.Project = mrv.PROJECT;
                MRHelper.PrintVersion = mrv.VERSION;
            }

            this.Cur_MRHelper = MRHelper;
            ReportCreatorForm.CreateReport(MRHelper);

        }
        private void Design_Click(object sender, EventArgs e)
        {
            DataAction da = (DataAction)rgReportType.EditValue;

            MRDesign(da, PrintAgainOption.None);
        }

        #endregion

        #region Exit
        private void btnInExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are You Quit Material Stock Report System?", "Quit", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
        private void btnOutExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Are You Quit Material Stock Report System?", "Quit", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }
        #endregion

        #region Condition --> Hashtable
        /// <summary>
        /// Get Stock In Report Query Condition
        /// </summary>
        /// <returns></returns>
        private Hashtable GetMRReportQueryCondition()
        {
            return GetMRReportQueryCondition(false);
        }
        private Hashtable GetMRReportQueryCondition(bool isHistoryVersion)
        {
            this._cono = this.editCONO.Text;
            this._project = this.editProject.Text.Trim();
            //this._actionDept = this.editDept.Text;

            Hashtable hash = new Hashtable();
            //hash.Add("I_CONO", this._cono);
            //hash.Add("I_PROJECT", this._project);
            //hash.Add("I_ACTIONDEPT", this._actionDept);

            this.lbCONO.Text = this._cono;
            this.lbProject.Text = this._project;
            this.lblDept.Text = this._dept;// isHistoryVersion ? this._actionDept : this._dept;

            return hash;
        }

        #endregion

        #region Get data from AS400
        private bool CheckMarkComplete()
        {
            this._cono = this.editCONO.Text;
            this._project = this.editProject.Text.Trim();
            string sSQL = string.Format("select COMPLETE from MR_VERSION_COMPLETE where COMPANY='{0}' and PROJECT='{1}'", this._cono, this._project);
            object obj = PH.MR.UI.DB.SQL2000DB.GetScalar(sSQL);
            bool completed = Convert.IsDBNull(obj) ? false : Convert.ToBoolean(obj);
            if (completed)
            {
                MessageBox.Show("Project: {0} has been marked complete,cannot generate new data.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            return completed;
        }
        public void MRGetData()
        {
            if (CheckMarkComplete()) 
                return;

            //_finished = true;
            ActionInitStatus();

            this._printVersion_Curr = -1;
            this._printVersion_Pre = -1;

            if (_ShowFormOption == ShowFormOption.HistoryEnquiry)
            { 
                ResetHistoryVersionData();
            }
            this.GetMRReportQueryCondition();

            MRHelper_GetData = new MRHelper();
            MRHelper_GetData.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            MRHelper_GetData.TM = DateTime.Now.ToString("HHmmssfff");
            MRHelper_GetData.JOBN = string.Format("{0}{1}.{2}", MRHelper_GetData.DT, MRHelper_GetData.TM.Substring(0, 2), MRHelper_GetData.TM.Substring(2, 4));
            //MRHelper_GetData.TempVersionJOBN = DateTime.Now.AddSeconds(1).ToString("yyyyMMddHH.mmss");
            //MRHelper_GetData.QueryCondition = this.GetMRReportQueryCondition();
            MRHelper_GetData.phReportAction = PHReportAction.GenerateMR;
            MRHelper_GetData.dataAction = DataAction.None;
            MRHelper_GetData.ReportOption = PHPrintReportOption.None;
            MRHelper_GetData.Dept = this._dept;
            MRHelper_GetData.CONO = this._cono;
            MRHelper_GetData.Project = this._project;
            //MRHelper_GetData.PrepareData();
            this.Cur_MRHelper = MRHelper_GetData;

            GenerateMRForm.GenerateMR(MRHelper_GetData);


        }
        private void GetData_Click(object sender, EventArgs e)
        {
            GetMRDataClick();
        }
        private bool GetMRDataClick()
        {
            if (!this._HaveRight_MRGetdata)
            {
                MessageBox.Show(PH.MR.UI.Config.LRight[languageIndex], PH.MR.UI.Config.LHint[languageIndex], MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }

            if (this.editCONO.Text == "")
            {
                MessageBox.Show("Please enter Company.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.editCONO.Focus();
                return false;
            }
            if (this.editProject.Text == "")
            {
                MessageBox.Show("Please enter Project No.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.editProject.Focus();
                return false;
            }

            //if (this.editProject.Text == "")
            //{
            //    DataTable dt= this.gridControl1.DataSource as DataTable;
            //    bool tag = true;
            //    foreach(DataRow dr in dt.Rows)
            //    {
            //        if (dr["IsSelect"].ToString() == "True")
            //        {
            //            tag = false;
            //            break;
            //        }
            //    }
            //    if (tag)
            //    {
            //        MessageBox.Show("Please enter Project No.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //        this.editProject.Focus();
            //        return false;
            //    }
            //}

            MRGetData();
            return true;
            //System.Threading.ThreadPool.QueueUserWorkItem(new System.Threading.WaitCallback(MRGetData), null);

        }

        #endregion

        #region Timer

        private void ActionInitStatus()
        {
            MRHelper_GetData.GenerateDataStatus = GenerateDataStatus.Progressing;

            if (_ShowFormOption == ShowFormOption.HistoryEnquiry)
            {
                this.btnCompareMU.Enabled = this.btnCompareMR.Enabled = this.btnComparePO.Enabled = false;
                this.btnMarkComplete.Enabled = this.btnOpenVersion.Enabled = this.btnSaveVersion.Enabled = this.btnPrint.Enabled = this.btnExport.Enabled = false;
            }

            //btnMRGetData.Enabled = false;
            //btnPrint.Enabled = false;
            //btnReportDesign.Enabled = false;
            //btnExport.Enabled = false;
            //gcPrintView.Enabled = false;
            //pnlReport.Enabled = false;
            //this.btnMR2Compiere.Enabled = false;

            this.timer1.Enabled = true;
        }
        private void timer1_Tick(object sender, EventArgs e)
        {

            if (this.Cur_MRHelper == null) return;

            switch (this.Cur_MRHelper.GenerateDataStatus)
            {
                case GenerateDataStatus.Progressing:
                    break;
                case GenerateDataStatus.Finished:
                    timer1.Enabled = false;
                    this.Cursor = Cursors.Default;

                    //pnlReport.Enabled = true;
                    //gcPrintView.Enabled = true;

                    //btnMRGetData.Enabled = true;
                    //btnPrint.Enabled = true;
                    //btnReportDesign.Enabled = true;
                    //btnExport.Enabled = true;
                    //btnCompareMR.Enabled = btnCompareCAC.Enabled = btnComparePO.Enabled = true;
                    //this.btnMR2Compiere.Enabled = true;
                    if (_ShowFormOption == ShowFormOption.HistoryEnquiry)
                    {
                        VersionCheckChanging();
                    }

                    RedoReportAction();
                    //this._isGetData = false;

                    switch (this.Cur_MRHelper.phReportAction)
                    {
                        case PHReportAction.None:
                            break;
                        case PHReportAction.ShowReport:
                            break;
                        case PHReportAction.DesignReport:
                            break;
                        case PHReportAction.ExportReport:
                            break;
                        case PHReportAction.GenerateMR:
                            this._isGetData = true;
                            if (_ShowFormOption == ShowFormOption.HistoryEnquiry)
                            {
                                //this._actionDept = this.editDept.Text;
                                //DoGetVersionByProject(this.Cur_MRHelper.QueryCondition["I_CONO"].ToString(), this.Cur_MRHelper.Project);
                                DoGetAllVersions();
                                NewCurrenVersion(this.Cur_MRHelper.CONO, this.Cur_MRHelper.Project);
                                ExpandGroup(this.Cur_MRHelper.CONO, this.Cur_MRHelper.Project);
                            }
                            break;
                        case PHReportAction.MR2Compiere:
                            MessageBox.Show(string.Format("Translate {0} to Compiere finished!", this.Cur_MRHelper.Project),
                                   "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            break;
                        case PHReportAction.SaveVersion:
                            this._isGetData = false;
                            //DoGetVersionByProject(this.Cur_MRHelper.QueryCondition["I_CONO"].ToString(), this.Cur_MRHelper.Project);
                            DoGetAllVersions();
                            ExpandGroup(this.Cur_MRHelper.CONO, this.Cur_MRHelper.Project);
                            MessageBox.Show(string.Format("Save {0} to Version {1} finished!", this.Cur_MRHelper.Project, this.Cur_MRHelper.MaxVersion),
                                   "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            break;
                        case PHReportAction.CompareVersion:
                            ShowCompareVersion();
                            break;
                        case PHReportAction.GetVersions:
                            this._isGetData = false;
                            break;
                        default:
                            break;
                    }
                    btnSaveVersion.Enabled = this._isGetData;

                    break;
                case GenerateDataStatus.Cancel:
                    timer1.Enabled = false;
                    this.Cursor = Cursors.Default;

                    if (_ShowFormOption == ShowFormOption.HistoryEnquiry)
                    {
                        VersionCheckChanging();
                    }
                    //pnlReport.Enabled = true;
                    //gcPrintView.Enabled = true;

                    //btnPrint.Enabled = true;
                    //btnReportDesign.Enabled = true;
                    //btnExport.Enabled = true;
                    //this.btnMR2Compiere.Enabled = true;

                    switch (this.Cur_MRHelper.phReportAction)
                    {
                        case PHReportAction.None:
                            break;
                        case PHReportAction.ShowReport:
                            break;
                        case PHReportAction.DesignReport:
                            break;
                        case PHReportAction.ExportReport:
                            break;
                        case PHReportAction.GenerateMR:
                            this._isGetData = false;
                            //btnMRGetData.Enabled = true;
                            //btnCompareMR.Enabled = btnCompareCAC.Enabled = btnComparePO.Enabled = false;
                            this.editProject.Focus();
                            break;
                        case PHReportAction.MR2Compiere:
                            //btnMRGetData.Enabled = true;
                            //btnCompareMR.Enabled = btnCompareCAC.Enabled = btnComparePO.Enabled = true;
                            break;
                        case PHReportAction.SaveVersion:
                            goto case PHReportAction.MR2Compiere;
                        case PHReportAction.CompareVersion:
                            goto case PHReportAction.MR2Compiere;
                        default:
                            break;
                    }

                    btnSaveVersion.Enabled = this._isGetData;

                    break;
                default:
                    break;
            }
        }
        private void RedoReportAction()
        {
            if (this.Cur_MRHelper.PrintAgain != PrintAgainOption.Yes) return;
            switch (this.Cur_MRHelper.dataAction)
            {
                case DataAction.None:
                    break;
                case DataAction.MR:
                    goto case DataAction.RoundMR;
                case DataAction.QN:
                    goto case DataAction.RoundMR;
                case DataAction.RoundMR:
                    switch (this.Cur_MRHelper.phReportAction)
                    {
                        case PHReportAction.ShowReport:
                            MRPrint(this.Cur_MRHelper.dataAction, this.Cur_MRHelper.PrintAgain);
                            break;
                        case PHReportAction.DesignReport:
                            MRDesign(this.Cur_MRHelper.dataAction, this.Cur_MRHelper.PrintAgain);
                            break;
                        case PHReportAction.ExportReport:
                            MRExport(this.Cur_MRHelper.exportIndex, this.Cur_MRHelper.PrintAgain);
                            break;
                        case PHReportAction.GenerateMR:
                            break;
                        case PHReportAction.MR2Compiere:
                            break;
                        default:
                            break;
                    }
                    break;
                default:
                    break;
            }
        }

        #endregion

        #region Export Document...

        private void btnInExport_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.Button == cbe.Properties.Buttons[0])
                GetDataAndExport(cbe.SelectedIndex);
            //DoExport(sender, cbe.SelectedIndex);
        }
        private void btnInExport_SelectedIndexChanged(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (cbe.SelectedItem != null)
                cbe.Properties.Buttons[0].Caption = cbe.SelectedItem.ToString();
        }
        private void btnInExport_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.CloseMode != DevExpress.XtraEditors.PopupCloseMode.Normal) return;
            int index = cbe.Properties.Items.IndexOf(e.Value);
            if (index != -1)
                GetDataAndExport(index);
            //DoExport(sender, index);
        }

        public static string[] GetSplitString(string sStr, string stringSeparator)
        {
            string[] stringSeparators = new string[] { stringSeparator };
            return sStr.Split(stringSeparators, StringSplitOptions.RemoveEmptyEntries);
        }

        private void MRExport(int index, PrintAgainOption printAgain)
        {
            ActionInitStatus();

            DataAction da = (DataAction)rgReportType.EditValue;
            MRHelper MRHelper = new MRHelper();
            MRHelper.dataAction = da;
            //MRHelper.QueryCondition = MRHelper_GetData.QueryCondition;
            MRHelper.Assign(this.Cur_MRHelper);
            CheckHasPrinted(MRHelper);

            //MRHelper.DT = MRHelper_GetData.DT;
            //MRHelper.TM = MRHelper_GetData.TM;
            //MRHelper.JOBN = MRHelper_GetData.JOBN;
            //MRHelper.Project = MRHelper_GetData.Project;
            //MRHelper.Ordn = MRHelper_GetData.Ordn;
            //MRHelper.WorkOrder = MRHelper_GetData.WorkOrder;
            MRHelper.PrintVersion = this._printVersion_Curr;
            MRHelper.ReportOption = (PHPrintReportOption)rgReportOption.EditValue;
            MRHelper.phReportAction = PHReportAction.ExportReport;
            MRHelper.exportIndex = index;
            MRHelper.PrintAgain = printAgain;
            MRHelper.Dept = this._dept;// this._actionDept;
            if (this._ShowFormOption == ShowFormOption.HistoryEnquiry)
            {
                MR_Version mrv = GetCompareVersions(false)[0];
                //int version = GetCompareVersions(false)[0].VERSION;
                MRHelper.DeptVersion = mrv.DEPTVERSION;
                MRHelper.Dept = mrv.DEPT;// this._actionDept;
            }

            this.Cur_MRHelper = MRHelper;
            ReportCreatorForm.CreateReport(MRHelper);

        }
        private bool DoExport(int index)
        {
            if (!CheckCanPrintofHistory()) return false;
            MRExport(index, PrintAgainOption.None);
            return true;
        }

        private void GetDataAndExport(int index)
        {
            if (_ShowFormOption == ShowFormOption.HistoryEnquiry) DoExport(index);
            else
                if (GetMRDataClick())
                {
                    if (this.Cur_MRHelper == null) return;
                    if (this.Cur_MRHelper.GenerateDataStatus == GenerateDataStatus.Cancel) return;

                    DoExport(index);
                }
        }
        #endregion

        #region Get Project
        private void editMRProject_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            string cono = this.editCONO.Text;
            this.Cursor = Cursors.AppStarting;
            try
            {
                frmSelectProject frm = new frmSelectProject(cono, e.Button.Index == 1);
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    (sender as Control).Text = frm.Project;
                }
                frm.Dispose();
            }
            finally
            { this.Cursor = Cursors.Default; }
        }
        #endregion

        #region event , function
        private void frmMain_Load(object sender, EventArgs e)
        {
            editProject.Focus();
        }
        private void rgReportType_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataAction da = (DataAction)rgReportType.EditValue;
            this.rgReportOption.Properties.Items.Clear();
            DevExpress.XtraEditors.Controls.RadioGroupItem item;

            //this.btnMR2Compiere.Visible = da == DataAction.MR;

            switch (da)
            {
                case DataAction.MR:
                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "Summary Listing";
                    item.Value = 1;
                    this.rgReportOption.Properties.Items.Add(item);

                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "Summary Breakdown Listing";
                    item.Value = 2;
                    this.rgReportOption.Properties.Items.Add(item);

                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "Detail Listing";
                    item.Value = 3;
                    this.rgReportOption.Properties.Items.Add(item);

                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "H.S Code Detail Listing";
                    item.Value = 4;
                    this.rgReportOption.Properties.Items.Add(item);

                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "H.S Code Summary Listing";
                    item.Value = 5;
                    this.rgReportOption.Properties.Items.Add(item);

                    this.rgReportOption.EditValue = 1;
                    this.rgReportOption.SelectedIndex = 0;
                    break;
                case DataAction.RoundMR:
                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "Detail Listing";
                    item.Value = 3;
                    this.rgReportOption.Properties.Items.Add(item);

                    this.rgReportOption.EditValue = 3;
                    this.rgReportOption.SelectedIndex = 2;
                    break;
                case DataAction.QN:
                    goto case DataAction.RoundMR;
                case DataAction.HSCode:
                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "H.S Code Detail Listing";
                    item.Value = 4;
                    this.rgReportOption.Properties.Items.Add(item);

                    item = new DevExpress.XtraEditors.Controls.RadioGroupItem();
                    item.Description = "H.S Code Summary Listing";
                    item.Value = 5;
                    this.rgReportOption.Properties.Items.Add(item);

                    this.rgReportOption.EditValue = 1;
                    this.rgReportOption.SelectedIndex = 0;
                    break;
                default:
                    break;
            }
        }
        private void SetProgressBarStyle()
        {
            //phStatusBar1.PHProgressBar.Style = this.isXPVersion ? ProgressBarStyle.Marquee : ProgressBarStyle.Blocks;
        }
        #endregion

        #region Keydown event
        private void editMRCONO_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                this.editProject.Focus();
        }
        private void editMRProject_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                GetMRDataClick();
        }
        #endregion

        #region MR to Compiere
        private void btnMR2Compiere_Click(object sender, EventArgs e)
        {
            //if (!this._HaveRight_MR2Compiere)
            //{
            //    MessageBox.Show(PH.MR.UI.Config.LRight[languageIndex], PH.MR.UI.Config.LHint[languageIndex], MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    return;
            //}

            GetDataAnd2Compiere();
        }
        private void MR2Compiere()
        {
            ActionInitStatus();

            MRHelper MRHelper = new MRHelper();
            //MRHelper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            //MRHelper.TM = DateTime.Now.ToString("HHmmssfff");
            //MRHelper.JOBN = string.Format("{0}{1}.{2}", MRHelper_GetData.DT, MRHelper_GetData.TM.Substring(0, 2), MRHelper_GetData.TM.Substring(2, 4));
            //MRHelper.QueryCondition = this.GetMRReportQueryCondition();
            MRHelper.Assign(this.Cur_MRHelper);
            MRHelper.phReportAction = PHReportAction.MR2Compiere;
            MRHelper.dataAction = DataAction.None;
            MRHelper.ReportOption = PHPrintReportOption.None;

            this.Cur_MRHelper = MRHelper;
            GenerateMRForm.GenerateMR(MRHelper);

        }
        private void GetDataAnd2Compiere()
        {
            if (GetMRDataClick())
            {
                if (this.Cur_MRHelper == null) return;
                if (this.Cur_MRHelper.GenerateDataStatus == GenerateDataStatus.Cancel) return;

                MR2Compiere();
            }
        }
        #endregion

        #region Version

        #region Compare Version
        private List<MR_Version> GetCompareVersions()
        {
            return GetCompareVersions(true);
        }
        private List<MR_Version> GetCompareVersions(bool showMessage)
        {
            if (this._mrVersionList == null) return null;

            List<MR_Version> list = this._mrVersionList.FindAll(delegate(MR_Version v)
                {
                    return (v.IsCheck);
                }
                );
            if (list.Count == 0 || list.Count == 1)
            {
                if (showMessage)
                    MessageBox.Show("Must select 2 versions to compare.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            return list;
        }
        private void DoCompareVersion(PHCompareOption compareOption)
        {
            List<MR_Version> vers = GetCompareVersions();
            if (vers.Count == 0 || vers.Count == 1 || compareOption == PHCompareOption.None) return;
            if (vers[0].COMPANY != vers[1].COMPANY || vers[0].PROJECT != vers[1].PROJECT)
            {
                MessageBox.Show("Please select same Company and Project to Compare.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            ActionInitStatus();

            DataAction fda = DataAction.MR;
            MRHelper MRHelper = new MRHelper();
            MRHelper.dataAction = fda;
            MRHelper.Assign(this.Cur_MRHelper);
            //CheckHasPrinted(MRHelper);

            //MRHelper.PrintVersion = this._printVersion_Curr;
            MRHelper.ReportOption = PHPrintReportOption.None;
            //MRHelper.PrintAgain = printAgain;

            MRHelper.CompareOption = compareOption;
            MRHelper.Versions = vers;
            MRHelper.Project = vers[0].PROJECT;
            MRHelper.phReportAction = PHReportAction.CompareVersion;
            MRHelper.Dept = this._dept;// this._actionDept;
            this.Cur_MRHelper = MRHelper;
            GenerateMRForm.GenerateMR(MRHelper);

        }
        private void btnCompareMR_Click(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.BaseButton btn = sender as DevExpress.XtraEditors.BaseButton;
            PHCompareOption compareOption;
            string sTag = Convert.ToString(btn.Tag);
            switch (sTag)
            {
                case "MR": compareOption = PHCompareOption.MR;//YY
                    break;
                case "MU": compareOption = PHCompareOption.MU;
                    break;
                case "PO": compareOption = PHCompareOption.PO;
                    break;
                default: compareOption = PHCompareOption.None;
                    break;
            }

            DoCompareVersion(compareOption);

        }
        private void ShowCompareVersion()
        {
            frmCompare frm = new frmCompare(this.Cur_MRHelper);
            frm.ShowDialog();
        }
        private void gvVersions_CellValueChanging(object sender, DevExpress.XtraGrid.Views.Base.CellValueChangedEventArgs e)
        {
            if (e.Column.FieldName != "IsCheck") return;

            //bool ischeck = Convert.ToBoolean(e.Value);
            this.gvVersions.SetRowCellValue(e.RowHandle, e.Column, e.Value);
            VersionCheckChanging();
        }
        private void VersionCheckChanging()
        {
            List<MR_Version> list = GetCompareVersions(false);
            int iCount = list.Count;
            this.btnCompareMU.Enabled = this.btnCompareMR.Enabled = this.btnComparePO.Enabled = iCount == 2;
            this.btnPrint.Enabled = this.btnExport.Enabled = iCount == 1;
            this.btnOpenVersion.Enabled = iCount == 1 && list[0].VERSION != -1;
            //this.btnSaveVersion.Enabled = true;
        }
        #endregion

        #region History Version
        private void btnGetVersion_Click(object sender, EventArgs e)
        {
            if (this.editCONO.Text == "")
            {
                MessageBox.Show("Please enter Company.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.editCONO.Focus();
                return;
            }
            if (this.editProject.Text == "")
            {
                MessageBox.Show("Please enter Project No.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
                this.editProject.Focus();
                return;
            }

            //ExpandGroup_Test(this.editCONO.Text, this.editProject.Text);
            //return;

            //if (this.editDept.Text == "")
            //{
            //    MessageBox.Show("Please select a Dept.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    this.editDept.Focus();
            //    return;
            //}
            this.GetMRReportQueryCondition(true);

            MRHelper MRHelper = new MRHelper();
            MRHelper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            MRHelper.TM = DateTime.Now.ToString("HHmmssfff");
            MRHelper.JOBN = string.Format("{0}{1}.{2}", MRHelper.DT, MRHelper.TM.Substring(0, 2), MRHelper.TM.Substring(2, 4));
            //MRHelper.QueryCondition = this.GetMRReportQueryCondition(true);
            MRHelper.phReportAction = PHReportAction.GetVersions;
            MRHelper.dataAction = DataAction.None;
            MRHelper.ReportOption = PHPrintReportOption.None;
            //MRHelper.PrepareData();
            MRHelper.Project = this._project;
            MRHelper.Dept = this._dept;// this._actionDept;
            MRHelper.GenerateDataStatus = GenerateDataStatus.Finished;
            this.Cur_MRHelper = MRHelper;

            this._isGetData = false;
            //this.btnSaveVersion.Enabled = this._isGetData;
            //if (_ShowFormOption == ShowFormOption.HistoryEnquiry)
            ResetHistoryVersionData();

            //GenerateMRForm.GenerateMR(MRHelper_GetData);

            //DoGetVersionByProject(this.Cur_MRHelper.QueryCondition["I_CONO"].ToString(), this.Cur_MRHelper.Project);
            DoGetAllVersions();
            //NewCurrenVersion(this.Cur_MRHelper.QueryCondition["I_CONO"].ToString(), this.Cur_MRHelper.Project);
            ExpandGroup(this.Cur_MRHelper.CONO, this.Cur_MRHelper.Project);
        }
        private void btnSaveVersion_Click(object sender, EventArgs e)
        {
            SaveVersion();
        }
        private void SaveVersion()
        {
            if (MessageBox.Show(string.Format("Sure to save new MR Version for {0} ?", this.Cur_MRHelper.Project),
                "Question", MessageBoxButtons.OKCancel, MessageBoxIcon.Question) == DialogResult.Cancel)
                return;

            frmSaveRemark frm = new frmSaveRemark(this.Cur_MRHelper.CONO, this.Cur_MRHelper.Project, this._dept, SaveRemarkType.NewVersion);
            if (frm.ShowDialog() == DialogResult.Cancel) return;
            string sDesc = frm.Description;
            int maxVersion = frm.MaxVersion;
            int fID = frm.FID;
            int deptVersion = frm.DeptVersion;
            frm.Dispose();

            ActionInitStatus();

            MRHelper MRHelper = new MRHelper();
            //MRHelper.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            //MRHelper.TM = DateTime.Now.ToString("HHmmssfff");
            //MRHelper.JOBN = string.Format("{0}{1}.{2}", MRHelper_GetData.DT, MRHelper_GetData.TM.Substring(0, 2), MRHelper_GetData.TM.Substring(2, 4));
            //MRHelper.QueryCondition = this.GetMRReportQueryCondition();
            MRHelper.Assign(this.Cur_MRHelper);
            MRHelper.VersionDescription = sDesc.Replace("'", "''");
            MRHelper.MaxVersion = maxVersion;
            MRHelper.DeptVersion = deptVersion;
            MRHelper.FID_Version = fID;
            MRHelper.phReportAction = PHReportAction.SaveVersion;
            MRHelper.dataAction = DataAction.None;
            MRHelper.ReportOption = PHPrintReportOption.None;

            this.Cur_MRHelper = MRHelper;
            GenerateMRForm.GenerateMR(MRHelper);
        }

        private void ResetHistoryVersionData()
        {
            this.btnSaveVersion.Enabled = this.btnMarkComplete.Enabled = false;
            this.gcVersions.DataSource = null;
        }
        private void DoGetVersionByProject1(string cono, string project)
        {
            this.btnCompareMU.Enabled = this.btnCompareMR.Enabled = this.btnComparePO.Enabled = false;
            this.btnMarkComplete.Enabled = this.btnOpenVersion.Enabled = this.btnPrint.Enabled = this.btnExport.Enabled = false;
            string sSQL;
            if (this.rgDept.SelectedIndex == 1)
                sSQL = string.Format("select * from MR_VERSION where COMPANY='{0}' and PROJECT='{1}'", cono, project);
            else
                sSQL = string.Format("select * from MR_VERSION where COMPANY='{0}' and PROJECT='{1}' and DEPT='{2}'", cono, project, this._dept);
            DataTable tb = PH.MR.UI.DB.SQL2000DB.GetTable(sSQL);
            //NewCurrenVersion(cono, project);
            MR_VersionList(tb);

            this.gcVersions.DataSource = null;
            this.gcVersions.DataSource = this._mrVersionList;

            //this._hasMarkCompleted = CheckProjectMarkCompleted(this._cono, this._project);
            //this.btnMarkComplete.Enabled = (!this._hasMarkCompleted) && (this._mrVersionList.Count > 0);
        }
        private void DoGetAllVersions()
        {
            this.btnCompareMU.Enabled = this.btnCompareMR.Enabled = this.btnComparePO.Enabled = false;
            this.btnMarkComplete.Enabled = this.btnOpenVersion.Enabled = this.btnPrint.Enabled = this.btnExport.Enabled = false;
            string sSQL;
            //if (this.rgDept.SelectedIndex == 1)
            sSQL = string.Format("select a.*,b.COMPLETE as MarkComplete"
                + " from MR_VERSION a left join MR_VERSION_COMPLETE b"
                + "   ON (a.COMPANY=b.COMPANY and a.PROJECT=b.PROJECT)"
                + " order by a.PROJECT,a.COMPANY,a.Version");

            // sSQL = string.Format("select a.*,b.COMPLETE,ISNULL(c.Customer,'Others') as  CustomerGroup"
            //+ " from MR_VERSION a left join MR_VERSION_COMPLETE b"
            //+ "   ON (a.COMPANY=b.COMPANY and a.PROJECT=b.PROJECT)"
            //+ " left join SOPC_CUSTCODES c"
            //+ "   ON (a.CUSTOMER=c.CUSTOMERCODE)"
            //+ " order by CustomerGroup,a.PROJECT,a.COMPANY,a.Version");
            //else
            //    sSQL = string.Format("select * from MR_VERSION where COMPANY='{0}' and PROJECT='{1}' and DEPT='{2}'", cono, project, this._dept);
            DataTable tb = PH.MR.UI.DB.SQL2000DB.GetTable(sSQL);
            //NewCurrenVersion(cono, project);
            MR_VersionList(tb);

            this.gcVersions.DataSource = null;
            this.gcVersions.DataSource = this._mrVersionList;

            //this._hasMarkCompleted = CheckProjectMarkCompleted(this._cono, this._project);
            //this.btnMarkComplete.Enabled = (!this._hasMarkCompleted) && (this._mrVersionList.Count > 0);
        }
        private bool CheckProjectMarkCompleted(string cono, string project)
        {
            string sSQL = string.Format("select COMPLETE from MR_VERSION_COMPLETE where COMPANY='{0}' and PROJECT='{1}'", cono, project);
            object obj = PH.MR.UI.DB.SQL2000DB.GetScalar(sSQL);
            return Convert.IsDBNull(obj) ? false : Convert.ToBoolean(obj);
        }
        private void MR_VersionList(DataTable tb)
        {
            this._mrVersionList = TableORM.GetObjects<MR_Version>(tb, true);
            //this._mrVersionList = new List<MR_Version>();
            //foreach (DataRow row in tb.Rows)
            //{
            //    MR_Version mrhn = new MR_Version();
            //    foreach (PropertyInfo pi in typeof(MR_Version).GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
            //    {
            //        try
            //        {
            //            if (pi.Name == "IsNew")
            //            {
            //                pi.SetValue(mrhn, false, null);
            //            }
            //            else
            //            {
            //                string fieldName = GetColumnName(tb, pi.Name);
            //                if (fieldName == null) continue;

            //                if (pi.CanWrite)
            //                    pi.SetValue(mrhn, Convert.IsDBNull(row[fieldName]) ? null : row[fieldName], null);
            //            }
            //        }
            //        catch { }
            //    }
            //    this._mrVersionList.Add(mrhn);
            //}
        }
        private string GetColumnName(DataTable tb, string propertyName)
        {
            if (tb.Columns.Contains(propertyName))
                return tb.Columns[propertyName].ColumnName;
            else
                return null;
        }

        private void gvVersions_CustomColumnDisplayText(object sender, DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventArgs e)
        {
            if (e.Column.FieldName == "VERSION" && Convert.ToInt32(e.Value) == -1)
            {
                e.DisplayText = "Current MR";
            }
        }

        private void NewCurrenVersion(string cono, string project)
        {
            //string customer = MRHelper.GetCustomerFromAS400(this.Cur_MRHelper.JOBN);
            MR_Version mrv = new MR_Version();
            mrv.COMPANY = cono;
            mrv.PROJECT = project;
            mrv.VERSION = -1;
            mrv.DEPT = this._dept;
            mrv.DEPTVERSION = -1;
            mrv.MarkComplete = false;
            mrv.FDATE = DateTime.Now;
            mrv.FUSER = PH.AuthManage.Utils.AuthController.UserID;
            //mrv.CustomerGroup = customer;
            this._mrVersionList.Add(mrv);

            this.gcVersions.DataSource = null;
            this.gcVersions.DataSource = this._mrVersionList;
            //this.gcVersions.RefreshDataSource();
            //row["COMPANY"] = cono;
            //row["PROJECT"] = project;
            //row["VERSION"] = -1;
            //row["IsCheck"] = false;
        }
        private void DeleteCurrenVersion()
        {
            for (int i = 0; i < this._mrVersionList.Count; i++)
            {
                if (this._mrVersionList[i].VERSION == -1)
                {
                    this._mrVersionList.RemoveAt(i);
                    return;
                }
            }
        }
        private void ExpandGroup_Test(string cono, string project)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = this.gvVersions;
            DevExpress.XtraGrid.Views.Grid.ViewInfo.GridViewInfo viewInfo = GetGridViewInfo(view);
            if (viewInfo == null) return;
            int rowHandle;
            //DevExpress.XtraGrid.Columns.GridColumn colProject = view.Columns["PROJECT"];
            //DevExpress.XtraGrid.Columns.GridColumn colCONO = view.Columns["COMPANY"];
            for (int i = 0; i < viewInfo.RowsInfo.Count; i++)
            {
                if (viewInfo.RowsInfo[i].IsGroupRow)
                {
                    rowHandle = viewInfo.RowsInfo[i].RowHandle;
                    MR_Version mrv = view.GetRow(rowHandle) as MR_Version;
                    if (mrv == null) continue;
                    if (mrv.PROJECT == project)
                    {
                        view.ExpandGroupRow(rowHandle, true);
                        view.TopRowIndex = view.GetVisibleIndex(rowHandle);
                        break;
                    }
                }
            }
        }
        private void ExpandGroup(string cono, string project)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = this.gvVersions;
            int iGroupCount = view.GroupCount;

            for (int i = -1; view.IsGroupRow(i); i--)
            {
                int rowHandle = view.GetDataRowHandleByGroupRowHandle(i);
                int iLevel = view.GetRowLevel(i);
                if (iLevel != (iGroupCount - 1)) continue;

                MR_Version mrv = view.GetRow(rowHandle) as MR_Version;

                if (mrv == null) continue;
                if (mrv.PROJECT == project)
                {
                    ExpandParentGroup(i, view);
                    //int parentHandle = view.GetParentRowHandle(i);
                    //view.SetRowExpanded(parentHandle, true);
                    view.SetRowExpanded(i, true);
                    view.TopRowIndex = view.GetVisibleIndex(i);
                    break;
                }
            }

        }
        private void ExpandParentGroup(int rowHandle, DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            int parentHandle = view.GetParentRowHandle(rowHandle);
            if (parentHandle == DevExpress.XtraGrid.GridControl.InvalidRowHandle) return;

            view.SetRowExpanded(parentHandle, true);
            ExpandParentGroup(parentHandle, view);
        }
        private DevExpress.XtraGrid.Views.Grid.ViewInfo.GridViewInfo GetGridViewInfo(DevExpress.XtraGrid.Views.Grid.GridView gridView)
        {
            if (gridView == null) return null;
            PropertyInfo propertyInfo = gridView.GetType().GetProperty("ViewInfo", BindingFlags.Instance | BindingFlags.GetProperty | BindingFlags.NonPublic, null, typeof(DevExpress.XtraGrid.Views.Grid.ViewInfo.GridViewInfo), new Type[0], null);
            if (propertyInfo != null)
                return propertyInfo.GetValue(gridView, null) as DevExpress.XtraGrid.Views.Grid.ViewInfo.GridViewInfo;
            else return null;
        }
        private void btnOpenVersion_Click(object sender, EventArgs e)
        {
            try
            {
                MR_Version mrv = GetCompareVersions(false)[0];
                //int version = GetCompareVersions(false)[0].VERSION;
                DoHistoryVersionData(mrv);
                if (_frmMRHistory.MRHelper_GetData.GenerateDataStatus == GenerateDataStatus.Finished)
                    this.tcMain.SelectedTabPageIndex = 2;
            }
            finally
            {
            }
        }
        //private MR_Version GetMRVersionByVersionID(int version)
        //{
        //    MR_Version mrv = new MR_Version();
        //    return this._mrVersionList.Find(delegate(MR_Version value)
        //    {
        //        return value.VERSION == version;
        //    }
        //    );
        //}

        private void DoHistoryVersionData(MR_Version mrv)
        {
            this.editHistoryCono.Text = mrv.COMPANY;
            this.editHistoryProject.Text = mrv.PROJECT;
            this.editHistoryVersion.Text = mrv.VERSION.ToString();
            this.editHistoryDeptVersion.Text = mrv.DEPT_VERSION;

            if (_frmMRHistory == null)
            {
                _frmMRHistory = new frmMRHistory(mrv,this.MenuID);
                _frmMRHistory.Bounds = this.pnlHistoryData.DisplayRectangle;
                _frmMRHistory.Visible = false;
                this.pnlHistoryData.Controls.Add(_frmMRHistory);
                _frmMRHistory.Dock = DockStyle.Fill;
                _frmMRHistory.Show();
            }
            else
            {
                _frmMRHistory.MRHistoryEnquiriesData(mrv);
            }
        }
        private void btnReturn_Click(object sender, EventArgs e)
        {
            this.tcMain.SelectedTabPageIndex = 1;

        }
        private void gvVersions_CustomDrawGroupRow(object sender, DevExpress.XtraGrid.Views.Base.RowObjectCustomDrawEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.ViewInfo.GridGroupRowInfo group = e.Info as DevExpress.XtraGrid.Views.Grid.ViewInfo.GridGroupRowInfo;
            Rectangle button = group.ButtonBounds, textBounds = group.Bounds;

            Brush brush;
            Brush brushImage;
            Brush brushText, brushTextShadow;
            Color color1, color2;
            color1 = Color.FromArgb(((int)(((byte)(138)))), ((int)(((byte)(193)))), ((int)(((byte)(55)))));
            color2 = Color.FromArgb(((int)(((byte)(209)))), ((int)(((byte)(231)))), ((int)(((byte)(177)))));
            if (group.Level == 0)
            {
                brush = new LinearGradientBrush(textBounds, color1, color2, 0.0);
                brushImage = Brushes.LightBlue;
                brushText = Brushes.White;
                brushTextShadow = Brushes.LightGreen;
            }
            else
            {
                brush = new LinearGradientBrush(textBounds, color2, color2, 0.0);
                brushImage = Brushes.LightCyan;
                brushText = Brushes.Black;
                brushTextShadow = Brushes.LightCyan;
            }
            //if (e.RowHandle == gvVersions.FocusedRowHandle)
            //{
            //    brush = brushTextShadow = brushImage = Brushes.DarkBlue;
            //    brushText = Brushes.White;
            //}
            e.Graphics.FillRectangle(brush, textBounds);
            //e.Appearance.Font = new Font("Arial", 8.25F, FontStyle.Bold);
            if (!button.IsEmpty)
            {
                textBounds.Width = textBounds.Right - (button.Right + 4);
                textBounds.X = button.Right + 4;
                int x = button.X;
                int y = textBounds.Y + (textBounds.Height - this.imlCustomDrawImages.ImageSize.Height) / 2;
                e.Graphics.DrawImageUnscaled(this.imlCustomDrawImages.Images[(gvVersions.GetRowExpanded(e.RowHandle) ? 1 : 0)], x, y);
            }
            string s = gvVersions.GetGroupRowDisplayText(e.RowHandle);
            //e.Appearance.DrawString(e.Cache, s, new Rectangle(textBounds.X + 1, textBounds.Y + 1, textBounds.Width, textBounds.Height), brushTextShadow);
            e.Appearance.DrawString(e.Cache, s, textBounds, brushText);

            //e.Appearance.BackColor = System.Drawing.Color.LightSeaGreen;
            //e.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            //e.Appearance.ForeColor = System.Drawing.Color.Black;
            //e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            //e.Appearance.Options.UseBackColor = true;
            //e.Appearance.Options.UseForeColor = true;

            e.Handled = true;

        }

        #endregion

        #region MarkComplete
        private void gvVersions_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            //ArrayList list = GetCompareVersions(false);
            //int iCount = list.Count;
            DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
            MR_Version mrv = view.GetRow(view.FocusedRowHandle) as MR_Version;
            if (!mrv.MarkComplete)
            {
                this.btnMarkComplete.Enabled = true;
                this.btnMarkComplete.Text = string.Format("Mark Complete of\r\n{0}", mrv.PROJECT);
            }
            else
            {
                this.btnMarkComplete.Enabled = false;
                this.btnMarkComplete.Text = string.Format("Has Completed of\r\n{0}", mrv.PROJECT);
            }
        }
        private void btnMarkComplete_Click(object sender, EventArgs e)
        {
            if (!_HaveRight_MarkComplete)
            {
                MessageBox.Show(PH.MR.UI.Config.LRight[languageIndex], PH.MR.UI.Config.LHint[languageIndex], MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            MR_Version mrv = this.gvVersions.GetRow(this.gvVersions.FocusedRowHandle) as MR_Version;
            MarkProjectComplete(mrv);
        }
        private void MarkProjectComplete(MR_Version mrv)
        {

            frmSaveRemark frm = new frmSaveRemark(mrv.COMPANY, mrv.PROJECT, mrv.DEPT, SaveRemarkType.MarkComplete);

            if (frm.ShowDialog() == DialogResult.OK && MessageBox.Show(string.Format("Sure to Complete this Project: {0} ?", mrv.PROJECT), "Question",
                MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                string remark = frm.Description;
                string sSQL = string.Format("exec SP_MR_MarkProjectComplete '{0}','{1}',{2},'{3}','{4}','{5}'",
                         mrv.COMPANY, mrv.PROJECT, Convert.ToInt32(true), remark, PH.AuthManage.Utils.AuthController.UserID, this._dept);
                PH.MR.UI.DB.SQL2000DB.Execute(sSQL);
                this.btnMarkComplete.Enabled = false;
                DeleteCurrenVersion();
                SetProjectComplete(mrv.COMPANY, mrv.PROJECT, true);
                DeleteCurrenVersion();
                btnSaveVersion.Enabled = this._isGetData = false;
            }
            frm.Dispose();
        }
        private void SetProjectComplete(string cono, string project, bool complete)
        {
            List<MR_Version> list = this._mrVersionList.FindAll(delegate(MR_Version v)
               {
                   return v.COMPANY == cono && v.PROJECT == project;
               }
            );
            foreach (MR_Version v in list)
            {
                v.MarkComplete = complete;
            }
        }
        #endregion

        private void btnClearSelect_Click(object sender, EventArgs e)
        {
            foreach (MR_Version v in this._mrVersionList)
            {
                v.IsCheck = false;
            }
            this.gcVersions.RefreshDataSource();
        }


        #endregion

        #region Windows 窗体设计器生成的代码

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }        

        /// <summary>
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmHSCodeMR));
            this.btnSaveVersion = new DevExpress.XtraEditors.SimpleButton();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.gcCompiere = new DevExpress.XtraEditors.GroupControl();
            this.btnMR2Compiere = new DevExpress.XtraEditors.SimpleButton();
            this.pnlTips = new DevExpress.XtraEditors.PanelControl();
            this.lblDept = new System.Windows.Forms.Label();
            this.label12 = new System.Windows.Forms.Label();
            this.lbCONO = new System.Windows.Forms.Label();
            this.lbProject = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.btnReportDesign = new DevExpress.XtraEditors.SimpleButton();
            this.gcPrintView = new DevExpress.XtraEditors.GroupControl();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn12 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit3 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemDateEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.repositoryItemMemoExEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.repositoryItemCheckEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.rgReportOption = new DevExpress.XtraEditors.RadioGroup();
            this.label27 = new System.Windows.Forms.Label();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.btnExport = new DevExpress.XtraEditors.ComboBoxEdit();
            this.label7 = new System.Windows.Forms.Label();
            this.rgReportType = new DevExpress.XtraEditors.RadioGroup();
            this.gcCondition = new DevExpress.XtraEditors.GroupControl();
            this.btnGetProjects = new DevExpress.XtraEditors.SimpleButton();
            this.cbb_factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.date_to = new DevExpress.XtraEditors.DateEdit();
            this.date_from = new DevExpress.XtraEditors.DateEdit();
            this.label13 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.but_Customer = new DevExpress.XtraEditors.ButtonEdit();
            this.editProject = new DevExpress.XtraEditors.ButtonEdit();
            this.label14 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.editCONO = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.btnMRGetData = new DevExpress.XtraEditors.SimpleButton();
            this.rgDept = new DevExpress.XtraEditors.RadioGroup();
            this.btnGetVersion = new DevExpress.XtraEditors.SimpleButton();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.pnlReport = new DevExpress.XtraEditors.PanelControl();
            this.lbFlag = new System.Windows.Forms.Label();
            this.btnMarkComplete = new DevExpress.XtraEditors.SimpleButton();
            this.btnOpenVersion = new DevExpress.XtraEditors.SimpleButton();
            this.btnComparePO = new DevExpress.XtraEditors.SimpleButton();
            this.btnCompareMU = new DevExpress.XtraEditors.SimpleButton();
            this.btnCompareMR = new DevExpress.XtraEditors.SimpleButton();
            this.pnlVersionPrint = new DevExpress.XtraEditors.PanelControl();
            this.gcVersions = new DevExpress.XtraGrid.GridControl();
            this.gvVersions = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.tpEnquiry = new DevExpress.XtraTab.XtraTabPage();
            this.pnlVersion = new DevExpress.XtraEditors.GroupControl();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.btnClearSelect = new DevExpress.XtraEditors.SimpleButton();
            this.tpReport = new DevExpress.XtraTab.XtraTabPage();
            this.tcMain = new DevExpress.XtraTab.XtraTabControl();
            this.tpHistory = new DevExpress.XtraTab.XtraTabPage();
            this.pnlHistoryData = new DevExpress.XtraEditors.PanelControl();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.editHistoryDeptVersion = new DevExpress.XtraEditors.TextEdit();
            this.editHistoryVersion = new DevExpress.XtraEditors.TextEdit();
            this.editHistoryProject = new DevExpress.XtraEditors.TextEdit();
            this.editHistoryCono = new DevExpress.XtraEditors.TextEdit();
            this.label9 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.btnReturn = new DevExpress.XtraEditors.SimpleButton();
            this.imlCustomDrawImages = new System.Windows.Forms.ImageList(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.gcCompiere)).BeginInit();
            this.gcCompiere.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlTips)).BeginInit();
            this.pnlTips.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcPrintView)).BeginInit();
            this.gcPrintView.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportOption.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnExport.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcCondition)).BeginInit();
            this.gcCondition.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbb_factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.date_to.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_to.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_from.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_from.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.but_Customer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgDept.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlReport)).BeginInit();
            this.pnlReport.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlVersionPrint)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcVersions)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvVersions)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            this.tpEnquiry.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlVersion)).BeginInit();
            this.pnlVersion.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            this.tpReport.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.tcMain)).BeginInit();
            this.tcMain.SuspendLayout();
            this.tpHistory.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlHistoryData)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryDeptVersion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryVersion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryCono.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnSaveVersion
            // 
            this.btnSaveVersion.Enabled = false;
            this.btnSaveVersion.ImageIndex = 4;
            this.btnSaveVersion.ImageList = this.imageList1;
            this.btnSaveVersion.Location = new System.Drawing.Point(27, 100);
            this.btnSaveVersion.Name = "btnSaveVersion";
            this.btnSaveVersion.Size = new System.Drawing.Size(120, 30);
            this.btnSaveVersion.TabIndex = 63;
            this.btnSaveVersion.Tag = "MR";
            this.btnSaveVersion.Text = "Save Version";
            this.btnSaveVersion.Click += new System.EventHandler(this.btnSaveVersion_Click);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Fuchsia;
            this.imageList1.Images.SetKeyName(0, "");
            this.imageList1.Images.SetKeyName(1, "");
            this.imageList1.Images.SetKeyName(2, "");
            this.imageList1.Images.SetKeyName(3, "");
            this.imageList1.Images.SetKeyName(4, "");
            this.imageList1.Images.SetKeyName(5, "");
            this.imageList1.Images.SetKeyName(6, "");
            this.imageList1.Images.SetKeyName(7, "");
            this.imageList1.Images.SetKeyName(8, "");
            this.imageList1.Images.SetKeyName(9, "Undo.png");
            this.imageList1.Images.SetKeyName(10, "Bookmark.png");
            this.imageList1.Images.SetKeyName(11, "Report-Bound.png");
            // 
            // gcCompiere
            // 
            this.gcCompiere.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.gcCompiere.Controls.Add(this.btnMR2Compiere);
            this.gcCompiere.Location = new System.Drawing.Point(736, 302);
            this.gcCompiere.Name = "gcCompiere";
            this.gcCompiere.Size = new System.Drawing.Size(203, 83);
            this.gcCompiere.TabIndex = 64;
            this.gcCompiere.Text = "CT material inventory management";
            this.gcCompiere.Visible = false;
            // 
            // btnMR2Compiere
            // 
            this.btnMR2Compiere.ImageIndex = 3;
            this.btnMR2Compiere.ImageList = this.imageList1;
            this.btnMR2Compiere.Location = new System.Drawing.Point(22, 42);
            this.btnMR2Compiere.Name = "btnMR2Compiere";
            this.btnMR2Compiere.Size = new System.Drawing.Size(164, 30);
            this.btnMR2Compiere.TabIndex = 62;
            this.btnMR2Compiere.Tag = "MR";
            this.btnMR2Compiere.Text = "Export MR to Compiere";
            this.btnMR2Compiere.Click += new System.EventHandler(this.btnMR2Compiere_Click);
            // 
            // pnlTips
            // 
            this.pnlTips.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlTips.Controls.Add(this.lblDept);
            this.pnlTips.Controls.Add(this.label12);
            this.pnlTips.Controls.Add(this.lbCONO);
            this.pnlTips.Controls.Add(this.lbProject);
            this.pnlTips.Controls.Add(this.label5);
            this.pnlTips.Controls.Add(this.label6);
            this.pnlTips.Controls.Add(this.label4);
            this.pnlTips.Enabled = false;
            this.pnlTips.Location = new System.Drawing.Point(728, 170);
            this.pnlTips.Name = "pnlTips";
            this.pnlTips.Size = new System.Drawing.Size(196, 79);
            this.pnlTips.TabIndex = 63;
            this.pnlTips.Visible = false;
            // 
            // lblDept
            // 
            this.lblDept.AutoSize = true;
            this.lblDept.ForeColor = System.Drawing.Color.Blue;
            this.lblDept.Location = new System.Drawing.Point(102, 55);
            this.lblDept.Name = "lblDept";
            this.lblDept.Size = new System.Drawing.Size(27, 12);
            this.lblDept.TabIndex = 23;
            this.lblDept.Text = "Dept";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(22, 55);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(30, 12);
            this.label12.TabIndex = 22;
            this.label12.Text = "Dept:";
            // 
            // lbCONO
            // 
            this.lbCONO.AutoSize = true;
            this.lbCONO.ForeColor = System.Drawing.Color.Blue;
            this.lbCONO.Location = new System.Drawing.Point(102, 19);
            this.lbCONO.Name = "lbCONO";
            this.lbCONO.Size = new System.Drawing.Size(57, 12);
            this.lbCONO.TabIndex = 20;
            this.lbCONO.Text = "Company: ";
            // 
            // lbProject
            // 
            this.lbProject.AutoSize = true;
            this.lbProject.ForeColor = System.Drawing.Color.Blue;
            this.lbProject.Location = new System.Drawing.Point(102, 35);
            this.lbProject.Name = "lbProject";
            this.lbProject.Size = new System.Drawing.Size(57, 12);
            this.lbProject.TabIndex = 21;
            this.lbProject.Text = "Project No.";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(22, 19);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(57, 12);
            this.label5.TabIndex = 17;
            this.label5.Text = "Company: ";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(22, 35);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(60, 12);
            this.label6.TabIndex = 18;
            this.label6.Text = "Project No.:";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 5);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 12);
            this.label4.TabIndex = 15;
            this.label4.Text = "Current Action Condition: ";
            // 
            // btnReportDesign
            // 
            this.btnReportDesign.Location = new System.Drawing.Point(736, 265);
            this.btnReportDesign.Name = "btnReportDesign";
            this.btnReportDesign.Size = new System.Drawing.Size(93, 23);
            this.btnReportDesign.TabIndex = 31;
            this.btnReportDesign.Tag = "MR";
            this.btnReportDesign.Text = "DesignReport";
            this.btnReportDesign.Visible = false;
            this.btnReportDesign.Click += new System.EventHandler(this.Design_Click);
            // 
            // gcPrintView
            // 
            this.gcPrintView.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.gcPrintView.Controls.Add(this.btnGetProjects);
            this.gcPrintView.Controls.Add(this.cbb_factory);
            this.gcPrintView.Controls.Add(this.gridControl1);
            this.gcPrintView.Controls.Add(this.but_Customer);
            this.gcPrintView.Controls.Add(this.label14);
            this.gcPrintView.Controls.Add(this.label10);
            this.gcPrintView.Controls.Add(this.groupControl1);
            this.gcPrintView.Location = new System.Drawing.Point(322, 23);
            this.gcPrintView.Name = "gcPrintView";
            this.gcPrintView.Size = new System.Drawing.Size(277, 438);
            this.gcPrintView.TabIndex = 31;
            this.gcPrintView.Text = "Report Preview";
            this.gcPrintView.Visible = false;
            // 
            // gridControl1
            // 
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(15, 24);
            this.gridControl1.LookAndFeel.UseDefaultLookAndFeel = false;
            this.gridControl1.MainView = this.gridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit2,
            this.repositoryItemMemoExEdit2,
            this.repositoryItemCheckEdit2,
            this.repositoryItemCheckEdit3});
            this.gridControl1.Size = new System.Drawing.Size(253, 291);
            this.gridControl1.TabIndex = 69;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.gridControl1.Visible = false;
            // 
            // gridView1
            // 
            this.gridView1.Appearance.GroupRow.BackColor = System.Drawing.Color.LightSeaGreen;
            this.gridView1.Appearance.GroupRow.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gridView1.Appearance.GroupRow.ForeColor = System.Drawing.Color.Black;
            this.gridView1.Appearance.GroupRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.gridView1.Appearance.GroupRow.Options.UseBackColor = true;
            this.gridView1.Appearance.GroupRow.Options.UseForeColor = true;
            this.gridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn11,
            this.gridColumn12,
            this.gridColumn10});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1222, 583, 208, 184);
            this.gridView1.GridControl = this.gridControl1;
            this.gridView1.GroupFormat = "{1} {2}";
            this.gridView1.Images = this.imageList1;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.AllowIncrementalSearch = true;
            this.gridView1.OptionsBehavior.AutoPopulateColumns = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "Company";
            this.gridColumn11.FieldName = "COMPANY";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.OptionsColumn.AllowEdit = false;
            this.gridColumn11.Width = 78;
            // 
            // gridColumn12
            // 
            this.gridColumn12.Caption = "Project";
            this.gridColumn12.FieldName = "PROJECT";
            this.gridColumn12.Name = "gridColumn12";
            this.gridColumn12.OptionsColumn.AllowEdit = false;
            this.gridColumn12.Visible = true;
            this.gridColumn12.VisibleIndex = 1;
            this.gridColumn12.Width = 134;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "IsSelect";
            this.gridColumn10.ColumnEdit = this.repositoryItemCheckEdit3;
            this.gridColumn10.CustomizationCaption = "IsSelect";
            this.gridColumn10.FieldName = "IsSelect";
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.gridColumn10.OptionsFilter.AllowFilter = false;
            this.gridColumn10.Visible = true;
            this.gridColumn10.VisibleIndex = 0;
            this.gridColumn10.Width = 79;
            // 
            // repositoryItemCheckEdit3
            // 
            this.repositoryItemCheckEdit3.AutoHeight = false;
            this.repositoryItemCheckEdit3.Name = "repositoryItemCheckEdit3";
            this.repositoryItemCheckEdit3.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // repositoryItemDateEdit2
            // 
            this.repositoryItemDateEdit2.AutoHeight = false;
            this.repositoryItemDateEdit2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit2.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.repositoryItemDateEdit2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit2.Name = "repositoryItemDateEdit2";
            this.repositoryItemDateEdit2.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // repositoryItemMemoExEdit2
            // 
            this.repositoryItemMemoExEdit2.AutoHeight = false;
            this.repositoryItemMemoExEdit2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit2.Name = "repositoryItemMemoExEdit2";
            this.repositoryItemMemoExEdit2.PopupStartSize = new System.Drawing.Size(300, 200);
            this.repositoryItemMemoExEdit2.ReadOnly = true;
            this.repositoryItemMemoExEdit2.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            // 
            // repositoryItemCheckEdit2
            // 
            this.repositoryItemCheckEdit2.AutoHeight = false;
            this.repositoryItemCheckEdit2.Name = "repositoryItemCheckEdit2";
            this.repositoryItemCheckEdit2.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit2.ValueChecked = 1;
            this.repositoryItemCheckEdit2.ValueUnchecked = 0;
            // 
            // rgReportOption
            // 
            this.rgReportOption.EditValue = 1;
            this.rgReportOption.Location = new System.Drawing.Point(30, 145);
            this.rgReportOption.Name = "rgReportOption";
            this.rgReportOption.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.rgReportOption.Properties.Appearance.Options.UseBackColor = true;
            this.rgReportOption.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(4, "H.S Code Detail Listing"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(5, "H.S Code Summary Listing")});
            this.rgReportOption.Size = new System.Drawing.Size(191, 62);
            this.rgReportOption.TabIndex = 59;
            // 
            // label27
            // 
            this.label27.AutoSize = true;
            this.label27.Location = new System.Drawing.Point(24, 125);
            this.label27.Name = "label27";
            this.label27.Size = new System.Drawing.Size(75, 12);
            this.label27.TabIndex = 27;
            this.label27.Text = "Report Option:";
            this.label27.Visible = false;
            // 
            // btnPrint
            // 
            this.btnPrint.ImageIndex = 2;
            this.btnPrint.ImageList = this.imageList1;
            this.btnPrint.Location = new System.Drawing.Point(66, 222);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(79, 27);
            this.btnPrint.TabIndex = 16;
            this.btnPrint.Tag = "MR";
            this.btnPrint.Text = "Print";
            this.btnPrint.Click += new System.EventHandler(this.Print_Click);
            // 
            // btnExport
            // 
            this.btnExport.Location = new System.Drawing.Point(752, 491);
            this.btnExport.Name = "btnExport";
            this.btnExport.Properties.ActionButtonIndex = 1;
            this.btnExport.Properties.AutoHeight = false;
            this.btnExport.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.btnExport.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "Export", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", 0, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.btnExport.Properties.DropDownRows = 8;
            this.btnExport.Properties.Items.AddRange(new object[] {
            "Export to PDF",
            "Export to HTML",
            "Export to TXT",
            "Export to CSV",
            "Export to MHT",
            "Export to XLS",
            "Export to RTF",
            "Export to BMP"});
            this.btnExport.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.btnExport.Properties.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.btnInExport_Properties_ButtonClick);
            this.btnExport.Size = new System.Drawing.Size(110, 27);
            this.btnExport.TabIndex = 58;
            this.btnExport.Tag = "MR";
            this.btnExport.Visible = false;
            this.btnExport.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.btnInExport_CloseUp);
            this.btnExport.SelectedIndexChanged += new System.EventHandler(this.btnInExport_SelectedIndexChanged);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(733, 10);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(67, 12);
            this.label7.TabIndex = 61;
            this.label7.Text = "Report Type:";
            this.label7.Visible = false;
            // 
            // rgReportType
            // 
            this.rgReportType.EditValue = 1;
            this.rgReportType.Location = new System.Drawing.Point(736, 27);
            this.rgReportType.Name = "rgReportType";
            this.rgReportType.Properties.Appearance.BackColor = System.Drawing.Color.White;
            this.rgReportType.Properties.Appearance.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.rgReportType.Properties.Appearance.Options.UseBackColor = true;
            this.rgReportType.Properties.Appearance.Options.UseFont = true;
            this.rgReportType.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(1, "MR"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(2, "Round MR"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(3, "QN"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(5, "HSCode")});
            this.rgReportType.Size = new System.Drawing.Size(126, 107);
            this.rgReportType.TabIndex = 60;
            this.rgReportType.Visible = false;
            this.rgReportType.SelectedIndexChanged += new System.EventHandler(this.rgReportType_SelectedIndexChanged);
            // 
            // gcCondition
            // 
            this.gcCondition.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.gcCondition.Controls.Add(this.rgReportOption);
            this.gcCondition.Controls.Add(this.btnPrint);
            this.gcCondition.Controls.Add(this.label27);
            this.gcCondition.Controls.Add(this.editProject);
            this.gcCondition.Controls.Add(this.label1);
            this.gcCondition.Controls.Add(this.editCONO);
            this.gcCondition.Controls.Add(this.label2);
            this.gcCondition.Location = new System.Drawing.Point(50, 23);
            this.gcCondition.Name = "gcCondition";
            this.gcCondition.Size = new System.Drawing.Size(255, 305);
            this.gcCondition.TabIndex = 30;
            this.gcCondition.Text = "Condition";
            // 
            // btnGetProjects
            // 
            this.btnGetProjects.ImageIndex = 6;
            this.btnGetProjects.ImageList = this.imageList1;
            this.btnGetProjects.Location = new System.Drawing.Point(123, 408);
            this.btnGetProjects.Name = "btnGetProjects";
            this.btnGetProjects.Size = new System.Drawing.Size(145, 30);
            this.btnGetProjects.TabIndex = 69;
            this.btnGetProjects.Tag = "MR";
            this.btnGetProjects.Text = "Get Projects";
            this.btnGetProjects.Visible = false;
            this.btnGetProjects.Click += new System.EventHandler(this.btnGetProjects_Click);
            // 
            // cbb_factory
            // 
            this.cbb_factory.EditValue = "ALL";
            this.cbb_factory.Location = new System.Drawing.Point(96, 366);
            this.cbb_factory.Name = "cbb_factory";
            this.cbb_factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbb_factory.Properties.Items.AddRange(new object[] {
            "ALL",
            "SL",
            "KB"});
            this.cbb_factory.Size = new System.Drawing.Size(124, 21);
            this.cbb_factory.TabIndex = 68;
            this.cbb_factory.Visible = false;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.date_to);
            this.groupControl1.Controls.Add(this.date_from);
            this.groupControl1.Controls.Add(this.label13);
            this.groupControl1.Controls.Add(this.label11);
            this.groupControl1.Location = new System.Drawing.Point(36, 321);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(200, 39);
            this.groupControl1.TabIndex = 67;
            this.groupControl1.Text = "Delivery Date";
            this.groupControl1.Visible = false;
            // 
            // date_to
            // 
            this.date_to.EditValue = null;
            this.date_to.Location = new System.Drawing.Point(76, 48);
            this.date_to.Name = "date_to";
            this.date_to.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_to.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_to.Size = new System.Drawing.Size(122, 21);
            this.date_to.TabIndex = 15;
            // 
            // date_from
            // 
            this.date_from.EditValue = null;
            this.date_from.Location = new System.Drawing.Point(76, 24);
            this.date_from.Name = "date_from";
            this.date_from.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.date_from.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.date_from.Size = new System.Drawing.Size(122, 21);
            this.date_from.TabIndex = 15;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(7, 51);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(24, 12);
            this.label13.TabIndex = 14;
            this.label13.Text = "To: ";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(7, 26);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(36, 12);
            this.label11.TabIndex = 14;
            this.label11.Text = "From: ";
            // 
            // but_Customer
            // 
            this.but_Customer.Location = new System.Drawing.Point(96, 393);
            this.but_Customer.Name = "but_Customer";
            this.but_Customer.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), "Get Project from ERP ", "AS400"),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Up, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), "Get project from History", "SQL")});
            this.but_Customer.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.but_Customer.Properties.MaxLength = 20;
            this.but_Customer.Size = new System.Drawing.Size(122, 21);
            this.but_Customer.TabIndex = 13;
            this.but_Customer.Visible = false;
            // 
            // editProject
            // 
            this.editProject.Location = new System.Drawing.Point(97, 69);
            this.editProject.Name = "editProject";
            this.editProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), "Get Project from ERP ", "AS400"),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Up, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), "Get project from History", "SQL")});
            this.editProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editProject.Properties.MaxLength = 20;
            this.editProject.Size = new System.Drawing.Size(122, 21);
            this.editProject.TabIndex = 13;
            this.editProject.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.editMRProject_ButtonClick);
            this.editProject.KeyDown += new System.Windows.Forms.KeyEventHandler(this.editProject_KeyDown);
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Location = new System.Drawing.Point(25, 369);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(43, 12);
            this.label14.TabIndex = 14;
            this.label14.Text = "Factory:";
            this.label14.Visible = false;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(27, 396);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(56, 12);
            this.label10.TabIndex = 14;
            this.label10.Text = "Customer: ";
            this.label10.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(24, 41);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 12);
            this.label1.TabIndex = 14;
            this.label1.Text = "Company: ";
            // 
            // editCONO
            // 
            this.editCONO.EditValue = "P1";
            this.editCONO.Location = new System.Drawing.Point(97, 36);
            this.editCONO.Name = "editCONO";
            this.editCONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editCONO.Properties.MaxLength = 2;
            this.editCONO.Size = new System.Drawing.Size(39, 21);
            this.editCONO.TabIndex = 17;
            this.editCONO.KeyDown += new System.Windows.Forms.KeyEventHandler(this.editMRCONO_KeyDown);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 74);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 12);
            this.label2.TabIndex = 15;
            this.label2.Text = "Project No.";
            // 
            // btnMRGetData
            // 
            this.btnMRGetData.ImageIndex = 6;
            this.btnMRGetData.ImageList = this.imageList1;
            this.btnMRGetData.Location = new System.Drawing.Point(746, 455);
            this.btnMRGetData.Name = "btnMRGetData";
            this.btnMRGetData.Size = new System.Drawing.Size(116, 30);
            this.btnMRGetData.TabIndex = 18;
            this.btnMRGetData.Tag = "MR";
            this.btnMRGetData.Text = "Get New Data";
            this.btnMRGetData.Visible = false;
            this.btnMRGetData.Click += new System.EventHandler(this.GetData_Click);
            // 
            // rgDept
            // 
            this.rgDept.Location = new System.Drawing.Point(746, 392);
            this.rgDept.Name = "rgDept";
            this.rgDept.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "My Dept"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(null, "All Departments")});
            this.rgDept.Size = new System.Drawing.Size(166, 53);
            this.rgDept.TabIndex = 67;
            this.rgDept.Visible = false;
            // 
            // btnGetVersion
            // 
            this.btnGetVersion.ImageList = this.imageList1;
            this.btnGetVersion.Location = new System.Drawing.Point(602, 3);
            this.btnGetVersion.Name = "btnGetVersion";
            this.btnGetVersion.Size = new System.Drawing.Size(132, 30);
            this.btnGetVersion.TabIndex = 19;
            this.btnGetVersion.Tag = "MR";
            this.btnGetVersion.Text = "Get History Versions";
            this.btnGetVersion.Visible = false;
            this.btnGetVersion.Click += new System.EventHandler(this.btnGetVersion_Click);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // pnlReport
            // 
            this.pnlReport.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlReport.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pnlReport.Controls.Add(this.btnExport);
            this.pnlReport.Controls.Add(this.label7);
            this.pnlReport.Controls.Add(this.lbFlag);
            this.pnlReport.Controls.Add(this.pnlTips);
            this.pnlReport.Controls.Add(this.rgDept);
            this.pnlReport.Controls.Add(this.btnMRGetData);
            this.pnlReport.Controls.Add(this.gcCondition);
            this.pnlReport.Controls.Add(this.gcCompiere);
            this.pnlReport.Controls.Add(this.gcPrintView);
            this.pnlReport.Controls.Add(this.rgReportType);
            this.pnlReport.Controls.Add(this.btnReportDesign);
            this.pnlReport.Location = new System.Drawing.Point(3, 3);
            this.pnlReport.Name = "pnlReport";
            this.pnlReport.Size = new System.Drawing.Size(894, 528);
            this.pnlReport.TabIndex = 1;
            // 
            // lbFlag
            // 
            this.lbFlag.AutoSize = true;
            this.lbFlag.Font = new System.Drawing.Font("Tahoma", 12F, System.Drawing.FontStyle.Bold);
            this.lbFlag.Location = new System.Drawing.Point(732, 148);
            this.lbFlag.Name = "lbFlag";
            this.lbFlag.Size = new System.Drawing.Size(35, 19);
            this.lbFlag.TabIndex = 66;
            this.lbFlag.Text = "MR";
            this.lbFlag.Visible = false;
            // 
            // btnMarkComplete
            // 
            this.btnMarkComplete.Enabled = false;
            this.btnMarkComplete.ImageIndex = 11;
            this.btnMarkComplete.ImageList = this.imageList1;
            this.btnMarkComplete.Location = new System.Drawing.Point(27, 149);
            this.btnMarkComplete.Name = "btnMarkComplete";
            this.btnMarkComplete.Size = new System.Drawing.Size(137, 52);
            this.btnMarkComplete.TabIndex = 71;
            this.btnMarkComplete.Tag = "MR";
            this.btnMarkComplete.Text = "Mark Complete";
            this.btnMarkComplete.Click += new System.EventHandler(this.btnMarkComplete_Click);
            // 
            // btnOpenVersion
            // 
            this.btnOpenVersion.Enabled = false;
            this.btnOpenVersion.ImageIndex = 8;
            this.btnOpenVersion.ImageList = this.imageList1;
            this.btnOpenVersion.Location = new System.Drawing.Point(27, 55);
            this.btnOpenVersion.Name = "btnOpenVersion";
            this.btnOpenVersion.Size = new System.Drawing.Size(120, 30);
            this.btnOpenVersion.TabIndex = 70;
            this.btnOpenVersion.Tag = "MR";
            this.btnOpenVersion.Text = "Open Version";
            this.btnOpenVersion.Click += new System.EventHandler(this.btnOpenVersion_Click);
            // 
            // btnComparePO
            // 
            this.btnComparePO.Enabled = false;
            this.btnComparePO.ImageIndex = 8;
            this.btnComparePO.Location = new System.Drawing.Point(97, 252);
            this.btnComparePO.Name = "btnComparePO";
            this.btnComparePO.Size = new System.Drawing.Size(109, 27);
            this.btnComparePO.TabIndex = 74;
            this.btnComparePO.Tag = "PO";
            this.btnComparePO.Text = "Compare PO";
            this.btnComparePO.Click += new System.EventHandler(this.btnCompareMR_Click);
            // 
            // btnCompareMU
            // 
            this.btnCompareMU.Enabled = false;
            this.btnCompareMU.ImageIndex = 8;
            this.btnCompareMU.Location = new System.Drawing.Point(97, 285);
            this.btnCompareMU.Name = "btnCompareMU";
            this.btnCompareMU.Size = new System.Drawing.Size(109, 27);
            this.btnCompareMU.TabIndex = 73;
            this.btnCompareMU.Tag = "MU";
            this.btnCompareMU.Text = "Compare MU";
            this.btnCompareMU.Click += new System.EventHandler(this.btnCompareMR_Click);
            // 
            // btnCompareMR
            // 
            this.btnCompareMR.Enabled = false;
            this.btnCompareMR.ImageIndex = 8;
            this.btnCompareMR.Location = new System.Drawing.Point(97, 216);
            this.btnCompareMR.Name = "btnCompareMR";
            this.btnCompareMR.Size = new System.Drawing.Size(109, 30);
            this.btnCompareMR.TabIndex = 72;
            this.btnCompareMR.Tag = "MR";
            this.btnCompareMR.Text = "Compare YY";
            this.btnCompareMR.Click += new System.EventHandler(this.btnCompareMR_Click);
            // 
            // pnlVersionPrint
            // 
            this.pnlVersionPrint.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlVersionPrint.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pnlVersionPrint.Location = new System.Drawing.Point(6, 339);
            this.pnlVersionPrint.Name = "pnlVersionPrint";
            this.pnlVersionPrint.Size = new System.Drawing.Size(220, 163);
            this.pnlVersionPrint.TabIndex = 69;
            // 
            // gcVersions
            // 
            this.gcVersions.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcVersions.EmbeddedNavigator.Name = "";
            this.gcVersions.Location = new System.Drawing.Point(5, 24);
            this.gcVersions.LookAndFeel.UseDefaultLookAndFeel = false;
            this.gcVersions.MainView = this.gvVersions;
            this.gcVersions.Name = "gcVersions";
            this.gcVersions.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1,
            this.repositoryItemMemoExEdit1,
            this.repositoryItemCheckEdit1});
            this.gcVersions.Size = new System.Drawing.Size(500, 538);
            this.gcVersions.TabIndex = 68;
            this.gcVersions.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvVersions});
            // 
            // gvVersions
            // 
            this.gvVersions.Appearance.GroupRow.BackColor = System.Drawing.Color.LightSeaGreen;
            this.gvVersions.Appearance.GroupRow.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.gvVersions.Appearance.GroupRow.ForeColor = System.Drawing.Color.Black;
            this.gvVersions.Appearance.GroupRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.gvVersions.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gvVersions.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gvVersions.Appearance.HorzLine.BackColor = System.Drawing.Color.ForestGreen;
            this.gvVersions.Appearance.HorzLine.BorderColor = System.Drawing.Color.ForestGreen;
            this.gvVersions.Appearance.HorzLine.Options.UseBackColor = true;
            this.gvVersions.Appearance.HorzLine.Options.UseBorderColor = true;
            this.gvVersions.Appearance.VertLine.BackColor = System.Drawing.Color.ForestGreen;
            this.gvVersions.Appearance.VertLine.BorderColor = System.Drawing.Color.ForestGreen;
            this.gvVersions.Appearance.VertLine.Options.UseBackColor = true;
            this.gvVersions.Appearance.VertLine.Options.UseBorderColor = true;
            this.gvVersions.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn9,
            this.gridColumn8,
            this.gridColumn7,
            this.gridColumn3,
            this.gridColumn1,
            this.gridColumn6,
            this.gridColumn2,
            this.gridColumn4,
            this.gridColumn5});
            this.gvVersions.GridControl = this.gcVersions;
            this.gvVersions.GroupCount = 2;
            this.gvVersions.GroupFormat = "{1} {2}";
            this.gvVersions.Images = this.imageList1;
            this.gvVersions.Name = "gvVersions";
            this.gvVersions.OptionsBehavior.AllowIncrementalSearch = true;
            this.gvVersions.OptionsBehavior.AutoPopulateColumns = false;
            this.gvVersions.OptionsView.ColumnAutoWidth = false;
            this.gvVersions.OptionsView.ShowGroupPanel = false;
            this.gvVersions.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn9, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gridColumn7, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gvVersions.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gvVersions_FocusedRowChanged);
            this.gvVersions.CustomDrawGroupRow += new DevExpress.XtraGrid.Views.Base.RowObjectCustomDrawEventHandler(this.gvVersions_CustomDrawGroupRow);
            this.gvVersions.CellValueChanging += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.gvVersions_CellValueChanging);
            this.gvVersions.CustomColumnDisplayText += new DevExpress.XtraGrid.Views.Base.CustomColumnDisplayTextEventHandler(this.gvVersions_CustomColumnDisplayText);
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "Customer";
            this.gridColumn9.FieldName = "CustomerGroup";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.OptionsColumn.AllowEdit = false;
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 0;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Company";
            this.gridColumn8.FieldName = "COMPANY";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.OptionsColumn.AllowEdit = false;
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 1;
            this.gridColumn8.Width = 78;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Project";
            this.gridColumn7.FieldName = "PROJECT";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.OptionsColumn.AllowEdit = false;
            // 
            // gridColumn3
            // 
            this.gridColumn3.ColumnEdit = this.repositoryItemCheckEdit1;
            this.gridColumn3.FieldName = "IsCheck";
            this.gridColumn3.ImageIndex = 7;
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 0;
            this.gridColumn3.Width = 73;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceCell.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.Caption = "Version";
            this.gridColumn1.FieldName = "VERSION";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 2;
            this.gridColumn1.Width = 83;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Dept Version";
            this.gridColumn6.FieldName = "DEPT_VERSION";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.OptionsColumn.AllowEdit = false;
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 3;
            this.gridColumn6.Width = 93;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Created Date";
            this.gridColumn2.ColumnEdit = this.repositoryItemDateEdit1;
            this.gridColumn2.FieldName = "FDATE";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.AllowEdit = false;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 4;
            this.gridColumn2.Width = 112;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm";
            this.repositoryItemDateEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Created User";
            this.gridColumn4.FieldName = "FUSER";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.OptionsColumn.AllowEdit = false;
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 5;
            this.gridColumn4.Width = 96;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Desc";
            this.gridColumn5.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.gridColumn5.FieldName = "REMARK";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 6;
            this.gridColumn5.Width = 67;
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            this.repositoryItemMemoExEdit1.PopupStartSize = new System.Drawing.Size(300, 200);
            this.repositoryItemMemoExEdit1.ReadOnly = true;
            this.repositoryItemMemoExEdit1.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            // 
            // tpEnquiry
            // 
            this.tpEnquiry.Controls.Add(this.pnlVersion);
            this.tpEnquiry.Controls.Add(this.btnGetVersion);
            this.tpEnquiry.Name = "tpEnquiry";
            this.tpEnquiry.Size = new System.Drawing.Size(848, 669);
            this.tpEnquiry.Text = "Enquiry";
            // 
            // pnlVersion
            // 
            this.pnlVersion.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlVersion.Controls.Add(this.gcVersions);
            this.pnlVersion.Controls.Add(this.panelControl2);
            this.pnlVersion.Location = new System.Drawing.Point(3, 55);
            this.pnlVersion.Name = "pnlVersion";
            this.pnlVersion.Padding = new System.Windows.Forms.Padding(5);
            this.pnlVersion.Size = new System.Drawing.Size(745, 567);
            this.pnlVersion.TabIndex = 66;
            this.pnlVersion.Text = "History Versions";
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.panelControl2.Controls.Add(this.btnClearSelect);
            this.panelControl2.Controls.Add(this.btnComparePO);
            this.panelControl2.Controls.Add(this.btnMarkComplete);
            this.panelControl2.Controls.Add(this.pnlVersionPrint);
            this.panelControl2.Controls.Add(this.btnOpenVersion);
            this.panelControl2.Controls.Add(this.btnCompareMU);
            this.panelControl2.Controls.Add(this.btnCompareMR);
            this.panelControl2.Controls.Add(this.btnSaveVersion);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Right;
            this.panelControl2.Location = new System.Drawing.Point(505, 24);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(235, 538);
            this.panelControl2.TabIndex = 75;
            // 
            // btnClearSelect
            // 
            this.btnClearSelect.Enabled = false;
            this.btnClearSelect.ImageIndex = 8;
            this.btnClearSelect.Location = new System.Drawing.Point(27, 3);
            this.btnClearSelect.Name = "btnClearSelect";
            this.btnClearSelect.Size = new System.Drawing.Size(91, 30);
            this.btnClearSelect.TabIndex = 75;
            this.btnClearSelect.Tag = "MR";
            this.btnClearSelect.Text = "Select None";
            this.btnClearSelect.Click += new System.EventHandler(this.btnClearSelect_Click);
            // 
            // tpReport
            // 
            this.tpReport.Controls.Add(this.pnlReport);
            this.tpReport.Name = "tpReport";
            this.tpReport.Size = new System.Drawing.Size(848, 669);
            this.tpReport.Text = "Report";
            // 
            // tcMain
            // 
            this.tcMain.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(245)))), ((int)(((byte)(241)))));
            this.tcMain.Appearance.Options.UseBackColor = true;
            this.tcMain.AppearancePage.PageClient.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(247)))), ((int)(((byte)(245)))), ((int)(((byte)(241)))));
            this.tcMain.AppearancePage.PageClient.Options.UseBackColor = true;
            this.tcMain.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.tcMain.BorderStylePage = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.tcMain.Location = new System.Drawing.Point(0, 0);
            this.tcMain.Name = "tcMain";
            this.tcMain.PaintStyleName = "PropertyView";
            this.tcMain.SelectedTabPage = this.tpReport;
            this.tcMain.Size = new System.Drawing.Size(848, 690);
            this.tcMain.TabIndex = 2;
            this.tcMain.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.tpReport,
            this.tpEnquiry,
            this.tpHistory});
            this.tcMain.Text = "xtraTabControl1";
            // 
            // tpHistory
            // 
            this.tpHistory.Controls.Add(this.pnlHistoryData);
            this.tpHistory.Controls.Add(this.panelControl1);
            this.tpHistory.Name = "tpHistory";
            this.tpHistory.Size = new System.Drawing.Size(848, 669);
            this.tpHistory.Text = "History";
            // 
            // pnlHistoryData
            // 
            this.pnlHistoryData.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlHistoryData.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.pnlHistoryData.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlHistoryData.Location = new System.Drawing.Point(0, 54);
            this.pnlHistoryData.Name = "pnlHistoryData";
            this.pnlHistoryData.Size = new System.Drawing.Size(848, 615);
            this.pnlHistoryData.TabIndex = 1;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.panelControl1.Controls.Add(this.editHistoryDeptVersion);
            this.panelControl1.Controls.Add(this.editHistoryVersion);
            this.panelControl1.Controls.Add(this.editHistoryProject);
            this.panelControl1.Controls.Add(this.editHistoryCono);
            this.panelControl1.Controls.Add(this.label9);
            this.panelControl1.Controls.Add(this.label3);
            this.panelControl1.Controls.Add(this.label8);
            this.panelControl1.Controls.Add(this.btnReturn);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 0);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(848, 54);
            this.panelControl1.TabIndex = 0;
            // 
            // editHistoryDeptVersion
            // 
            this.editHistoryDeptVersion.EditValue = "";
            this.editHistoryDeptVersion.Location = new System.Drawing.Point(482, 14);
            this.editHistoryDeptVersion.Name = "editHistoryDeptVersion";
            this.editHistoryDeptVersion.Properties.ReadOnly = true;
            this.editHistoryDeptVersion.Size = new System.Drawing.Size(88, 21);
            this.editHistoryDeptVersion.TabIndex = 78;
            // 
            // editHistoryVersion
            // 
            this.editHistoryVersion.EditValue = "";
            this.editHistoryVersion.Location = new System.Drawing.Point(444, 14);
            this.editHistoryVersion.Name = "editHistoryVersion";
            this.editHistoryVersion.Properties.AppearanceReadOnly.Font = new System.Drawing.Font("Tahoma", 9F, System.Drawing.FontStyle.Bold);
            this.editHistoryVersion.Properties.AppearanceReadOnly.Options.UseFont = true;
            this.editHistoryVersion.Properties.AppearanceReadOnly.Options.UseTextOptions = true;
            this.editHistoryVersion.Properties.AppearanceReadOnly.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.editHistoryVersion.Properties.ReadOnly = true;
            this.editHistoryVersion.Size = new System.Drawing.Size(37, 21);
            this.editHistoryVersion.TabIndex = 77;
            // 
            // editHistoryProject
            // 
            this.editHistoryProject.EditValue = "";
            this.editHistoryProject.Location = new System.Drawing.Point(230, 15);
            this.editHistoryProject.Name = "editHistoryProject";
            this.editHistoryProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editHistoryProject.Properties.ReadOnly = true;
            this.editHistoryProject.Size = new System.Drawing.Size(126, 21);
            this.editHistoryProject.TabIndex = 76;
            // 
            // editHistoryCono
            // 
            this.editHistoryCono.EditValue = "P1";
            this.editHistoryCono.Location = new System.Drawing.Point(93, 14);
            this.editHistoryCono.Name = "editHistoryCono";
            this.editHistoryCono.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editHistoryCono.Properties.MaxLength = 2;
            this.editHistoryCono.Properties.ReadOnly = true;
            this.editHistoryCono.Size = new System.Drawing.Size(39, 21);
            this.editHistoryCono.TabIndex = 75;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(385, 16);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(44, 12);
            this.label9.TabIndex = 74;
            this.label9.Text = "Version:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 16);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(57, 12);
            this.label3.TabIndex = 72;
            this.label3.Text = "Company: ";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(153, 17);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(57, 12);
            this.label8.TabIndex = 73;
            this.label8.Text = "Project No.";
            // 
            // btnReturn
            // 
            this.btnReturn.ImageIndex = 9;
            this.btnReturn.ImageList = this.imageList1;
            this.btnReturn.Location = new System.Drawing.Point(637, 14);
            this.btnReturn.Name = "btnReturn";
            this.btnReturn.Size = new System.Drawing.Size(109, 30);
            this.btnReturn.TabIndex = 71;
            this.btnReturn.Tag = "MR";
            this.btnReturn.Text = "Return";
            this.btnReturn.Click += new System.EventHandler(this.btnReturn_Click);
            // 
            // imlCustomDrawImages
            // 
            this.imlCustomDrawImages.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imlCustomDrawImages.ImageStream")));
            this.imlCustomDrawImages.TransparentColor = System.Drawing.Color.Magenta;
            this.imlCustomDrawImages.Images.SetKeyName(0, "");
            this.imlCustomDrawImages.Images.SetKeyName(1, "");
            this.imlCustomDrawImages.Images.SetKeyName(2, "");
            this.imlCustomDrawImages.Images.SetKeyName(3, "");
            // 
            // frmHSCodeMR
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tcMain);
            this.Name = "frmHSCodeMR";
            this.Size = new System.Drawing.Size(869, 690);
            this.Load += new System.EventHandler(this.frmMain_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gcCompiere)).EndInit();
            this.gcCompiere.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pnlTips)).EndInit();
            this.pnlTips.ResumeLayout(false);
            this.pnlTips.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcPrintView)).EndInit();
            this.gcPrintView.ResumeLayout(false);
            this.gcPrintView.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportOption.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.btnExport.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgReportType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcCondition)).EndInit();
            this.gcCondition.ResumeLayout(false);
            this.gcCondition.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbb_factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.date_to.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_to.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_from.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.date_from.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.but_Customer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editCONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rgDept.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlReport)).EndInit();
            this.pnlReport.ResumeLayout(false);
            this.pnlReport.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pnlVersionPrint)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcVersions)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvVersions)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            this.tpEnquiry.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pnlVersion)).EndInit();
            this.pnlVersion.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            this.tpReport.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.tcMain)).EndInit();
            this.tcMain.ResumeLayout(false);
            this.tpHistory.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pnlHistoryData)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryDeptVersion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryVersion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editHistoryCono.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private void editProject_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode != Keys.Enter || _ShowFormOption != ShowFormOption.HistoryEnquiry) return;

            string project = editProject.Text;
            if (string.IsNullOrEmpty(project)) return;

            ExpandGroup("", project);

        }

        private void btnGetProjects_Click(object sender, EventArgs e)
        {
            string project,customer,factory,cono;
            cono=this.editCONO.Text;
            project=this.editProject.Text;
            customer=this.but_Customer.Text;
            factory=this.cbb_factory.Text;

            DateTime dtFrom=this.date_from.DateTime;
            DateTime dtTo=this.date_to.DateTime;

            dtFrom=dtFrom==DateTime.MinValue?dtTo:dtFrom;
            dtTo=dtFrom==DateTime.MinValue?dtFrom:dtTo;

            string sForm=string.Format("{0:yyyyMMdd}",dtFrom);
            string sTo=string.Format("{0:yyyyMMdd}",dtTo);

            string sql = "select distinct cono40 as Company, (dtdr55+19000000 )as delieveryDate,"
                        + " case when locd55='FG' then 'SL'  when locd55='FT' then 'KB' else '' end as Factory,"
                        + " cuso40 as PROJECT,"
                        + " case when substring(cuso40,1,3)='EX-' then substring(cuso40,4,4) else substring(cuso40,1,4) end as customer"
                        + " from ault4f1.oep40 a,ault4f1.oep55 b"
                        + " where cono55=cono40 and ordn55=ordn40 and cono40='{0}' and dtlc40=0"
                        + "  and dtlc55=0 and stat55<>'X' and stat40<>'X'"
                        + " and  ('{2}'='' or cuso40='{2}')"
                        + " and  ('{3}'='' or (case when substring(cuso40,1,3)='EX-' then substring(cuso40,4,4) else substring(cuso40,1,4) end)='{3}')"
                        + " and  ('{4}'='00010101' or ((dtdr55+19000000) between {4} and {5}))"
                        + " and  ('{6}'='' or (case when locd55='FG' then 'SL'  when locd55='FT' then 'KB' else '' end)='{6}')";


            sql = string.Format(sql,cono,"",project,customer,sForm,sTo,factory);

            DataTable td = PH.MR.UI.DB.GetDataByPage_AS400(sql);
            DataColumn dc = new DataColumn("IsSelect",System.Type.GetType("System.Boolean"));
            dc.DefaultValue = false;
            td.Columns.Add(dc);


            this.gridControl1.DataSource = td;
        }


        public  string GetAllProject()
        {
            string strReturn="";
            DataTable dt = this.gridControl1.DataSource as DataTable;

            foreach (DataRow dr in dt.Rows)
            {
                if ("true" == dr["IsSelect"].ToString())
                {
                    strReturn = strReturn + ",''" + dr["PROJECT"].ToString() + "''";
                }

            }
            strReturn = strReturn.Substring(1, strReturn.Length - 1);

            return strReturn;
        
        }
             


    }
}