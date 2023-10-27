namespace PH.LWPM.UI.LB5
{
    partial class LB5PListFrm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.repositoryItemProgressBar2 = new DevExpress.XtraEditors.Repository.RepositoryItemProgressBar();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStartTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEndTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsConfirmed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ_NO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJ2_job = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRwo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBcolor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnHistory = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnResume = new DevExpress.XtraBars.BarButtonItem();
            this.colYNHaveLB5Data = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ProgressBar1 = new DevExpress.XtraEditors.Repository.RepositoryItemProgressBar();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colLocation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUpdateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnLog = new DevExpress.XtraBars.BarButtonItem();
            this.colNeedReArranging = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemProgressBar2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProgressBar1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnHistory,
            this.barBtnResume,
            this.btnLog});
            this.objbarManager.MaxItemId = 53;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barBtnHistory, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnResume)});
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.WPMaster);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Size = new System.Drawing.Size(1211, 363);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.colLocation,
            this.colLineCode,
            this.colCustStyle,
            this.colPHStyle,
            this.colStartTime,
            this.colEndTime,
            this.colIsConfirmed,
            this.colJ_NO,
            this.colJ2_job,
            this.gridColumn2,
            this.colRwo,
            this.colQn,
            this.colBcolor,
            this.colVersion,
            this.colYNHaveLB5Data,
            this.colUpdateTime,
            this.colNeedReArranging});
            this.objListGridView.GroupCount = 4;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceEvenRow = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colFactory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLocation, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLineCode, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colIsConfirmed, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colStartTime, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // repositoryItemProgressBar2
            // 
            this.repositoryItemProgressBar2.Name = "repositoryItemProgressBar2";
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            // 
            // colLineCode
            // 
            this.colLineCode.Caption = "Line";
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
            this.colCustStyle.Width = 77;
            // 
            // colPHStyle
            // 
            this.colPHStyle.Caption = "PH Style";
            this.colPHStyle.FieldName = "PHStyleCode";
            this.colPHStyle.Name = "colPHStyle";
            this.colPHStyle.Visible = true;
            this.colPHStyle.VisibleIndex = 0;
            this.colPHStyle.Width = 115;
            // 
            // colStartTime
            // 
            this.colStartTime.Caption = "Start Time";
            this.colStartTime.DisplayFormat.FormatString = "yy/MM/dd";
            this.colStartTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStartTime.FieldName = "StartTimeShow";
            this.colStartTime.Name = "colStartTime";
            this.colStartTime.Visible = true;
            this.colStartTime.VisibleIndex = 2;
            this.colStartTime.Width = 95;
            // 
            // colEndTime
            // 
            this.colEndTime.Caption = "End Time";
            this.colEndTime.DisplayFormat.FormatString = "yy/MM/dd";
            this.colEndTime.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colEndTime.FieldName = "EndTime";
            this.colEndTime.Name = "colEndTime";
            this.colEndTime.Visible = true;
            this.colEndTime.VisibleIndex = 3;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 12;
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
            this.colJ_NO.Caption = "Proj No";
            this.colJ_NO.FieldName = "j_NO";
            this.colJ_NO.Name = "colJ_NO";
            this.colJ_NO.Visible = true;
            this.colJ_NO.VisibleIndex = 6;
            this.colJ_NO.Width = 100;
            // 
            // colJ2_job
            // 
            this.colJ2_job.Caption = "WO";
            this.colJ2_job.FieldName = "J2_job";
            this.colJ2_job.Name = "colJ2_job";
            this.colJ2_job.Visible = true;
            this.colJ2_job.VisibleIndex = 7;
            this.colJ2_job.Width = 94;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "WOc";
            this.gridColumn2.FieldName = "Woc";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 8;
            // 
            // colRwo
            // 
            this.colRwo.Caption = "RWO";
            this.colRwo.FieldName = "Rwo";
            this.colRwo.Name = "colRwo";
            this.colRwo.Visible = true;
            this.colRwo.VisibleIndex = 9;
            // 
            // colQn
            // 
            this.colQn.Caption = "QN";
            this.colQn.FieldName = "Qn";
            this.colQn.Name = "colQn";
            this.colQn.Visible = true;
            this.colQn.VisibleIndex = 10;
            this.colQn.Width = 57;
            // 
            // colBcolor
            // 
            this.colBcolor.Caption = "Color";
            this.colBcolor.FieldName = "Bcolor";
            this.colBcolor.Name = "colBcolor";
            this.colBcolor.Visible = true;
            this.colBcolor.VisibleIndex = 11;
            this.colBcolor.Width = 65;
            // 
            // barBtnHistory
            // 
            this.barBtnHistory.Caption = "History";
            this.barBtnHistory.Glyph = global::PH.LWPM.UI.Properties.Resources.box;
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
            // colYNHaveLB5Data
            // 
            this.colYNHaveLB5Data.Caption = "YNHaveLB5Data";
            this.colYNHaveLB5Data.FieldName = "YNHaveLB5Data";
            this.colYNHaveLB5Data.Name = "colYNHaveLB5Data";
            // 
            // ProgressBar1
            // 
            this.ProgressBar1.Name = "ProgressBar1";
            this.ProgressBar1.ProgressViewStyle = DevExpress.XtraEditors.Controls.ProgressViewStyle.Solid;
            this.ProgressBar1.ShowTitle = true;
            this.ProgressBar1.Step = 1;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // colLocation
            // 
            this.colLocation.Caption = "Workshop";
            this.colLocation.FieldName = "Location";
            this.colLocation.Name = "colLocation";
            // 
            // colUpdateTime
            // 
            this.colUpdateTime.Caption = "Rearrange Date/Time";
            this.colUpdateTime.FieldName = "ReArrangingDateTimeShow";
            this.colUpdateTime.Name = "colUpdateTime";
            this.colUpdateTime.Visible = true;
            this.colUpdateTime.VisibleIndex = 4;
            this.colUpdateTime.Width = 139;
            // 
            // btnLog
            // 
            this.btnLog.Caption = "Change List";
            this.btnLog.Id = 46;
            this.btnLog.Name = "btnLog";
            this.btnLog.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLog_ItemClick);
            // 
            // colNeedReArranging
            // 
            this.colNeedReArranging.Caption = "Need (Y/N)";
            this.colNeedReArranging.FieldName = "NeedReArranging";
            this.colNeedReArranging.Name = "colNeedReArranging";
            this.colNeedReArranging.Visible = true;
            this.colNeedReArranging.VisibleIndex = 5;
            this.colNeedReArranging.Width = 89;
            // 
            // LB5PListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LB5PListFrm";
            this.Size = new System.Drawing.Size(1211, 390);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemProgressBar2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ProgressBar1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
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
        private DevExpress.XtraGrid.Columns.GridColumn colJ2_job;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn colRwo;
        private DevExpress.XtraGrid.Columns.GridColumn colQn;
        private DevExpress.XtraGrid.Columns.GridColumn colBcolor;
        private DevExpress.XtraBars.BarButtonItem barBtnHistory;
        private DevExpress.XtraBars.BarButtonItem barBtnResume;
        private DevExpress.XtraGrid.Columns.GridColumn colYNHaveLB5Data;
        private DevExpress.XtraEditors.Repository.RepositoryItemProgressBar ProgressBar1;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemProgressBar repositoryItemProgressBar2;
        private DevExpress.XtraGrid.Columns.GridColumn colLocation;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdateTime;
        private DevExpress.XtraBars.BarButtonItem btnLog;
        private DevExpress.XtraGrid.Columns.GridColumn colNeedReArranging;
    }
}
