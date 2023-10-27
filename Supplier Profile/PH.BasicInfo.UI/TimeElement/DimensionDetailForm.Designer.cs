namespace PH.BasicInfo.UI.TimeElement
{
    partial class DimensionDetailForm
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
            System.Windows.Forms.Label haveSupplementSheetLabel;
            System.Windows.Forms.Label remarkLabel;
            System.Windows.Forms.Label dimensionLabel;
            System.Windows.Forms.Label materialTypeLabel;
            System.Windows.Forms.Label pOUMLabel;
            this.haveSupplementSheetCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.remarkMemoExEdit = new DevExpress.XtraEditors.MemoExEdit();
            this.itemColorLabel = new System.Windows.Forms.Label();
            this.itemColorTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.dimensionNoLabel = new System.Windows.Forms.Label();
            this.dimensionNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.lookUpEdit1 = new DevExpress.XtraEditors.LookUpEdit();
            this.materialTypeLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.endCustomerComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.dependentOrIndependentCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.endCustomerLabel = new System.Windows.Forms.Label();
            this.pOUMTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.shipmentTolerantSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.shipmentTolerantLabel = new System.Windows.Forms.Label();
            this.widthSpecLabel = new System.Windows.Forms.Label();
            this.widthSpecLookUpEdit = new DevExpress.XtraEditors.LookUpEdit();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.rgVAT = new DevExpress.XtraEditors.RadioGroup();
            this.cbeVAT = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.lbVAT = new System.Windows.Forms.Label();
            haveSupplementSheetLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            dimensionLabel = new System.Windows.Forms.Label();
            materialTypeLabel = new System.Windows.Forms.Label();
            pOUMLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.haveSupplementSheetCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemColorTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dimensionNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.materialTypeLookUpEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.endCustomerComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dependentOrIndependentCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pOUMTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.shipmentTolerantSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.widthSpecLookUpEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.rgVAT.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbeVAT.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.MaterialTypeDimension);
            this.BindingSource.CurrentChanged += new System.EventHandler(this.BindingSource_CurrentChanged);
            // 
            // haveSupplementSheetLabel
            // 
            haveSupplementSheetLabel.Location = new System.Drawing.Point(58, 78);
            haveSupplementSheetLabel.Name = "haveSupplementSheetLabel";
            haveSupplementSheetLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(haveSupplementSheetLabel, null);
            haveSupplementSheetLabel.TabIndex = 6;
            haveSupplementSheetLabel.Text = "Have Supplement Sheet:";
            haveSupplementSheetLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // remarkLabel
            // 
            remarkLabel.Location = new System.Drawing.Point(58, 184);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 8;
            remarkLabel.Text = "Remark:";
            remarkLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // dimensionLabel
            // 
            dimensionLabel.Location = new System.Drawing.Point(530, 110);
            dimensionLabel.Name = "dimensionLabel";
            dimensionLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(dimensionLabel, null);
            dimensionLabel.TabIndex = 10;
            dimensionLabel.Text = "Dimension:";
            dimensionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            dimensionLabel.Visible = false;
            // 
            // materialTypeLabel
            // 
            materialTypeLabel.Location = new System.Drawing.Point(58, 52);
            materialTypeLabel.Name = "materialTypeLabel";
            materialTypeLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(materialTypeLabel, null);
            materialTypeLabel.TabIndex = 84;
            materialTypeLabel.Text = "Material Type:";
            materialTypeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // pOUMLabel
            // 
            pOUMLabel.AutoSize = true;
            pOUMLabel.Location = new System.Drawing.Point(156, 130);
            pOUMLabel.Name = "pOUMLabel";
            pOUMLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(pOUMLabel, null);
            pOUMLabel.TabIndex = 87;
            pOUMLabel.Text = "POUM:";
            // 
            // haveSupplementSheetCheckEdit
            // 
            this.haveSupplementSheetCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HaveSupplementSheet", true));
            this.haveSupplementSheetCheckEdit.Location = new System.Drawing.Point(200, 75);
            this.haveSupplementSheetCheckEdit.Name = "haveSupplementSheetCheckEdit";
            this.haveSupplementSheetCheckEdit.Properties.Caption = "";
            this.haveSupplementSheetCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.haveSupplementSheetCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.haveSupplementSheetCheckEdit.TabIndex = 7;
            // 
            // remarkMemoExEdit
            // 
            this.remarkMemoExEdit.Location = new System.Drawing.Point(202, 181);
            this.remarkMemoExEdit.Name = "remarkMemoExEdit";
            this.remarkMemoExEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.remarkMemoExEdit.Properties.Appearance.Options.UseBackColor = true;
            this.remarkMemoExEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.remarkMemoExEdit.Size = new System.Drawing.Size(100, 21);
            this.remarkMemoExEdit.TabIndex = 9;
            // 
            // itemColorLabel
            // 
            this.itemColorLabel.Location = new System.Drawing.Point(532, 170);
            this.itemColorLabel.Name = "itemColorLabel";
            this.itemColorLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(this.itemColorLabel, null);
            this.itemColorLabel.TabIndex = 63;
            this.itemColorLabel.Text = "Item Color:";
            this.itemColorLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.itemColorLabel.Visible = false;
            // 
            // itemColorTextEdit
            // 
            this.itemColorTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ItemColor", true));
            this.itemColorTextEdit.Location = new System.Drawing.Point(676, 164);
            this.itemColorTextEdit.Name = "itemColorTextEdit";
            this.itemColorTextEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.itemColorTextEdit.Properties.Appearance.Options.UseBackColor = true;
            this.itemColorTextEdit.Size = new System.Drawing.Size(157, 21);
            this.itemColorTextEdit.TabIndex = 64;
            this.itemColorTextEdit.Visible = false;
            // 
            // dimensionNoLabel
            // 
            this.dimensionNoLabel.Location = new System.Drawing.Point(530, 139);
            this.dimensionNoLabel.Name = "dimensionNoLabel";
            this.dimensionNoLabel.Size = new System.Drawing.Size(136, 12);
            this.PlatetoolTipController.SetSuperTip(this.dimensionNoLabel, null);
            this.dimensionNoLabel.TabIndex = 61;
            this.dimensionNoLabel.Text = "Dimension No:";
            this.dimensionNoLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.dimensionNoLabel.Visible = false;
            // 
            // dimensionNoTextEdit
            // 
            this.dimensionNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DimensionNo", true));
            this.dimensionNoTextEdit.Location = new System.Drawing.Point(674, 134);
            this.dimensionNoTextEdit.Name = "dimensionNoTextEdit";
            this.dimensionNoTextEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.dimensionNoTextEdit.Properties.Appearance.Options.UseBackColor = true;
            this.dimensionNoTextEdit.Size = new System.Drawing.Size(157, 21);
            this.dimensionNoTextEdit.TabIndex = 62;
            this.dimensionNoTextEdit.Visible = false;
            // 
            // lookUpEdit1
            // 
            this.lookUpEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Dimension", true));
            this.lookUpEdit1.Location = new System.Drawing.Point(674, 107);
            this.lookUpEdit1.Name = "lookUpEdit1";
            this.lookUpEdit1.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.lookUpEdit1.Properties.Appearance.Options.UseBackColor = true;
            this.lookUpEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEdit1.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Seq", "Seq", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DimensionNo", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("ItemColor", "Item Color", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.lookUpEdit1.Properties.DisplayMember = "Seq";
            this.lookUpEdit1.Properties.NullText = "";
            this.lookUpEdit1.Properties.ValueMember = "Seq";
            this.lookUpEdit1.Size = new System.Drawing.Size(157, 21);
            this.lookUpEdit1.TabIndex = 84;
            this.lookUpEdit1.Visible = false;
            // 
            // materialTypeLookUpEdit
            // 
            this.materialTypeLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MaterialType", true));
            this.materialTypeLookUpEdit.Location = new System.Drawing.Point(202, 49);
            this.materialTypeLookUpEdit.Name = "materialTypeLookUpEdit";
            this.materialTypeLookUpEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.materialTypeLookUpEdit.Properties.Appearance.Options.UseBackColor = true;
            this.materialTypeLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.materialTypeLookUpEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("MaterialType1", "MaterialType1", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.materialTypeLookUpEdit.Properties.DisplayMember = "MaterialType1";
            this.materialTypeLookUpEdit.Properties.NullText = "";
            this.materialTypeLookUpEdit.Properties.ValueMember = "MaterialType1";
            this.materialTypeLookUpEdit.Size = new System.Drawing.Size(157, 21);
            this.materialTypeLookUpEdit.TabIndex = 85;
            // 
            // endCustomerComboBoxEdit
            // 
            this.endCustomerComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EndCustomer", true));
            this.endCustomerComboBoxEdit.Location = new System.Drawing.Point(674, 77);
            this.endCustomerComboBoxEdit.Name = "endCustomerComboBoxEdit";
            this.endCustomerComboBoxEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.endCustomerComboBoxEdit.Properties.Appearance.Options.UseBackColor = true;
            this.endCustomerComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.endCustomerComboBoxEdit.Size = new System.Drawing.Size(157, 21);
            this.endCustomerComboBoxEdit.TabIndex = 86;
            this.endCustomerComboBoxEdit.Visible = false;
            // 
            // dependentOrIndependentCheckEdit
            // 
            this.dependentOrIndependentCheckEdit.Location = new System.Drawing.Point(547, 51);
            this.dependentOrIndependentCheckEdit.Name = "dependentOrIndependentCheckEdit";
            this.dependentOrIndependentCheckEdit.Properties.Caption = "Cust.Dependent/Independent:Yes/No";
            this.dependentOrIndependentCheckEdit.Properties.GlyphAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.dependentOrIndependentCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.dependentOrIndependentCheckEdit.Size = new System.Drawing.Size(240, 19);
            this.dependentOrIndependentCheckEdit.TabIndex = 87;
            this.dependentOrIndependentCheckEdit.Visible = false;
            this.dependentOrIndependentCheckEdit.CheckedChanged += new System.EventHandler(this.dependentOrIndependentCheckEdit_CheckedChanged);
            // 
            // endCustomerLabel
            // 
            this.endCustomerLabel.Location = new System.Drawing.Point(532, 82);
            this.endCustomerLabel.Name = "endCustomerLabel";
            this.endCustomerLabel.Size = new System.Drawing.Size(134, 12);
            this.PlatetoolTipController.SetSuperTip(this.endCustomerLabel, null);
            this.endCustomerLabel.TabIndex = 87;
            this.endCustomerLabel.Text = "End Customer:";
            this.endCustomerLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.endCustomerLabel.Visible = false;
            // 
            // pOUMTextEdit
            // 
            this.pOUMTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "POUM", true));
            this.pOUMTextEdit.Location = new System.Drawing.Point(202, 127);
            this.pOUMTextEdit.Name = "pOUMTextEdit";
            this.pOUMTextEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.pOUMTextEdit.Properties.Appearance.Options.UseBackColor = true;
            this.pOUMTextEdit.Size = new System.Drawing.Size(157, 21);
            this.pOUMTextEdit.TabIndex = 88;
            // 
            // shipmentTolerantSpinEdit
            // 
            this.shipmentTolerantSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ShipmentTolerant", true));
            this.shipmentTolerantSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.shipmentTolerantSpinEdit.Location = new System.Drawing.Point(202, 100);
            this.shipmentTolerantSpinEdit.Name = "shipmentTolerantSpinEdit";
            this.shipmentTolerantSpinEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.shipmentTolerantSpinEdit.Properties.Appearance.Options.UseBackColor = true;
            this.shipmentTolerantSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.shipmentTolerantSpinEdit.Size = new System.Drawing.Size(157, 21);
            this.shipmentTolerantSpinEdit.TabIndex = 92;
            // 
            // shipmentTolerantLabel
            // 
            this.shipmentTolerantLabel.Location = new System.Drawing.Point(26, 105);
            this.shipmentTolerantLabel.Name = "shipmentTolerantLabel";
            this.shipmentTolerantLabel.Size = new System.Drawing.Size(170, 12);
            this.PlatetoolTipController.SetSuperTip(this.shipmentTolerantLabel, null);
            this.shipmentTolerantLabel.TabIndex = 89;
            this.shipmentTolerantLabel.Text = "Shipment Tolerant(+/-) (%)";
            this.shipmentTolerantLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // widthSpecLabel
            // 
            this.widthSpecLabel.Location = new System.Drawing.Point(24, 159);
            this.widthSpecLabel.Name = "widthSpecLabel";
            this.widthSpecLabel.Size = new System.Drawing.Size(172, 12);
            this.PlatetoolTipController.SetSuperTip(this.widthSpecLabel, null);
            this.widthSpecLabel.TabIndex = 93;
            this.widthSpecLabel.Text = "Special width/size/meas.";
            this.widthSpecLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // widthSpecLookUpEdit
            // 
            this.widthSpecLookUpEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "WidthSpec", true));
            this.widthSpecLookUpEdit.Location = new System.Drawing.Point(202, 154);
            this.widthSpecLookUpEdit.Name = "widthSpecLookUpEdit";
            this.widthSpecLookUpEdit.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.widthSpecLookUpEdit.Properties.Appearance.Options.UseBackColor = true;
            this.widthSpecLookUpEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.widthSpecLookUpEdit.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataCode", "Code", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataName", "Description", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.widthSpecLookUpEdit.Properties.DisplayMember = "DataName";
            this.widthSpecLookUpEdit.Properties.NullText = "";
            this.widthSpecLookUpEdit.Properties.ValueMember = "DataCode";
            this.widthSpecLookUpEdit.Size = new System.Drawing.Size(239, 21);
            this.widthSpecLookUpEdit.TabIndex = 94;
            // 
            // groupControl3
            // 
            this.groupControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl3.Controls.Add(this.rgVAT);
            this.groupControl3.Controls.Add(this.cbeVAT);
            this.groupControl3.Controls.Add(this.lbVAT);
            this.groupControl3.Location = new System.Drawing.Point(202, 230);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(197, 100);
            this.PlatetoolTipController.SetSuperTip(this.groupControl3, null);
            this.groupControl3.TabIndex = 95;
            this.groupControl3.Text = "VAT";
            // 
            // rgVAT
            // 
            this.rgVAT.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HaveVAT", true));
            this.rgVAT.EditValue = false;
            this.rgVAT.Location = new System.Drawing.Point(23, 29);
            this.rgVAT.Name = "rgVAT";
            this.rgVAT.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Yes"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "No")});
            this.rgVAT.Size = new System.Drawing.Size(145, 25);
            this.rgVAT.TabIndex = 0;
            this.rgVAT.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.rgVAT_EditValueChanging);
            // 
            // cbeVAT
            // 
            this.cbeVAT.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "VAT", true));
            this.cbeVAT.Enabled = false;
            this.cbeVAT.Location = new System.Drawing.Point(85, 67);
            this.cbeVAT.Name = "cbeVAT";
            this.cbeVAT.Properties.Appearance.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(204)))), ((int)(((byte)(221)))), ((int)(((byte)(249)))));
            this.cbeVAT.Properties.Appearance.Options.UseBackColor = true;
            this.cbeVAT.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbeVAT.Properties.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("0", 0, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("5", new decimal(new int[] {
                            5,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("6", new decimal(new int[] {
                            6,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("7", new decimal(new int[] {
                            7,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("8", new decimal(new int[] {
                            8,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("9", new decimal(new int[] {
                            9,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("10", new decimal(new int[] {
                            10,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("11", new decimal(new int[] {
                            11,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("12", new decimal(new int[] {
                            12,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("13", new decimal(new int[] {
                            13,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("14", new decimal(new int[] {
                            14,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("15", new decimal(new int[] {
                            15,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("16", new decimal(new int[] {
                            16,
                            0,
                            0,
                            0}), -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("17", new decimal(new int[] {
                            17,
                            0,
                            0,
                            0}), -1)});
            this.cbeVAT.Size = new System.Drawing.Size(83, 21);
            this.cbeVAT.TabIndex = 93;
            // 
            // lbVAT
            // 
            this.lbVAT.Enabled = false;
            this.lbVAT.Location = new System.Drawing.Point(10, 72);
            this.lbVAT.Name = "lbVAT";
            this.lbVAT.Size = new System.Drawing.Size(69, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbVAT, null);
            this.lbVAT.TabIndex = 92;
            this.lbVAT.Text = "VAT (%):";
            this.lbVAT.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // DimensionDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl3);
            this.Controls.Add(this.widthSpecLabel);
            this.Controls.Add(this.widthSpecLookUpEdit);
            this.Controls.Add(this.shipmentTolerantSpinEdit);
            this.Controls.Add(this.shipmentTolerantLabel);
            this.Controls.Add(pOUMLabel);
            this.Controls.Add(this.pOUMTextEdit);
            this.Controls.Add(this.endCustomerLabel);
            this.Controls.Add(this.dependentOrIndependentCheckEdit);
            this.Controls.Add(this.endCustomerComboBoxEdit);
            this.Controls.Add(materialTypeLabel);
            this.Controls.Add(this.materialTypeLookUpEdit);
            this.Controls.Add(this.lookUpEdit1);
            this.Controls.Add(this.itemColorLabel);
            this.Controls.Add(this.itemColorTextEdit);
            this.Controls.Add(this.dimensionNoLabel);
            this.Controls.Add(this.dimensionNoTextEdit);
            this.Controls.Add(dimensionLabel);
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkMemoExEdit);
            this.Controls.Add(haveSupplementSheetLabel);
            this.Controls.Add(this.haveSupplementSheetCheckEdit);
            this.Name = "DimensionDetailForm";
            this.Size = new System.Drawing.Size(922, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.DimensionDetailForm_Load);
            this.Controls.SetChildIndex(this.haveSupplementSheetCheckEdit, 0);
            this.Controls.SetChildIndex(haveSupplementSheetLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoExEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            this.Controls.SetChildIndex(dimensionLabel, 0);
            this.Controls.SetChildIndex(this.dimensionNoTextEdit, 0);
            this.Controls.SetChildIndex(this.dimensionNoLabel, 0);
            this.Controls.SetChildIndex(this.itemColorTextEdit, 0);
            this.Controls.SetChildIndex(this.itemColorLabel, 0);
            this.Controls.SetChildIndex(this.lookUpEdit1, 0);
            this.Controls.SetChildIndex(this.materialTypeLookUpEdit, 0);
            this.Controls.SetChildIndex(materialTypeLabel, 0);
            this.Controls.SetChildIndex(this.endCustomerComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.dependentOrIndependentCheckEdit, 0);
            this.Controls.SetChildIndex(this.endCustomerLabel, 0);
            this.Controls.SetChildIndex(this.pOUMTextEdit, 0);
            this.Controls.SetChildIndex(pOUMLabel, 0);
            this.Controls.SetChildIndex(this.shipmentTolerantLabel, 0);
            this.Controls.SetChildIndex(this.shipmentTolerantSpinEdit, 0);
            this.Controls.SetChildIndex(this.widthSpecLookUpEdit, 0);
            this.Controls.SetChildIndex(this.widthSpecLabel, 0);
            this.Controls.SetChildIndex(this.groupControl3, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.haveSupplementSheetCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemColorTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dimensionNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.materialTypeLookUpEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.endCustomerComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dependentOrIndependentCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pOUMTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.shipmentTolerantSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.widthSpecLookUpEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.rgVAT.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbeVAT.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit haveSupplementSheetCheckEdit;
        private DevExpress.XtraEditors.MemoExEdit remarkMemoExEdit;
        private System.Windows.Forms.Label itemColorLabel;
        private DevExpress.XtraEditors.TextEdit itemColorTextEdit;
        private System.Windows.Forms.Label dimensionNoLabel;
        private DevExpress.XtraEditors.TextEdit dimensionNoTextEdit;
        private DevExpress.XtraEditors.LookUpEdit lookUpEdit1;
        private DevExpress.XtraEditors.LookUpEdit materialTypeLookUpEdit;
        private DevExpress.XtraEditors.ComboBoxEdit endCustomerComboBoxEdit;
        private DevExpress.XtraEditors.CheckEdit dependentOrIndependentCheckEdit;
        private System.Windows.Forms.Label endCustomerLabel;
        private DevExpress.XtraEditors.TextEdit pOUMTextEdit;
        private DevExpress.XtraEditors.SpinEdit shipmentTolerantSpinEdit;
        private System.Windows.Forms.Label shipmentTolerantLabel;
        private System.Windows.Forms.Label widthSpecLabel;
        private DevExpress.XtraEditors.LookUpEdit widthSpecLookUpEdit;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraEditors.RadioGroup rgVAT;
        private DevExpress.XtraEditors.ImageComboBoxEdit cbeVAT;
        private System.Windows.Forms.Label lbVAT;
    }
}
