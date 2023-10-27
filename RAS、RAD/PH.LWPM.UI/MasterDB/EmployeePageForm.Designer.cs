namespace PH.LWPM.UI.MasterDB
{
    partial class EmployeePageForm
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
            this.pnlTop = new DevExpress.XtraEditors.PanelControl();
            this.cbChoiceType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.lblChoceType = new DevExpress.XtraEditors.LabelControl();
            this.tcEmployee = new DevExpress.XtraTab.XtraTabControl();
            this.tbJobTitle = new DevExpress.XtraTab.XtraTabPage();
            this.frmJobTitle = new PH.LWPM.UI.MasterDB.JobTitleListForm();
            this.xtraTabPage2 = new DevExpress.XtraTab.XtraTabPage();
            this.xtraTabPage3 = new DevExpress.XtraTab.XtraTabPage();
            this.frmRECRole = new PH.LWPM.UI.MasterDB.RECRoleListForm();
            this.xtraTabPage4 = new DevExpress.XtraTab.XtraTabPage();
            this.frmREC = new PH.LWPM.UI.MasterDB.BaseCodeListForm();
            this.xtraTabPage5 = new DevExpress.XtraTab.XtraTabPage();
            this.frmGrade = new PH.LWPM.UI.MasterDB.BaseCodeListForm();
            this.frmEmployeeCostListForm = new PH.LWPM.UI.MasterDB.EmployeeCostListForm();
            ((System.ComponentModel.ISupportInitialize)(this.pnlTop)).BeginInit();
            this.pnlTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoiceType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcEmployee)).BeginInit();
            this.tcEmployee.SuspendLayout();
            this.tbJobTitle.SuspendLayout();
            this.xtraTabPage2.SuspendLayout();
            this.xtraTabPage3.SuspendLayout();
            this.xtraTabPage4.SuspendLayout();
            this.xtraTabPage5.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlTop
            // 
            this.pnlTop.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlTop.Controls.Add(this.cbChoiceType);
            this.pnlTop.Controls.Add(this.lblChoceType);
            this.pnlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlTop.Location = new System.Drawing.Point(0, 0);
            this.pnlTop.Name = "pnlTop";
            this.pnlTop.Size = new System.Drawing.Size(1049, 46);
            this.PlatetoolTipController.SetSuperTip(this.pnlTop, null);
            this.pnlTop.TabIndex = 1;
            // 
            // cbChoiceType
            // 
            this.cbChoiceType.EditValue = "1. Job Group & Job Title For Employee";
            this.cbChoiceType.Location = new System.Drawing.Point(272, 13);
            this.cbChoiceType.Name = "cbChoiceType";
            this.cbChoiceType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbChoiceType.Properties.Items.AddRange(new object[] {
            "1. Job Group & Job Title For Employee",
            "2. Employee Accounting Cost",
            "3. REC\'s role & it\'s description",
            "4. REC conducted by who?",
            "5. Employee Grade"});
            this.cbChoiceType.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbChoiceType.Size = new System.Drawing.Size(303, 21);
            this.cbChoiceType.TabIndex = 9;
            this.cbChoiceType.SelectedIndexChanged += new System.EventHandler(this.cbChoiceType_SelectedIndexChanged);
            // 
            // lblChoceType
            // 
            this.lblChoceType.Location = new System.Drawing.Point(146, 16);
            this.lblChoceType.Name = "lblChoceType";
            this.lblChoceType.Size = new System.Drawing.Size(110, 14);
            this.lblChoceType.TabIndex = 8;
            this.lblChoceType.Text = "Please choose type:";
            // 
            // tcEmployee
            // 
            this.tcEmployee.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tcEmployee.Location = new System.Drawing.Point(0, 46);
            this.tcEmployee.Name = "tcEmployee";
            this.tcEmployee.SelectedTabPage = this.tbJobTitle;
            this.tcEmployee.ShowTabHeader = DevExpress.Utils.DefaultBoolean.True;
            this.tcEmployee.Size = new System.Drawing.Size(1049, 484);
            this.tcEmployee.TabIndex = 2;
            this.tcEmployee.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.tbJobTitle,
            this.xtraTabPage2,
            this.xtraTabPage3,
            this.xtraTabPage4,
            this.xtraTabPage5});
            // 
            // tbJobTitle
            // 
            this.tbJobTitle.Controls.Add(this.frmJobTitle);
            this.tbJobTitle.Name = "tbJobTitle";
            this.tbJobTitle.Size = new System.Drawing.Size(1040, 452);
            this.tbJobTitle.Text = "1. Title Type && Job Title For Employee";
            // 
            // frmJobTitle
            // 
            this.frmJobTitle.AllowAddRow = true;
            this.frmJobTitle.AlwaysShowDesignLayout = false;
            this.frmJobTitle.AutoOpenDetailForm = false;
            this.frmJobTitle.DataContext = null;
            this.frmJobTitle.DataSource = null;
            this.frmJobTitle.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmJobTitle.EditorTypeName = null;
            this.frmJobTitle.FileID = null;
            this.frmJobTitle.FirstForm = null;
            this.frmJobTitle.FormName = "JobTitleListForm";
            this.frmJobTitle.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmJobTitle.FormTitle = "PH.LWPM.UI.MasterDB.JobTitleListForm";
            this.frmJobTitle.IsCancelList = false;
            this.frmJobTitle.IsShowPivotTable = false;
            this.frmJobTitle.LayoutData = null;
            this.frmJobTitle.LayoutName = null;
            this.frmJobTitle.ListForm = null;
            this.frmJobTitle.Location = new System.Drawing.Point(0, 0);
            this.frmJobTitle.MenuID = ((long)(0));
            this.frmJobTitle.Name = "frmJobTitle";
            this.frmJobTitle.NeedCheckPermission = true;
            this.frmJobTitle.NextForm = null;
            this.frmJobTitle.ParentForm = null;
            this.frmJobTitle.PrevForm = null;
            this.frmJobTitle.RowChangeAutoSave = true;
            this.frmJobTitle.ShowMultiCheck = false;
            this.frmJobTitle.SideProgramID = null;
            this.frmJobTitle.Size = new System.Drawing.Size(1040, 452);
            this.PlatetoolTipController.SetSuperTip(this.frmJobTitle, null);
            this.frmJobTitle.TabControls = null;
            this.frmJobTitle.TabIndex = 0;
            this.frmJobTitle.TabPage = null;
            // 
            // xtraTabPage2
            // 
            this.xtraTabPage2.Controls.Add(this.frmEmployeeCostListForm);
            this.xtraTabPage2.Name = "xtraTabPage2";
            this.xtraTabPage2.Size = new System.Drawing.Size(1040, 452);
            this.xtraTabPage2.Text = "2. Employee Cost for Management Account";
            // 
            // xtraTabPage3
            // 
            this.xtraTabPage3.Controls.Add(this.frmRECRole);
            this.xtraTabPage3.Name = "xtraTabPage3";
            this.xtraTabPage3.Size = new System.Drawing.Size(1040, 452);
            this.xtraTabPage3.Text = "3. REC\'s role && it\'s description";
            // 
            // frmRECRole
            // 
            this.frmRECRole.AllowAddRow = true;
            this.frmRECRole.AlwaysShowDesignLayout = false;
            this.frmRECRole.AutoOpenDetailForm = false;
            this.frmRECRole.BaseCodeType = "cbbRecrole";
            this.frmRECRole.DataContext = null;
            this.frmRECRole.DataSource = null;
            this.frmRECRole.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmRECRole.EditorTypeName = null;
            this.frmRECRole.FileID = null;
            this.frmRECRole.FirstForm = null;
            this.frmRECRole.FormName = "RECRoleListForm";
            this.frmRECRole.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmRECRole.FormTitle = "PH.LWPM.UI.MasterDB.RECRoleListForm";
            this.frmRECRole.IsCancelList = false;
            this.frmRECRole.IsShowPivotTable = false;
            this.frmRECRole.LayoutData = null;
            this.frmRECRole.LayoutName = null;
            this.frmRECRole.ListForm = null;
            this.frmRECRole.Location = new System.Drawing.Point(0, 0);
            this.frmRECRole.MenuID = ((long)(0));
            this.frmRECRole.Name = "frmRECRole";
            this.frmRECRole.NeedCheckPermission = true;
            this.frmRECRole.NextForm = null;
            this.frmRECRole.ParentForm = null;
            this.frmRECRole.PrevForm = null;
            this.frmRECRole.ReportTitle = null;
            this.frmRECRole.RowChangeAutoSave = true;
            this.frmRECRole.ShowMultiCheck = false;
            this.frmRECRole.SideProgramID = null;
            this.frmRECRole.Size = new System.Drawing.Size(1040, 452);
            this.PlatetoolTipController.SetSuperTip(this.frmRECRole, null);
            this.frmRECRole.TabControls = null;
            this.frmRECRole.TabIndex = 0;
            this.frmRECRole.TabPage = null;
            // 
            // xtraTabPage4
            // 
            this.xtraTabPage4.Controls.Add(this.frmREC);
            this.xtraTabPage4.Name = "xtraTabPage4";
            this.xtraTabPage4.Size = new System.Drawing.Size(1040, 452);
            this.xtraTabPage4.Text = "4. REC conducted by who?";
            // 
            // frmREC
            // 
            this.frmREC.AllowAddRow = true;
            this.frmREC.AlwaysShowDesignLayout = false;
            this.frmREC.AutoOpenDetailForm = false;
            this.frmREC.BaseCodeType = "REC";
            this.frmREC.DataContext = null;
            this.frmREC.DataSource = null;
            this.frmREC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmREC.EditorTypeName = null;
            this.frmREC.FileID = null;
            this.frmREC.FirstForm = null;
            this.frmREC.FormName = "BaseCodeListForm";
            this.frmREC.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmREC.FormTitle = "PH.LWPM.UI.MasterDB.BaseCodeListForm";
            this.frmREC.IsCancelList = false;
            this.frmREC.IsShowPivotTable = false;
            this.frmREC.LayoutData = null;
            this.frmREC.LayoutName = null;
            this.frmREC.ListForm = null;
            this.frmREC.Location = new System.Drawing.Point(0, 0);
            this.frmREC.MenuID = ((long)(0));
            this.frmREC.Name = "frmREC";
            this.frmREC.NeedCheckPermission = true;
            this.frmREC.NextForm = null;
            this.frmREC.ParentForm = null;
            this.frmREC.PrevForm = null;
            this.frmREC.ReportTitle = "REC conducted by who?";
            this.frmREC.RowChangeAutoSave = true;
            this.frmREC.ShowMultiCheck = false;
            this.frmREC.SideProgramID = null;
            this.frmREC.Size = new System.Drawing.Size(1040, 452);
            this.PlatetoolTipController.SetSuperTip(this.frmREC, null);
            this.frmREC.TabControls = null;
            this.frmREC.TabIndex = 0;
            this.frmREC.TabPage = null;
            // 
            // xtraTabPage5
            // 
            this.xtraTabPage5.Controls.Add(this.frmGrade);
            this.xtraTabPage5.Name = "xtraTabPage5";
            this.xtraTabPage5.Size = new System.Drawing.Size(1040, 452);
            this.xtraTabPage5.Text = "5. Employee Grade";
            // 
            // frmGrade
            // 
            this.frmGrade.AllowAddRow = true;
            this.frmGrade.AlwaysShowDesignLayout = false;
            this.frmGrade.AutoOpenDetailForm = false;
            this.frmGrade.BaseCodeType = "Grade";
            this.frmGrade.DataContext = null;
            this.frmGrade.DataSource = null;
            this.frmGrade.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmGrade.EditorTypeName = null;
            this.frmGrade.FileID = null;
            this.frmGrade.FirstForm = null;
            this.frmGrade.FormName = "BaseCodeListForm";
            this.frmGrade.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmGrade.FormTitle = "PH.LWPM.UI.MasterDB.BaseCodeListForm";
            this.frmGrade.IsCancelList = false;
            this.frmGrade.IsShowPivotTable = false;
            this.frmGrade.LayoutData = null;
            this.frmGrade.LayoutName = null;
            this.frmGrade.ListForm = null;
            this.frmGrade.Location = new System.Drawing.Point(0, 0);
            this.frmGrade.MenuID = ((long)(0));
            this.frmGrade.Name = "frmGrade";
            this.frmGrade.NeedCheckPermission = true;
            this.frmGrade.NextForm = null;
            this.frmGrade.ParentForm = null;
            this.frmGrade.PrevForm = null;
            this.frmGrade.ReportTitle = "Employee Grade";
            this.frmGrade.RowChangeAutoSave = true;
            this.frmGrade.ShowMultiCheck = false;
            this.frmGrade.SideProgramID = null;
            this.frmGrade.Size = new System.Drawing.Size(1040, 452);
            this.PlatetoolTipController.SetSuperTip(this.frmGrade, null);
            this.frmGrade.TabControls = null;
            this.frmGrade.TabIndex = 0;
            this.frmGrade.TabPage = null;
            // 
            // frmEmployeeCostListForm
            // 
            this.frmEmployeeCostListForm.AllowAddRow = true;
            this.frmEmployeeCostListForm.AlwaysShowDesignLayout = false;
            this.frmEmployeeCostListForm.AutoOpenDetailForm = false;
            this.frmEmployeeCostListForm.BaseCodeType = "WFPart";
            this.frmEmployeeCostListForm.DataContext = null;
            this.frmEmployeeCostListForm.DataSource = null;
            this.frmEmployeeCostListForm.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmEmployeeCostListForm.EditorTypeName = null;
            this.frmEmployeeCostListForm.FileID = null;
            this.frmEmployeeCostListForm.FirstForm = null;
            this.frmEmployeeCostListForm.FormName = "EmployeeCostListForm";
            this.frmEmployeeCostListForm.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmEmployeeCostListForm.FormTitle = "PH.LWPM.UI.MasterDB.EmployeeCostListForm";
            this.frmEmployeeCostListForm.IsCancelList = false;
            this.frmEmployeeCostListForm.IsShowPivotTable = false;
            this.frmEmployeeCostListForm.LayoutData = null;
            this.frmEmployeeCostListForm.LayoutName = null;
            this.frmEmployeeCostListForm.ListForm = null;
            this.frmEmployeeCostListForm.Location = new System.Drawing.Point(0, 0);
            this.frmEmployeeCostListForm.MenuID = ((long)(0));
            this.frmEmployeeCostListForm.Name = "frmEmployeeCostListForm";
            this.frmEmployeeCostListForm.NeedCheckPermission = true;
            this.frmEmployeeCostListForm.NextForm = null;
            this.frmEmployeeCostListForm.ParentForm = null;
            this.frmEmployeeCostListForm.PrevForm = null;
            this.frmEmployeeCostListForm.ReportTitle = null;
            this.frmEmployeeCostListForm.RowChangeAutoSave = true;
            this.frmEmployeeCostListForm.ShowMultiCheck = false;
            this.frmEmployeeCostListForm.SideProgramID = null;
            this.frmEmployeeCostListForm.Size = new System.Drawing.Size(1040, 452);
            this.PlatetoolTipController.SetSuperTip(this.frmEmployeeCostListForm, null);
            this.frmEmployeeCostListForm.TabControls = null;
            this.frmEmployeeCostListForm.TabIndex = 0;
            this.frmEmployeeCostListForm.TabPage = null;
            // 
            // EmployeePageForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tcEmployee);
            this.Controls.Add(this.pnlTop);
            this.Name = "EmployeePageForm";
            this.Size = new System.Drawing.Size(1049, 530);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.pnlTop)).EndInit();
            this.pnlTop.ResumeLayout(false);
            this.pnlTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoiceType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcEmployee)).EndInit();
            this.tcEmployee.ResumeLayout(false);
            this.tbJobTitle.ResumeLayout(false);
            this.xtraTabPage2.ResumeLayout(false);
            this.xtraTabPage3.ResumeLayout(false);
            this.xtraTabPage4.ResumeLayout(false);
            this.xtraTabPage5.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pnlTop;
        private DevExpress.XtraTab.XtraTabControl tcEmployee;
        private DevExpress.XtraTab.XtraTabPage tbJobTitle;
        private JobTitleListForm frmJobTitle;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage2;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage3;
        private RECRoleListForm frmRECRole;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage4;
        private BaseCodeListForm frmREC;
        private DevExpress.XtraTab.XtraTabPage xtraTabPage5;
        private BaseCodeListForm frmGrade;
        private DevExpress.XtraEditors.LabelControl lblChoceType;
        private DevExpress.XtraEditors.ComboBoxEdit cbChoiceType;
        private EmployeeCostListForm frmEmployeeCostListForm;

    }
}
