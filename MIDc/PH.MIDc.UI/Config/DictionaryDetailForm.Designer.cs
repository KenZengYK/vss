namespace  PH.MIDc.UI
{
    partial class DictionaryDetailForm
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
            this.DataTypeLabel = new System.Windows.Forms.Label();
            this.DataCodeLabel = new System.Windows.Forms.Label();
            this.DataNameLabel = new System.Windows.Forms.Label();
            this.DescriptionLabel = new System.Windows.Forms.Label();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.txtDataNameTW = new DevExpress.XtraEditors.TextEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.txtDataNameCN = new DevExpress.XtraEditors.TextEdit();
            this.DataNameCNLabel = new System.Windows.Forms.Label();
            this.txtDataNameEN = new DevExpress.XtraEditors.TextEdit();
            this.DataNameENLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameTW.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameCN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameEN.Properties)).BeginInit();
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
            // DataTypeLabel
            // 
            this.DataTypeLabel.Location = new System.Drawing.Point(12, 60);
            this.DataTypeLabel.Name = "DataTypeLabel";
            this.DataTypeLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DataTypeLabel, null);
            this.DataTypeLabel.TabIndex = 21;
            this.DataTypeLabel.Text = "Type:";
            this.DataTypeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // DataCodeLabel
            // 
            this.DataCodeLabel.Location = new System.Drawing.Point(12, 87);
            this.DataCodeLabel.Name = "DataCodeLabel";
            this.DataCodeLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DataCodeLabel, null);
            this.DataCodeLabel.TabIndex = 23;
            this.DataCodeLabel.Text = "Code:";
            this.DataCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // DataNameLabel
            // 
            this.DataNameLabel.Location = new System.Drawing.Point(12, 114);
            this.DataNameLabel.Name = "DataNameLabel";
            this.DataNameLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DataNameLabel, null);
            this.DataNameLabel.TabIndex = 25;
            this.DataNameLabel.Text = "Name(TW):";
            this.DataNameLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // DescriptionLabel
            // 
            this.DescriptionLabel.Location = new System.Drawing.Point(12, 197);
            this.DescriptionLabel.Name = "DescriptionLabel";
            this.DescriptionLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DescriptionLabel, null);
            this.DescriptionLabel.TabIndex = 27;
            this.DescriptionLabel.Text = "Description:";
            this.DescriptionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataType", true));
            this.textEdit2.Enabled = false;
            this.textEdit2.Location = new System.Drawing.Point(129, 55);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Size = new System.Drawing.Size(265, 21);
            this.textEdit2.TabIndex = 22;
            this.textEdit2.Tag = "DefType";
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.textEdit1.Enabled = false;
            this.textEdit1.Location = new System.Drawing.Point(129, 82);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(265, 21);
            this.textEdit1.TabIndex = 24;
            this.textEdit1.Tag = "DataCode";
            // 
            // txtDataNameTW
            // 
            this.txtDataNameTW.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataName", true));
            this.txtDataNameTW.Enabled = false;
            this.txtDataNameTW.Location = new System.Drawing.Point(129, 109);
            this.txtDataNameTW.Name = "txtDataNameTW";
            this.txtDataNameTW.Size = new System.Drawing.Size(265, 21);
            this.txtDataNameTW.TabIndex = 26;
            this.txtDataNameTW.Tag = "DefName";
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(129, 195);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(265, 136);
            this.memoEdit1.TabIndex = 29;
            this.memoEdit1.Tag = "Description";
            // 
            // txtDataNameCN
            // 
            this.txtDataNameCN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataNameCN", true));
            this.txtDataNameCN.Enabled = false;
            this.txtDataNameCN.Location = new System.Drawing.Point(129, 136);
            this.txtDataNameCN.Name = "txtDataNameCN";
            this.txtDataNameCN.Size = new System.Drawing.Size(265, 21);
            this.txtDataNameCN.TabIndex = 31;
            this.txtDataNameCN.Tag = "DefName";
            // 
            // DataNameCNLabel
            // 
            this.DataNameCNLabel.Location = new System.Drawing.Point(12, 141);
            this.DataNameCNLabel.Name = "DataNameCNLabel";
            this.DataNameCNLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DataNameCNLabel, null);
            this.DataNameCNLabel.TabIndex = 30;
            this.DataNameCNLabel.Text = "Name(CN):";
            this.DataNameCNLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtDataNameEN
            // 
            this.txtDataNameEN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataNameEN", true));
            this.txtDataNameEN.Enabled = false;
            this.txtDataNameEN.Location = new System.Drawing.Point(129, 163);
            this.txtDataNameEN.Name = "txtDataNameEN";
            this.txtDataNameEN.Size = new System.Drawing.Size(265, 21);
            this.txtDataNameEN.TabIndex = 33;
            this.txtDataNameEN.Tag = "DefName";
            // 
            // DataNameENLabel
            // 
            this.DataNameENLabel.Location = new System.Drawing.Point(12, 168);
            this.DataNameENLabel.Name = "DataNameENLabel";
            this.DataNameENLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DataNameENLabel, null);
            this.DataNameENLabel.TabIndex = 32;
            this.DataNameENLabel.Text = "Name(EN):";
            this.DataNameENLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // DictionaryDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtDataNameEN);
            this.Controls.Add(this.DataNameENLabel);
            this.Controls.Add(this.txtDataNameCN);
            this.Controls.Add(this.DataNameCNLabel);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.DescriptionLabel);
            this.Controls.Add(this.txtDataNameTW);
            this.Controls.Add(this.DataNameLabel);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.DataCodeLabel);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(this.DataTypeLabel);
            this.Name = "DictionaryDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.DataTypeLabel, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(this.DataCodeLabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.DataNameLabel, 0);
            this.Controls.SetChildIndex(this.txtDataNameTW, 0);
            this.Controls.SetChildIndex(this.DescriptionLabel, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.DataNameCNLabel, 0);
            this.Controls.SetChildIndex(this.txtDataNameCN, 0);
            this.Controls.SetChildIndex(this.DataNameENLabel, 0);
            this.Controls.SetChildIndex(this.txtDataNameEN, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameTW.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameCN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameEN.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit textEdit2;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit txtDataNameTW;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private System.Windows.Forms.Label DataTypeLabel;
        private System.Windows.Forms.Label DataCodeLabel;
        private System.Windows.Forms.Label DataNameLabel;
        private System.Windows.Forms.Label DescriptionLabel;
        private DevExpress.XtraEditors.TextEdit txtDataNameCN;
        private System.Windows.Forms.Label DataNameCNLabel;
        private DevExpress.XtraEditors.TextEdit txtDataNameEN;
        private System.Windows.Forms.Label DataNameENLabel;
    }
}
