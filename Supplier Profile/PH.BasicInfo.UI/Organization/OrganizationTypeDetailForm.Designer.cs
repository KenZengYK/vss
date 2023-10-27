namespace PH.BasicInfo.UI.Organization
{
    partial class OrganizationTypeDetailForm
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
            System.Windows.Forms.Label orgTypeLabel;
            System.Windows.Forms.Label descriptionLabel;
            this.orgTypeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            orgTypeLabel = new System.Windows.Forms.Label();
            descriptionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgTypeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.OrganizationType);
            // 
            // orgTypeLabel
            // 
            orgTypeLabel.AutoSize = true;
            orgTypeLabel.Location = new System.Drawing.Point(69, 56);
            orgTypeLabel.Name = "orgTypeLabel";
            orgTypeLabel.Size = new System.Drawing.Size(95, 12);
            orgTypeLabel.TabIndex = 3;
            orgTypeLabel.Text = "Organization Type:";
            // 
            // orgTypeTextEdit
            // 
            this.orgTypeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrgType", true));
            this.orgTypeTextEdit.EnterMoveNextControl = true;
            this.orgTypeTextEdit.Location = new System.Drawing.Point(188, 54);
            this.orgTypeTextEdit.Name = "orgTypeTextEdit";
            this.orgTypeTextEdit.Size = new System.Drawing.Size(328, 21);
            this.orgTypeTextEdit.TabIndex = 1;
            // 
            // descriptionMemoEdit
            // 
            this.descriptionMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionMemoEdit.Location = new System.Drawing.Point(188, 90);
            this.descriptionMemoEdit.Name = "descriptionMemoEdit";
            this.descriptionMemoEdit.Size = new System.Drawing.Size(328, 197);
            this.descriptionMemoEdit.TabIndex = 2;
            // 
            // descriptionLabel
            // 
            descriptionLabel.AutoSize = true;
            descriptionLabel.Location = new System.Drawing.Point(103, 95);
            descriptionLabel.Name = "descriptionLabel";
            descriptionLabel.Size = new System.Drawing.Size(61, 12);
            descriptionLabel.TabIndex = 7;
            descriptionLabel.Text = "Description:";
            // 
            // OrganizationTypeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(descriptionLabel);
            this.Controls.Add(this.descriptionMemoEdit);
            this.Controls.Add(orgTypeLabel);
            this.Controls.Add(this.orgTypeTextEdit);
            this.Name = "OrganizationTypeDetailForm";
            this.Size = new System.Drawing.Size(844, 403);
            this.Controls.SetChildIndex(this.orgTypeTextEdit, 0);
            this.Controls.SetChildIndex(orgTypeLabel, 0);
            this.Controls.SetChildIndex(this.descriptionMemoEdit, 0);
            this.Controls.SetChildIndex(descriptionLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orgTypeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit orgTypeTextEdit;
        private DevExpress.XtraEditors.MemoEdit descriptionMemoEdit;
    }
}
