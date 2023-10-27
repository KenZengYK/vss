namespace PH.RWO.UI
{
    partial class StylePackingDetailEditForm
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
            System.Windows.Forms.Label cupRangeLabel;
            this.mRGroupLabel = new System.Windows.Forms.Label();
            this.mRGroupComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.mRCodeLabel = new System.Windows.Forms.Label();
            this.mRCodeComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.mRTypeLabel = new System.Windows.Forms.Label();
            this.mRTypeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.pHMaterialLabel = new System.Windows.Forms.Label();
            this.pHMaterialTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.suppRefLabel = new System.Windows.Forms.Label();
            this.suppRefTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.specificationsLabel = new System.Windows.Forms.Label();
            this.specificationsTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.qtyPerLabel = new System.Windows.Forms.Label();
            this.qtyPerSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.pHUnitLabel = new System.Windows.Forms.Label();
            this.pHUnitTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.wastageOnCACLabel = new System.Windows.Forms.Label();
            this.wastageOnCACSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.supplierLabel = new System.Windows.Forms.Label();
            this.supplierTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.currencyLabel = new System.Windows.Forms.Label();
            this.currencyTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.unitPriceLabel = new System.Windows.Forms.Label();
            this.unitPriceSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.uOMLabel = new System.Windows.Forms.Label();
            this.uOMTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.exRateLabel = new System.Windows.Forms.Label();
            this.exRateSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.allInPriceLabel = new System.Windows.Forms.Label();
            this.allInPriceSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.minOrderLabel = new System.Windows.Forms.Label();
            this.minOrderTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.colorRangeLabel = new System.Windows.Forms.Label();
            this.colorRangeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sizeRangeLabel = new System.Windows.Forms.Label();
            this.sizeRangeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.cupRangeTextEdit = new DevExpress.XtraEditors.TextEdit();
            cupRangeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mRGroupComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mRCodeComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mRTypeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHMaterialTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.specificationsTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyPerSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHUnitTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.wastageOnCACSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.currencyTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.unitPriceSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.uOMTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.exRateSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.allInPriceSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.minOrderTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorRangeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sizeRangeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupRangeTextEdit.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.PackagingMaterial);
            // 
            // mRGroupLabel
            // 
            this.mRGroupLabel.Location = new System.Drawing.Point(30, 37);
            this.mRGroupLabel.Name = "mRGroupLabel";
            this.mRGroupLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.mRGroupLabel, null);
            this.mRGroupLabel.TabIndex = 4;
            this.mRGroupLabel.Text = "MRGroup:";
            this.mRGroupLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // mRGroupComboBoxEdit
            // 
            this.mRGroupComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MRGroup", true));
            this.mRGroupComboBoxEdit.Location = new System.Drawing.Point(148, 32);
            this.mRGroupComboBoxEdit.Name = "mRGroupComboBoxEdit";
            this.mRGroupComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.mRGroupComboBoxEdit.Size = new System.Drawing.Size(100, 21);
            this.mRGroupComboBoxEdit.TabIndex = 5;
            // 
            // mRCodeLabel
            // 
            this.mRCodeLabel.Location = new System.Drawing.Point(30, 62);
            this.mRCodeLabel.Name = "mRCodeLabel";
            this.mRCodeLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.mRCodeLabel, null);
            this.mRCodeLabel.TabIndex = 6;
            this.mRCodeLabel.Text = "MRCode:";
            this.mRCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // mRCodeComboBoxEdit
            // 
            this.mRCodeComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MRCode", true));
            this.mRCodeComboBoxEdit.Location = new System.Drawing.Point(148, 59);
            this.mRCodeComboBoxEdit.Name = "mRCodeComboBoxEdit";
            this.mRCodeComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.mRCodeComboBoxEdit.Size = new System.Drawing.Size(100, 21);
            this.mRCodeComboBoxEdit.TabIndex = 7;
            // 
            // mRTypeLabel
            // 
            this.mRTypeLabel.Location = new System.Drawing.Point(30, 89);
            this.mRTypeLabel.Name = "mRTypeLabel";
            this.mRTypeLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.mRTypeLabel, null);
            this.mRTypeLabel.TabIndex = 8;
            this.mRTypeLabel.Text = "MRType:";
            this.mRTypeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // mRTypeTextEdit
            // 
            this.mRTypeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MRType", true));
            this.mRTypeTextEdit.Location = new System.Drawing.Point(148, 86);
            this.mRTypeTextEdit.Name = "mRTypeTextEdit";
            this.mRTypeTextEdit.Size = new System.Drawing.Size(100, 21);
            this.mRTypeTextEdit.TabIndex = 9;
            // 
            // pHMaterialLabel
            // 
            this.pHMaterialLabel.Location = new System.Drawing.Point(30, 116);
            this.pHMaterialLabel.Name = "pHMaterialLabel";
            this.pHMaterialLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHMaterialLabel, null);
            this.pHMaterialLabel.TabIndex = 10;
            this.pHMaterialLabel.Text = "PHMaterial:";
            this.pHMaterialLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pHMaterialTextEdit
            // 
            this.pHMaterialTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PHMaterial", true));
            this.pHMaterialTextEdit.Location = new System.Drawing.Point(148, 113);
            this.pHMaterialTextEdit.Name = "pHMaterialTextEdit";
            this.pHMaterialTextEdit.Size = new System.Drawing.Size(144, 21);
            this.pHMaterialTextEdit.TabIndex = 11;
            // 
            // suppRefLabel
            // 
            this.suppRefLabel.Location = new System.Drawing.Point(30, 143);
            this.suppRefLabel.Name = "suppRefLabel";
            this.suppRefLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.suppRefLabel, null);
            this.suppRefLabel.TabIndex = 12;
            this.suppRefLabel.Text = "Supp Ref:";
            this.suppRefLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // suppRefTextEdit
            // 
            this.suppRefTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SuppRef", true));
            this.suppRefTextEdit.Location = new System.Drawing.Point(148, 140);
            this.suppRefTextEdit.Name = "suppRefTextEdit";
            this.suppRefTextEdit.Size = new System.Drawing.Size(144, 21);
            this.suppRefTextEdit.TabIndex = 13;
            // 
            // specificationsLabel
            // 
            this.specificationsLabel.Location = new System.Drawing.Point(30, 170);
            this.specificationsLabel.Name = "specificationsLabel";
            this.specificationsLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.specificationsLabel, null);
            this.specificationsLabel.TabIndex = 14;
            this.specificationsLabel.Text = "Specifications:";
            this.specificationsLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // specificationsTextEdit
            // 
            this.specificationsTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Specifications", true));
            this.specificationsTextEdit.Location = new System.Drawing.Point(148, 167);
            this.specificationsTextEdit.Name = "specificationsTextEdit";
            this.specificationsTextEdit.Size = new System.Drawing.Size(144, 21);
            this.specificationsTextEdit.TabIndex = 15;
            // 
            // qtyPerLabel
            // 
            this.qtyPerLabel.Location = new System.Drawing.Point(30, 197);
            this.qtyPerLabel.Name = "qtyPerLabel";
            this.qtyPerLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.qtyPerLabel, null);
            this.qtyPerLabel.TabIndex = 16;
            this.qtyPerLabel.Text = "Qty Per:";
            this.qtyPerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // qtyPerSpinEdit
            // 
            this.qtyPerSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "QtyPer", true));
            this.qtyPerSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.qtyPerSpinEdit.Location = new System.Drawing.Point(148, 194);
            this.qtyPerSpinEdit.Name = "qtyPerSpinEdit";
            this.qtyPerSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.qtyPerSpinEdit.Size = new System.Drawing.Size(144, 21);
            this.qtyPerSpinEdit.TabIndex = 17;
            // 
            // pHUnitLabel
            // 
            this.pHUnitLabel.Location = new System.Drawing.Point(30, 224);
            this.pHUnitLabel.Name = "pHUnitLabel";
            this.pHUnitLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.pHUnitLabel, null);
            this.pHUnitLabel.TabIndex = 18;
            this.pHUnitLabel.Text = "PHUnit:";
            this.pHUnitLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pHUnitTextEdit
            // 
            this.pHUnitTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PHUnit", true));
            this.pHUnitTextEdit.Location = new System.Drawing.Point(148, 221);
            this.pHUnitTextEdit.Name = "pHUnitTextEdit";
            this.pHUnitTextEdit.Size = new System.Drawing.Size(144, 21);
            this.pHUnitTextEdit.TabIndex = 19;
            // 
            // wastageOnCACLabel
            // 
            this.wastageOnCACLabel.Location = new System.Drawing.Point(30, 251);
            this.wastageOnCACLabel.Name = "wastageOnCACLabel";
            this.wastageOnCACLabel.Size = new System.Drawing.Size(112, 12);
            this.PlatetoolTipController.SetSuperTip(this.wastageOnCACLabel, null);
            this.wastageOnCACLabel.TabIndex = 20;
            this.wastageOnCACLabel.Text = "Wastage On CAC:";
            this.wastageOnCACLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // wastageOnCACSpinEdit
            // 
            this.wastageOnCACSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WastageOnCAC", true));
            this.wastageOnCACSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.wastageOnCACSpinEdit.Location = new System.Drawing.Point(148, 248);
            this.wastageOnCACSpinEdit.Name = "wastageOnCACSpinEdit";
            this.wastageOnCACSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.wastageOnCACSpinEdit.Size = new System.Drawing.Size(144, 21);
            this.wastageOnCACSpinEdit.TabIndex = 21;
            // 
            // supplierLabel
            // 
            this.supplierLabel.Location = new System.Drawing.Point(324, 35);
            this.supplierLabel.Name = "supplierLabel";
            this.supplierLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierLabel, null);
            this.supplierLabel.TabIndex = 22;
            this.supplierLabel.Text = "Supplier:";
            this.supplierLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // supplierTextEdit
            // 
            this.supplierTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Supplier", true));
            this.supplierTextEdit.Location = new System.Drawing.Point(431, 32);
            this.supplierTextEdit.Name = "supplierTextEdit";
            this.supplierTextEdit.Size = new System.Drawing.Size(151, 21);
            this.supplierTextEdit.TabIndex = 23;
            // 
            // currencyLabel
            // 
            this.currencyLabel.Location = new System.Drawing.Point(324, 62);
            this.currencyLabel.Name = "currencyLabel";
            this.currencyLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.currencyLabel, null);
            this.currencyLabel.TabIndex = 24;
            this.currencyLabel.Text = "Currency:";
            this.currencyLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // currencyTextEdit
            // 
            this.currencyTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Currency", true));
            this.currencyTextEdit.Location = new System.Drawing.Point(431, 59);
            this.currencyTextEdit.Name = "currencyTextEdit";
            this.currencyTextEdit.Size = new System.Drawing.Size(151, 21);
            this.currencyTextEdit.TabIndex = 25;
            // 
            // unitPriceLabel
            // 
            this.unitPriceLabel.Location = new System.Drawing.Point(324, 89);
            this.unitPriceLabel.Name = "unitPriceLabel";
            this.unitPriceLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.unitPriceLabel, null);
            this.unitPriceLabel.TabIndex = 26;
            this.unitPriceLabel.Text = "Unit Price:";
            this.unitPriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // unitPriceSpinEdit
            // 
            this.unitPriceSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UnitPrice", true));
            this.unitPriceSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.unitPriceSpinEdit.Location = new System.Drawing.Point(431, 86);
            this.unitPriceSpinEdit.Name = "unitPriceSpinEdit";
            this.unitPriceSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.unitPriceSpinEdit.Size = new System.Drawing.Size(151, 21);
            this.unitPriceSpinEdit.TabIndex = 27;
            // 
            // uOMLabel
            // 
            this.uOMLabel.Location = new System.Drawing.Point(324, 116);
            this.uOMLabel.Name = "uOMLabel";
            this.uOMLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.uOMLabel, null);
            this.uOMLabel.TabIndex = 28;
            this.uOMLabel.Text = "UOM:";
            this.uOMLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // uOMTextEdit
            // 
            this.uOMTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UOM", true));
            this.uOMTextEdit.Location = new System.Drawing.Point(431, 113);
            this.uOMTextEdit.Name = "uOMTextEdit";
            this.uOMTextEdit.Size = new System.Drawing.Size(151, 21);
            this.uOMTextEdit.TabIndex = 29;
            // 
            // exRateLabel
            // 
            this.exRateLabel.Location = new System.Drawing.Point(324, 143);
            this.exRateLabel.Name = "exRateLabel";
            this.exRateLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.exRateLabel, null);
            this.exRateLabel.TabIndex = 30;
            this.exRateLabel.Text = "Ex Rate:";
            this.exRateLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // exRateSpinEdit
            // 
            this.exRateSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ExRate", true));
            this.exRateSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.exRateSpinEdit.Location = new System.Drawing.Point(431, 140);
            this.exRateSpinEdit.Name = "exRateSpinEdit";
            this.exRateSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.exRateSpinEdit.Size = new System.Drawing.Size(151, 21);
            this.exRateSpinEdit.TabIndex = 31;
            // 
            // allInPriceLabel
            // 
            this.allInPriceLabel.Location = new System.Drawing.Point(324, 170);
            this.allInPriceLabel.Name = "allInPriceLabel";
            this.allInPriceLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.allInPriceLabel, null);
            this.allInPriceLabel.TabIndex = 32;
            this.allInPriceLabel.Text = "All In Price:";
            this.allInPriceLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // allInPriceSpinEdit
            // 
            this.allInPriceSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AllInPrice", true));
            this.allInPriceSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.allInPriceSpinEdit.Location = new System.Drawing.Point(431, 167);
            this.allInPriceSpinEdit.Name = "allInPriceSpinEdit";
            this.allInPriceSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.allInPriceSpinEdit.Size = new System.Drawing.Size(151, 21);
            this.allInPriceSpinEdit.TabIndex = 33;
            // 
            // minOrderLabel
            // 
            this.minOrderLabel.Location = new System.Drawing.Point(324, 197);
            this.minOrderLabel.Name = "minOrderLabel";
            this.minOrderLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.minOrderLabel, null);
            this.minOrderLabel.TabIndex = 34;
            this.minOrderLabel.Text = "Min Order:";
            this.minOrderLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // minOrderTextEdit
            // 
            this.minOrderTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MinOrder", true));
            this.minOrderTextEdit.Location = new System.Drawing.Point(431, 194);
            this.minOrderTextEdit.Name = "minOrderTextEdit";
            this.minOrderTextEdit.Size = new System.Drawing.Size(151, 21);
            this.minOrderTextEdit.TabIndex = 35;
            // 
            // colorRangeLabel
            // 
            this.colorRangeLabel.Location = new System.Drawing.Point(324, 224);
            this.colorRangeLabel.Name = "colorRangeLabel";
            this.colorRangeLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.colorRangeLabel, null);
            this.colorRangeLabel.TabIndex = 36;
            this.colorRangeLabel.Text = "Color Range:";
            this.colorRangeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // colorRangeTextEdit
            // 
            this.colorRangeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColorRange", true));
            this.colorRangeTextEdit.Location = new System.Drawing.Point(431, 221);
            this.colorRangeTextEdit.Name = "colorRangeTextEdit";
            this.colorRangeTextEdit.Size = new System.Drawing.Size(188, 21);
            this.colorRangeTextEdit.TabIndex = 37;
            // 
            // sizeRangeLabel
            // 
            this.sizeRangeLabel.Location = new System.Drawing.Point(324, 251);
            this.sizeRangeLabel.Name = "sizeRangeLabel";
            this.sizeRangeLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(this.sizeRangeLabel, null);
            this.sizeRangeLabel.TabIndex = 38;
            this.sizeRangeLabel.Text = "Size Range:";
            this.sizeRangeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // sizeRangeTextEdit
            // 
            this.sizeRangeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SizeRange", true));
            this.sizeRangeTextEdit.Location = new System.Drawing.Point(431, 248);
            this.sizeRangeTextEdit.Name = "sizeRangeTextEdit";
            this.sizeRangeTextEdit.Size = new System.Drawing.Size(188, 21);
            this.sizeRangeTextEdit.TabIndex = 39;
            // 
            // cupRangeLabel
            // 
            cupRangeLabel.AutoSize = true;
            cupRangeLabel.Location = new System.Drawing.Point(364, 278);
            cupRangeLabel.Name = "cupRangeLabel";
            cupRangeLabel.Size = new System.Drawing.Size(61, 12);
            this.PlatetoolTipController.SetSuperTip(cupRangeLabel, null);
            cupRangeLabel.TabIndex = 40;
            cupRangeLabel.Text = "Cup Range:";
            // 
            // cupRangeTextEdit
            // 
            this.cupRangeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CupRange", true));
            this.cupRangeTextEdit.Location = new System.Drawing.Point(431, 275);
            this.cupRangeTextEdit.Name = "cupRangeTextEdit";
            this.cupRangeTextEdit.Size = new System.Drawing.Size(188, 21);
            this.cupRangeTextEdit.TabIndex = 41;
            // 
            // StylePackingDetailEditForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(cupRangeLabel);
            this.Controls.Add(this.cupRangeTextEdit);
            this.Controls.Add(this.sizeRangeLabel);
            this.Controls.Add(this.sizeRangeTextEdit);
            this.Controls.Add(this.colorRangeLabel);
            this.Controls.Add(this.colorRangeTextEdit);
            this.Controls.Add(this.minOrderLabel);
            this.Controls.Add(this.minOrderTextEdit);
            this.Controls.Add(this.allInPriceLabel);
            this.Controls.Add(this.allInPriceSpinEdit);
            this.Controls.Add(this.exRateLabel);
            this.Controls.Add(this.exRateSpinEdit);
            this.Controls.Add(this.uOMLabel);
            this.Controls.Add(this.uOMTextEdit);
            this.Controls.Add(this.unitPriceLabel);
            this.Controls.Add(this.unitPriceSpinEdit);
            this.Controls.Add(this.currencyLabel);
            this.Controls.Add(this.currencyTextEdit);
            this.Controls.Add(this.supplierLabel);
            this.Controls.Add(this.supplierTextEdit);
            this.Controls.Add(this.wastageOnCACLabel);
            this.Controls.Add(this.wastageOnCACSpinEdit);
            this.Controls.Add(this.pHUnitLabel);
            this.Controls.Add(this.pHUnitTextEdit);
            this.Controls.Add(this.qtyPerLabel);
            this.Controls.Add(this.qtyPerSpinEdit);
            this.Controls.Add(this.specificationsLabel);
            this.Controls.Add(this.specificationsTextEdit);
            this.Controls.Add(this.suppRefLabel);
            this.Controls.Add(this.suppRefTextEdit);
            this.Controls.Add(this.pHMaterialLabel);
            this.Controls.Add(this.pHMaterialTextEdit);
            this.Controls.Add(this.mRTypeLabel);
            this.Controls.Add(this.mRTypeTextEdit);
            this.Controls.Add(this.mRCodeLabel);
            this.Controls.Add(this.mRCodeComboBoxEdit);
            this.Controls.Add(this.mRGroupLabel);
            this.Controls.Add(this.mRGroupComboBoxEdit);
            this.Name = "StylePackingDetailEditForm";
            this.Size = new System.Drawing.Size(673, 312);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.mRGroupComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.mRGroupLabel, 0);
            this.Controls.SetChildIndex(this.mRCodeComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.mRCodeLabel, 0);
            this.Controls.SetChildIndex(this.mRTypeTextEdit, 0);
            this.Controls.SetChildIndex(this.mRTypeLabel, 0);
            this.Controls.SetChildIndex(this.pHMaterialTextEdit, 0);
            this.Controls.SetChildIndex(this.pHMaterialLabel, 0);
            this.Controls.SetChildIndex(this.suppRefTextEdit, 0);
            this.Controls.SetChildIndex(this.suppRefLabel, 0);
            this.Controls.SetChildIndex(this.specificationsTextEdit, 0);
            this.Controls.SetChildIndex(this.specificationsLabel, 0);
            this.Controls.SetChildIndex(this.qtyPerSpinEdit, 0);
            this.Controls.SetChildIndex(this.qtyPerLabel, 0);
            this.Controls.SetChildIndex(this.pHUnitTextEdit, 0);
            this.Controls.SetChildIndex(this.pHUnitLabel, 0);
            this.Controls.SetChildIndex(this.wastageOnCACSpinEdit, 0);
            this.Controls.SetChildIndex(this.wastageOnCACLabel, 0);
            this.Controls.SetChildIndex(this.supplierTextEdit, 0);
            this.Controls.SetChildIndex(this.supplierLabel, 0);
            this.Controls.SetChildIndex(this.currencyTextEdit, 0);
            this.Controls.SetChildIndex(this.currencyLabel, 0);
            this.Controls.SetChildIndex(this.unitPriceSpinEdit, 0);
            this.Controls.SetChildIndex(this.unitPriceLabel, 0);
            this.Controls.SetChildIndex(this.uOMTextEdit, 0);
            this.Controls.SetChildIndex(this.uOMLabel, 0);
            this.Controls.SetChildIndex(this.exRateSpinEdit, 0);
            this.Controls.SetChildIndex(this.exRateLabel, 0);
            this.Controls.SetChildIndex(this.allInPriceSpinEdit, 0);
            this.Controls.SetChildIndex(this.allInPriceLabel, 0);
            this.Controls.SetChildIndex(this.minOrderTextEdit, 0);
            this.Controls.SetChildIndex(this.minOrderLabel, 0);
            this.Controls.SetChildIndex(this.colorRangeTextEdit, 0);
            this.Controls.SetChildIndex(this.colorRangeLabel, 0);
            this.Controls.SetChildIndex(this.sizeRangeTextEdit, 0);
            this.Controls.SetChildIndex(this.sizeRangeLabel, 0);
            this.Controls.SetChildIndex(this.cupRangeTextEdit, 0);
            this.Controls.SetChildIndex(cupRangeLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mRGroupComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mRCodeComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mRTypeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHMaterialTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.suppRefTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.specificationsTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtyPerSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pHUnitTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.wastageOnCACSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.currencyTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.unitPriceSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.uOMTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.exRateSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.allInPriceSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.minOrderTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorRangeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sizeRangeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupRangeTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit mRGroupComboBoxEdit;
        private DevExpress.XtraEditors.ComboBoxEdit mRCodeComboBoxEdit;
        private DevExpress.XtraEditors.TextEdit mRTypeTextEdit;
        private DevExpress.XtraEditors.TextEdit pHMaterialTextEdit;
        private DevExpress.XtraEditors.TextEdit suppRefTextEdit;
        private DevExpress.XtraEditors.TextEdit specificationsTextEdit;
        private DevExpress.XtraEditors.SpinEdit qtyPerSpinEdit;
        private System.Windows.Forms.Label mRGroupLabel;
        private System.Windows.Forms.Label mRCodeLabel;
        private System.Windows.Forms.Label mRTypeLabel;
        private System.Windows.Forms.Label pHMaterialLabel;
        private System.Windows.Forms.Label suppRefLabel;
        private System.Windows.Forms.Label specificationsLabel;
        private System.Windows.Forms.Label qtyPerLabel;
        private System.Windows.Forms.Label pHUnitLabel;
        private DevExpress.XtraEditors.TextEdit pHUnitTextEdit;
        private System.Windows.Forms.Label wastageOnCACLabel;
        private DevExpress.XtraEditors.SpinEdit wastageOnCACSpinEdit;
        private System.Windows.Forms.Label supplierLabel;
        private DevExpress.XtraEditors.TextEdit supplierTextEdit;
        private System.Windows.Forms.Label currencyLabel;
        private DevExpress.XtraEditors.TextEdit currencyTextEdit;
        private System.Windows.Forms.Label unitPriceLabel;
        private DevExpress.XtraEditors.SpinEdit unitPriceSpinEdit;
        private System.Windows.Forms.Label uOMLabel;
        private DevExpress.XtraEditors.TextEdit uOMTextEdit;
        private System.Windows.Forms.Label exRateLabel;
        private DevExpress.XtraEditors.SpinEdit exRateSpinEdit;
        private System.Windows.Forms.Label allInPriceLabel;
        private DevExpress.XtraEditors.SpinEdit allInPriceSpinEdit;
        private System.Windows.Forms.Label minOrderLabel;
        private DevExpress.XtraEditors.TextEdit minOrderTextEdit;
        private System.Windows.Forms.Label colorRangeLabel;
        private DevExpress.XtraEditors.TextEdit colorRangeTextEdit;
        private System.Windows.Forms.Label sizeRangeLabel;
        private DevExpress.XtraEditors.TextEdit sizeRangeTextEdit;
        private DevExpress.XtraEditors.TextEdit cupRangeTextEdit;
    }
}
