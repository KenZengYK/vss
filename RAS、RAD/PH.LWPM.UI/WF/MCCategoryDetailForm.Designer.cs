namespace PH.LWPM.UI.WF
{
    partial class MCCategoryDetailForm
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
            System.Windows.Forms.Label langLabel;
            System.Windows.Forms.Label nameLabel;
            System.Windows.Forms.Label descriptionLabel;
            System.Windows.Forms.Label sortIDLabel;
            this.langTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sortIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            langLabel = new System.Windows.Forms.Label();
            nameLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            sortIDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.langTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
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
            // langLabel
            // 
            langLabel.AutoSize = true;
            langLabel.Location = new System.Drawing.Point(96, 108);
            langLabel.Name = "langLabel";
            langLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(langLabel, null);
            langLabel.TabIndex = 4;
            langLabel.Text = "HW Category Code:";
            // 
            // nameLabel
            // 
            nameLabel.AutoSize = true;
            nameLabel.Location = new System.Drawing.Point(102, 147);
            nameLabel.Name = "nameLabel";
            nameLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(nameLabel, null);
            nameLabel.TabIndex = 6;
            nameLabel.Text = "Description(En):";
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(84, 184);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(descriptionLabel, null);
            descriptionLabel.TabIndex = 8;
            descriptionLabel.Text = "Description(Local):";
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(156, 76);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 10;
            sortIDLabel.Text = "Seq No:";
            // 
            // langTextEdit
            // 
            this.langTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Lang", true));
            this.langTextEdit.Location = new System.Drawing.Point(209, 103);
            this.langTextEdit.Name = "langTextEdit";
            this.langTextEdit.Size = new System.Drawing.Size(310, 21);
            this.langTextEdit.TabIndex = 5;
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name", true));
            this.nameTextEdit.Location = new System.Drawing.Point(209, 142);
            this.nameTextEdit.Name = "nameTextEdit";
            this.nameTextEdit.Size = new System.Drawing.Size(310, 21);
            this.nameTextEdit.TabIndex = 7;
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(209, 181);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(310, 21);
            this.descriptionTextEdit.TabIndex = 9;
            // 
            // sortIDTextEdit
            // 
            this.sortIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDTextEdit.Location = new System.Drawing.Point(209, 71);
            this.sortIDTextEdit.Name = "sortIDTextEdit";
            this.sortIDTextEdit.Size = new System.Drawing.Size(310, 21);
            this.sortIDTextEdit.TabIndex = 11;
            // 
            // MCCategoryDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDTextEdit);
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(nameLabel);
            this.Controls.Add(this.nameTextEdit);
            this.Controls.Add(langLabel);
            this.Controls.Add(this.langTextEdit);
            this.Name = "MCCategoryDetailForm";
            this.Size = new System.Drawing.Size(1000, 283);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.langTextEdit, 0);
            this.Controls.SetChildIndex(langLabel, 0);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(nameLabel, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.langTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit langTextEdit;
        private DevExpress.XtraEditors.TextEdit nameTextEdit;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;
        private DevExpress.XtraEditors.TextEdit sortIDTextEdit;
    }
}
