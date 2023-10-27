namespace PH.LWPM.UI.MasterDB
{
    partial class DepartmentPageForm
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
            this.tcDepartment = new DevExpress.XtraTab.XtraTabControl();
            this.tbDepartmentalList = new DevExpress.XtraTab.XtraTabPage();
            this.frmDepartmental = new PH.LWPM.UI.MasterDB.DepartmentalListForm();
            this.tbDepartment = new DevExpress.XtraTab.XtraTabPage();
            this.frmDepartment = new PH.LWPM.UI.MasterDB.DepartmentListForm();
            this.tbSection = new DevExpress.XtraTab.XtraTabPage();
            this.frmSection = new PH.LWPM.UI.MasterDB.BaseCodeListForm();
            this.tbTeam = new DevExpress.XtraTab.XtraTabPage();
            this.frmTeam = new PH.LWPM.UI.MasterDB.BaseCodeListForm();
            this.tbMMDivision = new DevExpress.XtraTab.XtraTabPage();
            this.frmDivision = new PH.LWPM.UI.MasterDB.BaseCodeListForm();
            this.tbDepartmentalLocPoint = new DevExpress.XtraTab.XtraTabPage();
            this.frmcbbDeptLocation = new PH.LWPM.UI.MasterDB.BaseCodeListForm();
            ((System.ComponentModel.ISupportInitialize)(this.pnlTop)).BeginInit();
            this.pnlTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoiceType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcDepartment)).BeginInit();
            this.tcDepartment.SuspendLayout();
            this.tbDepartmentalList.SuspendLayout();
            this.tbDepartment.SuspendLayout();
            this.tbSection.SuspendLayout();
            this.tbTeam.SuspendLayout();
            this.tbMMDivision.SuspendLayout();
            this.tbDepartmentalLocPoint.SuspendLayout();
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
            this.pnlTop.Size = new System.Drawing.Size(1287, 46);
            this.PlatetoolTipController.SetSuperTip(this.pnlTop, null);
            this.pnlTop.TabIndex = 2;
            // 
            // cbChoiceType
            // 
            this.cbChoiceType.EditValue = "1. Departmental List";
            this.cbChoiceType.Location = new System.Drawing.Point(272, 13);
            this.cbChoiceType.Name = "cbChoiceType";
            this.cbChoiceType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbChoiceType.Properties.Items.AddRange(new object[] {
            "1. Departmental List",
            "2. Department",
            "3. Section",
            "4. Team",
            "5. MM Division",
            "6. Departmental Loc. Point"});
            this.cbChoiceType.Properties.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbChoiceType.Size = new System.Drawing.Size(303, 21);
            this.cbChoiceType.TabIndex = 9;
            this.cbChoiceType.SelectedIndexChanged += new System.EventHandler(this.cbChoiceType_SelectedIndexChanged);
            // 
            // lblChoceType
            // 
            this.lblChoceType.Location = new System.Drawing.Point(153, 16);
            this.lblChoceType.Name = "lblChoceType";
            this.lblChoceType.Size = new System.Drawing.Size(110, 14);
            this.lblChoceType.TabIndex = 8;
            this.lblChoceType.Text = "Please choose type:";
            // 
            // tcDepartment
            // 
            this.tcDepartment.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tcDepartment.Location = new System.Drawing.Point(0, 46);
            this.tcDepartment.Name = "tcDepartment";
            this.tcDepartment.SelectedTabPage = this.tbDepartmentalList;
            this.tcDepartment.Size = new System.Drawing.Size(1287, 586);
            this.tcDepartment.TabIndex = 3;
            this.tcDepartment.TabPages.AddRange(new DevExpress.XtraTab.XtraTabPage[] {
            this.tbDepartmentalList,
            this.tbDepartment,
            this.tbSection,
            this.tbTeam,
            this.tbMMDivision,
            this.tbDepartmentalLocPoint});
            this.tcDepartment.Text = "xtraTabControl1";
            // 
            // tbDepartmentalList
            // 
            this.tbDepartmentalList.Controls.Add(this.frmDepartmental);
            this.tbDepartmentalList.Name = "tbDepartmentalList";
            this.tbDepartmentalList.Size = new System.Drawing.Size(1278, 554);
            this.tbDepartmentalList.Text = "1. Departmental List";
            // 
            // frmDepartmental
            // 
            this.frmDepartmental.AllowAddRow = true;
            this.frmDepartmental.AutoOpenDetailForm = false;
            this.frmDepartmental.DataContext = null;
            this.frmDepartmental.DataSource = null;
            this.frmDepartmental.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmDepartmental.EditorTypeName = null;
            this.frmDepartmental.FileID = null;
            this.frmDepartmental.FirstForm = null;
            this.frmDepartmental.FormName = "DepartmentalListForm";
            this.frmDepartmental.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmDepartmental.FormTitle = "PH.LWPM.UI.MasterDB.DepartmentalListForm";
            this.frmDepartmental.IsCancelList = false;
            this.frmDepartmental.IsShowPivotTable = false;
            this.frmDepartmental.LayoutData = null;
            this.frmDepartmental.LayoutName = null;
            this.frmDepartmental.ListForm = null;
            this.frmDepartmental.Location = new System.Drawing.Point(0, 0);
            this.frmDepartmental.MenuID = ((long)(0));
            this.frmDepartmental.Name = "frmDepartmental";
            this.frmDepartmental.NeedCheckPermission = true;
            this.frmDepartmental.NextForm = null;
            this.frmDepartmental.ParentForm = null;
            this.frmDepartmental.PrevForm = null;
            this.frmDepartmental.RowChangeAutoSave = true;
            this.frmDepartmental.ShowMultiCheck = false;
            this.frmDepartmental.SideProgramID = null;
            this.frmDepartmental.Size = new System.Drawing.Size(1278, 554);
            this.PlatetoolTipController.SetSuperTip(this.frmDepartmental, null);
            this.frmDepartmental.TabControls = null;
            this.frmDepartmental.TabIndex = 0;
            this.frmDepartmental.TabPage = null;
            // 
            // tbDepartment
            // 
            this.tbDepartment.Controls.Add(this.frmDepartment);
            this.tbDepartment.Name = "tbDepartment";
            this.tbDepartment.Size = new System.Drawing.Size(1278, 554);
            this.tbDepartment.Text = "2. Department";
            // 
            // frmDepartment
            // 
            this.frmDepartment.AllowAddRow = true;
            this.frmDepartment.AutoOpenDetailForm = false;
            this.frmDepartment.BaseCodeType = "DPTUS";
            this.frmDepartment.DataContext = null;
            this.frmDepartment.DataSource = null;
            this.frmDepartment.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmDepartment.EditorTypeName = null;
            this.frmDepartment.FileID = null;
            this.frmDepartment.FirstForm = null;
            this.frmDepartment.FormName = "DepartmentListForm";
            this.frmDepartment.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmDepartment.FormTitle = "PH.LWPM.UI.MasterDB.DepartmentListForm";
            this.frmDepartment.IsCancelList = false;
            this.frmDepartment.IsShowPivotTable = false;
            this.frmDepartment.LayoutData = null;
            this.frmDepartment.LayoutName = null;
            this.frmDepartment.ListForm = null;
            this.frmDepartment.Location = new System.Drawing.Point(0, 0);
            this.frmDepartment.MenuID = ((long)(0));
            this.frmDepartment.Name = "frmDepartment";
            this.frmDepartment.NeedCheckPermission = true;
            this.frmDepartment.NextForm = null;
            this.frmDepartment.ParentForm = null;
            this.frmDepartment.PrevForm = null;
            this.frmDepartment.ReportTitle = "Department";
            this.frmDepartment.RowChangeAutoSave = true;
            this.frmDepartment.ShowMultiCheck = false;
            this.frmDepartment.SideProgramID = null;
            this.frmDepartment.Size = new System.Drawing.Size(1278, 554);
            this.PlatetoolTipController.SetSuperTip(this.frmDepartment, null);
            this.frmDepartment.TabControls = null;
            this.frmDepartment.TabIndex = 0;
            this.frmDepartment.TabPage = null;
            // 
            // tbSection
            // 
            this.tbSection.Controls.Add(this.frmSection);
            this.tbSection.Name = "tbSection";
            this.tbSection.Size = new System.Drawing.Size(1278, 554);
            this.tbSection.Text = "3. Section";
            // 
            // frmSection
            // 
            this.frmSection.AllowAddRow = true;
            this.frmSection.AutoOpenDetailForm = false;
            this.frmSection.BaseCodeType = "WorkShopNew";
            this.frmSection.DataContext = null;
            this.frmSection.DataSource = null;
            this.frmSection.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmSection.EditorTypeName = null;
            this.frmSection.FileID = null;
            this.frmSection.FirstForm = null;
            this.frmSection.FormName = "BaseCodeListForm";
            this.frmSection.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmSection.FormTitle = "PH.LWPM.UI.MasterDB.BaseCodeListForm";
            this.frmSection.IsCancelList = false;
            this.frmSection.IsShowPivotTable = false;
            this.frmSection.LayoutData = null;
            this.frmSection.LayoutName = null;
            this.frmSection.ListForm = null;
            this.frmSection.Location = new System.Drawing.Point(0, 0);
            this.frmSection.MenuID = ((long)(0));
            this.frmSection.Name = "frmSection";
            this.frmSection.NeedCheckPermission = true;
            this.frmSection.NextForm = null;
            this.frmSection.ParentForm = null;
            this.frmSection.PrevForm = null;
            this.frmSection.ReportTitle = "Section";
            this.frmSection.RowChangeAutoSave = true;
            this.frmSection.ShowMultiCheck = false;
            this.frmSection.SideProgramID = null;
            this.frmSection.Size = new System.Drawing.Size(1278, 554);
            this.PlatetoolTipController.SetSuperTip(this.frmSection, null);
            this.frmSection.TabControls = null;
            this.frmSection.TabIndex = 0;
            this.frmSection.TabPage = null;
            // 
            // tbTeam
            // 
            this.tbTeam.Controls.Add(this.frmTeam);
            this.tbTeam.Name = "tbTeam";
            this.tbTeam.Size = new System.Drawing.Size(1278, 554);
            this.tbTeam.Text = "4. Team";
            // 
            // frmTeam
            // 
            this.frmTeam.AllowAddRow = true;
            this.frmTeam.AutoOpenDetailForm = false;
            this.frmTeam.BaseCodeType = "WFWhere_1_Team";
            this.frmTeam.DataContext = null;
            this.frmTeam.DataSource = null;
            this.frmTeam.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmTeam.EditorTypeName = null;
            this.frmTeam.FileID = null;
            this.frmTeam.FirstForm = null;
            this.frmTeam.FormName = "BaseCodeListForm";
            this.frmTeam.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmTeam.FormTitle = "PH.LWPM.UI.MasterDB.BaseCodeListForm";
            this.frmTeam.IsCancelList = false;
            this.frmTeam.IsShowPivotTable = false;
            this.frmTeam.LayoutData = null;
            this.frmTeam.LayoutName = null;
            this.frmTeam.ListForm = null;
            this.frmTeam.Location = new System.Drawing.Point(0, 0);
            this.frmTeam.MenuID = ((long)(0));
            this.frmTeam.Name = "frmTeam";
            this.frmTeam.NeedCheckPermission = true;
            this.frmTeam.NextForm = null;
            this.frmTeam.ParentForm = null;
            this.frmTeam.PrevForm = null;
            this.frmTeam.ReportTitle = "Team";
            this.frmTeam.RowChangeAutoSave = true;
            this.frmTeam.ShowMultiCheck = false;
            this.frmTeam.SideProgramID = null;
            this.frmTeam.Size = new System.Drawing.Size(1278, 554);
            this.PlatetoolTipController.SetSuperTip(this.frmTeam, null);
            this.frmTeam.TabControls = null;
            this.frmTeam.TabIndex = 0;
            this.frmTeam.TabPage = null;
            // 
            // tbMMDivision
            // 
            this.tbMMDivision.Controls.Add(this.frmDivision);
            this.tbMMDivision.Name = "tbMMDivision";
            this.tbMMDivision.Size = new System.Drawing.Size(1278, 554);
            this.tbMMDivision.Text = "5. MM Division";
            // 
            // frmDivision
            // 
            this.frmDivision.AllowAddRow = true;
            this.frmDivision.AutoOpenDetailForm = false;
            this.frmDivision.BaseCodeType = "Division";
            this.frmDivision.DataContext = null;
            this.frmDivision.DataSource = null;
            this.frmDivision.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmDivision.EditorTypeName = null;
            this.frmDivision.FileID = null;
            this.frmDivision.FirstForm = null;
            this.frmDivision.FormName = "BaseCodeListForm";
            this.frmDivision.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmDivision.FormTitle = "PH.LWPM.UI.MasterDB.BaseCodeListForm";
            this.frmDivision.IsCancelList = false;
            this.frmDivision.IsShowPivotTable = false;
            this.frmDivision.LayoutData = null;
            this.frmDivision.LayoutName = null;
            this.frmDivision.ListForm = null;
            this.frmDivision.Location = new System.Drawing.Point(0, 0);
            this.frmDivision.MenuID = ((long)(0));
            this.frmDivision.Name = "frmDivision";
            this.frmDivision.NeedCheckPermission = true;
            this.frmDivision.NextForm = null;
            this.frmDivision.ParentForm = null;
            this.frmDivision.PrevForm = null;
            this.frmDivision.ReportTitle = "MM Division";
            this.frmDivision.RowChangeAutoSave = true;
            this.frmDivision.ShowMultiCheck = false;
            this.frmDivision.SideProgramID = null;
            this.frmDivision.Size = new System.Drawing.Size(1278, 554);
            this.PlatetoolTipController.SetSuperTip(this.frmDivision, null);
            this.frmDivision.TabControls = null;
            this.frmDivision.TabIndex = 0;
            this.frmDivision.TabPage = null;
            // 
            // tbDepartmentalLocPoint
            // 
            this.tbDepartmentalLocPoint.Controls.Add(this.frmcbbDeptLocation);
            this.tbDepartmentalLocPoint.Name = "tbDepartmentalLocPoint";
            this.tbDepartmentalLocPoint.Size = new System.Drawing.Size(1278, 554);
            this.tbDepartmentalLocPoint.Text = "6. Departmental Loc. Point";
            // 
            // frmcbbDeptLocation
            // 
            this.frmcbbDeptLocation.AllowAddRow = true;
            this.frmcbbDeptLocation.AutoOpenDetailForm = false;
            this.frmcbbDeptLocation.BaseCodeType = "cbbDeptLocation";
            this.frmcbbDeptLocation.DataContext = null;
            this.frmcbbDeptLocation.DataSource = null;
            this.frmcbbDeptLocation.Dock = System.Windows.Forms.DockStyle.Fill;
            this.frmcbbDeptLocation.EditorTypeName = null;
            this.frmcbbDeptLocation.FileID = null;
            this.frmcbbDeptLocation.FirstForm = null;
            this.frmcbbDeptLocation.FormName = "BaseCodeListForm";
            this.frmcbbDeptLocation.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.frmcbbDeptLocation.FormTitle = "PH.LWPM.UI.MasterDB.BaseCodeListForm";
            this.frmcbbDeptLocation.IsCancelList = false;
            this.frmcbbDeptLocation.IsShowPivotTable = false;
            this.frmcbbDeptLocation.LayoutData = null;
            this.frmcbbDeptLocation.LayoutName = null;
            this.frmcbbDeptLocation.ListForm = null;
            this.frmcbbDeptLocation.Location = new System.Drawing.Point(0, 0);
            this.frmcbbDeptLocation.MenuID = ((long)(0));
            this.frmcbbDeptLocation.Name = "frmcbbDeptLocation";
            this.frmcbbDeptLocation.NeedCheckPermission = true;
            this.frmcbbDeptLocation.NextForm = null;
            this.frmcbbDeptLocation.ParentForm = null;
            this.frmcbbDeptLocation.PrevForm = null;
            this.frmcbbDeptLocation.ReportTitle = "Departmental Loc. Point";
            this.frmcbbDeptLocation.RowChangeAutoSave = true;
            this.frmcbbDeptLocation.ShowMultiCheck = false;
            this.frmcbbDeptLocation.SideProgramID = null;
            this.frmcbbDeptLocation.Size = new System.Drawing.Size(1278, 554);
            this.PlatetoolTipController.SetSuperTip(this.frmcbbDeptLocation, null);
            this.frmcbbDeptLocation.TabControls = null;
            this.frmcbbDeptLocation.TabIndex = 0;
            this.frmcbbDeptLocation.TabPage = null;
            // 
            // DepartmentPageForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tcDepartment);
            this.Controls.Add(this.pnlTop);
            this.Name = "DepartmentPageForm";
            this.Size = new System.Drawing.Size(1287, 632);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.pnlTop)).EndInit();
            this.pnlTop.ResumeLayout(false);
            this.pnlTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.cbChoiceType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tcDepartment)).EndInit();
            this.tcDepartment.ResumeLayout(false);
            this.tbDepartmentalList.ResumeLayout(false);
            this.tbDepartment.ResumeLayout(false);
            this.tbSection.ResumeLayout(false);
            this.tbTeam.ResumeLayout(false);
            this.tbMMDivision.ResumeLayout(false);
            this.tbDepartmentalLocPoint.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.PanelControl pnlTop;
        private DevExpress.XtraEditors.ComboBoxEdit cbChoiceType;
        private DevExpress.XtraEditors.LabelControl lblChoceType;
        private DevExpress.XtraTab.XtraTabControl tcDepartment;
        private DevExpress.XtraTab.XtraTabPage tbDepartmentalList;
        private DepartmentalListForm frmDepartmental;
        private DevExpress.XtraTab.XtraTabPage tbDepartment;
        private DepartmentListForm frmDepartment;
        private DevExpress.XtraTab.XtraTabPage tbSection;
        private BaseCodeListForm frmSection;
        private DevExpress.XtraTab.XtraTabPage tbTeam;
        private BaseCodeListForm frmTeam;
        private DevExpress.XtraTab.XtraTabPage tbMMDivision;
        private BaseCodeListForm frmDivision;
        private DevExpress.XtraTab.XtraTabPage tbDepartmentalLocPoint;
        private BaseCodeListForm frmcbbDeptLocation;

    }
}
