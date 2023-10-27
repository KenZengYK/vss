namespace PH.BasicInfo.UI.MasterDB
{
    partial class TimeFrameIICompanyDetailForm
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
            System.Windows.Forms.Label companyCodeLabel;
            System.Windows.Forms.Label addressLabel;
            System.Windows.Forms.Label lbDescription;
            System.Windows.Forms.Label lbTel;
            System.Windows.Forms.Label lbCompany;
            this.companyCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.addressTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.txtDescription = new DevExpress.XtraEditors.TextEdit();
            this.txtTel = new DevExpress.XtraEditors.TextEdit();
            this.txtCompany = new DevExpress.XtraEditors.TextEdit();
            companyCodeLabel = new System.Windows.Forms.Label();
            addressLabel = new System.Windows.Forms.Label();
            lbDescription = new System.Windows.Forms.Label();
            lbTel = new System.Windows.Forms.Label();
            lbCompany = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.companyCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.addressTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescription.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTel.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCompany.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TimeFrameIICompany);
            // 
            // companyCodeLabel
            // 
            companyCodeLabel.AutoSize = true;
            companyCodeLabel.Location = new System.Drawing.Point(93, 49);
            companyCodeLabel.Name = "companyCodeLabel";
            companyCodeLabel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(companyCodeLabel, null);
            companyCodeLabel.TabIndex = 4;
            companyCodeLabel.Text = "Cde:";
            // 
            // addressLabel
            // 
            addressLabel.AutoSize = true;
            addressLabel.Location = new System.Drawing.Point(69, 142);
            addressLabel.Name = "addressLabel";
            addressLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(addressLabel, null);
            addressLabel.TabIndex = 6;
            addressLabel.Text = "Address:";
            // 
            // lbDescription
            // 
            lbDescription.AutoSize = true;
            lbDescription.Location = new System.Drawing.Point(51, 111);
            lbDescription.Name = "lbDescription";
            lbDescription.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(lbDescription, null);
            lbDescription.TabIndex = 8;
            lbDescription.Text = "Full Desc.:";
            // 
            // lbTel
            // 
            lbTel.AutoSize = true;
            lbTel.Location = new System.Drawing.Point(93, 175);
            lbTel.Name = "lbTel";
            lbTel.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(lbTel, null);
            lbTel.TabIndex = 10;
            lbTel.Text = "Tel:";
            // 
            // companyCodeTextEdit
            // 
            this.companyCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CompanyCode", true));
            this.companyCodeTextEdit.Location = new System.Drawing.Point(133, 46);
            this.companyCodeTextEdit.Name = "companyCodeTextEdit";
            this.companyCodeTextEdit.Size = new System.Drawing.Size(174, 21);
            this.companyCodeTextEdit.TabIndex = 5;
            // 
            // addressTextEdit
            // 
            this.addressTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Address", true));
            this.addressTextEdit.Location = new System.Drawing.Point(133, 139);
            this.addressTextEdit.Name = "addressTextEdit";
            this.addressTextEdit.Size = new System.Drawing.Size(444, 21);
            this.addressTextEdit.TabIndex = 7;
            // 
            // txtDescription
            // 
            this.txtDescription.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.txtDescription.Location = new System.Drawing.Point(133, 108);
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.Size = new System.Drawing.Size(444, 21);
            this.txtDescription.TabIndex = 9;
            // 
            // txtTel
            // 
            this.txtTel.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Tel", true));
            this.txtTel.Location = new System.Drawing.Point(133, 172);
            this.txtTel.Name = "txtTel";
            this.txtTel.Size = new System.Drawing.Size(174, 21);
            this.txtTel.TabIndex = 11;
            // 
            // lbCompany
            // 
            lbCompany.AutoSize = true;
            lbCompany.Location = new System.Drawing.Point(69, 80);
            lbCompany.Name = "lbCompany";
            lbCompany.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(lbCompany, null);
            lbCompany.TabIndex = 12;
            lbCompany.Text = "Company:";
            // 
            // txtCompany
            // 
            this.txtCompany.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Company", true));
            this.txtCompany.Location = new System.Drawing.Point(133, 77);
            this.txtCompany.Name = "txtCompany";
            this.txtCompany.Size = new System.Drawing.Size(174, 21);
            this.txtCompany.TabIndex = 13;
            // 
            // TimeFrameIICompanyDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(lbCompany);
            this.Controls.Add(this.txtCompany);
            this.Controls.Add(lbTel);
            this.Controls.Add(this.txtTel);
            this.Controls.Add(lbDescription);
            this.Controls.Add(this.txtDescription);
            this.Controls.Add(addressLabel);
            this.Controls.Add(this.addressTextEdit);
            this.Controls.Add(companyCodeLabel);
            this.Controls.Add(this.companyCodeTextEdit);
            this.Name = "TimeFrameIICompanyDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.companyCodeTextEdit, 0);
            this.Controls.SetChildIndex(companyCodeLabel, 0);
            this.Controls.SetChildIndex(this.addressTextEdit, 0);
            this.Controls.SetChildIndex(addressLabel, 0);
            this.Controls.SetChildIndex(this.txtDescription, 0);
            this.Controls.SetChildIndex(lbDescription, 0);
            this.Controls.SetChildIndex(this.txtTel, 0);
            this.Controls.SetChildIndex(lbTel, 0);
            this.Controls.SetChildIndex(this.txtCompany, 0);
            this.Controls.SetChildIndex(lbCompany, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.companyCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.addressTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDescription.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtTel.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCompany.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit companyCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit addressTextEdit;
        private DevExpress.XtraEditors.TextEdit txtDescription;
        private DevExpress.XtraEditors.TextEdit txtTel;
        private DevExpress.XtraEditors.TextEdit txtCompany;
    }
}
