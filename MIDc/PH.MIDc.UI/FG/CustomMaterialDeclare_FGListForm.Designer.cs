namespace PH.MIDc.UI
{
    partial class CustomMaterialDeclare_FGListForm
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
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMidcHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colElementNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSortId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barImport = new DevExpress.XtraBars.BarButtonItem();
            this.ColElementDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnGetAll = new DevExpress.XtraBars.BarButtonItem();
            this.barBatchUpdate = new DevExpress.XtraBars.BarButtonItem();
            this.colUpdatedRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barUpdatedComposition = new DevExpress.XtraBars.BarButtonItem();
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
            this.barImport,
            this.barBtnGetAll,
            this.barBatchUpdate,
            this.barUpdatedComposition});
            this.objbarManager.MaxItemId = 65;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barImport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnGetAll, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBatchUpdate, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barUpdatedComposition, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1093, 389);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSortId,
            this.colElementNo,
            this.ColElementDesc,
            this.colRemark,
            this.colStyleNo,
            this.colMidcHSCode,
            this.colUpdatedRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.objListGridView_FocusedRowChanged);
            this.objListGridView.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.objListGridView_CustomDrawCell);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.CustomMaterialDeclare_FG);
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "StyleNo";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.OptionsColumn.AllowEdit = false;
            // 
            // colMidcHSCode
            // 
            this.colMidcHSCode.Caption = "MidcHSCode";
            this.colMidcHSCode.FieldName = "MidcHSCode";
            this.colMidcHSCode.Name = "colMidcHSCode";
            this.colMidcHSCode.OptionsColumn.AllowEdit = false;
            // 
            // colElementNo
            // 
            this.colElementNo.Caption = "Element No.";
            this.colElementNo.FieldName = "ElementNo";
            this.colElementNo.Name = "colElementNo";
            this.colElementNo.OptionsColumn.AllowEdit = false;
            this.colElementNo.Visible = true;
            this.colElementNo.VisibleIndex = 1;
            this.colElementNo.Width = 113;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.OptionsColumn.AllowEdit = false;
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 3;
            this.colRemark.Width = 341;
            // 
            // colSortId
            // 
            this.colSortId.Caption = "Sort ID";
            this.colSortId.FieldName = "SortId";
            this.colSortId.Name = "colSortId";
            this.colSortId.OptionsColumn.AllowEdit = false;
            this.colSortId.Visible = true;
            this.colSortId.VisibleIndex = 0;
            this.colSortId.Width = 68;
            // 
            // barImport
            // 
            this.barImport.Caption = "Import";
            this.barImport.Id = 60;
            this.barImport.Name = "barImport";
            this.barImport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barImport_ItemClick);
            // 
            // ColElementDesc
            // 
            this.ColElementDesc.Caption = "Element Desc";
            this.ColElementDesc.FieldName = "ElementDesc";
            this.ColElementDesc.Name = "ColElementDesc";
            this.ColElementDesc.OptionsColumn.AllowEdit = false;
            this.ColElementDesc.Visible = true;
            this.ColElementDesc.VisibleIndex = 2;
            this.ColElementDesc.Width = 185;
            // 
            // barBtnGetAll
            // 
            this.barBtnGetAll.Caption = "GetAll";
            this.barBtnGetAll.Id = 61;
            this.barBtnGetAll.Name = "barBtnGetAll";
            this.barBtnGetAll.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnGetAll_ItemClick);
            // 
            // barBatchUpdate
            // 
            this.barBatchUpdate.Caption = "Batch Update";
            this.barBatchUpdate.Id = 63;
            this.barBatchUpdate.Name = "barBatchUpdate";
            this.barBatchUpdate.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBatchUpdate_ItemClick);
            // 
            // colUpdatedRemark
            // 
            this.colUpdatedRemark.Caption = "Updated Remark";
            this.colUpdatedRemark.FieldName = "UpdatedRemark";
            this.colUpdatedRemark.Name = "colUpdatedRemark";
            this.colUpdatedRemark.OptionsColumn.AllowEdit = false;
            this.colUpdatedRemark.Width = 321;
            // 
            // barUpdatedComposition
            // 
            this.barUpdatedComposition.Caption = "Composition Update";
            this.barUpdatedComposition.Id = 64;
            this.barUpdatedComposition.Name = "barUpdatedComposition";
            this.barUpdatedComposition.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barUpdatedComposition_ItemClick);
            // 
            // CustomMaterialDeclare_FGListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CustomMaterialDeclare_FGListForm";
            this.Size = new System.Drawing.Size(1093, 416);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colMidcHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colElementNo;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colSortId;
        private DevExpress.XtraBars.BarButtonItem barImport;
        private DevExpress.XtraGrid.Columns.GridColumn ColElementDesc;
        private DevExpress.XtraBars.BarButtonItem barBtnGetAll;
        private DevExpress.XtraBars.BarButtonItem barBatchUpdate;
        private DevExpress.XtraGrid.Columns.GridColumn colUpdatedRemark;
        private DevExpress.XtraBars.BarButtonItem barUpdatedComposition;

    }
}
