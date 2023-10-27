namespace PH.MR.UI.StyleSizeWeight
{
    partial class StyleSizeWeightListForm
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
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.barBtn_Refresh = new DevExpress.XtraBars.BarButtonItem();
            this.colStyleNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeight = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemGridLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtn_Refresh});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtn_Refresh, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemSpinEdit1,
            this.repositoryItemGridLookUpEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1158, 539);
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCustomer,
            this.colPHStyleNo,
            this.colStyleNO,
            this.colPHSize,
            this.colPHCup,
            this.colCustSize,
            this.colCustCup,
            this.colWeight,
            this.colCreateUser,
            this.colCreateDate,
            this.colAlterUser,
            this.colAlterDate,
            this.colRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.objListGridView_CellValueChanged);
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MR.BO.StyleSizeWeight);
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.DisplayFormat.FormatString = "#0.0#####";
            this.repositoryItemSpinEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.repositoryItemSpinEdit1.EditFormat.FormatString = "#0.0#####";
            this.repositoryItemSpinEdit1.EditFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.repositoryItemSpinEdit1.Mask.EditMask = "#0.0#####";
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // barBtn_Refresh
            // 
            this.barBtn_Refresh.Caption = "Refresh";
            this.barBtn_Refresh.Id = 60;
            this.barBtn_Refresh.Name = "barBtn_Refresh";
            this.barBtn_Refresh.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtn_Refresh_ItemClick);
            // 
            // colStyleNO
            // 
            this.colStyleNO.Caption = "StyleNO";
            this.colStyleNO.FieldName = "StyleNO";
            this.colStyleNO.Name = "colStyleNO";
            this.colStyleNO.Visible = true;
            this.colStyleNO.VisibleIndex = 2;
            this.colStyleNO.Width = 95;
            // 
            // colPHSize
            // 
            this.colPHSize.Caption = "PHSize";
            this.colPHSize.FieldName = "PHSize";
            this.colPHSize.Name = "colPHSize";
            this.colPHSize.Visible = true;
            this.colPHSize.VisibleIndex = 3;
            this.colPHSize.Width = 100;
            // 
            // colPHCup
            // 
            this.colPHCup.Caption = "PHCup";
            this.colPHCup.FieldName = "PHCup";
            this.colPHCup.Name = "colPHCup";
            this.colPHCup.Visible = true;
            this.colPHCup.VisibleIndex = 4;
            this.colPHCup.Width = 93;
            // 
            // colCustSize
            // 
            this.colCustSize.Caption = "CustSize";
            this.colCustSize.FieldName = "CustSize";
            this.colCustSize.Name = "colCustSize";
            this.colCustSize.Visible = true;
            this.colCustSize.VisibleIndex = 5;
            this.colCustSize.Width = 84;
            // 
            // colCustCup
            // 
            this.colCustCup.Caption = "CustCup";
            this.colCustCup.FieldName = "CustCup";
            this.colCustCup.Name = "colCustCup";
            this.colCustCup.Visible = true;
            this.colCustCup.VisibleIndex = 6;
            // 
            // colWeight
            // 
            this.colWeight.Caption = "Weight";
            this.colWeight.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colWeight.FieldName = "Weight";
            this.colWeight.Name = "colWeight";
            this.colWeight.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colWeight.Visible = true;
            this.colWeight.VisibleIndex = 7;
            this.colWeight.Width = 80;
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 8;
            this.colCreateUser.Width = 116;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 9;
            this.colCreateDate.Width = 97;
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
            // repositoryItemGridLookUpEdit1
            // 
            this.repositoryItemGridLookUpEdit1.AutoHeight = false;
            this.repositoryItemGridLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemGridLookUpEdit1.Name = "repositoryItemGridLookUpEdit1";
            this.repositoryItemGridLookUpEdit1.View = this.repositoryItemGridLookUpEdit1View;
            // 
            // repositoryItemGridLookUpEdit1View
            // 
            this.repositoryItemGridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.repositoryItemGridLookUpEdit1View.Name = "repositoryItemGridLookUpEdit1View";
            this.repositoryItemGridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 0;
            // 
            // colPHStyleNo
            // 
            this.colPHStyleNo.Caption = "PHStyleNo";
            this.colPHStyleNo.FieldName = "PHStyleNo";
            this.colPHStyleNo.Name = "colPHStyleNo";
            this.colPHStyleNo.Visible = true;
            this.colPHStyleNo.VisibleIndex = 1;
            this.colPHStyleNo.Width = 88;
            // 
            // StyleSizeWeightListForm
            // 
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleSizeWeightListForm";
            this.Size = new System.Drawing.Size(1158, 566);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barBtn_Refresh;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit repositoryItemGridLookUpEdit1;
        private DevExpress.XtraGrid.Views.Grid.GridView repositoryItemGridLookUpEdit1View;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNO;
        private DevExpress.XtraGrid.Columns.GridColumn colPHSize;
        private DevExpress.XtraGrid.Columns.GridColumn colPHCup;
        private DevExpress.XtraGrid.Columns.GridColumn colCustSize;
        private DevExpress.XtraGrid.Columns.GridColumn colCustCup;
        private DevExpress.XtraGrid.Columns.GridColumn colWeight;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colPHStyleNo;
    }
}
