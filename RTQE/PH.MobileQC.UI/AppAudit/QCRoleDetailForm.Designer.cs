namespace PH.MobileQC.UI.AppAudit
{
    partial class QCRoleDetailForm
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
            System.Windows.Forms.Label roleCodeLabel;
            System.Windows.Forms.Label roleNameLabel;
            System.Windows.Forms.Label orderSeqLabel;
            System.Windows.Forms.Label createUserLabel;
            System.Windows.Forms.Label createDateLabel;
            System.Windows.Forms.Label alterUserLabel;
            System.Windows.Forms.Label alterDateLabel;
            System.Windows.Forms.Label remarkLabel;
            this.roleCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.roleNameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.orderSeqSpinEdit = new DevExpress.XtraEditors.SpinEdit();
            this.createUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.alterUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.alterDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            roleCodeLabel = new System.Windows.Forms.Label();
            roleNameLabel = new System.Windows.Forms.Label();
            orderSeqLabel = new System.Windows.Forms.Label();
            createUserLabel = new System.Windows.Forms.Label();
            createDateLabel = new System.Windows.Forms.Label();
            alterUserLabel = new System.Windows.Forms.Label();
            alterDateLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleCodeTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleNameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.orderSeqSpinEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_QCRole);
            // 
            // roleCodeLabel
            // 
            roleCodeLabel.AutoSize = true;
            roleCodeLabel.Location = new System.Drawing.Point(98, 55);
            roleCodeLabel.Name = "roleCodeLabel";
            roleCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(roleCodeLabel, null);
            roleCodeLabel.TabIndex = 4;
            roleCodeLabel.Text = "Role Code:";
            // 
            // roleNameLabel
            // 
            roleNameLabel.AutoSize = true;
            roleNameLabel.Location = new System.Drawing.Point(98, 82);
            roleNameLabel.Name = "roleNameLabel";
            roleNameLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(roleNameLabel, null);
            roleNameLabel.TabIndex = 6;
            roleNameLabel.Text = "Role Name:";
            // 
            // orderSeqLabel
            // 
            orderSeqLabel.AutoSize = true;
            orderSeqLabel.Location = new System.Drawing.Point(98, 119);
            orderSeqLabel.Name = "orderSeqLabel";
            orderSeqLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(orderSeqLabel, null);
            orderSeqLabel.TabIndex = 8;
            orderSeqLabel.Text = "Order Seq:";
            // 
            // createUserLabel
            // 
            createUserLabel.AutoSize = true;
            createUserLabel.Location = new System.Drawing.Point(86, 183);
            createUserLabel.Name = "createUserLabel";
            createUserLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(createUserLabel, null);
            createUserLabel.TabIndex = 10;
            createUserLabel.Text = "Create User:";
            // 
            // createDateLabel
            // 
            createDateLabel.AutoSize = true;
            createDateLabel.Location = new System.Drawing.Point(86, 210);
            createDateLabel.Name = "createDateLabel";
            createDateLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(createDateLabel, null);
            createDateLabel.TabIndex = 12;
            createDateLabel.Text = "Create Date:";
            // 
            // alterUserLabel
            // 
            alterUserLabel.AutoSize = true;
            alterUserLabel.Location = new System.Drawing.Point(431, 188);
            alterUserLabel.Name = "alterUserLabel";
            alterUserLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(alterUserLabel, null);
            alterUserLabel.TabIndex = 14;
            alterUserLabel.Text = "Alter User:";
            // 
            // alterDateLabel
            // 
            alterDateLabel.AutoSize = true;
            alterDateLabel.Location = new System.Drawing.Point(431, 215);
            alterDateLabel.Name = "alterDateLabel";
            alterDateLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(alterDateLabel, null);
            alterDateLabel.TabIndex = 16;
            alterDateLabel.Text = "Alter Date:";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(455, 53);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 18;
            remarkLabel.Text = "Remark:";
            // 
            // roleCodeTextEdit
            // 
            this.roleCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RoleCode", true));
            this.roleCodeTextEdit.Location = new System.Drawing.Point(169, 52);
            this.roleCodeTextEdit.Name = "roleCodeTextEdit";
            this.roleCodeTextEdit.Size = new System.Drawing.Size(162, 21);
            this.roleCodeTextEdit.TabIndex = 5;
            // 
            // roleNameTextEdit
            // 
            this.roleNameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RoleName", true));
            this.roleNameTextEdit.Location = new System.Drawing.Point(169, 79);
            this.roleNameTextEdit.Name = "roleNameTextEdit";
            this.roleNameTextEdit.Size = new System.Drawing.Size(162, 21);
            this.roleNameTextEdit.TabIndex = 7;
            // 
            // orderSeqSpinEdit
            // 
            this.orderSeqSpinEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OrderSeq", true));
            this.orderSeqSpinEdit.EditValue = new decimal(new int[] {
            0,
            0,
            0,
            0});
            this.orderSeqSpinEdit.Location = new System.Drawing.Point(169, 116);
            this.orderSeqSpinEdit.Name = "orderSeqSpinEdit";
            this.orderSeqSpinEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.orderSeqSpinEdit.Size = new System.Drawing.Size(100, 21);
            this.orderSeqSpinEdit.TabIndex = 9;
            // 
            // createUserTextEdit
            // 
            this.createUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateUser", true));
            this.createUserTextEdit.Location = new System.Drawing.Point(169, 180);
            this.createUserTextEdit.Name = "createUserTextEdit";
            this.createUserTextEdit.Size = new System.Drawing.Size(162, 21);
            this.createUserTextEdit.TabIndex = 11;
            // 
            // createDateDateEdit
            // 
            this.createDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.createDateDateEdit.EditValue = null;
            this.createDateDateEdit.Location = new System.Drawing.Point(169, 206);
            this.createDateDateEdit.Name = "createDateDateEdit";
            this.createDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.createDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.createDateDateEdit.Size = new System.Drawing.Size(162, 21);
            this.createDateDateEdit.TabIndex = 13;
            // 
            // alterUserTextEdit
            // 
            this.alterUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterUser", true));
            this.alterUserTextEdit.Location = new System.Drawing.Point(508, 185);
            this.alterUserTextEdit.Name = "alterUserTextEdit";
            this.alterUserTextEdit.Size = new System.Drawing.Size(165, 21);
            this.alterUserTextEdit.TabIndex = 15;
            // 
            // alterDateDateEdit
            // 
            this.alterDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterDate", true));
            this.alterDateDateEdit.EditValue = null;
            this.alterDateDateEdit.Location = new System.Drawing.Point(508, 211);
            this.alterDateDateEdit.Name = "alterDateDateEdit";
            this.alterDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.alterDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.alterDateDateEdit.Size = new System.Drawing.Size(165, 21);
            this.alterDateDateEdit.TabIndex = 17;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(508, 50);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(165, 87);
            this.remarkMemoEdit.TabIndex = 19;
            // 
            // QCRoleDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(remarkLabel);
            this.Controls.Add(this.remarkMemoEdit);
            this.Controls.Add(alterDateLabel);
            this.Controls.Add(this.alterDateDateEdit);
            this.Controls.Add(alterUserLabel);
            this.Controls.Add(this.alterUserTextEdit);
            this.Controls.Add(createDateLabel);
            this.Controls.Add(this.createDateDateEdit);
            this.Controls.Add(createUserLabel);
            this.Controls.Add(this.createUserTextEdit);
            this.Controls.Add(orderSeqLabel);
            this.Controls.Add(this.orderSeqSpinEdit);
            this.Controls.Add(roleNameLabel);
            this.Controls.Add(this.roleNameTextEdit);
            this.Controls.Add(roleCodeLabel);
            this.Controls.Add(this.roleCodeTextEdit);
            this.Name = "QCRoleDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null); 
            this.Controls.SetChildIndex(this.roleCodeTextEdit, 0);
            this.Controls.SetChildIndex(roleCodeLabel, 0);
            this.Controls.SetChildIndex(this.roleNameTextEdit, 0);
            this.Controls.SetChildIndex(roleNameLabel, 0);
            this.Controls.SetChildIndex(this.orderSeqSpinEdit, 0);
            this.Controls.SetChildIndex(orderSeqLabel, 0);
            this.Controls.SetChildIndex(this.createUserTextEdit, 0);
            this.Controls.SetChildIndex(createUserLabel, 0);
            this.Controls.SetChildIndex(this.createDateDateEdit, 0);
            this.Controls.SetChildIndex(createDateLabel, 0);
            this.Controls.SetChildIndex(this.alterUserTextEdit, 0);
            this.Controls.SetChildIndex(alterUserLabel, 0);
            this.Controls.SetChildIndex(this.alterDateDateEdit, 0);
            this.Controls.SetChildIndex(alterDateLabel, 0);
            this.Controls.SetChildIndex(this.remarkMemoEdit, 0);
            this.Controls.SetChildIndex(remarkLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleCodeTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleNameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.orderSeqSpinEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit roleCodeTextEdit;
        private DevExpress.XtraEditors.TextEdit roleNameTextEdit;
        private DevExpress.XtraEditors.SpinEdit orderSeqSpinEdit;
        private DevExpress.XtraEditors.TextEdit createUserTextEdit;
        private DevExpress.XtraEditors.DateEdit createDateDateEdit;
        private DevExpress.XtraEditors.TextEdit alterUserTextEdit;
        private DevExpress.XtraEditors.DateEdit alterDateDateEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
    }
}
