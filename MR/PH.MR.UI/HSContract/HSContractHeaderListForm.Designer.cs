namespace PH.MR.UI.HSContract
{
    partial class HSContractHeaderListForm
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
            this.colHSContractID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHScontractNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.colWOCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnCopyContract = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnConfirm,
            this.btnCopyContract});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnConfirm),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyContract, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1261, 400);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHSContractID,
            this.colHScontractNO,
            this.colWOCount,
            this.colIsConfirm,
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
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MR.BO.HSContractHeader);
            // 
            // colHSContractID
            // 
            this.colHSContractID.Caption = "HSContractID";
            this.colHSContractID.FieldName = "HSContractID";
            this.colHSContractID.Name = "colHSContractID";
            this.colHSContractID.Visible = true;
            this.colHSContractID.VisibleIndex = 0;
            this.colHSContractID.Width = 148;
            // 
            // colHScontractNO
            // 
            this.colHScontractNO.Caption = "HScontractNO";
            this.colHScontractNO.FieldName = "HScontractNO";
            this.colHScontractNO.Name = "colHScontractNO";
            this.colHScontractNO.Visible = true;
            this.colHScontractNO.VisibleIndex = 1;
            this.colHScontractNO.Width = 163;
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 4;
            this.colCreateUser.Width = 170;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 5;
            this.colCreateDate.Width = 149;
            // 
            // colAlterUser
            // 
            this.colAlterUser.Caption = "AlterUser";
            this.colAlterUser.FieldName = "AlterUser";
            this.colAlterUser.Name = "colAlterUser";
            this.colAlterUser.Visible = true;
            this.colAlterUser.VisibleIndex = 6;
            this.colAlterUser.Width = 151;
            // 
            // colAlterDate
            // 
            this.colAlterDate.Caption = "AlterDate";
            this.colAlterDate.FieldName = "AlterDate";
            this.colAlterDate.Name = "colAlterDate";
            this.colAlterDate.Visible = true;
            this.colAlterDate.VisibleIndex = 7;
            this.colAlterDate.Width = 182;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 8;
            this.colRemark.Width = 181;
            // 
            // colIsConfirm
            // 
            this.colIsConfirm.Caption = "IsConfirm";
            this.colIsConfirm.FieldName = "IsConfirm";
            this.colIsConfirm.Name = "colIsConfirm";
            this.colIsConfirm.Visible = true;
            this.colIsConfirm.VisibleIndex = 3;
            // 
            // barBtnConfirm
            // 
            this.barBtnConfirm.Caption = "Confirm";
            this.barBtnConfirm.Id = 60;
            this.barBtnConfirm.Name = "barBtnConfirm";
            this.barBtnConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnConfirm_ItemClick);
            // 
            // colWOCount
            // 
            this.colWOCount.Caption = "WOCount";
            this.colWOCount.FieldName = "WOCount";
            this.colWOCount.Name = "colWOCount";
            this.colWOCount.Visible = true;
            this.colWOCount.VisibleIndex = 2;
            this.colWOCount.Width = 85;
            // 
            // btnCopyContract
            // 
            this.btnCopyContract.Caption = "Copy Contract";
            this.btnCopyContract.Id = 61;
            this.btnCopyContract.Name = "btnCopyContract";
            this.btnCopyContract.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopyContract_ItemClick);
            // 
            // HSContractHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HSContractHeaderListForm";
            this.Size = new System.Drawing.Size(1261, 427);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHSContractID;
        private DevExpress.XtraGrid.Columns.GridColumn colHScontractNO;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colIsConfirm;
        private DevExpress.XtraBars.BarButtonItem barBtnConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colWOCount;
        private DevExpress.XtraBars.BarButtonItem btnCopyContract;
    }
}
