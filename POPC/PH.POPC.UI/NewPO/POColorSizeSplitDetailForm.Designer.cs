namespace PH.POPC.UI.NewPO
{
    partial class POColorSizeSplitDetailForm
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
            System.Windows.Forms.Label sKULabel;
            System.Windows.Forms.Label seqLabel;
            System.Windows.Forms.Label sizeLabel;
            System.Windows.Forms.Label cupLabel;
            System.Windows.Forms.Label qtyLabel;
            System.Windows.Forms.Label remarkLabel;
            this.sKUTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.seqSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.sizeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.cupTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.qtySpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.remarkMemoExEdit = new DevExpress.XtraEditors.MemoExEdit();
            sKULabel = new System.Windows.Forms.Label();
            seqLabel = new System.Windows.Forms.Label();
            sizeLabel = new System.Windows.Forms.Label();
            cupLabel = new System.Windows.Forms.Label();
            qtyLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sKUTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sizeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtySpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POWireBoneMatrix);
            // 
            // sKULabel
            // 
            sKULabel.AutoSize = true;
            sKULabel.Location = new System.Drawing.Point(80, 318);
            sKULabel.Name = "sKULabel";
            sKULabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(sKULabel, null);
            sKULabel.TabIndex = 4;
            sKULabel.Text = "SKU:";
            sKULabel.Visible = false;
            // 
            // seqLabel
            // 
            seqLabel.AutoSize = true;
            seqLabel.Location = new System.Drawing.Point(85, 359);
            seqLabel.Name = "seqLabel";
            seqLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(seqLabel, null);
            seqLabel.TabIndex = 6;
            seqLabel.Text = "Seq:";
            seqLabel.Visible = false;
            // 
            // sizeLabel
            // 
            sizeLabel.AutoSize = true;
            sizeLabel.Location = new System.Drawing.Point(38, 48);
            sizeLabel.Name = "sizeLabel";
            sizeLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(sizeLabel, null);
            sizeLabel.TabIndex = 8;
            sizeLabel.Text = "Our Size:";
            // 
            // cupLabel
            // 
            cupLabel.AutoSize = true;
            cupLabel.Location = new System.Drawing.Point(37, 93);
            cupLabel.Name = "cupLabel";
            cupLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(cupLabel, null);
            cupLabel.TabIndex = 10;
            cupLabel.Text = "Our Cup:";
            // 
            // qtyLabel
            // 
            qtyLabel.AutoSize = true;
            qtyLabel.Location = new System.Drawing.Point(72, 140);
            qtyLabel.Name = "qtyLabel";
            qtyLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(qtyLabel, null);
            qtyLabel.TabIndex = 12;
            qtyLabel.Text = "Qty:";
            // 
            // sKUTextEdit
            // 
            this.sKUTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SKU", true));
            this.sKUTextEdit.Location = new System.Drawing.Point(116, 315);
            this.sKUTextEdit.Name = "sKUTextEdit";
            this.sKUTextEdit.Size = new System.Drawing.Size(125, 21);
            this.sKUTextEdit.TabIndex = 5;
            this.sKUTextEdit.Visible = false;
            // 
            // seqSpinEdit
            // 
            this.seqSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Seq", true));
            this.seqSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.seqSpinEdit.Location = new System.Drawing.Point(116, 356);
            this.seqSpinEdit.Name = "seqSpinEdit";
            this.seqSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.seqSpinEdit.Size = new System.Drawing.Size(125, 21);
            this.seqSpinEdit.TabIndex = 7;
            this.seqSpinEdit.Visible = false;
            // 
            // sizeTextEdit
            // 
            this.sizeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Size", true));
            this.sizeTextEdit.Location = new System.Drawing.Point(103, 45);
            this.sizeTextEdit.Name = "sizeTextEdit";
            this.sizeTextEdit.Size = new System.Drawing.Size(125, 21);
            this.sizeTextEdit.TabIndex = 9;
            // 
            // cupTextEdit
            // 
            this.cupTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Cup", true));
            this.cupTextEdit.Location = new System.Drawing.Point(103, 90);
            this.cupTextEdit.Name = "cupTextEdit";
            this.cupTextEdit.Properties.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.cupTextEdit.Size = new System.Drawing.Size(125, 21);
            this.cupTextEdit.TabIndex = 11;
            // 
            // qtySpinEdit
            // 
            this.qtySpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Qty", true));
            this.qtySpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.qtySpinEdit.Location = new System.Drawing.Point(103, 137);
            this.qtySpinEdit.Name = "qtySpinEdit";
            this.qtySpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.qtySpinEdit.Size = new System.Drawing.Size(125, 21);
            this.qtySpinEdit.TabIndex = 13;
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(50, 186);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 14;
            remarkLabel.Text = "Remark:";
            // 
            // remarkMemoExEdit
            // 
            this.remarkMemoExEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoExEdit.Location = new System.Drawing.Point(103, 183);
            this.remarkMemoExEdit.Name = "remarkMemoExEdit";
            this.remarkMemoExEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.remarkMemoExEdit.Size = new System.Drawing.Size(125, 21);
            this.PlatetoolTipController.SetSuperTip(this.remarkMemoExEdit, null);
            this.remarkMemoExEdit.TabIndex = 15;
            // 
            // POColorSizeSplitDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkMemoExEdit);
            this.Controls.Add(qtyLabel);
            this.Controls.Add(this.qtySpinEdit);
            this.Controls.Add(cupLabel);
            this.Controls.Add(this.cupTextEdit);
            this.Controls.Add(sizeLabel);
            this.Controls.Add(this.sizeTextEdit);
            this.Controls.Add(seqLabel);
            this.Controls.Add(this.seqSpinEdit);
            this.Controls.Add(sKULabel);
            this.Controls.Add(this.sKUTextEdit);
            this.Name = "POColorSizeSplitDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.sKUTextEdit, 0);
            this.Controls.SetChildIndex(sKULabel, 0);
            this.Controls.SetChildIndex(this.seqSpinEdit, 0);
            this.Controls.SetChildIndex(seqLabel, 0);
            this.Controls.SetChildIndex(this.sizeTextEdit, 0);
            this.Controls.SetChildIndex(sizeLabel, 0);
            this.Controls.SetChildIndex(this.cupTextEdit, 0);
            this.Controls.SetChildIndex(cupLabel, 0);
            this.Controls.SetChildIndex(this.qtySpinEdit, 0);
            this.Controls.SetChildIndex(qtyLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoExEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sKUTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sizeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cupTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.qtySpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoExEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit sKUTextEdit;
        private DevExpress.XtraEditors.SpinEdit seqSpinEdit;
        private DevExpress.XtraEditors.TextEdit sizeTextEdit;
        private DevExpress.XtraEditors.TextEdit cupTextEdit;
        private DevExpress.XtraEditors.SpinEdit qtySpinEdit;
        private DevExpress.XtraEditors.MemoExEdit remarkMemoExEdit;
    }
}
