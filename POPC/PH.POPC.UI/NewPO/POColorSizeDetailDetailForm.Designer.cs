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
    partial class POColorSizeDetailDetailForm
    {
        #region//auto code

        protected Label pOVersionLable;
        protected TextEdit txtD_ItemCode;
        protected TextEdit txtD_OrderLine;
        protected Label orderLineLable;
        protected TextEdit txtD_PONO;
        protected Label pONOLable;
        protected TextEdit txtD_Company;
        protected Label companyLable;
        protected TextEdit txtD_Version;
        protected ComboBoxEdit Comb_ColorCode;
        protected Label itemCodeLable;
        protected TextEdit txtD_SizeCode;
        protected Label fitCodeLable;
        protected Label priceLable;
        protected Label qtyLable;
        protected TextEdit txtD_FitCode;
        protected ComboBoxEdit Cobo_ColorShadeLable;
        protected Label sizeCodeLable;
        protected SpinEdit spin_Price;
        protected Label colorShadeLable;
        protected SpinEdit spin_Qty;
        protected Label colorCodeLable;
        protected TextEdit textEdit1;
        protected DevExpress.XtraTab.XtraTabControl xtraTabControl2;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage5;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage4;
        private POSKUBulkSubmissionListForm poskuBulkSubmissionListForm1;
        private POSKUColorStdListForm poskuColorStdListForm1;
        private POSKUDipSubmitListForm poskuDipSubmitListForm1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage7;
        private POSKUTestStatusListForm poskuTestStatusListForm1;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage8;
        protected Label totalReceivedQtyLable;
        protected SpinEdit spinEdit1;
        protected Label label7;
        protected TextEdit txtD_Difference;
        protected Label differenceLable;
        protected Label goodsInwardsDateLable;
        protected SpinEdit spin_ActualOvershipQty;
        protected Label pHBALAMountLable;
        protected DateEdit dte_GoodsInwardsDate;
        protected SpinEdit overshipQtyLable;
        protected Label hDOETALable;
        protected Label pHOutstandingQtyLable;
        protected DateEdit dte_HDOETA;
        protected SpinEdit spin_PHOutstandingQty;
        protected Label supplierUOMLabel;
        protected Label actualOvershipQtyLable;
        protected TextEdit txtD_SupplierUOM;
        protected SpinEdit spin_PHBALAMount;
        protected Label label13;
        protected SpinEdit overshipPercentLable;
        private CheckEdit multiPriceCheckEdit;
        private TextEdit garmentColorTextEdit;
        protected SpinEdit spin_SupplierOutstandingQty;
        protected Label suppAmountLable;
        protected TextEdit textEdit2;
        protected Label supplierOutstandingQtyLable;
        protected SpinEdit spin_Amount;
        protected Label deliveryDateLable;
        protected DateEdit dateEdit1;
        protected Label weekLable;
        protected TextEdit txtD_Week;
        private TextEdit supplierLable;
        private Label label12;
        protected TextEdit txtD_IntelSizeDesc;
        private TextEdit supplierNameLable;
        protected Label intelSizeLable;
        private Label lable_SupplierName;
        protected Label supplierReferenceLable;
        protected TextEdit txtD_SupplierReference;
        // private ColorStdNotepadListForm colorStdNotepadListForm1;
        #endregion

        private void InitializeComponent()
        {
            this.multiPriceLabel = new System.Windows.Forms.Label();
            this.garmentColorLabel = new System.Windows.Forms.Label();
            this.pOVersionLable = new System.Windows.Forms.Label();
            this.txtD_ItemCode = new DevExpress.XtraEditors.TextEdit();
            this.txtD_OrderLine = new DevExpress.XtraEditors.TextEdit();
            this.orderLineLable = new System.Windows.Forms.Label();
            this.txtD_PONO = new DevExpress.XtraEditors.TextEdit();
            this.pONOLable = new System.Windows.Forms.Label();
            this.txtD_Company = new DevExpress.XtraEditors.TextEdit();
            this.companyLable = new System.Windows.Forms.Label();
            this.txtD_Version = new DevExpress.XtraEditors.TextEdit();
            this.Comb_ColorCode = new DevExpress.XtraEditors.ComboBoxEdit();
            this.itemCodeLable = new System.Windows.Forms.Label();
            this.txtD_SizeCode = new DevExpress.XtraEditors.TextEdit();
            this.fitCodeLable = new System.Windows.Forms.Label();
            this.priceLable = new System.Windows.Forms.Label();
            this.qtyLable = new System.Windows.Forms.Label();
            this.txtD_FitCode = new DevExpress.XtraEditors.TextEdit();
            this.Cobo_ColorShadeLable = new DevExpress.XtraEditors.ComboBoxEdit();
            this.sizeCodeLable = new System.Windows.Forms.Label();
            this.spin_Price = new DevExpress.XtraEditors.SpinEdit();
            this.colorShadeLable = new System.Windows.Forms.Label();
            this.spin_Qty = new DevExpress.XtraEditors.SpinEdit();
            this.colorCodeLable = new System.Windows.Forms.Label();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.xtraTabControl2 = new DevExpress.XtraTab.XtraTabControl();
            this.xtraTabPage5 = new DevExpress.XtraTab.XtraTabPage();
            this.custStyleNoLable = new System.Windows.Forms.Label();
            this.custOrderNoLable = new System.Windows.Forms.Label();
            this.txtD_CustOrderNo = new DevExpress.XtraEditors.TextEdit();
            this.txtD_CustStyleNo = new DevExpress.XtraEditors.TextEdit();
            this.supplierPOQtyLable = new System.Windows.Forms.Label();
            this.spin_SupplierPOQty = new DevExpress.XtraEditors.SpinEdit();
            this.lCLable = new System.Windows.Forms.Label();
            this.txtD_LC = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Remark = new DevExpress.XtraEditors.TextEdit();
            this.remarkLable = new System.Windows.Forms.Label();
            this.multiPriceCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.garmentColorTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.xtraTabPage8 = new DevExpress.XtraTab.XtraTabPage();
            this.supplierLable = new DevExpress.XtraEditors.TextEdit();
            this.label12 = new System.Windows.Forms.Label();
            this.txtD_IntelSizeDesc = new DevExpress.XtraEditors.TextEdit();
            this.supplierNameLable = new DevExpress.XtraEditors.TextEdit();
            this.intelSizeLable = new System.Windows.Forms.Label();
            this.lable_SupplierName = new System.Windows.Forms.Label();
            this.supplierReferenceLable = new System.Windows.Forms.Label();
            this.txtD_SupplierReference = new DevExpress.XtraEditors.TextEdit();
            this.spin_SupplierOutstandingQty = new DevExpress.XtraEditors.SpinEdit();
            this.suppAmountLable = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.supplierOutstandingQtyLable = new System.Windows.Forms.Label();
            this.spin_Amount = new DevExpress.XtraEditors.SpinEdit();
            this.deliveryDateLable = new System.Windows.Forms.Label();
            this.dateEdit1 = new DevExpress.XtraEditors.DateEdit();
            this.weekLable = new System.Windows.Forms.Label();
            this.txtD_Week = new DevExpress.XtraEditors.TextEdit();
            this.totalReceivedQtyLable = new System.Windows.Forms.Label();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.label7 = new System.Windows.Forms.Label();
            this.txtD_Difference = new DevExpress.XtraEditors.TextEdit();
            this.differenceLable = new System.Windows.Forms.Label();
            this.goodsInwardsDateLable = new System.Windows.Forms.Label();
            this.spin_ActualOvershipQty = new DevExpress.XtraEditors.SpinEdit();
            this.pHBALAMountLable = new System.Windows.Forms.Label();
            this.dte_GoodsInwardsDate = new DevExpress.XtraEditors.DateEdit();
            this.overshipQtyLable = new DevExpress.XtraEditors.SpinEdit();
            this.hDOETALable = new System.Windows.Forms.Label();
            this.pHOutstandingQtyLable = new System.Windows.Forms.Label();
            this.dte_HDOETA = new DevExpress.XtraEditors.DateEdit();
            this.spin_PHOutstandingQty = new DevExpress.XtraEditors.SpinEdit();
            this.supplierUOMLabel = new System.Windows.Forms.Label();
            this.actualOvershipQtyLable = new System.Windows.Forms.Label();
            this.txtD_SupplierUOM = new DevExpress.XtraEditors.TextEdit();
            this.spin_PHBALAMount = new DevExpress.XtraEditors.SpinEdit();
            this.label13 = new System.Windows.Forms.Label();
            this.overshipPercentLable = new DevExpress.XtraEditors.SpinEdit();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.poskuColorStdListForm1 = new PH.POPC.UI.NewPO.POSKUColorStdListForm();
            this.xtraTabPage4 = new DevExpress.XtraTab.XtraTabPage();
            this.poskuDipSubmitListForm1 = new PH.POPC.UI.NewPO.POSKUDipSubmitListForm();
            this.xtraTabPage7 = new DevExpress.XtraTab.XtraTabPage();
            this.poskuTestStatusListForm1 = new PH.POPC.UI.NewPO.POSKUTestStatusListForm();
            this.poskuBulkSubmissionListForm1 = new PH.POPC.UI.NewPO.POSKUBulkSubmissionListForm();
            this.tpMatrix = new DevExpress.XtraTab.XtraTabPage();
            this.poColorSizeSplitListForm1 = new PH.POPC.UI.NewPO.POColorSizeSplitListForm();
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
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ItemCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_OrderLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PONO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Version.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Comb_ColorCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SizeCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_FitCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Cobo_ColorShadeLable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Price.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Qty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).BeginInit();
            this.xtraTabControl2.SuspendLayout();
            this.xtraTabPage5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustOrderNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierPOQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_LC.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Remark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.multiPriceCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.garmentColorTextEdit.Properties)).BeginInit();
            this.xtraTabPage8.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.supplierLable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_IntelSizeDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierNameLable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierReference.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierOutstandingQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Amount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Week.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Difference.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_ActualOvershipQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_GoodsInwardsDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_GoodsInwardsDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.overshipQtyLable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_HDOETA.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_HDOETA.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_PHOutstandingQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUOM.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_PHBALAMount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.overshipPercentLable.Properties)).BeginInit();
            this.xtraTabPage2.SuspendLayout();
            this.xtraTabPage4.SuspendLayout();
            this.xtraTabPage7.SuspendLayout();
            this.tpMatrix.SuspendLayout();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 277);
            this.splitterControl1.Size = new System.Drawing.Size(966, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.xtraTabControl2);
            this.headerTitleBar.Size = new System.Drawing.Size(966, 251);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.xtraTabControl2, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 283);
            this.panelControl1.Size = new System.Drawing.Size(966, 320);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.poskuBulkSubmissionListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(796, 215);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.SelectedTabPage = this.tpMatrix;
            this.xtraTabControl1.Size = new System.Drawing.Size(962, 316);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2,
            this.xtraTabPage4,
            this.xtraTabPage7,
            this.tpMatrix});
            this.xtraTabControl1.Text = "ColorStdNotepad";
            this.xtraTabControl1.Controls.SetChildIndex(this.tpMatrix, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage7, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage4, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage2, 0);
            this.xtraTabControl1.Controls.SetChildIndex(this.xtraTabPage1, 0);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // multiPriceLabel
            // 
            this.multiPriceLabel.AutoSize = true;
            this.multiPriceLabel.Location = new System.Drawing.Point(478, 62);
            this.multiPriceLabel.Name = "multiPriceLabel";
            this.multiPriceLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.multiPriceLabel, null);
            this.multiPriceLabel.TabIndex = 343;
            this.multiPriceLabel.Text = "Multi Price:";
            // 
            // garmentColorLabel
            // 
            this.garmentColorLabel.AutoSize = true;
            this.garmentColorLabel.Location = new System.Drawing.Point(251, 77);
            this.garmentColorLabel.Name = "garmentColorLabel";
            this.garmentColorLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.garmentColorLabel, null);
            this.garmentColorLabel.TabIndex = 342;
            this.garmentColorLabel.Text = "Garment Color:";
            // 
            // pOVersionLable
            // 
            this.pOVersionLable.AutoSize = true;
            this.pOVersionLable.Location = new System.Drawing.Point(40, 12);
            this.pOVersionLable.Name = "pOVersionLable";
            this.pOVersionLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.pOVersionLable, null);
            this.pOVersionLable.TabIndex = 199;
            this.pOVersionLable.Text = "Version";
            // 
            // txtD_ItemCode
            // 
            this.txtD_ItemCode.EditValue = "";
            this.txtD_ItemCode.Enabled = false;
            this.txtD_ItemCode.Location = new System.Drawing.Point(103, 99);
            this.txtD_ItemCode.Name = "txtD_ItemCode";
            this.txtD_ItemCode.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_ItemCode.Properties.MaxLength = 9;
            this.txtD_ItemCode.Properties.ReadOnly = true;
            this.txtD_ItemCode.Size = new System.Drawing.Size(94, 21);
            this.txtD_ItemCode.TabIndex = 6;
            this.txtD_ItemCode.Tag = "ItemCode";
            // 
            // txtD_OrderLine
            // 
            this.txtD_OrderLine.Enabled = false;
            this.txtD_OrderLine.Location = new System.Drawing.Point(103, 76);
            this.txtD_OrderLine.Name = "txtD_OrderLine";
            this.txtD_OrderLine.Properties.ReadOnly = true;
            this.txtD_OrderLine.Size = new System.Drawing.Size(49, 21);
            this.txtD_OrderLine.TabIndex = 5;
            this.txtD_OrderLine.Tag = "OrderLine";
            // 
            // orderLineLable
            // 
            this.orderLineLable.AutoSize = true;
            this.orderLineLable.Location = new System.Drawing.Point(28, 81);
            this.orderLineLable.Name = "orderLineLable";
            this.orderLineLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderLineLable, null);
            this.orderLineLable.TabIndex = 203;
            this.orderLineLable.Text = "OrderLine";
            // 
            // txtD_PONO
            // 
            this.txtD_PONO.Enabled = false;
            this.txtD_PONO.Location = new System.Drawing.Point(103, 53);
            this.txtD_PONO.Name = "txtD_PONO";
            this.txtD_PONO.Properties.ReadOnly = true;
            this.txtD_PONO.Size = new System.Drawing.Size(121, 21);
            this.txtD_PONO.TabIndex = 4;
            this.txtD_PONO.Tag = "PONO";
            // 
            // pONOLable
            // 
            this.pONOLable.AutoSize = true;
            this.pONOLable.Location = new System.Drawing.Point(52, 58);
            this.pONOLable.Name = "pONOLable";
            this.pONOLable.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.pONOLable, null);
            this.pONOLable.TabIndex = 202;
            this.pONOLable.Text = "PO NO";
            // 
            // txtD_Company
            // 
            this.txtD_Company.Enabled = false;
            this.txtD_Company.Location = new System.Drawing.Point(103, 30);
            this.txtD_Company.Name = "txtD_Company";
            this.txtD_Company.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Company.Properties.ReadOnly = true;
            this.txtD_Company.Size = new System.Drawing.Size(49, 21);
            this.txtD_Company.TabIndex = 3;
            this.txtD_Company.Tag = "Company";
            // 
            // companyLable
            // 
            this.companyLable.AutoSize = true;
            this.companyLable.Location = new System.Drawing.Point(40, 35);
            this.companyLable.Name = "companyLable";
            this.companyLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.companyLable, null);
            this.companyLable.TabIndex = 201;
            this.companyLable.Text = "Company";
            // 
            // txtD_Version
            // 
            this.txtD_Version.Enabled = false;
            this.txtD_Version.Location = new System.Drawing.Point(103, 7);
            this.txtD_Version.Name = "txtD_Version";
            this.txtD_Version.Properties.ReadOnly = true;
            this.txtD_Version.Size = new System.Drawing.Size(94, 21);
            this.txtD_Version.TabIndex = 1;
            this.txtD_Version.Tag = "POVersion";
            // 
            // Comb_ColorCode
            // 
            this.Comb_ColorCode.Location = new System.Drawing.Point(346, 3);
            this.Comb_ColorCode.Name = "Comb_ColorCode";
            this.Comb_ColorCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.Comb_ColorCode.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.Comb_ColorCode.Properties.MaxLength = 20;
            this.Comb_ColorCode.Size = new System.Drawing.Size(98, 21);
            this.Comb_ColorCode.TabIndex = 7;
            this.Comb_ColorCode.Tag = "ColorCode";
            // 
            // itemCodeLable
            // 
            this.itemCodeLable.AutoSize = true;
            this.itemCodeLable.Location = new System.Drawing.Point(34, 104);
            this.itemCodeLable.Name = "itemCodeLable";
            this.itemCodeLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.itemCodeLable, null);
            this.itemCodeLable.TabIndex = 205;
            this.itemCodeLable.Text = "Item Nr.";
            // 
            // txtD_SizeCode
            // 
            this.txtD_SizeCode.Location = new System.Drawing.Point(346, 26);
            this.txtD_SizeCode.Name = "txtD_SizeCode";
            this.txtD_SizeCode.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_SizeCode.Properties.MaxLength = 3;
            this.txtD_SizeCode.Size = new System.Drawing.Size(98, 21);
            this.txtD_SizeCode.TabIndex = 10;
            this.txtD_SizeCode.Tag = "SizeCode";
            // 
            // fitCodeLable
            // 
            this.fitCodeLable.AutoSize = true;
            this.fitCodeLable.Location = new System.Drawing.Point(317, 54);
            this.fitCodeLable.Name = "fitCodeLable";
            this.fitCodeLable.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.fitCodeLable, null);
            this.fitCodeLable.TabIndex = 227;
            this.fitCodeLable.Text = "Cup";
            // 
            // priceLable
            // 
            this.priceLable.AutoSize = true;
            this.priceLable.Location = new System.Drawing.Point(508, 39);
            this.priceLable.Name = "priceLable";
            this.priceLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.priceLable, null);
            this.priceLable.TabIndex = 219;
            this.priceLable.Text = "U/Price";
            // 
            // qtyLable
            // 
            this.qtyLable.AutoSize = true;
            this.qtyLable.Location = new System.Drawing.Point(496, 16);
            this.qtyLable.Name = "qtyLable";
            this.qtyLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.qtyLable, null);
            this.qtyLable.TabIndex = 218;
            this.qtyLable.Text = "PH PO Qty";
            // 
            // txtD_FitCode
            // 
            this.txtD_FitCode.Location = new System.Drawing.Point(346, 49);
            this.txtD_FitCode.Name = "txtD_FitCode";
            this.txtD_FitCode.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_FitCode.Properties.MaxLength = 1;
            this.txtD_FitCode.Size = new System.Drawing.Size(98, 21);
            this.txtD_FitCode.TabIndex = 13;
            this.txtD_FitCode.Tag = "FitCode";
            // 
            // Cobo_ColorShadeLable
            // 
            this.Cobo_ColorShadeLable.Location = new System.Drawing.Point(103, 122);
            this.Cobo_ColorShadeLable.Name = "Cobo_ColorShadeLable";
            this.Cobo_ColorShadeLable.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.Cobo_ColorShadeLable.Properties.Items.AddRange(new object[] {
            "Z02"});
            this.Cobo_ColorShadeLable.Properties.MaxLength = 30;
            this.Cobo_ColorShadeLable.Size = new System.Drawing.Size(98, 21);
            this.Cobo_ColorShadeLable.TabIndex = 9;
            this.Cobo_ColorShadeLable.Tag = "ColorShade";
            // 
            // sizeCodeLable
            // 
            this.sizeCodeLable.AutoSize = true;
            this.sizeCodeLable.Location = new System.Drawing.Point(311, 31);
            this.sizeCodeLable.Name = "sizeCodeLable";
            this.sizeCodeLable.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.sizeCodeLable, null);
            this.sizeCodeLable.TabIndex = 216;
            this.sizeCodeLable.Text = "Size";
            // 
            // spin_Price
            // 
            this.spin_Price.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Price.Location = new System.Drawing.Point(563, 35);
            this.spin_Price.Name = "spin_Price";
            this.spin_Price.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_Price.Size = new System.Drawing.Size(62, 21);
            this.spin_Price.TabIndex = 15;
            this.spin_Price.Tag = "Price";
            // 
            // colorShadeLable
            // 
            this.colorShadeLable.AutoSize = true;
            this.colorShadeLable.Location = new System.Drawing.Point(16, 127);
            this.colorShadeLable.Name = "colorShadeLable";
            this.colorShadeLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.colorShadeLable, null);
            this.colorShadeLable.TabIndex = 215;
            this.colorShadeLable.Text = "Color Shade";
            // 
            // spin_Qty
            // 
            this.spin_Qty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Qty.Location = new System.Drawing.Point(563, 13);
            this.spin_Qty.Name = "spin_Qty";
            this.spin_Qty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_Qty.Size = new System.Drawing.Size(98, 21);
            this.spin_Qty.TabIndex = 16;
            this.spin_Qty.Tag = "Qty";
            // 
            // colorCodeLable
            // 
            this.colorCodeLable.AutoSize = true;
            this.colorCodeLable.Location = new System.Drawing.Point(305, 8);
            this.colorCodeLable.Name = "colorCodeLable";
            this.colorCodeLable.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.colorCodeLable, null);
            this.colorCodeLable.TabIndex = 213;
            this.colorCodeLable.Text = "Color";
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(631, 35);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(30, 21);
            this.textEdit1.TabIndex = 281;
            this.textEdit1.Tag = "Currency";
            // 
            // xtraTabControl2
            // 
            this.xtraTabControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.xtraTabControl2.Location = new System.Drawing.Point(2, 21);
            this.xtraTabControl2.Name = "xtraTabControl2";
            this.xtraTabControl2.SelectedTabPage = this.xtraTabPage5;
            this.xtraTabControl2.Size = new System.Drawing.Size(962, 228);
            this.xtraTabControl2.TabIndex = 326;
            this.xtraTabControl2.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage5,
            this.xtraTabPage8});
            this.xtraTabControl2.Text = "Photo1";
            // 
            // xtraTabPage5
            // 
            this.xtraTabPage5.AutoScroll = true;
            this.xtraTabPage5.Controls.Add(this.custStyleNoLable);
            this.xtraTabPage5.Controls.Add(this.custOrderNoLable);
            this.xtraTabPage5.Controls.Add(this.txtD_CustOrderNo);
            this.xtraTabPage5.Controls.Add(this.txtD_CustStyleNo);
            this.xtraTabPage5.Controls.Add(this.supplierPOQtyLable);
            this.xtraTabPage5.Controls.Add(this.spin_SupplierPOQty);
            this.xtraTabPage5.Controls.Add(this.lCLable);
            this.xtraTabPage5.Controls.Add(this.txtD_LC);
            this.xtraTabPage5.Controls.Add(this.txtD_Remark);
            this.xtraTabPage5.Controls.Add(this.remarkLable);
            this.xtraTabPage5.Controls.Add(this.multiPriceLabel);
            this.xtraTabPage5.Controls.Add(this.multiPriceCheckEdit);
            this.xtraTabPage5.Controls.Add(this.garmentColorLabel);
            this.xtraTabPage5.Controls.Add(this.garmentColorTextEdit);
            this.xtraTabPage5.Controls.Add(this.pOVersionLable);
            this.xtraTabPage5.Controls.Add(this.colorShadeLable);
            this.xtraTabPage5.Controls.Add(this.spin_Price);
            this.xtraTabPage5.Controls.Add(this.spin_Qty);
            this.xtraTabPage5.Controls.Add(this.itemCodeLable);
            this.xtraTabPage5.Controls.Add(this.txtD_SizeCode);
            this.xtraTabPage5.Controls.Add(this.colorCodeLable);
            this.xtraTabPage5.Controls.Add(this.sizeCodeLable);
            this.xtraTabPage5.Controls.Add(this.Comb_ColorCode);
            this.xtraTabPage5.Controls.Add(this.txtD_Version);
            this.xtraTabPage5.Controls.Add(this.fitCodeLable);
            this.xtraTabPage5.Controls.Add(this.companyLable);
            this.xtraTabPage5.Controls.Add(this.Cobo_ColorShadeLable);
            this.xtraTabPage5.Controls.Add(this.textEdit1);
            this.xtraTabPage5.Controls.Add(this.txtD_Company);
            this.xtraTabPage5.Controls.Add(this.pONOLable);
            this.xtraTabPage5.Controls.Add(this.priceLable);
            this.xtraTabPage5.Controls.Add(this.txtD_PONO);
            this.xtraTabPage5.Controls.Add(this.txtD_OrderLine);
            this.xtraTabPage5.Controls.Add(this.txtD_ItemCode);
            this.xtraTabPage5.Controls.Add(this.orderLineLable);
            this.xtraTabPage5.Controls.Add(this.qtyLable);
            this.xtraTabPage5.Controls.Add(this.txtD_FitCode);
            this.xtraTabPage5.Name = "xtraTabPage5";
            this.xtraTabPage5.Size = new System.Drawing.Size(953, 196);
            this.xtraTabPage5.Text = "BasicInfo";
            // 
            // custStyleNoLable
            // 
            this.custStyleNoLable.AutoSize = true;
            this.custStyleNoLable.Location = new System.Drawing.Point(460, 132);
            this.custStyleNoLable.Name = "custStyleNoLable";
            this.custStyleNoLable.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.custStyleNoLable, null);
            this.custStyleNoLable.TabIndex = 361;
            this.custStyleNoLable.Text = "End Cust Style#";
            // 
            // custOrderNoLable
            // 
            this.custOrderNoLable.AutoSize = true;
            this.custOrderNoLable.Location = new System.Drawing.Point(460, 110);
            this.custOrderNoLable.Name = "custOrderNoLable";
            this.custOrderNoLable.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.custOrderNoLable, null);
            this.custOrderNoLable.TabIndex = 362;
            this.custOrderNoLable.Text = "End Cust Order#";
            // 
            // txtD_CustOrderNo
            // 
            this.txtD_CustOrderNo.Location = new System.Drawing.Point(563, 107);
            this.txtD_CustOrderNo.Name = "txtD_CustOrderNo";
            this.txtD_CustOrderNo.Size = new System.Drawing.Size(128, 21);
            this.txtD_CustOrderNo.TabIndex = 360;
            this.txtD_CustOrderNo.Tag = "CustOrderNo";
            // 
            // txtD_CustStyleNo
            // 
            this.txtD_CustStyleNo.Location = new System.Drawing.Point(563, 129);
            this.txtD_CustStyleNo.Name = "txtD_CustStyleNo";
            this.txtD_CustStyleNo.Size = new System.Drawing.Size(128, 21);
            this.txtD_CustStyleNo.TabIndex = 359;
            this.txtD_CustStyleNo.Tag = "CustStyleNo";
            // 
            // supplierPOQtyLable
            // 
            this.supplierPOQtyLable.AutoSize = true;
            this.supplierPOQtyLable.Location = new System.Drawing.Point(460, 85);
            this.supplierPOQtyLable.Name = "supplierPOQtyLable";
            this.supplierPOQtyLable.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierPOQtyLable, null);
            this.supplierPOQtyLable.TabIndex = 358;
            this.supplierPOQtyLable.Text = "Supplier PO Qty";
            // 
            // spin_SupplierPOQty
            // 
            this.spin_SupplierPOQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SupplierPOQty.Enabled = false;
            this.spin_SupplierPOQty.Location = new System.Drawing.Point(563, 80);
            this.spin_SupplierPOQty.Name = "spin_SupplierPOQty";
            this.spin_SupplierPOQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_SupplierPOQty.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_SupplierPOQty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_SupplierPOQty.Properties.IsFloatValue = false;
            this.spin_SupplierPOQty.Properties.Mask.EditMask = "N2";
            this.spin_SupplierPOQty.Properties.ReadOnly = true;
            this.spin_SupplierPOQty.Size = new System.Drawing.Size(107, 21);
            this.spin_SupplierPOQty.TabIndex = 357;
            this.spin_SupplierPOQty.Tag = "SupplierPOQty";
            // 
            // lCLable
            // 
            this.lCLable.AutoSize = true;
            this.lCLable.Location = new System.Drawing.Point(70, 153);
            this.lCLable.Name = "lCLable";
            this.lCLable.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.lCLable, null);
            this.lCLable.TabIndex = 356;
            this.lCLable.Text = "LC";
            // 
            // txtD_LC
            // 
            this.txtD_LC.Location = new System.Drawing.Point(103, 149);
            this.txtD_LC.Name = "txtD_LC";
            this.txtD_LC.Size = new System.Drawing.Size(341, 21);
            this.txtD_LC.TabIndex = 355;
            this.txtD_LC.Tag = "LC";
            // 
            // txtD_Remark
            // 
            this.txtD_Remark.Location = new System.Drawing.Point(103, 172);
            this.txtD_Remark.Name = "txtD_Remark";
            this.txtD_Remark.Size = new System.Drawing.Size(341, 21);
            this.txtD_Remark.TabIndex = 353;
            this.txtD_Remark.Tag = "Remark";
            // 
            // remarkLable
            // 
            this.remarkLable.AutoSize = true;
            this.remarkLable.Location = new System.Drawing.Point(46, 176);
            this.remarkLable.Name = "remarkLable";
            this.remarkLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.remarkLable, null);
            this.remarkLable.TabIndex = 354;
            this.remarkLable.Text = "Remark";
            // 
            // multiPriceCheckEdit
            // 
            this.multiPriceCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MultiPrice", true));
            this.multiPriceCheckEdit.Location = new System.Drawing.Point(563, 59);
            this.multiPriceCheckEdit.Name = "multiPriceCheckEdit";
            this.multiPriceCheckEdit.Properties.Caption = "";
            this.multiPriceCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.multiPriceCheckEdit.TabIndex = 345;
            // 
            // garmentColorTextEdit
            // 
            this.garmentColorTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "GarmentColor", true));
            this.garmentColorTextEdit.Location = new System.Drawing.Point(346, 72);
            this.garmentColorTextEdit.Name = "garmentColorTextEdit";
            this.garmentColorTextEdit.Size = new System.Drawing.Size(100, 21);
            this.garmentColorTextEdit.TabIndex = 344;
            // 
            // xtraTabPage8
            // 
            this.xtraTabPage8.AutoScroll = true;
            this.xtraTabPage8.Controls.Add(this.supplierLable);
            this.xtraTabPage8.Controls.Add(this.label12);
            this.xtraTabPage8.Controls.Add(this.txtD_IntelSizeDesc);
            this.xtraTabPage8.Controls.Add(this.supplierNameLable);
            this.xtraTabPage8.Controls.Add(this.intelSizeLable);
            this.xtraTabPage8.Controls.Add(this.lable_SupplierName);
            this.xtraTabPage8.Controls.Add(this.supplierReferenceLable);
            this.xtraTabPage8.Controls.Add(this.txtD_SupplierReference);
            this.xtraTabPage8.Controls.Add(this.spin_SupplierOutstandingQty);
            this.xtraTabPage8.Controls.Add(this.suppAmountLable);
            this.xtraTabPage8.Controls.Add(this.textEdit2);
            this.xtraTabPage8.Controls.Add(this.supplierOutstandingQtyLable);
            this.xtraTabPage8.Controls.Add(this.spin_Amount);
            this.xtraTabPage8.Controls.Add(this.deliveryDateLable);
            this.xtraTabPage8.Controls.Add(this.dateEdit1);
            this.xtraTabPage8.Controls.Add(this.weekLable);
            this.xtraTabPage8.Controls.Add(this.txtD_Week);
            this.xtraTabPage8.Controls.Add(this.totalReceivedQtyLable);
            this.xtraTabPage8.Controls.Add(this.spinEdit1);
            this.xtraTabPage8.Controls.Add(this.label7);
            this.xtraTabPage8.Controls.Add(this.txtD_Difference);
            this.xtraTabPage8.Controls.Add(this.differenceLable);
            this.xtraTabPage8.Controls.Add(this.goodsInwardsDateLable);
            this.xtraTabPage8.Controls.Add(this.spin_ActualOvershipQty);
            this.xtraTabPage8.Controls.Add(this.pHBALAMountLable);
            this.xtraTabPage8.Controls.Add(this.dte_GoodsInwardsDate);
            this.xtraTabPage8.Controls.Add(this.overshipQtyLable);
            this.xtraTabPage8.Controls.Add(this.hDOETALable);
            this.xtraTabPage8.Controls.Add(this.pHOutstandingQtyLable);
            this.xtraTabPage8.Controls.Add(this.dte_HDOETA);
            this.xtraTabPage8.Controls.Add(this.spin_PHOutstandingQty);
            this.xtraTabPage8.Controls.Add(this.supplierUOMLabel);
            this.xtraTabPage8.Controls.Add(this.actualOvershipQtyLable);
            this.xtraTabPage8.Controls.Add(this.txtD_SupplierUOM);
            this.xtraTabPage8.Controls.Add(this.spin_PHBALAMount);
            this.xtraTabPage8.Controls.Add(this.label13);
            this.xtraTabPage8.Controls.Add(this.overshipPercentLable);
            this.xtraTabPage8.Name = "xtraTabPage8";
            this.xtraTabPage8.Size = new System.Drawing.Size(796, 196);
            this.xtraTabPage8.Text = "More Info";
            // 
            // supplierLable
            // 
            this.supplierLable.Location = new System.Drawing.Point(419, 111);
            this.supplierLable.Name = "supplierLable";
            this.supplierLable.Size = new System.Drawing.Size(102, 21);
            this.supplierLable.TabIndex = 360;
            this.supplierLable.Tag = "Supplier";
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(360, 116);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.label12, null);
            this.label12.TabIndex = 359;
            this.label12.Text = "Supplier";
            // 
            // txtD_IntelSizeDesc
            // 
            this.txtD_IntelSizeDesc.Location = new System.Drawing.Point(715, 155);
            this.txtD_IntelSizeDesc.Name = "txtD_IntelSizeDesc";
            this.txtD_IntelSizeDesc.Size = new System.Drawing.Size(59, 21);
            this.txtD_IntelSizeDesc.TabIndex = 345;
            this.txtD_IntelSizeDesc.Tag = "IntelSize";
            // 
            // supplierNameLable
            // 
            this.supplierNameLable.Location = new System.Drawing.Point(419, 133);
            this.supplierNameLable.Name = "supplierNameLable";
            this.supplierNameLable.Size = new System.Drawing.Size(118, 21);
            this.supplierNameLable.TabIndex = 358;
            this.supplierNameLable.Tag = "SupplierName";
            // 
            // intelSizeLable
            // 
            this.intelSizeLable.AutoSize = true;
            this.intelSizeLable.Location = new System.Drawing.Point(644, 160);
            this.intelSizeLable.Name = "intelSizeLable";
            this.intelSizeLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.intelSizeLable, null);
            this.intelSizeLable.TabIndex = 347;
            this.intelSizeLable.Text = "Intel Size";
            // 
            // lable_SupplierName
            // 
            this.lable_SupplierName.AutoSize = true;
            this.lable_SupplierName.Location = new System.Drawing.Point(330, 137);
            this.lable_SupplierName.Name = "lable_SupplierName";
            this.lable_SupplierName.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_SupplierName, null);
            this.lable_SupplierName.TabIndex = 357;
            this.lable_SupplierName.Text = "Supplier Name";
            // 
            // supplierReferenceLable
            // 
            this.supplierReferenceLable.AutoSize = true;
            this.supplierReferenceLable.Location = new System.Drawing.Point(319, 160);
            this.supplierReferenceLable.Name = "supplierReferenceLable";
            this.supplierReferenceLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierReferenceLable, null);
            this.supplierReferenceLable.TabIndex = 350;
            this.supplierReferenceLable.Text = "Supplier Reference";
            // 
            // txtD_SupplierReference
            // 
            this.txtD_SupplierReference.Location = new System.Drawing.Point(443, 154);
            this.txtD_SupplierReference.Name = "txtD_SupplierReference";
            this.txtD_SupplierReference.Size = new System.Drawing.Size(192, 21);
            this.txtD_SupplierReference.TabIndex = 349;
            this.txtD_SupplierReference.Tag = "SupplierReference";
            // 
            // spin_SupplierOutstandingQty
            // 
            this.spin_SupplierOutstandingQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SupplierOutstandingQty.Enabled = false;
            this.spin_SupplierOutstandingQty.Location = new System.Drawing.Point(151, 134);
            this.spin_SupplierOutstandingQty.Name = "spin_SupplierOutstandingQty";
            this.spin_SupplierOutstandingQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_SupplierOutstandingQty.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_SupplierOutstandingQty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_SupplierOutstandingQty.Properties.IsFloatValue = false;
            this.spin_SupplierOutstandingQty.Properties.Mask.EditMask = "N00";
            this.spin_SupplierOutstandingQty.Properties.ReadOnly = true;
            this.spin_SupplierOutstandingQty.Size = new System.Drawing.Size(107, 21);
            this.spin_SupplierOutstandingQty.TabIndex = 338;
            this.spin_SupplierOutstandingQty.Tag = "SupplierOutstandingQty";
            // 
            // suppAmountLable
            // 
            this.suppAmountLable.AutoSize = true;
            this.suppAmountLable.Location = new System.Drawing.Point(71, 159);
            this.suppAmountLable.Name = "suppAmountLable";
            this.suppAmountLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppAmountLable, null);
            this.suppAmountLable.TabIndex = 342;
            this.suppAmountLable.Text = "Supp Amount";
            // 
            // textEdit2
            // 
            this.textEdit2.Location = new System.Drawing.Point(279, 155);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.ReadOnly = true;
            this.textEdit2.Size = new System.Drawing.Size(30, 21);
            this.textEdit2.TabIndex = 344;
            this.textEdit2.Tag = "Currency";
            // 
            // supplierOutstandingQtyLable
            // 
            this.supplierOutstandingQtyLable.AutoSize = true;
            this.supplierOutstandingQtyLable.Location = new System.Drawing.Point(17, 136);
            this.supplierOutstandingQtyLable.Name = "supplierOutstandingQtyLable";
            this.supplierOutstandingQtyLable.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierOutstandingQtyLable, null);
            this.supplierOutstandingQtyLable.TabIndex = 340;
            this.supplierOutstandingQtyLable.Text = "Supp Outstanding Qty";
            // 
            // spin_Amount
            // 
            this.spin_Amount.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Amount.Location = new System.Drawing.Point(151, 155);
            this.spin_Amount.Name = "spin_Amount";
            this.spin_Amount.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_Amount.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_Amount.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_Amount.Properties.ReadOnly = true;
            this.spin_Amount.Size = new System.Drawing.Size(107, 21);
            this.spin_Amount.TabIndex = 343;
            this.spin_Amount.Tag = "SuppAmount";
            // 
            // deliveryDateLable
            // 
            this.deliveryDateLable.AutoSize = true;
            this.deliveryDateLable.Location = new System.Drawing.Point(300, 88);
            this.deliveryDateLable.Name = "deliveryDateLable";
            this.deliveryDateLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.deliveryDateLable, null);
            this.deliveryDateLable.TabIndex = 335;
            this.deliveryDateLable.Text = "Delivery Date(ETD)";
            // 
            // dateEdit1
            // 
            this.dateEdit1.EditValue = null;
            this.dateEdit1.Enabled = false;
            this.dateEdit1.Location = new System.Drawing.Point(419, 84);
            this.dateEdit1.Name = "dateEdit1";
            this.dateEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.dateEdit1.Properties.ReadOnly = true;
            this.dateEdit1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit1.Size = new System.Drawing.Size(88, 21);
            this.dateEdit1.TabIndex = 334;
            this.dateEdit1.Tag = "DeliveryDate";
            // 
            // weekLable
            // 
            this.weekLable.AutoSize = true;
            this.weekLable.Location = new System.Drawing.Point(606, 90);
            this.weekLable.Name = "weekLable";
            this.weekLable.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.weekLable, null);
            this.weekLable.TabIndex = 337;
            this.weekLable.Text = "Week";
            // 
            // txtD_Week
            // 
            this.txtD_Week.Location = new System.Drawing.Point(646, 87);
            this.txtD_Week.Name = "txtD_Week";
            this.txtD_Week.Size = new System.Drawing.Size(31, 21);
            this.txtD_Week.TabIndex = 336;
            this.txtD_Week.Tag = "Week";
            // 
            // totalReceivedQtyLable
            // 
            this.totalReceivedQtyLable.AutoSize = true;
            this.totalReceivedQtyLable.Location = new System.Drawing.Point(35, 90);
            this.totalReceivedQtyLable.Name = "totalReceivedQtyLable";
            this.totalReceivedQtyLable.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.totalReceivedQtyLable, null);
            this.totalReceivedQtyLable.TabIndex = 333;
            this.totalReceivedQtyLable.Text = "Total ReceivedQty";
            // 
            // spinEdit1
            // 
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Enabled = false;
            this.spinEdit1.Location = new System.Drawing.Point(151, 88);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spinEdit1.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spinEdit1.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spinEdit1.Properties.ReadOnly = true;
            this.spinEdit1.Size = new System.Drawing.Size(107, 21);
            this.spinEdit1.TabIndex = 332;
            this.spinEdit1.Tag = "TotalReceivedQty";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(336, 22);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.label7, null);
            this.label7.TabIndex = 317;
            this.label7.Text = "Overship Qty";
            // 
            // txtD_Difference
            // 
            this.txtD_Difference.Enabled = false;
            this.txtD_Difference.Location = new System.Drawing.Point(151, 42);
            this.txtD_Difference.Name = "txtD_Difference";
            this.txtD_Difference.Properties.ReadOnly = true;
            this.txtD_Difference.Size = new System.Drawing.Size(107, 21);
            this.txtD_Difference.TabIndex = 326;
            this.txtD_Difference.Tag = "DifferenceDate";
            // 
            // differenceLable
            // 
            this.differenceLable.AutoSize = true;
            this.differenceLable.Location = new System.Drawing.Point(77, 44);
            this.differenceLable.Name = "differenceLable";
            this.differenceLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.differenceLable, null);
            this.differenceLable.TabIndex = 329;
            this.differenceLable.Text = "Difference";
            // 
            // goodsInwardsDateLable
            // 
            this.goodsInwardsDateLable.AutoSize = true;
            this.goodsInwardsDateLable.Location = new System.Drawing.Point(29, 67);
            this.goodsInwardsDateLable.Name = "goodsInwardsDateLable";
            this.goodsInwardsDateLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.goodsInwardsDateLable, null);
            this.goodsInwardsDateLable.TabIndex = 328;
            this.goodsInwardsDateLable.Text = "Goods Inwards Date";
            // 
            // spin_ActualOvershipQty
            // 
            this.spin_ActualOvershipQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_ActualOvershipQty.Enabled = false;
            this.spin_ActualOvershipQty.Location = new System.Drawing.Point(419, 63);
            this.spin_ActualOvershipQty.Name = "spin_ActualOvershipQty";
            this.spin_ActualOvershipQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_ActualOvershipQty.Properties.ReadOnly = true;
            this.spin_ActualOvershipQty.Size = new System.Drawing.Size(88, 21);
            this.spin_ActualOvershipQty.TabIndex = 316;
            this.spin_ActualOvershipQty.Tag = "ActualOvershipQty";
            // 
            // pHBALAMountLable
            // 
            this.pHBALAMountLable.AutoSize = true;
            this.pHBALAMountLable.Location = new System.Drawing.Point(552, 44);
            this.pHBALAMountLable.Name = "pHBALAMountLable";
            this.pHBALAMountLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHBALAMountLable, null);
            this.pHBALAMountLable.TabIndex = 331;
            this.pHBALAMountLable.Text = "PH BAL AMount";
            // 
            // dte_GoodsInwardsDate
            // 
            this.dte_GoodsInwardsDate.EditValue = null;
            this.dte_GoodsInwardsDate.Location = new System.Drawing.Point(151, 65);
            this.dte_GoodsInwardsDate.Name = "dte_GoodsInwardsDate";
            this.dte_GoodsInwardsDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_GoodsInwardsDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_GoodsInwardsDate.Size = new System.Drawing.Size(107, 21);
            this.dte_GoodsInwardsDate.TabIndex = 325;
            this.dte_GoodsInwardsDate.Tag = "GoodsInwardsDate";
            // 
            // overshipQtyLable
            // 
            this.overshipQtyLable.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.overshipQtyLable.Location = new System.Drawing.Point(419, 21);
            this.overshipQtyLable.Name = "overshipQtyLable";
            this.overshipQtyLable.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.overshipQtyLable.Size = new System.Drawing.Size(88, 21);
            this.overshipQtyLable.TabIndex = 314;
            this.overshipQtyLable.Tag = "OvershipQty";
            // 
            // hDOETALable
            // 
            this.hDOETALable.AutoSize = true;
            this.hDOETALable.Location = new System.Drawing.Point(95, 21);
            this.hDOETALable.Name = "hDOETALable";
            this.hDOETALable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.hDOETALable, null);
            this.hDOETALable.TabIndex = 327;
            this.hDOETALable.Text = "HDO ETA";
            // 
            // pHOutstandingQtyLable
            // 
            this.pHOutstandingQtyLable.AutoSize = true;
            this.pHOutstandingQtyLable.Location = new System.Drawing.Point(522, 21);
            this.pHOutstandingQtyLable.Name = "pHOutstandingQtyLable";
            this.pHOutstandingQtyLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHOutstandingQtyLable, null);
            this.pHOutstandingQtyLable.TabIndex = 319;
            this.pHOutstandingQtyLable.Text = "PH Outstanding Qty";
            // 
            // dte_HDOETA
            // 
            this.dte_HDOETA.EditValue = null;
            this.dte_HDOETA.Location = new System.Drawing.Point(151, 19);
            this.dte_HDOETA.Name = "dte_HDOETA";
            this.dte_HDOETA.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_HDOETA.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_HDOETA.Size = new System.Drawing.Size(107, 21);
            this.dte_HDOETA.TabIndex = 324;
            this.dte_HDOETA.Tag = "HDOETA";
            // 
            // spin_PHOutstandingQty
            // 
            this.spin_PHOutstandingQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_PHOutstandingQty.Location = new System.Drawing.Point(646, 19);
            this.spin_PHOutstandingQty.Name = "spin_PHOutstandingQty";
            this.spin_PHOutstandingQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_PHOutstandingQty.Size = new System.Drawing.Size(128, 21);
            this.spin_PHOutstandingQty.TabIndex = 318;
            this.spin_PHOutstandingQty.Tag = "PHOutstandingQty";
            // 
            // supplierUOMLabel
            // 
            this.supplierUOMLabel.AutoSize = true;
            this.supplierUOMLabel.Location = new System.Drawing.Point(558, 67);
            this.supplierUOMLabel.Name = "supplierUOMLabel";
            this.supplierUOMLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierUOMLabel, null);
            this.supplierUOMLabel.TabIndex = 323;
            this.supplierUOMLabel.Text = "Supplier UOM";
            // 
            // actualOvershipQtyLable
            // 
            this.actualOvershipQtyLable.AutoSize = true;
            this.actualOvershipQtyLable.Location = new System.Drawing.Point(294, 66);
            this.actualOvershipQtyLable.Name = "actualOvershipQtyLable";
            this.actualOvershipQtyLable.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.actualOvershipQtyLable, null);
            this.actualOvershipQtyLable.TabIndex = 320;
            this.actualOvershipQtyLable.Text = "Actual Overship Qty";
            // 
            // txtD_SupplierUOM
            // 
            this.txtD_SupplierUOM.Location = new System.Drawing.Point(646, 65);
            this.txtD_SupplierUOM.Name = "txtD_SupplierUOM";
            this.txtD_SupplierUOM.Properties.ReadOnly = true;
            this.txtD_SupplierUOM.Size = new System.Drawing.Size(127, 21);
            this.txtD_SupplierUOM.TabIndex = 322;
            this.txtD_SupplierUOM.Tag = "SupplierUOM";
            // 
            // spin_PHBALAMount
            // 
            this.spin_PHBALAMount.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_PHBALAMount.Enabled = false;
            this.spin_PHBALAMount.Location = new System.Drawing.Point(646, 42);
            this.spin_PHBALAMount.Name = "spin_PHBALAMount";
            this.spin_PHBALAMount.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_PHBALAMount.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_PHBALAMount.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_PHBALAMount.Properties.ReadOnly = true;
            this.spin_PHBALAMount.Size = new System.Drawing.Size(128, 21);
            this.spin_PHBALAMount.TabIndex = 330;
            this.spin_PHBALAMount.Tag = "PHBALAMount";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(312, 44);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.label13, null);
            this.label13.TabIndex = 321;
            this.label13.Text = "Overship Percent";
            // 
            // overshipPercentLable
            // 
            this.overshipPercentLable.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.overshipPercentLable.Enabled = false;
            this.overshipPercentLable.Location = new System.Drawing.Point(419, 42);
            this.overshipPercentLable.Name = "overshipPercentLable";
            this.overshipPercentLable.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.overshipPercentLable.Properties.DisplayFormat.FormatString = "P2";
            this.overshipPercentLable.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.overshipPercentLable.Properties.Mask.EditMask = "N2";
            this.overshipPercentLable.Properties.ReadOnly = true;
            this.overshipPercentLable.Size = new System.Drawing.Size(88, 21);
            this.overshipPercentLable.TabIndex = 315;
            this.overshipPercentLable.Tag = "OvershipPercent";
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.poskuColorStdListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(796, 215);
            this.xtraTabPage2.Text = "ColorStd";
            // 
            // poskuColorStdListForm1
            // 
            this.poskuColorStdListForm1.AllowAddRow = true;
            this.poskuColorStdListForm1.AutoOpenDetailForm = false;
            this.poskuColorStdListForm1.DataContext = null;
            this.poskuColorStdListForm1.DataSource = null;
            this.poskuColorStdListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poskuColorStdListForm1.EditorTypeName = null;
            this.poskuColorStdListForm1.FileID = null;
            this.poskuColorStdListForm1.FirstForm = null;
            this.poskuColorStdListForm1.FormName = "POSKUColorStdListForm";
            this.poskuColorStdListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poskuColorStdListForm1.FormTitle = "PH.POPC.UI.POSKUColorStdListForm";
            this.poskuColorStdListForm1.IsCancelList = false;
            this.poskuColorStdListForm1.IsShowPivotTable = false;
            this.poskuColorStdListForm1.LayoutData = null;
            this.poskuColorStdListForm1.LayoutName = null;
            this.poskuColorStdListForm1.ListForm = null;
            this.poskuColorStdListForm1.Location = new System.Drawing.Point(0, 0);
            this.poskuColorStdListForm1.MenuID = ((long)(0));
            this.poskuColorStdListForm1.Name = "poskuColorStdListForm1";
            this.poskuColorStdListForm1.NextForm = null;
            this.poskuColorStdListForm1.ParentForm = null;
            this.poskuColorStdListForm1.PrevForm = null;
            this.poskuColorStdListForm1.RowChangeAutoSave = true;
            this.poskuColorStdListForm1.ShowMultiCheck = false;
            this.poskuColorStdListForm1.SideProgramID = null;
            this.poskuColorStdListForm1.Size = new System.Drawing.Size(796, 215);
            this.PlatetoolTipController.SetSuperTip(this.poskuColorStdListForm1, null);
            this.poskuColorStdListForm1.TabControls = null;
            this.poskuColorStdListForm1.TabIndex = 0;
            this.poskuColorStdListForm1.TabPage = null;
            // 
            // xtraTabPage4
            // 
            this.xtraTabPage4.Controls.Add(this.poskuDipSubmitListForm1);
            this.xtraTabPage4.Name = "xtraTabPage4";
            this.xtraTabPage4.Size = new System.Drawing.Size(796, 215);
            this.xtraTabPage4.Text = "DipSubmit";
            // 
            // poskuDipSubmitListForm1
            // 
            this.poskuDipSubmitListForm1.AllowAddRow = true;
            this.poskuDipSubmitListForm1.AutoOpenDetailForm = false;
            this.poskuDipSubmitListForm1.DataContext = null;
            this.poskuDipSubmitListForm1.DataSource = null;
            this.poskuDipSubmitListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poskuDipSubmitListForm1.EditorTypeName = null;
            this.poskuDipSubmitListForm1.FileID = null;
            this.poskuDipSubmitListForm1.FirstForm = null;
            this.poskuDipSubmitListForm1.FormName = "POSKUDipSubmitListForm";
            this.poskuDipSubmitListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poskuDipSubmitListForm1.FormTitle = "PH.POPC.UI.POSKUDipSubmitListForm";
            this.poskuDipSubmitListForm1.IsCancelList = false;
            this.poskuDipSubmitListForm1.IsShowPivotTable = false;
            this.poskuDipSubmitListForm1.LayoutData = null;
            this.poskuDipSubmitListForm1.LayoutName = null;
            this.poskuDipSubmitListForm1.ListForm = null;
            this.poskuDipSubmitListForm1.Location = new System.Drawing.Point(0, 0);
            this.poskuDipSubmitListForm1.MenuID = ((long)(0));
            this.poskuDipSubmitListForm1.Name = "poskuDipSubmitListForm1";
            this.poskuDipSubmitListForm1.NextForm = null;
            this.poskuDipSubmitListForm1.ParentForm = null;
            this.poskuDipSubmitListForm1.PrevForm = null;
            this.poskuDipSubmitListForm1.RowChangeAutoSave = true;
            this.poskuDipSubmitListForm1.ShowMultiCheck = false;
            this.poskuDipSubmitListForm1.SideProgramID = null;
            this.poskuDipSubmitListForm1.Size = new System.Drawing.Size(796, 215);
            this.PlatetoolTipController.SetSuperTip(this.poskuDipSubmitListForm1, null);
            this.poskuDipSubmitListForm1.TabControls = null;
            this.poskuDipSubmitListForm1.TabIndex = 0;
            this.poskuDipSubmitListForm1.TabPage = null;
            // 
            // xtraTabPage7
            // 
            this.xtraTabPage7.Controls.Add(this.poskuTestStatusListForm1);
            this.xtraTabPage7.Name = "xtraTabPage7";
            this.xtraTabPage7.Size = new System.Drawing.Size(796, 215);
            this.xtraTabPage7.Text = "TestStatus";
            // 
            // poskuTestStatusListForm1
            // 
            this.poskuTestStatusListForm1.AllowAddRow = true;
            this.poskuTestStatusListForm1.AutoOpenDetailForm = false;
            this.poskuTestStatusListForm1.DataContext = null;
            this.poskuTestStatusListForm1.DataSource = null;
            this.poskuTestStatusListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poskuTestStatusListForm1.EditorTypeName = null;
            this.poskuTestStatusListForm1.FileID = null;
            this.poskuTestStatusListForm1.FirstForm = null;
            this.poskuTestStatusListForm1.FormName = "POSKUTestStatusListForm";
            this.poskuTestStatusListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poskuTestStatusListForm1.FormTitle = "PH.POPC.UI.POSKUTestStatusListForm";
            this.poskuTestStatusListForm1.IsCancelList = false;
            this.poskuTestStatusListForm1.IsShowPivotTable = false;
            this.poskuTestStatusListForm1.LayoutData = null;
            this.poskuTestStatusListForm1.LayoutName = null;
            this.poskuTestStatusListForm1.ListForm = null;
            this.poskuTestStatusListForm1.Location = new System.Drawing.Point(0, 0);
            this.poskuTestStatusListForm1.MenuID = ((long)(0));
            this.poskuTestStatusListForm1.Name = "poskuTestStatusListForm1";
            this.poskuTestStatusListForm1.NextForm = null;
            this.poskuTestStatusListForm1.ParentForm = null;
            this.poskuTestStatusListForm1.PrevForm = null;
            this.poskuTestStatusListForm1.RowChangeAutoSave = true;
            this.poskuTestStatusListForm1.ShowMultiCheck = false;
            this.poskuTestStatusListForm1.SideProgramID = null;
            this.poskuTestStatusListForm1.Size = new System.Drawing.Size(796, 215);
            this.PlatetoolTipController.SetSuperTip(this.poskuTestStatusListForm1, null);
            this.poskuTestStatusListForm1.TabControls = null;
            this.poskuTestStatusListForm1.TabIndex = 0;
            this.poskuTestStatusListForm1.TabPage = null;
            // 
            // poskuBulkSubmissionListForm1
            // 
            this.poskuBulkSubmissionListForm1.AllowAddRow = true;
            this.poskuBulkSubmissionListForm1.AutoOpenDetailForm = false;
            this.poskuBulkSubmissionListForm1.DataContext = null;
            this.poskuBulkSubmissionListForm1.DataSource = null;
            this.poskuBulkSubmissionListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poskuBulkSubmissionListForm1.EditorTypeName = null;
            this.poskuBulkSubmissionListForm1.FileID = null;
            this.poskuBulkSubmissionListForm1.FirstForm = null;
            this.poskuBulkSubmissionListForm1.FormName = "POSKUBulkSubmissionListForm";
            this.poskuBulkSubmissionListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poskuBulkSubmissionListForm1.FormTitle = "PH.POPC.UI.POSKUBulkSubmissionListForm";
            this.poskuBulkSubmissionListForm1.IsCancelList = false;
            this.poskuBulkSubmissionListForm1.IsShowPivotTable = false;
            this.poskuBulkSubmissionListForm1.LayoutData = null;
            this.poskuBulkSubmissionListForm1.LayoutName = null;
            this.poskuBulkSubmissionListForm1.ListForm = null;
            this.poskuBulkSubmissionListForm1.Location = new System.Drawing.Point(0, 0);
            this.poskuBulkSubmissionListForm1.MenuID = ((long)(0));
            this.poskuBulkSubmissionListForm1.Name = "poskuBulkSubmissionListForm1";
            this.poskuBulkSubmissionListForm1.NextForm = null;
            this.poskuBulkSubmissionListForm1.ParentForm = null;
            this.poskuBulkSubmissionListForm1.PrevForm = null;
            this.poskuBulkSubmissionListForm1.RowChangeAutoSave = true;
            this.poskuBulkSubmissionListForm1.ShowMultiCheck = false;
            this.poskuBulkSubmissionListForm1.SideProgramID = null;
            this.poskuBulkSubmissionListForm1.Size = new System.Drawing.Size(796, 215);
            this.PlatetoolTipController.SetSuperTip(this.poskuBulkSubmissionListForm1, null);
            this.poskuBulkSubmissionListForm1.TabControls = null;
            this.poskuBulkSubmissionListForm1.TabIndex = 0;
            this.poskuBulkSubmissionListForm1.TabPage = null;
            // 
            // tpMatrix
            // 
            this.tpMatrix.Controls.Add(this.poColorSizeSplitListForm1);
            this.tpMatrix.Name = "tpMatrix";
            this.tpMatrix.Size = new System.Drawing.Size(953, 284);
            this.tpMatrix.Text = "Wire && Bone Matrix";
            // 
            // poColorSizeSplitListForm1
            // 
            this.poColorSizeSplitListForm1.AllowAddRow = true;
            this.poColorSizeSplitListForm1.AutoOpenDetailForm = false;
            this.poColorSizeSplitListForm1.DataContext = null;
            this.poColorSizeSplitListForm1.DataSource = null;
            this.poColorSizeSplitListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poColorSizeSplitListForm1.EditorTypeName = null;
            this.poColorSizeSplitListForm1.FileID = null;
            this.poColorSizeSplitListForm1.FirstForm = null;
            this.poColorSizeSplitListForm1.FormName = "POColorSizeSplitListForm";
            this.poColorSizeSplitListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poColorSizeSplitListForm1.FormTitle = "PH.POPC.UI.NewPO.POColorSizeSplitListForm";
            this.poColorSizeSplitListForm1.IsCancelList = false;
            this.poColorSizeSplitListForm1.IsShowPivotTable = false;
            this.poColorSizeSplitListForm1.LayoutData = null;
            this.poColorSizeSplitListForm1.LayoutName = null;
            this.poColorSizeSplitListForm1.ListForm = null;
            this.poColorSizeSplitListForm1.Location = new System.Drawing.Point(0, 0);
            this.poColorSizeSplitListForm1.MenuID = ((long)(0));
            this.poColorSizeSplitListForm1.Name = "poColorSizeSplitListForm1";
            this.poColorSizeSplitListForm1.NextForm = null;
            this.poColorSizeSplitListForm1.ParentForm = null;
            this.poColorSizeSplitListForm1.PrevForm = null;
            this.poColorSizeSplitListForm1.RowChangeAutoSave = true;
            this.poColorSizeSplitListForm1.ShowMultiCheck = false;
            this.poColorSizeSplitListForm1.SideProgramID = null;
            this.poColorSizeSplitListForm1.Size = new System.Drawing.Size(953, 284);
            this.PlatetoolTipController.SetSuperTip(this.poColorSizeSplitListForm1, null);
            this.poColorSizeSplitListForm1.TabControls = null;
            this.poColorSizeSplitListForm1.TabIndex = 0;
            this.poColorSizeSplitListForm1.TabPage = null;
            // 
            // POColorSizeDetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POColorSizeDetailDetailForm";
            this.Size = new System.Drawing.Size(966, 603);
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
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ItemCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_OrderLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PONO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Company.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Version.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Comb_ColorCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SizeCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_FitCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.Cobo_ColorShadeLable.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Price.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Qty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).EndInit();
            this.xtraTabControl2.ResumeLayout(false);
            this.xtraTabPage5.ResumeLayout(false);
            this.xtraTabPage5.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustOrderNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierPOQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_LC.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Remark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.multiPriceCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.garmentColorTextEdit.Properties)).EndInit();
            this.xtraTabPage8.ResumeLayout(false);
            this.xtraTabPage8.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.supplierLable.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_IntelSizeDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierNameLable.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierReference.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierOutstandingQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Amount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Week.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Difference.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_ActualOvershipQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_GoodsInwardsDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_GoodsInwardsDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.overshipQtyLable.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_HDOETA.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_HDOETA.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_PHOutstandingQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUOM.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_PHBALAMount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.overshipPercentLable.Properties)).EndInit();
            this.xtraTabPage2.ResumeLayout(false);
            this.xtraTabPage4.ResumeLayout(false);
            this.xtraTabPage7.ResumeLayout(false);
            this.tpMatrix.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        private Label multiPriceLabel;
        private Label garmentColorLabel;
        protected Label lCLable;
        protected TextEdit txtD_LC;
        protected TextEdit txtD_Remark;
        protected Label remarkLable;
        private DevExpress.XtraTab.XtraTabPage tpMatrix;
        private POColorSizeSplitListForm poColorSizeSplitListForm1;
        protected Label supplierPOQtyLable;
        protected SpinEdit spin_SupplierPOQty;
        public Label custStyleNoLable;
        public Label custOrderNoLable;
        public TextEdit txtD_CustOrderNo;
        public TextEdit txtD_CustStyleNo;
    }
}
