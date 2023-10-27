namespace PH.LWPM.UI.MasterDB
{
    partial class BaseCodeEditForm
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
            this.sortIDTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.descriptionTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.codeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.lbSortID = new DevExpress.XtraEditors.LabelControl();
            this.lbCode = new DevExpress.XtraEditors.LabelControl();
            this.lbDescription = new DevExpress.XtraEditors.LabelControl();
            this.lbName = new DevExpress.XtraEditors.LabelControl();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).BeginInit();
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
            // sortIDTextEdit
            // 
            this.sortIDTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SortID", true));
            this.sortIDTextEdit.Location = new System.Drawing.Point(211, 47);
            this.sortIDTextEdit.Name = "sortIDTextEdit";
            this.sortIDTextEdit.Size = new System.Drawing.Size(132, 21);
            this.sortIDTextEdit.TabIndex = 5;
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "Please input Seq No.";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Warning;
            this.dxValidationProvider.SetValidationRule(this.sortIDTextEdit, conditionValidatonRule1);
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name", true));
            this.nameTextEdit.Location = new System.Drawing.Point(211, 105);
            this.nameTextEdit.Name = "nameTextEdit";
            this.nameTextEdit.Size = new System.Drawing.Size(357, 21);
            this.nameTextEdit.TabIndex = 7;
            // 
            // descriptionTextEdit
            // 
            this.descriptionTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Description", true));
            this.descriptionTextEdit.Location = new System.Drawing.Point(211, 134);
            this.descriptionTextEdit.Name = "descriptionTextEdit";
            this.descriptionTextEdit.Size = new System.Drawing.Size(357, 21);
            this.descriptionTextEdit.TabIndex = 9;
            // 
            // codeTextEdit
            // 
            this.codeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Lang", true));
            this.codeTextEdit.Location = new System.Drawing.Point(211, 76);
            this.codeTextEdit.Name = "codeTextEdit";
            this.codeTextEdit.Size = new System.Drawing.Size(132, 21);
            this.codeTextEdit.TabIndex = 11;
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "Please input code.";
            this.dxValidationProvider.SetValidationRule(this.codeTextEdit, conditionValidatonRule2);
            // 
            // lbSortID
            // 
            this.lbSortID.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbSortID.Appearance.Options.UseFont = true;
            this.lbSortID.Location = new System.Drawing.Point(147, 51);
            this.lbSortID.Name = "lbSortID";
            this.lbSortID.Size = new System.Drawing.Size(48, 12);
            this.lbSortID.TabIndex = 12;
            this.lbSortID.Text = "Seq No.:";
            // 
            // lbCode
            // 
            this.lbCode.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbCode.Appearance.Options.UseFont = true;
            this.lbCode.Location = new System.Drawing.Point(165, 82);
            this.lbCode.Name = "lbCode";
            this.lbCode.Size = new System.Drawing.Size(30, 12);
            this.lbCode.TabIndex = 13;
            this.lbCode.Text = "Code:";
            // 
            // lbDescription
            // 
            this.lbDescription.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbDescription.Appearance.Options.UseFont = true;
            this.lbDescription.Location = new System.Drawing.Point(93, 136);
            this.lbDescription.Name = "lbDescription";
            this.lbDescription.Size = new System.Drawing.Size(102, 12);
            this.lbDescription.TabIndex = 14;
            this.lbDescription.Text = "Description (CN):";
            // 
            // lbName
            // 
            this.lbName.Appearance.Font = new System.Drawing.Font("宋体", 9F);
            this.lbName.Appearance.Options.UseFont = true;
            this.lbName.Location = new System.Drawing.Point(123, 109);
            this.lbName.Name = "lbName";
            this.lbName.Size = new System.Drawing.Size(72, 12);
            this.lbName.TabIndex = 15;
            this.lbName.Text = "Description:";
            // 
            // BaseCodeEditForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lbName);
            this.Controls.Add(this.lbDescription);
            this.Controls.Add(this.lbCode);
            this.Controls.Add(this.lbSortID);
            this.Controls.Add(this.codeTextEdit);
            this.Controls.Add(this.descriptionTextEdit);
            this.Controls.Add(this.nameTextEdit);
            this.Controls.Add(this.sortIDTextEdit);
            this.Name = "BaseCodeEditForm";
            this.Size = new System.Drawing.Size(1000, 453);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.sortIDTextEdit, 0);
            this.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.Controls.SetChildIndex(this.descriptionTextEdit, 0);
            this.Controls.SetChildIndex(this.codeTextEdit, 0);
            this.Controls.SetChildIndex(this.lbSortID, 0);
            this.Controls.SetChildIndex(this.lbCode, 0);
            this.Controls.SetChildIndex(this.lbDescription, 0);
            this.Controls.SetChildIndex(this.lbName, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.sortIDTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.descriptionTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.codeTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        public DevExpress.XtraEditors.TextEdit sortIDTextEdit;
        public DevExpress.XtraEditors.TextEdit nameTextEdit;
        public DevExpress.XtraEditors.TextEdit descriptionTextEdit;
        public DevExpress.XtraEditors.TextEdit codeTextEdit;
        public DevExpress.XtraEditors.LabelControl lbSortID;
        public DevExpress.XtraEditors.LabelControl lbCode;
        public DevExpress.XtraEditors.LabelControl lbDescription;
        public DevExpress.XtraEditors.LabelControl lbName;

    }
}
