namespace PH.LWPM.UI.Committee
{
    partial class CommitteeDetailForm
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
            this.components = new System.ComponentModel.Container();
            System.Windows.Forms.Label seqNoLabel;
            System.Windows.Forms.Label nameLabel;
            System.Windows.Forms.Label label1;
            this.seqNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.nameTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.committeeMemberListForm1 = new PH.LWPM.UI.Committee.CommitteeMemberListForm();
            this.txtRegion = new DevExpress.XtraEditors.ComboBoxEdit();
            seqNoLabel = new System.Windows.Forms.Label();
            nameLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRegion.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 93);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.txtRegion);
            this.headerTitleBar.Controls.Add(label1);
            this.headerTitleBar.Controls.Add(seqNoLabel);
            this.headerTitleBar.Controls.Add(nameLabel);
            this.headerTitleBar.Controls.Add(this.seqNoTextEdit);
            this.headerTitleBar.Controls.Add(this.nameTextEdit);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(809, 66);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.nameTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.seqNoTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(nameLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(seqNoLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(label1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.txtRegion, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 99);
            this.panelControl1.Size = new System.Drawing.Size(809, 409);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.committeeMemberListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(796, 373);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(805, 405);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.Committee);
            // 
            // seqNoLabel
            // 
            seqNoLabel.AutoSize = true;
            seqNoLabel.Location = new System.Drawing.Point(14, 35);
            seqNoLabel.Name = "seqNoLabel";
            seqNoLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(seqNoLabel, null);
            seqNoLabel.TabIndex = 4;
            seqNoLabel.Text = "Seq#:";
            // 
            // nameLabel
            // 
            nameLabel.AutoSize = true;
            nameLabel.Location = new System.Drawing.Point(300, 35);
            nameLabel.Name = "nameLabel";
            nameLabel.Size = new System.Drawing.Size(95, 12);
            this.PlatetoolTipController.SetSuperTip(nameLabel, null);
            nameLabel.TabIndex = 6;
            nameLabel.Text = "Committee Name:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(156, 35);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 8;
            label1.Text = "Region:";
            // 
            // seqNoTextEdit
            // 
            this.seqNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "SeqNo", true));
            this.seqNoTextEdit.Location = new System.Drawing.Point(57, 32);
            this.seqNoTextEdit.Name = "seqNoTextEdit";
            this.seqNoTextEdit.Size = new System.Drawing.Size(81, 21);
            this.seqNoTextEdit.TabIndex = 5;
            // 
            // nameTextEdit
            // 
            this.nameTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Name", true));
            this.nameTextEdit.Location = new System.Drawing.Point(401, 32);
            this.nameTextEdit.Name = "nameTextEdit";
            this.nameTextEdit.Size = new System.Drawing.Size(313, 21);
            this.nameTextEdit.TabIndex = 7;
            // 
            // committeeMemberListForm1
            // 
            this.committeeMemberListForm1.AllowAddRow = true;
            this.committeeMemberListForm1.AlwaysShowDesignLayout = false;
            this.committeeMemberListForm1.AutoOpenDetailForm = false;
            this.committeeMemberListForm1.DataContext = null;
            this.committeeMemberListForm1.DataSource = null;
            this.committeeMemberListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.committeeMemberListForm1.EditorTypeName = null;
            this.committeeMemberListForm1.FileID = null;
            this.committeeMemberListForm1.FirstForm = null;
            this.committeeMemberListForm1.FormName = "CommitteeMemberListForm";
            this.committeeMemberListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.committeeMemberListForm1.FormTitle = "PH.LWPM.UI.Committee.CommitteeMemberListForm";
            this.committeeMemberListForm1.IsCancelList = false;
            this.committeeMemberListForm1.IsShowPivotTable = false;
            this.committeeMemberListForm1.LayoutData = null;
            this.committeeMemberListForm1.LayoutName = null;
            this.committeeMemberListForm1.ListForm = null;
            this.committeeMemberListForm1.Location = new System.Drawing.Point(0, 0);
            this.committeeMemberListForm1.MenuID = ((long)(0));
            this.committeeMemberListForm1.Name = "committeeMemberListForm1";
            this.committeeMemberListForm1.NeedCheckPermission = true;
            this.committeeMemberListForm1.NextForm = null;
            this.committeeMemberListForm1.ParentForm = null;
            this.committeeMemberListForm1.PrevForm = null;
            this.committeeMemberListForm1.RowChangeAutoSave = true;
            this.committeeMemberListForm1.ShowMultiCheck = false;
            this.committeeMemberListForm1.SideProgramID = null;
            this.committeeMemberListForm1.Size = new System.Drawing.Size(796, 373);
            this.PlatetoolTipController.SetSuperTip(this.committeeMemberListForm1, null);
            this.committeeMemberListForm1.TabControls = null;
            this.committeeMemberListForm1.TabIndex = 0;
            this.committeeMemberListForm1.TabPage = null;
            // 
            // txtRegion
            // 
            this.txtRegion.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Region", true));
            this.txtRegion.Location = new System.Drawing.Point(209, 32);
            this.txtRegion.Name = "txtRegion";
            this.txtRegion.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtRegion.Properties.Items.AddRange(new object[] {
            "ALL",
            "HK",
            "CL",
            "SL",
            "RX"});
            this.txtRegion.Size = new System.Drawing.Size(66, 21);
            this.txtRegion.TabIndex = 10;
            // 
            // CommitteeDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CommitteeDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            this.headerTitleBar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.seqNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.nameTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtRegion.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit seqNoTextEdit;
        private DevExpress.XtraEditors.TextEdit nameTextEdit;
        private CommitteeMemberListForm committeeMemberListForm1;
        private DevExpress.XtraEditors.ComboBoxEdit txtRegion;
    }
}
