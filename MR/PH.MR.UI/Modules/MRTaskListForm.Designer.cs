namespace PH.MR.UI.Modules
{
    partial class MRTaskListForm
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
            this.colTaskNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFromDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEndDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colActionFromTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colActionEndTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Btn_Refresh = new DevExpress.XtraBars.BarButtonItem();
            this.ProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.Btn_Refresh});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.Btn_Refresh)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(890, 416);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colTaskNO,
            this.ProjectNo,
            this.colFromDate,
            this.colEndDate,
            this.colStatus,
            this.colActionFromTime,
            this.colActionEndTime,
            this.colCreateUser,
            this.colCreateDate,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colTaskNO, DevExpress.Data.ColumnSortOrder.Descending)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MR.BO.AnticipantMR_HSCodeHeader);
            this.BindingSource.ListChanged += new System.ComponentModel.ListChangedEventHandler(this.BindingSource_ListChanged);
            // 
            // colTaskNO
            // 
            this.colTaskNO.Caption = "TaskNO";
            this.colTaskNO.FieldName = "TaskNO";
            this.colTaskNO.Name = "colTaskNO";
            this.colTaskNO.Visible = true;
            this.colTaskNO.VisibleIndex = 0;
            this.colTaskNO.Width = 126;
            // 
            // colFromDate
            // 
            this.colFromDate.Caption = "FromDate";
            this.colFromDate.FieldName = "FromDate";
            this.colFromDate.Name = "colFromDate";
            this.colFromDate.Visible = true;
            this.colFromDate.VisibleIndex = 2;
            this.colFromDate.Width = 89;
            // 
            // colEndDate
            // 
            this.colEndDate.Caption = "EndDate";
            this.colEndDate.FieldName = "EndDate";
            this.colEndDate.Name = "colEndDate";
            this.colEndDate.Visible = true;
            this.colEndDate.VisibleIndex = 3;
            this.colEndDate.Width = 90;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 4;
            this.colStatus.Width = 66;
            // 
            // colActionFromTime
            // 
            this.colActionFromTime.Caption = "ActionFromTime";
            this.colActionFromTime.FieldName = "ActionFromTime";
            this.colActionFromTime.Name = "colActionFromTime";
            this.colActionFromTime.Visible = true;
            this.colActionFromTime.VisibleIndex = 5;
            this.colActionFromTime.Width = 116;
            // 
            // colActionEndTime
            // 
            this.colActionEndTime.Caption = "ActionEndTime";
            this.colActionEndTime.FieldName = "ActionEndTime";
            this.colActionEndTime.Name = "colActionEndTime";
            this.colActionEndTime.Visible = true;
            this.colActionEndTime.VisibleIndex = 6;
            this.colActionEndTime.Width = 108;
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 7;
            this.colCreateUser.Width = 84;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 8;
            this.colCreateDate.Width = 87;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 9;
            this.colRemark.Width = 350;
            // 
            // Btn_Refresh
            // 
            this.Btn_Refresh.Caption = "Refresh";
            this.Btn_Refresh.Id = 60;
            this.Btn_Refresh.Name = "Btn_Refresh";
            this.Btn_Refresh.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.Btn_Refresh_ItemClick);
            // 
            // ProjectNo
            // 
            this.ProjectNo.Caption = "ProjectNo";
            this.ProjectNo.FieldName = "ProjectNo";
            this.ProjectNo.Name = "ProjectNo";
            this.ProjectNo.Visible = true;
            this.ProjectNo.VisibleIndex = 1;
            this.ProjectNo.Width = 84;
            // 
            // MRTaskListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MRTaskListForm";
            this.Size = new System.Drawing.Size(890, 443);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colTaskNO;
        private DevExpress.XtraGrid.Columns.GridColumn colFromDate;
        private DevExpress.XtraGrid.Columns.GridColumn colEndDate;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colActionFromTime;
        private DevExpress.XtraGrid.Columns.GridColumn colActionEndTime;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraBars.BarButtonItem Btn_Refresh;
        private DevExpress.XtraGrid.Columns.GridColumn ProjectNo;
    }
}
