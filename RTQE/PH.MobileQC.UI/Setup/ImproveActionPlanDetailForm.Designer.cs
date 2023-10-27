namespace PH.MobileQC.UI.Setup
{
    partial class ImproveActionPlanDetailForm
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
            System.Windows.Forms.Label seqNoLabel;
            System.Windows.Forms.Label nameEnLabel;
            System.Windows.Forms.Label nameCNLabel;
            this.seqNoSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.nameEnTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            seqNoLabel = new System.Windows.Forms.Label();
            nameEnLabel = new System.Windows.Forms.Label();
            nameCNLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameEnTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_ImproveActionPlan);
            // 
            // seqNoLabel
            // 
            seqNoLabel.AutoSize = true;
            seqNoLabel.Location = new System.Drawing.Point(115, 67);
            seqNoLabel.Name = "seqNoLabel";
            seqNoLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(seqNoLabel, null);
            seqNoLabel.TabIndex = 4;
            seqNoLabel.Text = "Seq No:";
            // 
            // nameEnLabel
            // 
            nameEnLabel.AutoSize = true;
            nameEnLabel.Location = new System.Drawing.Point(67, 152);
            nameEnLabel.Name = "nameEnLabel";
            nameEnLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(nameEnLabel, null);
            nameEnLabel.TabIndex = 6;
            nameEnLabel.Text = "Desription(En):";
            // 
            // nameCNLabel
            // 
            nameCNLabel.AutoSize = true;
            nameCNLabel.Location = new System.Drawing.Point(49, 107);
            nameCNLabel.Name = "nameCNLabel";
            nameCNLabel.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(nameCNLabel, null);
            nameCNLabel.TabIndex = 8;
            nameCNLabel.Text = "Desription(Local):";
            // 
            // seqNoSpinEdit
            // 
            this.seqNoSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.seqNoSpinEdit.Location = new System.Drawing.Point(186, 62);
            this.seqNoSpinEdit.Name = "seqNoSpinEdit";
            this.seqNoSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.seqNoSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.seqNoSpinEdit.TabIndex = 5;
            // 
            // nameEnTextEdit
            // 
            this.nameEnTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameEn", true));
            this.nameEnTextEdit.Location = new System.Drawing.Point(186, 147);
            this.nameEnTextEdit.Name = "nameEnTextEdit";
            this.nameEnTextEdit.Size = new System.Drawing.Size(376, 21);
            this.nameEnTextEdit.TabIndex = 7;
            // 
            // nameCNTextEdit
            // 
            this.nameCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameCN", true));
            this.nameCNTextEdit.Location = new System.Drawing.Point(186, 104);
            this.nameCNTextEdit.Name = "nameCNTextEdit";
            this.nameCNTextEdit.Size = new System.Drawing.Size(376, 21);
            this.nameCNTextEdit.TabIndex = 9;
            // 
            // ImproveActionPlanDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(nameCNLabel);
            this.Controls.Add(this.nameCNTextEdit);
            this.Controls.Add(nameEnLabel);
            this.Controls.Add(this.nameEnTextEdit);
            this.Controls.Add(seqNoLabel);
            this.Controls.Add(this.seqNoSpinEdit);
            this.Name = "ImproveActionPlanDetailForm";
            this.Size = new System.Drawing.Size(676, 220);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqNoSpinEdit, 0);
            this.Controls.SetChildIndex(seqNoLabel, 0);
            this.Controls.SetChildIndex(this.nameEnTextEdit, 0);
            this.Controls.SetChildIndex(nameEnLabel, 0);
            this.Controls.SetChildIndex(this.nameCNTextEdit, 0);
            this.Controls.SetChildIndex(nameCNLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameEnTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SpinEdit seqNoSpinEdit;
        private DevExpress.XtraEditors.TextEdit nameEnTextEdit;
        private DevExpress.XtraEditors.TextEdit nameCNTextEdit;
    }
}
