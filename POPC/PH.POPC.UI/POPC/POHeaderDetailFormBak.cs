/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.POHeaderDetailFormBak.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/19 上午 11:43:40 $   
* $Revision: 0 $   
*/

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

namespace PH.POPC.UI
{
    public class POHeaderDetailFormBak : PH.Platform.UI.CS.UI2.ParentChildForm
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
        private System.Windows.Forms.Label shipModeLable;
        public PODetailListForm poDetailListForm1;
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
        private ComboBoxEdit comb_ShipMode;
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
        private LookUpEdit lkp_MaterialCategory;
        public ImageComboBoxEdit imageComboBoxEdit1;
        public Label statusLable;
        public ComboBoxEdit comb_PHAttnPerson;
        public Label pHAttnPersonLable;
        public Label materialCategoryLable;
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
        private TextEdit endPointAddressTextEdit;
        private TextEdit endPointTextEdit;
        private TextEdit endCustCodeTextEdit;
        private TextEdit emailTextEdit;
        private TextEdit locationOfSuppFactoryTextEdit;
        private ComboBoxEdit individualAssociateComboBoxEdit;
        private TextEdit txtD_TelNumber;
        #endregion
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label transitFrameLabel;
            System.Windows.Forms.Label transitPointLabel;
            System.Windows.Forms.Label locationOfSuppFactoryLabel;
            System.Windows.Forms.Label incotermsLabel;
            System.Windows.Forms.Label endPointAddressLabel;
            System.Windows.Forms.Label endPointLabel;
            System.Windows.Forms.Label endCustCodeLabel;
            System.Windows.Forms.Label emailLabel;
            System.Windows.Forms.Label individualAssociateLabel;
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout1 = new PH.Platform.BO.UI_GridViewLayout();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule3 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule4 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule5 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule6 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule7 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule8 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout2 = new PH.Platform.BO.UI_GridViewLayout();
            this.txtD_SupplierName = new DevExpress.XtraEditors.TextEdit();
            this.lable_SupplierName = new System.Windows.Forms.Label();
            this.supplierAddressLable = new System.Windows.Forms.Label();
            this.txtD_AttnPerson = new DevExpress.XtraEditors.TextEdit();
            this.attnPersonLable = new System.Windows.Forms.Label();
            this.txtD_FaxNumber = new DevExpress.XtraEditors.TextEdit();
            this.faxNumberLable = new System.Windows.Forms.Label();
            this.paymentTermsLable = new System.Windows.Forms.Label();
            this.paymentMethodLable = new System.Windows.Forms.Label();
            this.shipModeLable = new System.Windows.Forms.Label();
            this.poDetailListForm1 = new PH.POPC.UI.PODetailListForm();
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
            this.lkp_MaterialCategory = new DevExpress.XtraEditors.LookUpEdit();
            this.imageComboBoxEdit1 = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.statusLable = new System.Windows.Forms.Label();
            this.comb_PHAttnPerson = new DevExpress.XtraEditors.ComboBoxEdit();
            this.pHAttnPersonLable = new System.Windows.Forms.Label();
            this.materialCategoryLable = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Currency = new DevExpress.XtraEditors.TextEdit();
            this.label2 = new System.Windows.Forms.Label();
            this.spin_SuppAmount = new DevExpress.XtraEditors.SpinEdit();
            this.suppAmountLable = new System.Windows.Forms.Label();
            this.spin_Amount = new DevExpress.XtraEditors.SpinEdit();
            this.pHAmountLable = new System.Windows.Forms.Label();
            this.spin_Qty = new DevExpress.XtraEditors.SpinEdit();
            this.pHQtyLable = new System.Windows.Forms.Label();
            this.imag_OrderClass = new DevExpress.XtraEditors.ImageComboBoxEdit();
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
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.label8 = new System.Windows.Forms.Label();
            this.comb_Currency = new DevExpress.XtraEditors.ComboBoxEdit();
            this.spin_Rate = new DevExpress.XtraEditors.SpinEdit();
            this.rateLable = new System.Windows.Forms.Label();
            this.txtD_DeliveryTermsDesc = new DevExpress.XtraEditors.TextEdit();
            this.txtD_PaymentTermsDesc = new DevExpress.XtraEditors.TextEdit();
            this.comb_PaymentMethod = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comb_DeliveryTerm = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comb_ShipMode = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comb_PaymentTerms = new DevExpress.XtraEditors.ComboBoxEdit();
            this.memoExEdit3 = new DevExpress.XtraEditors.MemoExEdit();
            this.telNumberLable = new System.Windows.Forms.Label();
            this.txtD_TelNumber = new DevExpress.XtraEditors.TextEdit();
            this.deliveryTermLable = new System.Windows.Forms.Label();
            this.destinationLable = new System.Windows.Forms.Label();
            this.txtD_Country = new DevExpress.XtraEditors.TextEdit();
            this.currencyLable = new System.Windows.Forms.Label();
            this.xtraTabPage3 = new DevExpress.XtraTab.XtraTabPage();
            this.individualAssociateComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.transitFrameSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.transitPointTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.locationOfSuppFactoryTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.incotermsTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.endPointAddressTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.endPointTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.endCustCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.emailTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.poTermListForm1 = new PH.POPC.UI.POTermListForm();
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
            transitFrameLabel = new System.Windows.Forms.Label();
            transitPointLabel = new System.Windows.Forms.Label();
            locationOfSuppFactoryLabel = new System.Windows.Forms.Label();
            incotermsLabel = new System.Windows.Forms.Label();
            endPointAddressLabel = new System.Windows.Forms.Label();
            endPointLabel = new System.Windows.Forms.Label();
            endCustCodeLabel = new System.Windows.Forms.Label();
            emailLabel = new System.Windows.Forms.Label();
            individualAssociateLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.lkp_MaterialCategory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PHAttnPerson.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Amount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Qty.Properties)).BeginInit();
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
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_Currency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Rate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DeliveryTermsDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PaymentTermsDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentMethod.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_DeliveryTerm.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_ShipMode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentTerms.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit3.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TelNumber.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Country.Properties)).BeginInit();
            this.xtraTabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.individualAssociateComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitFrameSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitPointTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.locationOfSuppFactoryTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.incotermsTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointAddressTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endCustCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emailTextEdit.Properties)).BeginInit();
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
            this.objEdtbarManager.MaxItemId = 51;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.FloatLocation = new System.Drawing.Point(94, 138);
            this.objEditBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem1, true)});
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 286);
            this.splitterControl1.Size = new System.Drawing.Size(966, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.xtraTabControl2);
            this.headerTitleBar.Size = new System.Drawing.Size(966, 260);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.xtraTabControl2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 292);
            this.panelControl1.Size = new System.Drawing.Size(966, 210);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.poDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(953, 174);
            this.xtraTabPage1.Text = "PODetails";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(962, 206);
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
            // transitFrameLabel
            // 
            transitFrameLabel.AutoSize = true;
            transitFrameLabel.Location = new System.Drawing.Point(38, 86);
            transitFrameLabel.Name = "transitFrameLabel";
            transitFrameLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(transitFrameLabel, null);
            transitFrameLabel.TabIndex = 271;
            transitFrameLabel.Text = "Transit Frame:";
            // 
            // transitPointLabel
            // 
            transitPointLabel.AutoSize = true;
            transitPointLabel.Location = new System.Drawing.Point(38, 112);
            transitPointLabel.Name = "transitPointLabel";
            transitPointLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(transitPointLabel, null);
            transitPointLabel.TabIndex = 269;
            transitPointLabel.Text = "Transit Point:";
            // 
            // locationOfSuppFactoryLabel
            // 
            locationOfSuppFactoryLabel.AutoSize = true;
            locationOfSuppFactoryLabel.Location = new System.Drawing.Point(241, 60);
            locationOfSuppFactoryLabel.Name = "locationOfSuppFactoryLabel";
            locationOfSuppFactoryLabel.Size = new System.Drawing.Size(155, 12);
            this.PlatetoolTipController.SetSuperTip(locationOfSuppFactoryLabel, null);
            locationOfSuppFactoryLabel.TabIndex = 267;
            locationOfSuppFactoryLabel.Text = "Location Of Supp Factory:";
            // 
            // incotermsLabel
            // 
            incotermsLabel.AutoSize = true;
            incotermsLabel.Location = new System.Drawing.Point(331, 33);
            incotermsLabel.Name = "incotermsLabel";
            incotermsLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(incotermsLabel, null);
            incotermsLabel.TabIndex = 266;
            incotermsLabel.Text = "Incoterms:";
            // 
            // endPointAddressLabel
            // 
            endPointAddressLabel.AutoSize = true;
            endPointAddressLabel.Location = new System.Drawing.Point(14, 60);
            endPointAddressLabel.Name = "endPointAddressLabel";
            endPointAddressLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(endPointAddressLabel, null);
            endPointAddressLabel.TabIndex = 263;
            endPointAddressLabel.Text = "End Point Address:";
            // 
            // endPointLabel
            // 
            endPointLabel.AutoSize = true;
            endPointLabel.Location = new System.Drawing.Point(62, 8);
            endPointLabel.Name = "endPointLabel";
            endPointLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(endPointLabel, null);
            endPointLabel.TabIndex = 261;
            endPointLabel.Text = "End Point:";
            // 
            // endCustCodeLabel
            // 
            endCustCodeLabel.AutoSize = true;
            endCustCodeLabel.Location = new System.Drawing.Point(38, 34);
            endCustCodeLabel.Name = "endCustCodeLabel";
            endCustCodeLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(endCustCodeLabel, null);
            endCustCodeLabel.TabIndex = 259;
            endCustCodeLabel.Text = "End Cust Code:";
            // 
            // emailLabel
            // 
            emailLabel.AutoSize = true;
            emailLabel.Location = new System.Drawing.Point(355, 6);
            emailLabel.Name = "emailLabel";
            emailLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(emailLabel, null);
            emailLabel.TabIndex = 258;
            emailLabel.Text = "Email:";
            // 
            // individualAssociateLabel
            // 
            individualAssociateLabel.AutoSize = true;
            individualAssociateLabel.Location = new System.Drawing.Point(265, 90);
            individualAssociateLabel.Name = "individualAssociateLabel";
            individualAssociateLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(individualAssociateLabel, null);
            individualAssociateLabel.TabIndex = 274;
            individualAssociateLabel.Text = "Individual Associate:";
            // 
            // txtD_SupplierName
            // 
            this.txtD_SupplierName.Location = new System.Drawing.Point(95, 29);
            this.txtD_SupplierName.Name = "txtD_SupplierName";
            this.txtD_SupplierName.Size = new System.Drawing.Size(89, 21);
            this.txtD_SupplierName.TabIndex = 18;
            this.txtD_SupplierName.Tag = "SupplierName";
            // 
            // lable_SupplierName
            // 
            this.lable_SupplierName.AutoSize = true;
            this.lable_SupplierName.Location = new System.Drawing.Point(13, 31);
            this.lable_SupplierName.Name = "lable_SupplierName";
            this.lable_SupplierName.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_SupplierName, null);
            this.lable_SupplierName.TabIndex = 9;
            this.lable_SupplierName.Text = "Supplier Name";
            // 
            // supplierAddressLable
            // 
            this.supplierAddressLable.AutoSize = true;
            this.supplierAddressLable.Location = new System.Drawing.Point(388, 7);
            this.supplierAddressLable.Name = "supplierAddressLable";
            this.supplierAddressLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierAddressLable, null);
            this.supplierAddressLable.TabIndex = 10;
            this.supplierAddressLable.Text = "Supplier Address";
            // 
            // txtD_AttnPerson
            // 
            this.txtD_AttnPerson.Location = new System.Drawing.Point(95, 51);
            this.txtD_AttnPerson.Name = "txtD_AttnPerson";
            this.txtD_AttnPerson.Size = new System.Drawing.Size(89, 21);
            this.txtD_AttnPerson.TabIndex = 19;
            this.txtD_AttnPerson.Tag = "AttnPerson";
            // 
            // attnPersonLable
            // 
            this.attnPersonLable.AutoSize = true;
            this.attnPersonLable.Location = new System.Drawing.Point(13, 54);
            this.attnPersonLable.Name = "attnPersonLable";
            this.attnPersonLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.attnPersonLable, null);
            this.attnPersonLable.TabIndex = 15;
            this.attnPersonLable.Text = "Attn Person";
            // 
            // txtD_FaxNumber
            // 
            this.txtD_FaxNumber.Location = new System.Drawing.Point(95, 73);
            this.txtD_FaxNumber.Name = "txtD_FaxNumber";
            this.txtD_FaxNumber.Size = new System.Drawing.Size(89, 21);
            this.txtD_FaxNumber.TabIndex = 20;
            this.txtD_FaxNumber.Tag = "FaxNumber";
            // 
            // faxNumberLable
            // 
            this.faxNumberLable.AutoSize = true;
            this.faxNumberLable.Location = new System.Drawing.Point(13, 75);
            this.faxNumberLable.Name = "faxNumberLable";
            this.faxNumberLable.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.faxNumberLable, null);
            this.faxNumberLable.TabIndex = 16;
            this.faxNumberLable.Text = "Fax";
            // 
            // paymentTermsLable
            // 
            this.paymentTermsLable.AutoSize = true;
            this.paymentTermsLable.Location = new System.Drawing.Point(196, 73);
            this.paymentTermsLable.Name = "paymentTermsLable";
            this.paymentTermsLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.paymentTermsLable, null);
            this.paymentTermsLable.TabIndex = 18;
            this.paymentTermsLable.Text = "Payment Terms";
            // 
            // paymentMethodLable
            // 
            this.paymentMethodLable.AutoSize = true;
            this.paymentMethodLable.Location = new System.Drawing.Point(196, 53);
            this.paymentMethodLable.Name = "paymentMethodLable";
            this.paymentMethodLable.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.paymentMethodLable, null);
            this.paymentMethodLable.TabIndex = 20;
            this.paymentMethodLable.Text = "Payment Method";
            // 
            // shipModeLable
            // 
            this.shipModeLable.AutoSize = true;
            this.shipModeLable.Location = new System.Drawing.Point(13, 118);
            this.shipModeLable.Name = "shipModeLable";
            this.shipModeLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.shipModeLable, null);
            this.shipModeLable.TabIndex = 23;
            this.shipModeLable.Text = "Ship Mode";
            // 
            // poDetailListForm1
            // 
            this.poDetailListForm1.AllowAddRow = true;
            this.poDetailListForm1.AutoOpenDetailForm = false;
            this.poDetailListForm1.DataContext = null;
            this.poDetailListForm1.DataSource = null;
            this.poDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poDetailListForm1.EditorTypeName = "PH.POPC.UI.PODetailDetailForm";
            this.poDetailListForm1.FileID = null;
            this.poDetailListForm1.FirstForm = null;
            this.poDetailListForm1.FormName = "PODetailListForm";
            this.poDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poDetailListForm1.FormTitle = "PH.POPC.UI.PODetailListForm";
            this.poDetailListForm1.IsCancelList = false;
            this.poDetailListForm1.IsShowPivotTable = false;
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
            this.poDetailListForm1.LayoutData = uI_GridViewLayout1;
            this.poDetailListForm1.LayoutName = null;
            this.poDetailListForm1.ListForm = null;
            this.poDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.poDetailListForm1.MenuID = ((long)(0));
            this.poDetailListForm1.Name = "poDetailListForm1";
            this.poDetailListForm1.NextForm = null;
            this.poDetailListForm1.ParentForm = null;
            this.poDetailListForm1.PrevForm = null;
            this.poDetailListForm1.RowChangeAutoSave = true;
            this.poDetailListForm1.ShowMultiCheck = false;
            this.poDetailListForm1.SideProgramID = null;
            this.poDetailListForm1.Size = new System.Drawing.Size(953, 174);
            this.PlatetoolTipController.SetSuperTip(this.poDetailListForm1, null);
            this.poDetailListForm1.TabControls = null;
            this.poDetailListForm1.TabIndex = 0;
            this.poDetailListForm1.TabPage = null;
            // 
            // xtraTabControl2
            // 
            this.xtraTabControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl2.Location = new System.Drawing.Point(2, 21);
            this.xtraTabControl2.Name = "xtraTabControl2";
            this.xtraTabControl2.SelectedTabPage = this.BaseInfo;
            this.xtraTabControl2.Size = new System.Drawing.Size(962, 237);
            this.xtraTabControl2.TabIndex = 67;
            this.xtraTabControl2.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.BaseInfo,
            this.SupplierInfo,
            this.xtraTabPage3});
            this.xtraTabControl2.SelectedPageChanging += new DevExpress.XtraTab.TabPageChangingEventHandler(this.xtraTabControl2_SelectedPageChanging);
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
            this.BaseInfo.Controls.Add(this.lkp_MaterialCategory);
            this.BaseInfo.Controls.Add(this.imageComboBoxEdit1);
            this.BaseInfo.Controls.Add(this.statusLable);
            this.BaseInfo.Controls.Add(this.comb_PHAttnPerson);
            this.BaseInfo.Controls.Add(this.pHAttnPersonLable);
            this.BaseInfo.Controls.Add(this.materialCategoryLable);
            this.BaseInfo.Controls.Add(this.textEdit2);
            this.BaseInfo.Controls.Add(this.txtD_Currency);
            this.BaseInfo.Controls.Add(this.label2);
            this.BaseInfo.Controls.Add(this.spin_SuppAmount);
            this.BaseInfo.Controls.Add(this.suppAmountLable);
            this.BaseInfo.Controls.Add(this.spin_Amount);
            this.BaseInfo.Controls.Add(this.pHAmountLable);
            this.BaseInfo.Controls.Add(this.spin_Qty);
            this.BaseInfo.Controls.Add(this.pHQtyLable);
            this.BaseInfo.Controls.Add(this.imag_OrderClass);
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
            this.BaseInfo.Size = new System.Drawing.Size(953, 205);
            this.BaseInfo.Text = "BaseInfo";
            // 
            // mem_Remark
            // 
            this.mem_Remark.Location = new System.Drawing.Point(499, 143);
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
            this.remarkLable.Location = new System.Drawing.Point(399, 146);
            this.remarkLable.Name = "remarkLable";
            this.remarkLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.remarkLable, null);
            this.remarkLable.TabIndex = 315;
            this.remarkLable.Text = "Remark";
            // 
            // textEdit3
            // 
            this.textEdit3.Location = new System.Drawing.Point(85, 143);
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
            this.comb_DeliveryAddress.Location = new System.Drawing.Point(499, 117);
            this.comb_DeliveryAddress.Name = "comb_DeliveryAddress";
            this.comb_DeliveryAddress.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_DeliveryAddress.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_DeliveryAddress.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_DeliveryAddress.Size = new System.Drawing.Size(253, 21);
            this.comb_DeliveryAddress.TabIndex = 312;
            this.comb_DeliveryAddress.Tag = "DeliveryAddress";
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.comb_DeliveryAddress, conditionValidatonRule1);
            // 
            // deliveryAddressLable
            // 
            this.deliveryAddressLable.AutoSize = true;
            this.deliveryAddressLable.Location = new System.Drawing.Point(399, 120);
            this.deliveryAddressLable.Name = "deliveryAddressLable";
            this.deliveryAddressLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.deliveryAddressLable, null);
            this.deliveryAddressLable.TabIndex = 311;
            this.deliveryAddressLable.Text = "Delivery Address";
            // 
            // look_Supplier
            // 
            this.look_Supplier.EditValue = "";
            this.look_Supplier.Location = new System.Drawing.Point(86, 117);
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
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.look_Supplier, conditionValidatonRule2);
            this.look_Supplier.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.look_Supplier_CloseUp);
            // 
            // supplierLable
            // 
            this.supplierLable.AutoSize = true;
            this.supplierLable.Location = new System.Drawing.Point(4, 121);
            this.supplierLable.Name = "supplierLable";
            this.supplierLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierLable, null);
            this.supplierLable.TabIndex = 309;
            this.supplierLable.Text = "Supplier";
            // 
            // lkp_MaterialCategory
            // 
            this.lkp_MaterialCategory.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterialCategory", true));
            this.lkp_MaterialCategory.Location = new System.Drawing.Point(291, 117);
            this.lkp_MaterialCategory.Name = "lkp_MaterialCategory";
            this.lkp_MaterialCategory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lkp_MaterialCategory.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MaterialCategory", "Category", 10),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.lkp_MaterialCategory.Properties.NullText = "";
            this.lkp_MaterialCategory.Size = new System.Drawing.Size(102, 21);
            this.lkp_MaterialCategory.TabIndex = 308;
            this.lkp_MaterialCategory.Tag = "MaterialCategory";
            conditionValidatonRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule3.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.lkp_MaterialCategory, conditionValidatonRule3);
            this.lkp_MaterialCategory.Validating += new System.ComponentModel.CancelEventHandler(this.lkp_MaterialCategory_Validating);
            // 
            // imageComboBoxEdit1
            // 
            this.imageComboBoxEdit1.EditValue = "0";
            this.imageComboBoxEdit1.Location = new System.Drawing.Point(291, 3);
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
            conditionValidatonRule4.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule4.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.imageComboBoxEdit1, conditionValidatonRule4);
            // 
            // statusLable
            // 
            this.statusLable.AutoSize = true;
            this.statusLable.Location = new System.Drawing.Point(188, 6);
            this.statusLable.Name = "statusLable";
            this.statusLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.statusLable, null);
            this.statusLable.TabIndex = 305;
            this.statusLable.Text = "POStatus";
            // 
            // comb_PHAttnPerson
            // 
            this.comb_PHAttnPerson.Location = new System.Drawing.Point(499, 94);
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
            this.pHAttnPersonLable.Location = new System.Drawing.Point(399, 96);
            this.pHAttnPersonLable.Name = "pHAttnPersonLable";
            this.pHAttnPersonLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHAttnPersonLable, null);
            this.pHAttnPersonLable.TabIndex = 303;
            this.pHAttnPersonLable.Text = "PH AttnPerson";
            // 
            // materialCategoryLable
            // 
            this.materialCategoryLable.AutoSize = true;
            this.materialCategoryLable.Location = new System.Drawing.Point(188, 121);
            this.materialCategoryLable.Name = "materialCategoryLable";
            this.materialCategoryLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.materialCategoryLable, null);
            this.materialCategoryLable.TabIndex = 302;
            this.materialCategoryLable.Text = "Category";
            // 
            // textEdit2
            // 
            this.textEdit2.EditValue = "HKD";
            this.textEdit2.Location = new System.Drawing.Point(606, 71);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.ReadOnly = true;
            this.textEdit2.Size = new System.Drawing.Size(36, 21);
            this.textEdit2.TabIndex = 301;
            this.textEdit2.Tag = "";
            // 
            // txtD_Currency
            // 
            this.txtD_Currency.Location = new System.Drawing.Point(606, 25);
            this.txtD_Currency.Name = "txtD_Currency";
            this.txtD_Currency.Properties.ReadOnly = true;
            this.txtD_Currency.Size = new System.Drawing.Size(36, 21);
            this.txtD_Currency.TabIndex = 300;
            this.txtD_Currency.Tag = "Currency";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(606, -1);
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
            this.spin_SuppAmount.Location = new System.Drawing.Point(499, 24);
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
            this.suppAmountLable.Location = new System.Drawing.Point(399, 27);
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
            this.spin_Amount.Location = new System.Drawing.Point(499, 71);
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
            this.pHAmountLable.Location = new System.Drawing.Point(399, 73);
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
            this.spin_Qty.Location = new System.Drawing.Point(499, 47);
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
            this.pHQtyLable.Location = new System.Drawing.Point(399, 49);
            this.pHQtyLable.Name = "pHQtyLable";
            this.pHQtyLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHQtyLable, null);
            this.pHQtyLable.TabIndex = 294;
            this.pHQtyLable.Text = "PH PO Qty";
            // 
            // imag_OrderClass
            // 
            this.imag_OrderClass.Location = new System.Drawing.Point(291, 95);
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
            conditionValidatonRule5.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule5.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.imag_OrderClass, conditionValidatonRule5);
            // 
            // orderClassLable
            // 
            this.orderClassLable.AutoSize = true;
            this.orderClassLable.Location = new System.Drawing.Point(188, 98);
            this.orderClassLable.Name = "orderClassLable";
            this.orderClassLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderClassLable, null);
            this.orderClassLable.TabIndex = 291;
            this.orderClassLable.Text = "Order Class";
            // 
            // dte_ShipmentDate
            // 
            this.dte_ShipmentDate.EditValue = null;
            this.dte_ShipmentDate.Location = new System.Drawing.Point(86, 95);
            this.dte_ShipmentDate.Name = "dte_ShipmentDate";
            this.dte_ShipmentDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_ShipmentDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_ShipmentDate.Size = new System.Drawing.Size(92, 21);
            this.dte_ShipmentDate.TabIndex = 286;
            this.dte_ShipmentDate.Tag = "ShipmentDate";
            conditionValidatonRule6.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule6.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.dte_ShipmentDate, conditionValidatonRule6);
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
            this.Comb_Factory.Location = new System.Drawing.Point(291, 72);
            this.Comb_Factory.Name = "Comb_Factory";
            this.Comb_Factory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.Comb_Factory.Properties.Items.AddRange(new object[] {
            "SL",
            "KB",
            "SunTress"});
            this.Comb_Factory.Size = new System.Drawing.Size(102, 21);
            this.Comb_Factory.TabIndex = 284;
            this.Comb_Factory.Tag = "Factory";
            conditionValidatonRule7.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule7.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.Comb_Factory, conditionValidatonRule7);
            // 
            // factoryLable
            // 
            this.factoryLable.AutoSize = true;
            this.factoryLable.Location = new System.Drawing.Point(188, 75);
            this.factoryLable.Name = "factoryLable";
            this.factoryLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.factoryLable, null);
            this.factoryLable.TabIndex = 289;
            this.factoryLable.Text = "Factory";
            // 
            // spin_SuppQty
            // 
            this.spin_SuppQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SuppQty.Location = new System.Drawing.Point(499, 1);
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
            this.totalReceivedQtyLable.Location = new System.Drawing.Point(399, 4);
            this.totalReceivedQtyLable.Name = "totalReceivedQtyLable";
            this.totalReceivedQtyLable.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.totalReceivedQtyLable, null);
            this.totalReceivedQtyLable.TabIndex = 288;
            this.totalReceivedQtyLable.Text = "Supplier PO Qty";
            // 
            // purchaseOfficerLable
            // 
            this.purchaseOfficerLable.AutoSize = true;
            this.purchaseOfficerLable.Location = new System.Drawing.Point(188, 29);
            this.purchaseOfficerLable.Name = "purchaseOfficerLable";
            this.purchaseOfficerLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.purchaseOfficerLable, null);
            this.purchaseOfficerLable.TabIndex = 287;
            this.purchaseOfficerLable.Text = "Purchase Officer";
            // 
            // txtD_PurchaseOfficer
            // 
            this.txtD_PurchaseOfficer.Location = new System.Drawing.Point(291, 26);
            this.txtD_PurchaseOfficer.Name = "txtD_PurchaseOfficer";
            this.txtD_PurchaseOfficer.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_PurchaseOfficer.Size = new System.Drawing.Size(102, 21);
            this.txtD_PurchaseOfficer.TabIndex = 282;
            this.txtD_PurchaseOfficer.Tag = "PurchaseOfficer";
            // 
            // txtD_Company
            // 
            this.txtD_Company.Location = new System.Drawing.Point(86, 26);
            this.txtD_Company.Name = "txtD_Company";
            this.txtD_Company.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Company.Properties.MaxLength = 2;
            this.txtD_Company.Size = new System.Drawing.Size(41, 21);
            this.txtD_Company.TabIndex = 276;
            this.txtD_Company.Tag = "Company";
            // 
            // txtD_Version
            // 
            this.txtD_Version.Location = new System.Drawing.Point(86, 3);
            this.txtD_Version.Name = "txtD_Version";
            this.txtD_Version.Size = new System.Drawing.Size(85, 21);
            this.txtD_Version.TabIndex = 274;
            this.txtD_Version.Tag = "POVersion";
            // 
            // dte_OrderDate
            // 
            this.dte_OrderDate.EditValue = null;
            this.dte_OrderDate.Location = new System.Drawing.Point(86, 72);
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
            this.txtD_PONO.Location = new System.Drawing.Point(86, 49);
            this.txtD_PONO.Name = "txtD_PONO";
            this.txtD_PONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_PONO.Properties.MaxLength = 20;
            this.txtD_PONO.Size = new System.Drawing.Size(92, 21);
            this.txtD_PONO.TabIndex = 278;
            this.txtD_PONO.Tag = "PONO";
            conditionValidatonRule8.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule8.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.txtD_PONO, conditionValidatonRule8);
            // 
            // txtD_Dept
            // 
            this.txtD_Dept.Location = new System.Drawing.Point(291, 49);
            this.txtD_Dept.Name = "txtD_Dept";
            this.txtD_Dept.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Dept.Size = new System.Drawing.Size(102, 21);
            this.txtD_Dept.TabIndex = 285;
            this.txtD_Dept.Tag = "Dept";
            // 
            // pOVersionLable
            // 
            this.pOVersionLable.AutoSize = true;
            this.pOVersionLable.Location = new System.Drawing.Point(3, 6);
            this.pOVersionLable.Name = "pOVersionLable";
            this.pOVersionLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.pOVersionLable, null);
            this.pOVersionLable.TabIndex = 273;
            this.pOVersionLable.Text = "Version";
            // 
            // orderDateLable
            // 
            this.orderDateLable.AutoSize = true;
            this.orderDateLable.Location = new System.Drawing.Point(3, 75);
            this.orderDateLable.Name = "orderDateLable";
            this.orderDateLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderDateLable, null);
            this.orderDateLable.TabIndex = 281;
            this.orderDateLable.Text = "Order Date";
            // 
            // deptLable
            // 
            this.deptLable.AutoSize = true;
            this.deptLable.Location = new System.Drawing.Point(188, 52);
            this.deptLable.Name = "deptLable";
            this.deptLable.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.deptLable, null);
            this.deptLable.TabIndex = 279;
            this.deptLable.Text = "Dept";
            // 
            // companyLable
            // 
            this.companyLable.AutoSize = true;
            this.companyLable.Location = new System.Drawing.Point(3, 29);
            this.companyLable.Name = "companyLable";
            this.companyLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.companyLable, null);
            this.companyLable.TabIndex = 275;
            this.companyLable.Text = "Company";
            // 
            // pONOLable
            // 
            this.pONOLable.AutoSize = true;
            this.pONOLable.Location = new System.Drawing.Point(3, 52);
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
            this.panelControl2.Location = new System.Drawing.Point(643, 6);
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
            this.SupplierInfo.Controls.Add(this.textEdit1);
            this.SupplierInfo.Controls.Add(this.label8);
            this.SupplierInfo.Controls.Add(this.comb_Currency);
            this.SupplierInfo.Controls.Add(this.spin_Rate);
            this.SupplierInfo.Controls.Add(this.rateLable);
            this.SupplierInfo.Controls.Add(this.txtD_DeliveryTermsDesc);
            this.SupplierInfo.Controls.Add(this.txtD_PaymentTermsDesc);
            this.SupplierInfo.Controls.Add(this.comb_PaymentMethod);
            this.SupplierInfo.Controls.Add(this.comb_DeliveryTerm);
            this.SupplierInfo.Controls.Add(this.comb_ShipMode);
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
            this.SupplierInfo.Controls.Add(this.shipModeLable);
            this.SupplierInfo.Controls.Add(this.attnPersonLable);
            this.SupplierInfo.Controls.Add(this.txtD_FaxNumber);
            this.SupplierInfo.Name = "SupplierInfo";
            this.SupplierInfo.Size = new System.Drawing.Size(796, 205);
            this.SupplierInfo.Text = "SupplierInfo";
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(95, 5);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(89, 21);
            this.textEdit1.TabIndex = 248;
            this.textEdit1.Tag = "Supplier";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(13, 7);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.label8, null);
            this.label8.TabIndex = 247;
            this.label8.Text = "Supplier ";
            // 
            // comb_Currency
            // 
            this.comb_Currency.EditValue = "";
            this.comb_Currency.Location = new System.Drawing.Point(297, 28);
            this.comb_Currency.Name = "comb_Currency";
            this.comb_Currency.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_Currency.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_Currency.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_Currency.Size = new System.Drawing.Size(85, 21);
            this.comb_Currency.TabIndex = 246;
            this.comb_Currency.Tag = "Currency";
            this.comb_Currency.SelectedValueChanged += new System.EventHandler(this.comb_Currency_SelectedValueChanged);
            // 
            // spin_Rate
            // 
            this.spin_Rate.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Rate.Location = new System.Drawing.Point(478, 28);
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
            this.rateLable.Location = new System.Drawing.Point(432, 29);
            this.rateLable.Name = "rateLable";
            this.rateLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.rateLable, null);
            this.rateLable.TabIndex = 245;
            this.rateLable.Text = "ExRate";
            // 
            // txtD_DeliveryTermsDesc
            // 
            this.txtD_DeliveryTermsDesc.Location = new System.Drawing.Point(385, 92);
            this.txtD_DeliveryTermsDesc.Name = "txtD_DeliveryTermsDesc";
            this.txtD_DeliveryTermsDesc.Size = new System.Drawing.Size(198, 21);
            this.txtD_DeliveryTermsDesc.TabIndex = 85;
            this.txtD_DeliveryTermsDesc.Tag = "DeliveryTermsDesc";
            // 
            // txtD_PaymentTermsDesc
            // 
            this.txtD_PaymentTermsDesc.Location = new System.Drawing.Point(385, 70);
            this.txtD_PaymentTermsDesc.Name = "txtD_PaymentTermsDesc";
            this.txtD_PaymentTermsDesc.Size = new System.Drawing.Size(198, 21);
            this.txtD_PaymentTermsDesc.TabIndex = 84;
            this.txtD_PaymentTermsDesc.Tag = "PaymentTermsDesc";
            // 
            // comb_PaymentMethod
            // 
            this.comb_PaymentMethod.EditValue = "";
            this.comb_PaymentMethod.Location = new System.Drawing.Point(297, 48);
            this.comb_PaymentMethod.Name = "comb_PaymentMethod";
            this.comb_PaymentMethod.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_PaymentMethod.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_PaymentMethod.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_PaymentMethod.Size = new System.Drawing.Size(85, 21);
            this.comb_PaymentMethod.TabIndex = 81;
            this.comb_PaymentMethod.Tag = "PaymentMethod";
            // 
            // comb_DeliveryTerm
            // 
            this.comb_DeliveryTerm.EditValue = "";
            this.comb_DeliveryTerm.Location = new System.Drawing.Point(297, 92);
            this.comb_DeliveryTerm.Name = "comb_DeliveryTerm";
            this.comb_DeliveryTerm.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_DeliveryTerm.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_DeliveryTerm.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_DeliveryTerm.Size = new System.Drawing.Size(85, 21);
            this.comb_DeliveryTerm.TabIndex = 80;
            this.comb_DeliveryTerm.Tag = "DeliveryTerm";
            // 
            // comb_ShipMode
            // 
            this.comb_ShipMode.EditValue = "";
            this.comb_ShipMode.Location = new System.Drawing.Point(95, 116);
            this.comb_ShipMode.Name = "comb_ShipMode";
            this.comb_ShipMode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comb_ShipMode.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.comb_ShipMode.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comb_ShipMode.Size = new System.Drawing.Size(89, 21);
            this.comb_ShipMode.TabIndex = 79;
            this.comb_ShipMode.Tag = "ShipMode";
            // 
            // comb_PaymentTerms
            // 
            this.comb_PaymentTerms.EditValue = "";
            this.comb_PaymentTerms.Location = new System.Drawing.Point(297, 70);
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
            this.memoExEdit3.Location = new System.Drawing.Point(478, 5);
            this.memoExEdit3.Name = "memoExEdit3";
            this.memoExEdit3.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.memoExEdit3.Properties.PopupStartSize = new System.Drawing.Size(400, 300);
            this.memoExEdit3.Properties.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.memoExEdit3.Properties.WordWrap = false;
            this.memoExEdit3.Size = new System.Drawing.Size(105, 21);
            this.memoExEdit3.TabIndex = 75;
            this.memoExEdit3.Tag = "SupplierAddress";
            // 
            // telNumberLable
            // 
            this.telNumberLable.AutoSize = true;
            this.telNumberLable.Location = new System.Drawing.Point(13, 96);
            this.telNumberLable.Name = "telNumberLable";
            this.telNumberLable.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.telNumberLable, null);
            this.telNumberLable.TabIndex = 73;
            this.telNumberLable.Text = "Tel";
            // 
            // txtD_TelNumber
            // 
            this.txtD_TelNumber.Location = new System.Drawing.Point(95, 94);
            this.txtD_TelNumber.Name = "txtD_TelNumber";
            this.txtD_TelNumber.Size = new System.Drawing.Size(89, 21);
            this.txtD_TelNumber.TabIndex = 21;
            this.txtD_TelNumber.Tag = "TelNumber";
            // 
            // deliveryTermLable
            // 
            this.deliveryTermLable.AutoSize = true;
            this.deliveryTermLable.Location = new System.Drawing.Point(196, 96);
            this.deliveryTermLable.Name = "deliveryTermLable";
            this.deliveryTermLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.deliveryTermLable, null);
            this.deliveryTermLable.TabIndex = 69;
            this.deliveryTermLable.Text = "Delivery Term";
            // 
            // destinationLable
            // 
            this.destinationLable.AutoSize = true;
            this.destinationLable.Location = new System.Drawing.Point(196, 8);
            this.destinationLable.Name = "destinationLable";
            this.destinationLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.destinationLable, null);
            this.destinationLable.TabIndex = 67;
            this.destinationLable.Text = "Destination";
            // 
            // txtD_Country
            // 
            this.txtD_Country.Location = new System.Drawing.Point(297, 5);
            this.txtD_Country.Name = "txtD_Country";
            this.txtD_Country.Size = new System.Drawing.Size(85, 21);
            this.txtD_Country.TabIndex = 29;
            this.txtD_Country.Tag = "Destination";
            // 
            // currencyLable
            // 
            this.currencyLable.AutoSize = true;
            this.currencyLable.Location = new System.Drawing.Point(196, 31);
            this.currencyLable.Name = "currencyLable";
            this.currencyLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.currencyLable, null);
            this.currencyLable.TabIndex = 65;
            this.currencyLable.Text = "Currency";
            // 
            // xtraTabPage3
            // 
            this.xtraTabPage3.Controls.Add(individualAssociateLabel);
            this.xtraTabPage3.Controls.Add(this.individualAssociateComboBoxEdit);
            this.xtraTabPage3.Controls.Add(transitFrameLabel);
            this.xtraTabPage3.Controls.Add(this.transitFrameSpinEdit);
            this.xtraTabPage3.Controls.Add(transitPointLabel);
            this.xtraTabPage3.Controls.Add(this.transitPointTextEdit);
            this.xtraTabPage3.Controls.Add(locationOfSuppFactoryLabel);
            this.xtraTabPage3.Controls.Add(this.locationOfSuppFactoryTextEdit);
            this.xtraTabPage3.Controls.Add(incotermsLabel);
            this.xtraTabPage3.Controls.Add(this.incotermsTextEdit);
            this.xtraTabPage3.Controls.Add(endPointAddressLabel);
            this.xtraTabPage3.Controls.Add(this.endPointAddressTextEdit);
            this.xtraTabPage3.Controls.Add(endPointLabel);
            this.xtraTabPage3.Controls.Add(this.endPointTextEdit);
            this.xtraTabPage3.Controls.Add(endCustCodeLabel);
            this.xtraTabPage3.Controls.Add(this.endCustCodeTextEdit);
            this.xtraTabPage3.Controls.Add(emailLabel);
            this.xtraTabPage3.Controls.Add(this.emailTextEdit);
            this.xtraTabPage3.Name = "xtraTabPage3";
            this.xtraTabPage3.Size = new System.Drawing.Size(796, 205);
            this.xtraTabPage3.Text = "SupplierMore";
            // 
            // individualAssociateComboBoxEdit
            // 
            this.individualAssociateComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IndividualAssociate", true));
            this.individualAssociateComboBoxEdit.Location = new System.Drawing.Point(401, 87);
            this.individualAssociateComboBoxEdit.Name = "individualAssociateComboBoxEdit";
            this.individualAssociateComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.individualAssociateComboBoxEdit.Properties.Items.AddRange(new object[] {
            "Individual",
            "Associate"});
            this.individualAssociateComboBoxEdit.Size = new System.Drawing.Size(100, 21);
            this.individualAssociateComboBoxEdit.TabIndex = 275;
            // 
            // transitFrameSpinEdit
            // 
            this.transitFrameSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitFrame", true));
            this.transitFrameSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.transitFrameSpinEdit.Location = new System.Drawing.Point(134, 81);
            this.transitFrameSpinEdit.Name = "transitFrameSpinEdit";
            this.transitFrameSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.transitFrameSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.transitFrameSpinEdit.TabIndex = 274;
            // 
            // transitPointTextEdit
            // 
            this.transitPointTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "TransitPoint", true));
            this.transitPointTextEdit.Location = new System.Drawing.Point(134, 107);
            this.transitPointTextEdit.Name = "transitPointTextEdit";
            this.transitPointTextEdit.Size = new System.Drawing.Size(100, 21);
            this.transitPointTextEdit.TabIndex = 272;
            // 
            // locationOfSuppFactoryTextEdit
            // 
            this.locationOfSuppFactoryTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LocationOfSuppFactory", true));
            this.locationOfSuppFactoryTextEdit.Location = new System.Drawing.Point(402, 57);
            this.locationOfSuppFactoryTextEdit.Name = "locationOfSuppFactoryTextEdit";
            this.locationOfSuppFactoryTextEdit.Size = new System.Drawing.Size(100, 21);
            this.locationOfSuppFactoryTextEdit.TabIndex = 270;
            // 
            // incotermsTextEdit
            // 
            this.incotermsTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Incoterms", true));
            this.incotermsTextEdit.Location = new System.Drawing.Point(402, 30);
            this.incotermsTextEdit.Name = "incotermsTextEdit";
            this.incotermsTextEdit.Size = new System.Drawing.Size(100, 21);
            this.incotermsTextEdit.TabIndex = 268;
            // 
            // endPointAddressTextEdit
            // 
            this.endPointAddressTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndPointAddress", true));
            this.endPointAddressTextEdit.Location = new System.Drawing.Point(134, 55);
            this.endPointAddressTextEdit.Name = "endPointAddressTextEdit";
            this.endPointAddressTextEdit.Size = new System.Drawing.Size(100, 21);
            this.endPointAddressTextEdit.TabIndex = 265;
            // 
            // endPointTextEdit
            // 
            this.endPointTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndPoint", true));
            this.endPointTextEdit.Location = new System.Drawing.Point(134, 3);
            this.endPointTextEdit.Name = "endPointTextEdit";
            this.endPointTextEdit.Size = new System.Drawing.Size(100, 21);
            this.endPointTextEdit.TabIndex = 264;
            // 
            // endCustCodeTextEdit
            // 
            this.endCustCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndCustCode", true));
            this.endCustCodeTextEdit.Location = new System.Drawing.Point(134, 29);
            this.endCustCodeTextEdit.Name = "endCustCodeTextEdit";
            this.endCustCodeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.endCustCodeTextEdit.TabIndex = 262;
            // 
            // emailTextEdit
            // 
            this.emailTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Email", true));
            this.emailTextEdit.Location = new System.Drawing.Point(402, 3);
            this.emailTextEdit.Name = "emailTextEdit";
            this.emailTextEdit.Size = new System.Drawing.Size(100, 21);
            this.emailTextEdit.TabIndex = 260;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.poTermListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(796, 206);
            this.xtraTabPage2.Text = "POTerms";
            // 
            // poTermListForm1
            // 
            this.poTermListForm1.AllowAddRow = true;
            this.poTermListForm1.AllowGridEdit = true;
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
            uI_GridViewLayout2.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Read;
            uI_GridViewLayout2.CheckFlag = false;
            uI_GridViewLayout2.CurrentBindingSource = null;
            uI_GridViewLayout2.CurrentDataContext = null;
            uI_GridViewLayout2.FileID = null;
            uI_GridViewLayout2.FormName = null;
            uI_GridViewLayout2.IsSys = null;
            uI_GridViewLayout2.IsSysDefault = null;
            uI_GridViewLayout2.IsUser = null;
            uI_GridViewLayout2.IsUserDefault = null;
            uI_GridViewLayout2.LayoutName = null;
            uI_GridViewLayout2.LayoutRaw = null;
            uI_GridViewLayout2.SideProgramID = null;
            uI_GridViewLayout2.UserID = null;
            this.poTermListForm1.LayoutData = uI_GridViewLayout2;
            this.poTermListForm1.LayoutName = null;
            this.poTermListForm1.ListForm = null;
            this.poTermListForm1.Location = new System.Drawing.Point(0, 0);
            this.poTermListForm1.MenuID = ((long)(0));
            this.poTermListForm1.Name = "poTermListForm1";
            this.poTermListForm1.NextForm = null;
            this.poTermListForm1.ParentForm = null;
            this.poTermListForm1.PrevForm = null;
            this.poTermListForm1.RowChangeAutoSave = true;
            this.poTermListForm1.ShowMultiCheck = false;
            this.poTermListForm1.SideProgramID = null;
            this.poTermListForm1.Size = new System.Drawing.Size(796, 206);
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
            // POHeaderDetailFormBak
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POHeaderDetailFormBak";
            this.Size = new System.Drawing.Size(966, 502);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.POHeaderDetailFormBak_Load);
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
            ((System.ComponentModel.ISupportInitialize)(this.lkp_MaterialCategory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PHAttnPerson.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Amount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Qty.Properties)).EndInit();
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
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_Currency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Rate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_DeliveryTermsDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PaymentTermsDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentMethod.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_DeliveryTerm.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_ShipMode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comb_PaymentTerms.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit3.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_TelNumber.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Country.Properties)).EndInit();
            this.xtraTabPage3.ResumeLayout(false);
            this.xtraTabPage3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.individualAssociateComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitFrameSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.transitPointTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.locationOfSuppFactoryTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.incotermsTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointAddressTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endPointTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endCustCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emailTextEdit.Properties)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxErrorProvider1)).EndInit();
            this.ResumeLayout(false);

        }


        public POInfo _poInfo = new POInfo();
        private PH.POPC.BO.POHeader _POHeader;
        private IQueryable<PH.BasicInfo.BO.SupplierProfile> items;
        public POHeaderDetailFormBak()
        {
            InitializeComponent();
        }

        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Common.SetFormStatus(this);
            if (this._poInfo.PoType == POType.POSticker)
            {
                this.butDownLoad.Enabled = false;
                this.butUpload.Enabled = false;
                this.dte_ShipmentDate.Properties.ReadOnly = false;
                this.lkp_MaterialCategory.Properties.ReadOnly = false;
                this.look_Supplier.Properties.ReadOnly = false;
                this.txtD_Dept.Properties.ReadOnly = false;
                this.txtD_PurchaseOfficer.Properties.ReadOnly = false;
                this.imag_OrderClass.Properties.ReadOnly = false;
                this.Comb_Factory.Properties.ReadOnly = false;
                this.comb_PHAttnPerson.Properties.ReadOnly = false;
                this.comb_DeliveryAddress.Properties.ReadOnly = false;
                this.mem_Remark.Properties.ReadOnly = false;
                this.dte_OrderDate.Properties.ReadOnly = false;

            }
            else
            {

                this.butDownLoad.Enabled = true;
                this.butUpload.Enabled = true;
                this.panelControl2.Enabled = true;

            }
            MenInit(this._POHeader);
        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            if (this._POHeader.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                // PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
                //if (h == null) return;
                this._POHeader.Version = 1;
                this._POHeader.AmendmentNo = 0;
                this._POHeader.Company = "P1";
                this._POHeader.OrderDate = DateTime.Now;
                this._POHeader.POType = (int)POType.POSticker;
                this._POHeader.OrderClass = 1;
                this._POHeader.Factory = this.Comb_Factory.Properties.Items[0].ToString();
                this._POHeader.Status = ((int)POStatus.OutStanding).ToString();
                this._POHeader.PurchaseOfficer = PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName;
                this._poInfo.PoType = POType.POSticker;
            }

        }
        public override void DataBind()
        {
            base.DataBind();
            this._POHeader = this.BindingSource.Current as PH.POPC.BO.POHeader;
            this.poDetailListForm1.EditorTypeName = typeof(PODetailDetailForm).FullName;
            this.poDetailListForm1.BindingSource.DataSource = this._POHeader.PODetails;
            this.poDetailListForm1.AllowGridEdit = false;

            this.poTermListForm1.EditorTypeName = typeof(POTermDetailForm).FullName;
            this.poTermListForm1.BindingSource.DataSource = this._POHeader.POTerms;
            this.poTermListForm1.AllowGridEdit = true;


            InitComb(this.comb_PaymentTerms, "PH.MIDc.PaymentTerms");
            InitComb(this.comb_ShipMode, "PH.MIDc.ShipMode");
            //InitComb(this.comb_DeliveryTerm, "PH.MIDc.DeliveryTerms");
            InitDeliveryTerm();
            InitComb(this.comb_PaymentMethod, "PH.POPC.PaymentMethod");
            InitComb(this.comb_DeliveryAddress, "PH.POPC.DeliveryAddress");
            InitComb(this.comb_PHAttnPerson, "PH.POPC.PHAttnPerson", "Description");
            InitComb(this.comb_Currency);
        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            CloseTabPage();
        }
        protected override void OnClickSaveAndReturn()
        {
            // Save();
            base.OnClickSaveAndReturn();
            // EditCurrent();
            CloseTabPage();
        }
        protected override void SaveCurrent()
        {
            this.BindingSource.EndEdit();
            Common.PostGridValue(this.poTermListForm1.objListGridView);
            if (string.IsNullOrEmpty(this._POHeader.Supplier) ||
                this._POHeader.ShipmentDate == null ||
                string.IsNullOrEmpty(this._POHeader.DeliveryAddress)) return;
            if (this._POHeader.POType == (int)POType.POSticker &&
                string.IsNullOrEmpty(this._POHeader.MaterialCategory))
            {
                this.lkp_MaterialCategory.Focus();
                this.lkp_MaterialCategory.EditValue = string.Empty;
                this.dte_ShipmentDate.Focus();
                return;
            }
            if (this._POHeader.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                this._POHeader.PONO = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.POPC.PONumber");
            }
            base.SaveCurrent();
            this._POHeader.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Edit;
            MenInit(this._POHeader);
        }


        private void Save()
        {
            this.BindingSource.EndEdit();
            Common.PostGridValue(this.poTermListForm1.objListGridView);
            if (string.IsNullOrEmpty(this._POHeader.Supplier) ||
                this._POHeader.ShipmentDate == null ||
                string.IsNullOrEmpty(this._POHeader.DeliveryAddress)) return;
            if (this._POHeader.POType == (int)POType.POSticker &&
                string.IsNullOrEmpty(this._POHeader.MaterialCategory))
            {
                this.lkp_MaterialCategory.Focus();
                this.lkp_MaterialCategory.EditValue = string.Empty;
                this.dte_ShipmentDate.Focus();
                return;
            }

            if (this._POHeader.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                this._POHeader.PONO = PH.Platform.Misc.BO.AutoNumber.IDMaker.GetSequenceStr("PH.POPC.PONumber");
            }
            //List<PH.POPC.BO.PODetail> items=this._POHeader.PODetails.Where(p => p.ItemCode == null || p.ItemCode == string.Empty).ToList();
            //for (int i=0;i<items.Count;i++)
            //{
            //  this._POHeader.PODetails.Remove(items[i]);  
            //}



            //foreach (var PODetailitem in this._POHeader.PODetails)
            //{
            //    if (PODetailitem.POColorSizeDetails == null) continue;
            //    foreach (var item in PODetailitem.POColorSizeDetails)
            //    {

            //        if (string.IsNullOrEmpty(item.ItemCode))
            //        {
            //            item.ItemCode = PODetailitem.ItemCode;
            //        }
            //        if (string.IsNullOrEmpty(item.ColorCode))
            //        {
            //            item.ColorCode = string.Empty;
            //        }
            //        if (string.IsNullOrEmpty(item.SizeCode))
            //        {
            //            item.SizeCode = string.Empty;
            //        }
            //        if (string.IsNullOrEmpty(item.FitCode))
            //        {
            //            item.FitCode = string.Empty;
            //        }

            //        if (string.IsNullOrEmpty(item.SKU))
            //        {
            //            item.SKU = (string.IsNullOrEmpty(item.ItemCode) ? string.Empty : item.ItemCode.Trim()) +
            //                (string.IsNullOrEmpty(item.ColorCode) ? string.Empty : item.ColorCode.Trim()) +
            //                (string.IsNullOrEmpty(item.SizeCode) ? string.Empty : item.SizeCode.Trim()) +
            //                (string.IsNullOrEmpty(item.FitCode) ? string.Empty : item.FitCode.Trim());
            //        }

            //    }
            //}



            //try
            //{
            //    this.DataContext.SubmitChanges();//System.Data.Linq.ConflictMode.ContinueOnConflict);
            //    this._POHeader.BOWorkMode = PH.Platform.BO.Interface.WorkMode.Edit;
            //}
            //catch (System.Data.Linq.ChangeConflictException ex)
            //{
            //    this.DataContext.ChangeConflicts.ResolveAll(System.Data.Linq.RefreshMode.KeepCurrentValues);//保存原来的值 有冲突的话保存当前版本

            //    // 注意：解决完冲突后还得 SubmitChanges() 一次，不然一样是没有更新到数据库的

            //    this.DataContext.SubmitChanges();
            //}

        }
        private void InitTerms()
        {
            if (DesignMode) return;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID select cc).ToList<PH.POPC.BO.Term>();

            string s = "";
            int i = 0;
            foreach (PH.POPC.BO.POTerm t in this._POHeader.POTerms)
            {
                PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
                {
                    return t1.TermCode == t.TermCode;
                });
                if (tt != null)
                {
                    i++;
                    s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
                }
            }
            //if (this._POHeader.POType == 1)
            //{
            //    PH.POPC.BO.POERPList list = new PH.POPC.BO.POERPList();
            //    s += list.GetERPTermsConditions(this._POHeader.Company, this._POHeader.PONO);
            //    this._POHeader.ERPAmendment = list.GetERPAmendmentNo(this._POHeader.Company, this._POHeader.PONO);
            //}
            if (s != "")
            {
                this._POHeader.AddtionalTermsAndConditions = s;
            }
        }
        private void CloseTabPage()
        {
            if (this._poInfo.POPCPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, this._poInfo.POPCPage);
            }
        }
        private PH.POPC.BO.POPDF GetPDF()
        {
            if (this._POHeader == null) return null;

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var pdf = (from p in context.POPDFs
                       where p.Company == this._POHeader.Company && p.PONO == this._POHeader.PONO &&
                       p.Version == this._POHeader.Version && p.AmendmentNo == this._POHeader.AmendmentNo
                       select p).FirstOrDefault();
            return pdf;
        }
        /// <summary>
        /// 初始化供应商数据源

        /// </summary>
        private void SupplierData()
        {
            if (DesignMode) return;
            this.Cursor = Cursors.WaitCursor;
            PH.BasicInfo.BO.BasicInfoDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            items = (from cc in context.SupplierProfiles
                     where cc.ERPSupplier != string.Empty
                     && cc.ERPSupplier != null
                     //  && (cc.Active == "Y2"  || cc.Active=="Y1")
                     select cc).OrderBy(aa => aa.ERPSupplier);
            this.look_Supplier.Properties.ValueMember = "ERPSupplier";
            this.look_Supplier.Properties.DisplayMember = "ERPSupplier";
            this.look_Supplier.Properties.DataSource = null;
            this.look_Supplier.Properties.DataSource = items;
            this.Cursor = Cursors.Default;
        }
        /// <summary>
        /// 编辑状态初始化
        /// </summary>
        private void MaterialCategoryData()
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            string sql = string.Format("select  DataCode  as MaterialCategory,Description from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.POPC.POCategory'");
            var result = context.ExecuteQuery<PH.POPC.BO.CodeAndDesc1>(sql).ToList();
            this.lkp_MaterialCategory.Properties.ValueMember = "MaterialCategory";
            this.lkp_MaterialCategory.Properties.DisplayMember = "Description";
            this.lkp_MaterialCategory.Properties.DataSource = null;
            this.lkp_MaterialCategory.Properties.DataSource = result;
        }
        private void InitComb(DevExpress.XtraEditors.ComboBoxEdit cmb, string where, string FldName)
        {
            if (DesignMode) return;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            string sql = string.Format("select distinct {1} from [PH.Platform.Misc]..Misc_DataDictionary where DataType='{0}'", where, FldName);
            var result = context.ExecuteQuery<string>(sql).ToList();
            cmb.Properties.Items.Clear();
            if (result.Count > 0)
            {
                foreach (string item in result)
                {
                    if (string.IsNullOrEmpty(item) == false)
                        cmb.Properties.Items.Add(item);
                }
            }
        }
        private void InitComb(DevExpress.XtraEditors.ComboBoxEdit cmb, string where)
        {
            if (DesignMode) return;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            string sql = string.Format("select distinct DataCode from [PH.Platform.Misc]..Misc_DataDictionary where DataType='{0}'", where);
            var result = context.ExecuteQuery<string>(sql);
            cmb.Properties.Items.Clear();
            foreach (string item in result)
            {
                cmb.Properties.Items.Add(item);
            }
        }
        private void InitComb(DevExpress.XtraEditors.ComboBoxEdit cmb)
        {
            //if (DesignMode) return;
            //PH.BasicInfo.BO.BasicInfoDataContext context = new PH.BasicInfo.BO.BasicInfoDataContext();
            //var _currencyitems = from aa in context.Currencies select aa;
            //cmb.Properties.Items.Clear(); 
            //foreach (var item in _currencyitems)
            //{
            //    cmb.Properties.Items.Add(item.Currency);
            //}
        }
        private void SetSupplierValue(string ErpSupplier)
        {
            if (DesignMode) return;
            if (string.IsNullOrEmpty(ErpSupplier)) return;
            PH.BasicInfo.BO.SupplierProfile sup = items.First<PH.BasicInfo.BO.SupplierProfile>(p => p.ERPSupplier == ErpSupplier);
            if (sup == null) return;
            this._POHeader.SetSupplierOtherValue(sup);
            comb_Currency_SelectedValueChanged(null, null);
        }
        private void FormInit()
        {
            MaterialCategoryData();
            SupplierData();
            POHeaderListFormBak Form = this.PrevForm as POHeaderListFormBak;
            if (Form != null)
            {
                this._poInfo.Poversion = Form._poInfo.Poversion;
                this._poInfo.POPCPage = Form._poInfo.POPCPage;
            }




            this._poInfo.PoType = this._POHeader.POType == null ? POType.POSticker : (POType)this._POHeader.POType;

            this.poTermListForm1._potype = this._poInfo.PoType;
            this.headerTitleBar.AutoScroll = true;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            if (this._poInfo.Poversion == POVersion.AllVersion)
            {
                this.barBtnEdit.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnCopy.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }


            var pdf = this.GetPDF();
            this.checkEdit1.Checked = pdf == null ? false : true;


            if (this._POHeader.POType == (int)POType.PO)
            {
                btnPrintSticker.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.poDetailListForm1.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.poDetailListForm1.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.poTermListForm1.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.poTermListForm1.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barSubItem1.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
            else
            {
                this.btnReportPO.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }

            InitTerms();
        }

        #region 事件
        /// <summary>
        /// 改变供应商的值同时改变其它属性

        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void look_Supplier_CloseUp(object sender, DevExpress.XtraEditors.Controls.CloseUpEventArgs e)
        {
            if (DesignMode) return;
            SetSupplierValue(e.Value.ToString());
        }
        /// <summary>
        /// 上传PDF文件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void butUpload_Click(object sender, EventArgs e)
        {
            if (DesignMode) return;
            if (this.IsNew) return;
            if (this._POHeader == null) return;

            OpenFileDialog ofd = new OpenFileDialog();
            ofd.FileName = string.Empty;
            ofd.Filter = ByteFile.PdfFileFilter;
            string FileName = string.Empty;
            if (ofd.ShowDialog() != DialogResult.OK) return;

            this.Cursor = Cursors.WaitCursor;
            FileName = ofd.FileName;
            string sql = " delete POPDF where Company={0} and PONO={1} and Version={2} and AmendmentNo={3}";
            sql += " Insert into POPDF (Company,PONO,Version,AmendmentNo,PDF) values ({0},{1},{2},{3},{4}) ";
            object[] oparams = new object[5];
            oparams[0] = this.txtD_Company.Text;
            oparams[1] = this.txtD_PONO.Text;
            //oparams[2] = this.txtD_Version.Text;
            //oparams[3] = this.txtD_AmendmentNo.Text;
            oparams[2] = this._POHeader.Version;
            oparams[3] = this._POHeader.AmendmentNo;
            oparams[4] = ByteFile.ReadFile(FileName);
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            context.ExecuteCommand(sql, oparams);
            this.checkEdit1.Checked = true;
            this.Cursor = Cursors.Default;
        }
        /// <summary>
        /// 下载PDF文件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void butDownLoad_Click(object sender, EventArgs e)
        {
            if (DesignMode) return;
            SaveFileDialog dlg = new SaveFileDialog();
            dlg.FileName = string.Empty;
            dlg.Filter = ByteFile.PdfFileFilter;
            string FileName = string.Empty;
            if (dlg.ShowDialog() != DialogResult.OK) return;

            FileName = dlg.FileName;
            var pdf = this.GetPDF();
            if (pdf == null) return;
            this.Cursor = Cursors.WaitCursor;
            System.IO.FileStream fs = new FileStream(FileName, FileMode.OpenOrCreate);
            fs.Write(pdf.PDF, 0, pdf.PDF.Length);
            fs.Close();
            this.Cursor = Cursors.Default;
        }
        private void xtraTabControl2_SelectedPageChanging(object sender, DevExpress.XtraTab.TabPageChangingEventArgs e)
        {
            //if (DesignMode) return;
            //if (e.Page.Name == "SupplierInfo" && this.items == null)
            //{
            //    SupplierData();
            //}
        }
        private void comb_Currency_SelectedValueChanged(object sender, EventArgs e)
        {
            //if (DesignMode) return;
            //PH.BasicInfo.BO.BasicInfoDataContext context = new PH.BasicInfo.BO.BasicInfoDataContext();
            //this.spin_Rate.EditValue = (from aa in context.Currencies where aa.Currency == this.comb_Currency.EditValue.ToString() select aa.StdSellRate).FirstOrDefault();
        }
        private void POHeaderDetailFormBak_Load(object sender, EventArgs e)
        {

            FormInit();
            MenInit(this._POHeader);
        }
        private void lkp_MaterialCategory_Validating(object sender, CancelEventArgs e)
        {
            //if (this._POHeader.POType == (int)POType.POSticker && string.IsNullOrEmpty(this._POHeader.MaterialCategory))
            //{
            //    e.Cancel = true;
            //}
        }
        #endregion

        #region Print
        // StickerPOReport
        private void btnPrint_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //StickerPOReport report = new StickerPOReport();
            //PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //PH.POPC.BO.POHeader h1 = this.BindingSource.Current as PH.POPC.BO.POHeader;
            //PH.POPC.BO.POHeader h = (from a in context.POHeaders
            //                         where a.Version == h1.Version
            //                         && a.AmendmentNo == h1.AmendmentNo
            //                         && a.Company == h1.Company
            //                         && a.PONO == h1.PONO
            //                         select a).Single() as PH.POPC.BO.POHeader;

            ////h.PRefresh(this.DataContext);
            //InitTerms();
            //if (this.items == null) SupplierData();

            //foreach (PH.POPC.BO.PODetail d in h.PODetails)
            //{
            //    if (d.Photo == null)
            //    {
            //        var photo = (from c in context.V_Photos where c.SupplierReference == d.SupplierReference select c).FirstOrDefault();
            //        if (photo != null)
            //            d.Photo = photo.Photo;
            //    }
            //}

            //List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //list.Add(h);
            //report.DataSource = list;
            //report.ShowPreviewDialog();
        }
        #endregion

        #region Solid


        private PH.POPC.BO.POHeader GetNew()
        {

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            PH.POPC.BO.POHeader cur = this.BindingSource.Current as PH.POPC.BO.POHeader;
            PH.POPC.BO.POHeader h = (from a in context.POHeaders
                                     where a.Company == cur.Company
                                     && a.PONO == cur.PONO
                                     && a.AmendmentNo == cur.AmendmentNo
                                     && a.Version == cur.Version
                                     select a).Single() as PH.POPC.BO.POHeader;
            return h;

        }

        private PH.POPC.BO.POHeader GetNew(string Language)
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            PH.POPC.BO.POHeader cur = this.BindingSource.Current as PH.POPC.BO.POHeader;
            PH.POPC.BO.POHeader h = (from a in context.POHeaders
                                     where a.Company == cur.Company
                                     && a.PONO == cur.PONO
                                     && a.AmendmentNo == cur.AmendmentNo
                                     && a.Version == cur.Version
                                     select a).Single() as PH.POPC.BO.POHeader;
            //InitTerms(h, Language);
            this.InitTerms(h);
            return h;

        }

        //Sum solid en
        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.SumSolidReportEn report = new PH.POPC.BackEnd.SumSolidReportEn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumSolidReportEn", stream, GetNew("EN"));

            //PH.POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.SumSolidReportEn report = new PH.POPC.BackEnd.SumSolidReportEn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //PH.Platform.Email.BO.SendMail
            //=============================================================================================================================

        }

        //Sum solid cn
        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {


            //PH.POPC.BackEnd.SumSolidReportCn report = new PH.POPC.BackEnd.SumSolidReportCn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumSolidReportCn", stream, GetNew("zh - TW"));
            //PH.POPC.BO.POHeader header = GetNew("zh - TW");
            //PH.POPC.BackEnd.SumSolidReportCn report = new PH.POPC.BackEnd.SumSolidReportCn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //solid Detail-Internal-English
        private void barButtonItem4_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidInReportEn report = new PH.POPC.BackEnd.DetailSolidInReportEn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            // MemoryStream stream = new MemoryStream();
            // PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailSolidInReportEn", stream, GetNew("EN"));
            //PH.POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.DetailSolidInReportEn report = new PH.POPC.BackEnd.DetailSolidInReportEn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //solid Detail-Internal-cn
        private void barButtonItem5_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidInReportCn report = new PH.POPC.BackEnd.DetailSolidInReportCn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailSolidInReportCn", stream, GetNew("zh - TW"));
            //PH.POPC.BO.POHeader header = GetNew("zh - TW");
            //PH.POPC.BackEnd.DetailSolidInReportCn report = new PH.POPC.BackEnd.DetailSolidInReportCn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //solid Detail-External-en
        private void barButtonItem6_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidExReportEn report = new PH.POPC.BackEnd.DetailSolidExReportEn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================
            //MemoryStream stream = new MemoryStream();
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailSolidExReportEn", stream, GetNew("EN"));

            //PH.POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.DetailSolidExReportEn report = new PH.POPC.BackEnd.DetailSolidExReportEn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================


        }

        //solid Detail-External-cn
        private void barButtonItem7_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            //PH.POPC.BackEnd.DetailSolidExReportCn report = new PH.POPC.BackEnd.DetailSolidExReportCn(GetNew());
            //report.ShowPreviewDialog();

            //=============================================================================================================================
            //Modified By       :   Michael
            //Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            //Input paramenter  :   current ReportID,this._POHeader 
            //Output Paramenter :   return stream
            //=============================================================================================================================

            //PH.POPC.BO.POHeader header = GetNew("zh - TW");
            //PH.POPC.BackEnd.DetailSolidExReportCn report = new PH.POPC.BackEnd.DetailSolidExReportCn(header);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(header);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, header.Supplier, TemplateKey, header);
            //PH.Platform.Email.BO.SendMail.Send(report, info);

            //=============================================================================================================================

        }

        #endregion

        #region Assorted

        //assorted sum-en
        private void barButtonItem8_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            ////this.InitTerms(h, "EN");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.SumAssortedReportEn report = new PH.POPC.BackEnd.SumAssortedReportEn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumAssortedReportEn", stream, h);

            ////POPC.BO.POHeader header = GetNew("EN");
            //PH.POPC.BackEnd.SumAssortedReportEn report = new PH.POPC.BackEnd.SumAssortedReportEn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //assorted sum-cn
        private void barButtonItem9_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            //// this.InitTerms(h, "zh-TW");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.SumAssortedReportCn report = new PH.POPC.BackEnd.SumAssortedReportCn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("SumAssortedReportCn", stream, h);

            //PH.POPC.BackEnd.SumAssortedReportCn report = new PH.POPC.BackEnd.SumAssortedReportCn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //assorted In detail-en
        private void barButtonItem10_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            ////this.InitTerms(h, "EN");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedInReportEn report = new PH.POPC.BackEnd.DetailAssortedInReportEn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedInReportEn", stream, h);
            //PH.POPC.BackEnd.DetailAssortedInReportEn report = new PH.POPC.BackEnd.DetailAssortedInReportEn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }




        //assorted In detail-cn
        private void barButtonItem11_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            ////this.InitTerms(h, "zh-TW");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedInReportCn report = new PH.POPC.BackEnd.DetailAssortedInReportCn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedInReportCn", stream, h);
            //PH.POPC.BackEnd.DetailAssortedInReportCn report = new PH.POPC.BackEnd.DetailAssortedInReportCn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }
        //assorted ex detail-en
        private void barButtonItem12_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            ////this.InitTerms(h, "EN");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedExReportEn report = new PH.POPC.BackEnd.DetailAssortedExReportEn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedExReportEn", stream, h);
            //PH.POPC.BackEnd.DetailAssortedExReportEn report = new PH.POPC.BackEnd.DetailAssortedExReportEn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }

        //assorted ex detail-cn
        private void barButtonItem13_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //PH.POPC.BO.POHeader h = this.BindingSource.Current as PH.POPC.BO.POHeader;
            //// this.InitTerms(h, "zh-TW");
            //this.InitTerms(h);
            ////PH.POPC.BackEnd.DetailAssortedExReportCn report = new PH.POPC.BackEnd.DetailAssortedExReportCn(h);
            //////List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            //////list.Add(h);
            //////report.DataSource = list;
            ////report.ShowPreviewDialog();

            ////=============================================================================================================================
            ////Modified By       :   Michael
            ////Modified Function :   system will preview PO report convert PDF file and insert into POPDF Table  
            ////Input paramenter  :   current ReportID,this._POHeader 
            ////Output Paramenter :   return stream
            ////=============================================================================================================================
            ////MemoryStream stream = new MemoryStream();
            ////PH.POPC.BackEnd.CreatePDFStream.CreatePDF("DetailAssortedExReportCn", stream, h);

            //PH.POPC.BackEnd.DetailAssortedExReportCn report = new PH.POPC.BackEnd.DetailAssortedExReportCn(h);
            ////PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(h);
            //PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, h.Supplier, TemplateKey, h);
            //PH.Platform.Email.BO.SendMail.Send(report, info);
            //=============================================================================================================================

        }


        #endregion

        private void InitTerms(PH.POPC.BO.POHeader h)
        {
            //PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LanguageCode
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID select cc).ToList<PH.POPC.BO.Term>();
            string s = "";
            int i = 0;
            foreach (PH.POPC.BO.POTerm t in h.POTerms)
            {
                PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
                {
                    return t1.TermCode == t.TermCode;
                });
                if (tt != null)
                {

                    i++;
                    s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
                }
            }
            if (h.POType == 1)
            {
                PH.POPC.BO.POERPList list = new PH.POPC.BO.POERPList();
                i++;
                string s1 = list.GetERPTermsConditions(h.Company, h.PONO);
                if (!string.IsNullOrEmpty(s1))
                    s += string.Format("({0}){1}", i, s1);
                //s += list.GetERPTermsConditions(h.Company, h.PONO);
                this._POHeader.ERPAmendment = list.GetERPAmendmentNo(h.Company, h.PONO);
            }
            if (s != "")
            {
                h.AddtionalTermsAndConditions = s;
            }
        }
        private void InitTerms(PH.POPC.BO.POHeader h, string Language)
        {

            //PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LanguageCode
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            List<PH.POPC.BO.Term> ts = (from cc in context.Terms where cc.LanguageCode == Language select cc).ToList<PH.POPC.BO.Term>();
            string s = "";
            int i = 0;
            foreach (PH.POPC.BO.POTerm t in h.POTerms)
            {
                PH.POPC.BO.Term tt = ts.Find(delegate(PH.POPC.BO.Term t1)
                {
                    return t1.TermCode == t.TermCode;
                });
                if (tt != null)
                {

                    i++;
                    s += string.Format("({0}){1}", i, tt.Remark + "\r\n");
                }
            }
            if (s != "")
            {
                h.AddtionalTermsAndConditions = s;
            }
        }
        private List<PH.POPC.BO.POHeader> GetPrintData(string Language)
        {
            //zh-TW 臺灣
            //EN    英語
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            PH.POPC.BO.POHeader h1 = this.BindingSource.Current as PH.POPC.BO.POHeader;
            PH.POPC.BO.POHeader h = (from a in context.POHeaders
                                     where a.Version == h1.Version
                                     && a.AmendmentNo == h1.AmendmentNo
                                     && a.Company == h1.Company
                                     && a.PONO == h1.PONO
                                     select a).Single() as PH.POPC.BO.POHeader;
            InitTerms(h, Language);
            foreach (PH.POPC.BO.PODetail d in h.PODetails)
            {
                if (d.Photo == null)
                {
                    var photo = (from c in context.V_Photos where c.SupplierReference == d.SupplierReference select c).FirstOrDefault();
                    if (photo != null)
                        d.Photo = photo.Photo;
                }
            }
            if (Language == "zh-TW")
            {
                h.ReportName = this.lkp_MaterialCategory.Text.Trim() + "訂購單";
            }
            else
            {
                h.ReportName = this.lkp_MaterialCategory.EditValue.ToString().Trim() + " Purchase Order";
            }
            _NewPOheader = h;
            List<PH.POPC.BO.POHeader> list = new List<PH.POPC.BO.POHeader>();
            list.Add(h);
            return list;
        }
        private PH.POPC.BO.POHeader _NewPOheader;
        private void MenInit(PH.POPC.BO.POHeader poheader)
        {
            if (poheader == null) return;
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var reports1 = (from aa in context.Reports
                            where aa.ReportTypeCode == poheader.MaterialCategory
                            select new { aa.ReportCode }).Distinct().OrderBy(P => P.ReportCode);

            List<PH.POPC.BackEnd.Report> reports2 = PH.POPC.BackEnd.Common.Reports();
            barSubItem1.ClearLinks();
            foreach (var item in reports1)
            {
                DevExpress.XtraBars.BarButtonItem newItem = new DevExpress.XtraBars.BarButtonItem();
                newItem.Name = item.ReportCode;
                newItem.Caption = reports2.FirstOrDefault(P => P.ReportCode == item.ReportCode).ReportDesc;
                newItem.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(barButtonItem_ItemClick);
                this.barSubItem1.ItemLinks.Add(newItem);
            }
        }
        private void barButtonItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            switch (e.Item.Name)
            {
                case "men_Report1"://BoxPOReportCH
                    Report1();
                    break;
                case "men_Report2"://BoxPOReportEN
                    Report2();
                    break;
                case "men_Report3"://StickerPOReportCH
                    Report3();
                    break;
                case "men_Report4"://StickerPOReportEN
                    Report4();
                    break;
                case "men_Report5"://ColloidPOReportCH
                    Report5();
                    break;
                case "men_Report6"://ColloidPOReportEN
                    Report6();
                    break;
                case "men_Report7"://LabelPOReportCH
                    Report7();
                    break;
                case "men_Report8"://LabelPOReportEN
                    Report8();
                    break;

            }
        }
        private string TemplateKey = "PH.POPC";
        private void Report1()//BoxPOReportCH
        {
            PH.POPC.BackEnd.CartonPOReportCH report = new PH.POPC.BackEnd.CartonPOReportCH(GetPrintData("zh-TW"), this._NewPOheader);
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);
        }

        private void Report2()//BoxPOReportEN
        {

            PH.POPC.BackEnd.CartonPOReportEN report = new PH.POPC.BackEnd.CartonPOReportEN(GetPrintData("EN"), this._NewPOheader);
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);
            //PH.POPC.BackEnd.CreatePDFStream.CreatePDF(report, new PH.POPC.BackEnd.CreatePDFStream.EmailInFo(this._POHeader.Supplier));

        }

        private void Report3()//StickerPOReportCH
        {

            PH.POPC.BackEnd.StickerPOReportCH report = new PH.POPC.BackEnd.StickerPOReportCH(GetPrintData("zh-TW"), this._NewPOheader, "貼　紙　訂　購　單");
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);
        }

        private void Report4()//StickerPOReportEN
        {
            PH.POPC.BackEnd.StickerPOReportEN report = new PH.POPC.BackEnd.StickerPOReportEN(GetPrintData("EN"), this._NewPOheader, "Sticker Purchase Order ");
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);

        }

        private void Report5()//ColloidPOReportCH
        {
            PH.POPC.BackEnd.ColloidPOReportCH report = new PH.POPC.BackEnd.ColloidPOReportCH(GetPrintData("zh-TW"), this._NewPOheader);
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);

        }

        private void Report6()//ColloidPOReportEN
        {
            PH.POPC.BackEnd.ColloidPOReportEN report = new PH.POPC.BackEnd.ColloidPOReportEN(GetPrintData("EN"), this._NewPOheader);
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);

        }

        private void Report7()//LabelPOReportCH
        {
            PH.POPC.BackEnd.StickerPOReportCH report = new PH.POPC.BackEnd.StickerPOReportCH(GetPrintData("zh-TW"), this._NewPOheader, "嘜　頭　訂　購　單");
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);

        }

        private void Report8()//LabelPOReportEN
        {
            PH.POPC.BackEnd.StickerPOReportEN report = new PH.POPC.BackEnd.StickerPOReportEN(GetPrintData("EN"), this._NewPOheader, "Label Purchase Order ");
            //PH.POPC.BackEnd.SendReport SendBO = new PH.POPC.BackEnd.SendReport(this._NewPOheader);
            PH.Platform.Email.BO.SendMail.EmailInfo info = new PH.Platform.Email.BO.SendMail.EmailInfo(PH.Platform.Email.BO.SendMail.ObtainEmailType.Supplier, this._NewPOheader.Supplier, TemplateKey, this._NewPOheader);
            PH.Platform.Email.BO.SendMail.Send(report, info);
        }

        private void InitDeliveryTerm()
        {
            PH.BasicInfo.BO.IncotermList list = new PH.BasicInfo.BO.IncotermList();
            var incoterms = from a in list.CurrentDataContext.Incoterms
                            orderby a.Code
                            select a;
            this.comb_DeliveryTerm.Properties.Items.Clear();
            foreach (var a in incoterms)
            {
                this.comb_DeliveryTerm.Properties.Items.Add(a.Code);
            }
        }
    }
}
