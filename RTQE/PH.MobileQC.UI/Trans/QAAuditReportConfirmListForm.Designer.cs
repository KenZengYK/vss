namespace PH.MobileQC.UI.Trans
{
    partial class QAAuditReportConfirmListForm
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
            this.btnWsConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.btnQAConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.btnSIConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQC_time = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQCCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQCMan = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProductQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWsConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQAConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSIConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colImproveActionPlan = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barStaticItem1 = new DevExpress.XtraBars.BarStaticItem();
            this.barItemFactory = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.btnQuery = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnWsConfirm,
            this.btnQAConfirm,
            this.btnSIConfirm,
            this.barStaticItem1,
            this.barItemFactory,
            this.btnQuery});
            this.objbarManager.MaxItemId = 66;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBox2});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barStaticItem1, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.Width, this.barItemFactory, "", false, true, true, 50),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnQuery),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnWsConfirm, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnQAConfirm, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSIConfirm, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1447, 427);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colQC_time,
            this.colWorkShop,
            this.colLine,
            this.colProject,
            this.colWO,
            this.colStyle,
            this.colColor,
            this.colProductQty,
            this.colQCCount,
            this.colAuditType,
            this.colAuditResult,
            this.colQCMan,
            this.colWsConfirm,
            this.colQAConfirm,
            this.colSIConfirm,
            this.colImproveActionPlan});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Master_Final);
            // 
            // btnWsConfirm
            // 
            this.btnWsConfirm.Caption = "Ws Confirm";
            this.btnWsConfirm.Id = 60;
            this.btnWsConfirm.Name = "btnWsConfirm";
            this.btnWsConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnWsConfirm_ItemClick);
            // 
            // btnQAConfirm
            // 
            this.btnQAConfirm.Caption = "QA Confirm";
            this.btnQAConfirm.Id = 61;
            this.btnQAConfirm.Name = "btnQAConfirm";
            this.btnQAConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnQAConfirm_ItemClick);
            // 
            // btnSIConfirm
            // 
            this.btnSIConfirm.Caption = "SI Confirm";
            this.btnSIConfirm.Id = 62;
            this.btnSIConfirm.Name = "btnSIConfirm";
            this.btnSIConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSIConfirm_ItemClick);
            // 
            // colLine
            // 
            this.colLine.Caption = "生產線";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 2;
            // 
            // colProject
            // 
            this.colProject.Caption = "工程號";
            this.colProject.FieldName = "Project";
            this.colProject.Name = "colProject";
            this.colProject.Visible = true;
            this.colProject.VisibleIndex = 3;
            // 
            // colWO
            // 
            this.colWO.Caption = "制單";
            this.colWO.FieldName = "WO";
            this.colWO.Name = "colWO";
            this.colWO.Visible = true;
            this.colWO.VisibleIndex = 4;
            // 
            // colStyle
            // 
            this.colStyle.Caption = "款號";
            this.colStyle.FieldName = "Style";
            this.colStyle.Name = "colStyle";
            this.colStyle.Visible = true;
            this.colStyle.VisibleIndex = 5;
            // 
            // colQC_time
            // 
            this.colQC_time.Caption = "審查日期";
            this.colQC_time.DisplayFormat.FormatString = "yyyy-MM-dd HH:mm:ss";
            this.colQC_time.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colQC_time.FieldName = "QC_time";
            this.colQC_time.Name = "colQC_time";
            this.colQC_time.Visible = true;
            this.colQC_time.VisibleIndex = 0;
            this.colQC_time.Width = 125;
            // 
            // colQCCount
            // 
            this.colQCCount.Caption = "檢驗數量";
            this.colQCCount.FieldName = "QCCount";
            this.colQCCount.Name = "colQCCount";
            this.colQCCount.Visible = true;
            this.colQCCount.VisibleIndex = 8;
            // 
            // colQCMan
            // 
            this.colQCMan.Caption = "質檢員";
            this.colQCMan.FieldName = "QCMan";
            this.colQCMan.Name = "colQCMan";
            this.colQCMan.Visible = true;
            this.colQCMan.VisibleIndex = 11;
            // 
            // colColor
            // 
            this.colColor.Caption = "顏色";
            this.colColor.FieldName = "Color";
            this.colColor.Name = "colColor";
            this.colColor.Visible = true;
            this.colColor.VisibleIndex = 6;
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "車間";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 1;
            // 
            // colProductQty
            // 
            this.colProductQty.Caption = "生產數量";
            this.colProductQty.FieldName = "ProductQty";
            this.colProductQty.Name = "colProductQty";
            this.colProductQty.Visible = true;
            this.colProductQty.VisibleIndex = 7;
            // 
            // colAuditType
            // 
            this.colAuditType.Caption = "審查方法";
            this.colAuditType.FieldName = "AuditType";
            this.colAuditType.Name = "colAuditType";
            this.colAuditType.Visible = true;
            this.colAuditType.VisibleIndex = 9;
            // 
            // colAuditResult
            // 
            this.colAuditResult.Caption = "審查結果";
            this.colAuditResult.FieldName = "AuditResult";
            this.colAuditResult.Name = "colAuditResult";
            this.colAuditResult.Visible = true;
            this.colAuditResult.VisibleIndex = 10;
            // 
            // colWsConfirm
            // 
            this.colWsConfirm.Caption = "車間確認";
            this.colWsConfirm.FieldName = "WsConfirm";
            this.colWsConfirm.Name = "colWsConfirm";
            this.colWsConfirm.Visible = true;
            this.colWsConfirm.VisibleIndex = 12;
            // 
            // colQAConfirm
            // 
            this.colQAConfirm.Caption = "QA審核";
            this.colQAConfirm.FieldName = "QAConfirm";
            this.colQAConfirm.Name = "colQAConfirm";
            this.colQAConfirm.Visible = true;
            this.colQAConfirm.VisibleIndex = 13;
            // 
            // colSIConfirm
            // 
            this.colSIConfirm.Caption = "SI確認";
            this.colSIConfirm.FieldName = "SIConfirm";
            this.colSIConfirm.Name = "colSIConfirm";
            this.colSIConfirm.Visible = true;
            this.colSIConfirm.VisibleIndex = 14;
            // 
            // colImproveActionPlan
            // 
            this.colImproveActionPlan.Caption = "改善行動計劃";
            this.colImproveActionPlan.FieldName = "ImproveActionPlan";
            this.colImproveActionPlan.Name = "colImproveActionPlan";
            this.colImproveActionPlan.Visible = true;
            this.colImproveActionPlan.VisibleIndex = 15;
            this.colImproveActionPlan.Width = 260;
            // 
            // barStaticItem1
            // 
            this.barStaticItem1.Caption = "Factory";
            this.barStaticItem1.Id = 63;
            this.barStaticItem1.Name = "barStaticItem1";
            this.barStaticItem1.TextAlignment = System.Drawing.StringAlignment.Near;
            // 
            // barItemFactory
            // 
            this.barItemFactory.Caption = "barEditItem1";
            this.barItemFactory.Edit = this.repositoryItemComboBox2;
            this.barItemFactory.EditValue = "SL";
            this.barItemFactory.Id = 64;
            this.barItemFactory.Name = "barItemFactory";
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "SL",
            "RX",
            "CL"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // btnQuery
            // 
            this.btnQuery.Caption = "Query";
            this.btnQuery.Id = 65;
            this.btnQuery.Name = "btnQuery";
            this.btnQuery.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnQuery_ItemClick);
            // 
            // QAAuditReportConfirmListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QAAuditReportConfirmListForm";
            this.Size = new System.Drawing.Size(1447, 454);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colProject;
        private DevExpress.XtraGrid.Columns.GridColumn colWO;
        private DevExpress.XtraGrid.Columns.GridColumn colStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colQC_time;
        private DevExpress.XtraGrid.Columns.GridColumn colQCCount;
        private DevExpress.XtraGrid.Columns.GridColumn colQCMan;
        private DevExpress.XtraGrid.Columns.GridColumn colColor;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colProductQty;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditType;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditResult;
        private DevExpress.XtraGrid.Columns.GridColumn colWsConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colQAConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colSIConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colImproveActionPlan;
        public DevExpress.XtraBars.BarButtonItem btnWsConfirm;
        public DevExpress.XtraBars.BarButtonItem btnQAConfirm;
        public DevExpress.XtraBars.BarButtonItem btnSIConfirm;
        private DevExpress.XtraBars.BarStaticItem barStaticItem1;
        private DevExpress.XtraBars.BarEditItem barItemFactory;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraBars.BarButtonItem btnQuery;
    }
}
