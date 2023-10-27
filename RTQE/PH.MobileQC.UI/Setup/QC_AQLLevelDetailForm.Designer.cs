namespace PH.MobileQC.UI.Setup
{
    partial class QC_AQLLevelDetailForm
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
            System.Windows.Forms.Label oATeamLabel;
            System.Windows.Forms.Label customerLabel;
            System.Windows.Forms.Label projectNoLabel;
            System.Windows.Forms.Label aQLMarjorLevelLabel;
            System.Windows.Forms.Label aQLMinorLevelLabel;
            this.oATeamTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.customerTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.projectNoTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.txtAQLMarjorDefectLevel = new DevExpress.XtraEditors.ComboBoxEdit();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            oATeamLabel = new System.Windows.Forms.Label();
            customerLabel = new System.Windows.Forms.Label();
            projectNoLabel = new System.Windows.Forms.Label();
            aQLMarjorLevelLabel = new System.Windows.Forms.Label();
            aQLMinorLevelLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.oATeamTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.projectNoTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAQLMarjorDefectLevel.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_AQLLevel);
            // 
            // oATeamLabel
            // 
            oATeamLabel.AutoSize = true;
            oATeamLabel.Location = new System.Drawing.Point(47, 27);
            oATeamLabel.Name = "oATeamLabel";
            oATeamLabel.Size = new System.Drawing.Size(56, 12);
            this.PlatetoolTipController.SetSuperTip(oATeamLabel, null);
            oATeamLabel.TabIndex = 4;
            oATeamLabel.Text = "跟單組別:";
            // 
            // customerLabel
            // 
            customerLabel.AutoSize = true;
            customerLabel.Location = new System.Drawing.Point(63, 62);
            customerLabel.Name = "customerLabel";
            customerLabel.Size = new System.Drawing.Size(32, 12);
            this.PlatetoolTipController.SetSuperTip(customerLabel, null);
            customerLabel.TabIndex = 6;
            customerLabel.Text = "客戶:";
            // 
            // projectNoLabel
            // 
            projectNoLabel.AutoSize = true;
            projectNoLabel.Location = new System.Drawing.Point(15, 94);
            projectNoLabel.Name = "projectNoLabel";
            projectNoLabel.Size = new System.Drawing.Size(80, 12);
            this.PlatetoolTipController.SetSuperTip(projectNoLabel, null);
            projectNoLabel.TabIndex = 8;
            projectNoLabel.Text = "客戶工程代號:";
            // 
            // aQLMarjorLevelLabel
            // 
            aQLMarjorLevelLabel.AutoSize = true;
            aQLMarjorLevelLabel.Location = new System.Drawing.Point(31, 46);
            aQLMarjorLevelLabel.Name = "aQLMarjorLevelLabel";
            aQLMarjorLevelLabel.Size = new System.Drawing.Size(32, 12);
            this.PlatetoolTipController.SetSuperTip(aQLMarjorLevelLabel, null);
            aQLMarjorLevelLabel.TabIndex = 10;
            aQLMarjorLevelLabel.Text = "主要:";
            // 
            // aQLMinorLevelLabel
            // 
            aQLMinorLevelLabel.AutoSize = true;
            aQLMinorLevelLabel.Location = new System.Drawing.Point(31, 83);
            aQLMinorLevelLabel.Name = "aQLMinorLevelLabel";
            aQLMinorLevelLabel.Size = new System.Drawing.Size(32, 12);
            this.PlatetoolTipController.SetSuperTip(aQLMinorLevelLabel, null);
            aQLMinorLevelLabel.TabIndex = 12;
            aQLMinorLevelLabel.Text = "次要:";
            // 
            // oATeamTextEdit
            // 
            this.oATeamTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "OATeam", true));
            this.oATeamTextEdit.Location = new System.Drawing.Point(116, 24);
            this.oATeamTextEdit.Name = "oATeamTextEdit";
            this.oATeamTextEdit.Size = new System.Drawing.Size(100, 21);
            this.oATeamTextEdit.TabIndex = 5;
            // 
            // customerTextEdit
            // 
            this.customerTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Customer", true));
            this.customerTextEdit.Location = new System.Drawing.Point(116, 57);
            this.customerTextEdit.Name = "customerTextEdit";
            this.customerTextEdit.Size = new System.Drawing.Size(100, 21);
            this.customerTextEdit.TabIndex = 7;
            // 
            // projectNoTextEdit
            // 
            this.projectNoTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "ProjectNo", true));
            this.projectNoTextEdit.Location = new System.Drawing.Point(117, 89);
            this.projectNoTextEdit.Name = "projectNoTextEdit";
            this.projectNoTextEdit.Size = new System.Drawing.Size(100, 21);
            this.projectNoTextEdit.TabIndex = 9;
            // 
            // txtAQLMarjorDefectLevel
            // 
            this.txtAQLMarjorDefectLevel.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AQLMarjorLevel", true));
            this.txtAQLMarjorDefectLevel.Location = new System.Drawing.Point(89, 41);
            this.txtAQLMarjorDefectLevel.Name = "txtAQLMarjorDefectLevel";
            this.txtAQLMarjorDefectLevel.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtAQLMarjorDefectLevel.Properties.Items.AddRange(new object[] {
            "AQL 0.65",
            "AQL 1.0",
            "AQL 1.5",
            "AQL 2.5",
            "AQL 4.0",
            "AQL 6.5"});
            this.txtAQLMarjorDefectLevel.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.txtAQLMarjorDefectLevel.Size = new System.Drawing.Size(100, 21);
            this.txtAQLMarjorDefectLevel.TabIndex = 22;
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "AQLMinorLevel", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(89, 80);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "AQL 0.65",
            "AQL 1.0",
            "AQL 1.5",
            "AQL 2.5",
            "AQL 4.0",
            "AQL 6.5"});
            this.comboBoxEdit1.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.comboBoxEdit1.Size = new System.Drawing.Size(100, 21);
            this.comboBoxEdit1.TabIndex = 23;
            // 
            // groupControl1
            // 
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.txtAQLMarjorDefectLevel);
            this.groupControl1.Controls.Add(this.comboBoxEdit1);
            this.groupControl1.Controls.Add(aQLMarjorLevelLabel);
            this.groupControl1.Controls.Add(aQLMinorLevelLabel);
            this.groupControl1.Location = new System.Drawing.Point(349, 80);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(241, 129);
            this.PlatetoolTipController.SetSuperTip(this.groupControl1, null);
            this.groupControl1.TabIndex = 24;
            this.groupControl1.Text = "AQL 接受標准";
            // 
            // groupControl2
            // 
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.oATeamTextEdit);
            this.groupControl2.Controls.Add(oATeamLabel);
            this.groupControl2.Controls.Add(projectNoLabel);
            this.groupControl2.Controls.Add(this.customerTextEdit);
            this.groupControl2.Controls.Add(this.projectNoTextEdit);
            this.groupControl2.Controls.Add(customerLabel);
            this.groupControl2.Location = new System.Drawing.Point(53, 80);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(258, 127);
            this.PlatetoolTipController.SetSuperTip(this.groupControl2, null);
            this.groupControl2.TabIndex = 25;
            this.groupControl2.Text = "基本信息";
            // 
            // QC_AQLLevelDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.groupControl2);
            this.Controls.Add(this.groupControl1);
            this.Name = "QC_AQLLevelDetailForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.groupControl1, 0);
            this.Controls.SetChildIndex(this.groupControl2, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.oATeamTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.customerTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.projectNoTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAQLMarjorDefectLevel.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            this.groupControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            this.groupControl2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit oATeamTextEdit;
        private DevExpress.XtraEditors.TextEdit customerTextEdit;
        private DevExpress.XtraEditors.TextEdit projectNoTextEdit;
        private DevExpress.XtraEditors.ComboBoxEdit txtAQLMarjorDefectLevel;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.GroupControl groupControl2;
    }
}
