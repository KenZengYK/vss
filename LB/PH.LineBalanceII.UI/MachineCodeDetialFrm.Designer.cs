namespace PH.LineBalanceII.UI
{
    partial class MachineCodeDetialFrm
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
            this.mcCodeLabel = new System.Windows.Forms.Label();
            this.mcTypeCNLabel = new System.Windows.Forms.Label();
            this.mcTypeENLabel = new System.Windows.Forms.Label();
            this.seqLabel = new System.Windows.Forms.Label();
            this.mcCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.mcTypeCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.mcTypeENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.seqSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcTypeCNTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcTypeENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LineBalanceII.BO.MachineCodeMatch);
            // 
            // mcCodeLabel
            // 
            this.mcCodeLabel.Location = new System.Drawing.Point(171, 228);
            this.mcCodeLabel.Name = "mcCodeLabel";
            this.mcCodeLabel.Size = new System.Drawing.Size(135, 18);
            this.PlatetoolTipController.SetSuperTip(this.mcCodeLabel, null);
            this.mcCodeLabel.TabIndex = 4;
            this.mcCodeLabel.Text = "Mc Code:";
            this.mcCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // mcTypeCNLabel
            // 
            this.mcTypeCNLabel.Location = new System.Drawing.Point(171, 147);
            this.mcTypeCNLabel.Name = "mcTypeCNLabel";
            this.mcTypeCNLabel.Size = new System.Drawing.Size(135, 18);
            this.PlatetoolTipController.SetSuperTip(this.mcTypeCNLabel, null);
            this.mcTypeCNLabel.TabIndex = 6;
            this.mcTypeCNLabel.Text = "Mc Type(CN):";
            this.mcTypeCNLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // mcTypeENLabel
            // 
            this.mcTypeENLabel.Location = new System.Drawing.Point(173, 190);
            this.mcTypeENLabel.Name = "mcTypeENLabel";
            this.mcTypeENLabel.Size = new System.Drawing.Size(133, 18);
            this.PlatetoolTipController.SetSuperTip(this.mcTypeENLabel, null);
            this.mcTypeENLabel.TabIndex = 8;
            this.mcTypeENLabel.Text = "Mc Type(EN):";
            this.mcTypeENLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // seqLabel
            // 
            this.seqLabel.Location = new System.Drawing.Point(169, 105);
            this.seqLabel.Name = "seqLabel";
            this.seqLabel.Size = new System.Drawing.Size(137, 18);
            this.PlatetoolTipController.SetSuperTip(this.seqLabel, null);
            this.seqLabel.TabIndex = 10;
            this.seqLabel.Text = "Seq:";
            this.seqLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // mcCodeTextEdit
            // 
            this.mcCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "McCode", true));
            this.mcCodeTextEdit.Location = new System.Drawing.Point(312, 225);
            this.mcCodeTextEdit.Name = "mcCodeTextEdit";
            this.mcCodeTextEdit.Size = new System.Drawing.Size(137, 21);
            this.mcCodeTextEdit.TabIndex = 5;
            // 
            // mcTypeCNTextEdit
            // 
            this.mcTypeCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "McTypeCN", true));
            this.mcTypeCNTextEdit.Location = new System.Drawing.Point(312, 144);
            this.mcTypeCNTextEdit.Name = "mcTypeCNTextEdit";
            this.mcTypeCNTextEdit.Size = new System.Drawing.Size(137, 21);
            this.mcTypeCNTextEdit.TabIndex = 7;
            // 
            // mcTypeENTextEdit
            // 
            this.mcTypeENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "McTypeEN", true));
            this.mcTypeENTextEdit.Location = new System.Drawing.Point(312, 187);
            this.mcTypeENTextEdit.Name = "mcTypeENTextEdit";
            this.mcTypeENTextEdit.Size = new System.Drawing.Size(137, 21);
            this.mcTypeENTextEdit.TabIndex = 9;
            // 
            // seqSpinEdit
            // 
            this.seqSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Seq", true));
            this.seqSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.seqSpinEdit.Location = new System.Drawing.Point(312, 102);
            this.seqSpinEdit.Name = "seqSpinEdit";
            this.seqSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.seqSpinEdit.Size = new System.Drawing.Size(137, 21);
            this.seqSpinEdit.TabIndex = 11;
            // 
            // MashineCodeDetialFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.seqLabel);
            this.Controls.Add(this.seqSpinEdit);
            this.Controls.Add(this.mcTypeENLabel);
            this.Controls.Add(this.mcTypeENTextEdit);
            this.Controls.Add(this.mcTypeCNLabel);
            this.Controls.Add(this.mcTypeCNTextEdit);
            this.Controls.Add(this.mcCodeLabel);
            this.Controls.Add(this.mcCodeTextEdit);
            this.Name = "MashineCodeDetialFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.mcCodeTextEdit, 0);
            this.Controls.SetChildIndex(this.mcCodeLabel, 0);
            this.Controls.SetChildIndex(this.mcTypeCNTextEdit, 0);
            this.Controls.SetChildIndex(this.mcTypeCNLabel, 0);
            this.Controls.SetChildIndex(this.mcTypeENTextEdit, 0);
            this.Controls.SetChildIndex(this.mcTypeENLabel, 0);
            this.Controls.SetChildIndex(this.seqSpinEdit, 0);
            this.Controls.SetChildIndex(this.seqLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcTypeCNTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mcTypeENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit mcCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit mcTypeCNTextEdit;
        private DevExpress.XtraEditors.TextEdit mcTypeENTextEdit;
        private DevExpress.XtraEditors.SpinEdit seqSpinEdit;
        private System.Windows.Forms.Label mcCodeLabel;
        private System.Windows.Forms.Label mcTypeCNLabel;
        private System.Windows.Forms.Label mcTypeENLabel;
        private System.Windows.Forms.Label seqLabel;
    }
}
