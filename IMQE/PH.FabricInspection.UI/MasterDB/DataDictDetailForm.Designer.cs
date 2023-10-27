namespace PH.FabricInspection.UI.MasterDB
{
    partial class DataDictDetailForm
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
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtCode = new DevExpress.XtraEditors.TextEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.txtDesc_EN = new DevExpress.XtraEditors.MemoEdit();
            this.txtDesc_CN = new DevExpress.XtraEditors.MemoEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDesc_EN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDesc_CN.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.DataDict);
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(98, 59);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(21, 14);
            this.labelControl1.TabIndex = 4;
            this.labelControl1.Text = "Cde";
            // 
            // txtCode
            // 
            this.txtCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.txtCode.Location = new System.Drawing.Point(143, 56);
            this.txtCode.Name = "txtCode";
            this.txtCode.Size = new System.Drawing.Size(182, 21);
            this.txtCode.TabIndex = 5;
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(60, 89);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(59, 14);
            this.labelControl2.TabIndex = 6;
            this.labelControl2.Text = "Desc. (EN)";
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(60, 199);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(59, 14);
            this.labelControl3.TabIndex = 8;
            this.labelControl3.Text = "Desc. (CN)";
            // 
            // txtDesc_EN
            // 
            this.txtDesc_EN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_EN", true));
            this.txtDesc_EN.Location = new System.Drawing.Point(143, 87);
            this.txtDesc_EN.Name = "txtDesc_EN";
            this.txtDesc_EN.Size = new System.Drawing.Size(427, 96);
            this.txtDesc_EN.TabIndex = 12;
            // 
            // txtDesc_CN
            // 
            this.txtDesc_CN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Desc_CN", true));
            this.txtDesc_CN.Location = new System.Drawing.Point(143, 197);
            this.txtDesc_CN.Name = "txtDesc_CN";
            this.txtDesc_CN.Size = new System.Drawing.Size(427, 96);
            this.txtDesc_CN.TabIndex = 13;
            // 
            // DataDictDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtDesc_CN);
            this.Controls.Add(this.txtDesc_EN);
            this.Controls.Add(this.labelControl3);
            this.Controls.Add(this.labelControl2);
            this.Controls.Add(this.txtCode);
            this.Controls.Add(this.labelControl1);
            this.Name = "DataDictDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            this.Controls.SetChildIndex(this.txtCode, 0);
            this.Controls.SetChildIndex(this.labelControl2, 0);
            this.Controls.SetChildIndex(this.labelControl3, 0);
            this.Controls.SetChildIndex(this.txtDesc_EN, 0);
            this.Controls.SetChildIndex(this.txtDesc_CN, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDesc_EN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDesc_CN.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtCode;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.MemoEdit txtDesc_EN;
        private DevExpress.XtraEditors.MemoEdit txtDesc_CN;
    }
}