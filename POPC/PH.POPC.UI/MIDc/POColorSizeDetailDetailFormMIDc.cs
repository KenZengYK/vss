/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.PODetailDDetailForm.cs$   
* $Author: PH.IT.water $  
* $Date: 2008/5/19 下午 03:14:23 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using PH.POPC.BO;
namespace PH.POPC.UI
{
    public class POColorSizeDetailDetailFormMIDc : PH.Platform.UI.CS.UI2.ParentChildForm
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
        private DevExpress.XtraTab.XtraTabPage xtraTabPage3;
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
        private TextEdit suppFitCodeTextEdit;
        private TextEdit suppSizeCodeTextEdit;
        protected SpinEdit spin_SupplierOutstandingQty;
        protected Label suppAmountLable;
        protected TextEdit textEdit2;
        protected Label supplierOutstandingQtyLable;
        protected Label supplierPOQtyLable;
        protected SpinEdit spin_SupplierPOQty;
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
        public Label custStyleNoLable;
        public Label custOrderNoLable;
        public TextEdit txtD_CustOrderNo;
        public TextEdit txtD_CustStyleNo;
        protected Label lCLable;
        protected TextEdit txtD_LC;
        protected Label supplierReferenceLable;
        protected TextEdit txtD_SupplierReference;
        protected TextEdit txtD_Remark;
        protected Label remarkLable;
        private ButtonEdit buttonEditColorCode;


        private PictureEdit pictureEdit2;
        // private ColorStdNotepadListForm colorStdNotepadListForm1;
        #endregion

        private void InitializeComponent()
        {
            System.Windows.Forms.Label multiPriceLabel;
            System.Windows.Forms.Label garmentColorLabel;
            System.Windows.Forms.Label suppFitCodeLabel;
            System.Windows.Forms.Label suppSizeCodeLabel;
            this.pOVersionLable = new System.Windows.Forms.Label();
            this.txtD_ItemCode = new DevExpress.XtraEditors.TextEdit();
            this.txtD_OrderLine = new DevExpress.XtraEditors.TextEdit();
            this.orderLineLable = new System.Windows.Forms.Label();
            this.txtD_PONO = new DevExpress.XtraEditors.TextEdit();
            this.pONOLable = new System.Windows.Forms.Label();
            this.txtD_Company = new DevExpress.XtraEditors.TextEdit();
            this.companyLable = new System.Windows.Forms.Label();
            this.txtD_Version = new DevExpress.XtraEditors.TextEdit();
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
            this.buttonEditColorCode = new DevExpress.XtraEditors.ButtonEdit();
            this.multiPriceCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.garmentColorTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.suppFitCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.suppSizeCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.xtraTabPage3 = new DevExpress.XtraTab.XtraTabPage();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.xtraTabPage8 = new DevExpress.XtraTab.XtraTabPage();
            this.supplierLable = new DevExpress.XtraEditors.TextEdit();
            this.label12 = new System.Windows.Forms.Label();
            this.txtD_IntelSizeDesc = new DevExpress.XtraEditors.TextEdit();
            this.supplierNameLable = new DevExpress.XtraEditors.TextEdit();
            this.intelSizeLable = new System.Windows.Forms.Label();
            this.lable_SupplierName = new System.Windows.Forms.Label();
            this.custStyleNoLable = new System.Windows.Forms.Label();
            this.custOrderNoLable = new System.Windows.Forms.Label();
            this.txtD_CustOrderNo = new DevExpress.XtraEditors.TextEdit();
            this.txtD_CustStyleNo = new DevExpress.XtraEditors.TextEdit();
            this.lCLable = new System.Windows.Forms.Label();
            this.txtD_LC = new DevExpress.XtraEditors.TextEdit();
            this.supplierReferenceLable = new System.Windows.Forms.Label();
            this.txtD_SupplierReference = new DevExpress.XtraEditors.TextEdit();
            this.txtD_Remark = new DevExpress.XtraEditors.TextEdit();
            this.remarkLable = new System.Windows.Forms.Label();
            this.spin_SupplierOutstandingQty = new DevExpress.XtraEditors.SpinEdit();
            this.suppAmountLable = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.supplierOutstandingQtyLable = new System.Windows.Forms.Label();
            this.supplierPOQtyLable = new System.Windows.Forms.Label();
            this.spin_SupplierPOQty = new DevExpress.XtraEditors.SpinEdit();
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
            this.poskuColorStdListForm1 = new PH.POPC.UI.POSKUColorStdListForm();
            this.xtraTabPage4 = new DevExpress.XtraTab.XtraTabPage();
            this.poskuDipSubmitListForm1 = new PH.POPC.UI.POSKUDipSubmitListForm();
            this.xtraTabPage7 = new DevExpress.XtraTab.XtraTabPage();
            this.poskuTestStatusListForm1 = new PH.POPC.UI.POSKUTestStatusListForm();
            this.poskuBulkSubmissionListForm1 = new PH.POPC.UI.POSKUBulkSubmissionListForm();
            multiPriceLabel = new System.Windows.Forms.Label();
            garmentColorLabel = new System.Windows.Forms.Label();
            suppFitCodeLabel = new System.Windows.Forms.Label();
            suppSizeCodeLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SizeCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_FitCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.Cobo_ColorShadeLable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Price.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Qty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl2)).BeginInit();
            this.xtraTabControl2.SuspendLayout();
            this.xtraTabPage5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.buttonEditColorCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.multiPriceCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.garmentColorTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppFitCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppSizeCodeTextEdit.Properties)).BeginInit();
            this.xtraTabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).BeginInit();
            this.xtraTabPage8.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.supplierLable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_IntelSizeDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierNameLable.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustOrderNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNo.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_LC.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierReference.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Remark.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierOutstandingQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierPOQty.Properties)).BeginInit();
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
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 305);
            this.splitterControl1.Size = new System.Drawing.Size(966, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.xtraTabControl2);
            this.headerTitleBar.Size = new System.Drawing.Size(966, 279);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.xtraTabControl2, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 311);
            this.panelControl1.Size = new System.Drawing.Size(966, 292);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.poskuBulkSubmissionListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(953, 256);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(962, 288);
            this.xtraTabControl1.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage2,
            this.xtraTabPage4,
            this.xtraTabPage7});
            this.xtraTabControl1.Text = "ColorStdNotepad";
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
            multiPriceLabel.AutoSize = true;
            multiPriceLabel.Location = new System.Drawing.Point(467, 78);
            multiPriceLabel.Name = "multiPriceLabel";
            multiPriceLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(multiPriceLabel, null);
            multiPriceLabel.TabIndex = 343;
            multiPriceLabel.Text = "Multi Price:";
            multiPriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // garmentColorLabel
            // 
            garmentColorLabel.AutoSize = true;
            garmentColorLabel.Location = new System.Drawing.Point(244, 76);
            garmentColorLabel.Name = "garmentColorLabel";
            garmentColorLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(garmentColorLabel, null);
            garmentColorLabel.TabIndex = 342;
            garmentColorLabel.Text = "Garment Color:";
            garmentColorLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // suppFitCodeLabel
            // 
            suppFitCodeLabel.AutoSize = true;
            suppFitCodeLabel.Location = new System.Drawing.Point(244, 122);
            suppFitCodeLabel.Name = "suppFitCodeLabel";
            suppFitCodeLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(suppFitCodeLabel, null);
            suppFitCodeLabel.TabIndex = 339;
            suppFitCodeLabel.Text = "Supp Fit Code:";
            suppFitCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // suppSizeCodeLabel
            // 
            suppSizeCodeLabel.AutoSize = true;
            suppSizeCodeLabel.Location = new System.Drawing.Point(238, 99);
            suppSizeCodeLabel.Name = "suppSizeCodeLabel";
            suppSizeCodeLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(suppSizeCodeLabel, null);
            suppSizeCodeLabel.TabIndex = 338;
            suppSizeCodeLabel.Text = "Supp Size Code:";
            suppSizeCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pOVersionLable
            // 
            this.pOVersionLable.AutoSize = true;
            this.pOVersionLable.Location = new System.Drawing.Point(31, 11);
            this.pOVersionLable.Name = "pOVersionLable";
            this.pOVersionLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.pOVersionLable, null);
            this.pOVersionLable.TabIndex = 199;
            this.pOVersionLable.Text = "Version";
            this.pOVersionLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.orderLineLable.Location = new System.Drawing.Point(19, 80);
            this.orderLineLable.Name = "orderLineLable";
            this.orderLineLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderLineLable, null);
            this.orderLineLable.TabIndex = 203;
            this.orderLineLable.Text = "OrderLine";
            this.orderLineLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.pONOLable.Location = new System.Drawing.Point(43, 57);
            this.pONOLable.Name = "pONOLable";
            this.pONOLable.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.pONOLable, null);
            this.pONOLable.TabIndex = 202;
            this.pONOLable.Text = "PO NO";
            this.pONOLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.companyLable.Location = new System.Drawing.Point(31, 34);
            this.companyLable.Name = "companyLable";
            this.companyLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.companyLable, null);
            this.companyLable.TabIndex = 201;
            this.companyLable.Text = "Company";
            this.companyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            // itemCodeLable
            // 
            this.itemCodeLable.AutoSize = true;
            this.itemCodeLable.Location = new System.Drawing.Point(25, 103);
            this.itemCodeLable.Name = "itemCodeLable";
            this.itemCodeLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.itemCodeLable, null);
            this.itemCodeLable.TabIndex = 205;
            this.itemCodeLable.Text = "Item Nr.";
            this.itemCodeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.fitCodeLable.Location = new System.Drawing.Point(310, 53);
            this.fitCodeLable.Name = "fitCodeLable";
            this.fitCodeLable.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(this.fitCodeLable, null);
            this.fitCodeLable.TabIndex = 227;
            this.fitCodeLable.Text = "Cup";
            this.fitCodeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // priceLable
            // 
            this.priceLable.AutoSize = true;
            this.priceLable.Location = new System.Drawing.Point(497, 47);
            this.priceLable.Name = "priceLable";
            this.priceLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.priceLable, null);
            this.priceLable.TabIndex = 219;
            this.priceLable.Text = "U/Price";
            this.priceLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // qtyLable
            // 
            this.qtyLable.AutoSize = true;
            this.qtyLable.Location = new System.Drawing.Point(485, 16);
            this.qtyLable.Name = "qtyLable";
            this.qtyLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.qtyLable, null);
            this.qtyLable.TabIndex = 218;
            this.qtyLable.Text = "PH PO Qty";
            this.qtyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.Cobo_ColorShadeLable.Properties.MaxLength = 30;
            this.Cobo_ColorShadeLable.Properties.KeyDown += new System.Windows.Forms.KeyEventHandler(this.Comb_ColorShade_Properties_KeyDown);
            this.Cobo_ColorShadeLable.Size = new System.Drawing.Size(98, 21);
            this.Cobo_ColorShadeLable.TabIndex = 9;
            this.Cobo_ColorShadeLable.Tag = "ColorShade";
            // 
            // sizeCodeLable
            // 
            this.sizeCodeLable.AutoSize = true;
            this.sizeCodeLable.Location = new System.Drawing.Point(304, 30);
            this.sizeCodeLable.Name = "sizeCodeLable";
            this.sizeCodeLable.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.sizeCodeLable, null);
            this.sizeCodeLable.TabIndex = 216;
            this.sizeCodeLable.Text = "Size";
            this.sizeCodeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // spin_Price
            // 
            this.spin_Price.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Price.Location = new System.Drawing.Point(563, 44);
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
            this.colorShadeLable.Location = new System.Drawing.Point(7, 126);
            this.colorShadeLable.Name = "colorShadeLable";
            this.colorShadeLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.colorShadeLable, null);
            this.colorShadeLable.TabIndex = 215;
            this.colorShadeLable.Text = "Color Shade";
            this.colorShadeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.colorCodeLable.Location = new System.Drawing.Point(298, 7);
            this.colorCodeLable.Name = "colorCodeLable";
            this.colorCodeLable.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.colorCodeLable, null);
            this.colorCodeLable.TabIndex = 213;
            this.colorCodeLable.Text = "Color";
            this.colorCodeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit1
            // 
            this.textEdit1.Location = new System.Drawing.Point(631, 43);
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
            this.xtraTabControl2.Size = new System.Drawing.Size(962, 256);
            this.xtraTabControl2.TabIndex = 326;
            this.xtraTabControl2.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.xtraTabPage5,
            this.xtraTabPage3,
            this.xtraTabPage8});
            this.xtraTabControl2.Text = "Photo1";
            this.xtraTabControl2.SelectedPageChanging += new DevExpress.XtraTab.TabPageChangingEventHandler(this.xtraTabControl2_SelectedPageChanging);
            // 
            // xtraTabPage5
            // 
            this.xtraTabPage5.AutoScroll = true;
            this.xtraTabPage5.Controls.Add(this.buttonEditColorCode);
            this.xtraTabPage5.Controls.Add(multiPriceLabel);
            this.xtraTabPage5.Controls.Add(this.multiPriceCheckEdit);
            this.xtraTabPage5.Controls.Add(garmentColorLabel);
            this.xtraTabPage5.Controls.Add(this.garmentColorTextEdit);
            this.xtraTabPage5.Controls.Add(suppFitCodeLabel);
            this.xtraTabPage5.Controls.Add(this.suppFitCodeTextEdit);
            this.xtraTabPage5.Controls.Add(suppSizeCodeLabel);
            this.xtraTabPage5.Controls.Add(this.suppSizeCodeTextEdit);
            this.xtraTabPage5.Controls.Add(this.pOVersionLable);
            this.xtraTabPage5.Controls.Add(this.colorShadeLable);
            this.xtraTabPage5.Controls.Add(this.spin_Price);
            this.xtraTabPage5.Controls.Add(this.spin_Qty);
            this.xtraTabPage5.Controls.Add(this.itemCodeLable);
            this.xtraTabPage5.Controls.Add(this.txtD_SizeCode);
            this.xtraTabPage5.Controls.Add(this.colorCodeLable);
            this.xtraTabPage5.Controls.Add(this.sizeCodeLable);
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
            this.xtraTabPage5.Size = new System.Drawing.Size(953, 224);
            this.xtraTabPage5.Text = "BasicInfo";
            // 
            // buttonEditColorCode
            // 
            this.buttonEditColorCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorCode", true));
            this.buttonEditColorCode.Location = new System.Drawing.Point(346, 3);
            this.buttonEditColorCode.Name = "buttonEditColorCode";
            this.buttonEditColorCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, false, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.buttonEditColorCode.Size = new System.Drawing.Size(100, 21);
            this.buttonEditColorCode.TabIndex = 346;
            this.buttonEditColorCode.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.buttonEditColorCode_ButtonClick);
            // 
            // multiPriceCheckEdit
            // 
            this.multiPriceCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MultiPrice", true));
            this.multiPriceCheckEdit.Location = new System.Drawing.Point(563, 75);
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
            // suppFitCodeTextEdit
            // 
            this.suppFitCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppFitCode", true));
            this.suppFitCodeTextEdit.Location = new System.Drawing.Point(346, 118);
            this.suppFitCodeTextEdit.Name = "suppFitCodeTextEdit";
            this.suppFitCodeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.suppFitCodeTextEdit.TabIndex = 341;
            // 
            // suppSizeCodeTextEdit
            // 
            this.suppSizeCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppSizeCode", true));
            this.suppSizeCodeTextEdit.Location = new System.Drawing.Point(346, 95);
            this.suppSizeCodeTextEdit.Name = "suppSizeCodeTextEdit";
            this.suppSizeCodeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.suppSizeCodeTextEdit.TabIndex = 340;
            // 
            // xtraTabPage3
            // 
            this.xtraTabPage3.Controls.Add(this.pictureEdit2);
            this.xtraTabPage3.Name = "xtraTabPage3";
            this.xtraTabPage3.Size = new System.Drawing.Size(796, 224);
            this.xtraTabPage3.Text = "SKU_Photo";
            // 
            // pictureEdit2
            // 
            this.pictureEdit2.Dock = System.Windows.Forms.DockStyle.Left;
            this.pictureEdit2.Location = new System.Drawing.Point(0, 0);
            this.pictureEdit2.Name = "pictureEdit2";
            this.pictureEdit2.Properties.AllowFocused = false;
            this.pictureEdit2.Properties.ShowMenu = false;
            this.pictureEdit2.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.pictureEdit2.Size = new System.Drawing.Size(451, 224);
            this.pictureEdit2.TabIndex = 2;
            this.pictureEdit2.Tag = "";
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
            this.xtraTabPage8.Controls.Add(this.custStyleNoLable);
            this.xtraTabPage8.Controls.Add(this.custOrderNoLable);
            this.xtraTabPage8.Controls.Add(this.txtD_CustOrderNo);
            this.xtraTabPage8.Controls.Add(this.txtD_CustStyleNo);
            this.xtraTabPage8.Controls.Add(this.lCLable);
            this.xtraTabPage8.Controls.Add(this.txtD_LC);
            this.xtraTabPage8.Controls.Add(this.supplierReferenceLable);
            this.xtraTabPage8.Controls.Add(this.txtD_SupplierReference);
            this.xtraTabPage8.Controls.Add(this.txtD_Remark);
            this.xtraTabPage8.Controls.Add(this.remarkLable);
            this.xtraTabPage8.Controls.Add(this.spin_SupplierOutstandingQty);
            this.xtraTabPage8.Controls.Add(this.suppAmountLable);
            this.xtraTabPage8.Controls.Add(this.textEdit2);
            this.xtraTabPage8.Controls.Add(this.supplierOutstandingQtyLable);
            this.xtraTabPage8.Controls.Add(this.supplierPOQtyLable);
            this.xtraTabPage8.Controls.Add(this.spin_SupplierPOQty);
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
            this.xtraTabPage8.PageVisible = false;
            this.xtraTabPage8.Size = new System.Drawing.Size(796, 224);
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
            this.label12.Location = new System.Drawing.Point(343, 116);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.label12, null);
            this.label12.TabIndex = 359;
            this.label12.Text = "Supplier ";
            this.label12.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_IntelSizeDesc
            // 
            this.txtD_IntelSizeDesc.Location = new System.Drawing.Point(443, 180);
            this.txtD_IntelSizeDesc.Name = "txtD_IntelSizeDesc";
            this.txtD_IntelSizeDesc.Size = new System.Drawing.Size(98, 21);
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
            this.intelSizeLable.Location = new System.Drawing.Point(370, 182);
            this.intelSizeLable.Name = "intelSizeLable";
            this.intelSizeLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.intelSizeLable, null);
            this.intelSizeLable.TabIndex = 347;
            this.intelSizeLable.Text = "Intel Size";
            // 
            // lable_SupplierName
            // 
            this.lable_SupplierName.AutoSize = true;
            this.lable_SupplierName.Location = new System.Drawing.Point(319, 137);
            this.lable_SupplierName.Name = "lable_SupplierName";
            this.lable_SupplierName.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.lable_SupplierName, null);
            this.lable_SupplierName.TabIndex = 357;
            this.lable_SupplierName.Text = "Supplier Name";
            this.lable_SupplierName.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // custStyleNoLable
            // 
            this.custStyleNoLable.AutoSize = true;
            this.custStyleNoLable.Location = new System.Drawing.Point(542, 134);
            this.custStyleNoLable.Name = "custStyleNoLable";
            this.custStyleNoLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.custStyleNoLable, null);
            this.custStyleNoLable.TabIndex = 355;
            this.custStyleNoLable.Text = "Cust Style No";
            this.custStyleNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // custOrderNoLable
            // 
            this.custOrderNoLable.AutoSize = true;
            this.custOrderNoLable.Location = new System.Drawing.Point(542, 112);
            this.custOrderNoLable.Name = "custOrderNoLable";
            this.custOrderNoLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.custOrderNoLable, null);
            this.custOrderNoLable.TabIndex = 356;
            this.custOrderNoLable.Text = "Cust Order No";
            this.custOrderNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_CustOrderNo
            // 
            this.txtD_CustOrderNo.Location = new System.Drawing.Point(635, 109);
            this.txtD_CustOrderNo.Name = "txtD_CustOrderNo";
            this.txtD_CustOrderNo.Size = new System.Drawing.Size(122, 21);
            this.txtD_CustOrderNo.TabIndex = 354;
            this.txtD_CustOrderNo.Tag = "CustOrderNo";
            // 
            // txtD_CustStyleNo
            // 
            this.txtD_CustStyleNo.Location = new System.Drawing.Point(635, 131);
            this.txtD_CustStyleNo.Name = "txtD_CustStyleNo";
            this.txtD_CustStyleNo.Size = new System.Drawing.Size(122, 21);
            this.txtD_CustStyleNo.TabIndex = 353;
            this.txtD_CustStyleNo.Tag = "CustStyleNo";
            // 
            // lCLable
            // 
            this.lCLable.AutoSize = true;
            this.lCLable.Location = new System.Drawing.Point(124, 182);
            this.lCLable.Name = "lCLable";
            this.lCLable.Size = new System.Drawing.Size(17, 12);
            this.PlatetoolTipController.SetSuperTip(this.lCLable, null);
            this.lCLable.TabIndex = 352;
            this.lCLable.Text = "LC";
            this.lCLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_LC
            // 
            this.txtD_LC.Location = new System.Drawing.Point(151, 180);
            this.txtD_LC.Name = "txtD_LC";
            this.txtD_LC.Size = new System.Drawing.Size(202, 21);
            this.txtD_LC.TabIndex = 351;
            this.txtD_LC.Tag = "LC";
            // 
            // supplierReferenceLable
            // 
            this.supplierReferenceLable.AutoSize = true;
            this.supplierReferenceLable.Location = new System.Drawing.Point(323, 157);
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
            // txtD_Remark
            // 
            this.txtD_Remark.Location = new System.Drawing.Point(151, 203);
            this.txtD_Remark.Name = "txtD_Remark";
            this.txtD_Remark.Size = new System.Drawing.Size(202, 21);
            this.txtD_Remark.TabIndex = 346;
            this.txtD_Remark.Tag = "Remark";
            // 
            // remarkLable
            // 
            this.remarkLable.AutoSize = true;
            this.remarkLable.Location = new System.Drawing.Point(100, 205);
            this.remarkLable.Name = "remarkLable";
            this.remarkLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.remarkLable, null);
            this.remarkLable.TabIndex = 348;
            this.remarkLable.Text = "Remark";
            this.remarkLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.suppAmountLable.Location = new System.Drawing.Point(70, 159);
            this.suppAmountLable.Name = "suppAmountLable";
            this.suppAmountLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppAmountLable, null);
            this.suppAmountLable.TabIndex = 342;
            this.suppAmountLable.Text = "Supp Amount";
            this.suppAmountLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit2
            // 
            this.textEdit2.Location = new System.Drawing.Point(279, 151);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Properties.ReadOnly = true;
            this.textEdit2.Size = new System.Drawing.Size(30, 21);
            this.textEdit2.TabIndex = 344;
            this.textEdit2.Tag = "Currency";
            // 
            // supplierOutstandingQtyLable
            // 
            this.supplierOutstandingQtyLable.AutoSize = true;
            this.supplierOutstandingQtyLable.Location = new System.Drawing.Point(10, 136);
            this.supplierOutstandingQtyLable.Name = "supplierOutstandingQtyLable";
            this.supplierOutstandingQtyLable.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierOutstandingQtyLable, null);
            this.supplierOutstandingQtyLable.TabIndex = 340;
            this.supplierOutstandingQtyLable.Text = "Supp. Outstanding Qty";
            this.supplierOutstandingQtyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // supplierPOQtyLable
            // 
            this.supplierPOQtyLable.AutoSize = true;
            this.supplierPOQtyLable.Location = new System.Drawing.Point(46, 113);
            this.supplierPOQtyLable.Name = "supplierPOQtyLable";
            this.supplierPOQtyLable.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierPOQtyLable, null);
            this.supplierPOQtyLable.TabIndex = 341;
            this.supplierPOQtyLable.Text = "Supplier PO Qty";
            this.supplierPOQtyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // spin_SupplierPOQty
            // 
            this.spin_SupplierPOQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SupplierPOQty.Enabled = false;
            this.spin_SupplierPOQty.Location = new System.Drawing.Point(151, 111);
            this.spin_SupplierPOQty.Name = "spin_SupplierPOQty";
            this.spin_SupplierPOQty.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.spin_SupplierPOQty.Properties.DisplayFormat.FormatString = "{0:0.00}";
            this.spin_SupplierPOQty.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.spin_SupplierPOQty.Properties.IsFloatValue = false;
            this.spin_SupplierPOQty.Properties.Mask.EditMask = "N00";
            this.spin_SupplierPOQty.Properties.ReadOnly = true;
            this.spin_SupplierPOQty.Size = new System.Drawing.Size(107, 21);
            this.spin_SupplierPOQty.TabIndex = 339;
            this.spin_SupplierPOQty.Tag = "SupplierPOQty";
            // 
            // spin_Amount
            // 
            this.spin_Amount.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Amount.Location = new System.Drawing.Point(151, 157);
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
            this.deliveryDateLable.Location = new System.Drawing.Point(289, 88);
            this.deliveryDateLable.Name = "deliveryDateLable";
            this.deliveryDateLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.deliveryDateLable, null);
            this.deliveryDateLable.TabIndex = 335;
            this.deliveryDateLable.Text = "Delivery Date(ETD)";
            this.deliveryDateLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.weekLable.Location = new System.Drawing.Point(596, 90);
            this.weekLable.Name = "weekLable";
            this.weekLable.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.weekLable, null);
            this.weekLable.TabIndex = 337;
            this.weekLable.Text = "Week";
            this.weekLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Week
            // 
            this.txtD_Week.Location = new System.Drawing.Point(646, 85);
            this.txtD_Week.Name = "txtD_Week";
            this.txtD_Week.Size = new System.Drawing.Size(25, 21);
            this.txtD_Week.TabIndex = 336;
            this.txtD_Week.Tag = "Week";
            // 
            // totalReceivedQtyLable
            // 
            this.totalReceivedQtyLable.AutoSize = true;
            this.totalReceivedQtyLable.Location = new System.Drawing.Point(34, 90);
            this.totalReceivedQtyLable.Name = "totalReceivedQtyLable";
            this.totalReceivedQtyLable.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(this.totalReceivedQtyLable, null);
            this.totalReceivedQtyLable.TabIndex = 333;
            this.totalReceivedQtyLable.Text = "Total ReceivedQty";
            this.totalReceivedQtyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.label7.Location = new System.Drawing.Point(325, 22);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.label7, null);
            this.label7.TabIndex = 317;
            this.label7.Text = "Overship Qty";
            this.label7.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.differenceLable.Location = new System.Drawing.Point(76, 44);
            this.differenceLable.Name = "differenceLable";
            this.differenceLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.differenceLable, null);
            this.differenceLable.TabIndex = 329;
            this.differenceLable.Text = "Difference";
            this.differenceLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // goodsInwardsDateLable
            // 
            this.goodsInwardsDateLable.AutoSize = true;
            this.goodsInwardsDateLable.Location = new System.Drawing.Point(28, 67);
            this.goodsInwardsDateLable.Name = "goodsInwardsDateLable";
            this.goodsInwardsDateLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.goodsInwardsDateLable, null);
            this.goodsInwardsDateLable.TabIndex = 328;
            this.goodsInwardsDateLable.Text = "Goods Inwards Date";
            this.goodsInwardsDateLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.pHBALAMountLable.Location = new System.Drawing.Point(542, 44);
            this.pHBALAMountLable.Name = "pHBALAMountLable";
            this.pHBALAMountLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHBALAMountLable, null);
            this.pHBALAMountLable.TabIndex = 331;
            this.pHBALAMountLable.Text = "PH BAL AMount";
            this.pHBALAMountLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.hDOETALable.Location = new System.Drawing.Point(94, 21);
            this.hDOETALable.Name = "hDOETALable";
            this.hDOETALable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.hDOETALable, null);
            this.hDOETALable.TabIndex = 327;
            this.hDOETALable.Text = "HDO ETA";
            this.hDOETALable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pHOutstandingQtyLable
            // 
            this.pHOutstandingQtyLable.AutoSize = true;
            this.pHOutstandingQtyLable.Location = new System.Drawing.Point(512, 21);
            this.pHOutstandingQtyLable.Name = "pHOutstandingQtyLable";
            this.pHOutstandingQtyLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHOutstandingQtyLable, null);
            this.pHOutstandingQtyLable.TabIndex = 319;
            this.pHOutstandingQtyLable.Text = "PH Outstanding Qty";
            this.pHOutstandingQtyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.spin_PHOutstandingQty.Size = new System.Drawing.Size(98, 21);
            this.spin_PHOutstandingQty.TabIndex = 318;
            this.spin_PHOutstandingQty.Tag = "PHOutstandingQty";
            // 
            // supplierUOMLabel
            // 
            this.supplierUOMLabel.AutoSize = true;
            this.supplierUOMLabel.Location = new System.Drawing.Point(548, 67);
            this.supplierUOMLabel.Name = "supplierUOMLabel";
            this.supplierUOMLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierUOMLabel, null);
            this.supplierUOMLabel.TabIndex = 323;
            this.supplierUOMLabel.Text = "Supplier UOM";
            this.supplierUOMLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // actualOvershipQtyLable
            // 
            this.actualOvershipQtyLable.AutoSize = true;
            this.actualOvershipQtyLable.Location = new System.Drawing.Point(283, 66);
            this.actualOvershipQtyLable.Name = "actualOvershipQtyLable";
            this.actualOvershipQtyLable.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(this.actualOvershipQtyLable, null);
            this.actualOvershipQtyLable.TabIndex = 320;
            this.actualOvershipQtyLable.Text = "Actual Overship Qty";
            this.actualOvershipQtyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_SupplierUOM
            // 
            this.txtD_SupplierUOM.Location = new System.Drawing.Point(646, 65);
            this.txtD_SupplierUOM.Name = "txtD_SupplierUOM";
            this.txtD_SupplierUOM.Properties.ReadOnly = true;
            this.txtD_SupplierUOM.Size = new System.Drawing.Size(97, 21);
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
            this.spin_PHBALAMount.Size = new System.Drawing.Size(98, 21);
            this.spin_PHBALAMount.TabIndex = 330;
            this.spin_PHBALAMount.Tag = "PHBALAMount";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(301, 44);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.label13, null);
            this.label13.TabIndex = 321;
            this.label13.Text = "Overship Percent";
            this.label13.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
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
            this.xtraTabPage2.Size = new System.Drawing.Size(796, 187);
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
            this.poskuColorStdListForm1.Size = new System.Drawing.Size(796, 187);
            this.PlatetoolTipController.SetSuperTip(this.poskuColorStdListForm1, null);
            this.poskuColorStdListForm1.TabControls = null;
            this.poskuColorStdListForm1.TabIndex = 0;
            this.poskuColorStdListForm1.TabPage = null;
            // 
            // xtraTabPage4
            // 
            this.xtraTabPage4.Controls.Add(this.poskuDipSubmitListForm1);
            this.xtraTabPage4.Name = "xtraTabPage4";
            this.xtraTabPage4.Size = new System.Drawing.Size(796, 187);
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
            this.poskuDipSubmitListForm1.Size = new System.Drawing.Size(796, 187);
            this.PlatetoolTipController.SetSuperTip(this.poskuDipSubmitListForm1, null);
            this.poskuDipSubmitListForm1.TabControls = null;
            this.poskuDipSubmitListForm1.TabIndex = 0;
            this.poskuDipSubmitListForm1.TabPage = null;
            // 
            // xtraTabPage7
            // 
            this.xtraTabPage7.Controls.Add(this.poskuTestStatusListForm1);
            this.xtraTabPage7.Name = "xtraTabPage7";
            this.xtraTabPage7.Size = new System.Drawing.Size(796, 187);
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
            this.poskuTestStatusListForm1.Size = new System.Drawing.Size(796, 187);
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
            this.poskuBulkSubmissionListForm1.Size = new System.Drawing.Size(953, 256);
            this.PlatetoolTipController.SetSuperTip(this.poskuBulkSubmissionListForm1, null);
            this.poskuBulkSubmissionListForm1.TabControls = null;
            this.poskuBulkSubmissionListForm1.TabIndex = 0;
            this.poskuBulkSubmissionListForm1.TabPage = null;
            // 
            // POColorSizeDetailDetailFormMIDc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POColorSizeDetailDetailFormMIDc";
            this.Size = new System.Drawing.Size(966, 603);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.POColorSizeDetailDetailForm_Load);
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
            ((System.ComponentModel.ISupportInitialize)(this.buttonEditColorCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.multiPriceCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.garmentColorTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppFitCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppSizeCodeTextEdit.Properties)).EndInit();
            this.xtraTabPage3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            this.xtraTabPage8.ResumeLayout(false);
            this.xtraTabPage8.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.supplierLable.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_IntelSizeDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierNameLable.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustOrderNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNo.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_LC.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierReference.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Remark.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierOutstandingQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupplierPOQty.Properties)).EndInit();
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
            this.ResumeLayout(false);

        }

        public POColorSizeDetailDetailFormMIDc()
        {
            InitializeComponent();
            this.headerTitleBar.AutoScroll = true;
            this.headerTitleBar.AutoScroll = true;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }
        //public override void EditCurrent()
        //{
        //    base.EditCurrent();
        //    Common.SetFormStatus(this);
        //    EditInit();

        //}

        //public PH.POPC.BO.View_POPC_PUR m_View_POPC_PUR;
        POColorSizeDetail _pOColorSizeDetail = null;
        private string _Supplier = string.Empty;
        private int? _POType;
        private IQueryable<PH.POPC.BO.V_Color> _Color;
        private bool _IsClean = false;

        private System.Data.Linq.EntitySet<PH.POPC.BO.POSKUOperate> GetData(string type)
        {
            System.Data.Linq.EntitySet<PH.POPC.BO.POSKUOperate> data = new System.Data.Linq.EntitySet<POSKUOperate>();
            var aa = (from a in this._pOColorSizeDetail.POSKUOperates
                      where a.HandleType == type
                      select a);
            foreach (var item in aa)
            {
                data.Add(item);
            }
            return data;

        }

        public override void DataBind()
        {
            base.DataBind();
            _pOColorSizeDetail = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            this._Supplier = this._pOColorSizeDetail.PODetail.POHeader.Supplier;
            this._POType = this._pOColorSizeDetail.PODetail.POHeader.POType;
            _pOColorSizeDetail.ItemCode = _pOColorSizeDetail.PODetail.ItemCode;

            this._pOColorSizeDetail.POSKUOperates.Where(p => p.HandleType == PH.POPC.BO.Common.BulkSubmission);

            this.poskuBulkSubmissionListForm1.EditorTypeName = typeof(POSKUBulkSubmissionDetailForm).FullName;
            this.poskuBulkSubmissionListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.BulkSubmission);
            this.poskuBulkSubmissionListForm1.AllowGridEdit = false;

            this.poskuColorStdListForm1.EditorTypeName = typeof(POSKUColorStdDetailForm).FullName;
            this.poskuColorStdListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.ColorStd);
            this.poskuColorStdListForm1.AllowGridEdit = false;

            this.poskuDipSubmitListForm1.EditorTypeName = typeof(POSKUDipSubmitDetailForm).FullName;
            this.poskuDipSubmitListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.DipSubmit);
            this.poskuDipSubmitListForm1.AllowGridEdit = false;

            //this.poskuLotListForm1.EditorTypeName = typeof(POSKULotDetailForm).FullName;
            //this.poskuLotListForm1.BindingSource.DataSource = GetData(Common.Lot);
            //this.poskuLotListForm1.AllowGridEdit = false;

            this.poskuTestStatusListForm1.EditorTypeName = typeof(POSKUTestStatusDetailForm).FullName;
            this.poskuTestStatusListForm1.BindingSource.DataSource = GetData(PH.POPC.BO.Common.TestStatus);
            this.poskuTestStatusListForm1.AllowGridEdit = false;

        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Common.SetFormStatus(this);
            if (this._pOColorSizeDetail.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Read) return;
            this.pictureEdit2.Properties.ShowMenu = true;
            if (this.IsNew)
            {
                this.Cobo_ColorShadeLable.Properties.ReadOnly = false;
                this.buttonEditColorCode.Properties.Buttons[0].Enabled = true ;

                this.txtD_SizeCode.Properties.ReadOnly = false;
                this.txtD_IntelSizeDesc.Properties.ReadOnly = false;
                this.txtD_FitCode.Properties.ReadOnly = false;
                this.spin_Qty.Properties.ReadOnly = false;
                this.txtD_Remark.Properties.ReadOnly = false;

                this.buttonEditColorCode.Properties.ReadOnly = false;

                this.txtD_SizeCode.Properties.ReadOnly = false;
                this.txtD_FitCode.Properties.ReadOnly = false;
            }
            else
            {  
                this.txtD_FitCode.Properties.ReadOnly = true;
                this.buttonEditColorCode.Properties.Buttons[0].Enabled = false;
                this.txtD_Remark.Properties.ReadOnly = false;
                this.spin_Qty.Properties.ReadOnly = false;
            }

        }
        protected override void OnClickSaveAndReturn()
        {

            base.OnClickSaveAndReturn();
            POColorSizeDetailListForm ListForm = this.PrevForm as POColorSizeDetailListForm;
            if (ListForm != null && ListForm._parentPage != null)
            {
                ListForm.m_View_POPC_PUR.LC = this._pOColorSizeDetail.LC;
                ListForm.m_View_POPC_PUR.Remark = this._pOColorSizeDetail.Remark;
                ListForm.m_View_POPC_PUR.ColorShade = this._pOColorSizeDetail.ColorShade;
                ListForm.m_View_POPC_PUR.CustOrderNo = this._pOColorSizeDetail.CustOrderNo;
                ListForm.m_View_POPC_PUR.CustStyleNo = this._pOColorSizeDetail.CustStyleNo;
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, ListForm._parentPage);
            }

        }
        protected override void SaveCurrent()
        {
            SetDefaultValue();
            UpdateColorShade();
            //Xsj20110329:update POWireBoneMatrixes
            UpdatePOWireBoneMatrixesInfo();
            Save();
            base.SaveCurrent();
            //this.EditCurrent();

            //Xsj20110329:对于MIDcPO因为没有第四层的数据,为了保持报表的取数逻辑一至性,在此用第三层数据自动生成唯一的第四层数据
            //AddNewPOWireBoneMatrixesInfo(); 
            //Xsj20110328:重置当前窗体状态
            SetFormControlState();
        }
        //Xsj20110329:add POWireBoneMatrixes
        private void AddNewPOWireBoneMatrixesInfo()
        {
            POColorSizeDetail currPOColorSizeDetail = this.BindingSource.Current as POColorSizeDetail;
            if (currPOColorSizeDetail.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                POWireBoneMatrix currPOWireBoneMatrix = new POWireBoneMatrix();
                currPOWireBoneMatrix.Qty = currPOColorSizeDetail.SupplierPOQty;
                currPOWireBoneMatrix.Company = currPOColorSizeDetail.Company;
                currPOWireBoneMatrix.PONO = currPOColorSizeDetail.PONO;
                currPOWireBoneMatrix.Version = currPOColorSizeDetail.Version;
                currPOWireBoneMatrix.AmendmentNo = currPOColorSizeDetail.AmendmentNo;
                currPOWireBoneMatrix.OrderLine = currPOColorSizeDetail.OrderLine;
                currPOWireBoneMatrix.SKU = currPOColorSizeDetail.SKU;
                currPOColorSizeDetail.POWireBoneMatrixes.Add(currPOWireBoneMatrix);              
            }
        }
        //Xsj20110329:update POWireBoneMatrixes
        private void UpdatePOWireBoneMatrixesInfo()
        {
            POColorSizeDetail currPOColorSizeDetail = this.BindingSource.Current as POColorSizeDetail;
            if (currPOColorSizeDetail.BOWorkMode == PH.Platform.BO.Interface.WorkMode.Edit)
            {
                POWireBoneMatrix currPOWireBoneMatrix = currPOColorSizeDetail.POWireBoneMatrixes[0];
                currPOWireBoneMatrix.Qty = currPOColorSizeDetail.SupplierPOQty;
            }
            else if (currPOColorSizeDetail.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                POWireBoneMatrix currPOWireBoneMatrix = new POWireBoneMatrix();
                currPOWireBoneMatrix.Qty = currPOColorSizeDetail.SupplierPOQty;
                currPOWireBoneMatrix.Company = currPOColorSizeDetail.Company;
                currPOWireBoneMatrix.PONO = currPOColorSizeDetail.PONO;
                currPOWireBoneMatrix.Version = currPOColorSizeDetail.Version;
                currPOWireBoneMatrix.AmendmentNo = currPOColorSizeDetail.AmendmentNo;
                currPOWireBoneMatrix.OrderLine = currPOColorSizeDetail.OrderLine;
                currPOWireBoneMatrix.SKU = currPOColorSizeDetail.SKU;
                currPOColorSizeDetail.POWireBoneMatrixes.Add(currPOWireBoneMatrix);    
            }
        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            if ((this.PrevForm as POColorSizeDetailListForm) != null && (this.PrevForm as POColorSizeDetailListForm)._parentPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as POColorSizeDetailListForm)._parentPage);
            }

        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            InitColorShade();
            //InitColorCode();
        }



        private void GetSUKPhoto()
        {
            if (this.pictureEdit2.EditValue == null && this._IsClean == false && this._pOColorSizeDetail != null)
            {
                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                var photo = (from c in context.POSKUPhotos
                             where c.AmendmentNo == this._pOColorSizeDetail.AmendmentNo
                             && c.Version == this._pOColorSizeDetail.Version
                             && c.Company == this._pOColorSizeDetail.Company
                             && c.PONO == this._pOColorSizeDetail.PONO
                             && c.OrderLine == this._pOColorSizeDetail.OrderLine
                             && c.SKU == this._pOColorSizeDetail.SKU
                             select c).FirstOrDefault();
                if (photo != null)
                {
                    this.pictureEdit2.EditValue = photo.Photo;

                }
            }
        }

        //初始化Color选项
        //private void InitColorCode()
        //{
        //    PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
        //    context.CommandTimeout = 1000;
        //    this._Color = from c in context.V_Colors where c.ItemCode == this.txtD_ItemCode.Text select c;
        //    this.Comb_ColorCode.Properties.Items.Clear();
        //    foreach (PH.POPC.BO.V_Color Item in this._Color)
        //    {
        //        this.Comb_ColorCode.Properties.Items.Add(Item.ColorCode.Trim());
        //    }
        //}
        private void InitColorShade()
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            var Data = from c in context.POColorShades
                       where c.ColorCode == this._pOColorSizeDetail.ColorCode &&
                             c.ItemCode == _pOColorSizeDetail.ItemCode &&
                             c.Company == _pOColorSizeDetail.Company &&
                             c.Supplier == this._Supplier &&
                             c.ColorType == 5
                       select c;
            this.Cobo_ColorShadeLable.Properties.Items.Clear();
            foreach (PH.POPC.BO.POColorShade item in Data)
            {
                this.Cobo_ColorShadeLable.Properties.Items.Add(item.ColorShade);
            }
        }
        private void Save()
        {
            this.pictureEdit2.Properties.ShowMenu = false;

            //if (this.pictureEdit2.EditValue == null) return;
            if (this._pOColorSizeDetail.POSKUPhoto == null)
            {
                PH.POPC.BO.POSKUPhoto Detailphoto = new PH.POPC.BO.POSKUPhoto();
                Detailphoto.AmendmentNo = this._pOColorSizeDetail.AmendmentNo;
                Detailphoto.Version = this._pOColorSizeDetail.Version;
                Detailphoto.Company = this._pOColorSizeDetail.Company;
                Detailphoto.PONO = this._pOColorSizeDetail.PONO;
                Detailphoto.OrderLine = this._pOColorSizeDetail.OrderLine;
                Detailphoto.SKU = this._pOColorSizeDetail.SKU;
                if (this.pictureEdit2.EditValue != null)
                {
                    Detailphoto.Photo = (byte[])this.pictureEdit2.EditValue;
                }
                this._pOColorSizeDetail.POSKUPhoto = Detailphoto;
            }
            else
            {
                if (this.pictureEdit2.EditValue != null)
                {
                    this._pOColorSizeDetail.POSKUPhoto.Photo = (byte[])this.pictureEdit2.EditValue;
                }
            }
            this._IsClean = false;
        }
        private void UpdateColorShade()
        {
            if (this._POType == (int)POType.MIDcPO) return;
            PH.POPC.BO.POColorSizeDetail detailD = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            detailD.ColorShade = this.Cobo_ColorShadeLable.Text;
            if (string.IsNullOrEmpty(detailD.ColorShade) == false)
            {
                PH.POPC.BO.ColorShade colorShade = new ColorShade(detailD);
                colorShade.Update();
                if (this.Cobo_ColorShadeLable.Properties.Items.Contains(detailD.ColorShade) == false)
                {
                    this.Cobo_ColorShadeLable.Properties.Items.Add(detailD.ColorShade);
                }
            }
        }
        private void SetDefaultValue()
        {
            if (this._POType == (int)POType.MIDcPO)
            {
                PH.POPC.BO.POColorSizeDetail detailD = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;

                detailD.ColorCode = string.IsNullOrEmpty(detailD.ColorCode) ? string.Empty : detailD.ColorCode;
                detailD.SizeCode = string.IsNullOrEmpty(detailD.SizeCode) ? string.Empty : detailD.SizeCode;
                detailD.FitCode = string.IsNullOrEmpty(detailD.FitCode) ? string.Empty : detailD.FitCode;
                //if (string.IsNullOrEmpty(detailD.SKU))
                //{
                //    detailD.SKU = this.txtD_ItemCode.Text.Trim() + this.Comb_ColorCode.Text.Trim() + this.txtD_SizeCode.Text.Trim() + this.txtD_FitCode.Text.Trim();
                //}
            }
        }
        private void POinit()
        {
            //this.label_IntelSize.Visible = this.txtD_IntelSizeDesc.Visible = false;
        }
        private void POStickerinit()
        {
            // this.pnl_PO.Visible = splitterControl1.Visible = this.xtraTabControl1.Visible = false;
        }



        //private void Comb_ColorCode_SelectedIndexChanged(object sender, EventArgs e)
        //{ 
        //    this._pOColorSizeDetail.ColorCode = this.Comb_ColorCode.Text;
        //    this._pOColorSizeDetail.Price = this._Color.FirstOrDefault(P => P.ColorCode == this.Comb_ColorCode.Text).Price;
        //}

        private void POColorSizeDetailDetailForm_Load(object sender, EventArgs e)
        {
            this.BindingSource.CurrentChanged += new EventHandler(CurBindingSource_CurrentChanged);
            if (this._POType == (int)POType.POSticker)
            {
                POStickerinit();
            }
            else if (this._POType == (int)POType.PO)
            {
                POinit();
            }
            this.pictureEdit2.Properties.ShowMenu = false;

            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                this.OnClickEdit();
            }

        }
        private void CurBindingSource_CurrentChanged(object sender, EventArgs e)
        {
            this._pOColorSizeDetail = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            GetSUKPhoto();
        }
        private void xtraTabControl2_SelectedPageChanging(object sender, DevExpress.XtraTab.TabPageChangingEventArgs e)
        {

            if (e.Page.Text == "SKU_Photo")
            {
                this.GetSUKPhoto();
            }
        }
        private void Comb_ColorShade_Properties_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.A)
            {
                e.Handled = false;
            }
        }

        #region Xsj20110326
        private PH.MIDc.BO.MIDcDataContext midcDc = PH.Platform.BO.ContextBuilder.CreateContext<PH.MIDc.BO.MIDcDataContext>();
        private void buttonEditColorCode_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            PODetail currentMaster = (PODetail)(this.PrevForm as PODetailDetailFormMIDc).BindingSource.Current;
            //PH.MIDc.BO.Detail currMIDcDetail = (from val1 in midcDc.Details
            //                                    where val1.SuppRef == currentMaster.SupplierReference
            //                                    select val1).FirstOrDefault<PH.MIDc.BO.Detail>();

            PH.MIDc.BO.Detail currMIDcDetail = (from val1 in midcDc.Details
                                                //where val1.SuppRef == currPOColorSizeDetail.SupplierReference
                                                where val1.SuppRef == currentMaster.SupplierReference 
                                                select val1).FirstOrDefault<PH.MIDc.BO.Detail>();

            PH.MIDc.BO.MaterialPriceHeader currentMaterialPriceHeader = new PH.MIDc.BO.PriceHeaderInfo().GetCurrPriceHeader(currMIDcDetail, "Standard", "");
            if (currentMaterialPriceHeader == null) return;

            SelectMIDcPriceForm f = new SelectMIDcPriceForm(currentMaterialPriceHeader.MaterialPrices);
            if (f.ShowDialog() != DialogResult.OK) return;
             
            if (f.MaterialPrice == null) return;

            POColorSizeDetail csd= this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            //PH.POPC.BO.POColorSizeDetail currPOColorSizeDetail = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            //if (currPOColorSizeDetail.BOWorkMode == PH.Platform.BO.Interface.WorkMode .New )
            if (csd.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                //csd = this.BindingSource.AddNew() as POColorSizeDetail;
                //csd.CurrentBindingSource = this.BindingSource;
                //csd.CurrentDataContext = this.DataContext;

                csd.PONO = currentMaster.PONO;
                csd.Version = currentMaster.Version;
                csd.AmendmentNo = currentMaster.AmendmentNo;
                csd.OrderLine = currentMaster.OrderLine;

                csd.SupplierReference = currentMaster.SupplierReference;
            }
            else
                csd = this.BindingSource.Current as POColorSizeDetail;

            csd.ColorCode = f.MaterialPrice.ColorRange;
            csd.Price = Convert.ToDecimal(string.Format("{0:N6}", f.MaterialPrice.Price));
        }
        #endregion
    }
}
