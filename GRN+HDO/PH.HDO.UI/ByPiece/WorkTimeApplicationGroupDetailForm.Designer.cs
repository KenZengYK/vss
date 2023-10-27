namespace PH.HDO.UI.ByPiece
{
    partial class WorkTimeApplicationGroupDetailForm
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
            System.Windows.Forms.Label application_ManLabel;
            System.Windows.Forms.Label group_CodeLabel;
            System.Windows.Forms.Label application_DateLabel;
            System.Windows.Forms.Label isAgree_ApplicationManLabel;
            System.Windows.Forms.Label isAgree_DirectorLabel;
            System.Windows.Forms.Label isAgree_ManagerLabel;
            this.application_ManTextEdit = new DevExpress.XtraEditors.TextEdit();
            this.application_DateDateEdit = new DevExpress.XtraEditors.DateEdit();
            this.isAgree_ApplicationManCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.isAgree_DirectorCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.isAgree_ManagerCheckEdit = new DevExpress.XtraEditors.CheckEdit();
            this.workTimeApplicationListForm1 = new PH.HDO.UI.ByPiece.WorkTimeApplicationListForm();
            this.comboBoxEdit1 = new DevExpress.XtraEditors.ComboBoxEdit();
            application_ManLabel = new System.Windows.Forms.Label();
            group_CodeLabel = new System.Windows.Forms.Label();
            application_DateLabel = new System.Windows.Forms.Label();
            isAgree_ApplicationManLabel = new System.Windows.Forms.Label();
            isAgree_DirectorLabel = new System.Windows.Forms.Label();
            isAgree_ManagerLabel = new System.Windows.Forms.Label();
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
            ((System.ComponentModel.ISupportInitialize)(this.application_ManTextEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.application_DateDateEdit.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.application_DateDateEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_ApplicationManCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_DirectorCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_ManagerCheckEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 260);
            this.splitterControl1.Size = new System.Drawing.Size(1226, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(this.comboBoxEdit1);
            this.headerTitleBar.Controls.Add(isAgree_ManagerLabel);
            this.headerTitleBar.Controls.Add(this.isAgree_ManagerCheckEdit);
            this.headerTitleBar.Controls.Add(isAgree_DirectorLabel);
            this.headerTitleBar.Controls.Add(this.isAgree_DirectorCheckEdit);
            this.headerTitleBar.Controls.Add(isAgree_ApplicationManLabel);
            this.headerTitleBar.Controls.Add(this.isAgree_ApplicationManCheckEdit);
            this.headerTitleBar.Controls.Add(application_DateLabel);
            this.headerTitleBar.Controls.Add(this.application_DateDateEdit);
            this.headerTitleBar.Controls.Add(group_CodeLabel);
            this.headerTitleBar.Controls.Add(application_ManLabel);
            this.headerTitleBar.Controls.Add(this.application_ManTextEdit);
            this.headerTitleBar.Size = new System.Drawing.Size(1226, 234);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.application_ManTextEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(application_ManLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(group_CodeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.application_DateDateEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(application_DateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.isAgree_ApplicationManCheckEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(isAgree_ApplicationManLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.isAgree_DirectorCheckEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(isAgree_DirectorLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.isAgree_ManagerCheckEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(isAgree_ManagerLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.comboBoxEdit1, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 266);
            this.panelControl1.Size = new System.Drawing.Size(1226, 531);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.workTimeApplicationListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(1213, 495);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(1222, 527);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.PHGDB2.BO.ByPrice_WorkTimeApplication_Master);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(9735, 0);
            // 
            // application_ManLabel
            // 
            application_ManLabel.AutoSize = true;
            application_ManLabel.Location = new System.Drawing.Point(83, 83);
            application_ManLabel.Name = "application_ManLabel";
            application_ManLabel.Size = new System.Drawing.Size(44, 12);
            this.PlatetoolTipController.SetSuperTip(application_ManLabel, null);
            application_ManLabel.TabIndex = 3;
            application_ManLabel.Text = "填單人:";
            // 
            // group_CodeLabel
            // 
            group_CodeLabel.AutoSize = true;
            group_CodeLabel.Location = new System.Drawing.Point(83, 125);
            group_CodeLabel.Name = "group_CodeLabel";
            group_CodeLabel.Size = new System.Drawing.Size(32, 12);
            this.PlatetoolTipController.SetSuperTip(group_CodeLabel, null);
            group_CodeLabel.TabIndex = 5;
            group_CodeLabel.Text = "組別:";
            // 
            // application_DateLabel
            // 
            application_DateLabel.AutoSize = true;
            application_DateLabel.Location = new System.Drawing.Point(83, 46);
            application_DateLabel.Name = "application_DateLabel";
            application_DateLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(application_DateLabel, null);
            application_DateLabel.TabIndex = 6;
            application_DateLabel.Text = "填單日期 :";
            // 
            // isAgree_ApplicationManLabel
            // 
            isAgree_ApplicationManLabel.AutoSize = true;
            isAgree_ApplicationManLabel.Location = new System.Drawing.Point(336, 48);
            isAgree_ApplicationManLabel.Name = "isAgree_ApplicationManLabel";
            isAgree_ApplicationManLabel.Size = new System.Drawing.Size(128, 12);
            this.PlatetoolTipController.SetSuperTip(isAgree_ApplicationManLabel, null);
            isAgree_ApplicationManLabel.TabIndex = 9;
            isAgree_ApplicationManLabel.Text = "Is Agree Application Man:";
            isAgree_ApplicationManLabel.Visible = false;
            // 
            // isAgree_DirectorLabel
            // 
            isAgree_DirectorLabel.AutoSize = true;
            isAgree_DirectorLabel.Location = new System.Drawing.Point(376, 87);
            isAgree_DirectorLabel.Name = "isAgree_DirectorLabel";
            isAgree_DirectorLabel.Size = new System.Drawing.Size(88, 12);
            this.PlatetoolTipController.SetSuperTip(isAgree_DirectorLabel, null);
            isAgree_DirectorLabel.TabIndex = 11;
            isAgree_DirectorLabel.Text = "Is Agree Director:";
            isAgree_DirectorLabel.Visible = false;
            // 
            // isAgree_ManagerLabel
            // 
            isAgree_ManagerLabel.AutoSize = true;
            isAgree_ManagerLabel.Location = new System.Drawing.Point(373, 127);
            isAgree_ManagerLabel.Name = "isAgree_ManagerLabel";
            isAgree_ManagerLabel.Size = new System.Drawing.Size(91, 12);
            this.PlatetoolTipController.SetSuperTip(isAgree_ManagerLabel, null);
            isAgree_ManagerLabel.TabIndex = 13;
            isAgree_ManagerLabel.Text = "Is Agree Manager:";
            isAgree_ManagerLabel.Visible = false;
            // 
            // application_ManTextEdit
            // 
            this.application_ManTextEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Application_Man", true));
            this.application_ManTextEdit.Enabled = false;
            this.application_ManTextEdit.Location = new System.Drawing.Point(155, 82);
            this.application_ManTextEdit.Name = "application_ManTextEdit";
            this.application_ManTextEdit.Size = new System.Drawing.Size(165, 21);
            this.application_ManTextEdit.TabIndex = 4;
            // 
            // application_DateDateEdit
            // 
            this.application_DateDateEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Application_Date", true));
            this.application_DateDateEdit.EditValue = null;
            this.application_DateDateEdit.Enabled = false;
            this.application_DateDateEdit.Location = new System.Drawing.Point(155, 45);
            this.application_DateDateEdit.Name = "application_DateDateEdit";
            this.application_DateDateEdit.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.application_DateDateEdit.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.application_DateDateEdit.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.application_DateDateEdit.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.application_DateDateEdit.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.application_DateDateEdit.Properties.Mask.EditMask = "yyyy-MM-dd ";
            this.application_DateDateEdit.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.application_DateDateEdit.Size = new System.Drawing.Size(165, 21);
            this.application_DateDateEdit.TabIndex = 7;
            // 
            // isAgree_ApplicationManCheckEdit
            // 
            this.isAgree_ApplicationManCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsAgree_ApplicationMan", true));
            this.isAgree_ApplicationManCheckEdit.Location = new System.Drawing.Point(470, 45);
            this.isAgree_ApplicationManCheckEdit.Name = "isAgree_ApplicationManCheckEdit";
            this.isAgree_ApplicationManCheckEdit.Properties.Caption = "";
            this.isAgree_ApplicationManCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isAgree_ApplicationManCheckEdit.TabIndex = 10;
            this.isAgree_ApplicationManCheckEdit.Visible = false;
            // 
            // isAgree_DirectorCheckEdit
            // 
            this.isAgree_DirectorCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsAgree_Director", true));
            this.isAgree_DirectorCheckEdit.Location = new System.Drawing.Point(470, 84);
            this.isAgree_DirectorCheckEdit.Name = "isAgree_DirectorCheckEdit";
            this.isAgree_DirectorCheckEdit.Properties.Caption = "";
            this.isAgree_DirectorCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isAgree_DirectorCheckEdit.TabIndex = 12;
            this.isAgree_DirectorCheckEdit.Visible = false;
            // 
            // isAgree_ManagerCheckEdit
            // 
            this.isAgree_ManagerCheckEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsAgree_Manager", true));
            this.isAgree_ManagerCheckEdit.Location = new System.Drawing.Point(470, 124);
            this.isAgree_ManagerCheckEdit.Name = "isAgree_ManagerCheckEdit";
            this.isAgree_ManagerCheckEdit.Properties.Caption = "";
            this.isAgree_ManagerCheckEdit.Size = new System.Drawing.Size(75, 19);
            this.isAgree_ManagerCheckEdit.TabIndex = 14;
            this.isAgree_ManagerCheckEdit.Visible = false;
            // 
            // workTimeApplicationListForm1
            // 
            this.workTimeApplicationListForm1.AllowAddRow = true;
            this.workTimeApplicationListForm1.AlwaysShowDesignLayout = false;
            this.workTimeApplicationListForm1.AutoOpenDetailForm = false;
            this.workTimeApplicationListForm1.DataContext = null;
            this.workTimeApplicationListForm1.DataSource = null;
            this.workTimeApplicationListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.workTimeApplicationListForm1.EditorTypeName = null;
            this.workTimeApplicationListForm1.FileID = null;
            this.workTimeApplicationListForm1.FirstForm = null;
            this.workTimeApplicationListForm1.FormName = "WorkTimeApplicationListForm";
            this.workTimeApplicationListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.workTimeApplicationListForm1.FormTitle = "PH.HDO.UI.ByPiece.WorkTimeApplicationListForm";
            this.workTimeApplicationListForm1.IsCancelList = false;
            this.workTimeApplicationListForm1.IsShowPivotTable = false;
            this.workTimeApplicationListForm1.LayoutData = null;
            this.workTimeApplicationListForm1.LayoutName = null;
            this.workTimeApplicationListForm1.ListForm = null;
            this.workTimeApplicationListForm1.Location = new System.Drawing.Point(0, 0);
            this.workTimeApplicationListForm1.MenuID = ((long)(0));
            this.workTimeApplicationListForm1.Name = "workTimeApplicationListForm1";
            this.workTimeApplicationListForm1.NeedCheckPermission = true;
            this.workTimeApplicationListForm1.NextForm = null;
            this.workTimeApplicationListForm1.ParentForm = null;
            this.workTimeApplicationListForm1.PrevForm = null;
            this.workTimeApplicationListForm1.RowChangeAutoSave = true;
            this.workTimeApplicationListForm1.ShowMultiCheck = false;
            this.workTimeApplicationListForm1.SideProgramID = null;
            this.workTimeApplicationListForm1.Size = new System.Drawing.Size(1213, 495);
            this.PlatetoolTipController.SetSuperTip(this.workTimeApplicationListForm1, null);
            this.workTimeApplicationListForm1.TabControls = null;
            this.workTimeApplicationListForm1.TabIndex = 0;
            this.workTimeApplicationListForm1.TabPage = null;
            // 
            // comboBoxEdit1
            // 
            this.comboBoxEdit1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Group_Code", true));
            this.comboBoxEdit1.Location = new System.Drawing.Point(155, 120);
            this.comboBoxEdit1.Name = "comboBoxEdit1";
            this.comboBoxEdit1.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.comboBoxEdit1.Properties.Items.AddRange(new object[] {
            "布料組",
            "輔料組",
            "模杯組"});
            this.comboBoxEdit1.Size = new System.Drawing.Size(165, 21);
            this.comboBoxEdit1.TabIndex = 15;
            // 
            // WorkTimeApplicationGroupDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WorkTimeApplicationGroupDetailForm";
            this.Size = new System.Drawing.Size(1226, 797);
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
            ((System.ComponentModel.ISupportInitialize)(this.application_ManTextEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.application_DateDateEdit.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.application_DateDateEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_ApplicationManCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_DirectorCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.isAgree_ManagerCheckEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.comboBoxEdit1.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.DateEdit application_DateDateEdit;
        private DevExpress.XtraEditors.TextEdit application_ManTextEdit;
        private DevExpress.XtraEditors.CheckEdit isAgree_ManagerCheckEdit;
        private DevExpress.XtraEditors.CheckEdit isAgree_DirectorCheckEdit;
        private DevExpress.XtraEditors.CheckEdit isAgree_ApplicationManCheckEdit;
        private WorkTimeApplicationListForm workTimeApplicationListForm1;
        private DevExpress.XtraEditors.ComboBoxEdit comboBoxEdit1;
    }
}
