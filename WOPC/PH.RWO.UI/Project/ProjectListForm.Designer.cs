namespace PH.RWO.UI
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.gvWOs = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSeasonRange = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPackingMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCatNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCompletedDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SalesOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Customer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Factory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SoIssueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnGetAS400Data = new DevExpress.XtraBars.BarButtonItem();
            this.btnProjectStatus = new DevExpress.XtraBars.BarButtonItem();
            this.colCompletedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPDNDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnShowWOs = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWOs)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnGetAS400Data,
            this.btnProjectStatus,
            this.btnShowWOs});
            this.objbarManager.MaxItemId = 39;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnShowWOs, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnGetAS400Data),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnProjectStatus, true)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.LevelTemplate = this.gvWOs;
            gridLevelNode1.RelationName = "WorkOrders";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Size = new System.Drawing.Size(1117, 323);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvWOs});
            // 
            // objListGridView
            // 
            this.objListGridView.ChildGridLevelName = "WorkOrders";
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Company,
            this.SalesOrderNo,
            this.ProjectNo,
            this.Customer,
            this.Factory,
            this.SoIssueDate,
            this.colCompletedDate,
            this.colPDNDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsDetail.ShowDetailTabs = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.Project);
            // 
            // gvWOs
            // 
            this.gvWOs.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colWorkOrderNo,
            this.colSalesOrderLine,
            this.colStyleNo,
            this.colCustomerStyleNo,
            this.colSeasonRange,
            this.colShipMode,
            this.colPackingMethod,
            this.colWOStatus,
            this.colCatNo,
            this.gridColumn1,
            this.colCompletedDate1});
            this.gvWOs.GridControl = this.objListGridControl;
            this.gvWOs.Name = "gvWOs";
            this.gvWOs.OptionsBehavior.Editable = false;
            this.gvWOs.OptionsCustomization.AllowFilter = false;
            this.gvWOs.OptionsCustomization.AllowGroup = false;
            this.gvWOs.OptionsDetail.EnableMasterViewMode = false;
            this.gvWOs.OptionsDetail.ShowDetailTabs = false;
            this.gvWOs.OptionsView.ColumnAutoWidth = false;
            this.gvWOs.OptionsView.ShowGroupPanel = false;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO No.";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 1;
            this.colWorkOrderNo.Width = 81;
            // 
            // colSalesOrderLine
            // 
            this.colSalesOrderLine.Caption = "Ord Line";
            this.colSalesOrderLine.FieldName = "SalesOrderLine";
            this.colSalesOrderLine.Name = "colSalesOrderLine";
            this.colSalesOrderLine.Visible = true;
            this.colSalesOrderLine.VisibleIndex = 2;
            this.colSalesOrderLine.Width = 56;
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "ERP Style No.";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 3;
            this.colStyleNo.Width = 101;
            // 
            // colCustomerStyleNo
            // 
            this.colCustomerStyleNo.Caption = "Cust Style No.";
            this.colCustomerStyleNo.FieldName = "CustomerStyleNo";
            this.colCustomerStyleNo.Name = "colCustomerStyleNo";
            this.colCustomerStyleNo.Visible = true;
            this.colCustomerStyleNo.VisibleIndex = 4;
            this.colCustomerStyleNo.Width = 120;
            // 
            // colSeasonRange
            // 
            this.colSeasonRange.Caption = "Season/Range";
            this.colSeasonRange.FieldName = "SeasonRange";
            this.colSeasonRange.Name = "colSeasonRange";
            this.colSeasonRange.Width = 109;
            // 
            // colShipMode
            // 
            this.colShipMode.Caption = "Ship Mode";
            this.colShipMode.FieldName = "ShipMode";
            this.colShipMode.Name = "colShipMode";
            this.colShipMode.Visible = true;
            this.colShipMode.VisibleIndex = 5;
            this.colShipMode.Width = 78;
            // 
            // colPackingMethod
            // 
            this.colPackingMethod.Caption = "PackingMethod";
            this.colPackingMethod.FieldName = "PackingMethod";
            this.colPackingMethod.Name = "colPackingMethod";
            this.colPackingMethod.Width = 113;
            // 
            // colWOStatus
            // 
            this.colWOStatus.Caption = "WO Status";
            this.colWOStatus.FieldName = "Status";
            this.colWOStatus.Name = "colWOStatus";
            this.colWOStatus.Visible = true;
            this.colWOStatus.VisibleIndex = 0;
            this.colWOStatus.Width = 86;
            // 
            // colCatNo
            // 
            this.colCatNo.Caption = "CatNo";
            this.colCatNo.FieldName = "CatNo";
            this.colCatNo.Name = "colCatNo";
            this.colCatNo.Width = 113;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Ex-Fty dd";
            this.gridColumn1.FieldName = "LCLExFtyShipCompleted";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 6;
            // 
            // colCompletedDate1
            // 
            this.colCompletedDate1.Caption = "WO Complete dd";
            this.colCompletedDate1.FieldName = "CompletedDate";
            this.colCompletedDate1.Name = "colCompletedDate1";
            this.colCompletedDate1.Visible = true;
            this.colCompletedDate1.VisibleIndex = 7;
            this.colCompletedDate1.Width = 134;
            // 
            // Company
            // 
            this.Company.Caption = "Company";
            this.Company.FieldName = "Company";
            this.Company.Name = "Company";
            this.Company.Width = 95;
            // 
            // SalesOrderNo
            // 
            this.SalesOrderNo.Caption = "Sales Order No";
            this.SalesOrderNo.FieldName = "SalesOrderNo";
            this.SalesOrderNo.Name = "SalesOrderNo";
            this.SalesOrderNo.Visible = true;
            this.SalesOrderNo.VisibleIndex = 0;
            this.SalesOrderNo.Width = 108;
            // 
            // ProjectNo
            // 
            this.ProjectNo.Caption = "Project No";
            this.ProjectNo.FieldName = "ProjectNo";
            this.ProjectNo.Name = "ProjectNo";
            this.ProjectNo.Visible = true;
            this.ProjectNo.VisibleIndex = 1;
            this.ProjectNo.Width = 153;
            // 
            // Customer
            // 
            this.Customer.Caption = "Customer";
            this.Customer.FieldName = "Customer";
            this.Customer.Name = "Customer";
            this.Customer.Visible = true;
            this.Customer.VisibleIndex = 2;
            this.Customer.Width = 111;
            // 
            // Factory
            // 
            this.Factory.Caption = "Factory";
            this.Factory.FieldName = "Factory";
            this.Factory.Name = "Factory";
            this.Factory.Visible = true;
            this.Factory.VisibleIndex = 3;
            this.Factory.Width = 109;
            // 
            // SoIssueDate
            // 
            this.SoIssueDate.Caption = "SO Issue dd";
            this.SoIssueDate.FieldName = "SoIssueDate";
            this.SoIssueDate.Name = "SoIssueDate";
            this.SoIssueDate.Visible = true;
            this.SoIssueDate.VisibleIndex = 4;
            this.SoIssueDate.Width = 118;
            // 
            // btnGetAS400Data
            // 
            this.btnGetAS400Data.Caption = "Get Data";
            this.btnGetAS400Data.Id = 36;
            this.btnGetAS400Data.Name = "btnGetAS400Data";
            this.btnGetAS400Data.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnGetAS400Data.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnGetAS400Data_ItemClick);
            // 
            // btnProjectStatus
            // 
            this.btnProjectStatus.Caption = "Monitor Project completed";
            this.btnProjectStatus.Id = 37;
            this.btnProjectStatus.Name = "btnProjectStatus";
            this.btnProjectStatus.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnProjectStatus_ItemClick);
            // 
            // colCompletedDate
            // 
            this.colCompletedDate.Caption = "SO Complete dd (ref.)";
            this.colCompletedDate.FieldName = "CompletedDate";
            this.colCompletedDate.Name = "colCompletedDate";
            this.colCompletedDate.Visible = true;
            this.colCompletedDate.VisibleIndex = 5;
            this.colCompletedDate.Width = 170;
            // 
            // colPDNDate
            // 
            this.colPDNDate.Caption = "PDN Date (Ex-fty date)";
            this.colPDNDate.FieldName = "PDNDate";
            this.colPDNDate.Name = "colPDNDate";
            // 
            // btnShowWOs
            // 
            this.btnShowWOs.Caption = "Show WOs";
            this.btnShowWOs.Id = 38;
            this.btnShowWOs.Name = "btnShowWOs";
            this.btnShowWOs.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnShowWOs_ItemClick);
            // 
            // ProjectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ProjectListForm";
            this.Size = new System.Drawing.Size(1117, 350);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWOs)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn Company;
        private DevExpress.XtraGrid.Columns.GridColumn SalesOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn ProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn Customer;
        private DevExpress.XtraGrid.Columns.GridColumn Factory;
        private DevExpress.XtraGrid.Columns.GridColumn SoIssueDate;
        private DevExpress.XtraBars.BarButtonItem btnGetAS400Data;
        private DevExpress.XtraBars.BarButtonItem btnProjectStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colCompletedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPDNDate;
        private DevExpress.XtraGrid.Views.Grid.GridView gvWOs;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSeasonRange;
        private DevExpress.XtraGrid.Columns.GridColumn colShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn colPackingMethod;
        private DevExpress.XtraGrid.Columns.GridColumn colWOStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colCatNo;
        private DevExpress.XtraBars.BarButtonItem btnShowWOs;
        private DevExpress.XtraGrid.Columns.GridColumn colCompletedDate1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
    }
}
