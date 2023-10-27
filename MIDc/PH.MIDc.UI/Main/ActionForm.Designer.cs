namespace PH.MIDc.UI
{
    partial class ActionForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.gvDetail = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colMaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierWidth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUsableWidth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMarkerWidth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colERPSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCheckFlag1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.btnAction = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // repositoryItemDateEditCreateDate
            // 
            this.repositoryItemDateEditCreateDate.DisplayFormat.FormatString = "yyyy\'/\'MM\'/\'dd";
            this.repositoryItemDateEditCreateDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.repositoryItemDateEditCreateDate.EditFormat.FormatString = "yyyy\'/\'MM\'/\'dd";
            this.repositoryItemDateEditCreateDate.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEditCreateDate.Mask.MaskType = DevExpress.XtraEditors.Mask.MaskType.None;
            this.repositoryItemDateEditCreateDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton(),
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnAction});
            this.objbarManager.MaxItemId = 19;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnAction, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            gridLevelNode2.LevelTemplate = this.gvDetail;
            gridLevelNode2.RelationName = "Details";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1,
            gridLevelNode2});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEditCreateDate,
            this.repositoryItemCheckEdit1});
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvDetail});
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.EvenRow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(224)))), ((int)(((byte)(192)))));
            this.objListGridView.Appearance.EvenRow.BackColor2 = System.Drawing.Color.FloralWhite;
            this.objListGridView.Appearance.EvenRow.GradientMode = System.Drawing.Drawing2D.LinearGradientMode.BackwardDiagonal;
            this.objListGridView.Appearance.EvenRow.Options.UseBackColor = true;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCheckFlag1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceEvenRow = true;
            // 
            // gvDetail
            // 
            this.gvDetail.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMaterialType,
            this.colMaterialCode,
            this.colSuppRef,
            this.colStatus,
            this.colCreateDate,
            this.colSupplier,
            this.colSupplierWidth,
            this.colUsableWidth,
            this.colMarkerWidth,
            this.colSupplierUnit,
            this.colPHUnit,
            this.colERPSupplier});
            this.gvDetail.GridControl = this.objListGridControl;
            this.gvDetail.Name = "gvDetail";
            this.gvDetail.OptionsBehavior.Editable = false;
            this.gvDetail.OptionsCustomization.AllowFilter = false;
            this.gvDetail.OptionsDetail.EnableMasterViewMode = false;
            this.gvDetail.OptionsView.ColumnAutoWidth = false;
            this.gvDetail.OptionsView.ShowGroupPanel = false;
            // 
            // colMaterialType
            // 
            this.colMaterialType.Caption = "Mat\'l Type";
            this.colMaterialType.FieldName = "MaterialType";
            this.colMaterialType.Name = "colMaterialType";
            this.colMaterialType.Visible = true;
            this.colMaterialType.VisibleIndex = 1;
            this.colMaterialType.Width = 95;
            // 
            // colMaterialCode
            // 
            this.colMaterialCode.Caption = "Mat\'l Code";
            this.colMaterialCode.FieldName = "MaterialCode";
            this.colMaterialCode.Name = "colMaterialCode";
            this.colMaterialCode.Visible = true;
            this.colMaterialCode.VisibleIndex = 2;
            this.colMaterialCode.Width = 91;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "Supp item Ref";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 0;
            this.colSuppRef.Width = 151;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 3;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "Create Date";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 4;
            this.colCreateDate.Width = 114;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "MIDc Supp Ref.";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 5;
            this.colSupplier.Width = 115;
            // 
            // colSupplierWidth
            // 
            this.colSupplierWidth.Caption = "Supplier Width";
            this.colSupplierWidth.FieldName = "SupplierWidth";
            this.colSupplierWidth.Name = "colSupplierWidth";
            this.colSupplierWidth.Width = 101;
            // 
            // colUsableWidth
            // 
            this.colUsableWidth.Caption = "Usable Width";
            this.colUsableWidth.FieldName = "UsableWidth";
            this.colUsableWidth.Name = "colUsableWidth";
            this.colUsableWidth.Width = 106;
            // 
            // colMarkerWidth
            // 
            this.colMarkerWidth.Caption = "Marker Width";
            this.colMarkerWidth.FieldName = "MarkerWidth";
            this.colMarkerWidth.Name = "colMarkerWidth";
            this.colMarkerWidth.Width = 114;
            // 
            // colSupplierUnit
            // 
            this.colSupplierUnit.Caption = "Supplier Unit";
            this.colSupplierUnit.FieldName = "SupplierUnit";
            this.colSupplierUnit.Name = "colSupplierUnit";
            this.colSupplierUnit.Visible = true;
            this.colSupplierUnit.VisibleIndex = 6;
            this.colSupplierUnit.Width = 109;
            // 
            // colPHUnit
            // 
            this.colPHUnit.Caption = "Stock in Unit";
            this.colPHUnit.FieldName = "PHUnit";
            this.colPHUnit.Name = "colPHUnit";
            this.colPHUnit.Visible = true;
            this.colPHUnit.VisibleIndex = 8;
            this.colPHUnit.Width = 110;
            // 
            // colERPSupplier
            // 
            this.colERPSupplier.Caption = "Supplier code";
            this.colERPSupplier.FieldName = "ERPSupplier";
            this.colERPSupplier.Name = "colERPSupplier";
            this.colERPSupplier.Visible = true;
            this.colERPSupplier.VisibleIndex = 7;
            this.colERPSupplier.Width = 109;
            // 
            // colCheckFlag1
            // 
            this.colCheckFlag1.Caption = "select";
            this.colCheckFlag1.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colCheckFlag1.FieldName = "CheckFlag";
            this.colCheckFlag1.Name = "colCheckFlag1";
            this.colCheckFlag1.Visible = true;
            this.colCheckFlag1.VisibleIndex = 2;
            this.colCheckFlag1.Width = 54;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // btnAction
            // 
            this.btnAction.Caption = "Action";
            this.btnAction.Id = 18;
            this.btnAction.Name = "btnAction";
            // 
            // ActionForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "ActionForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEditCreateDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.Grid.GridView gvDetail;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierWidth;
        private DevExpress.XtraGrid.Columns.GridColumn colUsableWidth;
        private DevExpress.XtraGrid.Columns.GridColumn colMarkerWidth;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colPHUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colERPSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraBars.BarButtonItem btnAction;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag1;
    }
}
