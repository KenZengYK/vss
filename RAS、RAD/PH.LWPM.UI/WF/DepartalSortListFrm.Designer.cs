namespace PH.LWPM.UI.WF
{
    partial class DepartalSortListFrm
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
            this.gcDepartmental = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbDepart = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcSection = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbSection = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbTeam = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbClass = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcSortNo = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.DepartalSort);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rcbDepart,
            this.rcbSection,
            this.rcbTeam,
            this.rcbClass});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcDepartmental,
            this.gcSection,
            this.gcTeam,
            this.gcClass,
            this.gcSortNo});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcDepartmental
            // 
            this.gcDepartmental.Caption = "Departmental";
            this.gcDepartmental.ColumnEdit = this.rcbDepart;
            this.gcDepartmental.FieldName = "Deptmental_EN";
            this.gcDepartmental.Name = "gcDepartmental";
            this.gcDepartmental.Visible = true;
            this.gcDepartmental.VisibleIndex = 1;
            this.gcDepartmental.Width = 129;
            // 
            // rcbDepart
            // 
            this.rcbDepart.AutoHeight = false;
            this.rcbDepart.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDepart.Name = "rcbDepart";
            // 
            // gcSection
            // 
            this.gcSection.Caption = "Section";
            this.gcSection.ColumnEdit = this.rcbSection;
            this.gcSection.FieldName = "Section_EN";
            this.gcSection.Name = "gcSection";
            this.gcSection.Visible = true;
            this.gcSection.VisibleIndex = 2;
            this.gcSection.Width = 151;
            // 
            // rcbSection
            // 
            this.rcbSection.AutoHeight = false;
            this.rcbSection.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbSection.Name = "rcbSection";
            // 
            // gcTeam
            // 
            this.gcTeam.Caption = "Team";
            this.gcTeam.ColumnEdit = this.rcbTeam;
            this.gcTeam.FieldName = "Team_EN";
            this.gcTeam.Name = "gcTeam";
            this.gcTeam.Visible = true;
            this.gcTeam.VisibleIndex = 3;
            this.gcTeam.Width = 169;
            // 
            // rcbTeam
            // 
            this.rcbTeam.AutoHeight = false;
            this.rcbTeam.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbTeam.Name = "rcbTeam";
            // 
            // gcClass
            // 
            this.gcClass.Caption = "Class";
            this.gcClass.ColumnEdit = this.rcbClass;
            this.gcClass.FieldName = "Class_EN";
            this.gcClass.Name = "gcClass";
            this.gcClass.Visible = true;
            this.gcClass.VisibleIndex = 4;
            this.gcClass.Width = 171;
            // 
            // rcbClass
            // 
            this.rcbClass.AutoHeight = false;
            this.rcbClass.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbClass.Name = "rcbClass";
            // 
            // gcSortNo
            // 
            this.gcSortNo.Caption = "Seq No";
            this.gcSortNo.FieldName = "SeqNo";
            this.gcSortNo.Name = "gcSortNo";
            this.gcSortNo.Visible = true;
            this.gcSortNo.VisibleIndex = 0;
            // 
            // DepartalSortListFrm
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DepartalSortListFrm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcDepartmental;
        private DevExpress.XtraGrid.Columns.GridColumn gcSection;
        private DevExpress.XtraGrid.Columns.GridColumn gcTeam;
        private DevExpress.XtraGrid.Columns.GridColumn gcClass;
        private DevExpress.XtraGrid.Columns.GridColumn gcSortNo;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDepart;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbSection;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbTeam;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbClass;
    }
}
