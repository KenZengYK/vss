namespace PH.HDO.UI
{
    partial class HDOInvoiceDetialFrm
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
            System.Windows.Forms.Label hDOLabel;
            System.Windows.Forms.Label invLabel;
            System.Windows.Forms.Label remarkLabel;
            this.hDOTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.invTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.remarkTextEdit = new DevExpress.XtraEditors.TextEdit();
            hDOLabel = new System.Windows.Forms.Label();
            invLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hDOTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.invTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.HDO.BO.HDOInvoice);
            // 
            // hDOLabel
            // 
            hDOLabel.AutoSize = true;
            hDOLabel.Location = new System.Drawing.Point(201, 70);
            hDOLabel.Name = "hDOLabel";
            hDOLabel.Size = new System.Drawing.Size(46, 12);
            this.PlatetoolTipController.SetSuperTip(hDOLabel, null);
            hDOLabel.TabIndex = 4;
            hDOLabel.Text = "HDONo:";
            // 
            // hDOTextEdit
            // 
            this.hDOTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HDO", true));
            this.hDOTextEdit.Location = new System.Drawing.Point(254, 65);
            this.hDOTextEdit.Name = "hDOTextEdit";
            this.hDOTextEdit.Size = new System.Drawing.Size(145, 21);
            this.hDOTextEdit.TabIndex = 5;
            // 
            // invLabel
            // 
            invLabel.AutoSize = true;
            invLabel.Location = new System.Drawing.Point(201, 115);
            invLabel.Name = "invLabel";
            invLabel.Size = new System.Drawing.Size(49, 12);
            this.PlatetoolTipController.SetSuperTip(invLabel, null);
            invLabel.TabIndex = 6;
            invLabel.Text = "Invovice:";
            // 
            // invTextEdit
            // 
            this.invTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Inv", true));
            this.invTextEdit.Location = new System.Drawing.Point(256, 110);
            this.invTextEdit.Name = "invTextEdit";
            this.invTextEdit.Size = new System.Drawing.Size(143, 21);
            this.invTextEdit.TabIndex = 7;
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(205, 167);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(45, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 8;
            remarkLabel.Text = "Remark:";
            // 
            // remarkTextEdit
            // 
            this.remarkTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkTextEdit.Location = new System.Drawing.Point(256, 164);
            this.remarkTextEdit.Name = "remarkTextEdit";
            this.remarkTextEdit.Size = new System.Drawing.Size(143, 21);
            this.remarkTextEdit.TabIndex = 9;
            // 
            // HDOInvoiceDetialFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkTextEdit);
            this.Controls.Add(invLabel);
            this.Controls.Add(this.invTextEdit);
            this.Controls.Add(hDOLabel);
            this.Controls.Add(this.hDOTextEdit);
            this.Name = "HDOInvoiceDetialFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.hDOTextEdit, 0);
            this.Controls.SetChildIndex(hDOLabel, 0);
            this.Controls.SetChildIndex(this.invTextEdit, 0);
            this.Controls.SetChildIndex(invLabel, 0);
            this.Controls.SetChildIndex(this.remarkTextEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hDOTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.invTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit hDOTextEdit;
        private DevExpress.XtraEditors.TextEdit invTextEdit;
        private DevExpress.XtraEditors.TextEdit remarkTextEdit;
    }
}
