namespace PH.LWPM.UI.MasterDB
{
    partial class DepartmentEditForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.edtHSCode = new DevExpress.XtraEditors.LookUpEdit();
            this.lbHSCode = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtHSCode.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // sortIDTextEdit
            // 
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "Please input Seq No.";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
            this.dxValidationProvider.SetValidationRule(this.sortIDTextEdit, conditionValidatonRule1);
            // 
            // nameTextEdit
            // 
            // 
            // descriptionTextEdit
            // 
            // 
            // codeTextEdit
            // 
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "Please input code.";
            this.dxValidationProvider.SetValidationRule(this.codeTextEdit, conditionValidatonRule2);
            // 
            // lbSortID
            // 
            this.lbSortID.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbSortID.Appearance.Options.UseFont = true;
            this.lbSortID.Size = new System.Drawing.Size(48, 12);
            // 
            // lbCode
            // 
            this.lbCode.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbCode.Appearance.Options.UseFont = true;
            this.lbCode.Size = new System.Drawing.Size(30, 12);
            // 
            // lbDescription
            // 
            this.lbDescription.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbDescription.Appearance.Options.UseFont = true;
            this.lbDescription.Size = new System.Drawing.Size(102, 12);
            // 
            // lbName
            // 
            this.lbName.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbName.Appearance.Options.UseFont = true;
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
            // edtHSCode
            // 
            this.edtHSCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.edtHSCode.Location = new System.Drawing.Point(211, 166);
            this.edtHSCode.Name = "edtHSCode";
            this.edtHSCode.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtHSCode.Properties.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Description", "Description (Local)", 120),
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Description (En)", 160)});
            this.edtHSCode.Properties.NullText = "";
            this.edtHSCode.Properties.PopupWidth = 260;
            this.edtHSCode.Size = new System.Drawing.Size(357, 21);
            this.edtHSCode.TabIndex = 27;
            this.edtHSCode.Visible = false;
            // 
            // lbHSCode
            // 
            this.lbHSCode.AutoSize = true;
            this.lbHSCode.Location = new System.Drawing.Point(64, 167);
            this.lbHSCode.Name = "lbHSCode";
            this.lbHSCode.Size = new System.Drawing.Size(131, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbHSCode, null);
            this.lbHSCode.TabIndex = 26;
            this.lbHSCode.Text = "HW Cost for Mgt Acct:";
            this.lbHSCode.Visible = false;
            // 
            // DepartmentEditForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.edtHSCode);
            this.Controls.Add(this.lbHSCode);
            this.Name = "DepartmentEditForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(this.lbSortID, 0);
            this.Controls.SetChildIndex(this.lbCode, 0);
            this.Controls.SetChildIndex(this.lbDescription, 0);
            this.Controls.SetChildIndex(this.lbName, 0);
            this.Controls.SetChildIndex(this.lbHSCode, 0);
            this.Controls.SetChildIndex(this.edtHSCode, 0);
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtHSCode.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LookUpEdit edtHSCode;
        private System.Windows.Forms.Label lbHSCode;
    }
}
