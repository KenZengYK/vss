namespace PH.BasicInfo.UI.MasterDB
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
            this.colNotifyType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colToUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCcUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colBccUser = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1505, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colNotifyType,
            this.colToUser,
            this.colCcUser,
            this.colBccUser});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.EmailNotify);
            // 
            // colNotifyType
            // 
            this.colNotifyType.Caption = "Notify Type";
            this.colNotifyType.FieldName = "NotifyType";
            this.colNotifyType.Name = "colNotifyType";
            this.colNotifyType.OptionsColumn.AllowEdit = false;
            this.colNotifyType.Visible = true;
            this.colNotifyType.VisibleIndex = 0;
            this.colNotifyType.Width = 124;
            // 
            // colToUser
            // 
            this.colToUser.Caption = "Notify Users (To)";
            this.colToUser.FieldName = "ToUser";
            this.colToUser.Name = "colToUser";
            this.colToUser.OptionsColumn.AllowEdit = false;
            this.colToUser.Visible = true;
            this.colToUser.VisibleIndex = 1;
            this.colToUser.Width = 272;
            // 
            // colCcUser
            // 
            this.colCcUser.Caption = "Notify Users (Cc)";
            this.colCcUser.FieldName = "CcUser";
            this.colCcUser.Name = "colCcUser";
            this.colCcUser.OptionsColumn.AllowEdit = false;
            this.colCcUser.Visible = true;
            this.colCcUser.VisibleIndex = 2;
            this.colCcUser.Width = 538;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colBccUser
            // 
            this.colBccUser.Caption = "Notify Users (Bcc)";
            this.colBccUser.FieldName = "BccUser";
            this.colBccUser.Name = "colBccUser";
            this.colBccUser.Visible = true;
            this.colBccUser.VisibleIndex = 3;
            this.colBccUser.Width = 367;
            // 
            // EmailNotifyListForm
            // 
            this.AllowAddRow = false;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "EmailNotifyListForm";
            this.Size = new System.Drawing.Size(1505, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colNotifyType;
        private DevExpress.XtraGrid.Columns.GridColumn colToUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCcUser;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colBccUser;
    }
}
