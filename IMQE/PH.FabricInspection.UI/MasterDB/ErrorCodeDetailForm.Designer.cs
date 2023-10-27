namespace PH.FabricInspection.UI.MasterDB
{
    partial class ErrorCodeDetailForm
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
            System.Windows.Forms.Label nameENLabel;
            System.Windows.Forms.Label nameCNLabel;
            System.Windows.Forms.Label nameBDLabel;
            this.codeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameBDTextEdit = new DevExpress.XtraEditors.TextEdit();
            codeLabel = new System.Windows.Forms.Label();
            nameENLabel = new System.Windows.Forms.Label();
            nameCNLabel = new System.Windows.Forms.Label();
            nameBDLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameBDTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ErrorCode);
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Font = new System.Drawing.Font("SimSun", 9F);
            codeLabel.Location = new System.Drawing.Point(50, 62);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 4;
            codeLabel.Text = "Error Code:";
            // 
            // codeTextEdit
            // 
            this.codeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.codeTextEdit.Location = new System.Drawing.Point(158, 59);
            this.codeTextEdit.Name = "codeTextEdit";
            this.codeTextEdit.Size = new System.Drawing.Size(118, 21);
            this.codeTextEdit.TabIndex = 5;
            // 
            // nameENLabel
            // 
            nameENLabel.AutoSize = true;
            nameENLabel.Font = new System.Drawing.Font("SimSun", 9F);
            nameENLabel.Location = new System.Drawing.Point(50, 100);
            nameENLabel.Name = "nameENLabel";
            nameENLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(nameENLabel, null);
            nameENLabel.TabIndex = 6;
            nameENLabel.Text = "Error Name (EN):";
            // 
            // nameENTextEdit
            // 
            this.nameENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameEN", true));
            this.nameENTextEdit.Location = new System.Drawing.Point(158, 95);
            this.nameENTextEdit.Name = "nameENTextEdit";
            this.nameENTextEdit.Size = new System.Drawing.Size(379, 21);
            this.nameENTextEdit.TabIndex = 7;
            // 
            // nameCNLabel
            // 
            nameCNLabel.AutoSize = true;
            nameCNLabel.Font = new System.Drawing.Font("SimSun", 9F);
            nameCNLabel.Location = new System.Drawing.Point(50, 136);
            nameCNLabel.Name = "nameCNLabel";
            nameCNLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(nameCNLabel, null);
            nameCNLabel.TabIndex = 8;
            nameCNLabel.Text = "Error Name (CN):";
            // 
            // nameCNTextEdit
            // 
            this.nameCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameCN", true));
            this.nameCNTextEdit.Location = new System.Drawing.Point(158, 133);
            this.nameCNTextEdit.Name = "nameCNTextEdit";
            this.nameCNTextEdit.Size = new System.Drawing.Size(379, 21);
            this.nameCNTextEdit.TabIndex = 9;
            // 
            // nameBDLabel
            // 
            nameBDLabel.AutoSize = true;
            nameBDLabel.Font = new System.Drawing.Font("SimSun", 9F);
            nameBDLabel.Location = new System.Drawing.Point(50, 175);
            nameBDLabel.Name = "nameBDLabel";
            nameBDLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(nameBDLabel, null);
            nameBDLabel.TabIndex = 10;
            nameBDLabel.Text = "Error Name (BD):";
            // 
            // nameBDTextEdit
            // 
            this.nameBDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameBD", true));
            this.nameBDTextEdit.Location = new System.Drawing.Point(158, 172);
            this.nameBDTextEdit.Name = "nameBDTextEdit";
            this.nameBDTextEdit.Size = new System.Drawing.Size(379, 21);
            this.nameBDTextEdit.TabIndex = 11;
            // 
            // ErrorCodeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(nameBDLabel);
            this.Controls.Add(this.nameBDTextEdit);
            this.Controls.Add(nameCNLabel);
            this.Controls.Add(this.nameCNTextEdit);
            this.Controls.Add(nameENLabel);
            this.Controls.Add(this.nameENTextEdit);
            this.Controls.Add(codeLabel);
            this.Controls.Add(this.codeTextEdit);
            this.Name = "ErrorCodeDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(codeLabel, 0);
            this.Controls.SetChildIndex(this.nameENTextEdit, 0);
            this.Controls.SetChildIndex(nameENLabel, 0);
            this.Controls.SetChildIndex(this.nameCNTextEdit, 0);
            this.Controls.SetChildIndex(nameCNLabel, 0);
            this.Controls.SetChildIndex(this.nameBDTextEdit, 0);
            this.Controls.SetChildIndex(nameBDLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameBDTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit codeTextEdit;
        private DevExpress.XtraEditors.TextEdit nameENTextEdit;
        private DevExpress.XtraEditors.TextEdit nameCNTextEdit;
        private DevExpress.XtraEditors.TextEdit nameBDTextEdit;
    }
}
