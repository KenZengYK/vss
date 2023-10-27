namespace PH.LWPM.UI.LB4
{
    partial class RedQNListForm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colj_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ2_job = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRwo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBcolor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRDProcessing = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWoc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWsLocation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOptWs = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWDeskQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWsRDProcessing = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStartTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEndTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnGetData = new DevExpress.XtraBars.BarButtonItem();
            this.colTotalDesk = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalWs = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCOP = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit_COP = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colHasAlertLog = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOneWeekFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTwoWeekFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThreeWeekFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colYNConfirme = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_COP)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnGetData});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemButtonEdit_COP});
            this.objListGridControl.Size = new System.Drawing.Size(1495, 538);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.Row.Options.UseTextOptions = true;
            this.objListGridView.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.ColumnPanelRowHeight = 48;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.colLineCode,
            this.colWsLocation,
            this.colCustStyleCode,
            this.colPHStyleCode,
            this.colClass,
            this.colBcolor,
            this.colRDProcessing,
            this.colStartTime,
            this.colEndTime,
            this.colj_NO,
            this.colJ2_job,
            this.colRwo,
            this.colWoc,
            this.colQn,
            this.colQNQty,
            this.colOptWs,
            this.colWDeskQty,
            this.colWsRDProcessing,
            this.colVersion,
            this.colUpdateTime,
            this.colTotalDesk,
            this.colTotalWs,
            this.colCOP,
            this.colHasAlertLog,
            this.colOneWeekFlag,
            this.colTwoWeekFlag,
            this.colThreeWeekFlag,
            this.colYNConfirme});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1324, 335, 216, 376);
            this.objListGridView.GroupCount = 2;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.AllowCellMerge = true;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWsLocation, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWsRDProcessing, DevExpress.Data.ColumnSortOrder.Descending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colFactory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLineCode, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.objListGridView_CellMerge);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.RedQN);
            // 
            // colFactory
            // 
            this.colFactory.Caption = "FTY";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 0;
            this.colFactory.Width = 77;
            // 
            // colLineCode
            // 
            this.colLineCode.Caption = "Line#";
            this.colLineCode.FieldName = "LineCode";
            this.colLineCode.Name = "colLineCode";
            this.colLineCode.OptionsColumn.AllowEdit = false;
            this.colLineCode.Visible = true;
            this.colLineCode.VisibleIndex = 1;
            this.colLineCode.Width = 71;
            // 
            // colj_NO
            // 
            this.colj_NO.Caption = "Proj#";
            this.colj_NO.FieldName = "j_NO";
            this.colj_NO.Name = "colj_NO";
            this.colj_NO.OptionsColumn.AllowEdit = false;
            this.colj_NO.Visible = true;
            this.colj_NO.VisibleIndex = 8;
            this.colj_NO.Width = 80;
            // 
            // colJ2_job
            // 
            this.colJ2_job.Caption = "WO#";
            this.colJ2_job.FieldName = "J2_job";
            this.colJ2_job.Name = "colJ2_job";
            this.colJ2_job.OptionsColumn.AllowEdit = false;
            this.colJ2_job.Visible = true;
            this.colJ2_job.VisibleIndex = 9;
            this.colJ2_job.Width = 63;
            // 
            // colRwo
            // 
            this.colRwo.Caption = "RWO\r\n#";
            this.colRwo.FieldName = "Rwo";
            this.colRwo.Name = "colRwo";
            this.colRwo.OptionsColumn.AllowEdit = false;
            this.colRwo.Width = 50;
            // 
            // colQn
            // 
            this.colQn.Caption = "QN# suffix\r\n(*QN# prefix = WO#)";
            this.colQn.FieldName = "QNShow";
            this.colQn.Name = "colQn";
            this.colQn.OptionsColumn.AllowEdit = false;
            this.colQn.Visible = true;
            this.colQn.VisibleIndex = 10;
            this.colQn.Width = 135;
            // 
            // colBcolor
            // 
            this.colBcolor.Caption = "Color\r\nCode";
            this.colBcolor.FieldName = "Bcolor";
            this.colBcolor.Name = "colBcolor";
            this.colBcolor.OptionsColumn.AllowEdit = false;
            this.colBcolor.Visible = true;
            this.colBcolor.VisibleIndex = 5;
            this.colBcolor.Width = 50;
            // 
            // colRDProcessing
            // 
            this.colRDProcessing.Caption = "RD Processing";
            this.colRDProcessing.FieldName = "RDProcessing";
            this.colRDProcessing.Name = "colRDProcessing";
            this.colRDProcessing.OptionsColumn.AllowEdit = false;
            this.colRDProcessing.Width = 109;
            // 
            // colWoc
            // 
            this.colWoc.Caption = "WOc\r\n#";
            this.colWoc.FieldName = "Woc";
            this.colWoc.Name = "colWoc";
            this.colWoc.OptionsColumn.AllowEdit = false;
            this.colWoc.Width = 49;
            // 
            // colWsLocation
            // 
            this.colWsLocation.Caption = "Line Loc.";
            this.colWsLocation.FieldName = "WsLocationShow";
            this.colWsLocation.Name = "colWsLocation";
            this.colWsLocation.OptionsColumn.AllowEdit = false;
            this.colWsLocation.Width = 87;
            // 
            // colPHStyleCode
            // 
            this.colPHStyleCode.Caption = "PH Style";
            this.colPHStyleCode.FieldName = "PHStyleCode";
            this.colPHStyleCode.Name = "colPHStyleCode";
            this.colPHStyleCode.OptionsColumn.AllowEdit = false;
            this.colPHStyleCode.Width = 103;
            // 
            // colCustStyleCode
            // 
            this.colCustStyleCode.Caption = "Cust Style";
            this.colCustStyleCode.FieldName = "CustStyleCode";
            this.colCustStyleCode.Name = "colCustStyleCode";
            this.colCustStyleCode.OptionsColumn.AllowEdit = false;
            this.colCustStyleCode.Visible = true;
            this.colCustStyleCode.VisibleIndex = 2;
            this.colCustStyleCode.Width = 77;
            // 
            // colQNQty
            // 
            this.colQNQty.Caption = "QN\r\nQty";
            this.colQNQty.FieldName = "QNQty";
            this.colQNQty.Name = "colQNQty";
            this.colQNQty.OptionsColumn.AllowEdit = false;
            this.colQNQty.Visible = true;
            this.colQNQty.VisibleIndex = 11;
            this.colQNQty.Width = 42;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Sty.\r\nVer.";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 3;
            this.colVersion.Width = 45;
            // 
            // colOptWs
            // 
            this.colOptWs.Caption = "Opt\r\nWs";
            this.colOptWs.FieldName = "OptWsShow";
            this.colOptWs.Name = "colOptWs";
            this.colOptWs.OptionsColumn.AllowEdit = false;
            this.colOptWs.Visible = true;
            this.colOptWs.VisibleIndex = 12;
            this.colOptWs.Width = 43;
            // 
            // colWDeskQty
            // 
            this.colWDeskQty.Caption = "W.\r\nDesk\r";
            this.colWDeskQty.FieldName = "WDeskQty";
            this.colWDeskQty.Name = "colWDeskQty";
            this.colWDeskQty.OptionsColumn.AllowEdit = false;
            this.colWDeskQty.Visible = true;
            this.colWDeskQty.VisibleIndex = 14;
            this.colWDeskQty.Width = 48;
            // 
            // colWsRDProcessing
            // 
            this.colWsRDProcessing.Caption = "RD Processing";
            this.colWsRDProcessing.FieldName = "WsRDProcessing_WF";
            this.colWsRDProcessing.Name = "colWsRDProcessing";
            this.colWsRDProcessing.OptionsColumn.AllowEdit = false;
            this.colWsRDProcessing.Width = 98;
            // 
            // colStartTime
            // 
            this.colStartTime.Caption = "QN Start\r dd";
            this.colStartTime.FieldName = "StartTime";
            this.colStartTime.Name = "colStartTime";
            this.colStartTime.OptionsColumn.AllowEdit = false;
            this.colStartTime.Visible = true;
            this.colStartTime.VisibleIndex = 6;
            this.colStartTime.Width = 99;
            // 
            // colEndTime
            // 
            this.colEndTime.Caption = "QN End\r dd";
            this.colEndTime.FieldName = "EndTime";
            this.colEndTime.Name = "colEndTime";
            this.colEndTime.OptionsColumn.AllowEdit = false;
            this.colEndTime.Visible = true;
            this.colEndTime.VisibleIndex = 7;
            this.colEndTime.Width = 87;
            // 
            // colUpdateTime
            // 
            this.colUpdateTime.Caption = "Alert\r\nstarted\r\ndd/time";
            this.colUpdateTime.FieldName = "StartAlertTimeShow";
            this.colUpdateTime.Name = "colUpdateTime";
            this.colUpdateTime.OptionsColumn.AllowEdit = false;
            this.colUpdateTime.Visible = true;
            this.colUpdateTime.VisibleIndex = 16;
            this.colUpdateTime.Width = 76;
            // 
            // btnGetData
            // 
            this.btnGetData.Caption = "Get Data";
            this.btnGetData.Id = 60;
            this.btnGetData.Name = "btnGetData";
            this.btnGetData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // colTotalDesk
            // 
            this.colTotalDesk.Caption = "W.\r\nDesk\r\nTtl";
            this.colTotalDesk.FieldName = "TotalDesk";
            this.colTotalDesk.Name = "colTotalDesk";
            this.colTotalDesk.OptionsColumn.AllowEdit = false;
            this.colTotalDesk.Visible = true;
            this.colTotalDesk.VisibleIndex = 15;
            this.colTotalDesk.Width = 48;
            // 
            // colTotalWs
            // 
            this.colTotalWs.Caption = "Opt\r\nWs\r\nTtl";
            this.colTotalWs.FieldName = "TotalWs";
            this.colTotalWs.Name = "colTotalWs";
            this.colTotalWs.OptionsColumn.AllowEdit = false;
            this.colTotalWs.Visible = true;
            this.colTotalWs.VisibleIndex = 13;
            this.colTotalWs.Width = 43;
            // 
            // colClass
            // 
            this.colClass.Caption = "Class";
            this.colClass.FieldName = "Class";
            this.colClass.Name = "colClass";
            this.colClass.OptionsColumn.AllowEdit = false;
            this.colClass.Visible = true;
            this.colClass.VisibleIndex = 4;
            this.colClass.Width = 47;
            // 
            // colCOP
            // 
            this.colCOP.Caption = "Alert\r\nLog";
            this.colCOP.ColumnEdit = this.repositoryItemButtonEdit_COP;
            this.colCOP.Name = "colCOP";
            this.colCOP.ShowButtonMode = DevExpress.XtraGrid.Views.Base.ShowButtonModeEnum.ShowAlways;
            this.colCOP.Visible = true;
            this.colCOP.VisibleIndex = 17;
            this.colCOP.Width = 48;
            // 
            // repositoryItemButtonEdit_COP
            // 
            this.repositoryItemButtonEdit_COP.AutoHeight = false;
            this.repositoryItemButtonEdit_COP.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_COP.Name = "repositoryItemButtonEdit_COP";
            this.repositoryItemButtonEdit_COP.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.repositoryItemButtonEdit_COP.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_COP_ButtonClick);
            // 
            // colHasAlertLog
            // 
            this.colHasAlertLog.Caption = "Log\n-in\n(Y?)";
            this.colHasAlertLog.FieldName = "HasAlertLog";
            this.colHasAlertLog.Name = "colHasAlertLog";
            this.colHasAlertLog.Visible = true;
            this.colHasAlertLog.VisibleIndex = 18;
            this.colHasAlertLog.Width = 46;
            // 
            // colOneWeekFlag
            // 
            this.colOneWeekFlag.Caption = "OneWeekFlag";
            this.colOneWeekFlag.FieldName = "OneWeekFlag";
            this.colOneWeekFlag.Name = "colOneWeekFlag";
            // 
            // colTwoWeekFlag
            // 
            this.colTwoWeekFlag.Caption = "TwoWeekFlag";
            this.colTwoWeekFlag.FieldName = "TwoWeekFlag";
            this.colTwoWeekFlag.Name = "colTwoWeekFlag";
            // 
            // colThreeWeekFlag
            // 
            this.colThreeWeekFlag.Caption = "ThreeWeekFlag";
            this.colThreeWeekFlag.FieldName = "ThreeWeekFlag";
            this.colThreeWeekFlag.Name = "colThreeWeekFlag";
            // 
            // colYNConfirme
            // 
            this.colYNConfirme.Caption = "YNConfirme";
            this.colYNConfirme.FieldName = "YNConfirme";
            this.colYNConfirme.Name = "colYNConfirme";
            // 
            // RedQNListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "RedQNListForm";
            this.Size = new System.Drawing.Size(1495, 565);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_COP)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colLineCode;
        private DevExpress.XtraGrid.Columns.GridColumn colj_NO;
        private DevExpress.XtraGrid.Columns.GridColumn colJ2_job;
        private DevExpress.XtraGrid.Columns.GridColumn colRwo;
        private DevExpress.XtraGrid.Columns.GridColumn colQn;
        private DevExpress.XtraGrid.Columns.GridColumn colBcolor;
        private DevExpress.XtraGrid.Columns.GridColumn colRDProcessing;
        private DevExpress.XtraGrid.Columns.GridColumn colWoc;
        private DevExpress.XtraGrid.Columns.GridColumn colWsLocation;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colQNQty;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colOptWs;
        private DevExpress.XtraGrid.Columns.GridColumn colWDeskQty;
        private DevExpress.XtraGrid.Columns.GridColumn colWsRDProcessing;
        private DevExpress.XtraGrid.Columns.GridColumn colStartTime;
        private DevExpress.XtraGrid.Columns.GridColumn colEndTime;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateTime;
        private DevExpress.XtraBars.BarButtonItem btnGetData;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalDesk;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalWs;
        private DevExpress.XtraGrid.Columns.GridColumn colClass;
        private DevExpress.XtraGrid.Columns.GridColumn colCOP;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_COP;
        private DevExpress.XtraGrid.Columns.GridColumn colHasAlertLog;
        private DevExpress.XtraGrid.Columns.GridColumn colOneWeekFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colTwoWeekFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colThreeWeekFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colYNConfirme;
    }
}
