namespace PH.LWPM.UI.EQ
{
    partial class EQBaseCodeDetailForm
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
            System.Windows.Forms.Label nameENLabel;
            System.Windows.Forms.Label codeLabel;
            this.nameLabel = new System.Windows.Forms.Label();
            this.sortIDLabel = new System.Windows.Forms.Label();
            this.nameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.sortIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.lbExtraField1 = new System.Windows.Forms.Label();
            this.txtExtraField1 = new DevExpress.XtraEditors.TextEdit();
            this.txtCode = new DevExpress.XtraEditors.TextEdit();
            nameENLabel = new System.Windows.Forms.Label();
            codeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExtraField1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCode.Properties)).BeginInit();
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
            // nameENLabel
            // 
            nameENLabel.AutoSize = true;
            nameENLabel.Location = new System.Drawing.Point(64, 101);
            nameENLabel.Name = "nameENLabel";
            nameENLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(nameENLabel, null);
            nameENLabel.TabIndex = 8;
            nameENLabel.Text = "Item desc. EN:";
            // 
            // codeLabel
            // 
            codeLabel.AutoSize = true;
            codeLabel.Location = new System.Drawing.Point(106, 50);
            codeLabel.Name = "codeLabel";
            codeLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(codeLabel, null);
            codeLabel.TabIndex = 11;
            codeLabel.Text = "Seq NO.";
            // 
            // nameLabel
            // 
            this.nameLabel.AutoSize = true;
            this.nameLabel.Location = new System.Drawing.Point(64, 76);
            this.nameLabel.Name = "nameLabel";
            this.nameLabel.Size = new System.Drawing.Size(89, 12);
            this.PlatetoolTipController.SetSuperTip(this.nameLabel, null);
            this.nameLabel.TabIndex = 6;
            this.nameLabel.Text = "Item desc. CN:";
            // 
            // sortIDLabel
            // 
            this.sortIDLabel.AutoSize = true;
            this.sortIDLabel.Location = new System.Drawing.Point(366, 50);
            this.sortIDLabel.Name = "sortIDLabel";
            this.sortIDLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(this.sortIDLabel, null);
            this.sortIDLabel.TabIndex = 10;
            this.sortIDLabel.Text = "Sort ID:";
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name", true));
            this.nameTextEdit.Location = new System.Drawing.Point(159, 72);
            this.nameTextEdit.Name = "nameTextEdit";
            this.nameTextEdit.Size = new System.Drawing.Size(366, 21);
            this.nameTextEdit.TabIndex = 7;
            // 
            // nameENTextEdit
            // 
            this.nameENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameEN", true));
            this.nameENTextEdit.Location = new System.Drawing.Point(159, 98);
            this.nameENTextEdit.Name = "nameENTextEdit";
            this.nameENTextEdit.Size = new System.Drawing.Size(366, 21);
            this.nameENTextEdit.TabIndex = 9;
            // 
            // sortIDTextEdit
            // 
            this.sortIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDTextEdit.Location = new System.Drawing.Point(425, 45);
            this.sortIDTextEdit.Name = "sortIDTextEdit";
            this.sortIDTextEdit.Size = new System.Drawing.Size(100, 21);
            this.sortIDTextEdit.TabIndex = 11;
            // 
            // lbExtraField1
            // 
            this.lbExtraField1.AutoSize = true;
            this.lbExtraField1.Location = new System.Drawing.Point(106, 128);
            this.lbExtraField1.Name = "lbExtraField1";
            this.lbExtraField1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbExtraField1, null);
            this.lbExtraField1.TabIndex = 13;
            this.lbExtraField1.Text = "Remark:";
            // 
            // txtExtraField1
            // 
            this.txtExtraField1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ExtraField1", true));
            this.txtExtraField1.Location = new System.Drawing.Point(159, 125);
            this.txtExtraField1.Name = "txtExtraField1";
            this.txtExtraField1.Size = new System.Drawing.Size(366, 21);
            this.txtExtraField1.TabIndex = 14;
            // 
            // txtCode
            // 
            this.txtCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Code", true));
            this.txtCode.Location = new System.Drawing.Point(159, 45);
            this.txtCode.Name = "txtCode";
            this.txtCode.Size = new System.Drawing.Size(100, 21);
            this.txtCode.TabIndex = 15;
            // 
            // EQBaseCodeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtCode);
            this.Controls.Add(this.lbExtraField1);
            this.Controls.Add(this.txtExtraField1);
            this.Controls.Add(codeLabel);
            this.Controls.Add(this.sortIDLabel);
            this.Controls.Add(this.sortIDTextEdit);
            this.Controls.Add(nameENLabel);
            this.Controls.Add(this.nameENTextEdit);
            this.Controls.Add(this.nameLabel);
            this.Controls.Add(this.nameTextEdit);
            this.Name = "EQBaseCodeDetailForm";
            this.Size = new System.Drawing.Size(633, 232);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(this.nameLabel, 0);
            this.Controls.SetChildIndex(this.nameENTextEdit, 0);
            this.Controls.SetChildIndex(nameENLabel, 0);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(this.sortIDLabel, 0);
            this.Controls.SetChildIndex(codeLabel, 0);
            this.Controls.SetChildIndex(this.txtExtraField1, 0);
            this.Controls.SetChildIndex(this.lbExtraField1, 0);
            this.Controls.SetChildIndex(this.txtCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExtraField1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit nameTextEdit;
        private DevExpress.XtraEditors.TextEdit nameENTextEdit;
        private DevExpress.XtraEditors.TextEdit sortIDTextEdit;
        private System.Windows.Forms.Label nameLabel;
        private System.Windows.Forms.Label sortIDLabel;
        private DevExpress.XtraEditors.TextEdit txtExtraField1;
        private System.Windows.Forms.Label lbExtraField1;
        private DevExpress.XtraEditors.TextEdit txtCode;
    }
}
