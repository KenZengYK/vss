/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.PODetailDetailForm.cs$   
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
using System.Data.Linq;
using DevExpress.XtraEditors;

namespace PH.POPC.UI
{
    public class PODetailDetailFormMIDc : PH.Platform.UI.CS.UI2.ParentChildForm
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
        protected ButtonEdit but_supplierReference;
        protected Label supplierUomLable;
        protected TextEdit txtD_SupplierUom;
        protected Label pHUomLable;
        protected TextEdit txtD_PHUom;
        private DevExpress.XtraTab.XtraTabPage Photo;
        private PictureEdit pictureEdit1;
        // private ConfirmDateNotepadListForm confirmDateNotepadListForm1;
        protected Label conversionFactorLable;
        protected SpinEdit spin_RateToPHUnit;
        protected Label customerLable;
        protected TextEdit txtD_Customer;
        protected SpinEdit spinEdit2;
        protected MemoExEdit memoExEdit2;
        protected Label commodityLable;
        protected Label supplierReferenceLable;
        protected TextEdit txtD_ItemCode;
        protected SpinEdit spin_SupPrice;
        protected Label supPriceLable;
        private DevExpress.XtraTab.XtraTabPage Page3;
        private PictureEdit pictureEdit2;
        private ContextMenuStrip contextMenuStrip1;
        private IContainer components;
        private ToolStripMenuItem loadPhotoToolStripMenuItem;
        private ToolStripMenuItem cleanPhotoToolStripMenuItem;
        protected Label custStyleNoLable;
        protected TextEdit txtD_CustStyleNO;
        private POColorSizeDetailListFormMIDc poColorSizeDetailListFormMIDc1;
        private CheckEdit openToProjectCheckEdit;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private POConfirmListForm poConfirmListForm1;
        private DevExpress.XtraBars.BarButtonItem btnCustPOFormat;
        private DevExpress.XtraTab.XtraTabPage Page2;
        protected SpinEdit spin_Tolerance;
        protected Label toleranceLable;
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
        private LookUpEdit lookUpEditBuyerQtyDimension;
        private LookUpEdit lookUpEditSuppQtyDimension;
        protected Label label1;
        private TextEdit textEditItemCode;
        protected Label label3;
        protected Label label2;
        protected DateEdit dateEditReceivedDate;
        protected DateEdit dateEditReadyDate;
        private CheckEdit HaveSupplementSheetCheckEdit;
        #endregion
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label openToProjectLabel;
            System.Windows.Forms.Label suppQtyDimensionLabel;
            System.Windows.Forms.Label buyerQtyDimensionLabel;
            System.Windows.Forms.Label HaveSupplementSheetLabel;
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout1 = new PH.Platform.BO.UI_GridViewLayout();
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
            this.textEditItemCode = new DevExpress.XtraEditors.TextEdit();
            this.openToProjectCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.custStyleNoLable = new System.Windows.Forms.Label();
            this.txtD_CustStyleNO = new DevExpress.XtraEditors.TextEdit();
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
            this.but_supplierReference = new DevExpress.XtraEditors.ButtonEdit();
            this.supplierReferenceLable = new System.Windows.Forms.Label();
            this.txtD_ItemCode = new DevExpress.XtraEditors.TextEdit();
            this.specificationLable = new System.Windows.Forms.Label();
            this.txtD_Specification = new DevExpress.XtraEditors.TextEdit();
            this.workOrderNoLable = new System.Windows.Forms.Label();
            this.txtD_WorkOrderNo = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.Page2 = new DevExpress.XtraTab.XtraTabPage();
            this.lookUpEditSuppQtyDimension = new DevExpress.XtraEditors.LookUpEdit();
            this.lookUpEditBuyerQtyDimension = new DevExpress.XtraEditors.LookUpEdit();
            this.HaveSupplementSheetCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.txtD_Supplier = new DevExpress.XtraEditors.TextEdit();
            this.supplierLable = new System.Windows.Forms.Label();
            this.txtD_SupplierName = new DevExpress.XtraEditors.TextEdit();
            this.supplierNameLable = new System.Windows.Forms.Label();
            this.spin_Tolerance = new DevExpress.XtraEditors.SpinEdit();
            this.toleranceLable = new System.Windows.Forms.Label();
            this.dte_REQ = new DevExpress.XtraEditors.DateEdit();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.shipMentDateLable = new System.Windows.Forms.Label();
            this.dte_ETADate = new DevExpress.XtraEditors.DateEdit();
            this.eTADateLable = new System.Windows.Forms.Label();
            this.dateEditReceivedDate = new DevExpress.XtraEditors.DateEdit();
            this.dateEditReadyDate = new DevExpress.XtraEditors.DateEdit();
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
            this.Photo = new DevExpress.XtraTab.XtraTabPage();
            this.pictureEdit1 = new DevExpress.XtraEditors.PictureEdit();
            this.Page3 = new DevExpress.XtraTab.XtraTabPage();
            this.pictureEdit2 = new DevExpress.XtraEditors.PictureEdit();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.loadPhotoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cleanPhotoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.poColorSizeDetailListFormMIDc1 = new PH.POPC.UI.POColorSizeDetailListFormMIDc();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.poConfirmListForm1 = new PH.POPC.UI.POConfirmListForm();
            this.btnCustPOFormat = new DevExpress.XtraBars.BarButtonItem();
            openToProjectLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.textEditItemCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.openToProjectCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupPrice.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Customer.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_RateToPHUnit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PHUom.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.but_supplierReference.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ItemCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Specification.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_WorkOrderNo.Properties)).BeginInit();
            this.Page2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditSuppQtyDimension.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditBuyerQtyDimension.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.HaveSupplementSheetCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierName.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Tolerance.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReceivedDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReceivedDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReadyDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReadyDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppQty.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Leadtime.Properties)).BeginInit();
            this.Photo.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).BeginInit();
            this.Page3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).BeginInit();
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
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 246);
            this.splitterControl1.Size = new System.Drawing.Size(966, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.xtraTabControl2);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(966, 219);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.xtraTabControl2, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 252);
            this.panelControl1.Size = new System.Drawing.Size(966, 351);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.poColorSizeDetailListFormMIDc1);
            this.xtraTabPage1.Size = new System.Drawing.Size(953, 315);
            this.xtraTabPage1.Text = "PO Color Size Deail";
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(962, 347);
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
            // openToProjectLabel
            // 
            openToProjectLabel.AutoSize = true;
            openToProjectLabel.Location = new System.Drawing.Point(516, 83);
            openToProjectLabel.Name = "openToProjectLabel";
            openToProjectLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(openToProjectLabel, null);
            openToProjectLabel.TabIndex = 320;
            openToProjectLabel.Text = "Open To Project";
            openToProjectLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            openToProjectLabel.Visible = false;
            // 
            // suppQtyDimensionLabel
            // 
            suppQtyDimensionLabel.AutoSize = true;
            suppQtyDimensionLabel.Location = new System.Drawing.Point(17, 44);
            suppQtyDimensionLabel.Name = "suppQtyDimensionLabel";
            suppQtyDimensionLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(suppQtyDimensionLabel, null);
            suppQtyDimensionLabel.TabIndex = 327;
            suppQtyDimensionLabel.Text = "Supp Qty Dimension:";
            suppQtyDimensionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // buyerQtyDimensionLabel
            // 
            buyerQtyDimensionLabel.AutoSize = true;
            buyerQtyDimensionLabel.Location = new System.Drawing.Point(11, 19);
            buyerQtyDimensionLabel.Name = "buyerQtyDimensionLabel";
            buyerQtyDimensionLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(buyerQtyDimensionLabel, null);
            buyerQtyDimensionLabel.TabIndex = 325;
            buyerQtyDimensionLabel.Text = "Our Qty Dimension:";
            buyerQtyDimensionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // HaveSupplementSheetLabel
            // 
            HaveSupplementSheetLabel.AutoSize = true;
            HaveSupplementSheetLabel.Location = new System.Drawing.Point(318, 78);
            HaveSupplementSheetLabel.Name = "HaveSupplementSheetLabel";
            HaveSupplementSheetLabel.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(HaveSupplementSheetLabel, null);
            HaveSupplementSheetLabel.TabIndex = 363;
            HaveSupplementSheetLabel.Text = "Have SupplementSheet:";
            // 
            // txtD_Version
            // 
            this.txtD_Version.Enabled = false;
            this.txtD_Version.Location = new System.Drawing.Point(110, 7);
            this.txtD_Version.Name = "txtD_Version";
            this.txtD_Version.Properties.ReadOnly = true;
            this.txtD_Version.Size = new System.Drawing.Size(102, 21);
            this.txtD_Version.TabIndex = 1;
            this.txtD_Version.Tag = "POVersion";
            // 
            // pOVersionLable
            // 
            this.pOVersionLable.AutoSize = true;
            this.pOVersionLable.Location = new System.Drawing.Point(54, 11);
            this.pOVersionLable.Name = "pOVersionLable";
            this.pOVersionLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.pOVersionLable, null);
            this.pOVersionLable.TabIndex = 0;
            this.pOVersionLable.Text = "Version";
            this.pOVersionLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Company
            // 
            this.txtD_Company.Enabled = false;
            this.txtD_Company.Location = new System.Drawing.Point(110, 29);
            this.txtD_Company.Name = "txtD_Company";
            this.txtD_Company.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_Company.Properties.MaxLength = 2;
            this.txtD_Company.Properties.ReadOnly = true;
            this.txtD_Company.Size = new System.Drawing.Size(102, 21);
            this.txtD_Company.TabIndex = 3;
            this.txtD_Company.Tag = "Company";
            // 
            // companyLable
            // 
            this.companyLable.AutoSize = true;
            this.companyLable.Location = new System.Drawing.Point(54, 33);
            this.companyLable.Name = "companyLable";
            this.companyLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.companyLable, null);
            this.companyLable.TabIndex = 2;
            this.companyLable.Text = "Company";
            this.companyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_PONO
            // 
            this.txtD_PONO.Enabled = false;
            this.txtD_PONO.Location = new System.Drawing.Point(110, 51);
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
            this.pONOLable.Location = new System.Drawing.Point(66, 55);
            this.pONOLable.Name = "pONOLable";
            this.pONOLable.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.pONOLable, null);
            this.pONOLable.TabIndex = 3;
            this.pONOLable.Text = "PO NO";
            this.pONOLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // orderLineLable
            // 
            this.orderLineLable.AutoSize = true;
            this.orderLineLable.Location = new System.Drawing.Point(42, 77);
            this.orderLineLable.Name = "orderLineLable";
            this.orderLineLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.orderLineLable, null);
            this.orderLineLable.TabIndex = 4;
            this.orderLineLable.Text = "OrderLine";
            this.orderLineLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_ProjectNo
            // 
            this.txtD_ProjectNo.Location = new System.Drawing.Point(400, 116);
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
            this.projectNoLable.Location = new System.Drawing.Point(325, 120);
            this.projectNoLable.Name = "projectNoLable";
            this.projectNoLable.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.projectNoLable, null);
            this.projectNoLable.TabIndex = 6;
            this.projectNoLable.Text = "Project No";
            this.projectNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // itemCodeLable
            // 
            this.itemCodeLable.AutoSize = true;
            this.itemCodeLable.Location = new System.Drawing.Point(558, 115);
            this.itemCodeLable.Name = "itemCodeLable";
            this.itemCodeLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.itemCodeLable, null);
            this.itemCodeLable.TabIndex = 7;
            this.itemCodeLable.Text = "Item Nr.";
            this.itemCodeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.itemCodeLable.Visible = false;
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
            this.Page2,
            this.Photo,
            this.Page3});
            this.xtraTabControl2.Text = "Photo1";
            this.xtraTabControl2.SelectedPageChanging += new DevExpress.XtraTab.TabPageChangingEventHandler(this.xtraTabControl2_SelectedPageChanging);
            // 
            // page1
            // 
            this.page1.AutoScroll = true;
            this.page1.Controls.Add(this.textEditItemCode);
            this.page1.Controls.Add(openToProjectLabel);
            this.page1.Controls.Add(this.openToProjectCheckEdit);
            this.page1.Controls.Add(this.custStyleNoLable);
            this.page1.Controls.Add(this.txtD_CustStyleNO);
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
            this.page1.Controls.Add(this.but_supplierReference);
            this.page1.Controls.Add(this.supplierReferenceLable);
            this.page1.Controls.Add(this.txtD_ItemCode);
            this.page1.Controls.Add(this.specificationLable);
            this.page1.Controls.Add(this.txtD_Specification);
            this.page1.Controls.Add(this.workOrderNoLable);
            this.page1.Controls.Add(this.txtD_WorkOrderNo);
            this.page1.Controls.Add(this.pOVersionLable);
            this.page1.Controls.Add(this.projectNoLable);
            this.page1.Controls.Add(this.label1);
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
            // textEditItemCode
            // 
            this.textEditItemCode.Location = new System.Drawing.Point(110, 95);
            this.textEditItemCode.Name = "textEditItemCode";
            this.textEditItemCode.Size = new System.Drawing.Size(102, 21);
            this.textEditItemCode.TabIndex = 322;
            // 
            // openToProjectCheckEdit
            // 
            this.openToProjectCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "weight", true));
            this.openToProjectCheckEdit.Location = new System.Drawing.Point(616, 80);
            this.openToProjectCheckEdit.Name = "openToProjectCheckEdit";
            this.openToProjectCheckEdit.Properties.Caption = "";
            this.openToProjectCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.openToProjectCheckEdit.Size = new System.Drawing.Size(32, 19);
            this.openToProjectCheckEdit.TabIndex = 321;
            this.openToProjectCheckEdit.Visible = false;
            // 
            // custStyleNoLable
            // 
            this.custStyleNoLable.AutoSize = true;
            this.custStyleNoLable.Location = new System.Drawing.Point(540, 35);
            this.custStyleNoLable.Name = "custStyleNoLable";
            this.custStyleNoLable.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.custStyleNoLable, null);
            this.custStyleNoLable.TabIndex = 320;
            this.custStyleNoLable.Text = "CustStyleNO";
            this.custStyleNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.custStyleNoLable.Visible = false;
            // 
            // txtD_CustStyleNO
            // 
            this.txtD_CustStyleNO.Location = new System.Drawing.Point(615, 28);
            this.txtD_CustStyleNO.Name = "txtD_CustStyleNO";
            this.txtD_CustStyleNO.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_CustStyleNO.Properties.MaxLength = 20;
            this.txtD_CustStyleNO.Size = new System.Drawing.Size(89, 21);
            this.txtD_CustStyleNO.TabIndex = 319;
            this.txtD_CustStyleNO.Tag = "CustStyleNo";
            this.txtD_CustStyleNO.Visible = false;
            // 
            // spin_SupPrice
            // 
            this.spin_SupPrice.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SupPrice.Location = new System.Drawing.Point(400, 94);
            this.spin_SupPrice.Name = "spin_SupPrice";
            this.spin_SupPrice.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_SupPrice.Size = new System.Drawing.Size(87, 21);
            this.spin_SupPrice.TabIndex = 251;
            this.spin_SupPrice.Tag = "SupplierPrice";
            this.spin_SupPrice.Visible = false;
            // 
            // supPriceLable
            // 
            this.supPriceLable.AutoSize = true;
            this.supPriceLable.Location = new System.Drawing.Point(301, 98);
            this.supPriceLable.Name = "supPriceLable";
            this.supPriceLable.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.supPriceLable, null);
            this.supPriceLable.TabIndex = 252;
            this.supPriceLable.Text = "Supplier Price";
            this.supPriceLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.supPriceLable.Visible = false;
            // 
            // memoExEdit2
            // 
            this.memoExEdit2.Location = new System.Drawing.Point(110, 139);
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
            this.commodityLable.Location = new System.Drawing.Point(42, 143);
            this.commodityLable.Name = "commodityLable";
            this.commodityLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.commodityLable, null);
            this.commodityLable.TabIndex = 240;
            this.commodityLable.Text = "Commodity";
            this.commodityLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // spinEdit2
            // 
            this.spinEdit2.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit2.Location = new System.Drawing.Point(110, 73);
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
            this.customerLable.Location = new System.Drawing.Point(558, 56);
            this.customerLable.Name = "customerLable";
            this.customerLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.customerLable, null);
            this.customerLable.TabIndex = 238;
            this.customerLable.Text = "Customer";
            this.customerLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.customerLable.Visible = false;
            // 
            // txtD_Customer
            // 
            this.txtD_Customer.Location = new System.Drawing.Point(615, 53);
            this.txtD_Customer.Name = "txtD_Customer";
            this.txtD_Customer.Size = new System.Drawing.Size(89, 21);
            this.txtD_Customer.TabIndex = 22;
            this.txtD_Customer.Tag = "Customer";
            this.txtD_Customer.Visible = false;
            // 
            // spin_RateToPHUnit
            // 
            this.spin_RateToPHUnit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_RateToPHUnit.Location = new System.Drawing.Point(400, 72);
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
            this.conversionFactorLable.Location = new System.Drawing.Point(301, 76);
            this.conversionFactorLable.Name = "conversionFactorLable";
            this.conversionFactorLable.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.conversionFactorLable, null);
            this.conversionFactorLable.TabIndex = 231;
            this.conversionFactorLable.Text = "Rate To PHUnit";
            this.conversionFactorLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // supplierUomLable
            // 
            this.supplierUomLable.AutoSize = true;
            this.supplierUomLable.Location = new System.Drawing.Point(313, 32);
            this.supplierUomLable.Name = "supplierUomLable";
            this.supplierUomLable.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierUomLable, null);
            this.supplierUomLable.TabIndex = 220;
            this.supplierUomLable.Text = "Supplier Uom";
            this.supplierUomLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_SupplierUom
            // 
            this.txtD_SupplierUom.Location = new System.Drawing.Point(400, 28);
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
            this.pHUomLable.Location = new System.Drawing.Point(349, 54);
            this.pHUomLable.Name = "pHUomLable";
            this.pHUomLable.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHUomLable, null);
            this.pHUomLable.TabIndex = 218;
            this.pHUomLable.Text = "PH Uom";
            this.pHUomLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_PHUom
            // 
            this.txtD_PHUom.Location = new System.Drawing.Point(400, 50);
            this.txtD_PHUom.Name = "txtD_PHUom";
            this.txtD_PHUom.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_PHUom.Properties.MaxLength = 2;
            this.txtD_PHUom.Size = new System.Drawing.Size(87, 21);
            this.txtD_PHUom.TabIndex = 14;
            this.txtD_PHUom.Tag = "PHUom";
            // 
            // but_supplierReference
            // 
            this.but_supplierReference.Location = new System.Drawing.Point(110, 117);
            this.but_supplierReference.Name = "but_supplierReference";
            this.but_supplierReference.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.but_supplierReference.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.but_supplierReference.Properties.MaxLength = 9;
            this.but_supplierReference.Size = new System.Drawing.Size(165, 21);
            this.but_supplierReference.TabIndex = 6;
            this.but_supplierReference.Tag = "SupplierReference";
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "This value is not valid";
            this.dxValidationProvider.SetValidationRule(this.but_supplierReference, conditionValidatonRule2);
            this.but_supplierReference.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.but_supplierReference_ButtonClick);
            this.but_supplierReference.KeyDown += new System.Windows.Forms.KeyEventHandler(this.but_supplierReference_KeyDown);
            // 
            // supplierReferenceLable
            // 
            this.supplierReferenceLable.Location = new System.Drawing.Point(3, 115);
            this.supplierReferenceLable.Name = "supplierReferenceLable";
            this.supplierReferenceLable.Size = new System.Drawing.Size(98, 24);
            this.PlatetoolTipController.SetSuperTip(this.supplierReferenceLable, null);
            this.supplierReferenceLable.TabIndex = 207;
            this.supplierReferenceLable.Text = "Supplier Reference";
            this.supplierReferenceLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_ItemCode
            // 
            this.txtD_ItemCode.Location = new System.Drawing.Point(615, 111);
            this.txtD_ItemCode.Name = "txtD_ItemCode";
            this.txtD_ItemCode.Size = new System.Drawing.Size(102, 21);
            this.txtD_ItemCode.TabIndex = 12;
            this.txtD_ItemCode.Tag = "ItemCode";
            this.txtD_ItemCode.Visible = false;
            // 
            // specificationLable
            // 
            this.specificationLable.AutoSize = true;
            this.specificationLable.Location = new System.Drawing.Point(307, 10);
            this.specificationLable.Name = "specificationLable";
            this.specificationLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.specificationLable, null);
            this.specificationLable.TabIndex = 205;
            this.specificationLable.Text = "Specification";
            this.specificationLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Specification
            // 
            this.txtD_Specification.Location = new System.Drawing.Point(400, 6);
            this.txtD_Specification.Name = "txtD_Specification";
            this.txtD_Specification.Size = new System.Drawing.Size(87, 21);
            this.txtD_Specification.TabIndex = 9;
            this.txtD_Specification.Tag = "Specification";
            // 
            // workOrderNoLable
            // 
            this.workOrderNoLable.AutoSize = true;
            this.workOrderNoLable.Location = new System.Drawing.Point(534, 7);
            this.workOrderNoLable.Name = "workOrderNoLable";
            this.workOrderNoLable.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.workOrderNoLable, null);
            this.workOrderNoLable.TabIndex = 203;
            this.workOrderNoLable.Text = "WorkOrder No";
            this.workOrderNoLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.workOrderNoLable.Visible = false;
            // 
            // txtD_WorkOrderNo
            // 
            this.txtD_WorkOrderNo.Location = new System.Drawing.Point(615, 4);
            this.txtD_WorkOrderNo.Name = "txtD_WorkOrderNo";
            this.txtD_WorkOrderNo.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtD_WorkOrderNo.Properties.MaxLength = 20;
            this.txtD_WorkOrderNo.Size = new System.Drawing.Size(89, 21);
            this.txtD_WorkOrderNo.TabIndex = 8;
            this.txtD_WorkOrderNo.Tag = "WorkOrderNo";
            this.txtD_WorkOrderNo.Visible = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(42, 98);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 7;
            this.label1.Text = "Item Code";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // Page2
            // 
            this.Page2.Controls.Add(this.lookUpEditSuppQtyDimension);
            this.Page2.Controls.Add(this.lookUpEditBuyerQtyDimension);
            this.Page2.Controls.Add(this.HaveSupplementSheetCheckEdit);
            this.Page2.Controls.Add(HaveSupplementSheetLabel);
            this.Page2.Controls.Add(this.txtD_Supplier);
            this.Page2.Controls.Add(this.supplierLable);
            this.Page2.Controls.Add(this.txtD_SupplierName);
            this.Page2.Controls.Add(this.supplierNameLable);
            this.Page2.Controls.Add(this.spin_Tolerance);
            this.Page2.Controls.Add(this.toleranceLable);
            this.Page2.Controls.Add(this.dte_REQ);
            this.Page2.Controls.Add(this.label3);
            this.Page2.Controls.Add(this.label2);
            this.Page2.Controls.Add(this.shipMentDateLable);
            this.Page2.Controls.Add(this.dte_ETADate);
            this.Page2.Controls.Add(this.eTADateLable);
            this.Page2.Controls.Add(this.dateEditReceivedDate);
            this.Page2.Controls.Add(this.dateEditReadyDate);
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
            this.Page2.Controls.Add(suppQtyDimensionLabel);
            this.Page2.Controls.Add(buyerQtyDimensionLabel);
            this.Page2.Name = "Page2";
            this.Page2.Size = new System.Drawing.Size(796, 164);
            this.Page2.Text = "More Info";
            // 
            // lookUpEditSuppQtyDimension
            // 
            this.lookUpEditSuppQtyDimension.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppQtyDimension", true));
            this.lookUpEditSuppQtyDimension.Location = new System.Drawing.Point(136, 40);
            this.lookUpEditSuppQtyDimension.Name = "lookUpEditSuppQtyDimension";
            this.lookUpEditSuppQtyDimension.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEditSuppQtyDimension.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Seq", "Dimension", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ItemColor", "Description", 100)});
            this.lookUpEditSuppQtyDimension.Properties.DisplayMember = "Seq";
            this.lookUpEditSuppQtyDimension.Properties.NullText = "";
            this.lookUpEditSuppQtyDimension.Properties.ValueMember = "Seq";
            this.lookUpEditSuppQtyDimension.Size = new System.Drawing.Size(143, 21);
            this.lookUpEditSuppQtyDimension.TabIndex = 366;
            // 
            // lookUpEditBuyerQtyDimension
            // 
            this.lookUpEditBuyerQtyDimension.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BuyerQtyDimension", true));
            this.lookUpEditBuyerQtyDimension.Location = new System.Drawing.Point(136, 15);
            this.lookUpEditBuyerQtyDimension.Name = "lookUpEditBuyerQtyDimension";
            this.lookUpEditBuyerQtyDimension.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEditBuyerQtyDimension.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Seq", "Dimension", 50),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ItemColor", "Description", 100)});
            this.lookUpEditBuyerQtyDimension.Properties.DisplayMember = "Seq";
            this.lookUpEditBuyerQtyDimension.Properties.NullText = "";
            this.lookUpEditBuyerQtyDimension.Properties.ValueMember = "Seq";
            this.lookUpEditBuyerQtyDimension.Size = new System.Drawing.Size(143, 21);
            this.lookUpEditBuyerQtyDimension.TabIndex = 365;
            // 
            // HaveSupplementSheetCheckEdit
            // 
            this.HaveSupplementSheetCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HaveSupplementSheet", true));
            this.HaveSupplementSheetCheckEdit.Location = new System.Drawing.Point(455, 76);
            this.HaveSupplementSheetCheckEdit.Name = "HaveSupplementSheetCheckEdit";
            this.HaveSupplementSheetCheckEdit.Properties.Appearance.BackColor = System.Drawing.Color.Transparent;
            this.HaveSupplementSheetCheckEdit.Properties.Appearance.Options.UseBackColor = true;
            this.HaveSupplementSheetCheckEdit.Properties.Caption = "";
            this.HaveSupplementSheetCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.HaveSupplementSheetCheckEdit.Size = new System.Drawing.Size(32, 19);
            this.HaveSupplementSheetCheckEdit.TabIndex = 364;
            // 
            // txtD_Supplier
            // 
            this.txtD_Supplier.Location = new System.Drawing.Point(829, 13);
            this.txtD_Supplier.Name = "txtD_Supplier";
            this.txtD_Supplier.Size = new System.Drawing.Size(102, 21);
            this.txtD_Supplier.TabIndex = 357;
            this.txtD_Supplier.Tag = "Supplier";
            this.txtD_Supplier.Visible = false;
            // 
            // supplierLable
            // 
            this.supplierLable.AutoSize = true;
            this.supplierLable.Location = new System.Drawing.Point(779, 19);
            this.supplierLable.Name = "supplierLable";
            this.supplierLable.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierLable, null);
            this.supplierLable.TabIndex = 356;
            this.supplierLable.Text = "Supplier ";
            this.supplierLable.Visible = false;
            // 
            // txtD_SupplierName
            // 
            this.txtD_SupplierName.Location = new System.Drawing.Point(829, 35);
            this.txtD_SupplierName.Name = "txtD_SupplierName";
            this.txtD_SupplierName.Size = new System.Drawing.Size(102, 21);
            this.txtD_SupplierName.TabIndex = 355;
            this.txtD_SupplierName.Tag = "SupplierName";
            this.txtD_SupplierName.Visible = false;
            // 
            // supplierNameLable
            // 
            this.supplierNameLable.AutoSize = true;
            this.supplierNameLable.Location = new System.Drawing.Point(752, 40);
            this.supplierNameLable.Name = "supplierNameLable";
            this.supplierNameLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierNameLable, null);
            this.supplierNameLable.TabIndex = 354;
            this.supplierNameLable.Text = "Supplier Name";
            this.supplierNameLable.Visible = false;
            // 
            // spin_Tolerance
            // 
            this.spin_Tolerance.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Tolerance.Location = new System.Drawing.Point(650, 14);
            this.spin_Tolerance.Name = "spin_Tolerance";
            this.spin_Tolerance.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_Tolerance.Size = new System.Drawing.Size(89, 21);
            this.spin_Tolerance.TabIndex = 348;
            this.spin_Tolerance.Tag = "Tolerance";
            this.spin_Tolerance.Visible = false;
            // 
            // toleranceLable
            // 
            this.toleranceLable.AutoSize = true;
            this.toleranceLable.Location = new System.Drawing.Point(563, 14);
            this.toleranceLable.Name = "toleranceLable";
            this.toleranceLable.Size = new System.Drawing.Size(83, 24);
            this.PlatetoolTipController.SetSuperTip(this.toleranceLable, null);
            this.toleranceLable.TabIndex = 351;
            this.toleranceLable.Text = "Shipment  \n Tolerance(%)";
            this.toleranceLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.toleranceLable.Visible = false;
            // 
            // dte_REQ
            // 
            this.dte_REQ.EditValue = null;
            this.dte_REQ.Location = new System.Drawing.Point(853, 69);
            this.dte_REQ.Name = "dte_REQ";
            this.dte_REQ.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_REQ.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_REQ.Size = new System.Drawing.Size(89, 21);
            this.dte_REQ.TabIndex = 344;
            this.dte_REQ.Tag = "ShipMentDate";
            this.dte_REQ.Visible = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(318, 44);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.label3, null);
            this.label3.TabIndex = 345;
            this.label3.Text = "Received Date:";
            this.label3.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(336, 20);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.label2, null);
            this.label2.TabIndex = 345;
            this.label2.Text = "Ready Date:";
            this.label2.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // shipMentDateLable
            // 
            this.shipMentDateLable.AutoSize = true;
            this.shipMentDateLable.Location = new System.Drawing.Point(752, 73);
            this.shipMentDateLable.Name = "shipMentDateLable";
            this.shipMentDateLable.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.shipMentDateLable, null);
            this.shipMentDateLable.TabIndex = 345;
            this.shipMentDateLable.Text = "REQ SHPMT Date";
            this.shipMentDateLable.Visible = false;
            // 
            // dte_ETADate
            // 
            this.dte_ETADate.EditValue = null;
            this.dte_ETADate.Location = new System.Drawing.Point(650, 118);
            this.dte_ETADate.Name = "dte_ETADate";
            this.dte_ETADate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_ETADate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_ETADate.Size = new System.Drawing.Size(89, 21);
            this.dte_ETADate.TabIndex = 340;
            this.dte_ETADate.Tag = "ETADate";
            this.dte_ETADate.Visible = false;
            // 
            // eTADateLable
            // 
            this.eTADateLable.AutoSize = true;
            this.eTADateLable.Location = new System.Drawing.Point(593, 125);
            this.eTADateLable.Name = "eTADateLable";
            this.eTADateLable.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.eTADateLable, null);
            this.eTADateLable.TabIndex = 343;
            this.eTADateLable.Text = "ETA Date";
            this.eTADateLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.eTADateLable.Visible = false;
            // 
            // dateEditReceivedDate
            // 
            this.dateEditReceivedDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReceivedDate", true));
            this.dateEditReceivedDate.EditValue = null;
            this.dateEditReceivedDate.Location = new System.Drawing.Point(409, 40);
            this.dateEditReceivedDate.Name = "dateEditReceivedDate";
            this.dateEditReceivedDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEditReceivedDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEditReceivedDate.Size = new System.Drawing.Size(89, 21);
            this.dateEditReceivedDate.TabIndex = 339;
            this.dateEditReceivedDate.Tag = "ConfirmETADate";
            // 
            // dateEditReadyDate
            // 
            this.dateEditReadyDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReadyDate", true));
            this.dateEditReadyDate.EditValue = null;
            this.dateEditReadyDate.Location = new System.Drawing.Point(409, 16);
            this.dateEditReadyDate.Name = "dateEditReadyDate";
            this.dateEditReadyDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEditReadyDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEditReadyDate.Size = new System.Drawing.Size(89, 21);
            this.dateEditReadyDate.TabIndex = 339;
            this.dateEditReadyDate.Tag = "ConfirmETADate";
            // 
            // dte_ConfirmETADate
            // 
            this.dte_ConfirmETADate.EditValue = null;
            this.dte_ConfirmETADate.Location = new System.Drawing.Point(650, 91);
            this.dte_ConfirmETADate.Name = "dte_ConfirmETADate";
            this.dte_ConfirmETADate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_ConfirmETADate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_ConfirmETADate.Size = new System.Drawing.Size(89, 21);
            this.dte_ConfirmETADate.TabIndex = 339;
            this.dte_ConfirmETADate.Tag = "ConfirmETADate";
            this.dte_ConfirmETADate.Visible = false;
            // 
            // confirmETADateLable
            // 
            this.confirmETADateLable.AutoSize = true;
            this.confirmETADateLable.Location = new System.Drawing.Point(545, 97);
            this.confirmETADateLable.Name = "confirmETADateLable";
            this.confirmETADateLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.confirmETADateLable, null);
            this.confirmETADateLable.TabIndex = 342;
            this.confirmETADateLable.Text = "Confirm ETD Date";
            this.confirmETADateLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.confirmETADateLable.Visible = false;
            // 
            // dte_WOStartDate
            // 
            this.dte_WOStartDate.EditValue = null;
            this.dte_WOStartDate.Location = new System.Drawing.Point(650, 67);
            this.dte_WOStartDate.Name = "dte_WOStartDate";
            this.dte_WOStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dte_WOStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dte_WOStartDate.Size = new System.Drawing.Size(89, 21);
            this.dte_WOStartDate.TabIndex = 338;
            this.dte_WOStartDate.Tag = "WOStartDate";
            this.dte_WOStartDate.Visible = false;
            // 
            // wOStartDateLable
            // 
            this.wOStartDateLable.AutoSize = true;
            this.wOStartDateLable.Location = new System.Drawing.Point(563, 71);
            this.wOStartDateLable.Name = "wOStartDateLable";
            this.wOStartDateLable.Size = new System.Drawing.Size(83, 12);
            this.PlatetoolTipController.SetSuperTip(this.wOStartDateLable, null);
            this.wOStartDateLable.TabIndex = 341;
            this.wOStartDateLable.Text = "WO Start Date";
            this.wOStartDateLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.wOStartDateLable.Visible = false;
            // 
            // imageComboBoxEdit1
            // 
            this.imageComboBoxEdit1.Location = new System.Drawing.Point(136, 64);
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
            this.statusLable.Location = new System.Drawing.Point(89, 68);
            this.statusLable.Name = "statusLable";
            this.statusLable.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.statusLable, null);
            this.statusLable.TabIndex = 336;
            this.statusLable.Text = "Status:";
            this.statusLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtD_Currency
            // 
            this.txtD_Currency.Location = new System.Drawing.Point(236, 113);
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
            this.spin_SuppAmount.Location = new System.Drawing.Point(136, 113);
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
            this.suppAmountLable.Location = new System.Drawing.Point(35, 120);
            this.suppAmountLable.Name = "suppAmountLable";
            this.suppAmountLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppAmountLable, null);
            this.suppAmountLable.TabIndex = 334;
            this.suppAmountLable.Text = "Supplier Amount:";
            this.suppAmountLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // spin_SuppQty
            // 
            this.spin_SuppQty.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_SuppQty.Location = new System.Drawing.Point(136, 89);
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
            this.suppQtyLable.Location = new System.Drawing.Point(35, 95);
            this.suppQtyLable.Name = "suppQtyLable";
            this.suppQtyLable.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppQtyLable, null);
            this.suppQtyLable.TabIndex = 332;
            this.suppQtyLable.Text = "Supplier PO Qty:";
            this.suppQtyLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // spin_Leadtime
            // 
            this.spin_Leadtime.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spin_Leadtime.Location = new System.Drawing.Point(650, 40);
            this.spin_Leadtime.Name = "spin_Leadtime";
            this.spin_Leadtime.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spin_Leadtime.Size = new System.Drawing.Size(89, 21);
            this.spin_Leadtime.TabIndex = 329;
            this.spin_Leadtime.Tag = "Leadtime";
            this.spin_Leadtime.Visible = false;
            // 
            // leadtimeLable
            // 
            this.leadtimeLable.AutoSize = true;
            this.leadtimeLable.Location = new System.Drawing.Point(533, 47);
            this.leadtimeLable.Name = "leadtimeLable";
            this.leadtimeLable.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(this.leadtimeLable, null);
            this.leadtimeLable.TabIndex = 330;
            this.leadtimeLable.Text = "Shipment Lead time";
            this.leadtimeLable.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.leadtimeLable.Visible = false;
            // 
            // Photo
            // 
            this.Photo.Controls.Add(this.pictureEdit1);
            this.Photo.Name = "Photo";
            this.Photo.PageVisible = false;
            this.Photo.Size = new System.Drawing.Size(796, 164);
            this.Photo.Text = "Material_Photo";
            // 
            // pictureEdit1
            // 
            this.pictureEdit1.Dock = System.Windows.Forms.DockStyle.Left;
            this.pictureEdit1.Location = new System.Drawing.Point(0, 0);
            this.pictureEdit1.Name = "pictureEdit1";
            this.pictureEdit1.Properties.AllowFocused = false;
            this.pictureEdit1.Properties.ReadOnly = true;
            this.pictureEdit1.Properties.ShowMenu = false;
            this.pictureEdit1.Properties.SizeMode = DevExpress.XtraEditors.Controls.PictureSizeMode.Stretch;
            this.pictureEdit1.Size = new System.Drawing.Size(411, 164);
            this.pictureEdit1.TabIndex = 0;
            this.pictureEdit1.Tag = "Photo";
            // 
            // Page3
            // 
            this.Page3.Controls.Add(this.pictureEdit2);
            this.Page3.Name = "Page3";
            this.Page3.PageVisible = false;
            this.Page3.Size = new System.Drawing.Size(796, 164);
            this.Page3.Text = "Marking_Photo";
            // 
            // pictureEdit2
            // 
            this.pictureEdit2.Dock = System.Windows.Forms.DockStyle.Left;
            this.pictureEdit2.Location = new System.Drawing.Point(0, 0);
            this.pictureEdit2.Name = "pictureEdit2";
            this.pictureEdit2.Properties.AllowFocused = false;
            this.pictureEdit2.Properties.ShowMenu = false;
            this.pictureEdit2.Size = new System.Drawing.Size(451, 164);
            this.pictureEdit2.TabIndex = 2;
            this.pictureEdit2.Tag = "";
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.loadPhotoToolStripMenuItem,
            this.cleanPhotoToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(147, 48);
            this.PlatetoolTipController.SetSuperTip(this.contextMenuStrip1, null);
            // 
            // loadPhotoToolStripMenuItem
            // 
            this.loadPhotoToolStripMenuItem.Name = "loadPhotoToolStripMenuItem";
            this.loadPhotoToolStripMenuItem.Size = new System.Drawing.Size(146, 22);
            this.loadPhotoToolStripMenuItem.Text = "Open Photo";
            this.loadPhotoToolStripMenuItem.Click += new System.EventHandler(this.loadPhotoToolStripMenuItem_Click);
            // 
            // cleanPhotoToolStripMenuItem
            // 
            this.cleanPhotoToolStripMenuItem.Name = "cleanPhotoToolStripMenuItem";
            this.cleanPhotoToolStripMenuItem.Size = new System.Drawing.Size(146, 22);
            this.cleanPhotoToolStripMenuItem.Text = "Clean Photo";
            this.cleanPhotoToolStripMenuItem.Click += new System.EventHandler(this.cleanPhotoToolStripMenuItem_Click);
            // 
            // poColorSizeDetailListFormMIDc1
            // 
            this.poColorSizeDetailListFormMIDc1.AllowAddRow = true;
            this.poColorSizeDetailListFormMIDc1.AutoOpenDetailForm = false;
            this.poColorSizeDetailListFormMIDc1.DataContext = null;
            this.poColorSizeDetailListFormMIDc1.DataSource = null;
            this.poColorSizeDetailListFormMIDc1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.poColorSizeDetailListFormMIDc1.EditorTypeName = "PH.POPC.UI.POColorSizeDetailDetailForm";
            this.poColorSizeDetailListFormMIDc1.FileID = null;
            this.poColorSizeDetailListFormMIDc1.FirstForm = null;
            this.poColorSizeDetailListFormMIDc1.FormName = "POColorSizeDetailListFormMIDc";
            this.poColorSizeDetailListFormMIDc1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.poColorSizeDetailListFormMIDc1.FormTitle = "PH.POPC.UI.POColorSizeDetailListFormMIDc";
            this.poColorSizeDetailListFormMIDc1.IsCancelList = false;
            this.poColorSizeDetailListFormMIDc1.IsShowPivotTable = false;
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
            this.poColorSizeDetailListFormMIDc1.LayoutData = uI_GridViewLayout1;
            this.poColorSizeDetailListFormMIDc1.LayoutName = null;
            this.poColorSizeDetailListFormMIDc1.ListForm = null;
            this.poColorSizeDetailListFormMIDc1.Location = new System.Drawing.Point(0, 0);
            this.poColorSizeDetailListFormMIDc1.MenuID = ((long)(0));
            this.poColorSizeDetailListFormMIDc1.Name = "poColorSizeDetailListFormMIDc1";
            this.poColorSizeDetailListFormMIDc1.NeedCheckPermission = true;
            this.poColorSizeDetailListFormMIDc1.NextForm = null;
            this.poColorSizeDetailListFormMIDc1.ParentForm = null;
            this.poColorSizeDetailListFormMIDc1.PrevForm = null;
            this.poColorSizeDetailListFormMIDc1.RowChangeAutoSave = false;
            this.poColorSizeDetailListFormMIDc1.ShowMultiCheck = false;
            this.poColorSizeDetailListFormMIDc1.SideProgramID = null;
            this.poColorSizeDetailListFormMIDc1.Size = new System.Drawing.Size(953, 315);
            this.PlatetoolTipController.SetSuperTip(this.poColorSizeDetailListFormMIDc1, null);
            this.poColorSizeDetailListFormMIDc1.TabControls = null;
            this.poColorSizeDetailListFormMIDc1.TabIndex = 0;
            this.poColorSizeDetailListFormMIDc1.TabPage = null;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.poConfirmListForm1);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.PageVisible = false;
            this.xtraTabPage2.Size = new System.Drawing.Size(953, 315);
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
            this.poConfirmListForm1.NeedCheckPermission = true;
            this.poConfirmListForm1.NextForm = null;
            this.poConfirmListForm1.ParentForm = null;
            this.poConfirmListForm1.PrevForm = null;
            this.poConfirmListForm1.RowChangeAutoSave = true;
            this.poConfirmListForm1.ShowMultiCheck = false;
            this.poConfirmListForm1.SideProgramID = null;
            this.poConfirmListForm1.Size = new System.Drawing.Size(953, 315);
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
            this.btnCustPOFormat.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // PODetailDetailFormMIDc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PODetailDetailFormMIDc";
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
            ((System.ComponentModel.ISupportInitialize)(this.textEditItemCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.openToProjectCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_CustStyleNO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SupPrice.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoExEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Customer.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_RateToPHUnit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierUom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_PHUom.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.but_supplierReference.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_ItemCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Specification.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_WorkOrderNo.Properties)).EndInit();
            this.Page2.ResumeLayout(false);
            this.Page2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditSuppQtyDimension.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditBuyerQtyDimension.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.HaveSupplementSheetCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Supplier.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_SupplierName.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Tolerance.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_REQ.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ETADate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReceivedDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReceivedDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReadyDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEditReadyDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_ConfirmETADate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dte_WOStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtD_Currency.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppAmount.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_SuppQty.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spin_Leadtime.Properties)).EndInit();
            this.Photo.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit1.Properties)).EndInit();
            this.Page3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureEdit2.Properties)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.xtraTabPage2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        private PH.POPC.BO.PODetail _detail;
        private string _Supplier = string.Empty;
        private int? _POType;
        private IQueryable<PH.POPC.BO.V_MIDcMaterial> _ItemCodes;
        private string _ProjectNO = string.Empty;
        private bool _IsClean = false;
        public PODetailDetailFormMIDc()
        {
            InitializeComponent();
            this.headerTitleBar.AutoScroll = true;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
        }

        protected override void OnClickSaveAndReturn()
        {
            this.poColorSizeDetailListFormMIDc1.Save(this._detail);
            base.OnClickSaveAndReturn();
            if ((this.PrevForm as PODetailListForm) != null && (this.PrevForm as PODetailListForm)._parentPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as PODetailListForm)._parentPage);
            }
        }
        protected override void SaveCurrent()
        {
            Common.PostGridValue(this.poColorSizeDetailListFormMIDc1.objListGridView);
            //Xsj20110416:置ColorSizeDetailListForm的SupplierReference为上一层的SupplierReference
            foreach (PH.POPC.BO.POColorSizeDetail item in this.poColorSizeDetailListFormMIDc1.BindingSource)
            {
                item.SupplierReference = this._detail.SupplierReference;
            }
            Save();
            base.SaveCurrent();
        }
        protected override void SetFormControlState()
        {
            base.SetFormControlState();
            Common.SetFormStatus(this);
            if (this._POType == (int)POType.MIDcPO && this._detail.BOWorkMode != PH.Platform.BO.Interface.WorkMode.Read)
            {

                this.txtD_ProjectNo.Properties.ReadOnly = false;
                this.txtD_WorkOrderNo.Properties.ReadOnly = false;
                this.spin_Tolerance.Properties.ReadOnly = false;
                this.pictureEdit2.Properties.ReadOnly = false;
                this.txtD_CustStyleNO.Properties.ReadOnly = false;
                this.spin_RateToPHUnit.Properties.ReadOnly = false;
                this.pictureEdit2.Properties.ShowMenu = true;

                this.lookUpEditBuyerQtyDimension.Properties.ReadOnly = false;
                this.lookUpEditSuppQtyDimension.Properties.ReadOnly = false;
                this.spin_RateToPHUnit.Properties.ReadOnly = true;

                this.textEditItemCode.Properties.ReadOnly = true;
                this.dateEditReadyDate.Properties.ReadOnly = false;
                this.dateEditReceivedDate.Properties.ReadOnly = false;

                //this.poColorSizeDetailListFormMIDc1.objListGridView.Columns["SupplierReference"].OptionsColumn.AllowEdit = false;
                this.poColorSizeDetailListFormMIDc1.objListGridView.Columns["SupplierReference"].OptionsColumn.ReadOnly = true;
            }

        }
        protected override void OnClickCancel()
        {
            base.OnClickCancel();
            if ((this.PrevForm as PODetailListForm) != null && (this.PrevForm as PODetailListForm)._parentPage != null)
            {
                this.ClosePage(this.FirstForm.TabControls.SelectedTabPage, (this.PrevForm as PODetailListForm)._parentPage);

            }

        }
        public override void DataBind()
        {
            base.DataBind();
            this._detail = this.BindingSource.Current as PH.POPC.BO.PODetail;
            this._Supplier = this._detail.POHeader.Supplier;
            this._POType = this._detail.POHeader.POType;
            this._ProjectNO = this._detail.ProjectNo;

            this.poColorSizeDetailListFormMIDc1.EditorTypeName = typeof(POColorSizeDetailDetailFormMIDc).FullName;
            this.poColorSizeDetailListFormMIDc1.BindingSource.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            this.poColorSizeDetailListFormMIDc1.BindingSource.DataSource = from val in this._detail.POColorSizeDetails
                                                                           select val;

            this.poConfirmListForm1.EditorTypeName = typeof(POConfirmDetailForm).FullName;
            this.poConfirmListForm1.BindingSource.DataSource = this._detail.POConfirms;

            if (this._POType == (int)POType.PO)
            {
                this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                btnCustPOFormat.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }

            this.pictureEdit2.Properties.ShowMenu = false;
            this.BindingSource.CurrentChanged += new EventHandler(CurBindingSource_CurrentChanged);
            this.poColorSizeDetailListFormMIDc1.AllowGridEdit = true;
            this.poColorSizeDetailListFormMIDc1.RowChangeAutoSave = false;
            this.poColorSizeDetailListFormMIDc1.Columns_SupAmount.Caption = "Supp Amount(" + this._detail.Currency + ")";
            if (this._POType == (int)POType.PO)
            {
                this.poColorSizeDetailListFormMIDc1.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.poColorSizeDetailListFormMIDc1.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            }


            if (this.PrevForm != null && this.PrevForm.Tag != null && this.PrevForm.Tag.ToString() == "Edit")
            {
                this.OnClickEdit();
            }

            this.poColorSizeDetailListFormMIDc1.IsShowPivotTable = true;
            this.poColorSizeDetailListFormMIDc1.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.poColorSizeDetailListFormMIDc1.RowChangeAutoSave = false;


            #region Xsj 20110329: add
            PH.BasicInfo.BO.DimensionList list = new PH.BasicInfo.BO.DimensionList();
            List<PH.BasicInfo.BO.Dimension> aa = list.GetAllData().ToList();
            this.lookUpEditBuyerQtyDimension.Properties.DataSource = aa;
            this.lookUpEditSuppQtyDimension.Properties.DataSource = aa;

            if (this._detail.MIDcDetail != null)
            {
                //Xsj20110414:从MIDC中取单位转换率
                this._detail.ConversionFactor = this._detail.MIDcDetail.RateToPHUnit.HasValue ? Convert.ToDouble(this._detail.MIDcDetail.RateToPHUnit.Value) : 0;
                //Xsj20110414:从MIDc中取ItemCode，用于显示
                this.textEditItemCode.EditValue = this._detail.MIDcItemCode;
                this._detail.BuyerQtyDimension = this._detail.MIDcDimension;
                this._detail.SuppQtyDimension = this._detail.MIDcDimension;
            }
            #endregion
        }
        public override void EditCurrent()
        {
            base.EditCurrent();
            if (this._detail.BOWorkMode == PH.Platform.BO.Interface.WorkMode.New)
            {
                this.but_supplierReference.Properties.ReadOnly = false;
                _detail.OrderLine = Common.GetOrderLine(this._detail.POHeader.Company, _detail.POHeader.PONO, _detail.POHeader.Version, _detail.POHeader.AmendmentNo);
                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                this._ItemCodes = from c in context.V_MIDcMaterials where c.Supplier == this._Supplier select c;
            }


            if (this._POType == (int)POType.PO)
            {
                this.poColorSizeDetailListFormMIDc1.AllowGridEdit = false;
            }
            else
            {
                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                var Colors = from c in context.V_Colors where c.SupplierReference == this._detail.SupplierReference select c;
                this.poColorSizeDetailListFormMIDc1.ComboBoxEdit.Properties.Items.Clear();
                foreach (PH.POPC.BO.V_Color Item in Colors)
                {
                    this.poColorSizeDetailListFormMIDc1.ComboBoxEdit.Properties.Items.Add(Item.ColorCode.Trim());
                }
                this.poColorSizeDetailListFormMIDc1.AllowGridEdit = true;
            }

            this.poColorSizeDetailListFormMIDc1.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        }



        private void GetPhoto()
        {
            if (_detail != null && _detail.Photo == null)
            {
                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                var photo = (from c in context.V_Photos where c.SupplierReference == this._detail.SupplierReference select c).FirstOrDefault();
                if (photo != null)
                {
                    this.pictureEdit1.EditValue = photo.Photo;
                    this._detail.Photo = photo.Photo;
                }

            }
        }
        private void GetPOPhoto()
        {
            if (this.pictureEdit2.EditValue == null && this._IsClean == false && this._detail != null)
            {
                PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                var photo = (from c in context.PODetailPhotos
                             where c.AmendmentNo == this._detail.AmendmentNo
                             && c.Version == this._detail.Version
                             && c.Company == this._detail.Company
                             && c.PONO == this._detail.PONO
                             && c.OrderLine == this._detail.OrderLine
                             select c).FirstOrDefault();
                if (photo != null)
                {
                    this.pictureEdit2.EditValue = photo.Photo;

                }

            }
        }
        private bool CheckProjectNO()
        {
            bool bln = true;
            if (this._detail == null) return true;

            //檢查Projectno是否有效
            if (this._detail != null && !string.IsNullOrEmpty(this._detail.ProjectNo) && this._ProjectNO != this._detail.ProjectNo)
            {
                string sql = string.Format(@"
select distinct CUSO40 as ProjectNo,ORDN40 as SalesOrderNo
from ault4f1.oep40 
where cono40='P1' and dtlc40=0 and stat40<>'X'  and  CUSO40='{0}'", this._detail.ProjectNo);
                object projectno = PH.POPC.BO.DB.AS400DB.GetScalar(sql);
                if (projectno == null || string.IsNullOrEmpty(projectno.ToString()))
                {
                    bln = false;
                    //this.txtD_ProjectNo.Focus();
                    //this.txtD_WorkOrderNo.Focus();
                    MessageBox.Show("Error ProjectNo");
                }
                else
                {
                    this._ProjectNO = this._detail.ProjectNo;
                }
            }
            return bln;
        }
        private void Save()
        {
            this.poColorSizeDetailListFormMIDc1.Save(this._detail);
            this.pictureEdit2.Properties.ShowMenu = false;

            if (this._detail.PODetailPhoto == null)
            {
                PH.POPC.BO.PODetailPhoto Detailphoto = new PH.POPC.BO.PODetailPhoto();
                Detailphoto.AmendmentNo = this._detail.AmendmentNo;
                Detailphoto.Version = this._detail.Version;
                Detailphoto.Company = this._detail.Company;
                Detailphoto.PONO = this._detail.PONO;
                Detailphoto.OrderLine = this._detail.OrderLine;
                Detailphoto.Photo = (byte[])this.pictureEdit2.EditValue;
                this._detail.PODetailPhoto = Detailphoto;

            }
            else
            {
                PH.POPC.BO.PODetailPhoto Detailphoto = new PH.POPC.BO.PODetailPhoto();
                this._detail.PODetailPhoto.AmendmentNo = this._detail.AmendmentNo;
                this._detail.PODetailPhoto.Version = this._detail.Version;
                this._detail.PODetailPhoto.Company = this._detail.Company;
                this._detail.PODetailPhoto.PONO = this._detail.PONO;
                this._detail.PODetailPhoto.OrderLine = this._detail.OrderLine;
                this._detail.PODetailPhoto.Photo = (byte[])this.pictureEdit2.EditValue;
            }
            this._IsClean = false;
        }
        /// <summary>
        /// 检查ItemCode是否有效
        /// </summary>
        /// <returns></returns>
        private bool CheckItemCode()
        {
            var item = (from cc in this._ItemCodes where cc.ItemCode == this.but_supplierReference.Text select cc).FirstOrDefault();
            if (item == null)
            {
                return false;
            }
            else
            {
                SetValue(item);
                return true;
            }
        }
        private void SetValue(PH.POPC.BO.V_MIDcMaterial item)
        {
            this._detail.SupplierReference = item.SupplierReference;
            //this._detail.ItemCode = item.ItemCode;//this._POType == (int)POType.POSticker ? "111111111" : item.ItemCode;
            //Xsj20110414:取消Itemcode来源于ERP，保留为MaterialType+6个空格。
            this._detail.ItemCode = item.MaterialType.PadRight(9, ' ');// +"      ";
            this._detail.SupplierUom = item.SupplierUom;
            this._detail.PHUom = item.PHUom;
            this._detail.AdditionalCost = item.AdditionalCost;
            this._detail.Commodity = item.Commodity;
            this._detail.Specification = item.SupplierWidths;
            this._detail.SupplierPrice = item.Price;
            this._detail.OrderLine = Common.GetOrderLine(_detail.Company, _detail.PONO, _detail.Version, _detail.AmendmentNo);

            if (this._detail.MIDcDetail != null)
            {
                //Xsj20110414:从MIDC中取单位转换率
                this._detail.ConversionFactor = this._detail.MIDcDetail.RateToPHUnit.HasValue ? Convert.ToDouble(this._detail.MIDcDetail.RateToPHUnit.Value) : 0;
                //Xsj20110414:从MIDc中取ItemCode，用于显示
                this.textEditItemCode.EditValue = this._detail.MIDcItemCode;
                this._detail.BuyerQtyDimension = this._detail.MIDcDimension;
                this._detail.SuppQtyDimension = this._detail.MIDcDimension;
                this._detail.HaveSupplementSheet = this._detail.MaterialTypeDimension == null ? false : this._detail.MaterialTypeDimension.HaveSupplementSheet;
            }
        }



        private void but_supplierReference_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            if (this.but_supplierReference.Properties.ReadOnly == true) return;
            SelectItemCodeFormMIDc frm = new SelectItemCodeFormMIDc(this._ItemCodes);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                SetValue(frm.MIDcMaterial);
            }
        }
        private void but_supplierReference_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && this.IsNew && this.CheckItemCode() == false)
            {
                MessageBox.Show("Error ItemCode ");
                this.but_supplierReference.Focus();
                return;
            }
        }

        private void CurBindingSource_CurrentChanged(object sender, EventArgs e)
        {
            this._detail = this.BindingSource.Current as PH.POPC.BO.PODetail;
            if (this._detail == null || this._detail.ProjectNo == null) return;
            this._ProjectNO = this._detail.ProjectNo;
            GetPhoto();
            GetPOPhoto();
        }
        private void xtraTabControl2_SelectedPageChanging(object sender, DevExpress.XtraTab.TabPageChangingEventArgs e)
        {
            if (e.Page.Text == "Material_Photo")
            {
                this.GetPhoto();
            }
            else if (e.Page.Text == "Marking_Photo")
            {
                this.GetPOPhoto();
            }
        }
        private void loadPhotoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            OpenFileDialog ofd = new OpenFileDialog();
            ofd.Filter = "图片文件(*.jpg,*.gif,*.bmp)|*.jpg;*.gif;*.bmp";
            string FileName = string.Empty;
            if (ofd.ShowDialog() == DialogResult.OK)
            {
                FileName = ofd.FileName;
                if (FileName != string.Empty)
                {
                    using (System.IO.FileStream fs = new System.IO.FileStream(FileName, System.IO.FileMode.Open))
                    {
                        byte[] bt = new byte[(int)fs.Length];
                        fs.Read(bt, 0, (int)fs.Length);
                        this.pictureEdit2.EditValue = bt;
                        this._IsClean = false;
                    }
                }
            }


        }
        private void cleanPhotoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.pictureEdit2.EditValue = null;
            this._IsClean = true;
        }
        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.UI.SelectPoFormat frm = new SelectPoFormat();
            frm.ShowDialog();
            if (frm.DialogResult == DialogResult.OK)
            {
                this.pictureEdit2.EditValue = frm.CustFormat.Photo;
            }
        }


    }
}
