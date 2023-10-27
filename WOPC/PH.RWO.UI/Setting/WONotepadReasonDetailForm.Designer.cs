namespace PH.RWO.UI.Setting
{
    partial class WONotepadReasonDetailForm
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
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.seqLabel = new System.Windows.Forms.Label();
            this.seqTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameENLabel = new System.Windows.Forms.Label();
            this.nameENTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameCNLabel = new System.Windows.Forms.Label();
            this.nameCNTextEdit = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameENTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.RWO.BO.WONotepadReason);
            // 
            // seqLabel
            // 
            this.seqLabel.AutoSize = true;
            this.seqLabel.Font = new System.Drawing.Font("SimSun", 9F);
            this.seqLabel.Location = new System.Drawing.Point(50, 58);
            this.seqLabel.Name = "seqLabel";
            this.seqLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(this.seqLabel, null);
            this.seqLabel.TabIndex = 4;
            this.seqLabel.Text = "Cde#:";
            // 
            // seqTextEdit
            // 
            this.seqTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Seq", true));
            this.seqTextEdit.Location = new System.Drawing.Point(131, 55);
            this.seqTextEdit.Name = "seqTextEdit";
            this.seqTextEdit.Size = new System.Drawing.Size(178, 21);
            this.seqTextEdit.TabIndex = 5;
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "Pls input Seq#.";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider.SetValidationRule(this.seqTextEdit, conditionValidatonRule1);
            // 
            // nameENLabel
            // 
            this.nameENLabel.AutoSize = true;
            this.nameENLabel.Font = new System.Drawing.Font("SimSun", 9F);
            this.nameENLabel.Location = new System.Drawing.Point(50, 93);
            this.nameENLabel.Name = "nameENLabel";
            this.nameENLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.nameENLabel, null);
            this.nameENLabel.TabIndex = 6;
            this.nameENLabel.Text = "Desc. (EN):";
            // 
            // nameENTextEdit
            // 
            this.nameENTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameEN", true));
            this.nameENTextEdit.Location = new System.Drawing.Point(131, 88);
            this.nameENTextEdit.Name = "nameENTextEdit";
            this.nameENTextEdit.Size = new System.Drawing.Size(372, 21);
            this.nameENTextEdit.TabIndex = 7;
            // 
            // nameCNLabel
            // 
            this.nameCNLabel.AutoSize = true;
            this.nameCNLabel.Font = new System.Drawing.Font("SimSun", 9F);
            this.nameCNLabel.ForeColor = System.Drawing.SystemColors.ControlText;
            this.nameCNLabel.Location = new System.Drawing.Point(50, 125);
            this.nameCNLabel.Name = "nameCNLabel";
            this.nameCNLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(this.nameCNLabel, null);
            this.nameCNLabel.TabIndex = 8;
            this.nameCNLabel.Text = "Desc. (CN):";
            // 
            // nameCNTextEdit
            // 
            this.nameCNTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameCN", true));
            this.nameCNTextEdit.Location = new System.Drawing.Point(131, 122);
            this.nameCNTextEdit.Name = "nameCNTextEdit";
            this.nameCNTextEdit.Size = new System.Drawing.Size(372, 21);
            this.nameCNTextEdit.TabIndex = 9;
            // 
            // WONotepadReasonDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.nameCNLabel);
            this.Controls.Add(this.nameCNTextEdit);
            this.Controls.Add(this.nameENLabel);
            this.Controls.Add(this.nameENTextEdit);
            this.Controls.Add(this.seqLabel);
            this.Controls.Add(this.seqTextEdit);
            this.Name = "WONotepadReasonDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqTextEdit, 0);
            this.Controls.SetChildIndex(this.seqLabel, 0);
            this.Controls.SetChildIndex(this.nameENTextEdit, 0);
            this.Controls.SetChildIndex(this.nameENLabel, 0);
            this.Controls.SetChildIndex(this.nameCNTextEdit, 0);
            this.Controls.SetChildIndex(this.nameCNLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameENTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameCNTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label seqLabel;
        private DevExpress.XtraEditors.TextEdit seqTextEdit;
        private System.Windows.Forms.Label nameENLabel;
        private DevExpress.XtraEditors.TextEdit nameENTextEdit;
        private System.Windows.Forms.Label nameCNLabel;
        private DevExpress.XtraEditors.TextEdit nameCNTextEdit;
    }
}
