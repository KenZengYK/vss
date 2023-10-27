namespace PH.LWPM.UI.PC
{
    partial class PCHeaderListForm
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
            this.colPCNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVendorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGoodsDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmountRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipmentMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLoadingPort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDestination = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentTerms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOriginsCountry = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.colVendorName_En = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.barBtnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PCHeader);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPCNO,
            this.colCreateDate,
            this.colVendorName_En,
            this.colAmountRemark,
            this.colShipmentMode,
            this.colIncoterms,
            this.colLoadingPort,
            this.colDestination,
            this.colPaymentTerms,
            this.colOriginsCountry,
            this.colVendorCode,
            this.colGoodsDescription});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colPCNO
            // 
            this.colPCNO.Caption = "PC No.";
            this.colPCNO.FieldName = "PCNO";
            this.colPCNO.Name = "colPCNO";
            this.colPCNO.Visible = true;
            this.colPCNO.VisibleIndex = 0;
            this.colPCNO.Width = 120;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "PC Date";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 1;
            this.colCreateDate.Width = 120;
            // 
            // colVendorCode
            // 
            this.colVendorCode.Caption = "VendorCode";
            this.colVendorCode.FieldName = "VendorCode";
            this.colVendorCode.Name = "colVendorCode";
            // 
            // colGoodsDescription
            // 
            this.colGoodsDescription.Caption = "GoodsDescription";
            this.colGoodsDescription.FieldName = "GoodsDescription";
            this.colGoodsDescription.Name = "colGoodsDescription";
            // 
            // colAmountRemark
            // 
            this.colAmountRemark.Caption = "AmountRemark";
            this.colAmountRemark.FieldName = "AmountRemark";
            this.colAmountRemark.Name = "colAmountRemark";
            // 
            // colShipmentMode
            // 
            this.colShipmentMode.Caption = "ShipmentMode";
            this.colShipmentMode.FieldName = "ShipmentMode";
            this.colShipmentMode.Name = "colShipmentMode";
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            // 
            // colLoadingPort
            // 
            this.colLoadingPort.Caption = "LoadingPort";
            this.colLoadingPort.FieldName = "LoadingPort";
            this.colLoadingPort.Name = "colLoadingPort";
            // 
            // colDestination
            // 
            this.colDestination.Caption = "Destination";
            this.colDestination.FieldName = "Destination";
            this.colDestination.Name = "colDestination";
            // 
            // colPaymentTerms
            // 
            this.colPaymentTerms.Caption = "PaymentTerms";
            this.colPaymentTerms.FieldName = "PaymentTerms";
            this.colPaymentTerms.Name = "colPaymentTerms";
            // 
            // colOriginsCountry
            // 
            this.colOriginsCountry.Caption = "OriginsCountry";
            this.colOriginsCountry.FieldName = "OriginsCountry";
            this.colOriginsCountry.Name = "colOriginsCountry";
            // 
            // barBtnPrint
            // 
            this.barBtnPrint.Caption = "Print";
            this.barBtnPrint.Id = 60;
            this.barBtnPrint.Name = "barBtnPrint";
            this.barBtnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrint_ItemClick);
            // 
            // colVendorName_En
            // 
            this.colVendorName_En.Caption = "Vendor Name";
            this.colVendorName_En.FieldName = "VendorName_En";
            this.colVendorName_En.Name = "colVendorName_En";
            this.colVendorName_En.Visible = true;
            this.colVendorName_En.VisibleIndex = 2;
            this.colVendorName_En.Width = 360;
            // 
            // PCHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PCHeaderListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPCNO;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colGoodsDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colAmountRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colShipmentMode;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colLoadingPort;
        private DevExpress.XtraGrid.Columns.GridColumn colDestination;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentTerms;
        private DevExpress.XtraGrid.Columns.GridColumn colOriginsCountry;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorName_En;
    }
}
