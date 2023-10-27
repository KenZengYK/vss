namespace PH.LWPM.UI.PO
{
    partial class BuyerDetailForm
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
            System.Windows.Forms.Label name_TWLabel;
            System.Windows.Forms.Label name_ENLabel;
            System.Windows.Forms.Label addressLabel;
            System.Windows.Forms.Label attnLabel;
            System.Windows.Forms.Label emailLabel;
            System.Windows.Forms.Label telLabel;
            System.Windows.Forms.Label faxLabel;
            this.codeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.name_TWTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.name_ENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.attnTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.emailTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.telTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.faxTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            codeLabel = new System.Windows.Forms.Label();
            name_TWLabel = new System.Windows.Forms.Label();
            name_ENLabel = new System.Windows.Forms.Label();
            addressLabel = new System.Windows.Forms.Label();
            attnLabel = new System.Windows.Forms.Label();
            emailLabel = new System.Windows.Forms.Label();
            telLabel = new System.Windows.Forms.Label();
            faxLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_TWTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_ENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.attnTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.emailTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.telTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.faxTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.Buyer);
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(72, 56);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 4;
            codeLabel.Text = "Code:";
            // 
            // name_TWLabel
            // 
            name_TWLabel.AutoSize = true;
            name_TWLabel.Location = new System.Drawing.Point(42, 91);
            name_TWLabel.Name = "name_TWLabel";
            name_TWLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(name_TWLabel, null);
            name_TWLabel.TabIndex = 6;
            name_TWLabel.Text = "Name (TW):";
            // 
            // name_ENLabel
            // 
            name_ENLabel.AutoSize = true;
            name_ENLabel.Location = new System.Drawing.Point(42, 122);
            name_ENLabel.Name = "name_ENLabel";
            name_ENLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(name_ENLabel, null);
            name_ENLabel.TabIndex = 8;
            name_ENLabel.Text = "Name (EN):";
            // 
            // addressLabel
            // 
            addressLabel.AutoSize = true;
            addressLabel.Location = new System.Drawing.Point(356, 60);
            addressLabel.Name = "addressLabel";
            addressLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(addressLabel, null);
            addressLabel.TabIndex = 10;
            addressLabel.Text = "Address:";
            // 
            // attnLabel
            // 
            attnLabel.AutoSize = true;
            attnLabel.Location = new System.Drawing.Point(72, 149);
            attnLabel.Name = "attnLabel";
            attnLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(attnLabel, null);
            attnLabel.TabIndex = 12;
            attnLabel.Text = "Attn:";
            // 
            // emailLabel
            // 
            emailLabel.AutoSize = true;
            emailLabel.Location = new System.Drawing.Point(66, 209);
            emailLabel.Name = "emailLabel";
            emailLabel.Size = new System.Drawing.Size(41, 12);
            this.PlatetoolTipController.SetSuperTip(emailLabel, null);
            emailLabel.TabIndex = 14;
            emailLabel.Text = "Email:";
            // 
            // telLabel
            // 
            telLabel.AutoSize = true;
            telLabel.Location = new System.Drawing.Point(78, 179);
            telLabel.Name = "telLabel";
            telLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(telLabel, null);
            telLabel.TabIndex = 16;
            telLabel.Text = "Tel:";
            // 
            // faxLabel
            // 
            faxLabel.AutoSize = true;
            faxLabel.Location = new System.Drawing.Point(78, 238);
            faxLabel.Name = "faxLabel";
            faxLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(faxLabel, null);
            faxLabel.TabIndex = 18;
            faxLabel.Text = "Fax:";
            // 
            // codeTextEdit
            // 
            this.codeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.codeTextEdit.Location = new System.Drawing.Point(113, 51);
            this.codeTextEdit.Name = "codeTextEdit";
            this.codeTextEdit.Size = new System.Drawing.Size(219, 21);
            this.codeTextEdit.TabIndex = 5;
            // 
            // name_TWTextEdit
            // 
            this.name_TWTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name_TW", true));
            this.name_TWTextEdit.Location = new System.Drawing.Point(113, 85);
            this.name_TWTextEdit.Name = "name_TWTextEdit";
            this.name_TWTextEdit.Size = new System.Drawing.Size(219, 21);
            this.name_TWTextEdit.TabIndex = 7;
            // 
            // name_ENTextEdit
            // 
            this.name_ENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name_EN", true));
            this.name_ENTextEdit.Location = new System.Drawing.Point(113, 116);
            this.name_ENTextEdit.Name = "name_ENTextEdit";
            this.name_ENTextEdit.Size = new System.Drawing.Size(219, 21);
            this.name_ENTextEdit.TabIndex = 9;
            // 
            // attnTextEdit
            // 
            this.attnTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Attn", true));
            this.attnTextEdit.Location = new System.Drawing.Point(113, 143);
            this.attnTextEdit.Name = "attnTextEdit";
            this.attnTextEdit.Size = new System.Drawing.Size(219, 21);
            this.attnTextEdit.TabIndex = 13;
            // 
            // emailTextEdit
            // 
            this.emailTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Email", true));
            this.emailTextEdit.Location = new System.Drawing.Point(113, 203);
            this.emailTextEdit.Name = "emailTextEdit";
            this.emailTextEdit.Size = new System.Drawing.Size(219, 21);
            this.emailTextEdit.TabIndex = 15;
            // 
            // telTextEdit
            // 
            this.telTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Tel", true));
            this.telTextEdit.Location = new System.Drawing.Point(113, 173);
            this.telTextEdit.Name = "telTextEdit";
            this.telTextEdit.Size = new System.Drawing.Size(219, 21);
            this.telTextEdit.TabIndex = 17;
            // 
            // faxTextEdit
            // 
            this.faxTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Fax", true));
            this.faxTextEdit.Location = new System.Drawing.Point(113, 232);
            this.faxTextEdit.Name = "faxTextEdit";
            this.faxTextEdit.Size = new System.Drawing.Size(219, 21);
            this.faxTextEdit.TabIndex = 19;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Address", true));
            this.memoEdit1.Location = new System.Drawing.Point(415, 54);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(300, 199);
            this.memoEdit1.TabIndex = 20;
            // 
            // BuyerDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(faxLabel);
            this.Controls.Add(this.faxTextEdit);
            this.Controls.Add(telLabel);
            this.Controls.Add(this.telTextEdit);
            this.Controls.Add(emailLabel);
            this.Controls.Add(this.emailTextEdit);
            this.Controls.Add(attnLabel);
            this.Controls.Add(this.attnTextEdit);
            this.Controls.Add(addressLabel);
            this.Controls.Add(name_ENLabel);
            this.Controls.Add(this.name_ENTextEdit);
            this.Controls.Add(name_TWLabel);
            this.Controls.Add(this.name_TWTextEdit);
            this.Controls.Add(codeLabel);
            this.Controls.Add(this.codeTextEdit);
            this.Name = "BuyerDetailForm";
            this.Size = new System.Drawing.Size(837, 413);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(codeLabel, 0);
            this.Controls.SetChildIndex(this.name_TWTextEdit, 0);
            this.Controls.SetChildIndex(name_TWLabel, 0);
            this.Controls.SetChildIndex(this.name_ENTextEdit, 0);
            this.Controls.SetChildIndex(name_ENLabel, 0);
            this.Controls.SetChildIndex(addressLabel, 0);
            this.Controls.SetChildIndex(this.attnTextEdit, 0);
            this.Controls.SetChildIndex(attnLabel, 0);
            this.Controls.SetChildIndex(this.emailTextEdit, 0);
            this.Controls.SetChildIndex(emailLabel, 0);
            this.Controls.SetChildIndex(this.telTextEdit, 0);
            this.Controls.SetChildIndex(telLabel, 0);
            this.Controls.SetChildIndex(this.faxTextEdit, 0);
            this.Controls.SetChildIndex(faxLabel, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_TWTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.name_ENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.attnTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.emailTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.telTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.faxTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit codeTextEdit;
        private DevExpress.XtraEditors.TextEdit name_TWTextEdit;
        private DevExpress.XtraEditors.TextEdit name_ENTextEdit;
        private DevExpress.XtraEditors.TextEdit attnTextEdit;
        private DevExpress.XtraEditors.TextEdit emailTextEdit;
        private DevExpress.XtraEditors.TextEdit telTextEdit;
        private DevExpress.XtraEditors.TextEdit faxTextEdit;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
    }
}
