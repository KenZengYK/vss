namespace PH.LWPM.UI.MasterDB
{
    partial class RECRoleEditForm
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
            this.edtDiffDept = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lbDiffDept = new System.Windows.Forms.Label();
            this.edtDepartmentRowID = new DevExpress.XtraEditors.LabelControl();
            this.edtDepartment = new DevExpress.XtraEditors.ButtonEdit();
            this.lbDepartment = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtREC = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiffDept.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDepartment.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtREC.Properties)).BeginInit();
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
            this.descriptionTextEdit.Location = new System.Drawing.Point(211, 135);
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
            // edtDiffDept
            // 
            this.edtDiffDept.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "HSCode", true));
            this.edtDiffDept.Location = new System.Drawing.Point(211, 165);
            this.edtDiffDept.Name = "edtDiffDept";
            this.edtDiffDept.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtDiffDept.Properties.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.edtDiffDept.Size = new System.Drawing.Size(115, 21);
            this.edtDiffDept.TabIndex = 36;
            // 
            // lbDiffDept
            // 
            this.lbDiffDept.AutoSize = true;
            this.lbDiffDept.Location = new System.Drawing.Point(137, 168);
            this.lbDiffDept.Name = "lbDiffDept";
            this.lbDiffDept.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbDiffDept, null);
            this.lbDiffDept.TabIndex = 35;
            this.lbDiffDept.Text = "Diff Dept:";
            // 
            // edtDepartmentRowID
            // 
            this.edtDepartmentRowID.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.BindingSource, "ExtraField1", true));
            this.edtDepartmentRowID.Location = new System.Drawing.Point(583, 199);
            this.edtDepartmentRowID.Name = "edtDepartmentRowID";
            this.edtDepartmentRowID.Size = new System.Drawing.Size(70, 14);
            this.edtDepartmentRowID.TabIndex = 34;
            this.edtDepartmentRowID.Text = "labelControl1";
            this.edtDepartmentRowID.Visible = false;
            // 
            // edtDepartment
            // 
            this.edtDepartment.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RECDepartment", true));
            this.edtDepartment.Location = new System.Drawing.Point(211, 196);
            this.edtDepartment.Name = "edtDepartment";
            this.edtDepartment.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtDepartment.Size = new System.Drawing.Size(340, 21);
            this.edtDepartment.TabIndex = 33;
            this.edtDepartment.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.edtDepartment_ButtonClick);
            // 
            // lbDepartment
            // 
            this.lbDepartment.AutoSize = true;
            this.lbDepartment.Location = new System.Drawing.Point(59, 199);
            this.lbDepartment.Name = "lbDepartment";
            this.lbDepartment.Size = new System.Drawing.Size(143, 12);
            this.PlatetoolTipController.SetSuperTip(this.lbDepartment, null);
            this.lbDepartment.TabIndex = 32;
            this.lbDepartment.Text = "Appointed Departmental:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(173, 228);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 12);
            this.PlatetoolTipController.SetSuperTip(this.label1, null);
            this.label1.TabIndex = 37;
            this.label1.Text = "REC:";
            // 
            // txtREC
            // 
            this.txtREC.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NameBd", true));
            this.txtREC.EditValue = "";
            this.txtREC.Location = new System.Drawing.Point(211, 226);
            this.txtREC.Name = "txtREC";
            this.txtREC.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtREC.Properties.SeparatorChar = '/';
            this.txtREC.Size = new System.Drawing.Size(171, 21);
            this.txtREC.TabIndex = 38;
            this.txtREC.Closed += new DevExpress.XtraEditors.Controls.ClosedEventHandler(this.txtREC_Closed);
            // 
            // RECRoleEditForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtREC);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.edtDiffDept);
            this.Controls.Add(this.lbDiffDept);
            this.Controls.Add(this.edtDepartmentRowID);
            this.Controls.Add(this.edtDepartment);
            this.Controls.Add(this.lbDepartment);
            this.Name = "RECRoleEditForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(this.lbSortID, 0);
            this.Controls.SetChildIndex(this.lbCode, 0);
            this.Controls.SetChildIndex(this.lbDescription, 0);
            this.Controls.SetChildIndex(this.lbName, 0);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(this.lbDepartment, 0);
            this.Controls.SetChildIndex(this.edtDepartment, 0);
            this.Controls.SetChildIndex(this.edtDepartmentRowID, 0);
            this.Controls.SetChildIndex(this.lbDiffDept, 0);
            this.Controls.SetChildIndex(this.edtDiffDept, 0);
            this.Controls.SetChildIndex(this.label1, 0);
            this.Controls.SetChildIndex(this.txtREC, 0);
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDiffDept.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtDepartment.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtREC.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ComboBoxEdit edtDiffDept;
        private System.Windows.Forms.Label lbDiffDept;
        private DevExpress.XtraEditors.LabelControl edtDepartmentRowID;
        private DevExpress.XtraEditors.ButtonEdit edtDepartment;
        private System.Windows.Forms.Label lbDepartment;
        private System.Windows.Forms.Label label1;
        private DevExpress.XtraEditors.CheckedComboBoxEdit txtREC;
    }
}
