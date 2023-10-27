namespace PH.FabricInspection.UI
{
    partial class SupplierBatchInfoListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.riMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.riComboBoxStatus = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.riImageCbOK_Deduce_Rejct = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.riImageCbOK_No_Rejct = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.riImageCbOk_Rejct_NoMouldTrial = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.riImageCbOk_Rejct_NoWeftYarn = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.riImageCbOk_Rejct_NoElongation = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colSupplich_Batch = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRollQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalLength = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.colCreateByUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateOnDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterByUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterOnDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.colItem_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStock_In_Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtn_GetListFromDate = new DevExpress.XtraBars.BarButtonItem();
            this.colItem_Desc = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riComboBoxStatus)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_Deduce_Rejct)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_No_Rejct)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoMouldTrial)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoWeftYarn)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoElongation)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtn_GetListFromDate});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtn_GetListFromDate)});
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnSave
            // 
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.riMemoExEdit1,
            this.riComboBoxStatus,
            this.riImageCbOK_Deduce_Rejct,
            this.riImageCbOK_No_Rejct,
            this.riImageCbOk_Rejct_NoMouldTrial,
            this.riImageCbOk_Rejct_NoWeftYarn,
            this.riImageCbOk_Rejct_NoElongation,
            this.repositoryItemLookUpEdit1,
            this.repositoryItemMemoEdit1,
            this.repositoryItemSpinEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1348, 331);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSupplich_Batch,
            this.colItem_No,
            this.colItem_Desc,
            this.colStock_In_Date,
            this.colRollQty,
            this.colTotalLength,
            this.colRemark,
            this.colCreateByUser,
            this.colCreateOnDate,
            this.colAlterByUser,
            this.colAlterOnDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.P_GetSupplierBatchInfResult);
            // 
            // riMemoExEdit1
            // 
            this.riMemoExEdit1.AutoHeight = false;
            this.riMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riMemoExEdit1.Name = "riMemoExEdit1";
            // 
            // riComboBoxStatus
            // 
            this.riComboBoxStatus.AutoHeight = false;
            this.riComboBoxStatus.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riComboBoxStatus.Items.AddRange(new object[] {
            "OK",
            "Deduct",
            "Return"});
            this.riComboBoxStatus.Name = "riComboBoxStatus";
            // 
            // riImageCbOK_Deduce_Rejct
            // 
            this.riImageCbOK_Deduce_Rejct.AutoHeight = false;
            this.riImageCbOK_Deduce_Rejct.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOK_Deduce_Rejct.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deduct", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Return", "3", -1)});
            this.riImageCbOK_Deduce_Rejct.Name = "riImageCbOK_Deduce_Rejct";
            // 
            // riImageCbOK_No_Rejct
            // 
            this.riImageCbOK_No_Rejct.AutoHeight = false;
            this.riImageCbOK_No_Rejct.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOK_No_Rejct.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Return", "3", -1)});
            this.riImageCbOK_No_Rejct.Name = "riImageCbOK_No_Rejct";
            // 
            // riImageCbOk_Rejct_NoMouldTrial
            // 
            this.riImageCbOk_Rejct_NoMouldTrial.AutoHeight = false;
            this.riImageCbOk_Rejct_NoMouldTrial.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOk_Rejct_NoMouldTrial.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No Mould Trial", "3", -1)});
            this.riImageCbOk_Rejct_NoMouldTrial.Name = "riImageCbOk_Rejct_NoMouldTrial";
            // 
            // riImageCbOk_Rejct_NoWeftYarn
            // 
            this.riImageCbOk_Rejct_NoWeftYarn.AutoHeight = false;
            this.riImageCbOk_Rejct_NoWeftYarn.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOk_Rejct_NoWeftYarn.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No Weft Yarn", "0", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deduct", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.riImageCbOk_Rejct_NoWeftYarn.Name = "riImageCbOk_Rejct_NoWeftYarn";
            // 
            // riImageCbOk_Rejct_NoElongation
            // 
            this.riImageCbOk_Rejct_NoElongation.AutoHeight = false;
            this.riImageCbOk_Rejct_NoElongation.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riImageCbOk_Rejct_NoElongation.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("No Elongation", "0", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OK", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Deduct", "2", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Reject", "3", -1)});
            this.riImageCbOk_Rejct_NoElongation.Name = "riImageCbOk_Rejct_NoElongation";
            // 
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            // 
            // colSupplich_Batch
            // 
            this.colSupplich_Batch.Caption = "Supplich Batch No.";
            this.colSupplich_Batch.FieldName = "Supplich_Batch";
            this.colSupplich_Batch.Name = "colSupplich_Batch";
            this.colSupplich_Batch.OptionsColumn.AllowEdit = false;
            this.colSupplich_Batch.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplich_Batch.Visible = true;
            this.colSupplich_Batch.VisibleIndex = 0;
            this.colSupplich_Batch.Width = 130;
            // 
            // colRollQty
            // 
            this.colRollQty.AppearanceCell.Options.UseTextOptions = true;
            this.colRollQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colRollQty.Caption = "Roll Qty";
            this.colRollQty.FieldName = "RollQty";
            this.colRollQty.Name = "colRollQty";
            this.colRollQty.Visible = true;
            this.colRollQty.VisibleIndex = 4;
            this.colRollQty.Width = 80;
            // 
            // colTotalLength
            // 
            this.colTotalLength.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalLength.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colTotalLength.Caption = "Total Length";
            this.colTotalLength.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colTotalLength.FieldName = "TotalLength";
            this.colTotalLength.Name = "colTotalLength";
            this.colTotalLength.Visible = true;
            this.colTotalLength.VisibleIndex = 5;
            this.colTotalLength.Width = 100;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AllowNullInput = DevExpress.Utils.DefaultBoolean.False;
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.DisplayFormat.FormatString = "###,###,##0.####";
            this.repositoryItemSpinEdit1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.EditFormat.FormatString = "###,###,##0.####";
            this.repositoryItemSpinEdit1.EditFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // colCreateByUser
            // 
            this.colCreateByUser.Caption = "Create By User";
            this.colCreateByUser.FieldName = "CreateByUser";
            this.colCreateByUser.Name = "colCreateByUser";
            this.colCreateByUser.OptionsColumn.AllowEdit = false;
            this.colCreateByUser.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colCreateByUser.Visible = true;
            this.colCreateByUser.VisibleIndex = 7;
            this.colCreateByUser.Width = 100;
            // 
            // colCreateOnDate
            // 
            this.colCreateOnDate.Caption = "Create On Date";
            this.colCreateOnDate.FieldName = "CreateOnDate";
            this.colCreateOnDate.Name = "colCreateOnDate";
            this.colCreateOnDate.OptionsColumn.AllowEdit = false;
            this.colCreateOnDate.Visible = true;
            this.colCreateOnDate.VisibleIndex = 8;
            this.colCreateOnDate.Width = 200;
            // 
            // colAlterByUser
            // 
            this.colAlterByUser.Caption = "Alter By User";
            this.colAlterByUser.FieldName = "AlterByUser";
            this.colAlterByUser.Name = "colAlterByUser";
            this.colAlterByUser.OptionsColumn.AllowEdit = false;
            this.colAlterByUser.Visible = true;
            this.colAlterByUser.VisibleIndex = 9;
            this.colAlterByUser.Width = 100;
            // 
            // colAlterOnDate
            // 
            this.colAlterOnDate.Caption = "Alter On Date";
            this.colAlterOnDate.FieldName = "AlterOnDate";
            this.colAlterOnDate.Name = "colAlterOnDate";
            this.colAlterOnDate.OptionsColumn.AllowEdit = false;
            this.colAlterOnDate.Visible = true;
            this.colAlterOnDate.VisibleIndex = 10;
            this.colAlterOnDate.Width = 100;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.ColumnEdit = this.riMemoExEdit1;
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 6;
            this.colRemark.Width = 200;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // colItem_No
            // 
            this.colItem_No.Caption = "Item No.";
            this.colItem_No.FieldName = "Item_No";
            this.colItem_No.Name = "colItem_No";
            this.colItem_No.OptionsColumn.AllowEdit = false;
            this.colItem_No.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItem_No.Visible = true;
            this.colItem_No.VisibleIndex = 1;
            this.colItem_No.Width = 120;
            // 
            // colStock_In_Date
            // 
            this.colStock_In_Date.Caption = "Stock In Date";
            this.colStock_In_Date.FieldName = "Stock_In_Date";
            this.colStock_In_Date.Name = "colStock_In_Date";
            this.colStock_In_Date.OptionsColumn.AllowEdit = false;
            this.colStock_In_Date.Visible = true;
            this.colStock_In_Date.VisibleIndex = 3;
            this.colStock_In_Date.Width = 100;
            // 
            // barBtn_GetListFromDate
            // 
            this.barBtn_GetListFromDate.Caption = "GetListFromDate";
            this.barBtn_GetListFromDate.Id = 61;
            this.barBtn_GetListFromDate.Name = "barBtn_GetListFromDate";
            this.barBtn_GetListFromDate.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtn_GetListFromDate_ItemClick);
            // 
            // colItem_Desc
            // 
            this.colItem_Desc.Caption = "Item_Desc";
            this.colItem_Desc.FieldName = "Item_Desc";
            this.colItem_Desc.Name = "colItem_Desc";
            this.colItem_Desc.OptionsColumn.AllowEdit = false;
            this.colItem_Desc.Visible = true;
            this.colItem_Desc.VisibleIndex = 2;
            this.colItem_Desc.Width = 146;
            // 
            // SupplierBatchInfoListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SupplierBatchInfoListForm";
            this.Size = new System.Drawing.Size(1348, 358);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riComboBoxStatus)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_Deduce_Rejct)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOK_No_Rejct)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoMouldTrial)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoWeftYarn)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riImageCbOk_Rejct_NoElongation)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSupplich_Batch;
        private DevExpress.XtraGrid.Columns.GridColumn colRollQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalLength;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateByUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateOnDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterByUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterOnDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit riMemoExEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox riComboBoxStatus;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOK_Deduce_Rejct;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOK_No_Rejct;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOk_Rejct_NoMouldTrial;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOk_Rejct_NoWeftYarn;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riImageCbOk_Rejct_NoElongation;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colItem_No;
        private DevExpress.XtraGrid.Columns.GridColumn colStock_In_Date;
        private DevExpress.XtraBars.BarButtonItem barBtn_GetListFromDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colItem_Desc;
    }
}
