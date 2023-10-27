namespace PH.LWPM.UI.MasterDB
{
    partial class EmployeeCostEditForm
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
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule3 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtExtraField1 = new DevExpress.XtraEditors.TextEdit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExtraField1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sortIDTextEdit
            // 
            conditionValidatonRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule3.ErrorText = "Please input Seq No.";
            conditionValidatonRule3.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
            this.dxValidationProvider.SetValidationRule(this.sortIDTextEdit, conditionValidatonRule3);
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.Location = new System.Drawing.Point(211, 133);
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.Location = new System.Drawing.Point(211, 162);
            // 
            // codeTextEdit
            // 
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "Please input code.";
            this.dxValidationProvider.SetValidationRule(this.codeTextEdit, conditionValidatonRule1);
            // 
            // lbSortID
            // 
            this.lbSortID.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.lbSortID.Appearance.Options.UseFont = true;
            this.lbSortID.Size = new System.Drawing.Size(48, 12);
            // 
            // lbCode
            // 
            this.lbCode.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.lbCode.Appearance.Options.UseFont = true;
            this.lbCode.Size = new System.Drawing.Size(30, 12);
            // 
            // lbDescription
            // 
            this.lbDescription.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.lbDescription.Appearance.Options.UseFont = true;
            this.lbDescription.Location = new System.Drawing.Point(93, 164);
            this.lbDescription.Size = new System.Drawing.Size(102, 12);
            // 
            // lbName
            // 
            this.lbName.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.lbName.Appearance.Options.UseFont = true;
            this.lbName.Location = new System.Drawing.Point(123, 137);
            this.lbName.Size = new System.Drawing.Size(72, 12);
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // labelControl1
            // 
            this.labelControl1.Appearance.Font = new System.Drawing.Font("SimSun", 9F);
            this.labelControl1.Appearance.Options.UseFont = true;
            this.labelControl1.Location = new System.Drawing.Point(117, 108);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(78, 12);
            this.labelControl1.TabIndex = 17;
            this.labelControl1.Text = "Brief. desc.:";
            // 
            // txtExtraField1
            // 
            this.txtExtraField1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ExtraField1", true));
            this.txtExtraField1.Location = new System.Drawing.Point(211, 104);
            this.txtExtraField1.Name = "txtExtraField1";
            this.txtExtraField1.Size = new System.Drawing.Size(357, 21);
            this.txtExtraField1.TabIndex = 16;
            // 
            // EmployeeCostEditForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.labelControl1);
            this.Controls.Add(this.txtExtraField1);
            this.Name = "EmployeeCostEditForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(this.lbSortID, 0);
            this.Controls.SetChildIndex(this.lbCode, 0);
            this.Controls.SetChildIndex(this.lbDescription, 0);
            this.Controls.SetChildIndex(this.lbName, 0);
            this.Controls.SetChildIndex(this.txtExtraField1, 0);
            this.Controls.SetChildIndex(this.labelControl1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtExtraField1.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public DevExpress.XtraEditors.LabelControl labelControl1;
        public DevExpress.XtraEditors.TextEdit txtExtraField1;
    }
}
