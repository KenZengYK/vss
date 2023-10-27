namespace PH.LWPM.UI.PO
{
    partial class POHeaderListForm
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
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIssueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentTerm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTransitMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCoordinator = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAttn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEmail = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFax = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPrint_PYtoEnternal = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_EnternaltoPH = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint_PHtoVendor = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnGeneralPO = new DevExpress.XtraBars.BarButtonItem();
            this.colProjectionDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPOStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.colVendorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalAmountShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCountShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeliveryDateShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVendorShortName = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.barSubItem1,
            this.barBtnPrint_PYtoEnternal,
            this.barBtnPrint_EnternaltoPH,
            this.barBtnPrint_PHtoVendor,
            this.barBtnGeneralPO,
            this.btnPrint});
            this.objbarManager.MaxItemId = 68;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBox2});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1424, 426);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colPONO,
            this.colAmendNo,
            this.colVendorCode,
            this.colIssueDate,
            this.colPaymentTerm,
            this.colIncoterms,
            this.colTransitMode,
            this.colCoordinator,
            this.colAttn,
            this.colEmail,
            this.colTel,
            this.colFax,
            this.colProjectionDate,
            this.colPOStatus,
            this.colTotalAmountShow,
            this.colItemCountShow,
            this.colDeliveryDateShow,
            this.colCurrency,
            this.colVendorShortName});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1374, 560, 216, 201);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.POHeader);
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO NO";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 2;
            this.colPONO.Width = 110;
            // 
            // colAmendNo
            // 
            this.colAmendNo.Caption = "Amend No";
            this.colAmendNo.FieldName = "AmendNo";
            this.colAmendNo.Name = "colAmendNo";
            this.colAmendNo.Visible = true;
            this.colAmendNo.VisibleIndex = 3;
            this.colAmendNo.Width = 80;
            // 
            // colIssueDate
            // 
            this.colIssueDate.Caption = "Issue Date";
            this.colIssueDate.FieldName = "IssueDate";
            this.colIssueDate.Name = "colIssueDate";
            this.colIssueDate.Visible = true;
            this.colIssueDate.VisibleIndex = 4;
            this.colIssueDate.Width = 100;
            // 
            // colPaymentTerm
            // 
            this.colPaymentTerm.Caption = "Payment Term";
            this.colPaymentTerm.FieldName = "PaymentTerm";
            this.colPaymentTerm.Name = "colPaymentTerm";
            this.colPaymentTerm.Width = 113;
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.Width = 100;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "Transit Mode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.VisibleIndex = 5;
            this.colTransitMode.Width = 100;
            // 
            // colCoordinator
            // 
            this.colCoordinator.Caption = "Coordinator";
            this.colCoordinator.FieldName = "Coordinator";
            this.colCoordinator.Name = "colCoordinator";
            this.colCoordinator.Width = 100;
            // 
            // colAttn
            // 
            this.colAttn.Caption = "Attn";
            this.colAttn.FieldName = "Attn";
            this.colAttn.Name = "colAttn";
            this.colAttn.Width = 100;
            // 
            // colEmail
            // 
            this.colEmail.Caption = "Email";
            this.colEmail.FieldName = "Email";
            this.colEmail.Name = "colEmail";
            this.colEmail.Width = 100;
            // 
            // colTel
            // 
            this.colTel.Caption = "Tel";
            this.colTel.FieldName = "Tel";
            this.colTel.Name = "colTel";
            this.colTel.Width = 100;
            // 
            // colFax
            // 
            this.colFax.Caption = "Fax";
            this.colFax.FieldName = "Fax";
            this.colFax.Name = "colFax";
            this.colFax.Width = 100;
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Print PO";
            this.barSubItem1.Id = 62;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_PYtoEnternal),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_EnternaltoPH),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint_PHtoVendor),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnGeneralPO)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barBtnPrint_PYtoEnternal
            // 
            this.barBtnPrint_PYtoEnternal.Caption = "PY-->Enternal";
            this.barBtnPrint_PYtoEnternal.Id = 63;
            this.barBtnPrint_PYtoEnternal.Name = "barBtnPrint_PYtoEnternal";
            // 
            // barBtnPrint_EnternaltoPH
            // 
            this.barBtnPrint_EnternaltoPH.Caption = "Enternal-->PH HK";
            this.barBtnPrint_EnternaltoPH.Id = 64;
            this.barBtnPrint_EnternaltoPH.Name = "barBtnPrint_EnternaltoPH";
            // 
            // barBtnPrint_PHtoVendor
            // 
            this.barBtnPrint_PHtoVendor.Caption = "PH HK-->Vendor";
            this.barBtnPrint_PHtoVendor.Id = 65;
            this.barBtnPrint_PHtoVendor.Name = "barBtnPrint_PHtoVendor";
            // 
            // barBtnGeneralPO
            // 
            this.barBtnGeneralPO.Caption = "General PO";
            this.barBtnGeneralPO.Id = 66;
            this.barBtnGeneralPO.Name = "barBtnGeneralPO";
            // 
            // colProjectionDate
            // 
            this.colProjectionDate.Caption = "Project Stock-in dd";
            this.colProjectionDate.FieldName = "ProjectionDate";
            this.colProjectionDate.Name = "colProjectionDate";
            this.colProjectionDate.Visible = true;
            this.colProjectionDate.VisibleIndex = 6;
            this.colProjectionDate.Width = 127;
            // 
            // colPOStatus
            // 
            this.colPOStatus.Caption = "PO Status";
            this.colPOStatus.FieldName = "POStatusName";
            this.colPOStatus.Name = "colPOStatus";
            this.colPOStatus.Visible = true;
            this.colPOStatus.VisibleIndex = 11;
            this.colPOStatus.Width = 120;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 67;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // colVendorCode
            // 
            this.colVendorCode.Caption = "Vendor Code";
            this.colVendorCode.FieldName = "VendorCode";
            this.colVendorCode.Name = "colVendorCode";
            this.colVendorCode.Visible = true;
            this.colVendorCode.VisibleIndex = 0;
            this.colVendorCode.Width = 102;
            // 
            // colTotalAmountShow
            // 
            this.colTotalAmountShow.Caption = "Total Amount";
            this.colTotalAmountShow.DisplayFormat.FormatString = "N2";
            this.colTotalAmountShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalAmountShow.FieldName = "TotalAmountShow";
            this.colTotalAmountShow.Name = "colTotalAmountShow";
            this.colTotalAmountShow.Visible = true;
            this.colTotalAmountShow.VisibleIndex = 9;
            this.colTotalAmountShow.Width = 113;
            // 
            // colItemCountShow
            // 
            this.colItemCountShow.Caption = "No. of Item";
            this.colItemCountShow.FieldName = "ItemCountShow";
            this.colItemCountShow.Name = "colItemCountShow";
            this.colItemCountShow.Visible = true;
            this.colItemCountShow.VisibleIndex = 7;
            this.colItemCountShow.Width = 86;
            // 
            // colDeliveryDateShow
            // 
            this.colDeliveryDateShow.Caption = "Delivery Date";
            this.colDeliveryDateShow.FieldName = "DeliveryDateShow";
            this.colDeliveryDateShow.Name = "colDeliveryDateShow";
            this.colDeliveryDateShow.Visible = true;
            this.colDeliveryDateShow.VisibleIndex = 10;
            this.colDeliveryDateShow.Width = 94;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Curr";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 8;
            this.colCurrency.Width = 44;
            // 
            // colVendorShortName
            // 
            this.colVendorShortName.Caption = "Vendor Short Name";
            this.colVendorShortName.FieldName = "VendorShortName";
            this.colVendorShortName.Name = "colVendorShortName";
            this.colVendorShortName.Visible = true;
            this.colVendorShortName.VisibleIndex = 1;
            this.colVendorShortName.Width = 194;
            // 
            // POHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POHeaderListForm";
            this.Size = new System.Drawing.Size(1424, 453);
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

        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendNo;
        private DevExpress.XtraGrid.Columns.GridColumn colIssueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentTerm;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colTransitMode;
        private DevExpress.XtraGrid.Columns.GridColumn colCoordinator;
        private DevExpress.XtraGrid.Columns.GridColumn colAttn;
        private DevExpress.XtraGrid.Columns.GridColumn colEmail;
        private DevExpress.XtraGrid.Columns.GridColumn colTel;
        private DevExpress.XtraGrid.Columns.GridColumn colFax;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_PYtoEnternal;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_EnternaltoPH;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint_PHtoVendor;
        private DevExpress.XtraBars.BarButtonItem barBtnGeneralPO;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectionDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPOStatus;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalAmountShow;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCountShow;
        private DevExpress.XtraGrid.Columns.GridColumn colDeliveryDateShow;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorShortName;
    }
}
