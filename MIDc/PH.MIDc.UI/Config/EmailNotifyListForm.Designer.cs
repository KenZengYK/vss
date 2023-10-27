namespace PH.MIDc.UI
{
    partial class EmailNotifyListForm
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
            this.colCurrt = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colActionUsers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNotifyUsers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAvailable = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.MIDcEmailNotify);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(803, 273);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCurrt,
            this.colDesc,
            this.colActionUsers,
            this.colNotifyUsers,
            this.colAvailable});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colCurrt
            // 
            this.colCurrt.Caption = "Currt FunId";
            this.colCurrt.FieldName = "Currt";
            this.colCurrt.Name = "colCurrt";
            this.colCurrt.OptionsColumn.AllowEdit = false;
            this.colCurrt.Visible = true;
            this.colCurrt.VisibleIndex = 0;
            this.colCurrt.Width = 82;
            // 
            // colDesc
            // 
            this.colDesc.Caption = "Fun Name";
            this.colDesc.FieldName = "Desc";
            this.colDesc.Name = "colDesc";
            this.colDesc.OptionsColumn.AllowEdit = false;
            this.colDesc.Visible = true;
            this.colDesc.VisibleIndex = 1;
            this.colDesc.Width = 184;
            // 
            // colActionUsers
            // 
            this.colActionUsers.Caption = "Notify Users (cc)";
            this.colActionUsers.FieldName = "ActionUsers";
            this.colActionUsers.Name = "colActionUsers";
            this.colActionUsers.OptionsColumn.AllowEdit = false;
            this.colActionUsers.Visible = true;
            this.colActionUsers.VisibleIndex = 3;
            this.colActionUsers.Width = 200;
            // 
            // colNotifyUsers
            // 
            this.colNotifyUsers.Caption = "Notify Users (To)";
            this.colNotifyUsers.FieldName = "NotifyUsers";
            this.colNotifyUsers.Name = "colNotifyUsers";
            this.colNotifyUsers.OptionsColumn.AllowEdit = false;
            this.colNotifyUsers.Visible = true;
            this.colNotifyUsers.VisibleIndex = 2;
            this.colNotifyUsers.Width = 189;
            // 
            // colAvailable
            // 
            this.colAvailable.Caption = "Available";
            this.colAvailable.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colAvailable.FieldName = "Available";
            this.colAvailable.Name = "colAvailable";
            this.colAvailable.OptionsColumn.AllowEdit = false;
            this.colAvailable.Visible = true;
            this.colAvailable.VisibleIndex = 4;
            this.colAvailable.Width = 68;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // EmailNotifyListForm
            // 
            this.AllowAddRow = false;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "EmailNotifyListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCurrt;
        private DevExpress.XtraGrid.Columns.GridColumn colDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colActionUsers;
        private DevExpress.XtraGrid.Columns.GridColumn colNotifyUsers;
        private DevExpress.XtraGrid.Columns.GridColumn colAvailable;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
    }
}
