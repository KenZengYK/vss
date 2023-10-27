namespace PH.BasicInfo.UI.MasterDB
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
            System.Windows.Forms.Label lbNotifyType;
            System.Windows.Forms.Label lbTo;
            System.Windows.Forms.Label actionUsersLabel;
            System.Windows.Forms.Label label1;
            this.txtToUser = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.txtCcUser = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            this.txtNotifyType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtBccUser = new DevExpress.XtraEditors.CheckedComboBoxEdit();
            lbNotifyType = new System.Windows.Forms.Label();
            lbTo = new System.Windows.Forms.Label();
            actionUsersLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToUser.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCcUser.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNotifyType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBccUser.Properties)).BeginInit();
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
            // lbNotifyType
            // 
            lbNotifyType.AutoSize = true;
            lbNotifyType.Location = new System.Drawing.Point(38, 55);
            lbNotifyType.Name = "lbNotifyType";
            lbNotifyType.Size = new System.Drawing.Size(77, 12);
            this.PlatetoolTipController.SetSuperTip(lbNotifyType, null);
            lbNotifyType.TabIndex = 4;
            lbNotifyType.Text = "Notify Type:";
            // 
            // lbTo
            // 
            lbTo.AutoSize = true;
            lbTo.Location = new System.Drawing.Point(38, 84);
            lbTo.Name = "lbTo";
            lbTo.Size = new System.Drawing.Size(113, 12);
            this.PlatetoolTipController.SetSuperTip(lbTo, null);
            lbTo.TabIndex = 6;
            lbTo.Text = "Notify Users (To):";
            // 
            // actionUsersLabel
            // 
            actionUsersLabel.AutoSize = true;
            actionUsersLabel.Location = new System.Drawing.Point(38, 115);
            actionUsersLabel.Name = "actionUsersLabel";
            actionUsersLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(actionUsersLabel, null);
            actionUsersLabel.TabIndex = 8;
            actionUsersLabel.Text = "Notify Users  (Cc):";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(38, 143);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(125, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 17;
            label1.Text = "Notify Users  (Bcc):";
            // 
            // txtToUser
            // 
            this.txtToUser.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ToUser", true));
            this.txtToUser.Location = new System.Drawing.Point(172, 81);
            this.txtToUser.Name = "txtToUser";
            this.txtToUser.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtToUser.Size = new System.Drawing.Size(640, 21);
            this.txtToUser.TabIndex = 15;
            // 
            // txtCcUser
            // 
            this.txtCcUser.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CcUser", true));
            this.txtCcUser.Location = new System.Drawing.Point(172, 113);
            this.txtCcUser.Name = "txtCcUser";
            this.txtCcUser.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtCcUser.Size = new System.Drawing.Size(640, 21);
            this.txtCcUser.TabIndex = 15;
            // 
            // txtNotifyType
            // 
            this.txtNotifyType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "NotifyType", true));
            this.txtNotifyType.Location = new System.Drawing.Point(172, 50);
            this.txtNotifyType.Name = "txtNotifyType";
            this.txtNotifyType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtNotifyType.Properties.Items.AddRange(new object[] {
            "Prepare",
            "Confirm",
            "Approval"});
            this.txtNotifyType.Size = new System.Drawing.Size(212, 21);
            this.txtNotifyType.TabIndex = 16;
            // 
            // txtBccUser
            // 
            this.txtBccUser.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "BccUser", true));
            this.txtBccUser.Location = new System.Drawing.Point(172, 141);
            this.txtBccUser.Name = "txtBccUser";
            this.txtBccUser.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtBccUser.Size = new System.Drawing.Size(640, 21);
            this.txtBccUser.TabIndex = 18;
            // 
            // EmailNotifyDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.txtBccUser);
            this.Controls.Add(label1);
            this.Controls.Add(this.txtNotifyType);
            this.Controls.Add(this.txtCcUser);
            this.Controls.Add(this.txtToUser);
            this.Controls.Add(actionUsersLabel);
            this.Controls.Add(lbTo);
            this.Controls.Add(lbNotifyType);
            this.Name = "EmailNotifyDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.EmailNotifyDetailForm_Load);
            this.Controls.SetChildIndex(lbNotifyType, 0);
            this.Controls.SetChildIndex(lbTo, 0);
            this.Controls.SetChildIndex(actionUsersLabel, 0);
            this.Controls.SetChildIndex(this.txtToUser, 0);
            this.Controls.SetChildIndex(this.txtCcUser, 0);
            this.Controls.SetChildIndex(this.txtNotifyType, 0);
            this.Controls.SetChildIndex(label1, 0);
            this.Controls.SetChildIndex(this.txtBccUser, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtToUser.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCcUser.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNotifyType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtBccUser.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.CheckedComboBoxEdit txtToUser;
        private DevExpress.XtraEditors.CheckedComboBoxEdit txtCcUser;
        private DevExpress.XtraEditors.ComboBoxEdit txtNotifyType;
        private DevExpress.XtraEditors.CheckedComboBoxEdit txtBccUser;
    }
}
