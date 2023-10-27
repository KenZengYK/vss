using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Reflection;
using System.Windows.Forms;using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraEditors.Repository;
using DevExpress.XtraGrid.Columns;
using PH.Common.Report; 
using System.Linq;
using PH.Platform.BO;
using PH.Platform.AuthMgr.BO;
using PH.MR.BO;



namespace PH.MR.UI
{
    public partial class frmMRHistory :PH.Platform.UI.CS.UI0.BlankForm
    {
        #region
        private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private DevExpress.XtraEditors.ButtonEdit editMRProject;
        private DevExpress.XtraEditors.TextEdit editMRCONO;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.ImageList imageList1;
        private System.Windows.Forms.Timer timer1;
        private DevExpress.XtraEditors.SimpleButton btnExpand;
        private DevExpress.XtraEditors.SimpleButton btnCollapse;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn6;
        private DevExpress.XtraEditors.SimpleButton btnNotepad_OA;
        private DevExpress.XtraEditors.PanelControl panelControl2;
        private DevExpress.XtraEditors.SimpleButton btnPrint;
        private DevExpress.XtraEditors.ComboBoxEdit btnExport;
        private DevExpress.XtraGrid.GridControl gcMRPOMU;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bgvMRPOMU;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn25;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn3;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn15;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn16;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn9;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn10;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn11;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn12;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn13;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn14;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn15;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn16;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn17;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn18;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn19;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn20;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn21;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn gridColumn24;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn19;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn17;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn18;
        private DevExpress.XtraEditors.SimpleButton btnNotepad_PO;
        private DevExpress.XtraEditors.SimpleButton btnNotepad_MU;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn6;
        #endregion

        #region Fields

        private MR_Version _mrVersion;
        private MR_Version _MR_VersionTemp;

        private MRHelper _MRHelper_GetData;
        public MRHelper MRHelper_GetData
        {
            get { return _MRHelper_GetData; }
        }

        private bool _rightOA = false;
        private bool _rightPUR = false;
        private bool _rightMC = false;
        private bool _rightEditOldVersions = false;

        private long _CurMenuid;
        private long CurMenuid
        {
            get 
            {
                if (this.MenuID == 0)
                    return this._CurMenuid;
                else
                    return this.MenuID;
            }
            set {this._CurMenuid=value;}

        }

        List<Enquiries_MRPOMU> _enquiries_MRPOMUs;
        BandedGridView currentView;
        RepositoryItemMemoExEdit currentMemoEx;

        #endregion


        public frmMRHistory()
        {
            InitializeComponent();
         
        }

        public frmMRHistory(MR_Version mrv, long menuid)
        {            

            InitializeComponent();
            CurMenuid = menuid;
            _MR_VersionTemp = mrv;
            InitValues();
            this._mrVersion = _MR_VersionTemp;
            this.editMRCONO.Text = _MR_VersionTemp.COMPANY;
            this.editMRProject.Text = _MR_VersionTemp.PROJECT;

            panelControl1.Visible = false;
            MRHistoryEnquiriesData();
           
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }


        #region Init

        private void InitValues()
        {
            btnNotepad_OA.Tag = NotepadType.MR;
            btnNotepad_PO.Tag = NotepadType.PO;
            btnNotepad_MU.Tag = NotepadType.MU;
            //foreach (BandedGridColumn col in this.bgvMR.Columns)
            //{
            //    col.OptionsColumn.ReadOnly = true;
            //}
            this.btnExport.Properties.Items.Clear();
            this.btnExport.Properties.Items.AddRange(PH.Common.Report.PHReport.ExportStrings);
            this.btnExport.SelectedIndex = 0;

            InitRights();
            InitButtonEdit();

            InitGridColumn(this.bgvMRPOMU);
            //InitGridColumn(this.bgvMR);
            //InitGridColumn(this.bgvMU);
            //InitGridColumn(this.bgvPO);
            //InitGridColumn(this.bgvWO);
        }
        private void InitButtonEdit()
        {

            RepositoryItemButtonEdit ribe = new RepositoryItemButtonEdit(); ;

            ribe = Commons.SetGridColumnButtonEdit("MRYYQty", this.bgvMRPOMU);
            ribe.Buttons[0].Tag = NotepadType.MR;
            ribe.Buttons[0].ToolTip = "Show SLOA Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);

            ribe = Commons.SetGridColumnButtonEdit("ResPO", this.bgvMRPOMU);//z..r PH.MR.UI.Grid.SetGridColumnButtonEdit
            ribe.Buttons[0].Tag = NotepadType.PO;
            ribe.Buttons[0].ToolTip = "Show SLPUR Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);

            ribe = Commons.SetGridColumnButtonEdit("OpenPO", this.bgvMRPOMU);//z..r PH.MR.UI.Grid.SetGridColumnButtonEdit
            ribe.Buttons[0].Tag = NotepadType.PO;
            ribe.Buttons[0].ToolTip = "Show SLPUR Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);

            ribe = Commons.SetGridColumnButtonEdit("AllocatedMaterial", this.bgvMRPOMU);//z..r PH.MR.UI.Grid.SetGridColumnButtonEdit
            ribe.Buttons[0].Tag = NotepadType.MU;
            ribe.Buttons[0].ToolTip = "Show SLMU Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);

            ribe = Commons.SetGridColumnButtonEdit("IssueQty_IDO", this.bgvMRPOMU);//z..r PH.MR.UI.Grid.SetGridColumnButtonEdit
            ribe.Buttons[0].Tag = NotepadType.MU;
            ribe.Buttons[0].ToolTip = "Show SLMU Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);

            ribe = Commons.SetGridColumnButtonEdit("IssueQty_UPI", this.bgvMRPOMU);//z..r PH.MR.UI.Grid.SetGridColumnButtonEdit
            ribe.Buttons[0].Tag = NotepadType.MU;
            ribe.Buttons[0].ToolTip = "Show SLMU Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);

            ribe = Commons.SetGridColumnButtonEdit("ReturnMatQty", this.bgvMRPOMU);//z..r PH.MR.UI.Grid.SetGridColumnButtonEdit
            ribe.Buttons[0].Tag = NotepadType.MU;
            ribe.Buttons[0].ToolTip = "Show SLMU Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);

            ribe = Commons.SetGridColumnButtonEdit("ActualUsage", this.bgvMRPOMU);//z..r PH.MR.UI.Grid.SetGridColumnButtonEdit
            ribe.Buttons[0].Tag = NotepadType.MU;
            ribe.Buttons[0].ToolTip = "Show SLMU Notepad";
            ribe.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(WO_ButtonClick);
        }
        private void InitRights()
        {
            this.currentView = this.bgvMRPOMU;
            this.currentMemoEx = this.repositoryItemMemoExEdit1;
            string usr = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserID;

            //IList<PH.Sys.BO.RightModule> Rightlist = PH.UI.Global.GetUserRightByModule("PH.MR.frmMRHistory");
            IList<Auth_FunRight> Rightlist = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.GetFunRight(this.CurMenuid);

            if (Rightlist.Where(p => p.FunRight == "MR.History.EditOldVersion").FirstOrDefault() != null)
                this._rightEditOldVersions = true;
            else
                this._rightEditOldVersions = false;

            if (Rightlist.Where(p => p.FunRight == "MR.History.OA").FirstOrDefault() != null)
                this._rightOA = true;
            else
                this._rightOA = false;

            if (Rightlist.Where(p => p.FunRight == "MR.History.PUR").FirstOrDefault() != null)
                this._rightPUR = true;
            else
                this._rightPUR = false;

            if (Rightlist.Where(p => p.FunRight == "MR.History.MC").FirstOrDefault() != null)
                this._rightMC = true;
            else
                this._rightMC = false;

            //z..r  在上面实现以下功能
            //this._rightEditOldVersions = PH.AuthManage.Utils.AuthController.Validate(usr, "MR.History.EditOldVersion",true);
            //this._rightOA = PH.AuthManage.Utils.AuthController.Validate(usr, "MR.History.OA", true);
            //this._rightPUR = PH.AuthManage.Utils.AuthController.Validate(usr, "MR.History.PUR", true);
            //this._rightMC = PH.AuthManage.Utils.AuthController.Validate(usr, "MR.History.MC", true);
        }
        private void InitDataSource()
        {
            _enquiries_MRPOMUs = new List<Enquiries_MRPOMU>();
        }
        private void InitGridNull()
        {
            //this.gcWO.DataSource = null;
            this.gcMRPOMU.DataSource = null;
            //this.gcPO.DataSource = null;
            //this.gcMU.DataSource = null;
            //this.gcCAC.DataSource = null;
        }
        private void InitGridColumn(BandedGridView view)
        {
            foreach (BandedGridColumn gcol in view.Columns)
            {
                gcol.OptionsColumn.ReadOnly = true;
            }
        }
        private BandedGridColumn SetupMemoColumn(string fieldName)
        {
            BandedGridColumn col =  Commons.GetGridColumnByFieldName(fieldName, this.currentView);
            if (col == null) return col;

            col.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            Commons.SetGridColumnMemoEdit(col).LinesCount = 0;

            return col;
        }
        private void InitPageSetup()
        {
            string reportName = string.Format("HistoryEnquiries-{0} for {1}", "MR,PO,MU", this._MRHelper_GetData.Project);
            //PH.MR.UI.Grid.ExportFileName = reportName;
            //PH.MR.UI.Grid.ReportTitle = reportName;

            //PH.MR.UI.Grid.PageKind = System.Drawing.Printing.PaperKind.A4;
            //PH.MR.UI.Grid.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            //PH.MR.UI.Grid.Landscape = true;
        }
        private void InitCACColumns(DevExpress.XtraGrid.Views.Grid.GridView view)
        {
            GridColumn col = Commons.GetGridColumnByFieldName("NOTEPAD", view);
            DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit rime = Commons.SetGridColumnMemoEdit(col);
            rime.LinesCount = 0;
            rime.Appearance.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
        }
        #endregion

        #region Button Edit
        void WO_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {

            NotepadType nt = (NotepadType)e.Button.Tag;
            DoNotepad(nt);
        }
        private void btnNotepad_Click(object sender, EventArgs e)
        {
            NotepadType nt = (NotepadType)((sender as Control).Tag);
            DoNotepad(nt);
        }
        private void DoNotepad(NotepadType nt)
        {
            EnquiriesBase eb = this.currentView.GetRow(this.currentView.FocusedRowHandle) as EnquiriesBase;
            frmHistoryNotepad frm = new frmHistoryNotepad(nt, eb);
            frm.ShowDialog();

            if (!frm.IsDirty) return;

            switch (nt)
            {
                case NotepadType.WO:
                    break;
                case NotepadType.MR:
                    (eb as Enquiries_MRPOMU).MRNotepad = frm.enquiriesBase.NOTEPAD;
                    break;
                case NotepadType.PO:
                    (eb as Enquiries_MRPOMU).PONotepad = frm.enquiriesBase.NOTEPAD;
                    break;
                case NotepadType.MU:
                    (eb as Enquiries_MRPOMU).MUNotepad = frm.enquiriesBase.NOTEPAD;
                    break;
                case NotepadType.CAC:
                    break;
                default:
                    break;
            }
            //this.currentView.SetRowCellValue(this.currentView.FocusedRowHandle, "NOTEPAD", eb.NOTEPAD);
        }
        #endregion

        

        #region Get projects
        private void editMRProject_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            string cono = this.editMRCONO.Text;
            this.Cursor = Cursors.AppStarting;
            try
            {
                frmSelectProject frm = new frmSelectProject(cono, true);
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

        #region Condition --> Hashtable
        /// <summary>
        /// Get Stock In Report Query Condition
        /// </summary>
        /// <returns></returns>
        private Hashtable GetMRReportQueryCondition()
        {
            //this._cono = this.editMRCONO.Text.Trim();
            //this._project = this.editMRProject.Text.Trim();

            Hashtable hash = new Hashtable();
            hash.Add("I_CONO", this._mrVersion.COMPANY);
            hash.Add("I_PROJECT", this._mrVersion.PROJECT);

            return hash;
        }
        #endregion

        #region Get data
        private void editMRProject_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter)
                MRHistoryEnquiriesData();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            //MessageBox.Show(AuthManageClient.AuthController.Department);
            MRHistoryEnquiriesData();
        }

        private void MRHistoryEnquiriesData()
        {
            //if (this.editMRCONO.Text == "")
            //{
            //    MessageBox.Show("Please enter Company.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    this.editMRCONO.Focus();
            //    return;
            //}
            //if (this.editMRProject.Text == "")
            //{
            //    MessageBox.Show("Please enter Project No.", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
            //    this.editMRProject.Focus();
            //    return;
            //}

            _MRHelper_GetData = new MRHelper();
            ActionInitStatus();

            //MRHelper_GetData.DT = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            //MRHelper_GetData.TM = DateTime.Now.ToString("HHmmssfff");
            //MRHelper_GetData.JOBN = string.Format("{0}{1}.{2}", MRHelper_GetData.DT, MRHelper_GetData.TM.Substring(0, 2), MRHelper_GetData.TM.Substring(2, 4));
            //_MRHelper_GetData.QueryCondition = this.GetMRReportQueryCondition();
            _MRHelper_GetData.phReportAction = PHReportAction.GenerateMRHistoryEnquiries;
            _MRHelper_GetData.dataAction = DataAction.MRHistoryEnquiries;
            _MRHelper_GetData.ReportOption = PHPrintReportOption.None;
            _MRHelper_GetData.CONO = this._mrVersion.COMPANY;
            _MRHelper_GetData.Project = this._mrVersion.PROJECT;
            _MRHelper_GetData.Dept = this._mrVersion.DEPT;
            _MRHelper_GetData.PrintVersion = this._mrVersion.VERSION;

            //this.Cur_MRHelper = MRHelper_GetData;
            GenerateMRForm.GenerateMR(_MRHelper_GetData);
        }
        public void MRHistoryEnquiriesData(MR_Version mrv)
        {
            this._mrVersion = mrv;
            //this._cono = cono;
            //this._project = project;
            //this._dept = dept;
            //this._version = version;

            //this.editMRCONO.Text = this._cono;
            //this.editMRProject.Text = this._project;

            panelControl1.Visible = false;
            MRHistoryEnquiriesData();
        }

        private void ActionInitStatus()
        {
            _MRHelper_GetData.GenerateDataStatus = GenerateDataStatus.Progressing;

            this.Enabled = false;
            this.btnPrint.Enabled = this.btnExport.Enabled = false;
            InitGridNull();
            this.timer1.Enabled = true;
        }

        #endregion

        #region Timer
        private void timer1_Tick(object sender, EventArgs e)
        {
            //if (this.Cur_MRHelper == null) return;

            switch (this._MRHelper_GetData.GenerateDataStatus)
            {
                case GenerateDataStatus.Progressing:
                    break;
                case GenerateDataStatus.Finished:
                    timer1.Enabled = false;
                    this.Cursor = Cursors.Default;

                    this.Enabled = true;
                    this.btnPrint.Enabled = this.btnExport.Enabled = true;
                    //this.rgReportType.Focus();
                    BindingGrid();

                    break;
                case GenerateDataStatus.Cancel:
                    timer1.Enabled = false;
                    this.Cursor = Cursors.Default;

                    this.Enabled = true;

                    break;
                default:
                    break;
            }
        }
        #endregion

        #region Binding Data
        private void BindingGrid()
        {
            //InitDataSource();

            DataTable tb = this._MRHelper_GetData.WorkDataTable;

            this.gcMRPOMU.DataSource = null;
            //this._enquiries_MRPOMUs = GetObjects<Enquiries_MRPOMU>(tb);
            this._enquiries_MRPOMUs = TableORM.GetObjects<Enquiries_MRPOMU>(tb, true);
            this.gcMRPOMU.DataSource = this._enquiries_MRPOMUs;

        }

        //private string GetColumnName(DataTable tb, string propertyName)
        //{
        //    if (tb.Columns.Contains(propertyName))
        //        return tb.Columns[propertyName].ColumnName;
        //    else
        //        return null;
        //}
        //private List<EntityType> GetObjects<EntityType>(DataTable tb)
        //{
        //    List<EntityType> objects = new List<EntityType>();

        //    try
        //    {
        //        EntityType newObj = default(EntityType);

        //        foreach (System.Data.DataRow row in tb.Rows)
        //        {
        //            newObj = (EntityType)typeof(EntityType).GetConstructor(new Type[0]).Invoke(null);

        //            foreach (PropertyInfo pi in typeof(EntityType).GetProperties(BindingFlags.Instance | BindingFlags.Public | BindingFlags.NonPublic))
        //            {
        //                try
        //                {
        //                    if (pi.Name == "IsNew")
        //                    {
        //                        pi.SetValue(newObj, false, null);
        //                    }
        //                    else
        //                    {
        //                        string fieldName = GetColumnName(tb, pi.Name);
        //                        if (fieldName == null) continue;
        //                        if (pi.CanWrite)
        //                            pi.SetValue(newObj, Convert.IsDBNull(row[fieldName]) ? null : row[fieldName], null);
        //                    }
        //                }
        //                catch
        //                {
        //                }

        //            }

        //            objects.Add(newObj);
        //        }

        //        return objects;

        //    }
        //    catch (Exception err)
        //    {
        //        MessageBox.Show("List<EntityType> GetObjects<EntityType>()", "Error");
        //    }

        //    return objects;

        //}

        #endregion

        #region Expand,Collapse
        private void btnExpand_Click(object sender, EventArgs e)
        {
            if (this.currentView != null)
                this.currentView.ExpandAllGroups();
        }
        private void btnCollapse_Click(object sender, EventArgs e)
        {
            if (this.currentView != null)
                this.currentView.CollapseAllGroups();
        }
        #endregion

        #region Row,Page Change
        private void bgvMR_FocusedRowChanged(object sender, DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventArgs e)
        {
            RowChange();
        }
        private void RowChange()
        {
            if (currentView == null) { btnNotepad_OA.Enabled = btnNotepad_PO.Enabled = btnNotepad_MU.Enabled = false; return; }
            btnNotepad_OA.Enabled = this._rightOA && currentView.FocusedRowHandle > -1;
            btnNotepad_PO.Enabled = this._rightPUR && currentView.FocusedRowHandle > -1;
            btnNotepad_MU.Enabled = this._rightMC && currentView.FocusedRowHandle > -1;
        }
        #endregion

        #region Print and Export
        private GridColumn SetupColumn(string fieldName, int width)
        {
            GridColumn col = Commons.GetGridColumnByFieldName(fieldName, this.currentView);
            if (col == null) return col;

            col.Width = width;
            col.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            return col;
        }
        private GridColumn SetupColumn(string fieldName, int width, int visibleIndex)
        {
            GridColumn col = Commons.GetGridColumnByFieldName(fieldName, this.currentView);
            if (col == null) return col;

            col.Width = width;
            col.VisibleIndex = visibleIndex;
            col.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            return col;
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            PrintPreviewAndExportFile(false, -1);

        }

        private void btnInExport_Properties_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.Button == cbe.Properties.Buttons[0])
                DoExport(cbe.SelectedIndex);
        }
        private void btnExport_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (e.CloseMode != DevExpress.XtraEditors.PopupCloseMode.Normal) return;
            int index = cbe.Properties.Items.IndexOf(e.Value);
            if (index != -1)
                DoExport(index);

        }
        private void btnExport_SelectedIndexChanged(object sender, EventArgs e)
        {
            DevExpress.XtraEditors.ComboBoxEdit cbe = sender as DevExpress.XtraEditors.ComboBoxEdit;
            if (cbe.SelectedItem != null)
                cbe.Properties.Buttons[0].Caption = cbe.SelectedItem.ToString();
        }
        private void DoExport(int index)
        {
            PrintPreviewAndExportFile(true, index);
        }

        private void PrintPreviewAndExportFile(bool isExport, int index)
        {
            InitPageSetup();
            GridColumn col;

            col = SetupColumn("MRNotepad", 300);
            Commons.SetGridColumnMemoEdit(col).LinesCount = 0;
            col = SetupColumn("PONotepad", 300);
            Commons.SetGridColumnMemoEdit(col).LinesCount = 0;
            col = SetupColumn("MUNotepad", 300);
            Commons.SetGridColumnMemoEdit(col).LinesCount = 0;


            PHReport report = new PHReport();
            //report.ReportTitle = PH.MR.UI.Grid.ReportTitle;
            report.Landscape = true;
            report.DetailBandCreating += new CreateReportBandEventHandler(report_DetailBandCreating);
            if (isExport)
                report.ExportByIndex(index);
            else
                report.ShowPreviewDialog();

            col = SetupColumn("MRNotepad", 85);
            col.ColumnEdit = this.repositoryItemMemoExEdit1;

            col = SetupColumn("PONotepad", 85);
            col.ColumnEdit = this.repositoryItemMemoExEdit1;

            col = SetupColumn("MUNotepad", 85);
            col.ColumnEdit = this.repositoryItemMemoExEdit1;
        }
        private void report_DetailBandCreating(object sender, ReportBandEventArgs e)
        {
            //int iClientWidth = e.Report.PageWidth - e.Report.Margins.Left - e.Report.Margins.Right;
            //PHReport.AddWinControlToReport(this.currentView.GridControl, new Point(0, 0), new Size(iClientWidth, 400), e.ReportBand);
            e.Y = 400;
        }
        #endregion

        #region different
        private void bgvMRPOMU_RowStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowStyleEventArgs e)
        {
            if (e.RowHandle < 0) return;

            DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
            Enquiries_MRPOMU row = view.GetRow(e.RowHandle) as Enquiries_MRPOMU;
            if (row == null) return;
            decimal mrDiff = row.MRDiff;
            decimal poDiff = row.PODiff;
            string mrNotepad = row.MRNotepad.Trim();
            string poNotepad = row.PONotepad.Trim();
            if (mrDiff != 0 && mrNotepad == string.Empty)
            {
                e.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
                e.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
                e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
                //e.Appearance.Options.UseBackColor = true;
            }

        }
        #endregion

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMRHistory));
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.editMRProject = new DevExpress.XtraEditors.ButtonEdit();
            this.editMRCONO = new DevExpress.XtraEditors.TextEdit();
            this.btnNotepad_OA = new DevExpress.XtraEditors.SimpleButton();
            this.btnExpand = new DevExpress.XtraEditors.SimpleButton();
            this.btnCollapse = new DevExpress.XtraEditors.SimpleButton();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.gridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.btnNotepad_MU = new DevExpress.XtraEditors.SimpleButton();
            this.btnNotepad_PO = new DevExpress.XtraEditors.SimpleButton();
            this.btnPrint = new DevExpress.XtraEditors.SimpleButton();
            this.btnExport = new DevExpress.XtraEditors.ComboBoxEdit();
            this.gcMRPOMU = new DevExpress.XtraGrid.GridControl();
            this.bgvMRPOMU = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn19 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn17 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn25 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn15 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn16 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn7 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn9 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn11 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn12 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn13 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn14 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn15 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn16 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn17 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn18 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn19 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn20 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridColumn21 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridColumn24 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn18 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn6 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editMRProject.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMRCONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.btnExport.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcMRPOMU)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bgvMRPOMU)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.btnOK);
            this.panelControl1.Controls.Add(this.label1);
            this.panelControl1.Controls.Add(this.label2);
            this.panelControl1.Controls.Add(this.editMRProject);
            this.panelControl1.Controls.Add(this.editMRCONO);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 52);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(836, 68);
            this.panelControl1.TabIndex = 1;
            // 
            // btnOK
            // 
            this.btnOK.ImageIndex = 0;
            this.btnOK.ImageList = this.imageList1;
            this.btnOK.Location = new System.Drawing.Point(387, 10);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 33);
            this.btnOK.TabIndex = 22;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
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
            this.imageList1.Images.SetKeyName(6, "expand.bmp");
            this.imageList1.Images.SetKeyName(7, "Collapse.bmp");
            this.imageList1.Images.SetKeyName(8, "Notepad.bmp");
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(26, 22);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(57, 12);
            this.label1.TabIndex = 19;
            this.label1.Text = "Company: ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(163, 22);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 12);
            this.label2.TabIndex = 20;
            this.label2.Text = "Project No.";
            // 
            // editMRProject
            // 
            this.editMRProject.Location = new System.Drawing.Point(236, 17);
            this.editMRProject.Name = "editMRProject";
            this.editMRProject.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), "Get project from History", "MR")});
            this.editMRProject.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editMRProject.Properties.MaxLength = 20;
            this.editMRProject.Size = new System.Drawing.Size(113, 21);
            this.editMRProject.TabIndex = 18;
            this.editMRProject.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.editMRProject_ButtonClick);
            this.editMRProject.KeyDown += new System.Windows.Forms.KeyEventHandler(this.editMRProject_KeyDown);
            // 
            // editMRCONO
            // 
            this.editMRCONO.EditValue = "P1";
            this.editMRCONO.Location = new System.Drawing.Point(99, 17);
            this.editMRCONO.Name = "editMRCONO";
            this.editMRCONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.editMRCONO.Properties.MaxLength = 2;
            this.editMRCONO.Size = new System.Drawing.Size(39, 21);
            this.editMRCONO.TabIndex = 21;
            // 
            // btnNotepad_OA
            // 
            this.btnNotepad_OA.Enabled = false;
            this.btnNotepad_OA.ImageIndex = 8;
            this.btnNotepad_OA.ImageList = this.imageList1;
            this.btnNotepad_OA.Location = new System.Drawing.Point(461, 13);
            this.btnNotepad_OA.Name = "btnNotepad_OA";
            this.btnNotepad_OA.Size = new System.Drawing.Size(110, 27);
            this.btnNotepad_OA.TabIndex = 65;
            this.btnNotepad_OA.Tag = "NotepadType.MR";
            this.btnNotepad_OA.Text = "OA Notepad";
            this.btnNotepad_OA.Click += new System.EventHandler(this.btnNotepad_Click);
            // 
            // btnExpand
            // 
            this.btnExpand.ImageIndex = 6;
            this.btnExpand.ImageList = this.imageList1;
            this.btnExpand.Location = new System.Drawing.Point(16, 13);
            this.btnExpand.Name = "btnExpand";
            this.btnExpand.Size = new System.Drawing.Size(99, 27);
            this.btnExpand.TabIndex = 64;
            this.btnExpand.Tag = "MR";
            this.btnExpand.Text = "Expand All";
            this.btnExpand.Click += new System.EventHandler(this.btnExpand_Click);
            // 
            // btnCollapse
            // 
            this.btnCollapse.ImageIndex = 7;
            this.btnCollapse.ImageList = this.imageList1;
            this.btnCollapse.Location = new System.Drawing.Point(121, 13);
            this.btnCollapse.Name = "btnCollapse";
            this.btnCollapse.Size = new System.Drawing.Size(99, 27);
            this.btnCollapse.TabIndex = 63;
            this.btnCollapse.Tag = "MR";
            this.btnCollapse.Text = "Collapse All";
            this.btnCollapse.Click += new System.EventHandler(this.btnCollapse_Click);
            // 
            // timer1
            // 
            this.timer1.Tick += new System.EventHandler(this.timer1_Tick);
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "YY Qty";
            this.gridColumn5.FieldName = "MRYYQty";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "MR\r\nNotepad";
            this.gridColumn6.FieldName = "MRNotepad";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.Width = 78;
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.panelControl2.Controls.Add(this.btnNotepad_MU);
            this.panelControl2.Controls.Add(this.btnNotepad_PO);
            this.panelControl2.Controls.Add(this.btnNotepad_OA);
            this.panelControl2.Controls.Add(this.btnPrint);
            this.panelControl2.Controls.Add(this.btnExport);
            this.panelControl2.Controls.Add(this.btnCollapse);
            this.panelControl2.Controls.Add(this.btnExpand);
            this.panelControl2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl2.Location = new System.Drawing.Point(0, 0);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(836, 52);
            this.panelControl2.TabIndex = 3;
            // 
            // btnNotepad_MU
            // 
            this.btnNotepad_MU.Enabled = false;
            this.btnNotepad_MU.ImageIndex = 8;
            this.btnNotepad_MU.ImageList = this.imageList1;
            this.btnNotepad_MU.Location = new System.Drawing.Point(693, 13);
            this.btnNotepad_MU.Name = "btnNotepad_MU";
            this.btnNotepad_MU.Size = new System.Drawing.Size(110, 27);
            this.btnNotepad_MU.TabIndex = 69;
            this.btnNotepad_MU.Tag = "NotepadType.MU";
            this.btnNotepad_MU.Text = "MU Notepad";
            this.btnNotepad_MU.Click += new System.EventHandler(this.btnNotepad_Click);
            // 
            // btnNotepad_PO
            // 
            this.btnNotepad_PO.Enabled = false;
            this.btnNotepad_PO.ImageIndex = 8;
            this.btnNotepad_PO.ImageList = this.imageList1;
            this.btnNotepad_PO.Location = new System.Drawing.Point(577, 13);
            this.btnNotepad_PO.Name = "btnNotepad_PO";
            this.btnNotepad_PO.Size = new System.Drawing.Size(110, 27);
            this.btnNotepad_PO.TabIndex = 68;
            this.btnNotepad_PO.Tag = "NotepadType.PO";
            this.btnNotepad_PO.Text = "PUR Notepad";
            this.btnNotepad_PO.Click += new System.EventHandler(this.btnNotepad_Click);
            // 
            // btnPrint
            // 
            this.btnPrint.Enabled = false;
            this.btnPrint.ImageIndex = 2;
            this.btnPrint.ImageList = this.imageList1;
            this.btnPrint.Location = new System.Drawing.Point(261, 13);
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.Size = new System.Drawing.Size(120, 27);
            this.btnPrint.TabIndex = 67;
            this.btnPrint.Tag = "MR";
            this.btnPrint.Text = "Print Preview";
            this.btnPrint.Click += new System.EventHandler(this.btnPrint_Click);
            // 
            // btnExport
            // 
            this.btnExport.Enabled = false;
            this.btnExport.Location = new System.Drawing.Point(387, 13);
            this.btnExport.Name = "btnExport";
            this.btnExport.Properties.ActionButtonIndex = 1;
            this.btnExport.Properties.AutoHeight = false;
            this.btnExport.Properties.BorderStyle = DevExpress.XtraEditors.Controls.BorderStyles.NoBorder;
            this.btnExport.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Glyph, "Export", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null),
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", 0, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.btnExport.Properties.DropDownRows = 8;
            this.btnExport.Properties.Items.AddRange(new object[] {
            "Export To PDF",
            "Export To XLS",
            "Export To HTML",
            "Export To TXT",
            "Export To XML",
            "Export To MHT",
            "Export To RTF",
            "Export To BMP"});
            this.btnExport.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.btnExport.Properties.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.btnInExport_Properties_ButtonClick);
            this.btnExport.Size = new System.Drawing.Size(128, 27);
            this.btnExport.TabIndex = 66;
            this.btnExport.Tag = "MR";
            this.btnExport.Visible = false;
            this.btnExport.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.btnExport_CloseUp);
            this.btnExport.SelectedIndexChanged += new System.EventHandler(this.btnExport_SelectedIndexChanged);
            // 
            // gcMRPOMU
            // 
            this.gcMRPOMU.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcMRPOMU.EmbeddedNavigator.Name = "";
            this.gcMRPOMU.Location = new System.Drawing.Point(0, 120);
            this.gcMRPOMU.MainView = this.bgvMRPOMU;
            this.gcMRPOMU.Name = "gcMRPOMU";
            this.gcMRPOMU.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoExEdit1});
            this.gcMRPOMU.Size = new System.Drawing.Size(836, 544);
            this.gcMRPOMU.TabIndex = 4;
            this.gcMRPOMU.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bgvMRPOMU});
            // 
            // bgvMRPOMU
            // 
            this.bgvMRPOMU.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bgvMRPOMU.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bgvMRPOMU.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6,
            this.gridBand7,
            this.gridBand8,
            this.gridBand10});
            this.bgvMRPOMU.ColumnPanelRowHeight = 40;
            this.bgvMRPOMU.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.bandedGridColumn19,
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.gridColumn25,
            this.bandedGridColumn15,
            this.bandedGridColumn16,
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn9,
            this.gridColumn10,
            this.gridColumn11,
            this.gridColumn12,
            this.gridColumn13,
            this.gridColumn14,
            this.gridColumn15,
            this.gridColumn16,
            this.gridColumn17,
            this.gridColumn18,
            this.gridColumn19,
            this.gridColumn20,
            this.gridColumn21,
            this.gridColumn24,
            this.bandedGridColumn17,
            this.bandedGridColumn18,
            this.bandedGridColumn3,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.bandedGridColumn6});
            this.bgvMRPOMU.CustomizationFormBounds = new System.Drawing.Rectangle(837, 217, 217, 342);
            this.bgvMRPOMU.GridControl = this.gcMRPOMU;
            this.bgvMRPOMU.GroupCount = 2;
            this.bgvMRPOMU.GroupFormat = "{0} [#image]{1} {2}";
            this.bgvMRPOMU.Name = "bgvMRPOMU";
            this.bgvMRPOMU.OptionsPrint.AutoWidth = false;
            this.bgvMRPOMU.OptionsView.ColumnAutoWidth = false;
            this.bgvMRPOMU.OptionsView.ShowGroupPanel = false;
            this.bgvMRPOMU.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridColumn19, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridColumn18, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.bgvMRPOMU.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.bgvMR_FocusedRowChanged);
            this.bgvMRPOMU.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bgvMRPOMU_RowCellStyle);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Material";
            this.gridBand1.Columns.Add(this.bandedGridColumn1);
            this.gridBand1.Columns.Add(this.bandedGridColumn19);
            this.gridBand1.Columns.Add(this.bandedGridColumn17);
            this.gridBand1.Columns.Add(this.bandedGridColumn4);
            this.gridBand1.Columns.Add(this.bandedGridColumn2);
            this.gridBand1.Columns.Add(this.gridColumn25);
            this.gridBand1.Columns.Add(this.bandedGridColumn3);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 530;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "Material Code";
            this.bandedGridColumn1.FieldName = "CSTL";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn1.Visible = true;
            this.bandedGridColumn1.Width = 135;
            // 
            // bandedGridColumn19
            // 
            this.bandedGridColumn19.Caption = "Color:";
            this.bandedGridColumn19.FieldName = "StyleColor";
            this.bandedGridColumn19.Name = "bandedGridColumn19";
            this.bandedGridColumn19.OptionsColumn.AllowEdit = false;
            // 
            // bandedGridColumn17
            // 
            this.bandedGridColumn17.Caption = "Multi\r\nColor";
            this.bandedGridColumn17.FieldName = "PCOL";
            this.bandedGridColumn17.Name = "bandedGridColumn17";
            this.bandedGridColumn17.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn17.Visible = true;
            this.bandedGridColumn17.Width = 61;
            // 
            // bandedGridColumn4
            // 
            this.bandedGridColumn4.Caption = "Size";
            this.bandedGridColumn4.FieldName = "PSIZ";
            this.bandedGridColumn4.Name = "bandedGridColumn4";
            this.bandedGridColumn4.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn4.Visible = true;
            this.bandedGridColumn4.Width = 49;
            // 
            // bandedGridColumn2
            // 
            this.bandedGridColumn2.Caption = "Supplier\r\nReference";
            this.bandedGridColumn2.FieldName = "SupplierRef";
            this.bandedGridColumn2.Name = "bandedGridColumn2";
            this.bandedGridColumn2.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn2.Visible = true;
            this.bandedGridColumn2.Width = 121;
            // 
            // gridColumn25
            // 
            this.gridColumn25.Caption = "Marker\r\nWidth";
            this.gridColumn25.FieldName = "MarkerWidth";
            this.gridColumn25.Name = "gridColumn25";
            this.gridColumn25.OptionsColumn.AllowEdit = false;
            this.gridColumn25.Visible = true;
            this.gridColumn25.Width = 118;
            // 
            // bandedGridColumn3
            // 
            this.bandedGridColumn3.Caption = "UOM";
            this.bandedGridColumn3.FieldName = "UOM";
            this.bandedGridColumn3.Name = "bandedGridColumn3";
            this.bandedGridColumn3.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn3.Visible = true;
            this.bandedGridColumn3.Width = 46;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "MR";
            this.gridBand3.Columns.Add(this.bandedGridColumn15);
            this.gridBand3.Columns.Add(this.bandedGridColumn16);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 153;
            // 
            // bandedGridColumn15
            // 
            this.bandedGridColumn15.Caption = "YY Qty";
            this.bandedGridColumn15.FieldName = "MRYYQty";
            this.bandedGridColumn15.Name = "bandedGridColumn15";
            this.bandedGridColumn15.Visible = true;
            // 
            // bandedGridColumn16
            // 
            this.bandedGridColumn16.Caption = "OA\r\nNotepad";
            this.bandedGridColumn16.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.bandedGridColumn16.FieldName = "MRNotepad";
            this.bandedGridColumn16.Name = "bandedGridColumn16";
            this.bandedGridColumn16.Visible = true;
            this.bandedGridColumn16.Width = 78;
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            this.repositoryItemMemoExEdit1.PopupStartSize = new System.Drawing.Size(500, 300);
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Physical Stock";
            this.gridBand4.Columns.Add(this.gridColumn7);
            this.gridBand4.Columns.Add(this.gridColumn8);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 172;
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Reserved\r\nfor Re-dye";
            this.gridColumn7.FieldName = "ReservedStock";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.Width = 93;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Reserved\r\nStock";
            this.gridColumn8.FieldName = "MUStock";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.Width = 79;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Logistic stock";
            this.gridBand5.Columns.Add(this.gridColumn9);
            this.gridBand5.Columns.Add(this.gridColumn10);
            this.gridBand5.Columns.Add(this.gridColumn11);
            this.gridBand5.Columns.Add(this.gridColumn12);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 296;
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "Res.PO";
            this.gridColumn9.FieldName = "ResPO";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.Visible = true;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "Open PO";
            this.gridColumn10.FieldName = "OpenPO";
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.Visible = true;
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "PO MU";
            this.gridColumn11.FieldName = "POMU";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.OptionsColumn.AllowEdit = false;
            this.gridColumn11.Visible = true;
            this.gridColumn11.Width = 76;
            // 
            // gridColumn12
            // 
            this.gridColumn12.Caption = "PUR\r\nNotepad";
            this.gridColumn12.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.gridColumn12.FieldName = "PONotepad";
            this.gridColumn12.Name = "gridColumn12";
            this.gridColumn12.Visible = true;
            this.gridColumn12.Width = 70;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Purchase Order";
            this.gridBand6.Columns.Add(this.gridColumn13);
            this.gridBand6.Columns.Add(this.gridColumn14);
            this.gridBand6.Columns.Add(this.gridColumn15);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 270;
            // 
            // gridColumn13
            // 
            this.gridColumn13.Caption = "PO\r\nreceipt Qty";
            this.gridColumn13.FieldName = "POReceiptQty";
            this.gridColumn13.Name = "gridColumn13";
            this.gridColumn13.Visible = true;
            this.gridColumn13.Width = 90;
            // 
            // gridColumn14
            // 
            this.gridColumn14.Caption = "PO\r\nbalance Qty";
            this.gridColumn14.FieldName = "POBalanceQty";
            this.gridColumn14.Name = "gridColumn14";
            this.gridColumn14.Visible = true;
            this.gridColumn14.Width = 87;
            // 
            // gridColumn15
            // 
            this.gridColumn15.Caption = "PO\r\nOvership";
            this.gridColumn15.FieldName = "POOvership";
            this.gridColumn15.Name = "gridColumn15";
            this.gridColumn15.Visible = true;
            this.gridColumn15.Width = 93;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Works Orders";
            this.gridBand7.Columns.Add(this.gridColumn16);
            this.gridBand7.Columns.Add(this.gridColumn17);
            this.gridBand7.Columns.Add(this.gridColumn18);
            this.gridBand7.Columns.Add(this.gridColumn19);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 406;
            // 
            // gridColumn16
            // 
            this.gridColumn16.Caption = "Issue\r\nIDO Qty";
            this.gridColumn16.FieldName = "IssueQty_IDO";
            this.gridColumn16.Name = "gridColumn16";
            this.gridColumn16.Visible = true;
            this.gridColumn16.Width = 110;
            // 
            // gridColumn17
            // 
            this.gridColumn17.Caption = "Unplanned\r\nIssue";
            this.gridColumn17.FieldName = "IssueQty_UPI";
            this.gridColumn17.Name = "gridColumn17";
            this.gridColumn17.Visible = true;
            this.gridColumn17.Width = 101;
            // 
            // gridColumn18
            // 
            this.gridColumn18.Caption = "Allocated\r\nmaterial ";
            this.gridColumn18.FieldName = "AllocatedMaterial";
            this.gridColumn18.Name = "gridColumn18";
            this.gridColumn18.Visible = true;
            this.gridColumn18.Width = 99;
            // 
            // gridColumn19
            // 
            this.gridColumn19.Caption = "Return\r\nmat. Qty";
            this.gridColumn19.FieldName = "ReturnMatQty";
            this.gridColumn19.Name = "gridColumn19";
            this.gridColumn19.Visible = true;
            this.gridColumn19.Width = 96;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "SLMU";
            this.gridBand8.Columns.Add(this.gridColumn20);
            this.gridBand8.Columns.Add(this.gridColumn21);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 159;
            // 
            // gridColumn20
            // 
            this.gridColumn20.Caption = "Actual\r\nusage";
            this.gridColumn20.FieldName = "ActualUsage";
            this.gridColumn20.Name = "gridColumn20";
            this.gridColumn20.Visible = true;
            this.gridColumn20.Width = 88;
            // 
            // gridColumn21
            // 
            this.gridColumn21.Caption = "MU\r\nNotepad";
            this.gridColumn21.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.gridColumn21.FieldName = "MUNotepad";
            this.gridColumn21.Name = "gridColumn21";
            this.gridColumn21.Visible = true;
            this.gridColumn21.Width = 71;
            // 
            // gridBand10
            // 
            this.gridBand10.Columns.Add(this.gridColumn24);
            this.gridBand10.MinWidth = 20;
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Visible = false;
            this.gridBand10.Width = 86;
            // 
            // gridColumn24
            // 
            this.gridColumn24.Caption = "Costing\r\nDifferent";
            this.gridColumn24.FieldName = "CostingDiff";
            this.gridColumn24.Name = "gridColumn24";
            this.gridColumn24.Width = 86;
            // 
            // bandedGridColumn18
            // 
            this.bandedGridColumn18.FieldName = "MATD";
            this.bandedGridColumn18.Name = "bandedGridColumn18";
            // 
            // bandedGridColumn5
            // 
            this.bandedGridColumn5.Caption = "MR Diff";
            this.bandedGridColumn5.FieldName = "MRDiff";
            this.bandedGridColumn5.Name = "bandedGridColumn5";
            this.bandedGridColumn5.OptionsColumn.AllowEdit = false;
            // 
            // bandedGridColumn6
            // 
            this.bandedGridColumn6.Caption = "PO Diff";
            this.bandedGridColumn6.FieldName = "PODiff";
            this.bandedGridColumn6.Name = "bandedGridColumn6";
            this.bandedGridColumn6.OptionsColumn.AllowEdit = false;
            // 
            // frmMRHistory
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.gcMRPOMU);
            this.Controls.Add(this.panelControl1);
            this.Controls.Add(this.panelControl2);
            this.Name = "frmMRHistory";
            this.Size = new System.Drawing.Size(836, 664);
            this.Load += new System.EventHandler(this.frmMRHistory_Load);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.editMRProject.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.editMRCONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.btnExport.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcMRPOMU)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bgvMRPOMU)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private void bgvMRPOMU_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            if (e.RowHandle < 0) return;

            DevExpress.XtraGrid.Views.Grid.GridView view = sender as DevExpress.XtraGrid.Views.Grid.GridView;
            Enquiries_MRPOMU row = view.GetRow(e.RowHandle) as Enquiries_MRPOMU;
            if (row == null) return;
            decimal mrDiff = row.MRDiff;
            decimal poDiff = row.PODiff;
            string mrNotepad = Convert.ToString(row.MRNotepad).Trim();
            string poNotepad = Convert.ToString(row.PONotepad).Trim();

            switch (e.Column.FieldName)
            {
                case "MRYYQty":
                    if (mrDiff == 0 || mrNotepad != string.Empty) return;

                    e.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(192)))), ((int)(((byte)(128)))));
                    e.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
                    e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;

                    break;
                case "ResPO":
                    if (poDiff == 0 || poNotepad != string.Empty) return;

                    e.Appearance.BackColor = System.Drawing.Color.Lime;
                    e.Appearance.BackColor2 = System.Drawing.Color.SpringGreen;// FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
                    e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;

                    break;
                case "OpenPO":
                    goto case "ResPO";

                case "AllocatedMaterial":
                    return;
                    if (poDiff == 0 || poNotepad != string.Empty) return;

                    e.Appearance.BackColor = System.Drawing.Color.LightSkyBlue;
                    e.Appearance.BackColor2 = System.Drawing.Color.FromArgb(((System.Byte)(192)), ((System.Byte)(255)), ((System.Byte)(255)));
                    e.Appearance.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;

                    break;

                case "IssueQty_IDO":
                    goto case "AllocatedMaterial";
                case "IssueQty_UPI":
                    goto case "AllocatedMaterial";
                case "ReturnMatQty":
                    goto case "AllocatedMaterial";
                case "ActualUsage":
                    goto case "AllocatedMaterial";

                default:
                    break;
            }
        }

        private void frmMRHistory_Load(object sender, EventArgs e)
        {
           
        }

    }
}

