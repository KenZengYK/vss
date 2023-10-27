namespace PH.RWO.UI
{
    partial class MutiLangDetailForm
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
            System.Windows.Forms.Label columnNameLabel;
            System.Windows.Forms.Label docIDLabel;
            System.Windows.Forms.Label langIDLabel;
            System.Windows.Forms.Label textLabel;
            System.Windows.Forms.Label descriptionLabel;
            this.columnNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.docIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.langIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.textMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            columnNameLabel = new System.Windows.Forms.Label();
            docIDLabel = new System.Windows.Forms.Label();
            langIDLabel = new System.Windows.Forms.Label();
            textLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.columnNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.docIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.langIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.Platform.Lang.BO.Lang_Record);
            // 
            // columnNameLabel
            // 
            columnNameLabel.AutoSize = true;
            columnNameLabel.Location = new System.Drawing.Point(42, 93);
            columnNameLabel.Name = "columnNameLabel";
            columnNameLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(columnNameLabel, null);
            columnNameLabel.TabIndex = 4;
            columnNameLabel.Text = "Column Name:";
            // 
            // docIDLabel
            // 
            docIDLabel.AutoSize = true;
            docIDLabel.Location = new System.Drawing.Point(72, 55);
            docIDLabel.Name = "docIDLabel";
            docIDLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(docIDLabel, null);
            docIDLabel.TabIndex = 6;
            docIDLabel.Text = "Doc ID:";
            // 
            // langIDLabel
            // 
            langIDLabel.AutoSize = true;
            langIDLabel.Location = new System.Drawing.Point(66, 173);
            langIDLabel.Name = "langIDLabel";
            langIDLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(langIDLabel, null);
            langIDLabel.TabIndex = 8;
            langIDLabel.Text = "Lang ID:";
            // 
            // textLabel
            // 
            textLabel.AutoSize = true;
            textLabel.Location = new System.Drawing.Point(84, 210);
            textLabel.Name = "textLabel";
            textLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(textLabel, null);
            textLabel.TabIndex = 10;
            textLabel.Text = "Text:";
            // 
            // columnNameTextEdit
            // 
            this.columnNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ColumnName", true));
            this.columnNameTextEdit.Location = new System.Drawing.Point(134, 88);
            this.columnNameTextEdit.Name = "columnNameTextEdit";
            this.columnNameTextEdit.Size = new System.Drawing.Size(286, 21);
            this.columnNameTextEdit.TabIndex = 5;
            // 
            // docIDTextEdit
            // 
            this.docIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DocID", true));
            this.docIDTextEdit.Location = new System.Drawing.Point(134, 50);
            this.docIDTextEdit.Name = "docIDTextEdit";
            this.docIDTextEdit.Size = new System.Drawing.Size(286, 21);
            this.docIDTextEdit.TabIndex = 7;
            // 
            // langIDTextEdit
            // 
            this.langIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LangID", true));
            this.langIDTextEdit.Location = new System.Drawing.Point(134, 168);
            this.langIDTextEdit.Name = "langIDTextEdit";
            this.langIDTextEdit.Size = new System.Drawing.Size(286, 21);
            this.langIDTextEdit.TabIndex = 9;
            // 
            // textMemoEdit
            // 
            this.textMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Text", true));
            this.textMemoEdit.Location = new System.Drawing.Point(134, 206);
            this.textMemoEdit.Name = "textMemoEdit";
            this.textMemoEdit.Size = new System.Drawing.Size(737, 105);
            this.textMemoEdit.TabIndex = 12;
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(84, 133);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 12;
            descriptionLabel.Text = "Code:";
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(134, 128);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(286, 21);
            this.descriptionTextEdit.TabIndex = 13;
            // 
            // MutiLangDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(this.textMemoEdit);
            this.Controls.Add(textLabel);
            this.Controls.Add(langIDLabel);
            this.Controls.Add(this.langIDTextEdit);
            this.Controls.Add(docIDLabel);
            this.Controls.Add(this.docIDTextEdit);
            this.Controls.Add(columnNameLabel);
            this.Controls.Add(this.columnNameTextEdit);
            this.Name = "MutiLangDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.columnNameTextEdit, 0);
            this.Controls.SetChildIndex(columnNameLabel, 0);
            this.Controls.SetChildIndex(this.docIDTextEdit, 0);
            this.Controls.SetChildIndex(docIDLabel, 0);
            this.Controls.SetChildIndex(this.langIDTextEdit, 0);
            this.Controls.SetChildIndex(langIDLabel, 0);
            this.Controls.SetChildIndex(textLabel, 0);
            this.Controls.SetChildIndex(this.textMemoEdit, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.columnNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.docIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.langIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit columnNameTextEdit;
        private DevExpress.XtraEditors.TextEdit docIDTextEdit;
        private DevExpress.XtraEditors.TextEdit langIDTextEdit;
        private DevExpress.XtraEditors.MemoEdit textMemoEdit;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;

    }
}
