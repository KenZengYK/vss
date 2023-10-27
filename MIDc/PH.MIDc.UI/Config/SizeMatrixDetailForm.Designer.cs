namespace PH.MIDc.UI.Config
{
    partial class SizeMatrixDetailForm
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
            this.txtDataNameEN = new DevExpress.XtraEditors.TextEdit();
            this.DataNameENLabel = new System.Windows.Forms.Label();
            this.memoEdit1 = new DevExpress.XtraEditors.MemoEdit();
            this.DescriptionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameEN.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.Platform.Misc.BO.Misc_DataDictionary);
            // 
            // txtDataNameEN
            // 
            this.txtDataNameEN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "DataCode", true));
            this.txtDataNameEN.Enabled = false;
            this.txtDataNameEN.Location = new System.Drawing.Point(114, 64);
            this.txtDataNameEN.Name = "txtDataNameEN";
            this.txtDataNameEN.Size = new System.Drawing.Size(265, 21);
            this.txtDataNameEN.TabIndex = 37;
            this.txtDataNameEN.Tag = "";
            // 
            // DataNameENLabel
            // 
            this.DataNameENLabel.Location = new System.Drawing.Point(16, 69);
            this.DataNameENLabel.Name = "DataNameENLabel";
            this.DataNameENLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DataNameENLabel, null);
            this.DataNameENLabel.TabIndex = 36;
            this.DataNameENLabel.Text = "Code:";
            this.DataNameENLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // memoEdit1
            // 
            this.memoEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.memoEdit1.Location = new System.Drawing.Point(114, 96);
            this.memoEdit1.Name = "memoEdit1";
            this.memoEdit1.Size = new System.Drawing.Size(265, 136);
            this.memoEdit1.TabIndex = 35;
            this.memoEdit1.Tag = "";
            // 
            // DescriptionLabel
            // 
            this.DescriptionLabel.Location = new System.Drawing.Point(16, 98);
            this.DescriptionLabel.Name = "DescriptionLabel";
            this.DescriptionLabel.Size = new System.Drawing.Size(92, 14);
            this.PlatetoolTipController.SetSuperTip(this.DescriptionLabel, null);
            this.DescriptionLabel.TabIndex = 34;
            this.DescriptionLabel.Text = "Description:";
            this.DescriptionLabel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            // 
            // SizeMatrixDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtDataNameEN);
            this.Controls.Add(this.DataNameENLabel);
            this.Controls.Add(this.memoEdit1);
            this.Controls.Add(this.DescriptionLabel);
            this.Name = "SizeMatrixDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.DescriptionLabel, 0);
            this.Controls.SetChildIndex(this.memoEdit1, 0);
            this.Controls.SetChildIndex(this.DataNameENLabel, 0);
            this.Controls.SetChildIndex(this.txtDataNameEN, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataNameEN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.memoEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit txtDataNameEN;
        private System.Windows.Forms.Label DataNameENLabel;
        private DevExpress.XtraEditors.MemoEdit memoEdit1;
        private System.Windows.Forms.Label DescriptionLabel;
    }
}
