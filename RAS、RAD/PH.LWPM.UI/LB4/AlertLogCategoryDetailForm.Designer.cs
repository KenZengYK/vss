namespace PH.LWPM.UI.LB4
{
    partial class AlertLogCategoryDetailForm
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
            System.Windows.Forms.Label categoryLabel;
            System.Windows.Forms.Label codeLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label label2;
            this.categoryTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.codeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.textEdit2 = new DevExpress.XtraEditors.TextEdit();
            categoryLabel = new System.Windows.Forms.Label();
            codeLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.AlertLogCategory);
            // 
            // categoryLabel
            // 
            categoryLabel.AutoSize = true;
            categoryLabel.Location = new System.Drawing.Point(67, 96);
            categoryLabel.Name = "categoryLabel";
            categoryLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(categoryLabel, null);
            categoryLabel.TabIndex = 4;
            categoryLabel.Text = "Category:";
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(91, 59);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 6;
            codeLabel.Text = "Code:";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(25, 133);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 8;
            descriptionLabel.Text = "Description(CN):";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(25, 170);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 10;
            label1.Text = "Description(En):";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(25, 206);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(label2, null);
            label2.TabIndex = 12;
            label2.Text = "Description(BD):";
            // 
            // categoryTextEdit
            // 
            this.categoryTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Category", true));
            this.categoryTextEdit.Location = new System.Drawing.Point(143, 92);
            this.categoryTextEdit.Name = "categoryTextEdit";
            this.categoryTextEdit.Size = new System.Drawing.Size(284, 21);
            this.categoryTextEdit.TabIndex = 5;
            // 
            // codeTextEdit
            // 
            this.codeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.codeTextEdit.Location = new System.Drawing.Point(143, 54);
            this.codeTextEdit.Name = "codeTextEdit";
            this.codeTextEdit.Size = new System.Drawing.Size(284, 21);
            this.codeTextEdit.TabIndex = 7;
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(143, 129);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(284, 21);
            this.descriptionTextEdit.TabIndex = 9;
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description_EN", true));
            this.textEdit1.Location = new System.Drawing.Point(143, 166);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(284, 21);
            this.textEdit1.TabIndex = 11;
            // 
            // textEdit2
            // 
            this.textEdit2.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description_BD", true));
            this.textEdit2.Location = new System.Drawing.Point(143, 202);
            this.textEdit2.Name = "textEdit2";
            this.textEdit2.Size = new System.Drawing.Size(284, 21);
            this.textEdit2.TabIndex = 13;
            // 
            // AlertLogCategoryDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(label2);
            this.Controls.Add(this.textEdit2);
            this.Controls.Add(label1);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(codeLabel);
            this.Controls.Add(this.codeTextEdit);
            this.Controls.Add(categoryLabel);
            this.Controls.Add(this.categoryTextEdit);
            this.Name = "AlertLogCategoryDetailForm";
            this.Size = new System.Drawing.Size(605, 307);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.categoryTextEdit, 0);
            this.Controls.SetChildIndex(categoryLabel, 0);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(codeLabel, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.textEdit2, 0);
            this.Controls.SetChildIndex(label2, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.categoryTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit2.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit categoryTextEdit;
        private DevExpress.XtraEditors.TextEdit codeTextEdit;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private DevExpress.XtraEditors.TextEdit textEdit2;
    }
}
