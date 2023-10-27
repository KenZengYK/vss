namespace PH.MobileQC.UI.AppAudit
{
    partial class AppRightInfoListForm
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
            this.colAPPName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRoleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUserCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colActivityName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsAdd = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsDelete = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsEdit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsAssign = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_AppRightInfo);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colAPPName,
            this.colRoleCode,
            this.colUserCode,
            this.colActivityName,
            this.colIsAdd,
            this.colIsDelete,
            this.colIsEdit,
            this.colIsAssign,
            this.colCreateUser,
            this.colCreateDate,
            this.colAlterUser,
            this.colAlterDate,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colAPPName
            // 
            this.colAPPName.Caption = "APPName";
            this.colAPPName.FieldName = "APPName";
            this.colAPPName.Name = "colAPPName";
            this.colAPPName.Visible = true;
            this.colAPPName.VisibleIndex = 0;
            // 
            // colRoleCode
            // 
            this.colRoleCode.Caption = "RoleCode";
            this.colRoleCode.FieldName = "RoleCode";
            this.colRoleCode.Name = "colRoleCode";
            this.colRoleCode.Visible = true;
            this.colRoleCode.VisibleIndex = 1;
            // 
            // colUserCode
            // 
            this.colUserCode.Caption = "UserCode";
            this.colUserCode.FieldName = "UserCode";
            this.colUserCode.Name = "colUserCode";
            this.colUserCode.Visible = true;
            this.colUserCode.VisibleIndex = 2;
            // 
            // colActivityName
            // 
            this.colActivityName.Caption = "ActivityName";
            this.colActivityName.FieldName = "ActivityName";
            this.colActivityName.Name = "colActivityName";
            this.colActivityName.Visible = true;
            this.colActivityName.VisibleIndex = 3;
            // 
            // colIsAdd
            // 
            this.colIsAdd.Caption = "IsAdd";
            this.colIsAdd.FieldName = "IsAdd";
            this.colIsAdd.Name = "colIsAdd";
            this.colIsAdd.Visible = true;
            this.colIsAdd.VisibleIndex = 4;
            // 
            // colIsDelete
            // 
            this.colIsDelete.Caption = "IsDelete";
            this.colIsDelete.FieldName = "IsDelete";
            this.colIsDelete.Name = "colIsDelete";
            this.colIsDelete.Visible = true;
            this.colIsDelete.VisibleIndex = 5;
            // 
            // colIsEdit
            // 
            this.colIsEdit.Caption = "IsEdit";
            this.colIsEdit.FieldName = "IsEdit";
            this.colIsEdit.Name = "colIsEdit";
            this.colIsEdit.Visible = true;
            this.colIsEdit.VisibleIndex = 6;
            // 
            // colIsAssign
            // 
            this.colIsAssign.Caption = "IsAssign";
            this.colIsAssign.FieldName = "IsAssign";
            this.colIsAssign.Name = "colIsAssign";
            this.colIsAssign.Visible = true;
            this.colIsAssign.VisibleIndex = 7;
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 8;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 9;
            // 
            // colAlterUser
            // 
            this.colAlterUser.Caption = "AlterUser";
            this.colAlterUser.FieldName = "AlterUser";
            this.colAlterUser.Name = "colAlterUser";
            this.colAlterUser.Visible = true;
            this.colAlterUser.VisibleIndex = 10;
            // 
            // colAlterDate
            // 
            this.colAlterDate.Caption = "AlterDate";
            this.colAlterDate.FieldName = "AlterDate";
            this.colAlterDate.Name = "colAlterDate";
            this.colAlterDate.Visible = true;
            this.colAlterDate.VisibleIndex = 11;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 12;
            // 
            // AppRightInfoListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "AppRightInfoListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colAPPName;
        private DevExpress.XtraGrid.Columns.GridColumn colRoleCode;
        private DevExpress.XtraGrid.Columns.GridColumn colUserCode;
        private DevExpress.XtraGrid.Columns.GridColumn colActivityName;
        private DevExpress.XtraGrid.Columns.GridColumn colIsAdd;
        private DevExpress.XtraGrid.Columns.GridColumn colIsDelete;
        private DevExpress.XtraGrid.Columns.GridColumn colIsEdit;
        private DevExpress.XtraGrid.Columns.GridColumn colIsAssign;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
    }
}
