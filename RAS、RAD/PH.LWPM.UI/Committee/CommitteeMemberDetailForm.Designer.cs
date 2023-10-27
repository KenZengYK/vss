namespace PH.LWPM.UI.Committee
{
    partial class CommitteMemberDetailForm
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
            System.Windows.Forms.Label seqNoLabel;
            System.Windows.Forms.Label committeeTitleLabel;
            System.Windows.Forms.Label employeeIDLabel;
            System.Windows.Forms.Label label1;
            System.Windows.Forms.Label label2;
            this.seqNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.txtCommitteeTitle = new DevExpress.XtraEditors.ComboBoxEdit();
            this.txtEmployeeID = new DevExpress.XtraEditors.ButtonEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.txtNameCN = new DevExpress.XtraEditors.TextEdit();
            this.txtNameEN = new DevExpress.XtraEditors.TextEdit();
            seqNoLabel = new System.Windows.Forms.Label();
            committeeTitleLabel = new System.Windows.Forms.Label();
            employeeIDLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCommitteeTitle.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEmployeeID.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtNameCN.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNameEN.Properties)).BeginInit();
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
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.CommitteeMember);
            // 
            // seqNoLabel
            // 
            seqNoLabel.AutoSize = true;
            seqNoLabel.Location = new System.Drawing.Point(136, 48);
            seqNoLabel.Name = "seqNoLabel";
            seqNoLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(seqNoLabel, null);
            seqNoLabel.TabIndex = 4;
            seqNoLabel.Text = "Seq#:";
            // 
            // committeeTitleLabel
            // 
            committeeTitleLabel.AutoSize = true;
            committeeTitleLabel.Location = new System.Drawing.Point(82, 77);
            committeeTitleLabel.Name = "committeeTitleLabel";
            committeeTitleLabel.Size = new System.Drawing.Size(101, 12);
            this.PlatetoolTipController.SetSuperTip(committeeTitleLabel, null);
            committeeTitleLabel.TabIndex = 6;
            committeeTitleLabel.Text = "Committee Title:";
            // 
            // employeeIDLabel
            // 
            employeeIDLabel.AutoSize = true;
            employeeIDLabel.Location = new System.Drawing.Point(64, 33);
            employeeIDLabel.Name = "employeeIDLabel";
            employeeIDLabel.Size = new System.Drawing.Size(23, 12);
            this.PlatetoolTipController.SetSuperTip(employeeIDLabel, null);
            employeeIDLabel.TabIndex = 8;
            employeeIDLabel.Text = "ID:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(52, 63);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 11;
            label1.Text = "Name:";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(22, 95);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(65, 12);
            this.PlatetoolTipController.SetSuperTip(label2, null);
            label2.TabIndex = 12;
            label2.Text = "Name (CN):";
            // 
            // seqNoTextEdit
            // 
            this.seqNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoTextEdit.Location = new System.Drawing.Point(189, 45);
            this.seqNoTextEdit.Name = "seqNoTextEdit";
            this.seqNoTextEdit.Size = new System.Drawing.Size(142, 21);
            this.seqNoTextEdit.TabIndex = 5;
            // 
            // txtCommitteeTitle
            // 
            this.txtCommitteeTitle.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "CommitteeTitle", true));
            this.txtCommitteeTitle.Location = new System.Drawing.Point(189, 74);
            this.txtCommitteeTitle.Name = "txtCommitteeTitle";
            this.txtCommitteeTitle.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtCommitteeTitle.Properties.Items.AddRange(new object[] {
            "Convener",
            "Member"});
            this.txtCommitteeTitle.Size = new System.Drawing.Size(142, 21);
            this.txtCommitteeTitle.TabIndex = 8;
            // 
            // txtEmployeeID
            // 
            this.txtEmployeeID.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "EmployeeID", true));
            this.txtEmployeeID.Location = new System.Drawing.Point(104, 29);
            this.txtEmployeeID.Name = "txtEmployeeID";
            this.txtEmployeeID.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtEmployeeID.Size = new System.Drawing.Size(142, 21);
            this.txtEmployeeID.TabIndex = 10;
            this.txtEmployeeID.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.txtEmployeeID_ButtonClick);
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.txtNameCN);
            this.groupControl1.Controls.Add(this.txtNameEN);
            this.groupControl1.Controls.Add(label2);
            this.groupControl1.Controls.Add(label1);
            this.groupControl1.Controls.Add(this.txtEmployeeID);
            this.groupControl1.Controls.Add(employeeIDLabel);
            this.groupControl1.Location = new System.Drawing.Point(84, 101);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(291, 135);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 11;
            this.groupControl1.Text = "Member";
            // 
            // txtNameCN
            // 
            this.txtNameCN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MemberNameCN", true));
            this.txtNameCN.Location = new System.Drawing.Point(104, 92);
            this.txtNameCN.Name = "txtNameCN";
            this.txtNameCN.Size = new System.Drawing.Size(142, 21);
            this.txtNameCN.TabIndex = 14;
            // 
            // txtNameEN
            // 
            this.txtNameEN.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "MemberNameEN", true));
            this.txtNameEN.Location = new System.Drawing.Point(105, 63);
            this.txtNameEN.Name = "txtNameEN";
            this.txtNameEN.Size = new System.Drawing.Size(142, 21);
            this.txtNameEN.TabIndex = 13;
            // 
            // CommitteMemberDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl1);
            this.Controls.Add(this.txtCommitteeTitle);
            this.Controls.Add(committeeTitleLabel);
            this.Controls.Add(seqNoLabel);
            this.Controls.Add(this.seqNoTextEdit);
            this.Name = "CommitteMemberDetailForm";
            this.Size = new System.Drawing.Size(639, 295);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.seqNoTextEdit, 0);
            this.Controls.SetChildIndex(seqNoLabel, 0);
            this.Controls.SetChildIndex(committeeTitleLabel, 0);
            this.Controls.SetChildIndex(this.txtCommitteeTitle, 0);
            this.Controls.SetChildIndex(this.groupControl1, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtCommitteeTitle.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtEmployeeID.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtNameCN.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtNameEN.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit seqNoTextEdit;
        private DevExpress.XtraEditors.ComboBoxEdit txtCommitteeTitle;
        private DevExpress.XtraEditors.ButtonEdit txtEmployeeID;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.TextEdit txtNameCN;
        private DevExpress.XtraEditors.TextEdit txtNameEN;

    }
}
