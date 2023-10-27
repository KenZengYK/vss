namespace PH.MobileQC.UI.AppAudit
{
    partial class RoleUserDetailForm
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
            System.Windows.Forms.Label createUserLabel;
            System.Windows.Forms.Label createDateLabel;
            System.Windows.Forms.Label alterUserLabel;
            System.Windows.Forms.Label alterDateLabel;
            System.Windows.Forms.Label remarkLabel;
            System.Windows.Forms.Label userCodeLabel;
            this.roleCodeButtonEdit = new DevExpress.XtraEditors.ButtonEdit();
            this.createUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.createDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.alterUserTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.alterDateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.remarkMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.userCodeTextEdit = new DevExpress.XtraEditors.TextEdit();
            roleCodeLabel = new System.Windows.Forms.Label();
            createUserLabel = new System.Windows.Forms.Label();
            createDateLabel = new System.Windows.Forms.Label();
            alterUserLabel = new System.Windows.Forms.Label();
            alterDateLabel = new System.Windows.Forms.Label();
            remarkLabel = new System.Windows.Forms.Label();
            userCodeLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleCodeButtonEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.userCodeTextEdit.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_RoleUser);
            // 
            // roleCodeLabel
            // 
            roleCodeLabel.AutoSize = true;
            roleCodeLabel.Location = new System.Drawing.Point(68, 90);
            roleCodeLabel.Name = "roleCodeLabel";
            roleCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(roleCodeLabel, null);
            roleCodeLabel.TabIndex = 6;
            roleCodeLabel.Text = "Role Code:";
            // 
            // createUserLabel
            // 
            createUserLabel.AutoSize = true;
            createUserLabel.Location = new System.Drawing.Point(56, 130);
            createUserLabel.Name = "createUserLabel";
            createUserLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(createUserLabel, null);
            createUserLabel.TabIndex = 8;
            createUserLabel.Text = "Create User:";
            // 
            // createDateLabel
            // 
            createDateLabel.AutoSize = true;
            createDateLabel.Location = new System.Drawing.Point(56, 157);
            createDateLabel.Name = "createDateLabel";
            createDateLabel.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(createDateLabel, null);
            createDateLabel.TabIndex = 10;
            createDateLabel.Text = "Create Date:";
            // 
            // alterUserLabel
            // 
            alterUserLabel.AutoSize = true;
            alterUserLabel.Location = new System.Drawing.Point(362, 130);
            alterUserLabel.Name = "alterUserLabel";
            alterUserLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(alterUserLabel, null);
            alterUserLabel.TabIndex = 12;
            alterUserLabel.Text = "Alter User:";
            // 
            // alterDateLabel
            // 
            alterDateLabel.AutoSize = true;
            alterDateLabel.Location = new System.Drawing.Point(362, 157);
            alterDateLabel.Name = "alterDateLabel";
            alterDateLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(alterDateLabel, null);
            alterDateLabel.TabIndex = 14;
            alterDateLabel.Text = "Alter Date:";
            // 
            // remarkLabel
            // 
            remarkLabel.AutoSize = true;
            remarkLabel.Location = new System.Drawing.Point(386, 63);
            remarkLabel.Name = "remarkLabel";
            remarkLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(remarkLabel, null);
            remarkLabel.TabIndex = 16;
            remarkLabel.Text = "Remark:";
            // 
            // userCodeLabel
            // 
            userCodeLabel.AutoSize = true;
            userCodeLabel.Location = new System.Drawing.Point(68, 60);
            userCodeLabel.Name = "userCodeLabel";
            userCodeLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(userCodeLabel, null);
            userCodeLabel.TabIndex = 17;
            userCodeLabel.Text = "User Code:";
            // 
            // roleCodeButtonEdit
            // 
            this.roleCodeButtonEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "RoleCode", true));
            this.roleCodeButtonEdit.Location = new System.Drawing.Point(139, 87);
            this.roleCodeButtonEdit.Name = "roleCodeButtonEdit";
            this.roleCodeButtonEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.roleCodeButtonEdit.Size = new System.Drawing.Size(176, 21);
            this.roleCodeButtonEdit.TabIndex = 7;
            this.roleCodeButtonEdit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.roleCodeButtonEdit_ButtonClick); 
            // 
            // createUserTextEdit
            // 
            this.createUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateUser", true));
            this.createUserTextEdit.Location = new System.Drawing.Point(139, 126);
            this.createUserTextEdit.Name = "createUserTextEdit";
            this.createUserTextEdit.Size = new System.Drawing.Size(176, 21);
            this.createUserTextEdit.TabIndex = 9;
            // 
            // createDateDateEdit
            // 
            this.createDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CreateDate", true));
            this.createDateDateEdit.EditValue = null;
            this.createDateDateEdit.Location = new System.Drawing.Point(139, 153);
            this.createDateDateEdit.Name = "createDateDateEdit";
            this.createDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.createDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.createDateDateEdit.Size = new System.Drawing.Size(176, 21);
            this.createDateDateEdit.TabIndex = 11;
            // 
            // alterUserTextEdit
            // 
            this.alterUserTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterUser", true));
            this.alterUserTextEdit.Location = new System.Drawing.Point(439, 126);
            this.alterUserTextEdit.Name = "alterUserTextEdit";
            this.alterUserTextEdit.Size = new System.Drawing.Size(171, 21);
            this.alterUserTextEdit.TabIndex = 13;
            // 
            // alterDateDateEdit
            // 
            this.alterDateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AlterDate", true));
            this.alterDateDateEdit.EditValue = null;
            this.alterDateDateEdit.Location = new System.Drawing.Point(439, 153);
            this.alterDateDateEdit.Name = "alterDateDateEdit";
            this.alterDateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.alterDateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.alterDateDateEdit.Size = new System.Drawing.Size(171, 21);
            this.alterDateDateEdit.TabIndex = 15;
            // 
            // remarkMemoEdit
            // 
            this.remarkMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Remark", true));
            this.remarkMemoEdit.Location = new System.Drawing.Point(439, 58);
            this.remarkMemoEdit.Name = "remarkMemoEdit";
            this.remarkMemoEdit.Size = new System.Drawing.Size(171, 44);
            this.remarkMemoEdit.TabIndex = 17;
            // 
            // userCodeTextEdit
            // 
            this.userCodeTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "UserCode", true));
            this.userCodeTextEdit.Location = new System.Drawing.Point(139, 57);
            this.userCodeTextEdit.Name = "userCodeTextEdit";
            this.userCodeTextEdit.Size = new System.Drawing.Size(176, 21);
            this.userCodeTextEdit.TabIndex = 18;
            // 
            // RoleUserDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(userCodeLabel);
            this.Controls.Add(this.userCodeTextEdit);
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
            this.Controls.Add(roleCodeLabel);
            this.Controls.Add(this.roleCodeButtonEdit);
            this.Name = "RoleUserDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.roleCodeButtonEdit, 0);
            this.Controls.SetChildIndex(roleCodeLabel, 0);
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
            this.Controls.SetChildIndex(this.userCodeTextEdit, 0);
            this.Controls.SetChildIndex(userCodeLabel, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.roleCodeButtonEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.createDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterUserTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.alterDateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.remarkMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.userCodeTextEdit.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.ButtonEdit roleCodeButtonEdit;
        private DevExpress.XtraEditors.TextEdit createUserTextEdit;
        private DevExpress.XtraEditors.DateEdit createDateDateEdit;
        private DevExpress.XtraEditors.TextEdit alterUserTextEdit;
        private DevExpress.XtraEditors.DateEdit alterDateDateEdit;
        private DevExpress.XtraEditors.MemoEdit remarkMemoEdit;
        private DevExpress.XtraEditors.TextEdit userCodeTextEdit;
    }
}
