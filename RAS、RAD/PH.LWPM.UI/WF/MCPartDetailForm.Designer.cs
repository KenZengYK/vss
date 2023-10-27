namespace PH.LWPM.UI.WF
{
    partial class MCPartDetailForm
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
            System.Windows.Forms.Label nameLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label codeLabel;
            System.Windows.Forms.Label sortIDLabel;
            this.nameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.codeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sortIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            nameLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            codeLabel = new System.Windows.Forms.Label();
            sortIDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.BaseCode);
            // 
            // nameLabel
            // 
            nameLabel.AutoSize = true;
            nameLabel.Location = new System.Drawing.Point(74, 131);
            nameLabel.Name = "nameLabel";
            nameLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(nameLabel, null);
            nameLabel.TabIndex = 6;
            nameLabel.Text = "Description(En):";
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name", true));
            this.nameTextEdit.Location = new System.Drawing.Point(187, 128);
            this.nameTextEdit.Name = "nameTextEdit";
            this.nameTextEdit.Size = new System.Drawing.Size(392, 21);
            this.nameTextEdit.TabIndex = 7;
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(56, 167);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 8;
            descriptionLabel.Text = "Description(Local):";
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(187, 164);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(392, 21);
            this.descriptionTextEdit.TabIndex = 9;
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(140, 96);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 9;
            codeLabel.Text = "Code:";
            // 
            // codeTextEdit
            // 
            this.codeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.codeTextEdit.Location = new System.Drawing.Point(187, 93);
            this.codeTextEdit.Name = "codeTextEdit";
            this.codeTextEdit.Size = new System.Drawing.Size(392, 21);
            this.codeTextEdit.TabIndex = 10;
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(122, 64);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 10;
            sortIDLabel.Text = "Seq No:";
            // 
            // sortIDTextEdit
            // 
            this.sortIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDTextEdit.Location = new System.Drawing.Point(187, 61);
            this.sortIDTextEdit.Name = "sortIDTextEdit";
            this.sortIDTextEdit.Size = new System.Drawing.Size(100, 21);
            this.sortIDTextEdit.TabIndex = 11;
            // 
            // MCPartDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDTextEdit);
            this.Controls.Add(codeLabel);
            this.Controls.Add(this.codeTextEdit);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(nameLabel);
            this.Controls.Add(this.nameTextEdit);
            this.Name = "MCPartDetailForm";
            this.Size = new System.Drawing.Size(678, 250);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(nameLabel, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(codeLabel, 0);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit nameTextEdit;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;
        private DevExpress.XtraEditors.TextEdit codeTextEdit;
        private DevExpress.XtraEditors.TextEdit sortIDTextEdit;
    }
}
