namespace PH.MobileQC.UI.AppAudit
{
    partial class QCUserListForm
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
            this.colUserCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsDisable = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsShowFunctionList = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsFactoryManager = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsDepartmentManager = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkLine = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_QCUser);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colUserCode,
            this.colFactory,
            this.colWorkShop,
            this.colWorkLine,
            this.colIsDisable,
            this.colIsShowFunctionList,
            this.colIsFactoryManager,
            this.colIsDepartmentManager,
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
            // colUserCode
            // 
            this.colUserCode.Caption = "UserCode";
            this.colUserCode.FieldName = "UserCode";
            this.colUserCode.Name = "colUserCode";
            this.colUserCode.Visible = true;
            this.colUserCode.VisibleIndex = 0;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 1;
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 8;
            this.colCreateUser.Width = 104;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 9;
            this.colCreateDate.Width = 103;
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
            // colIsDisable
            // 
            this.colIsDisable.Caption = "IsDisable";
            this.colIsDisable.FieldName = "IsDisable";
            this.colIsDisable.Name = "colIsDisable";
            this.colIsDisable.Visible = true;
            this.colIsDisable.VisibleIndex = 4;
            // 
            // colIsShowFunctionList
            // 
            this.colIsShowFunctionList.Caption = "IsShowFunctionList";
            this.colIsShowFunctionList.FieldName = "IsShowFunctionList";
            this.colIsShowFunctionList.Name = "colIsShowFunctionList";
            this.colIsShowFunctionList.Visible = true;
            this.colIsShowFunctionList.VisibleIndex = 5;
            this.colIsShowFunctionList.Width = 135;
            // 
            // colIsFactoryManager
            // 
            this.colIsFactoryManager.Caption = "IsFactoryManager";
            this.colIsFactoryManager.FieldName = "IsFactoryManager";
            this.colIsFactoryManager.Name = "colIsFactoryManager";
            this.colIsFactoryManager.Visible = true;
            this.colIsFactoryManager.VisibleIndex = 6;
            this.colIsFactoryManager.Width = 117;
            // 
            // colIsDepartmentManager
            // 
            this.colIsDepartmentManager.Caption = "IsDepartmentManager";
            this.colIsDepartmentManager.FieldName = "IsDepartmentManager";
            this.colIsDepartmentManager.Name = "colIsDepartmentManager";
            this.colIsDepartmentManager.Visible = true;
            this.colIsDepartmentManager.VisibleIndex = 7;
            this.colIsDepartmentManager.Width = 150;
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "WorkShop";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 2;
            this.colWorkShop.Width = 107;
            // 
            // colWorkLine
            // 
            this.colWorkLine.Caption = "WorkLine";
            this.colWorkLine.FieldName = "WorkLine";
            this.colWorkLine.Name = "colWorkLine";
            this.colWorkLine.Visible = true;
            this.colWorkLine.VisibleIndex = 3;
            this.colWorkLine.Width = 93;
            // 
            // QCUserListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QCUserListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colUserCode;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colIsDisable;
        private DevExpress.XtraGrid.Columns.GridColumn colIsShowFunctionList;
        private DevExpress.XtraGrid.Columns.GridColumn colIsFactoryManager;
        private DevExpress.XtraGrid.Columns.GridColumn colIsDepartmentManager;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkLine;
    }
}
