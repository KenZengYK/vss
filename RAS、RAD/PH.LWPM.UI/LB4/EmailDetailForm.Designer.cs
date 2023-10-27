namespace PH.LWPM.UI.LB4
{
    partial class EmailDetailForm
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
            System.Windows.Forms.Label userIDLabel;
            System.Windows.Forms.Label emailAddressLabel;
            System.Windows.Forms.Label sortIDLabel;
            this.userIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.emailAddressTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sortIDSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            userIDLabel = new System.Windows.Forms.Label();
            emailAddressLabel = new System.Windows.Forms.Label();
            sortIDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.userIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emailAddressTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.Email);
            // 
            // userIDLabel
            // 
            userIDLabel.AutoSize = true;
            userIDLabel.Location = new System.Drawing.Point(98, 63);
            userIDLabel.Name = "userIDLabel";
            userIDLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(userIDLabel, null);
            userIDLabel.TabIndex = 4;
            userIDLabel.Text = "User ID:";
            userIDLabel.Visible = false;
            // 
            // userIDTextEdit
            // 
            this.userIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UserID", true));
            this.userIDTextEdit.Location = new System.Drawing.Point(157, 60);
            this.userIDTextEdit.Name = "userIDTextEdit";
            this.userIDTextEdit.Size = new System.Drawing.Size(271, 21);
            this.userIDTextEdit.TabIndex = 5;
            this.userIDTextEdit.Visible = false;
            // 
            // emailAddressLabel
            // 
            emailAddressLabel.AutoSize = true;
            emailAddressLabel.Location = new System.Drawing.Point(62, 111);
            emailAddressLabel.Name = "emailAddressLabel";
            emailAddressLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(emailAddressLabel, null);
            emailAddressLabel.TabIndex = 6;
            emailAddressLabel.Text = "Email Address:";
            // 
            // emailAddressTextEdit
            // 
            this.emailAddressTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EmailAddress", true));
            this.emailAddressTextEdit.Location = new System.Drawing.Point(157, 106);
            this.emailAddressTextEdit.Name = "emailAddressTextEdit";
            this.emailAddressTextEdit.Size = new System.Drawing.Size(271, 21);
            this.emailAddressTextEdit.TabIndex = 7;
            // 
            // sortIDLabel
            // 
            sortIDLabel.AutoSize = true;
            sortIDLabel.Location = new System.Drawing.Point(98, 162);
            sortIDLabel.Name = "sortIDLabel";
            sortIDLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(sortIDLabel, null);
            sortIDLabel.TabIndex = 8;
            sortIDLabel.Text = "Sort ID:";
            sortIDLabel.Visible = false;
            // 
            // sortIDSpinEdit
            // 
            this.sortIDSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.sortIDSpinEdit.Location = new System.Drawing.Point(157, 159);
            this.sortIDSpinEdit.Name = "sortIDSpinEdit";
            this.sortIDSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.sortIDSpinEdit.Size = new System.Drawing.Size(72, 21);
            this.sortIDSpinEdit.TabIndex = 9;
            this.sortIDSpinEdit.Visible = false;
            // 
            // EmailDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(sortIDLabel);
            this.Controls.Add(this.sortIDSpinEdit);
            this.Controls.Add(emailAddressLabel);
            this.Controls.Add(this.emailAddressTextEdit);
            this.Controls.Add(userIDLabel);
            this.Controls.Add(this.userIDTextEdit);
            this.Name = "EmailDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.userIDTextEdit, 0);
            this.Controls.SetChildIndex(userIDLabel, 0);
            this.Controls.SetChildIndex(this.emailAddressTextEdit, 0);
            this.Controls.SetChildIndex(emailAddressLabel, 0);
            this.Controls.SetChildIndex(this.sortIDSpinEdit, 0);
            this.Controls.SetChildIndex(sortIDLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.userIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emailAddressTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDSpinEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit userIDTextEdit;
        private DevExpress.XtraEditors.TextEdit emailAddressTextEdit;
        private DevExpress.XtraEditors.SpinEdit sortIDSpinEdit;
    }
}
