namespace PH.MIDc.UI
{
    partial class CompositionDetailListForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.gridColumn_Composition = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemLookUpEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.gridColumn_Per = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.gridColumn_YarnCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_SpecialTerms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.gridColumn_ChineseName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnUpdate = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn_ChineseNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnClearPercentZeroValue = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnUpdate,
            this.btnClearPercentZeroValue});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnUpdate, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnClearPercentZeroValue, true)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode2.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemSpinEdit1,
            this.repositoryItemLookUpEdit1,
            this.repositoryItemButtonEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1269, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_Composition,
            this.gridColumn_ChineseName,
            this.gridColumn_ChineseNameCN,
            this.gridColumn_Per,
            this.gridColumn_YarnCount,
            this.gridColumn_SpecialTerms});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            this.objListGridView.CustomDrawFooterCell += new DevExpress.XtraGrid.Views.Grid.FooterCellCustomDrawEventHandler(this.objListGridView_CustomDrawFooterCell);
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // gridColumn_Composition
            // 
            this.gridColumn_Composition.Caption = "Composition Name (EN)";
            this.gridColumn_Composition.ColumnEdit = this.repositoryItemLookUpEdit1;
            this.gridColumn_Composition.FieldName = "Composition";
            this.gridColumn_Composition.Name = "gridColumn_Composition";
            this.gridColumn_Composition.Visible = true;
            this.gridColumn_Composition.VisibleIndex = 0;
            this.gridColumn_Composition.Width = 177;
            // 
            // repositoryItemLookUpEdit1
            // 
            this.repositoryItemLookUpEdit1.AutoHeight = false;
            this.repositoryItemLookUpEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemLookUpEdit1.Name = "repositoryItemLookUpEdit1";
            this.repositoryItemLookUpEdit1.NullText = "";
            // 
            // gridColumn_Per
            // 
            this.gridColumn_Per.Caption = "Percentage";
            this.gridColumn_Per.ColumnEdit = this.repositoryItemSpinEdit1;
            this.gridColumn_Per.FieldName = "Per";
            this.gridColumn_Per.Name = "gridColumn_Per";
            this.gridColumn_Per.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.gridColumn_Per.Visible = true;
            this.gridColumn_Per.VisibleIndex = 3;
            this.gridColumn_Per.Width = 94;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // gridColumn_YarnCount
            // 
            this.gridColumn_YarnCount.Caption = "Yarn Count";
            this.gridColumn_YarnCount.FieldName = "YarnCount";
            this.gridColumn_YarnCount.Name = "gridColumn_YarnCount";
            this.gridColumn_YarnCount.Visible = true;
            this.gridColumn_YarnCount.VisibleIndex = 4;
            this.gridColumn_YarnCount.Width = 102;
            // 
            // gridColumn_SpecialTerms
            // 
            this.gridColumn_SpecialTerms.Caption = "Special Lable";
            this.gridColumn_SpecialTerms.ColumnEdit = this.repositoryItemButtonEdit1;
            this.gridColumn_SpecialTerms.FieldName = "SpecialTerms";
            this.gridColumn_SpecialTerms.Name = "gridColumn_SpecialTerms";
            this.gridColumn_SpecialTerms.Visible = true;
            this.gridColumn_SpecialTerms.VisibleIndex = 5;
            this.gridColumn_SpecialTerms.Width = 233;
            // 
            // repositoryItemButtonEdit1
            // 
            this.repositoryItemButtonEdit1.AutoHeight = false;
            this.repositoryItemButtonEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit1.Name = "repositoryItemButtonEdit1";
            this.repositoryItemButtonEdit1.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit1_ButtonClick);
            // 
            // gridColumn_ChineseName
            // 
            this.gridColumn_ChineseName.Caption = "Composition Name (TW)";
            this.gridColumn_ChineseName.FieldName = "ChineseName";
            this.gridColumn_ChineseName.Name = "gridColumn_ChineseName";
            this.gridColumn_ChineseName.OptionsColumn.AllowEdit = false;
            this.gridColumn_ChineseName.Visible = true;
            this.gridColumn_ChineseName.VisibleIndex = 1;
            this.gridColumn_ChineseName.Width = 177;
            // 
            // barBtnUpdate
            // 
            this.barBtnUpdate.Caption = "Update";
            this.barBtnUpdate.Hint = "Update composition information to custom declare element";
            this.barBtnUpdate.Id = 60;
            this.barBtnUpdate.Name = "barBtnUpdate";
            this.barBtnUpdate.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnUpdate_ItemClick);
            // 
            // gridColumn_ChineseNameCN
            // 
            this.gridColumn_ChineseNameCN.Caption = "Composition Name (CN)";
            this.gridColumn_ChineseNameCN.FieldName = "ChineseNameCN";
            this.gridColumn_ChineseNameCN.Name = "gridColumn_ChineseNameCN";
            this.gridColumn_ChineseNameCN.OptionsColumn.AllowEdit = false;
            this.gridColumn_ChineseNameCN.Visible = true;
            this.gridColumn_ChineseNameCN.VisibleIndex = 2;
            this.gridColumn_ChineseNameCN.Width = 177;
            // 
            // btnClearPercentZeroValue
            // 
            this.btnClearPercentZeroValue.Caption = "Clear Composition";
            this.btnClearPercentZeroValue.Hint = "Delete all composition with percentage equal to 0";
            this.btnClearPercentZeroValue.Id = 61;
            this.btnClearPercentZeroValue.Name = "btnClearPercentZeroValue";
            this.btnClearPercentZeroValue.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnClearPercentZeroValue_ItemClick);
            // 
            // CompositionDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "CompositionDetailListForm";
            this.Size = new System.Drawing.Size(1269, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemLookUpEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Composition;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Per;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_YarnCount;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_SpecialTerms;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit repositoryItemLookUpEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_ChineseName;
        private DevExpress.XtraBars.BarButtonItem barBtnUpdate;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_ChineseNameCN;
        private DevExpress.XtraBars.BarButtonItem btnClearPercentZeroValue;
    }
}
