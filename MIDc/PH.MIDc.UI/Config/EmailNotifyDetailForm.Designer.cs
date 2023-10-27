namespace PH.MIDc.UI
{
    partial class EmailNotifyDetailForm
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
            System.Windows.Forms.Label descLabel;
            System.Windows.Forms.Label notifyUsersLabel;
            System.Windows.Forms.Label actionUsersLabel;
            System.Windows.Forms.Label availableLabel;
            System.Windows.Forms.Label deptLabel;
            this.availableCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.lookUpEditDesc = new DevExpress.XtraEditors.LookUpEdit();
            this.deptTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.checkedComboBoxEditNotifyUsers = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.checkedComboBoxEditActionUsers = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            descLabel = new System.Windows.Forms.Label();
            notifyUsersLabel = new System.Windows.Forms.Label();
            actionUsersLabel = new System.Windows.Forms.Label();
            availableLabel = new System.Windows.Forms.Label();
            deptLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.availableCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditDesc.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.deptTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEditNotifyUsers.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEditActionUsers.Properties)).BeginInit();
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
            // barBtnAddNew
            // 
            this.barBtnAddNew.Enabled = false;
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Enabled = false;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.MIDcEmailNotify);
            // 
            // descLabel
            // 
            descLabel.AutoSize = true;
            descLabel.Location = new System.Drawing.Point(94, 59);
            descLabel.Name = "descLabel";
            descLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(descLabel, null);
            descLabel.TabIndex = 4;
            descLabel.Text = "Desc:";
            // 
            // notifyUsersLabel
            // 
            notifyUsersLabel.AutoSize = true;
            notifyUsersLabel.Location = new System.Drawing.Point(22, 140);
            notifyUsersLabel.Name = "notifyUsersLabel";
            notifyUsersLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(notifyUsersLabel, null);
            notifyUsersLabel.TabIndex = 6;
            notifyUsersLabel.Text = "Notify Users (To)";
            // 
            // actionUsersLabel
            // 
            actionUsersLabel.AutoSize = true;
            actionUsersLabel.Location = new System.Drawing.Point(22, 186);
            actionUsersLabel.Name = "actionUsersLabel";
            actionUsersLabel.Size = new System.Drawing.Size(107, 12);
            this.PlatetoolTipController.SetSuperTip(actionUsersLabel, null);
            actionUsersLabel.TabIndex = 8;
            actionUsersLabel.Text = "Notify Users (cc)";
            // 
            // availableLabel
            // 
            availableLabel.AutoSize = true;
            availableLabel.Location = new System.Drawing.Point(64, 226);
            availableLabel.Name = "availableLabel";
            availableLabel.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(availableLabel, null);
            availableLabel.TabIndex = 10;
            availableLabel.Text = "Available:";
            // 
            // deptLabel
            // 
            deptLabel.AutoSize = true;
            deptLabel.Location = new System.Drawing.Point(94, 96);
            deptLabel.Name = "deptLabel";
            deptLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(deptLabel, null);
            deptLabel.TabIndex = 12;
            deptLabel.Text = "Dept:";
            // 
            // availableCheckEdit
            // 
            this.availableCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Available", true));
            this.availableCheckEdit.Location = new System.Drawing.Point(133, 223);
            this.availableCheckEdit.Name = "availableCheckEdit";
            this.availableCheckEdit.Properties.Caption = "";
            this.availableCheckEdit.Properties.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.availableCheckEdit.Size = new System.Drawing.Size(103, 19);
            this.availableCheckEdit.TabIndex = 11;
            // 
            // lookUpEditDesc
            // 
            this.lookUpEditDesc.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Currt", true));
            this.lookUpEditDesc.Location = new System.Drawing.Point(135, 54);
            this.lookUpEditDesc.Name = "lookUpEditDesc";
            this.lookUpEditDesc.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.lookUpEditDesc.Size = new System.Drawing.Size(148, 21);
            this.lookUpEditDesc.TabIndex = 12;
            // 
            // deptTextEdit
            // 
            this.deptTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Dept", true));
            this.deptTextEdit.Location = new System.Drawing.Point(135, 93);
            this.deptTextEdit.Name = "deptTextEdit";
            this.deptTextEdit.Size = new System.Drawing.Size(287, 21);
            this.deptTextEdit.TabIndex = 13;
            // 
            // checkedComboBoxEditNotifyUsers
            // 
            this.checkedComboBoxEditNotifyUsers.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NotifyUsers", true));
            this.checkedComboBoxEditNotifyUsers.Location = new System.Drawing.Point(135, 137);
            this.checkedComboBoxEditNotifyUsers.Name = "checkedComboBoxEditNotifyUsers";
            this.checkedComboBoxEditNotifyUsers.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkedComboBoxEditNotifyUsers.Size = new System.Drawing.Size(640, 21);
            this.checkedComboBoxEditNotifyUsers.TabIndex = 15;
            // 
            // checkedComboBoxEditActionUsers
            // 
            this.checkedComboBoxEditActionUsers.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ActionUsers", true));
            this.checkedComboBoxEditActionUsers.Location = new System.Drawing.Point(135, 181);
            this.checkedComboBoxEditActionUsers.Name = "checkedComboBoxEditActionUsers";
            this.checkedComboBoxEditActionUsers.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.checkedComboBoxEditActionUsers.Size = new System.Drawing.Size(640, 21);
            this.checkedComboBoxEditActionUsers.TabIndex = 15;
            // 
            // EmailNotifyDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.checkedComboBoxEditActionUsers);
            this.Controls.Add(this.checkedComboBoxEditNotifyUsers);
            this.Controls.Add(deptLabel);
            this.Controls.Add(this.deptTextEdit);
            this.Controls.Add(this.lookUpEditDesc);
            this.Controls.Add(availableLabel);
            this.Controls.Add(this.availableCheckEdit);
            this.Controls.Add(actionUsersLabel);
            this.Controls.Add(notifyUsersLabel);
            this.Controls.Add(descLabel);
            this.Name = "EmailNotifyDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.EmailNotifyDetailForm_Load);
            this.Controls.SetChildIndex(descLabel, 0);
            this.Controls.SetChildIndex(notifyUsersLabel, 0);
            this.Controls.SetChildIndex(actionUsersLabel, 0);
            this.Controls.SetChildIndex(this.availableCheckEdit, 0);
            this.Controls.SetChildIndex(availableLabel, 0);
            this.Controls.SetChildIndex(this.lookUpEditDesc, 0);
            this.Controls.SetChildIndex(this.deptTextEdit, 0);
            this.Controls.SetChildIndex(deptLabel, 0);
            this.Controls.SetChildIndex(this.checkedComboBoxEditNotifyUsers, 0);
            this.Controls.SetChildIndex(this.checkedComboBoxEditActionUsers, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.availableCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.lookUpEditDesc.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.deptTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEditNotifyUsers.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.checkedComboBoxEditActionUsers.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.CheckEdit availableCheckEdit;
        private DevExpress.XtraEditors.LookUpEdit lookUpEditDesc;
        private DevExpress.XtraEditors.TextEdit deptTextEdit;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkedComboBoxEditNotifyUsers;
        private DevExpress.XtraEditors.CheckedComboBoxEdit checkedComboBoxEditActionUsers;
    }
}
