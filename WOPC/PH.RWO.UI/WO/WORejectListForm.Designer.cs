namespace PH.RWO.UI.Setting
{
    partial class WORejectListForm
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
            this.colCompany = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUsers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNext = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPackingMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOReviseDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeliveryShipCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLCLExFtyShipCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFCLExFtyShipCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineWorkShipCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWorkShipCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOAConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOAConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHeaderConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHeaderConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTopConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTopConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPPCConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPPCConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnReject = new DevExpress.XtraBars.BarButtonItem();
            this.colT3ShipCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colT3Adjust = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAjustT3DateConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnReject});
            this.objbarManager.MaxItemId = 37;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnReject, true)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.View_WOConfirm);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.Size = new System.Drawing.Size(803, 274);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFlag,
            this.colCompany,
            this.colProjectNo,
            this.colSalesOrderNo,
            this.colSalesOrderLine,
            this.colFactory,
            this.colWorkOrderNo,
            this.colCustomer,
            this.colCustomerCode,
            this.colItem,
            this.colUsers,
            this.colNext,
            this.colCurrent,
            this.colStyleNo,
            this.colCustomerStyleNo,
            this.colVersion,
            this.colAmendmentNo,
            this.colShipMode,
            this.colPackingMethod,
            this.colWOCreateDate,
            this.colWOReviseDate,
            this.colDeliveryShipCompleted,
            this.colLCLExFtyShipCompleted,
            this.colFCLExFtyShipCompleted,
            this.colLineWorkShipCompleted,
            this.colFactoryWorkShipCompleted,
            this.colOAConfirm,
            this.colOAConfirmDate,
            this.colPPCConfirm,
            this.colPPCConfirmDate,
            this.colTopConfirm,
            this.colTopConfirmDate,
            this.colHeaderConfirm,
            this.colHeaderConfirmDate,
            this.colT3ShipCompleted,
            this.colT3Adjust,
            this.colAjustT3DateConfirm});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.OptionsColumn.AllowEdit = false;
            this.colCompany.Visible = true;
            this.colCompany.VisibleIndex = 1;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project No";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 2;
            this.colProjectNo.Width = 83;
            // 
            // colSalesOrderNo
            // 
            this.colSalesOrderNo.Caption = "Sales Order No";
            this.colSalesOrderNo.FieldName = "SalesOrderNo";
            this.colSalesOrderNo.Name = "colSalesOrderNo";
            this.colSalesOrderNo.OptionsColumn.AllowEdit = false;
            this.colSalesOrderNo.Visible = true;
            this.colSalesOrderNo.VisibleIndex = 6;
            this.colSalesOrderNo.Width = 110;
            // 
            // colSalesOrderLine
            // 
            this.colSalesOrderLine.Caption = "Sales Order Line";
            this.colSalesOrderLine.FieldName = "SalesOrderLine";
            this.colSalesOrderLine.Name = "colSalesOrderLine";
            this.colSalesOrderLine.OptionsColumn.AllowEdit = false;
            this.colSalesOrderLine.Width = 116;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 3;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "Work Order No";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 5;
            this.colWorkOrderNo.Width = 109;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.OptionsColumn.AllowEdit = false;
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 4;
            // 
            // colCustomerCode
            // 
            this.colCustomerCode.Caption = "Customer Code";
            this.colCustomerCode.FieldName = "CustomerCode";
            this.colCustomerCode.Name = "colCustomerCode";
            this.colCustomerCode.OptionsColumn.AllowEdit = false;
            this.colCustomerCode.Width = 115;
            // 
            // colItem
            // 
            this.colItem.Caption = "Item";
            this.colItem.FieldName = "Item";
            this.colItem.Name = "colItem";
            this.colItem.OptionsColumn.AllowEdit = false;
            // 
            // colUsers
            // 
            this.colUsers.Caption = "Users";
            this.colUsers.FieldName = "Users";
            this.colUsers.Name = "colUsers";
            this.colUsers.OptionsColumn.AllowEdit = false;
            // 
            // colNext
            // 
            this.colNext.Caption = "Next";
            this.colNext.FieldName = "Next";
            this.colNext.Name = "colNext";
            this.colNext.OptionsColumn.AllowEdit = false;
            // 
            // colCurrent
            // 
            this.colCurrent.Caption = "Current";
            this.colCurrent.FieldName = "Current";
            this.colCurrent.Name = "colCurrent";
            this.colCurrent.OptionsColumn.AllowEdit = false;
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "PH Style No";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.OptionsColumn.AllowEdit = false;
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 7;
            this.colStyleNo.Width = 104;
            // 
            // colCustomerStyleNo
            // 
            this.colCustomerStyleNo.Caption = "Cust Style No";
            this.colCustomerStyleNo.FieldName = "CustomerStyleNo";
            this.colCustomerStyleNo.Name = "colCustomerStyleNo";
            this.colCustomerStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustomerStyleNo.Visible = true;
            this.colCustomerStyleNo.VisibleIndex = 8;
            this.colCustomerStyleNo.Width = 108;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 9;
            // 
            // colAmendmentNo
            // 
            this.colAmendmentNo.Caption = "AmendmentNo";
            this.colAmendmentNo.FieldName = "AmendmentNo";
            this.colAmendmentNo.Name = "colAmendmentNo";
            this.colAmendmentNo.OptionsColumn.AllowEdit = false;
            // 
            // colShipMode
            // 
            this.colShipMode.Caption = "Ship Mode";
            this.colShipMode.FieldName = "ShipMode";
            this.colShipMode.Name = "colShipMode";
            this.colShipMode.OptionsColumn.AllowEdit = false;
            this.colShipMode.Visible = true;
            this.colShipMode.VisibleIndex = 10;
            this.colShipMode.Width = 85;
            // 
            // colPackingMethod
            // 
            this.colPackingMethod.Caption = "Packing Method";
            this.colPackingMethod.FieldName = "PackingMethod";
            this.colPackingMethod.Name = "colPackingMethod";
            this.colPackingMethod.OptionsColumn.AllowEdit = false;
            this.colPackingMethod.Visible = true;
            this.colPackingMethod.VisibleIndex = 11;
            this.colPackingMethod.Width = 110;
            // 
            // colWOCreateDate
            // 
            this.colWOCreateDate.Caption = "WO Create Date";
            this.colWOCreateDate.FieldName = "WOCreateDate";
            this.colWOCreateDate.Name = "colWOCreateDate";
            this.colWOCreateDate.OptionsColumn.AllowEdit = false;
            this.colWOCreateDate.Visible = true;
            this.colWOCreateDate.VisibleIndex = 12;
            this.colWOCreateDate.Width = 121;
            // 
            // colWOReviseDate
            // 
            this.colWOReviseDate.Caption = "WO Revise Date";
            this.colWOReviseDate.FieldName = "WOReviseDate";
            this.colWOReviseDate.Name = "colWOReviseDate";
            this.colWOReviseDate.OptionsColumn.AllowEdit = false;
            this.colWOReviseDate.Visible = true;
            this.colWOReviseDate.VisibleIndex = 13;
            this.colWOReviseDate.Width = 119;
            // 
            // colDeliveryShipCompleted
            // 
            this.colDeliveryShipCompleted.Caption = "Delivery Date";
            this.colDeliveryShipCompleted.FieldName = "DeliveryShipCompleted";
            this.colDeliveryShipCompleted.Name = "colDeliveryShipCompleted";
            this.colDeliveryShipCompleted.OptionsColumn.AllowEdit = false;
            this.colDeliveryShipCompleted.Visible = true;
            this.colDeliveryShipCompleted.VisibleIndex = 14;
            this.colDeliveryShipCompleted.Width = 107;
            // 
            // colLCLExFtyShipCompleted
            // 
            this.colLCLExFtyShipCompleted.Caption = "LCL ExFty Date ";
            this.colLCLExFtyShipCompleted.FieldName = "LCLExFtyShipCompleted";
            this.colLCLExFtyShipCompleted.Name = "colLCLExFtyShipCompleted";
            this.colLCLExFtyShipCompleted.OptionsColumn.AllowEdit = false;
            this.colLCLExFtyShipCompleted.Visible = true;
            this.colLCLExFtyShipCompleted.VisibleIndex = 15;
            this.colLCLExFtyShipCompleted.Width = 128;
            // 
            // colFCLExFtyShipCompleted
            // 
            this.colFCLExFtyShipCompleted.Caption = "FCL ExFty Date";
            this.colFCLExFtyShipCompleted.FieldName = "FCLExFtyShipCompleted";
            this.colFCLExFtyShipCompleted.Name = "colFCLExFtyShipCompleted";
            this.colFCLExFtyShipCompleted.OptionsColumn.AllowEdit = false;
            this.colFCLExFtyShipCompleted.Visible = true;
            this.colFCLExFtyShipCompleted.VisibleIndex = 16;
            this.colFCLExFtyShipCompleted.Width = 116;
            // 
            // colLineWorkShipCompleted
            // 
            this.colLineWorkShipCompleted.Caption = "LW Start Date";
            this.colLineWorkShipCompleted.FieldName = "LineWorkShipCompleted";
            this.colLineWorkShipCompleted.Name = "colLineWorkShipCompleted";
            this.colLineWorkShipCompleted.OptionsColumn.AllowEdit = false;
            this.colLineWorkShipCompleted.Visible = true;
            this.colLineWorkShipCompleted.VisibleIndex = 17;
            this.colLineWorkShipCompleted.Width = 103;
            // 
            // colFactoryWorkShipCompleted
            // 
            this.colFactoryWorkShipCompleted.Caption = "FW Start Date";
            this.colFactoryWorkShipCompleted.FieldName = "FactoryWorkShipCompleted";
            this.colFactoryWorkShipCompleted.Name = "colFactoryWorkShipCompleted";
            this.colFactoryWorkShipCompleted.OptionsColumn.AllowEdit = false;
            this.colFactoryWorkShipCompleted.Visible = true;
            this.colFactoryWorkShipCompleted.VisibleIndex = 18;
            this.colFactoryWorkShipCompleted.Width = 113;
            // 
            // colOAConfirm
            // 
            this.colOAConfirm.Caption = "OA";
            this.colOAConfirm.FieldName = "OAConfirm";
            this.colOAConfirm.Name = "colOAConfirm";
            this.colOAConfirm.OptionsColumn.AllowEdit = false;
            this.colOAConfirm.Visible = true;
            this.colOAConfirm.VisibleIndex = 19;
            this.colOAConfirm.Width = 128;
            // 
            // colOAConfirmDate
            // 
            this.colOAConfirmDate.Caption = "Date(OA)";
            this.colOAConfirmDate.FieldName = "OAConfirmDate";
            this.colOAConfirmDate.Name = "colOAConfirmDate";
            this.colOAConfirmDate.OptionsColumn.AllowEdit = false;
            this.colOAConfirmDate.Visible = true;
            this.colOAConfirmDate.VisibleIndex = 20;
            // 
            // colHeaderConfirm
            // 
            this.colHeaderConfirm.Caption = "Mer Mgr";
            this.colHeaderConfirm.FieldName = "HeaderConfirm";
            this.colHeaderConfirm.Name = "colHeaderConfirm";
            this.colHeaderConfirm.OptionsColumn.AllowEdit = false;
            this.colHeaderConfirm.Visible = true;
            this.colHeaderConfirm.VisibleIndex = 25;
            this.colHeaderConfirm.Width = 107;
            // 
            // colHeaderConfirmDate
            // 
            this.colHeaderConfirmDate.Caption = "Date(Mer.Mgr)";
            this.colHeaderConfirmDate.FieldName = "HeaderConfirmDate";
            this.colHeaderConfirmDate.Name = "colHeaderConfirmDate";
            this.colHeaderConfirmDate.OptionsColumn.AllowEdit = false;
            this.colHeaderConfirmDate.Visible = true;
            this.colHeaderConfirmDate.VisibleIndex = 26;
            this.colHeaderConfirmDate.Width = 101;
            // 
            // colTopConfirm
            // 
            this.colTopConfirm.Caption = "Fty Sr Mgr";
            this.colTopConfirm.FieldName = "TopConfirm";
            this.colTopConfirm.Name = "colTopConfirm";
            this.colTopConfirm.OptionsColumn.AllowEdit = false;
            this.colTopConfirm.Visible = true;
            this.colTopConfirm.VisibleIndex = 23;
            this.colTopConfirm.Width = 158;
            // 
            // colTopConfirmDate
            // 
            this.colTopConfirmDate.Caption = "Date(Sr Mgr)";
            this.colTopConfirmDate.FieldName = "TopConfirmDate";
            this.colTopConfirmDate.Name = "colTopConfirmDate";
            this.colTopConfirmDate.OptionsColumn.AllowEdit = false;
            this.colTopConfirmDate.Visible = true;
            this.colTopConfirmDate.VisibleIndex = 24;
            this.colTopConfirmDate.Width = 93;
            // 
            // colPPCConfirm
            // 
            this.colPPCConfirm.Caption = "Fty PPC ";
            this.colPPCConfirm.FieldName = "PPCConfirm";
            this.colPPCConfirm.Name = "colPPCConfirm";
            this.colPPCConfirm.OptionsColumn.AllowEdit = false;
            this.colPPCConfirm.Visible = true;
            this.colPPCConfirm.VisibleIndex = 21;
            this.colPPCConfirm.Width = 162;
            // 
            // colPPCConfirmDate
            // 
            this.colPPCConfirmDate.Caption = "Date(PPC)";
            this.colPPCConfirmDate.FieldName = "PPCConfirmDate";
            this.colPPCConfirmDate.Name = "colPPCConfirmDate";
            this.colPPCConfirmDate.OptionsColumn.AllowEdit = false;
            this.colPPCConfirmDate.Visible = true;
            this.colPPCConfirmDate.VisibleIndex = 22;
            this.colPPCConfirmDate.Width = 91;
            // 
            // colFlag
            // 
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 0;
            this.colFlag.Width = 34;
            // 
            // btnReject
            // 
            this.btnReject.Caption = "Reject";
            this.btnReject.Id = 36;
            this.btnReject.Name = "btnReject";
            this.btnReject.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnReject_ItemClick);
            // 
            // colT3ShipCompleted
            // 
            this.colT3ShipCompleted.Caption = "T3";
            this.colT3ShipCompleted.FieldName = "T3ShipCompleted";
            this.colT3ShipCompleted.Name = "colT3ShipCompleted";
            this.colT3ShipCompleted.OptionsColumn.AllowEdit = false;
            // 
            // colT3Adjust
            // 
            this.colT3Adjust.Caption = "aT3";
            this.colT3Adjust.FieldName = "T3Adjust";
            this.colT3Adjust.Name = "colT3Adjust";
            this.colT3Adjust.OptionsColumn.AllowEdit = false;
            this.colT3Adjust.Visible = true;
            this.colT3Adjust.VisibleIndex = 27;
            this.colT3Adjust.Width = 87;
            // 
            // colAjustT3DateConfirm
            // 
            this.colAjustT3DateConfirm.Caption = "aT3 Confirm";
            this.colAjustT3DateConfirm.FieldName = "AjustT3DateConfirm";
            this.colAjustT3DateConfirm.Name = "colAjustT3DateConfirm";
            this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = false;
            this.colAjustT3DateConfirm.Visible = true;
            this.colAjustT3DateConfirm.VisibleIndex = 28;
            this.colAjustT3DateConfirm.Width = 110;
            // 
            // WORejectListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WORejectListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCompany;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerCode;
        private DevExpress.XtraGrid.Columns.GridColumn colItem;
        private DevExpress.XtraGrid.Columns.GridColumn colUsers;
        private DevExpress.XtraGrid.Columns.GridColumn colNext;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrent;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendmentNo;
        private DevExpress.XtraGrid.Columns.GridColumn colShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn colPackingMethod;
        private DevExpress.XtraGrid.Columns.GridColumn colWOCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colWOReviseDate;
        private DevExpress.XtraGrid.Columns.GridColumn colDeliveryShipCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colLCLExFtyShipCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colFCLExFtyShipCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colLineWorkShipCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWorkShipCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colOAConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colOAConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colHeaderConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colHeaderConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colTopConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colTopConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPPCConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colPPCConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraBars.BarButtonItem btnReject;
        private DevExpress.XtraGrid.Columns.GridColumn colT3ShipCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colT3Adjust;
        private DevExpress.XtraGrid.Columns.GridColumn colAjustT3DateConfirm;
    }
}
