namespace PH.LWPM.UI.LB4
{
    partial class LB4PListFrm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStartTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEndTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsConfirmed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBcolor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colYNConfirme = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnHistory = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnResume = new DevExpress.XtraBars.BarButtonItem();
            this.colOneWeekFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTwoWeekFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colThreeWeekFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colyyyy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Location = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnBatchAdd = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnAdd = new DevExpress.XtraBars.BarButtonItem();
            this.Report = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.colQNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Table2 = new DevExpress.XtraBars.BarButtonItem();
            this.Table3 = new DevExpress.XtraBars.BarButtonItem();
            this.OptPermitbp = new DevExpress.XtraBars.BarButtonItem();
            this.ItemchkColorFilter = new DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit();
            this.barItemColorFilter = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.colWsQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeskQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnChangeLine = new DevExpress.XtraBars.BarButtonItem();
            this.colQNShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ2_job = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemchkColorFilter)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnHistory,
            this.barBtnResume,
            this.barBtnBatchAdd,
            this.barBtnAdd,
            this.Report,
            this.barButtonItem1,
            this.Table2,
            this.Table3,
            this.OptPermitbp,
            this.barItemColorFilter,
            this.barButtonItem2,
            this.btnChangeLine});
            this.objbarManager.MaxItemId = 50;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ItemchkColorFilter,
            this.repositoryItemComboBox2});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnResume),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barBtnHistory, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnAdd),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnChangeLine, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.Report, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.OptPermitbp),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.Width, this.barItemColorFilter, "", true, true, false, 90)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode2.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2});
            this.objListGridControl.Size = new System.Drawing.Size(1679, 388);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.Location,
            this.colLineCode,
            this.colCustStyle,
            this.colPHStyle,
            this.colStartTime,
            this.colEndTime,
            this.colVersion,
            this.colIsConfirmed,
            this.colJ_NO,
            this.colBcolor,
            this.colQNQty,
            this.colYNConfirme,
            this.colOneWeekFlag,
            this.colTwoWeekFlag,
            this.colThreeWeekFlag,
            this.colyyyy,
            this.colWsQty,
            this.colDeskQty,
            this.colQNShow,
            this.colJ2_job});
            this.objListGridView.GroupCount = 4;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceEvenRow = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colFactory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Location, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLineCode, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colIsConfirmed, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            // 
            // colLineCode
            // 
            this.colLineCode.Caption = "Line#";
            this.colLineCode.FieldName = "LineCode";
            this.colLineCode.Name = "colLineCode";
            this.colLineCode.Width = 96;
            // 
            // colCustStyle
            // 
            this.colCustStyle.Caption = "Cust Style";
            this.colCustStyle.FieldName = "CustStyleCode";
            this.colCustStyle.Name = "colCustStyle";
            this.colCustStyle.Visible = true;
            this.colCustStyle.VisibleIndex = 1;
            this.colCustStyle.Width = 108;
            // 
            // colPHStyle
            // 
            this.colPHStyle.Caption = "PH Style";
            this.colPHStyle.FieldName = "PHStyleCode";
            this.colPHStyle.Name = "colPHStyle";
            this.colPHStyle.Visible = true;
            this.colPHStyle.VisibleIndex = 0;
            this.colPHStyle.Width = 140;
            // 
            // colStartTime
            // 
            this.colStartTime.Caption = "QN Start dd";
            this.colStartTime.DisplayFormat.FormatString = "yy/MM/dd";
            this.colStartTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStartTime.FieldName = "StartTimeShow";
            this.colStartTime.Name = "colStartTime";
            this.colStartTime.Visible = true;
            this.colStartTime.VisibleIndex = 3;
            this.colStartTime.Width = 88;
            // 
            // colEndTime
            // 
            this.colEndTime.Caption = "QN End dd";
            this.colEndTime.DisplayFormat.FormatString = "yy/MM/dd";
            this.colEndTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colEndTime.FieldName = "EndTime";
            this.colEndTime.Name = "colEndTime";
            this.colEndTime.Visible = true;
            this.colEndTime.VisibleIndex = 4;
            this.colEndTime.Width = 82;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "LB\r\nVersion";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 11;
            this.colVersion.Width = 62;
            // 
            // colIsConfirmed
            // 
            this.colIsConfirmed.Caption = "RD processing";
            this.colIsConfirmed.FieldName = "ConfirmShow";
            this.colIsConfirmed.Name = "colIsConfirmed";
            this.colIsConfirmed.Width = 126;
            // 
            // colJ_NO
            // 
            this.colJ_NO.Caption = "Proj#";
            this.colJ_NO.FieldName = "j_NO";
            this.colJ_NO.Name = "colJ_NO";
            this.colJ_NO.Visible = true;
            this.colJ_NO.VisibleIndex = 5;
            this.colJ_NO.Width = 106;
            // 
            // colBcolor
            // 
            this.colBcolor.Caption = "Color\r\nCode";
            this.colBcolor.FieldName = "Bcolor";
            this.colBcolor.Name = "colBcolor";
            this.colBcolor.Visible = true;
            this.colBcolor.VisibleIndex = 2;
            this.colBcolor.Width = 49;
            // 
            // colYNConfirme
            // 
            this.colYNConfirme.Caption = "gridColumn3";
            this.colYNConfirme.FieldName = "YNConfirme";
            this.colYNConfirme.Name = "colYNConfirme";
            // 
            // barBtnHistory
            // 
            this.barBtnHistory.Caption = "History";
            this.barBtnHistory.Id = 35;
            this.barBtnHistory.Name = "barBtnHistory";
            this.barBtnHistory.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnHistory_ItemClick);
            // 
            // barBtnResume
            // 
            this.barBtnResume.Caption = "Resume";
            this.barBtnResume.Id = 36;
            this.barBtnResume.Name = "barBtnResume";
            this.barBtnResume.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnResume_ItemClick);
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
            // colyyyy
            // 
            this.colyyyy.Caption = "yyyy";
            this.colyyyy.FieldName = "YNLB5";
            this.colyyyy.Name = "colyyyy";
            // 
            // Location
            // 
            this.Location.Caption = "Line Loc.";
            this.Location.FieldName = "LocationShow";
            this.Location.Name = "Location";
            this.Location.Width = 96;
            // 
            // barBtnBatchAdd
            // 
            this.barBtnBatchAdd.Caption = "Batch Add";
            this.barBtnBatchAdd.Id = 37;
            this.barBtnBatchAdd.Name = "barBtnBatchAdd";
            this.barBtnBatchAdd.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAdd
            // 
            this.barBtnAdd.Caption = "Add";
            this.barBtnAdd.Id = 38;
            this.barBtnAdd.Name = "barBtnAdd";
            this.barBtnAdd.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnAdd_ItemClick);
            // 
            // Report
            // 
            this.Report.Caption = "Opt Permit";
            this.Report.Id = 39;
            this.Report.Name = "Report";
            this.Report.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.Report_ItemClick);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Opt Permit Summary";
            this.barButtonItem1.Id = 40;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // colQNQty
            // 
            this.colQNQty.Caption = "QN\r\nQty";
            this.colQNQty.FieldName = "QNQty";
            this.colQNQty.Name = "colQNQty";
            this.colQNQty.Visible = true;
            this.colQNQty.VisibleIndex = 8;
            this.colQNQty.Width = 63;
            // 
            // Table2
            // 
            this.Table2.Caption = "Table2";
            this.Table2.Id = 41;
            this.Table2.Name = "Table2";
            this.Table2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.Table2_ItemClick);
            // 
            // Table3
            // 
            this.Table3.Caption = "Table3";
            this.Table3.Id = 42;
            this.Table3.Name = "Table3";
            this.Table3.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.Table3_ItemClick);
            // 
            // OptPermitbp
            // 
            this.OptPermitbp.Caption = "Opt Permit BD";
            this.OptPermitbp.Id = 43;
            this.OptPermitbp.Name = "OptPermitbp";
            this.OptPermitbp.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.OptPermitbp_ItemClick);
            // 
            // ItemchkColorFilter
            // 
            this.ItemchkColorFilter.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ItemchkColorFilter.CloseOnLostFocus = false;
            this.ItemchkColorFilter.Items.AddRange(new DevExpress.XtraEditors.Controls.CheckedListBoxItem[] {
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Red", System.Windows.Forms.CheckState.Checked),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Yellow (1 week)", System.Windows.Forms.CheckState.Checked),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Green (2 week)", System.Windows.Forms.CheckState.Checked),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Blue (3 week)", System.Windows.Forms.CheckState.Checked),
            new DevExpress.XtraEditors.Controls.CheckedListBoxItem("Other (3 week later)", System.Windows.Forms.CheckState.Checked)});
            this.ItemchkColorFilter.Name = "ItemchkColorFilter";
            // 
            // barItemColorFilter
            // 
            this.barItemColorFilter.Caption = "barEditItem1";
            this.barItemColorFilter.Edit = this.repositoryItemComboBox2;
            this.barItemColorFilter.EditValue = "All";
            this.barItemColorFilter.Id = 45;
            this.barItemColorFilter.Name = "barItemColorFilter";
            this.barItemColorFilter.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barItemColorFilter.EditValueChanged += new System.EventHandler(this.barItemColorFilter_EditValueChanged);
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "All",
            "Red (1 Day)",
            "Yellow (1 Week)",
            "Green (2 Week)",
            "Blue (3 Week)"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "SendEmail";
            this.barButtonItem2.Id = 46;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem2_ItemClick);
            // 
            // colWsQty
            // 
            this.colWsQty.Caption = "Opt Ws\r\nTtl";
            this.colWsQty.FieldName = "WsQty";
            this.colWsQty.Name = "colWsQty";
            this.colWsQty.Visible = true;
            this.colWsQty.VisibleIndex = 9;
            this.colWsQty.Width = 64;
            // 
            // colDeskQty
            // 
            this.colDeskQty.Caption = "W.Desk\r\nTtl";
            this.colDeskQty.FieldName = "DeskQty";
            this.colDeskQty.Name = "colDeskQty";
            this.colDeskQty.Visible = true;
            this.colDeskQty.VisibleIndex = 10;
            this.colDeskQty.Width = 65;
            // 
            // btnChangeLine
            // 
            this.btnChangeLine.Caption = "Change Line";
            this.btnChangeLine.Id = 47;
            this.btnChangeLine.Name = "btnChangeLine";
            this.btnChangeLine.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnChangeLine_ItemClick);
            // 
            // colQNShow
            // 
            this.colQNShow.Caption = "QN# suffix\r\n(*QN# prefix = WO#)";
            this.colQNShow.FieldName = "QNShow";
            this.colQNShow.Name = "colQNShow";
            this.colQNShow.Visible = true;
            this.colQNShow.VisibleIndex = 7;
            this.colQNShow.Width = 137;
            // 
            // colJ2_job
            // 
            this.colJ2_job.Caption = "WO#";
            this.colJ2_job.FieldName = "J2_job";
            this.colJ2_job.Name = "colJ2_job";
            this.colJ2_job.Visible = true;
            this.colJ2_job.VisibleIndex = 6;
            // 
            // LB4PListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LB4PListFrm";
            this.Size = new System.Drawing.Size(1679, 415);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemchkColorFilter)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colLineCode;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colStartTime;
        private DevExpress.XtraGrid.Columns.GridColumn colEndTime;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colIsConfirmed;
        private DevExpress.XtraGrid.Columns.GridColumn colJ_NO;
        private DevExpress.XtraGrid.Columns.GridColumn colBcolor;
        private DevExpress.XtraGrid.Columns.GridColumn colYNConfirme;
        private DevExpress.XtraBars.BarButtonItem barBtnHistory;
        private DevExpress.XtraBars.BarButtonItem barBtnResume;
        private DevExpress.XtraGrid.Columns.GridColumn colOneWeekFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colTwoWeekFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colThreeWeekFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colyyyy;
        private DevExpress.XtraGrid.Columns.GridColumn Location;
        private DevExpress.XtraBars.BarButtonItem barBtnBatchAdd;
        private DevExpress.XtraBars.BarButtonItem barBtnAdd;
        private DevExpress.XtraBars.BarButtonItem Report;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Columns.GridColumn colQNQty;
        private DevExpress.XtraBars.BarButtonItem Table2;
        private DevExpress.XtraBars.BarButtonItem Table3;
        private DevExpress.XtraBars.BarButtonItem OptPermitbp;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit ItemchkColorFilter;
        private DevExpress.XtraBars.BarEditItem barItemColorFilter;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraGrid.Columns.GridColumn colWsQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDeskQty;
        private DevExpress.XtraBars.BarButtonItem btnChangeLine;
        private DevExpress.XtraGrid.Columns.GridColumn colQNShow;
        private DevExpress.XtraGrid.Columns.GridColumn colJ2_job;
    }
}
