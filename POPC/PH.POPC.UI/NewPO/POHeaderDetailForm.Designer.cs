
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using System.IO;
namespace PH.POPC.UI.NewPO
{
    partial class POHeaderDetailForm
    {
        #region//auto code

        private DevExpress.XtraEditors.TextEdit txtD_SupplierName;
        private System.Windows.Forms.Label lable_SupplierName;
        private System.Windows.Forms.Label supplierAddressLable;
        private DevExpress.XtraEditors.TextEdit txtD_AttnPerson;
        private System.Windows.Forms.Label attnPersonLable;
        private DevExpress.XtraEditors.TextEdit txtD_FaxNumber;
        private System.Windows.Forms.Label faxNumberLable;
        private System.Windows.Forms.Label paymentTermsLable;
        private System.Windows.Forms.Label paymentMethodLable;
        //public PODetailListForm poDetailListForm1;
        public DevExpress.XtraTab.XtraTabControl xtraTabControl2;
        private DevExpress.XtraTab.XtraTabPage SupplierInfo;
        private Label destinationLable;
        private TextEdit txtD_Country;
        private Label currencyLable;
        private Label deliveryTermLable;
        private Label telNumberLable;
        protected DevExpress.XtraTab.XtraTabPage BaseInfo;
        public PanelControl panelControl2;
        private CheckEdit checkEdit1;
        private SimpleButton butUpload;
        private SimpleButton butDownLoad;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        public POTermListForm poTermListForm1;
        private MemoExEdit memoExEdit3;
        private DevExpress.XtraBars.BarButtonItem btnPrintSticker;
        private ComboBoxEdit comb_PaymentTerms;
        private ComboBoxEdit comb_DeliveryTerm;
        private ComboBoxEdit comb_PaymentMethod;
        private TextEdit txtD_DeliveryTermsDesc;
        private TextEdit txtD_PaymentTermsDesc;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarSubItem btnReportPO;
        private DevExpress.XtraBars.BarSubItem btnSolidReport;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraBars.BarSubItem btnAssortedReport;
        private DevExpress.XtraBars.BarButtonItem barButtonItem5;
        private DevExpress.XtraBars.BarButtonItem barButtonItem6;
        private DevExpress.XtraBars.BarButtonItem barButtonItem7;
        private DevExpress.XtraBars.BarButtonItem barButtonItem8;
        private DevExpress.XtraBars.BarButtonItem barButtonItem9;
        private DevExpress.XtraBars.BarButtonItem barButtonItem10;
        private DevExpress.XtraBars.BarButtonItem barButtonItem11;
        private DevExpress.XtraBars.BarButtonItem barButtonItem12;
        private DevExpress.XtraBars.BarButtonItem barButtonItem13;
        private ComboBoxEdit comb_Currency;
        private SpinEdit spin_Rate;
        private Label rateLable;
        public ImageComboBoxEdit imageComboBoxEdit1;
        public Label statusLable;
        public ComboBoxEdit comb_PHAttnPerson;
        public Label pHAttnPersonLable;
        public TextEdit textEdit2;
        public TextEdit txtD_Currency;
        public Label label2;
        public SpinEdit spin_SuppAmount;
        public Label suppAmountLable;
        public SpinEdit spin_Amount;
        public Label pHAmountLable;
        public SpinEdit spin_Qty;
        public Label pHQtyLable;
        public ImageComboBoxEdit imag_OrderClass;
        public Label orderClassLable;
        public DateEdit dte_ShipmentDate;
        public Label dueDateLable;
        public ComboBoxEdit Comb_Factory;
        public Label factoryLable;
        public SpinEdit spin_SuppQty;
        public Label totalReceivedQtyLable;
        public Label purchaseOfficerLable;
        public TextEdit txtD_PurchaseOfficer;
        public TextEdit txtD_Company;
        public TextEdit txtD_Version;
        public DateEdit dte_OrderDate;
        public TextEdit txtD_PONO;
        public TextEdit txtD_Dept;
        public Label pOVersionLable;
        public Label orderDateLable;
        public Label deptLable;
        protected Label companyLable;
        public Label pONOLable;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private ComboBoxEdit comb_DeliveryAddress;
        private Label deliveryAddressLable;
        private LookUpEdit look_Supplier;
        private Label supplierLable;
        private TextEdit textEdit1;
        private Label label8;
        private TextEdit textEdit3;
        private Label supplierNameLable;
        private DevExpress.XtraEditors.DXErrorProvider.DXErrorProvider dxErrorProvider1;
        private IContainer components;
        private MemoExEdit mem_Remark;
        private Label remarkLable;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage3;
        private SpinEdit transitFrameSpinEdit;
        private TextEdit transitPointTextEdit;
        private TextEdit incotermsTextEdit;
        private TextEdit endCustCodeTextEdit;
        private TextEdit txtD_TelNumber;
        #endregion
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label individualAssociateLabel;
            System.Windows.Forms.Label shipModeLabel;
            System.Windows.Forms.Label endPointLabel;
            System.Windows.Forms.Label endPointAddressLabel;
            System.Windows.Forms.Label locationOfSuppFactoryLabel;
            System.Windows.Forms.Label MoreBuyerSizeCupLabel;
            System.Windows.Forms.Label label3;
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule5 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule3 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout1 = new PH.Platform.BO.UI_GridViewLayout();
            this.transitFrameLabel = new System.Windows.Forms.Label();
            this.transitPointLabel = new System.Windows.Forms.Label();
            this.incotermsLabel = new System.Windows.Forms.Label();
            this.endCustCodeLabel = new System.Windows.Forms.Label();
            this.txtD_SupplierName = new DevExpress.XtraEditors.TextEdit();
            this.lable_SupplierName = new System.Windows.Forms.Label();
            this.supplierAddressLable = new System.Windows.Forms.Label();
            this.txtD_AttnPerson = new DevExpress.XtraEditors.TextEdit();
            this.attnPersonLable = new System.Windows.Forms.Label();
            this.txtD_FaxNumber = new DevExpress.XtraEditors.TextEdit();
            this.faxNumberLable = new System.Windows.Forms.Label();
            this.paymentTermsLable = new System.Windows.Forms.Label();
            this.paymentMethodLable = new System.Windows.Forms.Label();
            this.xtraTabControl2 = new DevExpress.XtraTab.XtraTabControl();
            this.BaseInfo = new DevExpress.XtraTab.XtraTabPage();
            this.mem_Remark = new DevExpress.XtraEditors.MemoExEdit();
            this.remarkLable = new System.Windows.Forms.Label();
            this.textEdit3 = new DevExpress.XtraEditors.TextEdit();
            this.supplierNameLable = new System.Windows.Forms.Label();
            this.comb_DeliveryAddress = new DevExpress.XtraEditors.ComboBoxEdit();
            this.deliveryAddressLable = new System.Windows.Forms.Label();
            this.look_Supplier = new DevExpress.XtraEditors.LookUpEdit();
            this.supplierLable = new System.Windows.Forms.Label();
            this.imageComboBoxEdit1 = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.statusLable = new System.Windows.Forms.Label();
            this.comb_PHAttnPerson = new DevExpress.XtraEditors.ComboBoxEdit();
            this.pHAttnPersonLable = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Currency = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.spin_SuppAmount = new DevExpress.XtraEditors.SpinEdit();
            this.suppAmountLable = new System.Windows.Forms.Label();
            this.spin_Amount = new DevExpress.XtraEditors.SpinEdit();
            this.pHAmountLable = new System.Windows.Forms.Label();
            this.spin_Qty = new DevExpress.XtraEditors.SpinEdit();
            this.pHQtyLable = new System.Windows.Forms.Label();
            this.imag_ClassCode = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.imag_OrderClass = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.orderClassLable = new System.Windows.Forms.Label();
            this.dte_ShipmentDate = new DevExpress.XtraEditors.DateEdit();
            this.dueDateLable = new System.Windows.Forms.Label();
            this.Comb_Factory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.factoryLable = new System.Windows.Forms.Label();
            this.spin_SuppQty = new DevExpress.XtraEditors.SpinEdit();
            this.totalReceivedQtyLable = new System.Windows.Forms.Label();
            this.purchaseOfficerLable = new System.Windows.Forms.Label();
            this.txtD_PurchaseOfficer = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Company = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Version = new DevExpress.XtraEditors.TextEdit();
            this.dte_OrderDate = new DevExpress.XtraEditors.DateEdit();
            this.txtD_PONO = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Dept = new DevExpress.XtraEditors.TextEdit();
            this.pOVersionLable = new System.Windows.Forms.Label();
            this.orderDateLable = new System.Windows.Forms.Label();
            this.deptLable = new System.Windows.Forms.Label();
            this.companyLable = new System.Windows.Forms.Label();
            this.pONOLable = new System.Windows.Forms.Label();
            this.panelControl2 = new DevExpress.XtraEditors.PanelControl();
            this.checkEdit1 = new DevExpress.XtraEditors.CheckEdit();
            this.butUpload = new DevExpress.XtraEditors.SimpleButton();
            this.butDownLoad = new DevExpress.XtraEditors.SimpleButton();
            this.SupplierInfo = new DevExpress.XtraTab.XtraTabPage();
            this.emailLabel = new System.Windows.Forms.Label();
            this.emailTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.label8 = new System.Windows.Forms.Label();
            this.comb_Currency = new DevExpress.XtraEditors.ComboBoxEdit();
            this.spin_Rate = new DevExpress.XtraEditors.SpinEdit();
            this.rateLable = new System.Windows.Forms.Label();
            this.txtD_DeliveryTermsDesc = new DevExpress.XtraEditors.TextEdit();
            this.txtD_PaymentTermsDesc = new DevExpress.XtraEditors.TextEdit();
            this.comb_PaymentMethod = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comb_DeliveryTerm = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comb_PaymentTerms = new DevExpress.XtraEditors.ComboBoxEdit();
            this.memoExEdit3 = new DevExpress.XtraEditors.MemoExEdit();
            this.telNumberLable = new System.Windows.Forms.Label();
            this.txtD_TelNumber = new DevExpress.XtraEditors.TextEdit();
            this.deliveryTermLable = new System.Windows.Forms.Label();
            this.destinationLable = new System.Windows.Forms.Label();
            this.txtD_Country = new DevExpress.XtraEditors.TextEdit();
            this.currencyLable = new System.Windows.Forms.Label();
            this.xtraTabPage3 = new DevExpress.XtraTab.XtraTabPage();
            this.CBTransitMode2 = new DevExpress.XtraEditors.TextEdit();
            this.MoreBuyerSizeRadioGroup = new DevExpress.XtraEditors.RadioGroup();
            this.locationOfSuppFactoryLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.endPointAddressMemoExEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.endPointMemoExEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.shipModeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.individualAssociateImageComboBoxEdit = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.transitFrameSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.transitPointTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.incotermsTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.endCustCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.poTermListForm1 = new PH.POPC.UI.NewPO.POTermListForm();
            this.btnPrintSticker = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.btnReportPO = new DevExpress.XtraBars.BarSubItem();
            this.btnSolidReport = new DevExpress.XtraBars.BarSubItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem5 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem6 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem7 = new DevExpress.XtraBars.BarButtonItem();
            this.btnAssortedReport = new DevExpress.XtraBars.BarSubItem();
            this.barButtonItem8 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem9 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem10 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem11 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem12 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem13 = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.dxErrorProvider1 = new DevExpress.XtraEditors.DXErrorProvider.DXErrorProvider(this.components);
            this.poDetailListForm1 = new PH.POPC.UI.NewPO.PODetailListForm();
            individualAssociateLabel = new System.Windows.Forms.Label();
            shipModeLabel = new System.Windows.Forms.Label();
            endPointLabel = new System.Windows.Forms.Label();
            endPointAddressLabel = new System.Windows.Forms.Label();
            locationOfSuppFactoryLabel = new System.Windows.Forms.Label();
            MoreBuyerSizeCupLabel = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_AttnPerson.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_FaxNumber.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).BeginInit();
            this.xtraTabControl2.SuspendLayout();
            this.BaseInfo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.mem_Remark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_DeliveryAddress.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.look_Supplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PHAttnPerson.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Amount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Qty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imag_ClassCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imag_OrderClass.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ShipmentDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ShipmentDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Comb_Factory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PurchaseOfficer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Version.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_OrderDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_OrderDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Dept.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).BeginInit();
            this.panelControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).BeginInit();
            this.SupplierInfo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.emailTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_Currency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Rate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DeliveryTermsDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PaymentTermsDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentMethod.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_DeliveryTerm.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentTerms.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TelNumber.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Country.Properties)).BeginInit();
            this.xtraTabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CBTransitMode2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MoreBuyerSizeRadioGroup.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.locationOfSuppFactoryLookUpEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointAddressMemoExEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointMemoExEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.shipModeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.individualAssociateImageComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitFrameSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitPointTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.incotermsTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endCustCodeTextEdit.Properties)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxErrorProvider1)).BeginInit();
            this.SuspendLayout();
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrintSticker,
            this.barButtonItem1,
            this.btnReportPO,
            this.btnAssortedReport,
            this.btnSolidReport,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4,
            this.barButtonItem5,
            this.barButtonItem6,
            this.barButtonItem7,
            this.barButtonItem8,
            this.barButtonItem9,
            this.barButtonItem10,
            this.barButtonItem11,
            this.barButtonItem12,
            this.barButtonItem13,
            this.barSubItem1});
            this.objEdtbarManager.MaxItemId = 52;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.FloatLocation = new System.Drawing.Point(94, 138);
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 267);
            this.splitterControl1.Size = new System.Drawing.Size(966, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.xtraTabControl2);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(966, 240);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.xtraTabControl2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 273);
            this.panelControl1.Size = new System.Drawing.Size(966, 229);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.poDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(953, 193);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(962, 225);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2});
            this.xtraTabControl1.Text = "POPDF";
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage2, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // individualAssociateLabel
            // 
            individualAssociateLabel.AutoSize = true;
            individualAssociateLabel.Location = new System.Drawing.Point(30, 34);
            individualAssociateLabel.Name = "individualAssociateLabel";
            individualAssociateLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(individualAssociateLabel, null);
            individualAssociateLabel.TabIndex = 274;
            individualAssociateLabel.Text = "Individual Associate:";
            // 
            // shipModeLabel
            // 
            shipModeLabel.AutoSize = true;
            shipModeLabel.Location = new System.Drawing.Point(77, 118);
            shipModeLabel.Name = "shipModeLabel";
            shipModeLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(shipModeLabel, null);
            shipModeLabel.TabIndex = 278;
            shipModeLabel.Text = "Transit Mode:";
            // 
            // endPointLabel
            // 
            endPointLabel.AutoSize = true;
            endPointLabel.Location = new System.Drawing.Point(345, 8);
            endPointLabel.Name = "endPointLabel";
            endPointLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(endPointLabel, null);
            endPointLabel.TabIndex = 279;
            endPointLabel.Text = "Point of Destination:";
            endPointLabel.Click += new System.EventHandler(this.endPointLabel_Click);
            // 
            // endPointAddressLabel
            // 
            endPointAddressLabel.AutoSize = true;
            endPointAddressLabel.Location = new System.Drawing.Point(297, 34);
            endPointAddressLabel.Name = "endPointAddressLabel";
            endPointAddressLabel.Size = new System.Drawing.Size(179, 12);
            this.PlatetoolTipController.SetSuperTip(endPointAddressLabel, null);
            endPointAddressLabel.TabIndex = 280;
            endPointAddressLabel.Text = "Point of Destination Address:";
            // 
            // locationOfSuppFactoryLabel
            // 
            locationOfSuppFactoryLabel.AutoSize = true;
            locationOfSuppFactoryLabel.Location = new System.Drawing.Point(5, 6);
            locationOfSuppFactoryLabel.Name = "locationOfSuppFactoryLabel";
            locationOfSuppFactoryLabel.Size = new System.Drawing.Size(155, 12);
            this.PlatetoolTipController.SetSuperTip(locationOfSuppFactoryLabel, null);
            locationOfSuppFactoryLabel.TabIndex = 281;
            locationOfSuppFactoryLabel.Text = "Location Of Supp Factory:";
            // 
            // MoreBuyerSizeCupLabel
            // 
            MoreBuyerSizeCupLabel.AutoSize = true;
            MoreBuyerSizeCupLabel.Location = new System.Drawing.Point(351, 118);
            MoreBuyerSizeCupLabel.Name = "MoreBuyerSizeCupLabel";
            MoreBuyerSizeCupLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(MoreBuyerSizeCupLabel, null);
            MoreBuyerSizeCupLabel.TabIndex = 283;
            MoreBuyerSizeCupLabel.Text = "More Our Size/Cup:";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new System.Drawing.Point(71, 146);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(label3, null);
            label3.TabIndex = 285;
            label3.Text = "Transit Mode2:";
            // 
            // transitFrameLabel
            // 
            this.transitFrameLabel.AutoSize = true;
            this.transitFrameLabel.Location = new System.Drawing.Point(393, 59);
            this.transitFrameLabel.Name = "transitFrameLabel";
            this.transitFrameLabel.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.transitFrameLabel, null);
            this.transitFrameLabel.TabIndex = 271;
            this.transitFrameLabel.Text = "Time Frame 1:";
            // 
            // transitPointLabel
            // 
            this.transitPointLabel.AutoSize = true;
            this.transitPointLabel.Location = new System.Drawing.Point(387, 84);
            this.transitPointLabel.Name = "transitPointLabel";
            this.transitPointLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.transitPointLabel, null);
            this.transitPointLabel.TabIndex = 269;
            this.transitPointLabel.Text = "Transit Point:";
            // 
            // incotermsLabel
            // 
            this.incotermsLabel.AutoSize = true;
            this.incotermsLabel.Location = new System.Drawing.Point(96, 90);
            this.incotermsLabel.Name = "incotermsLabel";
            this.incotermsLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.incotermsLabel, null);
            this.incotermsLabel.TabIndex = 266;
            this.incotermsLabel.Text = "Incoterms:";
            // 
            // endCustCodeLabel
            // 
            this.endCustCodeLabel.AutoSize = true;
            this.endCustCodeLabel.Location = new System.Drawing.Point(72, 62);
            this.endCustCodeLabel.Name = "endCustCodeLabel";
            this.endCustCodeLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.endCustCodeLabel, null);
            this.endCustCodeLabel.TabIndex = 259;
            this.endCustCodeLabel.Text = "End Cust Code:";
            // 
            // txtD_SupplierName
            // 
            this.txtD_SupplierName.Location = new System.Drawing.Point(101, 29);
            this.txtD_SupplierName.Name = "txtD_SupplierName";
            this.txtD_SupplierName.Size = new System.Drawing.Size(204, 21);
            this.txtD_SupplierName.TabIndex = 18;
            this.txtD_SupplierName.Tag = "SupplierName";
            // 
            // lable_SupplierName
            // 
            this.lable_SupplierName.AutoSize = true;
            this.lable_SupplierName.Location = new System.Drawing.Point(12, 31);
            this.lable_SupplierName.Name = "lable_SupplierName";
            this.lable_SupplierName.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_SupplierName, null);
            this.lable_SupplierName.TabIndex = 9;
            this.lable_SupplierName.Text = "Supplier Name";
            // 
            // supplierAddressLable
            // 
            this.supplierAddressLable.AutoSize = true;
            this.supplierAddressLable.Location = new System.Drawing.Point(519, 6);
            this.supplierAddressLable.Name = "supplierAddressLable";
            this.supplierAddressLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierAddressLable, null);
            this.supplierAddressLable.TabIndex = 10;
            this.supplierAddressLable.Text = "Supplier Address";
            // 
            // txtD_AttnPerson
            // 
            this.txtD_AttnPerson.Location = new System.Drawing.Point(101, 51);
            this.txtD_AttnPerson.Name = "txtD_AttnPerson";
            this.txtD_AttnPerson.Size = new System.Drawing.Size(89, 21);
            this.txtD_AttnPerson.TabIndex = 19;
            this.txtD_AttnPerson.Tag = "AttnPerson";
            // 
            // attnPersonLable
            // 
            this.attnPersonLable.AutoSize = true;
            this.attnPersonLable.Location = new System.Drawing.Point(24, 54);
            this.attnPersonLable.Name = "attnPersonLable";
            this.attnPersonLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.attnPersonLable, null);
            this.attnPersonLable.TabIndex = 15;
            this.attnPersonLable.Text = "Attn Person";
            // 
            // txtD_FaxNumber
            // 
            this.txtD_FaxNumber.Location = new System.Drawing.Point(101, 73);
            this.txtD_FaxNumber.Name = "txtD_FaxNumber";
            this.txtD_FaxNumber.Size = new System.Drawing.Size(89, 21);
            this.txtD_FaxNumber.TabIndex = 20;
            this.txtD_FaxNumber.Tag = "FaxNumber";
            // 
            // faxNumberLable
            // 
            this.faxNumberLable.AutoSize = true;
            this.faxNumberLable.Location = new System.Drawing.Point(72, 75);
            this.faxNumberLable.Name = "faxNumberLable";
            this.faxNumberLable.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.faxNumberLable, null);
            this.faxNumberLable.TabIndex = 16;
            this.faxNumberLable.Text = "Fax";
            // 
            // paymentTermsLable
            // 
            this.paymentTermsLable.AutoSize = true;
            this.paymentTermsLable.Location = new System.Drawing.Point(330, 72);
            this.paymentTermsLable.Name = "paymentTermsLable";
            this.paymentTermsLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.paymentTermsLable, null);
            this.paymentTermsLable.TabIndex = 18;
            this.paymentTermsLable.Text = "Payment Terms";
            // 
            // paymentMethodLable
            // 
            this.paymentMethodLable.AutoSize = true;
            this.paymentMethodLable.Location = new System.Drawing.Point(324, 52);
            this.paymentMethodLable.Name = "paymentMethodLable";
            this.paymentMethodLable.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.paymentMethodLable, null);
            this.paymentMethodLable.TabIndex = 20;
            this.paymentMethodLable.Text = "Payment Method";
            this.paymentMethodLable.Visible = false;
            // 
            // xtraTabControl2
            // 
            this.xtraTabControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl2.Location = new System.Drawing.Point(2, 21);
            this.xtraTabControl2.Name = "xtraTabControl2";
            this.xtraTabControl2.SelectedTabPage = this.BaseInfo;
            this.xtraTabControl2.Size = new System.Drawing.Size(962, 217);
            this.xtraTabControl2.TabIndex = 67;
            this.xtraTabControl2.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.BaseInfo,
            this.SupplierInfo,
            this.xtraTabPage3});
            // 
            // BaseInfo
            // 
            this.BaseInfo.AutoScroll = true;
            this.BaseInfo.Controls.Add(this.mem_Remark);
            this.BaseInfo.Controls.Add(this.remarkLable);
            this.BaseInfo.Controls.Add(this.textEdit3);
            this.BaseInfo.Controls.Add(this.supplierNameLable);
            this.BaseInfo.Controls.Add(this.comb_DeliveryAddress);
            this.BaseInfo.Controls.Add(this.deliveryAddressLable);
            this.BaseInfo.Controls.Add(this.look_Supplier);
            this.BaseInfo.Controls.Add(this.supplierLable);
            this.BaseInfo.Controls.Add(this.imageComboBoxEdit1);
            this.BaseInfo.Controls.Add(this.statusLable);
            this.BaseInfo.Controls.Add(this.comb_PHAttnPerson);
            this.BaseInfo.Controls.Add(this.pHAttnPersonLable);
            this.BaseInfo.Controls.Add(this.textEdit2);
            this.BaseInfo.Controls.Add(this.txtD_Currency);
            this.BaseInfo.Controls.Add(this.label2);
            this.BaseInfo.Controls.Add(this.spin_SuppAmount);
            this.BaseInfo.Controls.Add(this.suppAmountLable);
            this.BaseInfo.Controls.Add(this.spin_Amount);
            this.BaseInfo.Controls.Add(this.pHAmountLable);
            this.BaseInfo.Controls.Add(this.spin_Qty);
            this.BaseInfo.Controls.Add(this.pHQtyLable);
            this.BaseInfo.Controls.Add(this.imag_ClassCode);
            this.BaseInfo.Controls.Add(this.imag_OrderClass);
            this.BaseInfo.Controls.Add(this.label1);
            this.BaseInfo.Controls.Add(this.orderClassLable);
            this.BaseInfo.Controls.Add(this.dte_ShipmentDate);
            this.BaseInfo.Controls.Add(this.dueDateLable);
            this.BaseInfo.Controls.Add(this.Comb_Factory);
            this.BaseInfo.Controls.Add(this.factoryLable);
            this.BaseInfo.Controls.Add(this.spin_SuppQty);
            this.BaseInfo.Controls.Add(this.totalReceivedQtyLable);
            this.BaseInfo.Controls.Add(this.purchaseOfficerLable);
            this.BaseInfo.Controls.Add(this.txtD_PurchaseOfficer);
            this.BaseInfo.Controls.Add(this.txtD_Company);
            this.BaseInfo.Controls.Add(this.txtD_Version);
            this.BaseInfo.Controls.Add(this.dte_OrderDate);
            this.BaseInfo.Controls.Add(this.txtD_PONO);
            this.BaseInfo.Controls.Add(this.txtD_Dept);
            this.BaseInfo.Controls.Add(this.pOVersionLable);
            this.BaseInfo.Controls.Add(this.orderDateLable);
            this.BaseInfo.Controls.Add(this.deptLable);
            this.BaseInfo.Controls.Add(this.companyLable);
            this.BaseInfo.Controls.Add(this.pONOLable);
            this.BaseInfo.Controls.Add(this.panelControl2);
            this.BaseInfo.Name = "BaseInfo";
            this.BaseInfo.Size = new System.Drawing.Size(953, 185);
            this.BaseInfo.Text = "Base Info";
            // 
            // mem_Remark
            // 
            this.mem_Remark.Location = new System.Drawing.Point(533, 142);
            this.mem_Remark.Name = "mem_Remark";
            this.mem_Remark.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.mem_Remark.Properties.PopupStartSize = new System.Drawing.Size(400, 300);
            this.mem_Remark.Properties.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.mem_Remark.Properties.WordWrap = false;
            this.mem_Remark.Size = new System.Drawing.Size(253, 21);
            this.mem_Remark.TabIndex = 316;
            this.mem_Remark.Tag = "Remark";
            // 
            // remarkLable
            // 
            this.remarkLable.AutoSize = true;
            this.remarkLable.Location = new System.Drawing.Point(476, 145);
            this.remarkLable.Name = "remarkLable";
            this.remarkLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.remarkLable, null);
            this.remarkLable.TabIndex = 315;
            this.remarkLable.Text = "Remark";
            // 
            // textEdit3
            // 
            this.textEdit3.Location = new System.Drawing.Point(92, 142);
            this.textEdit3.Name = "textEdit3";
            this.textEdit3.Size = new System.Drawing.Size(308, 21);
            this.textEdit3.TabIndex = 314;
            this.textEdit3.Tag = "SupplierName";
            // 
            // supplierNameLable
            // 
            this.supplierNameLable.AutoSize = true;
            this.supplierNameLable.Location = new System.Drawing.Point(3, 147);
            this.supplierNameLable.Name = "supplierNameLable";
            this.supplierNameLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierNameLable, null);
            this.supplierNameLable.TabIndex = 313;
            this.supplierNameLable.Text = "Supplier Name";
            // 
            // comb_DeliveryAddress
            // 
            this.comb_DeliveryAddress.EditValue = "";
            this.comb_DeliveryAddress.Location = new System.Drawing.Point(533, 116);
            this.comb_DeliveryAddress.Name = "comb_DeliveryAddress";
            this.comb_DeliveryAddress.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_DeliveryAddress.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_DeliveryAddress.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_DeliveryAddress.Size = new System.Drawing.Size(253, 21);
            this.comb_DeliveryAddress.TabIndex = 312;
            this.comb_DeliveryAddress.Tag = "DeliveryAddress";
            // 
            // deliveryAddressLable
            // 
            this.deliveryAddressLable.AutoSize = true;
            this.deliveryAddressLable.Location = new System.Drawing.Point(416, 119);
            this.deliveryAddressLable.Name = "deliveryAddressLable";
            this.deliveryAddressLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.deliveryAddressLable, null);
            this.deliveryAddressLable.TabIndex = 311;
            this.deliveryAddressLable.Text = "Delivery Address";
            // 
            // look_Supplier
            // 
            this.look_Supplier.EditValue = "";
            this.look_Supplier.Location = new System.Drawing.Point(93, 116);
            this.look_Supplier.Name = "look_Supplier";
            this.look_Supplier.Properties.AllowNullInput = DevExpress.Utils.DefaultBoolean.False;
            this.look_Supplier.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.look_Supplier.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.look_Supplier.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ERPSupplier", "Supplier", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("SupplierName", "SupplierName", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.look_Supplier.Properties.NullText = "";
            this.look_Supplier.Properties.ShowHeader = false;
            this.look_Supplier.Size = new System.Drawing.Size(92, 21);
            this.look_Supplier.TabIndex = 310;
            this.look_Supplier.Tag = "Supplier";
            conditionValidatonRule5.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule5.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.look_Supplier, conditionValidatonRule5);
            this.look_Supplier.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.look_Supplier_CloseUp);
            // 
            // supplierLable
            // 
            this.supplierLable.AutoSize = true;
            this.supplierLable.Location = new System.Drawing.Point(33, 121);
            this.supplierLable.Name = "supplierLable";
            this.supplierLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierLable, null);
            this.supplierLable.TabIndex = 309;
            this.supplierLable.Text = "Supplier";
            // 
            // imageComboBoxEdit1
            // 
            this.imageComboBoxEdit1.EditValue = "0";
            this.imageComboBoxEdit1.Location = new System.Drawing.Point(305, 2);
            this.imageComboBoxEdit1.Name = "imageComboBoxEdit1";
            this.imageComboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageComboBoxEdit1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OutStanding", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Completed", "0", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Cancel", "-1", -1)});
            this.imageComboBoxEdit1.Size = new System.Drawing.Size(102, 21);
            this.imageComboBoxEdit1.TabIndex = 306;
            this.imageComboBoxEdit1.Tag = "Status";
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.imageComboBoxEdit1, conditionValidatonRule1);
            // 
            // statusLable
            // 
            this.statusLable.AutoSize = true;
            this.statusLable.Location = new System.Drawing.Point(246, 5);
            this.statusLable.Name = "statusLable";
            this.statusLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.statusLable, null);
            this.statusLable.TabIndex = 305;
            this.statusLable.Text = "POStatus";
            // 
            // comb_PHAttnPerson
            // 
            this.comb_PHAttnPerson.Location = new System.Drawing.Point(533, 93);
            this.comb_PHAttnPerson.Name = "comb_PHAttnPerson";
            this.comb_PHAttnPerson.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_PHAttnPerson.Size = new System.Drawing.Size(143, 21);
            this.comb_PHAttnPerson.TabIndex = 304;
            this.comb_PHAttnPerson.Tag = "PHAttnPerson";
            // 
            // pHAttnPersonLable
            // 
            this.pHAttnPersonLable.AutoSize = true;
            this.pHAttnPersonLable.Location = new System.Drawing.Point(434, 95);
            this.pHAttnPersonLable.Name = "pHAttnPersonLable";
            this.pHAttnPersonLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHAttnPersonLable, null);
            this.pHAttnPersonLable.TabIndex = 303;
            this.pHAttnPersonLable.Text = "PH AttnPerson";
            // 
            // textEdit2
            // 
            this.textEdit2.EditValue = "HKD";
            this.textEdit2.Location = new System.Drawing.Point(640, 70);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.ReadOnly = true;
            this.textEdit2.Size = new System.Drawing.Size(36, 21);
            this.textEdit2.TabIndex = 301;
            this.textEdit2.Tag = "";
            // 
            // txtD_Currency
            // 
            this.txtD_Currency.Location = new System.Drawing.Point(640, 24);
            this.txtD_Currency.Name = "txtD_Currency";
            this.txtD_Currency.Properties.ReadOnly = true;
            this.txtD_Currency.Size = new System.Drawing.Size(36, 21);
            this.txtD_Currency.TabIndex = 300;
            this.txtD_Currency.Tag = "Currency";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(640, -2);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(0, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 299;
            // 
            // spin_SuppAmount
            // 
            this.spin_SuppAmount.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SuppAmount.Location = new System.Drawing.Point(533, 23);
            this.spin_SuppAmount.Name = "spin_SuppAmount";
            this.spin_SuppAmount.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_SuppAmount.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_SuppAmount.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_SuppAmount.Size = new System.Drawing.Size(101, 21);
            this.spin_SuppAmount.TabIndex = 297;
            this.spin_SuppAmount.Tag = "SuppAmount";
            // 
            // suppAmountLable
            // 
            this.suppAmountLable.AutoSize = true;
            this.suppAmountLable.Location = new System.Drawing.Point(446, 26);
            this.suppAmountLable.Name = "suppAmountLable";
            this.suppAmountLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppAmountLable, null);
            this.suppAmountLable.TabIndex = 298;
            this.suppAmountLable.Text = "Supp Amount";
            // 
            // spin_Amount
            // 
            this.spin_Amount.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Amount.Location = new System.Drawing.Point(533, 70);
            this.spin_Amount.Name = "spin_Amount";
            this.spin_Amount.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_Amount.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_Amount.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_Amount.Size = new System.Drawing.Size(101, 21);
            this.spin_Amount.TabIndex = 295;
            this.spin_Amount.Tag = "PHAmount";
            // 
            // pHAmountLable
            // 
            this.pHAmountLable.AutoSize = true;
            this.pHAmountLable.Location = new System.Drawing.Point(458, 72);
            this.pHAmountLable.Name = "pHAmountLable";
            this.pHAmountLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHAmountLable, null);
            this.pHAmountLable.TabIndex = 296;
            this.pHAmountLable.Text = "PH Amount";
            // 
            // spin_Qty
            // 
            this.spin_Qty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Qty.Location = new System.Drawing.Point(533, 46);
            this.spin_Qty.Name = "spin_Qty";
            this.spin_Qty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_Qty.Size = new System.Drawing.Size(101, 21);
            this.spin_Qty.TabIndex = 293;
            this.spin_Qty.Tag = "PHQty";
            // 
            // pHQtyLable
            // 
            this.pHQtyLable.AutoSize = true;
            this.pHQtyLable.Location = new System.Drawing.Point(458, 48);
            this.pHQtyLable.Name = "pHQtyLable";
            this.pHQtyLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHQtyLable, null);
            this.pHQtyLable.TabIndex = 294;
            this.pHQtyLable.Text = "PH PO Qty";
            // 
            // imag_ClassCode
            // 
            this.imag_ClassCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ClassCode", true));
            this.imag_ClassCode.Location = new System.Drawing.Point(305, 116);
            this.imag_ClassCode.Name = "imag_ClassCode";
            this.imag_ClassCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imag_ClassCode.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Default", 1, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Re-dyeing", 2, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("PO for Sample", 3, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Processing PO", 4, -1)});
            this.imag_ClassCode.Size = new System.Drawing.Size(102, 21);
            this.imag_ClassCode.TabIndex = 292;
            this.imag_ClassCode.Tag = "OrderClass";
            // 
            // imag_OrderClass
            // 
            this.imag_OrderClass.Location = new System.Drawing.Point(305, 94);
            this.imag_OrderClass.Name = "imag_OrderClass";
            this.imag_OrderClass.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imag_OrderClass.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Default", 1, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Re-dyeing", 2, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("PO for Sample", 3, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Processing PO", 4, -1)});
            this.imag_OrderClass.Size = new System.Drawing.Size(102, 21);
            this.imag_OrderClass.TabIndex = 292;
            this.imag_OrderClass.Tag = "OrderClass";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(228, 120);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 291;
            this.label1.Text = "Class Code";
            // 
            // orderClassLable
            // 
            this.orderClassLable.AutoSize = true;
            this.orderClassLable.Location = new System.Drawing.Point(228, 97);
            this.orderClassLable.Name = "orderClassLable";
            this.orderClassLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderClassLable, null);
            this.orderClassLable.TabIndex = 291;
            this.orderClassLable.Text = "Order Class";
            // 
            // dte_ShipmentDate
            // 
            this.dte_ShipmentDate.EditValue = null;
            this.dte_ShipmentDate.Location = new System.Drawing.Point(93, 94);
            this.dte_ShipmentDate.Name = "dte_ShipmentDate";
            this.dte_ShipmentDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_ShipmentDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_ShipmentDate.Size = new System.Drawing.Size(92, 21);
            this.dte_ShipmentDate.TabIndex = 286;
            this.dte_ShipmentDate.Tag = "ShipmentDate";
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.dte_ShipmentDate, conditionValidatonRule2);
            // 
            // dueDateLable
            // 
            this.dueDateLable.AutoSize = true;
            this.dueDateLable.Location = new System.Drawing.Point(3, 98);
            this.dueDateLable.Name = "dueDateLable";
            this.dueDateLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.dueDateLable, null);
            this.dueDateLable.TabIndex = 290;
            this.dueDateLable.Text = "Shipment Date";
            // 
            // Comb_Factory
            // 
            this.Comb_Factory.Location = new System.Drawing.Point(328, 71);
            this.Comb_Factory.Name = "Comb_Factory";
            this.Comb_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.Comb_Factory.Properties.Items.AddRange(new object[] {
            "SL",
            "BD"});
            this.Comb_Factory.Size = new System.Drawing.Size(79, 21);
            this.Comb_Factory.TabIndex = 284;
            this.Comb_Factory.Tag = "Factory";
            // 
            // factoryLable
            // 
            this.factoryLable.AutoSize = true;
            this.factoryLable.Location = new System.Drawing.Point(191, 74);
            this.factoryLable.Name = "factoryLable";
            this.factoryLable.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.factoryLable, null);
            this.factoryLable.TabIndex = 289;
            this.factoryLable.Text = "Our Production Site";
            // 
            // spin_SuppQty
            // 
            this.spin_SuppQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SuppQty.Location = new System.Drawing.Point(533, 0);
            this.spin_SuppQty.Name = "spin_SuppQty";
            this.spin_SuppQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_SuppQty.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_SuppQty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_SuppQty.Size = new System.Drawing.Size(101, 21);
            this.spin_SuppQty.TabIndex = 283;
            this.spin_SuppQty.Tag = "SuppQty";
            // 
            // totalReceivedQtyLable
            // 
            this.totalReceivedQtyLable.AutoSize = true;
            this.totalReceivedQtyLable.Location = new System.Drawing.Point(422, 3);
            this.totalReceivedQtyLable.Name = "totalReceivedQtyLable";
            this.totalReceivedQtyLable.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.totalReceivedQtyLable, null);
            this.totalReceivedQtyLable.TabIndex = 288;
            this.totalReceivedQtyLable.Text = "Supplier PO Qty";
            // 
            // purchaseOfficerLable
            // 
            this.purchaseOfficerLable.AutoSize = true;
            this.purchaseOfficerLable.Location = new System.Drawing.Point(198, 28);
            this.purchaseOfficerLable.Name = "purchaseOfficerLable";
            this.purchaseOfficerLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.purchaseOfficerLable, null);
            this.purchaseOfficerLable.TabIndex = 287;
            this.purchaseOfficerLable.Text = "Purchase Officer";
            // 
            // txtD_PurchaseOfficer
            // 
            this.txtD_PurchaseOfficer.Location = new System.Drawing.Point(305, 25);
            this.txtD_PurchaseOfficer.Name = "txtD_PurchaseOfficer";
            this.txtD_PurchaseOfficer.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_PurchaseOfficer.Size = new System.Drawing.Size(102, 21);
            this.txtD_PurchaseOfficer.TabIndex = 282;
            this.txtD_PurchaseOfficer.Tag = "PurchaseOfficer";
            // 
            // txtD_Company
            // 
            this.txtD_Company.Location = new System.Drawing.Point(93, 25);
            this.txtD_Company.Name = "txtD_Company";
            this.txtD_Company.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Company.Properties.MaxLength = 2;
            this.txtD_Company.Size = new System.Drawing.Size(41, 21);
            this.txtD_Company.TabIndex = 276;
            this.txtD_Company.Tag = "Company";
            // 
            // txtD_Version
            // 
            this.txtD_Version.Location = new System.Drawing.Point(93, 2);
            this.txtD_Version.Name = "txtD_Version";
            this.txtD_Version.Size = new System.Drawing.Size(85, 21);
            this.txtD_Version.TabIndex = 274;
            this.txtD_Version.Tag = "POVersion";
            // 
            // dte_OrderDate
            // 
            this.dte_OrderDate.EditValue = null;
            this.dte_OrderDate.Location = new System.Drawing.Point(93, 71);
            this.dte_OrderDate.Name = "dte_OrderDate";
            this.dte_OrderDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_OrderDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_OrderDate.Size = new System.Drawing.Size(92, 21);
            this.dte_OrderDate.TabIndex = 280;
            this.dte_OrderDate.Tag = "OrderDate";
            // 
            // txtD_PONO
            // 
            this.txtD_PONO.Location = new System.Drawing.Point(93, 48);
            this.txtD_PONO.Name = "txtD_PONO";
            this.txtD_PONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_PONO.Properties.MaxLength = 20;
            this.txtD_PONO.Size = new System.Drawing.Size(92, 21);
            this.txtD_PONO.TabIndex = 278;
            this.txtD_PONO.Tag = "PONO";
            conditionValidatonRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule3.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.txtD_PONO, conditionValidatonRule3);
            // 
            // txtD_Dept
            // 
            this.txtD_Dept.Location = new System.Drawing.Point(305, 48);
            this.txtD_Dept.Name = "txtD_Dept";
            this.txtD_Dept.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Dept.Size = new System.Drawing.Size(102, 21);
            this.txtD_Dept.TabIndex = 285;
            this.txtD_Dept.Tag = "Dept";
            // 
            // pOVersionLable
            // 
            this.pOVersionLable.AutoSize = true;
            this.pOVersionLable.Location = new System.Drawing.Point(39, 6);
            this.pOVersionLable.Name = "pOVersionLable";
            this.pOVersionLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.pOVersionLable, null);
            this.pOVersionLable.TabIndex = 273;
            this.pOVersionLable.Text = "Version";
            // 
            // orderDateLable
            // 
            this.orderDateLable.AutoSize = true;
            this.orderDateLable.Location = new System.Drawing.Point(21, 75);
            this.orderDateLable.Name = "orderDateLable";
            this.orderDateLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderDateLable, null);
            this.orderDateLable.TabIndex = 281;
            this.orderDateLable.Text = "Order Date";
            // 
            // deptLable
            // 
            this.deptLable.AutoSize = true;
            this.deptLable.Location = new System.Drawing.Point(270, 51);
            this.deptLable.Name = "deptLable";
            this.deptLable.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.deptLable, null);
            this.deptLable.TabIndex = 279;
            this.deptLable.Text = "Dept";
            // 
            // companyLable
            // 
            this.companyLable.AutoSize = true;
            this.companyLable.Location = new System.Drawing.Point(39, 29);
            this.companyLable.Name = "companyLable";
            this.companyLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.companyLable, null);
            this.companyLable.TabIndex = 275;
            this.companyLable.Text = "Company";
            // 
            // pONOLable
            // 
            this.pONOLable.AutoSize = true;
            this.pONOLable.Location = new System.Drawing.Point(51, 52);
            this.pONOLable.Name = "pONOLable";
            this.pONOLable.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.pONOLable, null);
            this.pONOLable.TabIndex = 277;
            this.pONOLable.Text = "PO NO";
            // 
            // panelControl2
            // 
            this.panelControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl2.Controls.Add(this.checkEdit1);
            this.panelControl2.Controls.Add(this.butUpload);
            this.panelControl2.Controls.Add(this.butDownLoad);
            this.panelControl2.Location = new System.Drawing.Point(677, 5);
            this.panelControl2.Name = "panelControl2";
            this.panelControl2.Size = new System.Drawing.Size(109, 108);
            this.PlatetoolTipController.SetSuperTip(this.panelControl2, null);
            this.panelControl2.TabIndex = 14;
            // 
            // checkEdit1
            // 
            this.checkEdit1.Enabled = false;
            this.checkEdit1.Location = new System.Drawing.Point(5, 5);
            this.checkEdit1.Name = "checkEdit1";
            this.checkEdit1.Properties.Caption = "Uploaded";
            this.checkEdit1.Size = new System.Drawing.Size(75, 19);
            this.checkEdit1.TabIndex = 62;
            // 
            // butUpload
            // 
            this.butUpload.Enabled = false;
            this.butUpload.Location = new System.Drawing.Point(7, 35);
            this.butUpload.Name = "butUpload";
            this.butUpload.Size = new System.Drawing.Size(90, 27);
            this.butUpload.TabIndex = 19;
            this.butUpload.Text = "Upload Pdf";
            this.butUpload.Click += new System.EventHandler(this.butUpload_Click);
            // 
            // butDownLoad
            // 
            this.butDownLoad.Enabled = false;
            this.butDownLoad.Location = new System.Drawing.Point(7, 67);
            this.butDownLoad.Name = "butDownLoad";
            this.butDownLoad.Size = new System.Drawing.Size(90, 28);
            this.butDownLoad.TabIndex = 20;
            this.butDownLoad.Text = "DownLoad Pdf";
            this.butDownLoad.Click += new System.EventHandler(this.butDownLoad_Click);
            // 
            // SupplierInfo
            // 
            this.SupplierInfo.AutoScroll = true;
            this.SupplierInfo.Controls.Add(this.emailLabel);
            this.SupplierInfo.Controls.Add(this.emailTextEdit);
            this.SupplierInfo.Controls.Add(this.textEdit1);
            this.SupplierInfo.Controls.Add(this.label8);
            this.SupplierInfo.Controls.Add(this.comb_Currency);
            this.SupplierInfo.Controls.Add(this.spin_Rate);
            this.SupplierInfo.Controls.Add(this.rateLable);
            this.SupplierInfo.Controls.Add(this.txtD_DeliveryTermsDesc);
            this.SupplierInfo.Controls.Add(this.txtD_PaymentTermsDesc);
            this.SupplierInfo.Controls.Add(this.comb_PaymentMethod);
            this.SupplierInfo.Controls.Add(this.comb_DeliveryTerm);
            this.SupplierInfo.Controls.Add(this.comb_PaymentTerms);
            this.SupplierInfo.Controls.Add(this.memoExEdit3);
            this.SupplierInfo.Controls.Add(this.telNumberLable);
            this.SupplierInfo.Controls.Add(this.txtD_TelNumber);
            this.SupplierInfo.Controls.Add(this.deliveryTermLable);
            this.SupplierInfo.Controls.Add(this.destinationLable);
            this.SupplierInfo.Controls.Add(this.txtD_Country);
            this.SupplierInfo.Controls.Add(this.currencyLable);
            this.SupplierInfo.Controls.Add(this.txtD_SupplierName);
            this.SupplierInfo.Controls.Add(this.faxNumberLable);
            this.SupplierInfo.Controls.Add(this.lable_SupplierName);
            this.SupplierInfo.Controls.Add(this.paymentTermsLable);
            this.SupplierInfo.Controls.Add(this.supplierAddressLable);
            this.SupplierInfo.Controls.Add(this.paymentMethodLable);
            this.SupplierInfo.Controls.Add(this.txtD_AttnPerson);
            this.SupplierInfo.Controls.Add(this.attnPersonLable);
            this.SupplierInfo.Controls.Add(this.txtD_FaxNumber);
            this.SupplierInfo.Name = "SupplierInfo";
            this.SupplierInfo.Size = new System.Drawing.Size(796, 185);
            this.SupplierInfo.Text = "Supplier Info - 1";
            // 
            // emailLabel
            // 
            this.emailLabel.AutoSize = true;
            this.emailLabel.Location = new System.Drawing.Point(54, 114);
            this.emailLabel.Name = "emailLabel";
            this.emailLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.emailLabel, null);
            this.emailLabel.TabIndex = 261;
            this.emailLabel.Text = "Email:";
            // 
            // emailTextEdit
            // 
            this.emailTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Email", true));
            this.emailTextEdit.Location = new System.Drawing.Point(101, 111);
            this.emailTextEdit.Name = "emailTextEdit";
            this.emailTextEdit.Size = new System.Drawing.Size(204, 21);
            this.emailTextEdit.TabIndex = 262;
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(101, 5);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(89, 21);
            this.textEdit1.TabIndex = 248;
            this.textEdit1.Tag = "Supplier";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(36, 7);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.label8, null);
            this.label8.TabIndex = 247;
            this.label8.Text = "Supplier ";
            // 
            // comb_Currency
            // 
            this.comb_Currency.EditValue = "";
            this.comb_Currency.Location = new System.Drawing.Point(425, 26);
            this.comb_Currency.Name = "comb_Currency";
            this.comb_Currency.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_Currency.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_Currency.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_Currency.Size = new System.Drawing.Size(85, 21);
            this.comb_Currency.TabIndex = 246;
            this.comb_Currency.Tag = "Currency";
            // 
            // spin_Rate
            // 
            this.spin_Rate.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Rate.Location = new System.Drawing.Point(626, 26);
            this.spin_Rate.Name = "spin_Rate";
            this.spin_Rate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_Rate.Size = new System.Drawing.Size(105, 21);
            this.spin_Rate.TabIndex = 244;
            this.spin_Rate.Tag = "Rate";
            // 
            // rateLable
            // 
            this.rateLable.AutoSize = true;
            this.rateLable.Location = new System.Drawing.Point(579, 28);
            this.rateLable.Name = "rateLable";
            this.rateLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.rateLable, null);
            this.rateLable.TabIndex = 245;
            this.rateLable.Text = "ExRate";
            // 
            // txtD_DeliveryTermsDesc
            // 
            this.txtD_DeliveryTermsDesc.Location = new System.Drawing.Point(516, 90);
            this.txtD_DeliveryTermsDesc.Name = "txtD_DeliveryTermsDesc";
            this.txtD_DeliveryTermsDesc.Size = new System.Drawing.Size(198, 21);
            this.txtD_DeliveryTermsDesc.TabIndex = 85;
            this.txtD_DeliveryTermsDesc.Tag = "DeliveryTermsDesc";
            this.txtD_DeliveryTermsDesc.Visible = false;
            // 
            // txtD_PaymentTermsDesc
            // 
            this.txtD_PaymentTermsDesc.Location = new System.Drawing.Point(516, 68);
            this.txtD_PaymentTermsDesc.Name = "txtD_PaymentTermsDesc";
            this.txtD_PaymentTermsDesc.Size = new System.Drawing.Size(198, 21);
            this.txtD_PaymentTermsDesc.TabIndex = 84;
            this.txtD_PaymentTermsDesc.Tag = "PaymentTermsDesc";
            // 
            // comb_PaymentMethod
            // 
            this.comb_PaymentMethod.EditValue = "";
            this.comb_PaymentMethod.Location = new System.Drawing.Point(425, 46);
            this.comb_PaymentMethod.Name = "comb_PaymentMethod";
            this.comb_PaymentMethod.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_PaymentMethod.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_PaymentMethod.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_PaymentMethod.Size = new System.Drawing.Size(85, 21);
            this.comb_PaymentMethod.TabIndex = 81;
            this.comb_PaymentMethod.Tag = "PaymentMethod";
            this.comb_PaymentMethod.Visible = false;
            // 
            // comb_DeliveryTerm
            // 
            this.comb_DeliveryTerm.EditValue = "";
            this.comb_DeliveryTerm.Location = new System.Drawing.Point(425, 90);
            this.comb_DeliveryTerm.Name = "comb_DeliveryTerm";
            this.comb_DeliveryTerm.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_DeliveryTerm.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_DeliveryTerm.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_DeliveryTerm.Size = new System.Drawing.Size(85, 21);
            this.comb_DeliveryTerm.TabIndex = 80;
            this.comb_DeliveryTerm.Tag = "DeliveryTerm";
            this.comb_DeliveryTerm.Visible = false;
            // 
            // comb_PaymentTerms
            // 
            this.comb_PaymentTerms.EditValue = "";
            this.comb_PaymentTerms.Location = new System.Drawing.Point(425, 68);
            this.comb_PaymentTerms.Name = "comb_PaymentTerms";
            this.comb_PaymentTerms.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_PaymentTerms.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_PaymentTerms.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_PaymentTerms.Size = new System.Drawing.Size(85, 21);
            this.comb_PaymentTerms.TabIndex = 78;
            this.comb_PaymentTerms.Tag = "PaymentTerms";
            // 
            // memoExEdit3
            // 
            this.memoExEdit3.Location = new System.Drawing.Point(626, 3);
            this.memoExEdit3.Name = "memoExEdit3";
            this.memoExEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.memoExEdit3.Properties.PopupStartSize = new System.Drawing.Size(800, 300);
            this.memoExEdit3.Properties.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.memoExEdit3.Properties.WordWrap = false;
            this.memoExEdit3.Size = new System.Drawing.Size(105, 21);
            this.memoExEdit3.TabIndex = 75;
            this.memoExEdit3.Tag = "SupplierAddress";
            // 
            // telNumberLable
            // 
            this.telNumberLable.AutoSize = true;
            this.telNumberLable.Location = new System.Drawing.Point(72, 96);
            this.telNumberLable.Name = "telNumberLable";
            this.telNumberLable.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.telNumberLable, null);
            this.telNumberLable.TabIndex = 73;
            this.telNumberLable.Text = "Tel";
            // 
            // txtD_TelNumber
            // 
            this.txtD_TelNumber.Location = new System.Drawing.Point(101, 94);
            this.txtD_TelNumber.Name = "txtD_TelNumber";
            this.txtD_TelNumber.Size = new System.Drawing.Size(89, 21);
            this.txtD_TelNumber.TabIndex = 21;
            this.txtD_TelNumber.Tag = "TelNumber";
            // 
            // deliveryTermLable
            // 
            this.deliveryTermLable.AutoSize = true;
            this.deliveryTermLable.Location = new System.Drawing.Point(330, 95);
            this.deliveryTermLable.Name = "deliveryTermLable";
            this.deliveryTermLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.deliveryTermLable, null);
            this.deliveryTermLable.TabIndex = 69;
            this.deliveryTermLable.Text = "Delivery Term";
            this.deliveryTermLable.Visible = false;
            // 
            // destinationLable
            // 
            this.destinationLable.AutoSize = true;
            this.destinationLable.Location = new System.Drawing.Point(342, 7);
            this.destinationLable.Name = "destinationLable";
            this.destinationLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.destinationLable, null);
            this.destinationLable.TabIndex = 67;
            this.destinationLable.Text = "Destination";
            // 
            // txtD_Country
            // 
            this.txtD_Country.Location = new System.Drawing.Point(425, 3);
            this.txtD_Country.Name = "txtD_Country";
            this.txtD_Country.Size = new System.Drawing.Size(85, 21);
            this.txtD_Country.TabIndex = 29;
            this.txtD_Country.Tag = "Destination";
            // 
            // currencyLable
            // 
            this.currencyLable.AutoSize = true;
            this.currencyLable.Location = new System.Drawing.Point(360, 30);
            this.currencyLable.Name = "currencyLable";
            this.currencyLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.currencyLable, null);
            this.currencyLable.TabIndex = 65;
            this.currencyLable.Text = "Currency";
            // 
            // xtraTabPage3
            // 
            this.xtraTabPage3.AutoScroll = true;
            this.xtraTabPage3.Controls.Add(this.CBTransitMode2);
            this.xtraTabPage3.Controls.Add(label3);
            this.xtraTabPage3.Controls.Add(this.MoreBuyerSizeRadioGroup);
            this.xtraTabPage3.Controls.Add(MoreBuyerSizeCupLabel);
            this.xtraTabPage3.Controls.Add(locationOfSuppFactoryLabel);
            this.xtraTabPage3.Controls.Add(this.locationOfSuppFactoryLookUpEdit);
            this.xtraTabPage3.Controls.Add(endPointAddressLabel);
            this.xtraTabPage3.Controls.Add(this.endPointAddressMemoExEdit);
            this.xtraTabPage3.Controls.Add(endPointLabel);
            this.xtraTabPage3.Controls.Add(this.endPointMemoExEdit);
            this.xtraTabPage3.Controls.Add(shipModeLabel);
            this.xtraTabPage3.Controls.Add(this.shipModeTextEdit);
            this.xtraTabPage3.Controls.Add(individualAssociateLabel);
            this.xtraTabPage3.Controls.Add(this.individualAssociateImageComboBoxEdit);
            this.xtraTabPage3.Controls.Add(this.transitFrameLabel);
            this.xtraTabPage3.Controls.Add(this.transitFrameSpinEdit);
            this.xtraTabPage3.Controls.Add(this.transitPointLabel);
            this.xtraTabPage3.Controls.Add(this.transitPointTextEdit);
            this.xtraTabPage3.Controls.Add(this.incotermsLabel);
            this.xtraTabPage3.Controls.Add(this.incotermsTextEdit);
            this.xtraTabPage3.Controls.Add(this.endCustCodeLabel);
            this.xtraTabPage3.Controls.Add(this.endCustCodeTextEdit);
            this.xtraTabPage3.Name = "xtraTabPage3";
            this.xtraTabPage3.Size = new System.Drawing.Size(953, 185);
            this.xtraTabPage3.Text = "Supplier Info - 2";
            // 
            // CBTransitMode2
            // 
            this.CBTransitMode2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitMode2", true));
            this.CBTransitMode2.Location = new System.Drawing.Point(166, 143);
            this.CBTransitMode2.Name = "CBTransitMode2";
            this.CBTransitMode2.Size = new System.Drawing.Size(100, 21);
            this.CBTransitMode2.TabIndex = 287;
            // 
            // MoreBuyerSizeRadioGroup
            // 
            this.MoreBuyerSizeRadioGroup.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MoreBuyerSizeCup", true));
            this.MoreBuyerSizeRadioGroup.EditValue = false;
            this.MoreBuyerSizeRadioGroup.Location = new System.Drawing.Point(482, 110);
            this.MoreBuyerSizeRadioGroup.Name = "MoreBuyerSizeRadioGroup";
            this.MoreBuyerSizeRadioGroup.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Yes"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "No")});
            this.MoreBuyerSizeRadioGroup.Size = new System.Drawing.Size(238, 26);
            this.MoreBuyerSizeRadioGroup.TabIndex = 284;
            // 
            // locationOfSuppFactoryLookUpEdit
            // 
            this.locationOfSuppFactoryLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LocationOfSuppFactory", true));
            this.locationOfSuppFactoryLookUpEdit.Location = new System.Drawing.Point(166, 3);
            this.locationOfSuppFactoryLookUpEdit.Name = "locationOfSuppFactoryLookUpEdit";
            this.locationOfSuppFactoryLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.locationOfSuppFactoryLookUpEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("LocationofSuppFactory", "Factory", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("FactoryDesc", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.locationOfSuppFactoryLookUpEdit.Properties.NullText = "";
            this.locationOfSuppFactoryLookUpEdit.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.Standard;
            this.locationOfSuppFactoryLookUpEdit.Size = new System.Drawing.Size(100, 21);
            this.locationOfSuppFactoryLookUpEdit.TabIndex = 282;
            // 
            // endPointAddressMemoExEdit
            // 
            this.endPointAddressMemoExEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndPointAddress", true));
            this.endPointAddressMemoExEdit.Location = new System.Drawing.Point(482, 30);
            this.endPointAddressMemoExEdit.Name = "endPointAddressMemoExEdit";
            this.endPointAddressMemoExEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.endPointAddressMemoExEdit.Properties.PopupStartSize = new System.Drawing.Size(600, 150);
            this.endPointAddressMemoExEdit.Size = new System.Drawing.Size(238, 21);
            this.endPointAddressMemoExEdit.TabIndex = 281;
            // 
            // endPointMemoExEdit
            // 
            this.endPointMemoExEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndPoint", true));
            this.endPointMemoExEdit.Location = new System.Drawing.Point(482, 6);
            this.endPointMemoExEdit.Name = "endPointMemoExEdit";
            this.endPointMemoExEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.endPointMemoExEdit.Properties.PopupStartSize = new System.Drawing.Size(600, 150);
            this.endPointMemoExEdit.Size = new System.Drawing.Size(238, 21);
            this.endPointMemoExEdit.TabIndex = 280;
            // 
            // shipModeTextEdit
            // 
            this.shipModeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ShipMode", true));
            this.shipModeTextEdit.Location = new System.Drawing.Point(166, 115);
            this.shipModeTextEdit.Name = "shipModeTextEdit";
            this.shipModeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.shipModeTextEdit.TabIndex = 279;
            // 
            // individualAssociateImageComboBoxEdit
            // 
            this.individualAssociateImageComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IndividualAssociate", true));
            this.individualAssociateImageComboBoxEdit.Location = new System.Drawing.Point(166, 31);
            this.individualAssociateImageComboBoxEdit.Name = "individualAssociateImageComboBoxEdit";
            this.individualAssociateImageComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.individualAssociateImageComboBoxEdit.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Individual", 0, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Associate", 1, -1)});
            this.individualAssociateImageComboBoxEdit.Size = new System.Drawing.Size(100, 21);
            this.individualAssociateImageComboBoxEdit.TabIndex = 275;
            // 
            // transitFrameSpinEdit
            // 
            this.transitFrameSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitFrame", true));
            this.transitFrameSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.transitFrameSpinEdit.Location = new System.Drawing.Point(482, 54);
            this.transitFrameSpinEdit.Name = "transitFrameSpinEdit";
            this.transitFrameSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.transitFrameSpinEdit.Size = new System.Drawing.Size(238, 21);
            this.transitFrameSpinEdit.TabIndex = 274;
            // 
            // transitPointTextEdit
            // 
            this.transitPointTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitPoint", true));
            this.transitPointTextEdit.Location = new System.Drawing.Point(482, 78);
            this.transitPointTextEdit.Name = "transitPointTextEdit";
            this.transitPointTextEdit.Size = new System.Drawing.Size(238, 21);
            this.transitPointTextEdit.TabIndex = 272;
            // 
            // incotermsTextEdit
            // 
            this.incotermsTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Incoterms", true));
            this.incotermsTextEdit.Location = new System.Drawing.Point(166, 87);
            this.incotermsTextEdit.Name = "incotermsTextEdit";
            this.incotermsTextEdit.Size = new System.Drawing.Size(100, 21);
            this.incotermsTextEdit.TabIndex = 268;
            // 
            // endCustCodeTextEdit
            // 
            this.endCustCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndCustCode", true));
            this.endCustCodeTextEdit.Location = new System.Drawing.Point(166, 59);
            this.endCustCodeTextEdit.Name = "endCustCodeTextEdit";
            this.endCustCodeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.endCustCodeTextEdit.TabIndex = 262;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.poTermListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(796, 226);
            this.xtraTabPage2.Text = "POTerms";
            // 
            // poTermListForm1
            // 
            this.poTermListForm1.AllowAddRow = true;
            this.poTermListForm1.AlwaysShowDesignLayout = false;
            this.poTermListForm1.AutoOpenDetailForm = false;
            this.poTermListForm1.DataContext = null;
            this.poTermListForm1.DataSource = null;
            this.poTermListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poTermListForm1.EditorTypeName = "PH.POPC.UI.POTermDetailForm";
            this.poTermListForm1.FileID = null;
            this.poTermListForm1.FirstForm = null;
            this.poTermListForm1.FormName = "POTermListForm";
            this.poTermListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poTermListForm1.FormTitle = "PH.POPC.UI.POTermListForm";
            this.poTermListForm1.IsCancelList = false;
            this.poTermListForm1.IsShowPivotTable = false;
            uI_GridViewLayout1.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout1.CheckFlag = false;
            uI_GridViewLayout1.CurrentBindingSource = null;
            uI_GridViewLayout1.CurrentDataContext = null;
            uI_GridViewLayout1.FileID = null;
            uI_GridViewLayout1.FormName = null;
            uI_GridViewLayout1.IsSys = null;
            uI_GridViewLayout1.IsSysDefault = null;
            uI_GridViewLayout1.IsUser = null;
            uI_GridViewLayout1.IsUserDefault = null;
            uI_GridViewLayout1.LayoutName = null;
            uI_GridViewLayout1.LayoutRaw = null;
            uI_GridViewLayout1.SideProgramID = null;
            uI_GridViewLayout1.UserID = null;
            this.poTermListForm1.LayoutData = uI_GridViewLayout1;
            this.poTermListForm1.LayoutName = null;
            this.poTermListForm1.ListForm = null;
            this.poTermListForm1.Location = new System.Drawing.Point(0, 0);
            this.poTermListForm1.MenuID = ((long)(0));
            this.poTermListForm1.Name = "poTermListForm1";
            this.poTermListForm1.NeedCheckPermission = true;
            this.poTermListForm1.NextForm = null;
            this.poTermListForm1.ParentForm = null;
            this.poTermListForm1.PrevForm = null;
            this.poTermListForm1.RowChangeAutoSave = true;
            this.poTermListForm1.ShowMultiCheck = false;
            this.poTermListForm1.SideProgramID = null;
            this.poTermListForm1.Size = new System.Drawing.Size(796, 226);
            this.PlatetoolTipController.SetSuperTip(this.poTermListForm1, null);
            this.poTermListForm1.TabControls = null;
            this.poTermListForm1.TabIndex = 0;
            this.poTermListForm1.TabPage = null;
            // 
            // btnPrintSticker
            // 
            this.btnPrintSticker.Caption = "Report";
            this.btnPrintSticker.Id = 19;
            this.btnPrintSticker.Name = "btnPrintSticker";
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Report";
            this.barButtonItem1.Id = 20;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // btnReportPO
            // 
            this.btnReportPO.Caption = "Report";
            this.btnReportPO.Id = 21;
            this.btnReportPO.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSolidReport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnAssortedReport)});
            this.btnReportPO.Name = "btnReportPO";
            // 
            // btnSolidReport
            // 
            this.btnSolidReport.Caption = "Solid";
            this.btnSolidReport.Id = 23;
            this.btnSolidReport.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem2),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem3),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem4, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem5),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem6, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem7)});
            this.btnSolidReport.Name = "btnSolidReport";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "Sum-English";
            this.barButtonItem2.Id = 24;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem2_ItemClick);
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "Sum-Chinese";
            this.barButtonItem3.Id = 25;
            this.barButtonItem3.Name = "barButtonItem3";
            this.barButtonItem3.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem3_ItemClick);
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Caption = "Detail-Internal-English";
            this.barButtonItem4.Id = 26;
            this.barButtonItem4.Name = "barButtonItem4";
            this.barButtonItem4.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem4_ItemClick);
            // 
            // barButtonItem5
            // 
            this.barButtonItem5.Caption = "Detail-Internal-Chinese";
            this.barButtonItem5.Id = 27;
            this.barButtonItem5.Name = "barButtonItem5";
            this.barButtonItem5.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem5_ItemClick);
            // 
            // barButtonItem6
            // 
            this.barButtonItem6.Caption = "Detail-External-English";
            this.barButtonItem6.Id = 28;
            this.barButtonItem6.Name = "barButtonItem6";
            this.barButtonItem6.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem6_ItemClick);
            // 
            // barButtonItem7
            // 
            this.barButtonItem7.Caption = "Detail-External-Chinese";
            this.barButtonItem7.Id = 29;
            this.barButtonItem7.Name = "barButtonItem7";
            this.barButtonItem7.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem7_ItemClick);
            // 
            // btnAssortedReport
            // 
            this.btnAssortedReport.Caption = "Assorted";
            this.btnAssortedReport.Id = 22;
            this.btnAssortedReport.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem8),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem9),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem10, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem11),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem12, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem13)});
            this.btnAssortedReport.Name = "btnAssortedReport";
            // 
            // barButtonItem8
            // 
            this.barButtonItem8.Caption = "Sum-English";
            this.barButtonItem8.Id = 30;
            this.barButtonItem8.Name = "barButtonItem8";
            this.barButtonItem8.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem8_ItemClick);
            // 
            // barButtonItem9
            // 
            this.barButtonItem9.Caption = "Sum-Chinese";
            this.barButtonItem9.Id = 31;
            this.barButtonItem9.Name = "barButtonItem9";
            this.barButtonItem9.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem9_ItemClick);
            // 
            // barButtonItem10
            // 
            this.barButtonItem10.Caption = "Detail-Internal-English";
            this.barButtonItem10.Id = 32;
            this.barButtonItem10.Name = "barButtonItem10";
            this.barButtonItem10.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem10_ItemClick);
            // 
            // barButtonItem11
            // 
            this.barButtonItem11.Caption = "Detail-Internal-Chinese";
            this.barButtonItem11.Id = 33;
            this.barButtonItem11.Name = "barButtonItem11";
            this.barButtonItem11.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem11_ItemClick);
            // 
            // barButtonItem12
            // 
            this.barButtonItem12.Caption = "Detail-External-English";
            this.barButtonItem12.Id = 34;
            this.barButtonItem12.Name = "barButtonItem12";
            this.barButtonItem12.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem12_ItemClick);
            // 
            // barButtonItem13
            // 
            this.barButtonItem13.Caption = "Detail-External-Chinese";
            this.barButtonItem13.Id = 35;
            this.barButtonItem13.Name = "barButtonItem13";
            this.barButtonItem13.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem13_ItemClick);
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Report";
            this.barSubItem1.Id = 36;
            this.barSubItem1.Name = "barSubItem1";
            // 
            // dxErrorProvider1
            // 
            this.dxErrorProvider1.ContainerControl = this;
            // 
            // poDetailListForm1
            // 
            this.poDetailListForm1.AllowAddRow = true;
            this.poDetailListForm1.AlwaysShowDesignLayout = false;
            this.poDetailListForm1.AutoOpenDetailForm = false;
            this.poDetailListForm1.DataContext = null;
            this.poDetailListForm1.DataSource = null;
            this.poDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poDetailListForm1.EditorTypeName = null;
            this.poDetailListForm1.FileID = null;
            this.poDetailListForm1.FirstForm = null;
            this.poDetailListForm1.FormName = "PODetailListForm";
            this.poDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poDetailListForm1.FormTitle = "PH.POPC.UI.NewPO.PODetailListForm";
            this.poDetailListForm1.IsCancelList = false;
            this.poDetailListForm1.IsShowPivotTable = false;
            this.poDetailListForm1.LayoutData = null;
            this.poDetailListForm1.LayoutName = null;
            this.poDetailListForm1.ListForm = null;
            this.poDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.poDetailListForm1.m_POInfo = null;
            this.poDetailListForm1.MenuID = ((long)(0));
            this.poDetailListForm1.Name = "poDetailListForm1";
            this.poDetailListForm1.NeedCheckPermission = true;
            this.poDetailListForm1.NextForm = null;
            this.poDetailListForm1.ParentForm = null;
            this.poDetailListForm1.PrevForm = null;
            this.poDetailListForm1.RowChangeAutoSave = true;
            this.poDetailListForm1.ShowMultiCheck = false;
            this.poDetailListForm1.SideProgramID = null;
            this.poDetailListForm1.Size = new System.Drawing.Size(953, 193);
            this.PlatetoolTipController.SetSuperTip(this.poDetailListForm1, null);
            this.poDetailListForm1.TabControls = null;
            this.poDetailListForm1.TabIndex = 0;
            this.poDetailListForm1.TabPage = null;
            // 
            // POHeaderDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POHeaderDetailForm";
            this.Size = new System.Drawing.Size(966, 502);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_AttnPerson.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_FaxNumber.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).EndInit();
            this.xtraTabControl2.ResumeLayout(false);
            this.BaseInfo.ResumeLayout(false);
            this.BaseInfo.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.mem_Remark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_DeliveryAddress.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.look_Supplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PHAttnPerson.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Amount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Qty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imag_ClassCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imag_OrderClass.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ShipmentDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ShipmentDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Comb_Factory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PurchaseOfficer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Version.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_OrderDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_OrderDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Dept.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl2)).EndInit();
            this.panelControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.checkEdit1.Properties)).EndInit();
            this.SupplierInfo.ResumeLayout(false);
            this.SupplierInfo.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.emailTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_Currency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Rate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DeliveryTermsDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PaymentTermsDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentMethod.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_DeliveryTerm.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentTerms.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TelNumber.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Country.Properties)).EndInit();
            this.xtraTabPage3.ResumeLayout(false);
            this.xtraTabPage3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.CBTransitMode2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MoreBuyerSizeRadioGroup.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.locationOfSuppFactoryLookUpEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointAddressMemoExEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointMemoExEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.shipModeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.individualAssociateImageComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitFrameSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitPointTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.incotermsTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endCustCodeTextEdit.Properties)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxErrorProvider1)).EndInit();
            this.ResumeLayout(false);

        }
        private Label transitFrameLabel;
        private Label transitPointLabel;
        private Label incotermsLabel;
        private Label endCustCodeLabel;
        private PODetailListForm poDetailListForm1;
        private Label emailLabel;
        private TextEdit emailTextEdit;
        private ImageComboBoxEdit individualAssociateImageComboBoxEdit;
        private TextEdit shipModeTextEdit;
        private MemoExEdit endPointAddressMemoExEdit;
        private MemoExEdit endPointMemoExEdit;
        private LookUpEdit locationOfSuppFactoryLookUpEdit;
        private RadioGroup MoreBuyerSizeRadioGroup;
        public ImageComboBoxEdit imag_ClassCode;
        public Label label1;
        private TextEdit CBTransitMode2;
    }
}
