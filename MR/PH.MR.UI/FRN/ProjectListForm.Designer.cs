namespace PH.MR.UI.FRN
{
    partial class ProjectListForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnGetMR = new DevExpress.XtraBars.BarButtonItem();
            this.gcFRNNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFRNDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcProjNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSaleOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPlanDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPreparedBy = new DevExpress.XtraGrid.Columns.GridColumn();
            this.grcMarkerManager = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcOAManager = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnGetMR,
            this.btnPrint});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnGetMR, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(929, 427);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcFRNNo,
            this.gcFRNDate,
            this.gcProjNo,
            this.gcSaleOrder,
            this.gcConfirmDate,
            this.gcPlanDate,
            this.gcPreparedBy,
            this.grcMarkerManager,
            this.gcOAManager,
            this.gcMethod});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // btnGetMR
            // 
            this.btnGetMR.Caption = "Get MR from AS400";
            this.btnGetMR.Id = 60;
            this.btnGetMR.Name = "btnGetMR";
            this.btnGetMR.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnGetMR_ItemClick);
            // 
            // gcFRNNo
            // 
            this.gcFRNNo.Caption = "FRN No.";
            this.gcFRNNo.FieldName = "FRNNO";
            this.gcFRNNo.Name = "gcFRNNo";
            this.gcFRNNo.Visible = true;
            this.gcFRNNo.VisibleIndex = 0;
            // 
            // gcFRNDate
            // 
            this.gcFRNDate.Caption = "FRN Date";
            this.gcFRNDate.FieldName = "FRNDate";
            this.gcFRNDate.Name = "gcFRNDate";
            this.gcFRNDate.Visible = true;
            this.gcFRNDate.VisibleIndex = 1;
            // 
            // gcProjNo
            // 
            this.gcProjNo.Caption = "Project No.";
            this.gcProjNo.FieldName = "ProjectNo";
            this.gcProjNo.Name = "gcProjNo";
            this.gcProjNo.Visible = true;
            this.gcProjNo.VisibleIndex = 2;
            this.gcProjNo.Width = 86;
            // 
            // gcSaleOrder
            // 
            this.gcSaleOrder.Caption = "Sale Order";
            this.gcSaleOrder.FieldName = "SaleOrder";
            this.gcSaleOrder.Name = "gcSaleOrder";
            this.gcSaleOrder.Visible = true;
            this.gcSaleOrder.VisibleIndex = 3;
            this.gcSaleOrder.Width = 95;
            // 
            // gcConfirmDate
            // 
            this.gcConfirmDate.Caption = "Confirm Date";
            this.gcConfirmDate.FieldName = "ConfirmDate";
            this.gcConfirmDate.Name = "gcConfirmDate";
            this.gcConfirmDate.Visible = true;
            this.gcConfirmDate.VisibleIndex = 4;
            this.gcConfirmDate.Width = 98;
            // 
            // gcPlanDate
            // 
            this.gcPlanDate.Caption = "Planning Date";
            this.gcPlanDate.FieldName = "PlanMasterDate";
            this.gcPlanDate.Name = "gcPlanDate";
            this.gcPlanDate.Visible = true;
            this.gcPlanDate.VisibleIndex = 5;
            this.gcPlanDate.Width = 157;
            // 
            // gcPreparedBy
            // 
            this.gcPreparedBy.Caption = "Prepared By";
            this.gcPreparedBy.FieldName = "PreparedBy";
            this.gcPreparedBy.Name = "gcPreparedBy";
            this.gcPreparedBy.Visible = true;
            this.gcPreparedBy.VisibleIndex = 6;
            this.gcPreparedBy.Width = 95;
            // 
            // grcMarkerManager
            // 
            this.grcMarkerManager.Caption = "CAD Manager";
            this.grcMarkerManager.Name = "grcMarkerManager";
            this.grcMarkerManager.Visible = true;
            this.grcMarkerManager.VisibleIndex = 7;
            this.grcMarkerManager.Width = 89;
            // 
            // gcOAManager
            // 
            this.gcOAManager.Caption = "MM Manager";
            this.gcOAManager.FieldName = "OAManager";
            this.gcOAManager.Name = "gcOAManager";
            this.gcOAManager.Visible = true;
            this.gcOAManager.VisibleIndex = 8;
            this.gcOAManager.Width = 83;
            // 
            // gcMethod
            // 
            this.gcMethod.Caption = "Sort Method";
            this.gcMethod.FieldName = "Method";
            this.gcMethod.Name = "gcMethod";
            this.gcMethod.Visible = true;
            this.gcMethod.VisibleIndex = 9;
            this.gcMethod.Width = 121;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 61;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // ProjectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "ProjectListForm";
            this.Size = new System.Drawing.Size(929, 454);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem btnGetMR;
        private DevExpress.XtraGrid.Columns.GridColumn gcFRNNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcFRNDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcProjNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcSaleOrder;
        private DevExpress.XtraGrid.Columns.GridColumn gcConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcPlanDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcPreparedBy;
        private DevExpress.XtraGrid.Columns.GridColumn grcMarkerManager;
        private DevExpress.XtraGrid.Columns.GridColumn gcOAManager;
        private DevExpress.XtraGrid.Columns.GridColumn gcMethod;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
    }
}
