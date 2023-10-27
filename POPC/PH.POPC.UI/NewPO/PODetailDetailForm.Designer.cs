using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraEditors;
namespace PH.POPC.UI.NewPO
{
    partial class PODetailDetailForm
    {
        protected TextEdit txtD_Version;
        protected Label pOVersionLable;
        protected TextEdit txtD_Company;
        protected Label companyLable;
        protected TextEdit txtD_PONO;
        protected Label pONOLable;
        protected Label orderLineLable;
        protected TextEdit txtD_ProjectNo;
        protected Label projectNoLable;
        protected Label itemCodeLable;
        protected DevExpress.XtraTab.XtraTabControl xtraTabControl2;
        #region//auto code

        private DevExpress.XtraTab.XtraTabPage page1;
        protected Label workOrderNoLable;
        protected TextEdit txtD_WorkOrderNo;
        protected Label specificationLable;
        protected TextEdit txtD_Specification;
        protected ButtonEdit but_ItemCode;
        protected Label supplierUomLable;
        protected TextEdit txtD_SupplierUom;
        protected Label pHUomLable;
        protected TextEdit txtD_PHUom;
        // private ConfirmDateNotepadListForm confirmDateNotepadListForm1;
        protected Label conversionFactorLable;
        protected SpinEdit spin_RateToPHUnit;
        protected Label customerLable;
        protected TextEdit txtD_Customer;
        protected SpinEdit spinEdit2;
        protected MemoExEdit memoExEdit2;
        protected Label commodityLable;
        protected Label supplierReferenceLable;
        protected TextEdit txtD_SupplierReference;
        protected SpinEdit spin_SupPrice;
        protected Label supPriceLable;
        private ContextMenuStrip contextMenuStrip1;
        private IContainer components;
        private ToolStripMenuItem loadPhotoToolStripMenuItem;
        private ToolStripMenuItem cleanPhotoToolStripMenuItem;
        protected Label custStyleNoLable;
        protected TextEdit txtD_CustStyleNO;
        protected SpinEdit spin_Height;
        protected Label heightLable;
        protected SpinEdit spin_PrintedCost;
        protected Label printedCostLable;
        protected SpinEdit spin_StickCost;
        private POColorSizeDetailListForm poColorSizeDetailListForm1;
        private CheckEdit openToProjectCheckEdit;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private POConfirmListForm poConfirmListForm1;
        private DevExpress.XtraBars.BarButtonItem btnCustPOFormat;
        private SpinEdit weightSpinEdit;
        private DevExpress.XtraTab.XtraTabPage Page2;
        protected SpinEdit spin_HandWorkCost;
        protected Label handWorkCostLable;
        protected SpinEdit spin_Tolerance;
        protected Label toleranceLable;
        protected TextEdit txtD_AdditionalReason;
        protected SpinEdit spin_AdditionalCost;
        protected Label additionalCostLable;
        protected Label additionalReasonLable;
        protected DateEdit dte_REQ;
        protected Label shipMentDateLable;
        protected DateEdit dte_ETADate;
        protected Label eTADateLable;
        protected DateEdit dte_ConfirmETADate;
        protected Label confirmETADateLable;
        protected DateEdit dte_WOStartDate;
        protected Label wOStartDateLable;
        public ImageComboBoxEdit imageComboBoxEdit1;
        public Label statusLable;
        protected TextEdit txtD_Currency;
        protected SpinEdit spin_SuppAmount;
        protected Label suppAmountLable;
        protected SpinEdit spin_SuppQty;
        protected Label suppQtyLable;
        protected SpinEdit spin_Leadtime;
        protected Label leadtimeLable;
        private TextEdit txtD_Supplier;
        private Label supplierLable;
        private TextEdit txtD_SupplierName;
        private Label supplierNameLable;
        protected Label stickCostLable;
        #endregion
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label suppQtyDimensionLabel;
            System.Windows.Forms.Label buyerQtyDimensionLabel;
            System.Windows.Forms.Label HaveSupplementSheetLabel;
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout1 = new PH.Platform.BO.UI_GridViewLayout();
            this.openToProjectLabel = new System.Windows.Forms.Label();
            this.weightLabel = new System.Windows.Forms.Label();
            this.txtD_Version = new DevExpress.XtraEditors.TextEdit();
            this.pOVersionLable = new System.Windows.Forms.Label();
            this.txtD_Company = new DevExpress.XtraEditors.TextEdit();
            this.companyLable = new System.Windows.Forms.Label();
            this.txtD_PONO = new DevExpress.XtraEditors.TextEdit();
            this.pONOLable = new System.Windows.Forms.Label();
            this.orderLineLable = new System.Windows.Forms.Label();
            this.txtD_ProjectNo = new DevExpress.XtraEditors.TextEdit();
            this.projectNoLable = new System.Windows.Forms.Label();
            this.itemCodeLable = new System.Windows.Forms.Label();
            this.xtraTabControl2 = new DevExpress.XtraTab.XtraTabControl();
            this.page1 = new DevExpress.XtraTab.XtraTabPage();
            this.weightSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.openToProjectCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.custStyleNoLable = new System.Windows.Forms.Label();
            this.txtD_CustStyleNO = new DevExpress.XtraEditors.TextEdit();
            this.spin_Height = new DevExpress.XtraEditors.SpinEdit();
            this.heightLable = new System.Windows.Forms.Label();
            this.spin_PrintedCost = new DevExpress.XtraEditors.SpinEdit();
            this.printedCostLable = new System.Windows.Forms.Label();
            this.spin_StickCost = new DevExpress.XtraEditors.SpinEdit();
            this.stickCostLable = new System.Windows.Forms.Label();
            this.spin_SupPrice = new DevExpress.XtraEditors.SpinEdit();
            this.supPriceLable = new System.Windows.Forms.Label();
            this.memoExEdit2 = new DevExpress.XtraEditors.MemoExEdit();
            this.commodityLable = new System.Windows.Forms.Label();
            this.spinEdit2 = new DevExpress.XtraEditors.SpinEdit();
            this.customerLable = new System.Windows.Forms.Label();
            this.txtD_Customer = new DevExpress.XtraEditors.TextEdit();
            this.spin_RateToPHUnit = new DevExpress.XtraEditors.SpinEdit();
            this.conversionFactorLable = new System.Windows.Forms.Label();
            this.supplierUomLable = new System.Windows.Forms.Label();
            this.txtD_SupplierUom = new DevExpress.XtraEditors.TextEdit();
            this.pHUomLable = new System.Windows.Forms.Label();
            this.txtD_PHUom = new DevExpress.XtraEditors.TextEdit();
            this.but_ItemCode = new DevExpress.XtraEditors.ButtonEdit();
            this.supplierReferenceLable = new System.Windows.Forms.Label();
            this.txtD_SupplierReference = new DevExpress.XtraEditors.TextEdit();
            this.specificationLable = new System.Windows.Forms.Label();
            this.txtD_Specification = new DevExpress.XtraEditors.TextEdit();
            this.workOrderNoLable = new System.Windows.Forms.Label();
            this.txtD_WorkOrderNo = new DevExpress.XtraEditors.TextEdit();
            this.Page2 = new DevExpress.XtraTab.XtraTabPage();
            this.HaveSupplementSheetCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.lookUpEditSuppQtyDimensiion = new DevExpress.XtraEditors.LookUpEdit();
            this.lookUpEditBuyerQtyDimensiion = new DevExpress.XtraEditors.LookUpEdit();
            this.txtD_Supplier = new DevExpress.XtraEditors.TextEdit();
            this.supplierLable = new System.Windows.Forms.Label();
            this.txtD_SupplierName = new DevExpress.XtraEditors.TextEdit();
            this.supplierNameLable = new System.Windows.Forms.Label();
            this.spin_HandWorkCost = new DevExpress.XtraEditors.SpinEdit();
            this.handWorkCostLable = new System.Windows.Forms.Label();
            this.spin_Tolerance = new DevExpress.XtraEditors.SpinEdit();
            this.toleranceLable = new System.Windows.Forms.Label();
            this.txtD_AdditionalReason = new DevExpress.XtraEditors.TextEdit();
            this.spin_AdditionalCost = new DevExpress.XtraEditors.SpinEdit();
            this.additionalCostLable = new System.Windows.Forms.Label();
            this.additionalReasonLable = new System.Windows.Forms.Label();
            this.dte_REQ = new DevExpress.XtraEditors.DateEdit();
            this.shipMentDateLable = new System.Windows.Forms.Label();
            this.dte_ETADate = new DevExpress.XtraEditors.DateEdit();
            this.eTADateLable = new System.Windows.Forms.Label();
            this.dte_ConfirmETADate = new DevExpress.XtraEditors.DateEdit();
            this.confirmETADateLable = new System.Windows.Forms.Label();
            this.dte_WOStartDate = new DevExpress.XtraEditors.DateEdit();
            this.wOStartDateLable = new System.Windows.Forms.Label();
            this.imageComboBoxEdit1 = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.statusLable = new System.Windows.Forms.Label();
            this.txtD_Currency = new DevExpress.XtraEditors.TextEdit();
            this.spin_SuppAmount = new DevExpress.XtraEditors.SpinEdit();
            this.suppAmountLable = new System.Windows.Forms.Label();
            this.spin_SuppQty = new DevExpress.XtraEditors.SpinEdit();
            this.suppQtyLable = new System.Windows.Forms.Label();
            this.spin_Leadtime = new DevExpress.XtraEditors.SpinEdit();
            this.leadtimeLable = new System.Windows.Forms.Label();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.loadPhotoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cleanPhotoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.poColorSizeDetailListForm1 = new PH.POPC.UI.NewPO.POColorSizeDetailListForm();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.poConfirmListForm1 = new PH.POPC.UI.NewPO.POConfirmListForm();
            this.btnCustPOFormat = new DevExpress.XtraBars.BarButtonItem();
            suppQtyDimensionLabel = new System.Windows.Forms.Label();
            buyerQtyDimensionLabel = new System.Windows.Forms.Label();
            HaveSupplementSheetLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Version.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ProjectNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).BeginInit();
            this.xtraTabControl2.SuspendLayout();
            this.page1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.weightSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.openToProjectCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Height.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_PrintedCost.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_StickCost.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupPrice.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Customer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_RateToPHUnit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PHUom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.but_ItemCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierReference.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Specification.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_WorkOrderNo.Properties)).BeginInit();
            this.Page2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.HaveSupplementSheetCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditSuppQtyDimensiion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditBuyerQtyDimensiion.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_HandWorkCost.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Tolerance.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_AdditionalReason.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_AdditionalCost.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Leadtime.Properties)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.xtraTabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // objEdtbarManager
            // 
            this.objEdtbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnCustPOFormat});
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            this.objEditBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCustPOFormat, true)});
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 245);
            this.splitterControl1.Size = new System.Drawing.Size(966, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.xtraTabControl2);
            this.headerTitleBar.Size = new System.Drawing.Size(966, 219);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.xtraTabControl2, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 251);
            this.panelControl1.Size = new System.Drawing.Size(966, 352);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.poColorSizeDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(953, 316);
            this.xtraTabPage1.Text = "PO Color Size Deail";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(962, 348);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2});
            this.xtraTabControl1.Text = "poDetailD";
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage2, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.PODetail);
            // 
            // suppQtyDimensionLabel
            // 
            suppQtyDimensionLabel.AutoSize = true;
            suppQtyDimensionLabel.Location = new System.Drawing.Point(18, 36);
            suppQtyDimensionLabel.Name = "suppQtyDimensionLabel";
            suppQtyDimensionLabel.Size = new System.Drawing.Size(105, 12);
            this.PlatetoolTipController.SetSuperTip(suppQtyDimensionLabel, null);
            suppQtyDimensionLabel.TabIndex = 357;
            suppQtyDimensionLabel.Text = "Supp Qty Dimension:";
            // 
            // buyerQtyDimensionLabel
            // 
            buyerQtyDimensionLabel.AutoSize = true;
            buyerQtyDimensionLabel.Location = new System.Drawing.Point(12, 12);
            buyerQtyDimensionLabel.Name = "buyerQtyDimensionLabel";
            buyerQtyDimensionLabel.Size = new System.Drawing.Size(110, 12);
            this.PlatetoolTipController.SetSuperTip(buyerQtyDimensionLabel, null);
            buyerQtyDimensionLabel.TabIndex = 358;
            buyerQtyDimensionLabel.Text = "Our Qty Dimension:";
            // 
            // HaveSupplementSheetLabel
            // 
            HaveSupplementSheetLabel.AutoSize = true;
            HaveSupplementSheetLabel.Location = new System.Drawing.Point(6, 57);
            HaveSupplementSheetLabel.Name = "HaveSupplementSheetLabel";
            HaveSupplementSheetLabel.Size = new System.Drawing.Size(115, 12);
            this.PlatetoolTipController.SetSuperTip(HaveSupplementSheetLabel, null);
            HaveSupplementSheetLabel.TabIndex = 361;
            HaveSupplementSheetLabel.Text = "Have SupplementSheet:";
            // 
            // openToProjectLabel
            // 
            this.openToProjectLabel.AutoSize = true;
            this.openToProjectLabel.Location = new System.Drawing.Point(414, 141);
            this.openToProjectLabel.Name = "openToProjectLabel";
            this.openToProjectLabel.Size = new System.Drawing.Size(81, 12);
            this.PlatetoolTipController.SetSuperTip(this.openToProjectLabel, null);
            this.openToProjectLabel.TabIndex = 320;
            this.openToProjectLabel.Text = "Open To Project";
            // 
            // weightLabel
            // 
            this.weightLabel.AutoSize = true;
            this.weightLabel.Location = new System.Drawing.Point(462, 117);
            this.weightLabel.Name = "weightLabel";
            this.weightLabel.Size = new System.Drawing.Size(42, 12);
            this.PlatetoolTipController.SetSuperTip(this.weightLabel, null);
            this.weightLabel.TabIndex = 321;
            this.weightLabel.Text = "Weight:";
            // 
            // txtD_Version
            // 
            this.txtD_Version.Enabled = false;
            this.txtD_Version.Location = new System.Drawing.Point(79, 9);
            this.txtD_Version.Name = "txtD_Version";
            this.txtD_Version.Properties.ReadOnly = true;
            this.txtD_Version.Size = new System.Drawing.Size(102, 21);
            this.txtD_Version.TabIndex = 1;
            this.txtD_Version.Tag = "POVersion";
            // 
            // pOVersionLable
            // 
            this.pOVersionLable.AutoSize = true;
            this.pOVersionLable.Location = new System.Drawing.Point(3, 13);
            this.pOVersionLable.Name = "pOVersionLable";
            this.pOVersionLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.pOVersionLable, null);
            this.pOVersionLable.TabIndex = 0;
            this.pOVersionLable.Text = "Version";
            // 
            // txtD_Company
            // 
            this.txtD_Company.Enabled = false;
            this.txtD_Company.Location = new System.Drawing.Point(79, 31);
            this.txtD_Company.Name = "txtD_Company";
            this.txtD_Company.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Company.Properties.MaxLength = 2;
            this.txtD_Company.Properties.ReadOnly = true;
            this.txtD_Company.Size = new System.Drawing.Size(37, 21);
            this.txtD_Company.TabIndex = 3;
            this.txtD_Company.Tag = "Company";
            // 
            // companyLable
            // 
            this.companyLable.AutoSize = true;
            this.companyLable.Location = new System.Drawing.Point(3, 32);
            this.companyLable.Name = "companyLable";
            this.companyLable.Size = new System.Drawing.Size(51, 12);
            this.PlatetoolTipController.SetSuperTip(this.companyLable, null);
            this.companyLable.TabIndex = 2;
            this.companyLable.Text = "Company";
            // 
            // txtD_PONO
            // 
            this.txtD_PONO.Enabled = false;
            this.txtD_PONO.Location = new System.Drawing.Point(79, 53);
            this.txtD_PONO.Name = "txtD_PONO";
            this.txtD_PONO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_PONO.Properties.MaxLength = 7;
            this.txtD_PONO.Properties.ReadOnly = true;
            this.txtD_PONO.Size = new System.Drawing.Size(102, 21);
            this.txtD_PONO.TabIndex = 4;
            this.txtD_PONO.Tag = "PONO";
            // 
            // pONOLable
            // 
            this.pONOLable.AutoSize = true;
            this.pONOLable.Location = new System.Drawing.Point(3, 56);
            this.pONOLable.Name = "pONOLable";
            this.pONOLable.Size = new System.Drawing.Size(38, 12);
            this.PlatetoolTipController.SetSuperTip(this.pONOLable, null);
            this.pONOLable.TabIndex = 3;
            this.pONOLable.Text = "PO NO";
            // 
            // orderLineLable
            // 
            this.orderLineLable.AutoSize = true;
            this.orderLineLable.Location = new System.Drawing.Point(3, 80);
            this.orderLineLable.Name = "orderLineLable";
            this.orderLineLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderLineLable, null);
            this.orderLineLable.TabIndex = 4;
            this.orderLineLable.Text = "OrderLine";
            // 
            // txtD_ProjectNo
            // 
            this.txtD_ProjectNo.Location = new System.Drawing.Point(305, 140);
            this.txtD_ProjectNo.Name = "txtD_ProjectNo";
            this.txtD_ProjectNo.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_ProjectNo.Properties.MaxLength = 20;
            this.txtD_ProjectNo.Size = new System.Drawing.Size(87, 21);
            this.txtD_ProjectNo.TabIndex = 7;
            this.txtD_ProjectNo.Tag = "ProjectNo";
            // 
            // projectNoLable
            // 
            this.projectNoLable.AutoSize = true;
            this.projectNoLable.Location = new System.Drawing.Point(205, 143);
            this.projectNoLable.Name = "projectNoLable";
            this.projectNoLable.Size = new System.Drawing.Size(54, 12);
            this.PlatetoolTipController.SetSuperTip(this.projectNoLable, null);
            this.projectNoLable.TabIndex = 6;
            this.projectNoLable.Text = "Project No";
            this.projectNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // itemCodeLable
            // 
            this.itemCodeLable.AutoSize = true;
            this.itemCodeLable.Location = new System.Drawing.Point(4, 103);
            this.itemCodeLable.Name = "itemCodeLable";
            this.itemCodeLable.Size = new System.Drawing.Size(44, 12);
            this.PlatetoolTipController.SetSuperTip(this.itemCodeLable, null);
            this.itemCodeLable.TabIndex = 7;
            this.itemCodeLable.Text = "Item Nr.";
            // 
            // xtraTabControl2
            // 
            this.xtraTabControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl2.Location = new System.Drawing.Point(2, 21);
            this.xtraTabControl2.Name = "xtraTabControl2";
            this.xtraTabControl2.SelectedTabPage = this.page1;
            this.xtraTabControl2.Size = new System.Drawing.Size(962, 196);
            this.xtraTabControl2.TabIndex = 102;
            this.xtraTabControl2.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.page1,
            this.Page2});
            this.xtraTabControl2.Text = "Photo1";
            // 
            // page1
            // 
            this.page1.AutoScroll = true;
            this.page1.Controls.Add(this.weightLabel);
            this.page1.Controls.Add(this.weightSpinEdit);
            this.page1.Controls.Add(this.openToProjectLabel);
            this.page1.Controls.Add(this.openToProjectCheckEdit);
            this.page1.Controls.Add(this.custStyleNoLable);
            this.page1.Controls.Add(this.txtD_CustStyleNO);
            this.page1.Controls.Add(this.spin_Height);
            this.page1.Controls.Add(this.heightLable);
            this.page1.Controls.Add(this.spin_PrintedCost);
            this.page1.Controls.Add(this.printedCostLable);
            this.page1.Controls.Add(this.spin_StickCost);
            this.page1.Controls.Add(this.stickCostLable);
            this.page1.Controls.Add(this.spin_SupPrice);
            this.page1.Controls.Add(this.supPriceLable);
            this.page1.Controls.Add(this.memoExEdit2);
            this.page1.Controls.Add(this.commodityLable);
            this.page1.Controls.Add(this.spinEdit2);
            this.page1.Controls.Add(this.customerLable);
            this.page1.Controls.Add(this.txtD_Customer);
            this.page1.Controls.Add(this.spin_RateToPHUnit);
            this.page1.Controls.Add(this.conversionFactorLable);
            this.page1.Controls.Add(this.supplierUomLable);
            this.page1.Controls.Add(this.txtD_SupplierUom);
            this.page1.Controls.Add(this.pHUomLable);
            this.page1.Controls.Add(this.txtD_PHUom);
            this.page1.Controls.Add(this.but_ItemCode);
            this.page1.Controls.Add(this.supplierReferenceLable);
            this.page1.Controls.Add(this.txtD_SupplierReference);
            this.page1.Controls.Add(this.specificationLable);
            this.page1.Controls.Add(this.txtD_Specification);
            this.page1.Controls.Add(this.workOrderNoLable);
            this.page1.Controls.Add(this.txtD_WorkOrderNo);
            this.page1.Controls.Add(this.pOVersionLable);
            this.page1.Controls.Add(this.projectNoLable);
            this.page1.Controls.Add(this.itemCodeLable);
            this.page1.Controls.Add(this.txtD_Version);
            this.page1.Controls.Add(this.companyLable);
            this.page1.Controls.Add(this.txtD_Company);
            this.page1.Controls.Add(this.pONOLable);
            this.page1.Controls.Add(this.txtD_PONO);
            this.page1.Controls.Add(this.orderLineLable);
            this.page1.Controls.Add(this.txtD_ProjectNo);
            this.page1.Name = "page1";
            this.page1.Size = new System.Drawing.Size(953, 164);
            this.page1.Text = "BasicInfo";
            // 
            // weightSpinEdit
            // 
            this.weightSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "weight", true));
            this.weightSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.weightSpinEdit.Location = new System.Drawing.Point(515, 109);
            this.weightSpinEdit.Name = "weightSpinEdit";
            this.weightSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.weightSpinEdit.Size = new System.Drawing.Size(89, 21);
            this.weightSpinEdit.TabIndex = 322;
            // 
            // openToProjectCheckEdit
            // 
            this.openToProjectCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OpenToProject", true));
            this.openToProjectCheckEdit.Location = new System.Drawing.Point(515, 136);
            this.openToProjectCheckEdit.Name = "openToProjectCheckEdit";
            this.openToProjectCheckEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.openToProjectCheckEdit.Properties.Appearance.Options.UseBackColor = true;
            this.openToProjectCheckEdit.Properties.Caption = "";
            this.openToProjectCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.openToProjectCheckEdit.Size = new System.Drawing.Size(32, 19);
            this.openToProjectCheckEdit.TabIndex = 321;
            // 
            // custStyleNoLable
            // 
            this.custStyleNoLable.AutoSize = true;
            this.custStyleNoLable.Location = new System.Drawing.Point(438, 32);
            this.custStyleNoLable.Name = "custStyleNoLable";
            this.custStyleNoLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.custStyleNoLable, null);
            this.custStyleNoLable.TabIndex = 320;
            this.custStyleNoLable.Text = "CustStyleNO";
            this.custStyleNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtD_CustStyleNO
            // 
            this.txtD_CustStyleNO.Location = new System.Drawing.Point(515, 25);
            this.txtD_CustStyleNO.Name = "txtD_CustStyleNO";
            this.txtD_CustStyleNO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_CustStyleNO.Properties.MaxLength = 20;
            this.txtD_CustStyleNO.Size = new System.Drawing.Size(89, 21);
            this.txtD_CustStyleNO.TabIndex = 319;
            this.txtD_CustStyleNO.Tag = "CustStyleNo";
            // 
            // spin_Height
            // 
            this.spin_Height.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Height.Location = new System.Drawing.Point(515, 88);
            this.spin_Height.Name = "spin_Height";
            this.spin_Height.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_Height.Size = new System.Drawing.Size(89, 21);
            this.spin_Height.TabIndex = 315;
            this.spin_Height.Tag = "Height";
            // 
            // heightLable
            // 
            this.heightLable.AutoSize = true;
            this.heightLable.Location = new System.Drawing.Point(468, 95);
            this.heightLable.Name = "heightLable";
            this.heightLable.Size = new System.Drawing.Size(36, 12);
            this.PlatetoolTipController.SetSuperTip(this.heightLable, null);
            this.heightLable.TabIndex = 316;
            this.heightLable.Text = "Height";
            this.heightLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // spin_PrintedCost
            // 
            this.spin_PrintedCost.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_PrintedCost.Location = new System.Drawing.Point(515, 67);
            this.spin_PrintedCost.Name = "spin_PrintedCost";
            this.spin_PrintedCost.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_PrintedCost.Size = new System.Drawing.Size(89, 21);
            this.spin_PrintedCost.TabIndex = 311;
            this.spin_PrintedCost.Tag = "PrintedCost";
            // 
            // printedCostLable
            // 
            this.printedCostLable.AutoSize = true;
            this.printedCostLable.Location = new System.Drawing.Point(432, 73);
            this.printedCostLable.Name = "printedCostLable";
            this.printedCostLable.Size = new System.Drawing.Size(62, 12);
            this.PlatetoolTipController.SetSuperTip(this.printedCostLable, null);
            this.printedCostLable.TabIndex = 312;
            this.printedCostLable.Text = "Printed Cost";
            this.printedCostLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // spin_StickCost
            // 
            this.spin_StickCost.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_StickCost.Location = new System.Drawing.Point(515, 46);
            this.spin_StickCost.Name = "spin_StickCost";
            this.spin_StickCost.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_StickCost.Size = new System.Drawing.Size(89, 21);
            this.spin_StickCost.TabIndex = 309;
            this.spin_StickCost.Tag = "StickCost";
            // 
            // stickCostLable
            // 
            this.stickCostLable.AutoSize = true;
            this.stickCostLable.Location = new System.Drawing.Point(444, 51);
            this.stickCostLable.Name = "stickCostLable";
            this.stickCostLable.Size = new System.Drawing.Size(52, 12);
            this.PlatetoolTipController.SetSuperTip(this.stickCostLable, null);
            this.stickCostLable.TabIndex = 310;
            this.stickCostLable.Text = "Stick Cost";
            this.stickCostLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // spin_SupPrice
            // 
            this.spin_SupPrice.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SupPrice.Location = new System.Drawing.Point(305, 118);
            this.spin_SupPrice.Name = "spin_SupPrice";
            this.spin_SupPrice.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_SupPrice.Size = new System.Drawing.Size(87, 21);
            this.spin_SupPrice.TabIndex = 251;
            this.spin_SupPrice.Tag = "SupplierPrice";
            // 
            // supPriceLable
            // 
            this.supPriceLable.AutoSize = true;
            this.supPriceLable.Location = new System.Drawing.Point(205, 121);
            this.supPriceLable.Name = "supPriceLable";
            this.supPriceLable.Size = new System.Drawing.Size(70, 12);
            this.PlatetoolTipController.SetSuperTip(this.supPriceLable, null);
            this.supPriceLable.TabIndex = 252;
            this.supPriceLable.Text = "Supplier Price";
            // 
            // memoExEdit2
            // 
            this.memoExEdit2.Location = new System.Drawing.Point(79, 141);
            this.memoExEdit2.Name = "memoExEdit2";
            this.memoExEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.memoExEdit2.Properties.PopupStartSize = new System.Drawing.Size(400, 300);
            this.memoExEdit2.Properties.ScrollBars = System.Windows.Forms.ScrollBars.Both;
            this.memoExEdit2.Properties.WordWrap = false;
            this.memoExEdit2.Size = new System.Drawing.Size(102, 21);
            this.memoExEdit2.TabIndex = 241;
            this.memoExEdit2.Tag = "Commodity";
            // 
            // commodityLable
            // 
            this.commodityLable.AutoSize = true;
            this.commodityLable.Location = new System.Drawing.Point(3, 146);
            this.commodityLable.Name = "commodityLable";
            this.commodityLable.Size = new System.Drawing.Size(61, 12);
            this.PlatetoolTipController.SetSuperTip(this.commodityLable, null);
            this.commodityLable.TabIndex = 240;
            this.commodityLable.Text = "Commodity";
            this.commodityLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // spinEdit2
            // 
            this.spinEdit2.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit2.Location = new System.Drawing.Point(79, 75);
            this.spinEdit2.Name = "spinEdit2";
            this.spinEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit2.Properties.IsFloatValue = false;
            this.spinEdit2.Properties.Mask.EditMask = "N00";
            this.spinEdit2.Size = new System.Drawing.Size(102, 21);
            this.spinEdit2.TabIndex = 239;
            this.spinEdit2.Tag = "OrderLine";
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.spinEdit2, conditionValidatonRule1);
            // 
            // customerLable
            // 
            this.customerLable.AutoSize = true;
            this.customerLable.Location = new System.Drawing.Point(205, 11);
            this.customerLable.Name = "customerLable";
            this.customerLable.Size = new System.Drawing.Size(50, 12);
            this.PlatetoolTipController.SetSuperTip(this.customerLable, null);
            this.customerLable.TabIndex = 238;
            this.customerLable.Text = "Customer";
            // 
            // txtD_Customer
            // 
            this.txtD_Customer.Location = new System.Drawing.Point(305, 8);
            this.txtD_Customer.Name = "txtD_Customer";
            this.txtD_Customer.Size = new System.Drawing.Size(87, 21);
            this.txtD_Customer.TabIndex = 22;
            this.txtD_Customer.Tag = "Customer";
            // 
            // spin_RateToPHUnit
            // 
            this.spin_RateToPHUnit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_RateToPHUnit.Location = new System.Drawing.Point(305, 96);
            this.spin_RateToPHUnit.Name = "spin_RateToPHUnit";
            this.spin_RateToPHUnit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_RateToPHUnit.Size = new System.Drawing.Size(87, 21);
            this.spin_RateToPHUnit.TabIndex = 20;
            this.spin_RateToPHUnit.Tag = "ConversionFactor";
            // 
            // conversionFactorLable
            // 
            this.conversionFactorLable.AutoSize = true;
            this.conversionFactorLable.Location = new System.Drawing.Point(205, 99);
            this.conversionFactorLable.Name = "conversionFactorLable";
            this.conversionFactorLable.Size = new System.Drawing.Size(79, 12);
            this.PlatetoolTipController.SetSuperTip(this.conversionFactorLable, null);
            this.conversionFactorLable.TabIndex = 231;
            this.conversionFactorLable.Text = "Rate To PHUnit";
            // 
            // supplierUomLable
            // 
            this.supplierUomLable.AutoSize = true;
            this.supplierUomLable.Location = new System.Drawing.Point(205, 55);
            this.supplierUomLable.Name = "supplierUomLable";
            this.supplierUomLable.Size = new System.Drawing.Size(70, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierUomLable, null);
            this.supplierUomLable.TabIndex = 220;
            this.supplierUomLable.Text = "Supplier Uom";
            // 
            // txtD_SupplierUom
            // 
            this.txtD_SupplierUom.Location = new System.Drawing.Point(305, 52);
            this.txtD_SupplierUom.Name = "txtD_SupplierUom";
            this.txtD_SupplierUom.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_SupplierUom.Properties.MaxLength = 2;
            this.txtD_SupplierUom.Size = new System.Drawing.Size(87, 21);
            this.txtD_SupplierUom.TabIndex = 13;
            this.txtD_SupplierUom.Tag = "SupplierUom";
            // 
            // pHUomLable
            // 
            this.pHUomLable.AutoSize = true;
            this.pHUomLable.Location = new System.Drawing.Point(205, 77);
            this.pHUomLable.Name = "pHUomLable";
            this.pHUomLable.Size = new System.Drawing.Size(45, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHUomLable, null);
            this.pHUomLable.TabIndex = 218;
            this.pHUomLable.Text = "PH Uom";
            // 
            // txtD_PHUom
            // 
            this.txtD_PHUom.Location = new System.Drawing.Point(305, 74);
            this.txtD_PHUom.Name = "txtD_PHUom";
            this.txtD_PHUom.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_PHUom.Properties.MaxLength = 2;
            this.txtD_PHUom.Size = new System.Drawing.Size(87, 21);
            this.txtD_PHUom.TabIndex = 14;
            this.txtD_PHUom.Tag = "PHUom";
            // 
            // but_ItemCode
            // 
            this.but_ItemCode.Location = new System.Drawing.Point(79, 97);
            this.but_ItemCode.Name = "but_ItemCode";
            this.but_ItemCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.but_ItemCode.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.but_ItemCode.Properties.MaxLength = 9;
            this.but_ItemCode.Size = new System.Drawing.Size(102, 21);
            this.but_ItemCode.TabIndex = 6;
            this.but_ItemCode.Tag = "ItemCode";
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.but_ItemCode, conditionValidatonRule2);
            // 
            // supplierReferenceLable
            // 
            this.supplierReferenceLable.Location = new System.Drawing.Point(3, 118);
            this.supplierReferenceLable.Name = "supplierReferenceLable";
            this.supplierReferenceLable.Size = new System.Drawing.Size(60, 24);
            this.PlatetoolTipController.SetSuperTip(this.supplierReferenceLable, null);
            this.supplierReferenceLable.TabIndex = 207;
            this.supplierReferenceLable.Text = "Supplier Reference";
            // 
            // txtD_SupplierReference
            // 
            this.txtD_SupplierReference.Location = new System.Drawing.Point(79, 119);
            this.txtD_SupplierReference.Name = "txtD_SupplierReference";
            this.txtD_SupplierReference.Size = new System.Drawing.Size(102, 21);
            this.txtD_SupplierReference.TabIndex = 12;
            this.txtD_SupplierReference.Tag = "SupplierReference";
            // 
            // specificationLable
            // 
            this.specificationLable.AutoSize = true;
            this.specificationLable.Location = new System.Drawing.Point(205, 33);
            this.specificationLable.Name = "specificationLable";
            this.specificationLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.specificationLable, null);
            this.specificationLable.TabIndex = 205;
            this.specificationLable.Text = "Specification";
            // 
            // txtD_Specification
            // 
            this.txtD_Specification.Location = new System.Drawing.Point(305, 30);
            this.txtD_Specification.Name = "txtD_Specification";
            this.txtD_Specification.Size = new System.Drawing.Size(87, 21);
            this.txtD_Specification.TabIndex = 9;
            this.txtD_Specification.Tag = "Specification";
            // 
            // workOrderNoLable
            // 
            this.workOrderNoLable.AutoSize = true;
            this.workOrderNoLable.Location = new System.Drawing.Point(432, 7);
            this.workOrderNoLable.Name = "workOrderNoLable";
            this.workOrderNoLable.Size = new System.Drawing.Size(76, 12);
            this.PlatetoolTipController.SetSuperTip(this.workOrderNoLable, null);
            this.workOrderNoLable.TabIndex = 203;
            this.workOrderNoLable.Text = "WorkOrder No";
            this.workOrderNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtD_WorkOrderNo
            // 
            this.txtD_WorkOrderNo.Location = new System.Drawing.Point(515, 4);
            this.txtD_WorkOrderNo.Name = "txtD_WorkOrderNo";
            this.txtD_WorkOrderNo.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_WorkOrderNo.Properties.MaxLength = 20;
            this.txtD_WorkOrderNo.Size = new System.Drawing.Size(89, 21);
            this.txtD_WorkOrderNo.TabIndex = 8;
            this.txtD_WorkOrderNo.Tag = "WorkOrderNo";
            // 
            // Page2
            // 
            this.Page2.AutoScroll = true;
            this.Page2.Controls.Add(this.HaveSupplementSheetCheckEdit);
            this.Page2.Controls.Add(HaveSupplementSheetLabel);
            this.Page2.Controls.Add(this.lookUpEditSuppQtyDimensiion);
            this.Page2.Controls.Add(this.lookUpEditBuyerQtyDimensiion);
            this.Page2.Controls.Add(buyerQtyDimensionLabel);
            this.Page2.Controls.Add(suppQtyDimensionLabel);
            this.Page2.Controls.Add(this.txtD_Supplier);
            this.Page2.Controls.Add(this.supplierLable);
            this.Page2.Controls.Add(this.txtD_SupplierName);
            this.Page2.Controls.Add(this.supplierNameLable);
            this.Page2.Controls.Add(this.spin_HandWorkCost);
            this.Page2.Controls.Add(this.handWorkCostLable);
            this.Page2.Controls.Add(this.spin_Tolerance);
            this.Page2.Controls.Add(this.toleranceLable);
            this.Page2.Controls.Add(this.txtD_AdditionalReason);
            this.Page2.Controls.Add(this.spin_AdditionalCost);
            this.Page2.Controls.Add(this.additionalCostLable);
            this.Page2.Controls.Add(this.additionalReasonLable);
            this.Page2.Controls.Add(this.dte_REQ);
            this.Page2.Controls.Add(this.shipMentDateLable);
            this.Page2.Controls.Add(this.dte_ETADate);
            this.Page2.Controls.Add(this.eTADateLable);
            this.Page2.Controls.Add(this.dte_ConfirmETADate);
            this.Page2.Controls.Add(this.confirmETADateLable);
            this.Page2.Controls.Add(this.dte_WOStartDate);
            this.Page2.Controls.Add(this.wOStartDateLable);
            this.Page2.Controls.Add(this.imageComboBoxEdit1);
            this.Page2.Controls.Add(this.statusLable);
            this.Page2.Controls.Add(this.txtD_Currency);
            this.Page2.Controls.Add(this.spin_SuppAmount);
            this.Page2.Controls.Add(this.suppAmountLable);
            this.Page2.Controls.Add(this.spin_SuppQty);
            this.Page2.Controls.Add(this.suppQtyLable);
            this.Page2.Controls.Add(this.spin_Leadtime);
            this.Page2.Controls.Add(this.leadtimeLable);
            this.Page2.Name = "Page2";
            this.Page2.Size = new System.Drawing.Size(796, 164);
            this.Page2.Text = "More Info";
            // 
            // HaveSupplementSheetCheckEdit
            // 
            this.HaveSupplementSheetCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HaveSupplementSheet", true));
            this.HaveSupplementSheetCheckEdit.Location = new System.Drawing.Point(143, 55);
            this.HaveSupplementSheetCheckEdit.Name = "HaveSupplementSheetCheckEdit";
            this.HaveSupplementSheetCheckEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.HaveSupplementSheetCheckEdit.Properties.Appearance.Options.UseBackColor = true;
            this.HaveSupplementSheetCheckEdit.Properties.Caption = "";
            this.HaveSupplementSheetCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.HaveSupplementSheetCheckEdit.Size = new System.Drawing.Size(32, 19);
            this.HaveSupplementSheetCheckEdit.TabIndex = 362;
            // 
            // lookUpEditSuppQtyDimensiion
            // 
            this.lookUpEditSuppQtyDimensiion.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppQtyDimension", true));
            this.lookUpEditSuppQtyDimensiion.Location = new System.Drawing.Point(143, 31);
            this.lookUpEditSuppQtyDimensiion.Name = "lookUpEditSuppQtyDimensiion";
            this.lookUpEditSuppQtyDimensiion.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEditSuppQtyDimensiion.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Seq", "Dimension", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ItemColor", "Description", 100)});
            this.lookUpEditSuppQtyDimensiion.Properties.DisplayMember = "Seq";
            this.lookUpEditSuppQtyDimensiion.Properties.NullText = "";
            this.lookUpEditSuppQtyDimensiion.Properties.ValueMember = "Seq";
            this.lookUpEditSuppQtyDimensiion.Size = new System.Drawing.Size(143, 21);
            this.lookUpEditSuppQtyDimensiion.TabIndex = 360;
            // 
            // lookUpEditBuyerQtyDimensiion
            // 
            this.lookUpEditBuyerQtyDimensiion.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BuyerQtyDimension", true));
            this.lookUpEditBuyerQtyDimensiion.Location = new System.Drawing.Point(143, 9);
            this.lookUpEditBuyerQtyDimensiion.Name = "lookUpEditBuyerQtyDimensiion";
            this.lookUpEditBuyerQtyDimensiion.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEditBuyerQtyDimensiion.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Seq", "Dimension", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ItemColor", "Description", 100)});
            this.lookUpEditBuyerQtyDimensiion.Properties.DisplayMember = "Seq";
            this.lookUpEditBuyerQtyDimensiion.Properties.NullText = "";
            this.lookUpEditBuyerQtyDimensiion.Properties.ValueMember = "Seq";
            this.lookUpEditBuyerQtyDimensiion.Size = new System.Drawing.Size(143, 21);
            this.lookUpEditBuyerQtyDimensiion.TabIndex = 359;
            // 
            // txtD_Supplier
            // 
            this.txtD_Supplier.Location = new System.Drawing.Point(400, 98);
            this.txtD_Supplier.Name = "txtD_Supplier";
            this.txtD_Supplier.Size = new System.Drawing.Size(116, 21);
            this.txtD_Supplier.TabIndex = 357;
            this.txtD_Supplier.Tag = "Supplier";
            // 
            // supplierLable
            // 
            this.supplierLable.AutoSize = true;
            this.supplierLable.Location = new System.Drawing.Point(335, 105);
            this.supplierLable.Name = "supplierLable";
            this.supplierLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierLable, null);
            this.supplierLable.TabIndex = 356;
            this.supplierLable.Text = "Supplier ";
            // 
            // txtD_SupplierName
            // 
            this.txtD_SupplierName.Location = new System.Drawing.Point(400, 121);
            this.txtD_SupplierName.Name = "txtD_SupplierName";
            this.txtD_SupplierName.Size = new System.Drawing.Size(326, 21);
            this.txtD_SupplierName.TabIndex = 355;
            this.txtD_SupplierName.Tag = "SupplierName";
            // 
            // supplierNameLable
            // 
            this.supplierNameLable.AutoSize = true;
            this.supplierNameLable.Location = new System.Drawing.Point(311, 129);
            this.supplierNameLable.Name = "supplierNameLable";
            this.supplierNameLable.Size = new System.Drawing.Size(74, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierNameLable, null);
            this.supplierNameLable.TabIndex = 354;
            this.supplierNameLable.Text = "Supplier Name";
            // 
            // spin_HandWorkCost
            // 
            this.spin_HandWorkCost.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_HandWorkCost.Location = new System.Drawing.Point(637, 74);
            this.spin_HandWorkCost.Name = "spin_HandWorkCost";
            this.spin_HandWorkCost.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_HandWorkCost.Size = new System.Drawing.Size(89, 21);
            this.spin_HandWorkCost.TabIndex = 352;
            this.spin_HandWorkCost.Tag = "HandWorkCost";
            // 
            // handWorkCostLable
            // 
            this.handWorkCostLable.AutoSize = true;
            this.handWorkCostLable.Location = new System.Drawing.Point(548, 78);
            this.handWorkCostLable.Name = "handWorkCostLable";
            this.handWorkCostLable.Size = new System.Drawing.Size(81, 12);
            this.PlatetoolTipController.SetSuperTip(this.handWorkCostLable, null);
            this.handWorkCostLable.TabIndex = 353;
            this.handWorkCostLable.Text = "HandWork Cost";
            this.handWorkCostLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // spin_Tolerance
            // 
            this.spin_Tolerance.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Tolerance.Location = new System.Drawing.Point(637, 8);
            this.spin_Tolerance.Name = "spin_Tolerance";
            this.spin_Tolerance.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_Tolerance.Size = new System.Drawing.Size(89, 21);
            this.spin_Tolerance.TabIndex = 348;
            this.spin_Tolerance.Tag = "Tolerance";
            // 
            // toleranceLable
            // 
            this.toleranceLable.AutoSize = true;
            this.toleranceLable.Location = new System.Drawing.Point(548, 6);
            this.toleranceLable.Name = "toleranceLable";
            this.toleranceLable.Size = new System.Drawing.Size(71, 24);
            this.PlatetoolTipController.SetSuperTip(this.toleranceLable, null);
            this.toleranceLable.TabIndex = 351;
            this.toleranceLable.Text = "Shipment  \n Tolerance(%)";
            this.toleranceLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // txtD_AdditionalReason
            // 
            this.txtD_AdditionalReason.Location = new System.Drawing.Point(637, 30);
            this.txtD_AdditionalReason.Name = "txtD_AdditionalReason";
            this.txtD_AdditionalReason.Size = new System.Drawing.Size(89, 21);
            this.txtD_AdditionalReason.TabIndex = 346;
            this.txtD_AdditionalReason.Tag = "AdditionalReason";
            // 
            // spin_AdditionalCost
            // 
            this.spin_AdditionalCost.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_AdditionalCost.Location = new System.Drawing.Point(637, 52);
            this.spin_AdditionalCost.Name = "spin_AdditionalCost";
            this.spin_AdditionalCost.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_AdditionalCost.Size = new System.Drawing.Size(89, 21);
            this.spin_AdditionalCost.TabIndex = 347;
            this.spin_AdditionalCost.Tag = "AdditionalCost";
            // 
            // additionalCostLable
            // 
            this.additionalCostLable.AutoSize = true;
            this.additionalCostLable.Location = new System.Drawing.Point(536, 56);
            this.additionalCostLable.Name = "additionalCostLable";
            this.additionalCostLable.Size = new System.Drawing.Size(78, 12);
            this.PlatetoolTipController.SetSuperTip(this.additionalCostLable, null);
            this.additionalCostLable.TabIndex = 349;
            this.additionalCostLable.Text = "Additional Cost";
            this.additionalCostLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // additionalReasonLable
            // 
            this.additionalReasonLable.AutoSize = true;
            this.additionalReasonLable.Location = new System.Drawing.Point(524, 34);
            this.additionalReasonLable.Name = "additionalReasonLable";
            this.additionalReasonLable.Size = new System.Drawing.Size(91, 12);
            this.PlatetoolTipController.SetSuperTip(this.additionalReasonLable, null);
            this.additionalReasonLable.TabIndex = 350;
            this.additionalReasonLable.Text = "Additional Reason";
            this.additionalReasonLable.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // dte_REQ
            // 
            this.dte_REQ.EditValue = null;
            this.dte_REQ.Location = new System.Drawing.Point(400, 29);
            this.dte_REQ.Name = "dte_REQ";
            this.dte_REQ.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_REQ.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_REQ.Size = new System.Drawing.Size(116, 21);
            this.dte_REQ.TabIndex = 344;
            this.dte_REQ.Tag = "ShipMentDate";
            // 
            // shipMentDateLable
            // 
            this.shipMentDateLable.AutoSize = true;
            this.shipMentDateLable.Location = new System.Drawing.Point(305, 33);
            this.shipMentDateLable.Name = "shipMentDateLable";
            this.shipMentDateLable.Size = new System.Drawing.Size(92, 12);
            this.PlatetoolTipController.SetSuperTip(this.shipMentDateLable, null);
            this.shipMentDateLable.TabIndex = 345;
            this.shipMentDateLable.Text = "REQ SHPMT Date";
            // 
            // dte_ETADate
            // 
            this.dte_ETADate.EditValue = null;
            this.dte_ETADate.Location = new System.Drawing.Point(400, 75);
            this.dte_ETADate.Name = "dte_ETADate";
            this.dte_ETADate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_ETADate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_ETADate.Size = new System.Drawing.Size(116, 21);
            this.dte_ETADate.TabIndex = 340;
            this.dte_ETADate.Tag = "ETADate";
            // 
            // eTADateLable
            // 
            this.eTADateLable.AutoSize = true;
            this.eTADateLable.Location = new System.Drawing.Point(341, 81);
            this.eTADateLable.Name = "eTADateLable";
            this.eTADateLable.Size = new System.Drawing.Size(51, 12);
            this.PlatetoolTipController.SetSuperTip(this.eTADateLable, null);
            this.eTADateLable.TabIndex = 343;
            this.eTADateLable.Text = "ETA Date";
            // 
            // dte_ConfirmETADate
            // 
            this.dte_ConfirmETADate.EditValue = null;
            this.dte_ConfirmETADate.Location = new System.Drawing.Point(400, 52);
            this.dte_ConfirmETADate.Name = "dte_ConfirmETADate";
            this.dte_ConfirmETADate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_ConfirmETADate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_ConfirmETADate.Size = new System.Drawing.Size(116, 21);
            this.dte_ConfirmETADate.TabIndex = 339;
            this.dte_ConfirmETADate.Tag = "ConfirmETADate";
            // 
            // confirmETADateLable
            // 
            this.confirmETADateLable.AutoSize = true;
            this.confirmETADateLable.Location = new System.Drawing.Point(293, 57);
            this.confirmETADateLable.Name = "confirmETADateLable";
            this.confirmETADateLable.Size = new System.Drawing.Size(94, 12);
            this.PlatetoolTipController.SetSuperTip(this.confirmETADateLable, null);
            this.confirmETADateLable.TabIndex = 342;
            this.confirmETADateLable.Text = "Confirm ETD Date";
            // 
            // dte_WOStartDate
            // 
            this.dte_WOStartDate.EditValue = null;
            this.dte_WOStartDate.Location = new System.Drawing.Point(400, 6);
            this.dte_WOStartDate.Name = "dte_WOStartDate";
            this.dte_WOStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_WOStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_WOStartDate.Size = new System.Drawing.Size(116, 21);
            this.dte_WOStartDate.TabIndex = 338;
            this.dte_WOStartDate.Tag = "WOStartDate";
            // 
            // wOStartDateLable
            // 
            this.wOStartDateLable.AutoSize = true;
            this.wOStartDateLable.Location = new System.Drawing.Point(311, 9);
            this.wOStartDateLable.Name = "wOStartDateLable";
            this.wOStartDateLable.Size = new System.Drawing.Size(72, 12);
            this.PlatetoolTipController.SetSuperTip(this.wOStartDateLable, null);
            this.wOStartDateLable.TabIndex = 341;
            this.wOStartDateLable.Text = "WO Start Date";
            // 
            // imageComboBoxEdit1
            // 
            this.imageComboBoxEdit1.Location = new System.Drawing.Point(143, 77);
            this.imageComboBoxEdit1.Name = "imageComboBoxEdit1";
            this.imageComboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageComboBoxEdit1.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OutStanding", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Completed", "0", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Cancel", "-1", -1)});
            this.imageComboBoxEdit1.Size = new System.Drawing.Size(143, 21);
            this.imageComboBoxEdit1.TabIndex = 337;
            this.imageComboBoxEdit1.Tag = "Status";
            // 
            // statusLable
            // 
            this.statusLable.AutoSize = true;
            this.statusLable.Location = new System.Drawing.Point(96, 84);
            this.statusLable.Name = "statusLable";
            this.statusLable.Size = new System.Drawing.Size(32, 12);
            this.PlatetoolTipController.SetSuperTip(this.statusLable, null);
            this.statusLable.TabIndex = 336;
            this.statusLable.Text = "Status";
            // 
            // txtD_Currency
            // 
            this.txtD_Currency.Location = new System.Drawing.Point(251, 122);
            this.txtD_Currency.Name = "txtD_Currency";
            this.txtD_Currency.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Currency.Properties.ReadOnly = true;
            this.txtD_Currency.Size = new System.Drawing.Size(35, 21);
            this.txtD_Currency.TabIndex = 335;
            this.txtD_Currency.Tag = "Currency";
            // 
            // spin_SuppAmount
            // 
            this.spin_SuppAmount.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SuppAmount.Location = new System.Drawing.Point(143, 123);
            this.spin_SuppAmount.Name = "spin_SuppAmount";
            this.spin_SuppAmount.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_SuppAmount.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_SuppAmount.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_SuppAmount.Properties.ReadOnly = true;
            this.spin_SuppAmount.Size = new System.Drawing.Size(94, 21);
            this.spin_SuppAmount.TabIndex = 333;
            this.spin_SuppAmount.Tag = "SuppAmount";
            // 
            // suppAmountLable
            // 
            this.suppAmountLable.AutoSize = true;
            this.suppAmountLable.Location = new System.Drawing.Point(42, 132);
            this.suppAmountLable.Name = "suppAmountLable";
            this.suppAmountLable.Size = new System.Drawing.Size(85, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppAmountLable, null);
            this.suppAmountLable.TabIndex = 334;
            this.suppAmountLable.Text = "Supplier Amount";
            // 
            // spin_SuppQty
            // 
            this.spin_SuppQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SuppQty.Location = new System.Drawing.Point(143, 100);
            this.spin_SuppQty.Name = "spin_SuppQty";
            this.spin_SuppQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_SuppQty.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_SuppQty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_SuppQty.Properties.ReadOnly = true;
            this.spin_SuppQty.Size = new System.Drawing.Size(94, 21);
            this.spin_SuppQty.TabIndex = 331;
            this.spin_SuppQty.Tag = "SuppQty";
            // 
            // suppQtyLable
            // 
            this.suppQtyLable.AutoSize = true;
            this.suppQtyLable.Location = new System.Drawing.Point(42, 108);
            this.suppQtyLable.Name = "suppQtyLable";
            this.suppQtyLable.Size = new System.Drawing.Size(81, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppQtyLable, null);
            this.suppQtyLable.TabIndex = 332;
            this.suppQtyLable.Text = "Supplier PO Qty";
            // 
            // spin_Leadtime
            // 
            this.spin_Leadtime.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Leadtime.Location = new System.Drawing.Point(637, 98);
            this.spin_Leadtime.Name = "spin_Leadtime";
            this.spin_Leadtime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_Leadtime.Size = new System.Drawing.Size(63, 21);
            this.spin_Leadtime.TabIndex = 329;
            this.spin_Leadtime.Tag = "Leadtime";
            // 
            // leadtimeLable
            // 
            this.leadtimeLable.AutoSize = true;
            this.leadtimeLable.Location = new System.Drawing.Point(518, 104);
            this.leadtimeLable.Name = "leadtimeLable";
            this.leadtimeLable.Size = new System.Drawing.Size(98, 12);
            this.PlatetoolTipController.SetSuperTip(this.leadtimeLable, null);
            this.leadtimeLable.TabIndex = 330;
            this.leadtimeLable.Text = "Shipment Lead time";
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loadPhotoToolStripMenuItem,
            this.cleanPhotoToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(128, 48);
            this.PlatetoolTipController.SetSuperTip(this.contextMenuStrip1, null);
            // 
            // loadPhotoToolStripMenuItem
            // 
            this.loadPhotoToolStripMenuItem.Name = "loadPhotoToolStripMenuItem";
            this.loadPhotoToolStripMenuItem.Size = new System.Drawing.Size(127, 22);
            this.loadPhotoToolStripMenuItem.Text = "Open Photo";
            // 
            // cleanPhotoToolStripMenuItem
            // 
            this.cleanPhotoToolStripMenuItem.Name = "cleanPhotoToolStripMenuItem";
            this.cleanPhotoToolStripMenuItem.Size = new System.Drawing.Size(127, 22);
            this.cleanPhotoToolStripMenuItem.Text = "Clean Photo";
            // 
            // poColorSizeDetailListForm1
            // 
            this.poColorSizeDetailListForm1.AllowAddRow = true;
            this.poColorSizeDetailListForm1.AutoOpenDetailForm = false;
            this.poColorSizeDetailListForm1.DataContext = null;
            this.poColorSizeDetailListForm1.DataSource = null;
            this.poColorSizeDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poColorSizeDetailListForm1.EditorTypeName = "PH.POPC.UI.POColorSizeDetailDetailForm";
            this.poColorSizeDetailListForm1.FileID = null;
            this.poColorSizeDetailListForm1.FirstForm = null;
            this.poColorSizeDetailListForm1.FormName = "POColorSizeDetailListForm";
            this.poColorSizeDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poColorSizeDetailListForm1.FormTitle = "PH.POPC.UI.POColorSizeDetailListForm";
            this.poColorSizeDetailListForm1.IsCancelList = false;
            this.poColorSizeDetailListForm1.IsShowPivotTable = false;
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
            this.poColorSizeDetailListForm1.LayoutData = uI_GridViewLayout1;
            this.poColorSizeDetailListForm1.LayoutName = null;
            this.poColorSizeDetailListForm1.ListForm = null;
            this.poColorSizeDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.poColorSizeDetailListForm1.m_POInfo = null;
            this.poColorSizeDetailListForm1.MenuID = ((long)(0));
            this.poColorSizeDetailListForm1.Name = "poColorSizeDetailListForm1";
            this.poColorSizeDetailListForm1.NextForm = null;
            this.poColorSizeDetailListForm1.ParentForm = null;
            this.poColorSizeDetailListForm1.PrevForm = null;
            this.poColorSizeDetailListForm1.RowChangeAutoSave = false;
            this.poColorSizeDetailListForm1.ShowMultiCheck = false;
            this.poColorSizeDetailListForm1.SideProgramID = null;
            this.poColorSizeDetailListForm1.Size = new System.Drawing.Size(953, 316);
            this.PlatetoolTipController.SetSuperTip(this.poColorSizeDetailListForm1, null);
            this.poColorSizeDetailListForm1.TabControls = null;
            this.poColorSizeDetailListForm1.TabIndex = 0;
            this.poColorSizeDetailListForm1.TabPage = null;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.poConfirmListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(796, 247);
            this.xtraTabPage2.Text = "PO Confirm Date";
            // 
            // poConfirmListForm1
            // 
            this.poConfirmListForm1.AllowAddRow = true;
            this.poConfirmListForm1.AutoOpenDetailForm = false;
            this.poConfirmListForm1.DataContext = null;
            this.poConfirmListForm1.DataSource = null;
            this.poConfirmListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poConfirmListForm1.EditorTypeName = null;
            this.poConfirmListForm1.FileID = null;
            this.poConfirmListForm1.FirstForm = null;
            this.poConfirmListForm1.FormName = "POConfirmListForm";
            this.poConfirmListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poConfirmListForm1.FormTitle = "PH.POPC.UI.POConfirmListForm";
            this.poConfirmListForm1.IsCancelList = false;
            this.poConfirmListForm1.IsShowPivotTable = false;
            this.poConfirmListForm1.LayoutData = null;
            this.poConfirmListForm1.LayoutName = null;
            this.poConfirmListForm1.ListForm = null;
            this.poConfirmListForm1.Location = new System.Drawing.Point(0, 0);
            this.poConfirmListForm1.MenuID = ((long)(0));
            this.poConfirmListForm1.Name = "poConfirmListForm1";
            this.poConfirmListForm1.NextForm = null;
            this.poConfirmListForm1.ParentForm = null;
            this.poConfirmListForm1.PrevForm = null;
            this.poConfirmListForm1.RowChangeAutoSave = true;
            this.poConfirmListForm1.ShowMultiCheck = false;
            this.poConfirmListForm1.SideProgramID = null;
            this.poConfirmListForm1.Size = new System.Drawing.Size(796, 247);
            this.PlatetoolTipController.SetSuperTip(this.poConfirmListForm1, null);
            this.poConfirmListForm1.TabControls = null;
            this.poConfirmListForm1.TabIndex = 0;
            this.poConfirmListForm1.TabPage = null;
            // 
            // btnCustPOFormat
            // 
            this.btnCustPOFormat.Caption = "CustPOFormat";
            this.btnCustPOFormat.Id = 22;
            this.btnCustPOFormat.Name = "btnCustPOFormat";
            // 
            // PODetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PODetailDetailForm";
            this.Size = new System.Drawing.Size(966, 603);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.headerTitleBar, 0);
            this.Controls.SetChildIndex(this.splitterControl1, 0);
            this.Controls.SetChildIndex(this.panelControl1, 0);
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
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Version.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ProjectNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).EndInit();
            this.xtraTabControl2.ResumeLayout(false);
            this.page1.ResumeLayout(false);
            this.page1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.weightSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.openToProjectCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Height.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_PrintedCost.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_StickCost.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupPrice.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Customer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_RateToPHUnit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PHUom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.but_ItemCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierReference.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Specification.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_WorkOrderNo.Properties)).EndInit();
            this.Page2.ResumeLayout(false);
            this.Page2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.HaveSupplementSheetCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditSuppQtyDimensiion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditBuyerQtyDimensiion.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_HandWorkCost.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Tolerance.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_AdditionalReason.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_AdditionalCost.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Leadtime.Properties)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.xtraTabPage2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        private Label weightLabel;
        private Label openToProjectLabel;
        private LookUpEdit lookUpEditSuppQtyDimensiion;
        private LookUpEdit lookUpEditBuyerQtyDimensiion;
        private CheckEdit HaveSupplementSheetCheckEdit;
    }
}
