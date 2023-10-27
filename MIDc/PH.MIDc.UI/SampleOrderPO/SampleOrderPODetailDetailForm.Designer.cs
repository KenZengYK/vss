namespace PH.MIDc.UI
{
    partial class SampleOrderPODetailDetailForm
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
            this.sampleOrderPOLabel = new DevExpress.XtraEditors.LabelControl();
            this.sampleOrderPOEdit = new DevExpress.XtraEditors.TextEdit();
            this.colorLabel = new DevExpress.XtraEditors.LabelControl();
            this.cupLabel = new DevExpress.XtraEditors.LabelControl();
            this.cupEdit = new DevExpress.XtraEditors.TextEdit();
            this.sizeLabel = new DevExpress.XtraEditors.LabelControl();
            this.qtyLabel = new DevExpress.XtraEditors.LabelControl();
            this.priceLabel = new DevExpress.XtraEditors.LabelControl();
            this.amountLabel = new DevExpress.XtraEditors.LabelControl();
            this.spinEdit4 = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit1 = new DevExpress.XtraEditors.SpinEdit();
            this.spinEdit2 = new DevExpress.XtraEditors.SpinEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.colorEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sampleOrderPOEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit4.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.SampleOrderPODetail);
            // 
            // sampleOrderPOLabel
            // 
            this.sampleOrderPOLabel.Appearance.Options.UseTextOptions = true;
            this.sampleOrderPOLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.sampleOrderPOLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.sampleOrderPOLabel.Location = new System.Drawing.Point(2, 43);
            this.sampleOrderPOLabel.Name = "sampleOrderPOLabel";
            this.sampleOrderPOLabel.Size = new System.Drawing.Size(105, 14);
            this.sampleOrderPOLabel.TabIndex = 44;
            this.sampleOrderPOLabel.Text = "SampleOrderPONo:";
            this.sampleOrderPOLabel.Visible = false;
            // 
            // sampleOrderPOEdit
            // 
            this.sampleOrderPOEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SampleOrderPONo", true));
            this.sampleOrderPOEdit.Location = new System.Drawing.Point(111, 41);
            this.sampleOrderPOEdit.Name = "sampleOrderPOEdit";
            this.sampleOrderPOEdit.Properties.ReadOnly = true;
            this.sampleOrderPOEdit.Size = new System.Drawing.Size(117, 21);
            this.sampleOrderPOEdit.TabIndex = 45;
            this.sampleOrderPOEdit.Tag = "SampleOrderPONo";
            this.sampleOrderPOEdit.Visible = false;
            // 
            // colorLabel
            // 
            this.colorLabel.Appearance.Options.UseTextOptions = true;
            this.colorLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colorLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.colorLabel.Location = new System.Drawing.Point(2, 71);
            this.colorLabel.Name = "colorLabel";
            this.colorLabel.Size = new System.Drawing.Size(105, 14);
            this.colorLabel.TabIndex = 46;
            this.colorLabel.Text = "Color:";
            // 
            // cupLabel
            // 
            this.cupLabel.Appearance.Options.UseTextOptions = true;
            this.cupLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.cupLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.cupLabel.Location = new System.Drawing.Point(2, 99);
            this.cupLabel.Name = "cupLabel";
            this.cupLabel.Size = new System.Drawing.Size(105, 14);
            this.cupLabel.TabIndex = 47;
            this.cupLabel.Text = "Cup:";
            // 
            // cupEdit
            // 
            this.cupEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Cup", true));
            this.cupEdit.Location = new System.Drawing.Point(111, 97);
            this.cupEdit.Name = "cupEdit";
            this.cupEdit.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cupEdit.Size = new System.Drawing.Size(117, 21);
            this.cupEdit.TabIndex = 48;
            this.cupEdit.Tag = "Cup";
            // 
            // sizeLabel
            // 
            this.sizeLabel.Appearance.Options.UseTextOptions = true;
            this.sizeLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.sizeLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.sizeLabel.Location = new System.Drawing.Point(2, 127);
            this.sizeLabel.Name = "sizeLabel";
            this.sizeLabel.Size = new System.Drawing.Size(105, 14);
            this.sizeLabel.TabIndex = 49;
            this.sizeLabel.Text = "Size:";
            // 
            // qtyLabel
            // 
            this.qtyLabel.Appearance.Options.UseTextOptions = true;
            this.qtyLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.qtyLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.qtyLabel.Location = new System.Drawing.Point(2, 155);
            this.qtyLabel.Name = "qtyLabel";
            this.qtyLabel.Size = new System.Drawing.Size(105, 14);
            this.qtyLabel.TabIndex = 51;
            this.qtyLabel.Text = "Qty:";
            // 
            // priceLabel
            // 
            this.priceLabel.Appearance.Options.UseTextOptions = true;
            this.priceLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.priceLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.priceLabel.Location = new System.Drawing.Point(2, 183);
            this.priceLabel.Name = "priceLabel";
            this.priceLabel.Size = new System.Drawing.Size(105, 14);
            this.priceLabel.TabIndex = 52;
            this.priceLabel.Text = "Price:";
            // 
            // amountLabel
            // 
            this.amountLabel.Appearance.Options.UseTextOptions = true;
            this.amountLabel.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.amountLabel.AutoSizeMode = DevExpress.XtraEditors.LabelAutoSizeMode.None;
            this.amountLabel.Location = new System.Drawing.Point(2, 211);
            this.amountLabel.Name = "amountLabel";
            this.amountLabel.Size = new System.Drawing.Size(105, 14);
            this.amountLabel.TabIndex = 53;
            this.amountLabel.Text = "Amount:";
            // 
            // spinEdit4
            // 
            this.spinEdit4.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Qty", true));
            this.spinEdit4.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit4.Location = new System.Drawing.Point(111, 152);
            this.spinEdit4.Name = "spinEdit4";
            this.spinEdit4.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spinEdit4.Size = new System.Drawing.Size(117, 21);
            this.spinEdit4.TabIndex = 56;
            this.spinEdit4.Tag = "Qty";
            // 
            // spinEdit1
            // 
            this.spinEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Price", true));
            this.spinEdit1.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit1.Location = new System.Drawing.Point(111, 179);
            this.spinEdit1.Name = "spinEdit1";
            this.spinEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spinEdit1.Size = new System.Drawing.Size(117, 21);
            this.spinEdit1.TabIndex = 57;
            this.spinEdit1.Tag = "Price";
            // 
            // spinEdit2
            // 
            this.spinEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Amount", true));
            this.spinEdit2.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.spinEdit2.Enabled = false;
            this.spinEdit2.Location = new System.Drawing.Point(111, 206);
            this.spinEdit2.Name = "spinEdit2";
            this.spinEdit2.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "", -1, true, false, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null)});
            this.spinEdit2.Properties.ReadOnly = true;
            this.spinEdit2.Size = new System.Drawing.Size(117, 21);
            this.spinEdit2.TabIndex = 58;
            this.spinEdit2.Tag = "CostAmount";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Size", true));
            this.textEdit1.Location = new System.Drawing.Point(111, 124);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.textEdit1.Size = new System.Drawing.Size(117, 21);
            this.textEdit1.TabIndex = 48;
            this.textEdit1.Tag = "Size";
            // 
            // colorEdit
            // 
            this.colorEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Color", true));
            this.colorEdit.Location = new System.Drawing.Point(111, 68);
            this.colorEdit.Name = "colorEdit";
            this.colorEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.colorEdit.Size = new System.Drawing.Size(117, 21);
            this.colorEdit.TabIndex = 59;
            this.colorEdit.Tag = "Color";
            this.colorEdit.Closed += new DevExpress.XtraEditors.Controls.ClosedEventHandler(this.colorEdit_Closed);
            // 
            // SampleOrderPODetailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Controls.Add(this.colorEdit);
            this.Controls.Add(this.spinEdit2);
            this.Controls.Add(this.spinEdit1);
            this.Controls.Add(this.spinEdit4);
            this.Controls.Add(this.sampleOrderPOLabel);
            this.Controls.Add(this.sampleOrderPOEdit);
            this.Controls.Add(this.colorLabel);
            this.Controls.Add(this.cupLabel);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.cupEdit);
            this.Controls.Add(this.sizeLabel);
            this.Controls.Add(this.qtyLabel);
            this.Controls.Add(this.priceLabel);
            this.Controls.Add(this.amountLabel);
            this.Name = "SampleOrderPODetailDetailForm";
            //this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SampleOrderPODetailDetailForm_Load);
            this.Controls.SetChildIndex(this.amountLabel, 0);
            this.Controls.SetChildIndex(this.priceLabel, 0);
            this.Controls.SetChildIndex(this.qtyLabel, 0);
            this.Controls.SetChildIndex(this.sizeLabel, 0);
            this.Controls.SetChildIndex(this.cupEdit, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.cupLabel, 0);
            this.Controls.SetChildIndex(this.colorLabel, 0);
            this.Controls.SetChildIndex(this.sampleOrderPOEdit, 0);
            this.Controls.SetChildIndex(this.sampleOrderPOLabel, 0);
            this.Controls.SetChildIndex(this.spinEdit4, 0);
            this.Controls.SetChildIndex(this.spinEdit1, 0);
            this.Controls.SetChildIndex(this.spinEdit2, 0);
            this.Controls.SetChildIndex(this.colorEdit, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sampleOrderPOEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit4.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.spinEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.colorEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl sampleOrderPOLabel;
        private DevExpress.XtraEditors.TextEdit sampleOrderPOEdit;
        private DevExpress.XtraEditors.LabelControl colorLabel;
        private DevExpress.XtraEditors.LabelControl cupLabel;
        private DevExpress.XtraEditors.TextEdit cupEdit;
        private DevExpress.XtraEditors.LabelControl sizeLabel;
        private DevExpress.XtraEditors.LabelControl qtyLabel;
        private DevExpress.XtraEditors.LabelControl priceLabel;
        private DevExpress.XtraEditors.LabelControl amountLabel;
        private DevExpress.XtraEditors.SpinEdit spinEdit4;
        private DevExpress.XtraEditors.SpinEdit spinEdit1;
        private DevExpress.XtraEditors.SpinEdit spinEdit2;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.ComboBoxEdit colorEdit;

    }
}
