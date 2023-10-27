using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.Drawing;
using System.Windows.Forms;
using PH.MIDc.BO;

namespace PH.MIDc.UI
{
    partial class SampleOrderPODetailForm
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
            PH.Platform.BO.UI_GridViewLayout uI_GridViewLayout1 = new PH.Platform.BO.UI_GridViewLayout();
            this.sampleOrderPOLabel = new DevExpress.XtraEditors.LabelControl();
            this.sampleOrderPOEdit = new DevExpress.XtraEditors.TextEdit();
            this.sampleOrderLabel = new DevExpress.XtraEditors.LabelControl();
            this.sampleOrderEdit = new DevExpress.XtraEditors.TextEdit();
            this.pO_DateLabel = new DevExpress.XtraEditors.LabelControl();
            this.commodityCodeLabel = new DevExpress.XtraEditors.LabelControl();
            this.commodityLabel = new DevExpress.XtraEditors.LabelControl();
            this.supplierCodeLabel = new DevExpress.XtraEditors.LabelControl();
            this.supplierCodeEdit = new DevExpress.XtraEditors.TextEdit();
            this.supplierNameLabel = new DevExpress.XtraEditors.LabelControl();
            this.supplierNameEdit = new DevExpress.XtraEditors.TextEdit();
            this.supplierAddressLabel = new DevExpress.XtraEditors.LabelControl();
            this.supplierAttnLabel = new DevExpress.XtraEditors.LabelControl();
            this.supplierAttnEdit = new DevExpress.XtraEditors.TextEdit();
            this.supplierFaxLabel = new DevExpress.XtraEditors.LabelControl();
            this.supplierFaxEdit = new DevExpress.XtraEditors.TextEdit();
            this.paymentTermLabel = new DevExpress.XtraEditors.LabelControl();
            this.paymentTermEdit = new DevExpress.XtraEditors.TextEdit();
            this.deliveryTermLabel = new DevExpress.XtraEditors.LabelControl();
            this.deliveryTermEdit = new DevExpress.XtraEditors.TextEdit();
            this.shipmentModeLabel = new DevExpress.XtraEditors.LabelControl();
            this.deliveryDateLabel = new DevExpress.XtraEditors.LabelControl();
            this.contractPersonLabel = new DevExpress.XtraEditors.LabelControl();
            this.contractPersonEdit = new DevExpress.XtraEditors.TextEdit();
            this.customerLabel = new DevExpress.XtraEditors.LabelControl();
            this.customerEdit = new DevExpress.XtraEditors.TextEdit();
            this.supplierWidthLabel = new DevExpress.XtraEditors.LabelControl();
            this.supplierWidthEdit = new DevExpress.XtraEditors.TextEdit();
            this.currencyLabel = new DevExpress.XtraEditors.LabelControl();
            this.currencyEdit = new DevExpress.XtraEditors.TextEdit();
            this.additionalTermLabel = new DevExpress.XtraEditors.LabelControl();
            this.printTypeLabel = new DevExpress.XtraEditors.LabelControl();
            this.pOStateLabel = new DevExpress.XtraEditors.LabelControl();
            this.commodityCodeEdit = new DevExpress.XtraEditors.ButtonEdit();
            this.pO_DateEdit = new DevExpress.XtraEditors.DateEdit();
            this.deliveryDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.printTypeEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.pOStateEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.additionalTermEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.supplierAddressEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.commodityEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.dateEdit1 = new DevExpress.XtraEditors.DateEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.dateEdit2 = new DevExpress.XtraEditors.DateEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.SampleOrderPODetailListForm1 = new PH.MIDc.UI.SampleOrderPODetailListForm();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
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
            ((System.ComponentModel.ISupportInitialize)(this.sampleOrderPOEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sampleOrderEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierCodeEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierNameEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierAttnEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierFaxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentTermEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deliveryTermEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.contractPersonEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierWidthEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.currencyEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.commodityCodeEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pO_DateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pO_DateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deliveryDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deliveryDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.printTypeEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pOStateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.additionalTermEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierAddressEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.commodityEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit2.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 268);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.lookUpEdit1);
            this.headerTitleBar.Controls.Add(this.textEdit1);
            this.headerTitleBar.Controls.Add(this.labelControl3);
            this.headerTitleBar.Controls.Add(this.dateEdit2);
            this.headerTitleBar.Controls.Add(this.labelControl2);
            this.headerTitleBar.Controls.Add(this.dateEdit1);
            this.headerTitleBar.Controls.Add(this.labelControl1);
            this.headerTitleBar.Controls.Add(this.commodityEdit);
            this.headerTitleBar.Controls.Add(this.supplierAddressEdit);
            this.headerTitleBar.Controls.Add(this.additionalTermEdit);
            this.headerTitleBar.Controls.Add(this.pOStateEdit);
            this.headerTitleBar.Controls.Add(this.printTypeEdit);
            this.headerTitleBar.Controls.Add(this.deliveryDateEdit);
            this.headerTitleBar.Controls.Add(this.pO_DateEdit);
            this.headerTitleBar.Controls.Add(this.commodityCodeEdit);
            this.headerTitleBar.Controls.Add(this.pOStateLabel);
            this.headerTitleBar.Controls.Add(this.printTypeLabel);
            this.headerTitleBar.Controls.Add(this.additionalTermLabel);
            this.headerTitleBar.Controls.Add(this.currencyEdit);
            this.headerTitleBar.Controls.Add(this.currencyLabel);
            this.headerTitleBar.Controls.Add(this.supplierWidthEdit);
            this.headerTitleBar.Controls.Add(this.supplierWidthLabel);
            this.headerTitleBar.Controls.Add(this.customerEdit);
            this.headerTitleBar.Controls.Add(this.customerLabel);
            this.headerTitleBar.Controls.Add(this.contractPersonEdit);
            this.headerTitleBar.Controls.Add(this.contractPersonLabel);
            this.headerTitleBar.Controls.Add(this.deliveryDateLabel);
            this.headerTitleBar.Controls.Add(this.shipmentModeLabel);
            this.headerTitleBar.Controls.Add(this.deliveryTermEdit);
            this.headerTitleBar.Controls.Add(this.deliveryTermLabel);
            this.headerTitleBar.Controls.Add(this.paymentTermEdit);
            this.headerTitleBar.Controls.Add(this.paymentTermLabel);
            this.headerTitleBar.Controls.Add(this.supplierFaxEdit);
            this.headerTitleBar.Controls.Add(this.supplierFaxLabel);
            this.headerTitleBar.Controls.Add(this.supplierAttnEdit);
            this.headerTitleBar.Controls.Add(this.supplierAttnLabel);
            this.headerTitleBar.Controls.Add(this.supplierAddressLabel);
            this.headerTitleBar.Controls.Add(this.supplierNameEdit);
            this.headerTitleBar.Controls.Add(this.supplierNameLabel);
            this.headerTitleBar.Controls.Add(this.supplierCodeEdit);
            this.headerTitleBar.Controls.Add(this.supplierCodeLabel);
            this.headerTitleBar.Controls.Add(this.commodityLabel);
            this.headerTitleBar.Controls.Add(this.commodityCodeLabel);
            this.headerTitleBar.Controls.Add(this.pO_DateLabel);
            this.headerTitleBar.Controls.Add(this.sampleOrderEdit);
            this.headerTitleBar.Controls.Add(this.sampleOrderLabel);
            this.headerTitleBar.Controls.Add(this.sampleOrderPOEdit);
            this.headerTitleBar.Controls.Add(this.sampleOrderPOLabel);
            this.headerTitleBar.Size = new System.Drawing.Size(809, 242);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sampleOrderPOLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sampleOrderPOEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sampleOrderLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sampleOrderEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.pO_DateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.commodityCodeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.commodityLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierCodeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierCodeEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierNameLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierNameEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierAddressLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierAttnLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierAttnEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierFaxLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierFaxEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.paymentTermLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.paymentTermEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.deliveryTermLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.deliveryTermEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.shipmentModeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.deliveryDateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.contractPersonLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.contractPersonEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.customerLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.customerEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierWidthLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierWidthEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.currencyLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.currencyEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.additionalTermLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.printTypeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.pOStateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.commodityCodeEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.pO_DateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.deliveryDateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.printTypeEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.pOStateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.additionalTermEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.supplierAddressEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.commodityEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.dateEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.dateEdit2, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.labelControl3, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.textEdit1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.lookUpEdit1, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 274);
            this.panelControl1.Size = new System.Drawing.Size(809, 234);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.SampleOrderPODetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(796, 198);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(805, 230);
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.SampleOrderPO);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(930, 0);
            // 
            // sampleOrderPOLabel
            // 
            this.sampleOrderPOLabel.Appearance.Options.UseTextOptions = true;
            this.sampleOrderPOLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.sampleOrderPOLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.sampleOrderPOLabel.Location = new System.Drawing.Point(2, 24);
            this.sampleOrderPOLabel.Name = "sampleOrderPOLabel";
            this.sampleOrderPOLabel.Size = new System.Drawing.Size(113, 14);
            this.sampleOrderPOLabel.TabIndex = 0;
            this.sampleOrderPOLabel.Text = "Sample Order PONo:";
            // 
            // sampleOrderPOEdit
            // 
            this.sampleOrderPOEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SampleOrderPONo", true));
            this.sampleOrderPOEdit.Location = new System.Drawing.Point(120, 24);
            this.sampleOrderPOEdit.Name = "sampleOrderPOEdit";
            this.sampleOrderPOEdit.Properties.ReadOnly = true;
            this.sampleOrderPOEdit.Size = new System.Drawing.Size(150, 21);
            this.sampleOrderPOEdit.TabIndex = 1;
            this.sampleOrderPOEdit.Tag = "SampleOrderPONo";
            this.sampleOrderPOEdit.Leave += new System.EventHandler(this.sampleOrderPOEdit_Leave);
            // 
            // sampleOrderLabel
            // 
            this.sampleOrderLabel.Appearance.Options.UseTextOptions = true;
            this.sampleOrderLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.sampleOrderLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.sampleOrderLabel.Location = new System.Drawing.Point(539, 24);
            this.sampleOrderLabel.Name = "sampleOrderLabel";
            this.sampleOrderLabel.Size = new System.Drawing.Size(103, 14);
            this.sampleOrderLabel.TabIndex = 2;
            this.sampleOrderLabel.Text = "Sample Order:";
            // 
            // sampleOrderEdit
            // 
            this.sampleOrderEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SampleOrderNo", true));
            this.sampleOrderEdit.Location = new System.Drawing.Point(654, 24);
            this.sampleOrderEdit.Name = "sampleOrderEdit";
            this.sampleOrderEdit.Properties.ReadOnly = true;
            this.sampleOrderEdit.Size = new System.Drawing.Size(150, 21);
            this.sampleOrderEdit.TabIndex = 3;
            this.sampleOrderEdit.Tag = "SampleOrderNo";
            // 
            // pO_DateLabel
            // 
            this.pO_DateLabel.Appearance.Options.UseTextOptions = true;
            this.pO_DateLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.pO_DateLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.pO_DateLabel.Location = new System.Drawing.Point(288, 24);
            this.pO_DateLabel.Name = "pO_DateLabel";
            this.pO_DateLabel.Size = new System.Drawing.Size(89, 14);
            this.pO_DateLabel.TabIndex = 4;
            this.pO_DateLabel.Text = "PO_Date:";
            // 
            // commodityCodeLabel
            // 
            this.commodityCodeLabel.Appearance.Options.UseTextOptions = true;
            this.commodityCodeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.commodityCodeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.commodityCodeLabel.Location = new System.Drawing.Point(2, 50);
            this.commodityCodeLabel.Name = "commodityCodeLabel";
            this.commodityCodeLabel.Size = new System.Drawing.Size(113, 14);
            this.commodityCodeLabel.TabIndex = 6;
            this.commodityCodeLabel.Text = "CommodityCode:";
            // 
            // commodityLabel
            // 
            this.commodityLabel.Appearance.Options.UseTextOptions = true;
            this.commodityLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.commodityLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.commodityLabel.Location = new System.Drawing.Point(288, 51);
            this.commodityLabel.Name = "commodityLabel";
            this.commodityLabel.Size = new System.Drawing.Size(89, 14);
            this.commodityLabel.TabIndex = 8;
            this.commodityLabel.Text = "Commodity:";
            // 
            // supplierCodeLabel
            // 
            this.supplierCodeLabel.Appearance.Options.UseTextOptions = true;
            this.supplierCodeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.supplierCodeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.supplierCodeLabel.Location = new System.Drawing.Point(2, 78);
            this.supplierCodeLabel.Name = "supplierCodeLabel";
            this.supplierCodeLabel.Size = new System.Drawing.Size(113, 14);
            this.supplierCodeLabel.TabIndex = 10;
            this.supplierCodeLabel.Text = "Supplier:";
            // 
            // supplierCodeEdit
            // 
            this.supplierCodeEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierCode", true));
            this.supplierCodeEdit.Location = new System.Drawing.Point(120, 78);
            this.supplierCodeEdit.Name = "supplierCodeEdit";
            this.supplierCodeEdit.Properties.ReadOnly = true;
            this.supplierCodeEdit.Size = new System.Drawing.Size(150, 21);
            this.supplierCodeEdit.TabIndex = 11;
            this.supplierCodeEdit.Tag = "SupplierCode";
            this.supplierCodeEdit.EditValueChanged += new System.EventHandler(this.supplierCodeEdit_EditValueChanged);
            // 
            // supplierNameLabel
            // 
            this.supplierNameLabel.Appearance.Options.UseTextOptions = true;
            this.supplierNameLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.supplierNameLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.supplierNameLabel.Location = new System.Drawing.Point(2, 105);
            this.supplierNameLabel.Name = "supplierNameLabel";
            this.supplierNameLabel.Size = new System.Drawing.Size(113, 14);
            this.supplierNameLabel.TabIndex = 12;
            this.supplierNameLabel.Text = "SupplierName:";
            // 
            // supplierNameEdit
            // 
            this.supplierNameEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierName", true));
            this.supplierNameEdit.Location = new System.Drawing.Point(120, 105);
            this.supplierNameEdit.Name = "supplierNameEdit";
            this.supplierNameEdit.Properties.ReadOnly = true;
            this.supplierNameEdit.Size = new System.Drawing.Size(150, 21);
            this.supplierNameEdit.TabIndex = 13;
            this.supplierNameEdit.Tag = "SupplierName";
            // 
            // supplierAddressLabel
            // 
            this.supplierAddressLabel.Appearance.Options.UseTextOptions = true;
            this.supplierAddressLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.supplierAddressLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.supplierAddressLabel.Location = new System.Drawing.Point(276, 78);
            this.supplierAddressLabel.Name = "supplierAddressLabel";
            this.supplierAddressLabel.Size = new System.Drawing.Size(101, 14);
            this.supplierAddressLabel.TabIndex = 14;
            this.supplierAddressLabel.Text = "SupplierAddress:";
            // 
            // supplierAttnLabel
            // 
            this.supplierAttnLabel.Appearance.Options.UseTextOptions = true;
            this.supplierAttnLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.supplierAttnLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.supplierAttnLabel.Location = new System.Drawing.Point(539, 78);
            this.supplierAttnLabel.Name = "supplierAttnLabel";
            this.supplierAttnLabel.Size = new System.Drawing.Size(103, 14);
            this.supplierAttnLabel.TabIndex = 16;
            this.supplierAttnLabel.Text = "SupplierAttn:";
            // 
            // supplierAttnEdit
            // 
            this.supplierAttnEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierAttn", true));
            this.supplierAttnEdit.Location = new System.Drawing.Point(654, 78);
            this.supplierAttnEdit.Name = "supplierAttnEdit";
            this.supplierAttnEdit.Properties.ReadOnly = true;
            this.supplierAttnEdit.Size = new System.Drawing.Size(150, 21);
            this.supplierAttnEdit.TabIndex = 17;
            this.supplierAttnEdit.Tag = "SupplierAttn";
            // 
            // supplierFaxLabel
            // 
            this.supplierFaxLabel.Appearance.Options.UseTextOptions = true;
            this.supplierFaxLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.supplierFaxLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.supplierFaxLabel.Location = new System.Drawing.Point(2, 132);
            this.supplierFaxLabel.Name = "supplierFaxLabel";
            this.supplierFaxLabel.Size = new System.Drawing.Size(113, 14);
            this.supplierFaxLabel.TabIndex = 18;
            this.supplierFaxLabel.Text = "SupplierFax:";
            // 
            // supplierFaxEdit
            // 
            this.supplierFaxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierFax", true));
            this.supplierFaxEdit.Location = new System.Drawing.Point(120, 132);
            this.supplierFaxEdit.Name = "supplierFaxEdit";
            this.supplierFaxEdit.Properties.ReadOnly = true;
            this.supplierFaxEdit.Size = new System.Drawing.Size(150, 21);
            this.supplierFaxEdit.TabIndex = 19;
            this.supplierFaxEdit.Tag = "SupplierFax";
            // 
            // paymentTermLabel
            // 
            this.paymentTermLabel.Appearance.Options.UseTextOptions = true;
            this.paymentTermLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.paymentTermLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.paymentTermLabel.Location = new System.Drawing.Point(288, 105);
            this.paymentTermLabel.Name = "paymentTermLabel";
            this.paymentTermLabel.Size = new System.Drawing.Size(89, 14);
            this.paymentTermLabel.TabIndex = 20;
            this.paymentTermLabel.Text = "PaymentTerm:";
            // 
            // paymentTermEdit
            // 
            this.paymentTermEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PaymentTerm", true));
            this.paymentTermEdit.Location = new System.Drawing.Point(383, 105);
            this.paymentTermEdit.Name = "paymentTermEdit";
            this.paymentTermEdit.Properties.ReadOnly = true;
            this.paymentTermEdit.Size = new System.Drawing.Size(150, 21);
            this.paymentTermEdit.TabIndex = 21;
            this.paymentTermEdit.Tag = "PaymentTerm";
            // 
            // deliveryTermLabel
            // 
            this.deliveryTermLabel.Appearance.Options.UseTextOptions = true;
            this.deliveryTermLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.deliveryTermLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.deliveryTermLabel.Location = new System.Drawing.Point(539, 105);
            this.deliveryTermLabel.Name = "deliveryTermLabel";
            this.deliveryTermLabel.Size = new System.Drawing.Size(103, 14);
            this.deliveryTermLabel.TabIndex = 22;
            this.deliveryTermLabel.Text = "DeliveryTerm:";
            // 
            // deliveryTermEdit
            // 
            this.deliveryTermEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DeliveryTerm", true));
            this.deliveryTermEdit.Location = new System.Drawing.Point(654, 105);
            this.deliveryTermEdit.Name = "deliveryTermEdit";
            this.deliveryTermEdit.Properties.ReadOnly = true;
            this.deliveryTermEdit.Size = new System.Drawing.Size(150, 21);
            this.deliveryTermEdit.TabIndex = 23;
            this.deliveryTermEdit.Tag = "DeliveryTerm";
            // 
            // shipmentModeLabel
            // 
            this.shipmentModeLabel.Appearance.Options.UseTextOptions = true;
            this.shipmentModeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.shipmentModeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.shipmentModeLabel.Location = new System.Drawing.Point(2, 185);
            this.shipmentModeLabel.Name = "shipmentModeLabel";
            this.shipmentModeLabel.Size = new System.Drawing.Size(113, 14);
            this.shipmentModeLabel.TabIndex = 24;
            this.shipmentModeLabel.Text = "Ship Mode:";
            // 
            // deliveryDateLabel
            // 
            this.deliveryDateLabel.Appearance.Options.UseTextOptions = true;
            this.deliveryDateLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.deliveryDateLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.deliveryDateLabel.Location = new System.Drawing.Point(288, 159);
            this.deliveryDateLabel.Name = "deliveryDateLabel";
            this.deliveryDateLabel.Size = new System.Drawing.Size(89, 14);
            this.deliveryDateLabel.TabIndex = 26;
            this.deliveryDateLabel.Text = "DeliveryDate:";
            // 
            // contractPersonLabel
            // 
            this.contractPersonLabel.Appearance.Options.UseTextOptions = true;
            this.contractPersonLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.contractPersonLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.contractPersonLabel.Location = new System.Drawing.Point(539, 159);
            this.contractPersonLabel.Name = "contractPersonLabel";
            this.contractPersonLabel.Size = new System.Drawing.Size(103, 14);
            this.contractPersonLabel.TabIndex = 28;
            this.contractPersonLabel.Text = "ContractPerson:";
            // 
            // contractPersonEdit
            // 
            this.contractPersonEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ContractPerson", true));
            this.contractPersonEdit.Location = new System.Drawing.Point(654, 159);
            this.contractPersonEdit.Name = "contractPersonEdit";
            this.contractPersonEdit.Size = new System.Drawing.Size(150, 21);
            this.contractPersonEdit.TabIndex = 29;
            this.contractPersonEdit.Tag = "ContractPerson";
            // 
            // customerLabel
            // 
            this.customerLabel.Appearance.Options.UseTextOptions = true;
            this.customerLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.customerLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.customerLabel.Location = new System.Drawing.Point(2, 212);
            this.customerLabel.Name = "customerLabel";
            this.customerLabel.Size = new System.Drawing.Size(113, 14);
            this.customerLabel.TabIndex = 30;
            this.customerLabel.Text = "Customer:";
            // 
            // customerEdit
            // 
            this.customerEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Customer", true));
            this.customerEdit.Location = new System.Drawing.Point(120, 212);
            this.customerEdit.Name = "customerEdit";
            this.customerEdit.Size = new System.Drawing.Size(150, 21);
            this.customerEdit.TabIndex = 31;
            this.customerEdit.Tag = "Customer";
            // 
            // supplierWidthLabel
            // 
            this.supplierWidthLabel.Appearance.Options.UseTextOptions = true;
            this.supplierWidthLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.supplierWidthLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.supplierWidthLabel.Location = new System.Drawing.Point(288, 132);
            this.supplierWidthLabel.Name = "supplierWidthLabel";
            this.supplierWidthLabel.Size = new System.Drawing.Size(89, 14);
            this.supplierWidthLabel.TabIndex = 32;
            this.supplierWidthLabel.Text = "SupplierWidth:";
            // 
            // supplierWidthEdit
            // 
            this.supplierWidthEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierWidth", true));
            this.supplierWidthEdit.Location = new System.Drawing.Point(383, 132);
            this.supplierWidthEdit.Name = "supplierWidthEdit";
            this.supplierWidthEdit.Properties.ReadOnly = true;
            this.supplierWidthEdit.Size = new System.Drawing.Size(150, 21);
            this.supplierWidthEdit.TabIndex = 33;
            this.supplierWidthEdit.Tag = "SupplierWidth";
            // 
            // currencyLabel
            // 
            this.currencyLabel.Appearance.Options.UseTextOptions = true;
            this.currencyLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.currencyLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.currencyLabel.Location = new System.Drawing.Point(539, 131);
            this.currencyLabel.Name = "currencyLabel";
            this.currencyLabel.Size = new System.Drawing.Size(103, 14);
            this.currencyLabel.TabIndex = 34;
            this.currencyLabel.Text = "Currency:";
            // 
            // currencyEdit
            // 
            this.currencyEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Currency", true));
            this.currencyEdit.Location = new System.Drawing.Point(654, 131);
            this.currencyEdit.Name = "currencyEdit";
            this.currencyEdit.Properties.ReadOnly = true;
            this.currencyEdit.Size = new System.Drawing.Size(150, 21);
            this.currencyEdit.TabIndex = 35;
            this.currencyEdit.Tag = "Currency";
            // 
            // additionalTermLabel
            // 
            this.additionalTermLabel.Appearance.Options.UseTextOptions = true;
            this.additionalTermLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.additionalTermLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.additionalTermLabel.Location = new System.Drawing.Point(539, 54);
            this.additionalTermLabel.Name = "additionalTermLabel";
            this.additionalTermLabel.Size = new System.Drawing.Size(103, 14);
            this.additionalTermLabel.TabIndex = 36;
            this.additionalTermLabel.Text = "AdditionalTerm:";
            // 
            // printTypeLabel
            // 
            this.printTypeLabel.Appearance.Options.UseTextOptions = true;
            this.printTypeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.printTypeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.printTypeLabel.Location = new System.Drawing.Point(288, 186);
            this.printTypeLabel.Name = "printTypeLabel";
            this.printTypeLabel.Size = new System.Drawing.Size(89, 14);
            this.printTypeLabel.TabIndex = 38;
            this.printTypeLabel.Text = "PrintType:";
            // 
            // pOStateLabel
            // 
            this.pOStateLabel.Appearance.Options.UseTextOptions = true;
            this.pOStateLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.pOStateLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.pOStateLabel.Location = new System.Drawing.Point(539, 186);
            this.pOStateLabel.Name = "pOStateLabel";
            this.pOStateLabel.Size = new System.Drawing.Size(103, 14);
            this.pOStateLabel.TabIndex = 40;
            this.pOStateLabel.Text = "POState:";
            // 
            // commodityCodeEdit
            // 
            this.commodityCodeEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CommodityCode", true));
            this.commodityCodeEdit.Location = new System.Drawing.Point(120, 51);
            this.commodityCodeEdit.Name = "commodityCodeEdit";
            this.commodityCodeEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.commodityCodeEdit.Properties.ValidateOnEnterKey = true;
            this.commodityCodeEdit.Properties.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.buttonEdit1_Properties_ButtonClick);
            this.commodityCodeEdit.Size = new System.Drawing.Size(150, 21);
            this.commodityCodeEdit.TabIndex = 42;
            this.commodityCodeEdit.Tag = "CommodityCode";
            // 
            // pO_DateEdit
            // 
            this.pO_DateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PO_Date", true));
            this.pO_DateEdit.EditValue = null;
            this.pO_DateEdit.Location = new System.Drawing.Point(383, 24);
            this.pO_DateEdit.Name = "pO_DateEdit";
            this.pO_DateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.pO_DateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.pO_DateEdit.Size = new System.Drawing.Size(150, 21);
            this.pO_DateEdit.TabIndex = 43;
            this.pO_DateEdit.Tag = "PO_Date";
            // 
            // deliveryDateEdit
            // 
            this.deliveryDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DeliveryDate", true));
            this.deliveryDateEdit.EditValue = "";
            this.deliveryDateEdit.Location = new System.Drawing.Point(383, 159);
            this.deliveryDateEdit.Name = "deliveryDateEdit";
            this.deliveryDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.deliveryDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.deliveryDateEdit.Size = new System.Drawing.Size(150, 21);
            this.deliveryDateEdit.TabIndex = 44;
            this.deliveryDateEdit.Tag = "DeliveryDate";
            // 
            // printTypeEdit
            // 
            this.printTypeEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PrintType", true));
            this.printTypeEdit.EditValue = "SKU";
            this.printTypeEdit.Location = new System.Drawing.Point(383, 186);
            this.printTypeEdit.Name = "printTypeEdit";
            this.printTypeEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.printTypeEdit.Properties.Items.AddRange(new object[] {
            "SKU",
            "Color"});
            this.printTypeEdit.Size = new System.Drawing.Size(150, 21);
            this.printTypeEdit.TabIndex = 45;
            this.printTypeEdit.Tag = "PrintType";
            // 
            // pOStateEdit
            // 
            this.pOStateEdit.AllowDrop = true;
            this.pOStateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "POState", true));
            this.pOStateEdit.EditValue = "";
            this.pOStateEdit.Location = new System.Drawing.Point(654, 186);
            this.pOStateEdit.Name = "pOStateEdit";
            this.pOStateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.pOStateEdit.Properties.Items.AddRange(new object[] {
            "",
            "Completed",
            "Cancelled"});
            this.pOStateEdit.Size = new System.Drawing.Size(150, 21);
            this.pOStateEdit.TabIndex = 46;
            this.pOStateEdit.Tag = "POState";
            // 
            // additionalTermEdit
            // 
            this.additionalTermEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AdditionalTerm", true));
            this.additionalTermEdit.Location = new System.Drawing.Point(654, 50);
            this.additionalTermEdit.Name = "additionalTermEdit";
            this.additionalTermEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.additionalTermEdit.Properties.ReadOnly = true;
            this.additionalTermEdit.Size = new System.Drawing.Size(150, 21);
            this.additionalTermEdit.TabIndex = 47;
            this.additionalTermEdit.Tag = "AdditionalTerm";
            // 
            // supplierAddressEdit
            // 
            this.supplierAddressEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierAddress", true));
            this.supplierAddressEdit.Location = new System.Drawing.Point(383, 77);
            this.supplierAddressEdit.Name = "supplierAddressEdit";
            this.supplierAddressEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.supplierAddressEdit.Properties.ReadOnly = true;
            this.supplierAddressEdit.Size = new System.Drawing.Size(150, 21);
            this.supplierAddressEdit.TabIndex = 69;
            this.supplierAddressEdit.Tag = "SupplierAddress";
            // 
            // commodityEdit
            // 
            this.commodityEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Commodity", true));
            this.commodityEdit.Location = new System.Drawing.Point(383, 51);
            this.commodityEdit.Name = "commodityEdit";
            this.commodityEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.commodityEdit.Properties.ReadOnly = true;
            this.commodityEdit.Size = new System.Drawing.Size(150, 21);
            this.commodityEdit.TabIndex = 70;
            this.commodityEdit.Tag = "Commodity";
            // 
            // dateEdit1
            // 
            this.dateEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReadyDate", true));
            this.dateEdit1.EditValue = "";
            this.dateEdit1.Location = new System.Drawing.Point(383, 212);
            this.dateEdit1.Name = "dateEdit1";
            this.dateEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit1.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit1.Size = new System.Drawing.Size(150, 21);
            this.dateEdit1.TabIndex = 72;
            this.dateEdit1.Tag = "ReadyDate";
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Options.UseTextOptions = true;
            this.labelControl1.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl1.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl1.Location = new System.Drawing.Point(288, 212);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(89, 14);
            this.labelControl1.TabIndex = 71;
            this.labelControl1.Text = "Ready Date:";
            // 
            // dateEdit2
            // 
            this.dateEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ReceivedDate", true));
            this.dateEdit2.EditValue = "";
            this.dateEdit2.Location = new System.Drawing.Point(654, 212);
            this.dateEdit2.Name = "dateEdit2";
            this.dateEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.dateEdit2.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.dateEdit2.Size = new System.Drawing.Size(150, 21);
            this.dateEdit2.TabIndex = 74;
            this.dateEdit2.Tag = "ReceivedDate";
            // 
            // labelControl2
            // 
            this.labelControl2.Appearance.Options.UseTextOptions = true;
            this.labelControl2.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl2.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl2.Location = new System.Drawing.Point(539, 212);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(103, 14);
            this.labelControl2.TabIndex = 73;
            this.labelControl2.Text = "Received Date:";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierUnit", true));
            this.textEdit1.Location = new System.Drawing.Point(120, 159);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.ReadOnly = true;
            this.textEdit1.Size = new System.Drawing.Size(150, 21);
            this.textEdit1.TabIndex = 76;
            this.textEdit1.Tag = "SupplierUnit";
            // 
            // labelControl3
            // 
            this.labelControl3.Appearance.Options.UseTextOptions = true;
            this.labelControl3.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.labelControl3.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.labelControl3.Location = new System.Drawing.Point(2, 159);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(113, 14);
            this.labelControl3.TabIndex = 75;
            this.labelControl3.Text = "Supplier Unit:";
            // 
            // SampleOrderPODetailListForm1
            // 
            this.SampleOrderPODetailListForm1.AllowAddRow = true;
            this.SampleOrderPODetailListForm1.AllowGridEdit = true;
            this.SampleOrderPODetailListForm1.AutoOpenDetailForm = false;
            this.SampleOrderPODetailListForm1.DataContext = null;
            this.SampleOrderPODetailListForm1.DataSource = null;
            this.SampleOrderPODetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.SampleOrderPODetailListForm1.EditorTypeName = "PH.MIDc.UI.SampleOrderPODetailDetailForm";
            this.SampleOrderPODetailListForm1.FileID = null;
            this.SampleOrderPODetailListForm1.FirstForm = null;
            this.SampleOrderPODetailListForm1.FormName = "SampleOrderPODetailListForm";
            this.SampleOrderPODetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.SampleOrderPODetailListForm1.FormTitle = "PH.MIDc.UI.SampleOrderPODetailListForm";
            this.SampleOrderPODetailListForm1.IsCancelList = false;
            this.SampleOrderPODetailListForm1.IsShowPivotTable = false;
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
            this.SampleOrderPODetailListForm1.LayoutData = uI_GridViewLayout1;
            this.SampleOrderPODetailListForm1.LayoutName = null;
            this.SampleOrderPODetailListForm1.ListForm = null;
            this.SampleOrderPODetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.SampleOrderPODetailListForm1.MenuID = ((long)(0));
            this.SampleOrderPODetailListForm1.Name = "SampleOrderPODetailListForm1";
            this.SampleOrderPODetailListForm1.NextForm = null;
            this.SampleOrderPODetailListForm1.ParentForm = null;
            this.SampleOrderPODetailListForm1.PrevForm = null;
            this.SampleOrderPODetailListForm1.RowChangeAutoSave = false;
            this.SampleOrderPODetailListForm1.ShowMultiCheck = false;
            this.SampleOrderPODetailListForm1.SideProgramID = null;
            this.SampleOrderPODetailListForm1.Size = new System.Drawing.Size(796, 198);
            this.PlatetoolTipController.SetSuperTip(this.SampleOrderPODetailListForm1, null);
            this.SampleOrderPODetailListForm1.TabControls = null;
            this.SampleOrderPODetailListForm1.TabIndex = 0;
            this.SampleOrderPODetailListForm1.TabPage = null;
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ShipmentMode", true));
            this.lookUpEdit1.Location = new System.Drawing.Point(120, 185);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Size = new System.Drawing.Size(150, 21);
            this.lookUpEdit1.TabIndex = 77;
            this.lookUpEdit1.Tag = "ShipmentMode";
            // 
            // SampleOrderPODetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "SampleOrderPODetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SampleOrderPODetailForm_Load);
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
            ((System.ComponentModel.ISupportInitialize)(this.sampleOrderPOEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sampleOrderEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierCodeEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierNameEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierAttnEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierFaxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.paymentTermEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deliveryTermEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.contractPersonEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierWidthEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.currencyEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.commodityCodeEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pO_DateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pO_DateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deliveryDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deliveryDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.printTypeEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pOStateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.additionalTermEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierAddressEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.commodityEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit2.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dateEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private SampleOrderPODetailListForm SampleOrderPODetailListForm1;

        private DevExpress.XtraEditors.ComboBoxEdit printTypeEdit;
        private DevExpress.XtraEditors.DateEdit deliveryDateEdit;
        private DevExpress.XtraEditors.DateEdit pO_DateEdit;
        private DevExpress.XtraEditors.ComboBoxEdit pOStateEdit;
        private DevExpress.XtraEditors.MemoExEdit additionalTermEdit;
        private DevExpress.XtraEditors.MemoExEdit supplierAddressEdit;
        private DevExpress.XtraEditors.MemoExEdit commodityEdit;
        private DevExpress.XtraEditors.DateEdit dateEdit2;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.DateEdit dateEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.LabelControl labelControl3;

        private DevExpress.XtraEditors.LabelControl sampleOrderPOLabel;
        private DevExpress.XtraEditors.TextEdit sampleOrderPOEdit;
        private DevExpress.XtraEditors.LabelControl sampleOrderLabel;
        private DevExpress.XtraEditors.TextEdit sampleOrderEdit;
        private DevExpress.XtraEditors.LabelControl pO_DateLabel;
        private DevExpress.XtraEditors.LabelControl commodityCodeLabel;
        private DevExpress.XtraEditors.LabelControl commodityLabel;
        private DevExpress.XtraEditors.LabelControl supplierCodeLabel;
        private DevExpress.XtraEditors.TextEdit supplierCodeEdit;
        private DevExpress.XtraEditors.LabelControl supplierNameLabel;
        private DevExpress.XtraEditors.TextEdit supplierNameEdit;
        private DevExpress.XtraEditors.LabelControl supplierAddressLabel;
        private DevExpress.XtraEditors.LabelControl supplierAttnLabel;
        private DevExpress.XtraEditors.TextEdit supplierAttnEdit;
        private DevExpress.XtraEditors.LabelControl supplierFaxLabel;
        private DevExpress.XtraEditors.TextEdit supplierFaxEdit;
        private DevExpress.XtraEditors.LabelControl paymentTermLabel;
        private DevExpress.XtraEditors.TextEdit paymentTermEdit;
        private DevExpress.XtraEditors.LabelControl deliveryTermLabel;
        private DevExpress.XtraEditors.TextEdit deliveryTermEdit;
        private DevExpress.XtraEditors.LabelControl shipmentModeLabel;

        private DevExpress.XtraEditors.LabelControl deliveryDateLabel;
        private DevExpress.XtraEditors.LabelControl contractPersonLabel;
        private DevExpress.XtraEditors.TextEdit contractPersonEdit;
        private DevExpress.XtraEditors.LabelControl customerLabel;
        private DevExpress.XtraEditors.TextEdit customerEdit;
        private DevExpress.XtraEditors.LabelControl supplierWidthLabel;
        private DevExpress.XtraEditors.TextEdit supplierWidthEdit;
        private DevExpress.XtraEditors.LabelControl currencyLabel;
        private DevExpress.XtraEditors.TextEdit currencyEdit;
        private DevExpress.XtraEditors.LabelControl additionalTermLabel;
        private DevExpress.XtraEditors.LabelControl printTypeLabel;
        private DevExpress.XtraEditors.LabelControl pOStateLabel;
        private DevExpress.XtraEditors.ButtonEdit commodityCodeEdit;

        

        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;



    }
}
