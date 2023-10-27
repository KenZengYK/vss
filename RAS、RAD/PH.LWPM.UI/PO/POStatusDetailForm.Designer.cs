namespace PH.LWPM.UI.PO
{
    partial class POStatusDetailForm
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
            System.Windows.Forms.Label codeLabel;
            System.Windows.Forms.Label nameLabel;
            this.codeTextBox = new System.Windows.Forms.TextBox();
            this.nameTextEdit = new DevExpress.XtraEditors.TextEdit();
            codeLabel = new System.Windows.Forms.Label();
            nameLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
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
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(82, 83);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 4;
            codeLabel.Text = "Code:";
            // 
            // codeTextBox
            // 
            this.codeTextBox.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "Code", true));
            this.codeTextBox.Location = new System.Drawing.Point(123, 80);
            this.codeTextBox.Name = "codeTextBox";
            this.codeTextBox.Size = new System.Drawing.Size(206, 21);
            this.PlatetoolTipController.SetSuperTip(this.codeTextBox, null);
            this.codeTextBox.TabIndex = 5;
            // 
            // nameLabel
            // 
            nameLabel.AutoSize = true;
            nameLabel.Location = new System.Drawing.Point(83, 121);
            nameLabel.Name = "nameLabel";
            nameLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(nameLabel, null);
            nameLabel.TabIndex = 6;
            nameLabel.Text = "Name:";
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name", true));
            this.nameTextEdit.Location = new System.Drawing.Point(124, 118);
            this.nameTextEdit.Name = "nameTextEdit";
            this.nameTextEdit.Size = new System.Drawing.Size(205, 21);
            this.nameTextEdit.TabIndex = 7;
            // 
            // POStatusDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(nameLabel);
            this.Controls.Add(this.nameTextEdit);
            this.Controls.Add(codeLabel);
            this.Controls.Add(this.codeTextBox);
            this.Name = "POStatusDetailForm";
            this.Size = new System.Drawing.Size(619, 314);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.codeTextBox, 0);
            this.Controls.SetChildIndex(codeLabel, 0);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(nameLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox codeTextBox;
        private DevExpress.XtraEditors.TextEdit nameTextEdit;
    }
}
