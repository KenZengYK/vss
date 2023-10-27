namespace PH.POPC.UI.NewPO
{
    partial class POHeaderListForm
    {
        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Version;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PONO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Dept;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_OrderDate;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Supplier;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PurchaseOfficerCode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PurchaseOfficer;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PaymentTermsType;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PaymentMethod;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ReceivingAddress;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_AddtionalTermsAndConditions;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_DeliveryAddress;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_OrderClass;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_NewVersion;

        private DevExpress.XtraBars.BarButtonItem barBtnRefresh;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
       // private DevExpress.XtraBars.BarButtonItem barButtonItem1;//;=new DevExpress.XtraBars.BarButtonItem();
        public DevExpress.XtraBars.BarButtonItem barBtnPoList;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_POTYPE;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Projects;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_WorkOrders;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_IsOutStanding;
        #endregion
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_Version = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Dept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.Columns_Supplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PurchaseOfficerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PurchaseOfficer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PaymentTermsType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PaymentMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ReceivingAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AddtionalTermsAndConditions = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_DeliveryAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_NewVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.Columns_IsOutStanding = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_POTYPE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Projects = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_WorkOrders = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Column_Factory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnCheckMatrix = new DevExpress.XtraBars.BarButtonItem();
            this.Columns_ClassCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnRefresh,
            this.barSubItem1,
            this.barBtnPoList,
            this.btnCheckMatrix});
            this.objbarManager.MaxItemId = 17;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPoList, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnRefresh, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCheckMatrix, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(914, 518);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Version,
            this.Columns_Company,
            this.Columns_PONO,
            this.Columns_Dept,
            this.Columns_OrderDate,
            this.Columns_Supplier,
            this.Columns_PurchaseOfficerCode,
            this.Columns_PurchaseOfficer,
            this.Columns_PaymentTermsType,
            this.Columns_PaymentMethod,
            this.Columns_ReceivingAddress,
            this.Columns_AddtionalTermsAndConditions,
            this.Columns_ShipMode,
            this.Columns_DeliveryAddress,
            this.Columns_OrderClass,
            this.Columns_ClassCode,
            this.Columns_NewVersion,
            this.Columns_IsOutStanding,
            this.Columns_POTYPE,
            this.Columns_Projects,
            this.Columns_WorkOrders,
            this.Column_Factory});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(714, 281, 208, 191);
            this.objListGridView.GroupFormat = "[#image]{1} {2}";
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_Version
            // 
            this.Columns_Version.Caption = "Version";
            this.Columns_Version.FieldName = "POVersion";
            this.Columns_Version.Name = "Columns_Version";
            this.Columns_Version.Visible = true;
            this.Columns_Version.VisibleIndex = 1;
            this.Columns_Version.Width = 81;
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.Visible = true;
            this.Columns_Company.VisibleIndex = 2;
            this.Columns_Company.Width = 88;
            // 
            // Columns_PONO
            // 
            this.Columns_PONO.Caption = "PO NO";
            this.Columns_PONO.FieldName = "PONO";
            this.Columns_PONO.Name = "Columns_PONO";
            this.Columns_PONO.Visible = true;
            this.Columns_PONO.VisibleIndex = 3;
            this.Columns_PONO.Width = 78;
            // 
            // Columns_Dept
            // 
            this.Columns_Dept.Caption = "Dept";
            this.Columns_Dept.FieldName = "Dept";
            this.Columns_Dept.Name = "Columns_Dept";
            this.Columns_Dept.Visible = true;
            this.Columns_Dept.VisibleIndex = 11;
            this.Columns_Dept.Width = 107;
            // 
            // Columns_OrderDate
            // 
            this.Columns_OrderDate.Caption = "Order Date";
            this.Columns_OrderDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.Columns_OrderDate.FieldName = "OrderDate";
            this.Columns_OrderDate.Name = "Columns_OrderDate";
            this.Columns_OrderDate.Visible = true;
            this.Columns_OrderDate.VisibleIndex = 4;
            this.Columns_OrderDate.Width = 109;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // Columns_Supplier
            // 
            this.Columns_Supplier.Caption = "Supplier";
            this.Columns_Supplier.FieldName = "Supplier";
            this.Columns_Supplier.Name = "Columns_Supplier";
            this.Columns_Supplier.Visible = true;
            this.Columns_Supplier.VisibleIndex = 5;
            this.Columns_Supplier.Width = 93;
            // 
            // Columns_PurchaseOfficerCode
            // 
            this.Columns_PurchaseOfficerCode.Caption = "Purchase Officer Code";
            this.Columns_PurchaseOfficerCode.FieldName = "PurchaseOfficerCode";
            this.Columns_PurchaseOfficerCode.Name = "Columns_PurchaseOfficerCode";
            // 
            // Columns_PurchaseOfficer
            // 
            this.Columns_PurchaseOfficer.Caption = "Purchase Officer";
            this.Columns_PurchaseOfficer.FieldName = "PurchaseOfficer";
            this.Columns_PurchaseOfficer.Name = "Columns_PurchaseOfficer";
            this.Columns_PurchaseOfficer.Visible = true;
            this.Columns_PurchaseOfficer.VisibleIndex = 6;
            this.Columns_PurchaseOfficer.Width = 126;
            // 
            // Columns_PaymentTermsType
            // 
            this.Columns_PaymentTermsType.Caption = "PaymentTerms Type";
            this.Columns_PaymentTermsType.FieldName = "PaymentTermsType";
            this.Columns_PaymentTermsType.Name = "Columns_PaymentTermsType";
            this.Columns_PaymentTermsType.Width = 135;
            // 
            // Columns_PaymentMethod
            // 
            this.Columns_PaymentMethod.Caption = "Payment Method";
            this.Columns_PaymentMethod.FieldName = "PaymentMethod";
            this.Columns_PaymentMethod.Name = "Columns_PaymentMethod";
            this.Columns_PaymentMethod.Visible = true;
            this.Columns_PaymentMethod.VisibleIndex = 9;
            this.Columns_PaymentMethod.Width = 136;
            // 
            // Columns_ReceivingAddress
            // 
            this.Columns_ReceivingAddress.Caption = "Receiving Address";
            this.Columns_ReceivingAddress.FieldName = "ReceivingAddress";
            this.Columns_ReceivingAddress.Name = "Columns_ReceivingAddress";
            // 
            // Columns_AddtionalTermsAndConditions
            // 
            this.Columns_AddtionalTermsAndConditions.Caption = "Addtional Terms And Conditions";
            this.Columns_AddtionalTermsAndConditions.FieldName = "AddtionalTermsAndConditions";
            this.Columns_AddtionalTermsAndConditions.Name = "Columns_AddtionalTermsAndConditions";
            // 
            // Columns_ShipMode
            // 
            this.Columns_ShipMode.Caption = "Ship Mode";
            this.Columns_ShipMode.FieldName = "ShipMode";
            this.Columns_ShipMode.Name = "Columns_ShipMode";
            this.Columns_ShipMode.Visible = true;
            this.Columns_ShipMode.VisibleIndex = 10;
            this.Columns_ShipMode.Width = 102;
            // 
            // Columns_DeliveryAddress
            // 
            this.Columns_DeliveryAddress.Caption = "Delivery Address";
            this.Columns_DeliveryAddress.FieldName = "DeliveryAddress";
            this.Columns_DeliveryAddress.Name = "Columns_DeliveryAddress";
            // 
            // Columns_OrderClass
            // 
            this.Columns_OrderClass.Caption = "OrderClass";
            this.Columns_OrderClass.FieldName = "OrderClass";
            this.Columns_OrderClass.Name = "Columns_OrderClass";
            // 
            // Columns_NewVersion
            // 
            this.Columns_NewVersion.Caption = "POVersion";
            this.Columns_NewVersion.FieldName = "Version";
            this.Columns_NewVersion.Name = "Columns_NewVersion";
            // 
            // barBtnRefresh
            // 
            this.barBtnRefresh.Caption = "Refresh";
            this.barBtnRefresh.Id = 11;
            this.barBtnRefresh.Name = "barBtnRefresh";
            this.barBtnRefresh.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "barSubItem1";
            this.barSubItem1.Id = 12;
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barBtnPoList
            // 
            this.barBtnPoList.Alignment = DevExpress.XtraBars.BarItemLinkAlignment.Left;
            this.barBtnPoList.Caption = "PoList";
            this.barBtnPoList.Id = 15;
            this.barBtnPoList.Name = "barBtnPoList";
            this.barBtnPoList.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // Columns_IsOutStanding
            // 
            this.Columns_IsOutStanding.Caption = "Status";
            this.Columns_IsOutStanding.FieldName = "IsOutStanding";
            this.Columns_IsOutStanding.Name = "Columns_IsOutStanding";
            this.Columns_IsOutStanding.Visible = true;
            this.Columns_IsOutStanding.VisibleIndex = 7;
            this.Columns_IsOutStanding.Width = 102;
            // 
            // Columns_POTYPE
            // 
            this.Columns_POTYPE.Caption = "POType";
            this.Columns_POTYPE.FieldName = "POTypeDesc";
            this.Columns_POTYPE.Name = "Columns_POTYPE";
            // 
            // Columns_Projects
            // 
            this.Columns_Projects.Caption = "Projects";
            this.Columns_Projects.FieldName = "ProjectNos";
            this.Columns_Projects.Name = "Columns_Projects";
            this.Columns_Projects.Visible = true;
            this.Columns_Projects.VisibleIndex = 8;
            // 
            // Columns_WorkOrders
            // 
            this.Columns_WorkOrders.Caption = "Work Order No(s)";
            this.Columns_WorkOrders.FieldName = "WorkOrders";
            this.Columns_WorkOrders.Name = "Columns_WorkOrders";
            this.Columns_WorkOrders.Visible = true;
            this.Columns_WorkOrders.VisibleIndex = 12;
            this.Columns_WorkOrders.Width = 109;
            // 
            // Column_Factory
            // 
            this.Column_Factory.Caption = "Our Production Site";
            this.Column_Factory.FieldName = "Factory";
            this.Column_Factory.Name = "Column_Factory";
            this.Column_Factory.Visible = true;
            this.Column_Factory.VisibleIndex = 13;
            this.Column_Factory.Width = 146;
            // 
            // btnCheckMatrix
            // 
            this.btnCheckMatrix.Caption = "Check Matrix";
            this.btnCheckMatrix.Id = 16;
            this.btnCheckMatrix.Name = "btnCheckMatrix";
            this.btnCheckMatrix.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCheckMatrix_ItemClick);
            // 
            // Columns_ClassCode
            // 
            this.Columns_ClassCode.Caption = "Class Code";
            this.Columns_ClassCode.FieldName = "ClassCode";
            this.Columns_ClassCode.Name = "Columns_ClassCode";
            this.Columns_ClassCode.Visible = true;
            this.Columns_ClassCode.VisibleIndex = 0;
            // 
            // POHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POHeaderListForm";
            this.Size = new System.Drawing.Size(914, 544);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        private DevExpress.XtraGrid.Columns.GridColumn Column_Factory;
        private DevExpress.XtraBars.BarButtonItem btnCheckMatrix;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ClassCode;
    }
}
