namespace PH.BasicInfo.UI.TimeElement
{
    partial class SupplierFactoryDetailForm
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
            this.eRPSupplierLabel = new System.Windows.Forms.Label();
            this.eRPSupplierComboBoxEdit = new DevExpress.XtraEditors.ComboBoxEdit();
            this.descriptionLabel = new System.Windows.Forms.Label();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.supplierFactoryCodeLabel = new System.Windows.Forms.Label();
            this.supplierFactoryCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.label1 = new System.Windows.Forms.Label();
            this.textEdit1 = new DevExpress.XtraEditors.TextEdit();
            this.lbRegionCode = new System.Windows.Forms.Label();
            this.txtRegionCode = new DevExpress.XtraEditors.TextEdit();
            this.lbCountryCode = new System.Windows.Forms.Label();
            this.txtCountryCode = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.eRPSupplierComboBoxEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierFactoryCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRegionCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCountryCode.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.SupplierFactory);
            // 
            // eRPSupplierLabel
            // 
            this.eRPSupplierLabel.AutoSize = true;
            this.eRPSupplierLabel.Location = new System.Drawing.Point(33, 54);
            this.eRPSupplierLabel.Name = "eRPSupplierLabel";
            this.eRPSupplierLabel.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(this.eRPSupplierLabel, null);
            this.eRPSupplierLabel.TabIndex = 4;
            this.eRPSupplierLabel.Text = "ERP\'s Supplier Code:";
            this.eRPSupplierLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // eRPSupplierComboBoxEdit
            // 
            this.eRPSupplierComboBoxEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ERPSupplier", true));
            this.eRPSupplierComboBoxEdit.Location = new System.Drawing.Point(252, 51);
            this.eRPSupplierComboBoxEdit.Name = "eRPSupplierComboBoxEdit";
            this.eRPSupplierComboBoxEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.eRPSupplierComboBoxEdit.Size = new System.Drawing.Size(205, 21);
            this.eRPSupplierComboBoxEdit.TabIndex = 5;
            // 
            // descriptionLabel
            // 
            this.descriptionLabel.AutoSize = true;
            this.descriptionLabel.Location = new System.Drawing.Point(33, 108);
            this.descriptionLabel.Name = "descriptionLabel";
            this.descriptionLabel.Size = new System.Drawing.Size(137, 12);
            this.PlatetoolTipController.SetSuperTip(this.descriptionLabel, null);
            this.descriptionLabel.TabIndex = 8;
            this.descriptionLabel.Text = "Region or Country(EN):";
            this.descriptionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(252, 105);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(205, 21);
            this.descriptionTextEdit.TabIndex = 9;
            // 
            // supplierFactoryCodeLabel
            // 
            this.supplierFactoryCodeLabel.AutoSize = true;
            this.supplierFactoryCodeLabel.Location = new System.Drawing.Point(33, 81);
            this.supplierFactoryCodeLabel.Name = "supplierFactoryCodeLabel";
            this.supplierFactoryCodeLabel.Size = new System.Drawing.Size(209, 12);
            this.PlatetoolTipController.SetSuperTip(this.supplierFactoryCodeLabel, null);
            this.supplierFactoryCodeLabel.TabIndex = 9;
            this.supplierFactoryCodeLabel.Text = "Location of Supplier Factory Code:";
            this.supplierFactoryCodeLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // supplierFactoryCodeTextEdit
            // 
            this.supplierFactoryCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SupplierFactoryCode", true));
            this.supplierFactoryCodeTextEdit.Location = new System.Drawing.Point(252, 78);
            this.supplierFactoryCodeTextEdit.Name = "supplierFactoryCodeTextEdit";
            this.supplierFactoryCodeTextEdit.Size = new System.Drawing.Size(205, 21);
            this.supplierFactoryCodeTextEdit.TabIndex = 10;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(33, 135);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(137, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 11;
            this.label1.Text = "Region or Country(CN):";
            this.label1.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // textEdit1
            // 
            this.textEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DescriptionCN", true));
            this.textEdit1.Location = new System.Drawing.Point(252, 132);
            this.textEdit1.Name = "textEdit1";
            this.textEdit1.Size = new System.Drawing.Size(205, 21);
            this.textEdit1.TabIndex = 12;
            // 
            // lbRegionCode
            // 
            this.lbRegionCode.AutoSize = true;
            this.lbRegionCode.Location = new System.Drawing.Point(33, 164);
            this.lbRegionCode.Name = "lbRegionCode";
            this.lbRegionCode.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbRegionCode, null);
            this.lbRegionCode.TabIndex = 13;
            this.lbRegionCode.Text = "Region Cde:";
            this.lbRegionCode.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtRegionCode
            // 
            this.txtRegionCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RegionCode", true));
            this.txtRegionCode.Location = new System.Drawing.Point(252, 161);
            this.txtRegionCode.Name = "txtRegionCode";
            this.txtRegionCode.Size = new System.Drawing.Size(205, 21);
            this.txtRegionCode.TabIndex = 14;
            // 
            // lbCountryCode
            // 
            this.lbCountryCode.AutoSize = true;
            this.lbCountryCode.Location = new System.Drawing.Point(33, 193);
            this.lbCountryCode.Name = "lbCountryCode";
            this.lbCountryCode.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbCountryCode, null);
            this.lbCountryCode.TabIndex = 15;
            this.lbCountryCode.Text = "Country Cde:";
            this.lbCountryCode.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // txtCountryCode
            // 
            this.txtCountryCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CountryCode", true));
            this.txtCountryCode.Location = new System.Drawing.Point(252, 190);
            this.txtCountryCode.Name = "txtCountryCode";
            this.txtCountryCode.Size = new System.Drawing.Size(205, 21);
            this.txtCountryCode.TabIndex = 16;
            // 
            // SupplierFactoryDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lbCountryCode);
            this.Controls.Add(this.txtCountryCode);
            this.Controls.Add(this.lbRegionCode);
            this.Controls.Add(this.txtRegionCode);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.textEdit1);
            this.Controls.Add(this.supplierFactoryCodeLabel);
            this.Controls.Add(this.supplierFactoryCodeTextEdit);
            this.Controls.Add(this.descriptionLabel);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(this.eRPSupplierLabel);
            this.Controls.Add(this.eRPSupplierComboBoxEdit);
            this.Name = "SupplierFactoryDetailForm";
            this.Size = new System.Drawing.Size(635, 324);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.eRPSupplierComboBoxEdit, 0);
            this.Controls.SetChildIndex(this.eRPSupplierLabel, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(this.descriptionLabel, 0);
            this.Controls.SetChildIndex(this.supplierFactoryCodeTextEdit, 0);
            this.Controls.SetChildIndex(this.supplierFactoryCodeLabel, 0);
            this.Controls.SetChildIndex(this.textEdit1, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.txtRegionCode, 0);
            this.Controls.SetChildIndex(this.lbRegionCode, 0);
            this.Controls.SetChildIndex(this.txtCountryCode, 0);
            this.Controls.SetChildIndex(this.lbCountryCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.eRPSupplierComboBoxEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.supplierFactoryCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRegionCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCountryCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label eRPSupplierLabel;
        private DevExpress.XtraEditors.ComboBoxEdit eRPSupplierComboBoxEdit;
        private System.Windows.Forms.Label descriptionLabel;
        private DevExpress.XtraEditors.TextEdit descriptionTextEdit;
        private System.Windows.Forms.Label supplierFactoryCodeLabel;
        private DevExpress.XtraEditors.TextEdit supplierFactoryCodeTextEdit;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.TextEdit textEdit1;
        private System.Windows.Forms.Label lbRegionCode;
        private DevExpress.XtraEditors.TextEdit txtRegionCode;
        private System.Windows.Forms.Label lbCountryCode;
        private DevExpress.XtraEditors.TextEdit txtCountryCode;
    }
}
