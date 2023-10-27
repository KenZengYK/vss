namespace PH.MIDc.UI.Config
{
    partial class BrandDetailForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.labBrandCode = new DevExpress.XtraEditors.LabelControl();
            this.txtBrandCode = new DevExpress.XtraEditors.TextEdit();
            this.txtBrandName_EN = new DevExpress.XtraEditors.TextEdit();
            this.labBrandName_EN = new DevExpress.XtraEditors.LabelControl();
            this.txtBrandName_CN = new DevExpress.XtraEditors.TextEdit();
            this.labBrandName_CN = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrandCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrandName_EN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrandName_CN.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.Brand);
            // 
            // labBrandCode
            // 
            this.labBrandCode.Location = new System.Drawing.Point(68, 84);
            this.labBrandCode.Name = "labBrandCode";
            this.labBrandCode.Size = new System.Drawing.Size(59, 14);
            this.labBrandCode.TabIndex = 4;
            this.labBrandCode.Text = "BrandCode";
            // 
            // txtBrandCode
            // 
            this.txtBrandCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BrandCode", true));
            this.txtBrandCode.Location = new System.Drawing.Point(165, 81);
            this.txtBrandCode.Name = "txtBrandCode";
            this.txtBrandCode.Size = new System.Drawing.Size(131, 21);
            this.txtBrandCode.TabIndex = 6;
            // 
            // txtBrandName_EN
            // 
            this.txtBrandName_EN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BrandName_EN", true));
            this.txtBrandName_EN.Location = new System.Drawing.Point(165, 124);
            this.txtBrandName_EN.Name = "txtBrandName_EN";
            this.txtBrandName_EN.Size = new System.Drawing.Size(131, 21);
            this.txtBrandName_EN.TabIndex = 8;
            // 
            // labBrandName_EN
            // 
            this.labBrandName_EN.Location = new System.Drawing.Point(68, 127);
            this.labBrandName_EN.Name = "labBrandName_EN";
            this.labBrandName_EN.Size = new System.Drawing.Size(84, 14);
            this.labBrandName_EN.TabIndex = 7;
            this.labBrandName_EN.Text = "BrandName_EN";
            // 
            // txtBrandName_CN
            // 
            this.txtBrandName_CN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BrandName_CN", true));
            this.txtBrandName_CN.Location = new System.Drawing.Point(165, 166);
            this.txtBrandName_CN.Name = "txtBrandName_CN";
            this.txtBrandName_CN.Size = new System.Drawing.Size(131, 21);
            this.txtBrandName_CN.TabIndex = 10;
            // 
            // labBrandName_CN
            // 
            this.labBrandName_CN.Location = new System.Drawing.Point(68, 169);
            this.labBrandName_CN.Name = "labBrandName_CN";
            this.labBrandName_CN.Size = new System.Drawing.Size(84, 14);
            this.labBrandName_CN.TabIndex = 9;
            this.labBrandName_CN.Text = "BrandName_CN";
            // 
            // BrandDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtBrandName_CN);
            this.Controls.Add(this.labBrandName_CN);
            this.Controls.Add(this.txtBrandName_EN);
            this.Controls.Add(this.labBrandName_EN);
            this.Controls.Add(this.txtBrandCode);
            this.Controls.Add(this.labBrandCode);
            this.Name = "BrandDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.labBrandCode, 0);
            this.Controls.SetChildIndex(this.txtBrandCode, 0);
            this.Controls.SetChildIndex(this.labBrandName_EN, 0);
            this.Controls.SetChildIndex(this.txtBrandName_EN, 0);
            this.Controls.SetChildIndex(this.labBrandName_CN, 0);
            this.Controls.SetChildIndex(this.txtBrandName_CN, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrandCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrandName_EN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBrandName_CN.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labBrandCode;
        private DevExpress.XtraEditors.TextEdit txtBrandCode;
        private DevExpress.XtraEditors.TextEdit txtBrandName_EN;
        private DevExpress.XtraEditors.LabelControl labBrandName_EN;
        private DevExpress.XtraEditors.TextEdit txtBrandName_CN;
        private DevExpress.XtraEditors.LabelControl labBrandName_CN;
    }
}