namespace PH.RWO.UI
{
    partial class StylePackingDetailListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.colMRGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.MRcmbEdit = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colMRCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSpecifications = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQtyPer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWastageOnCAC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnitPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUOM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAllInPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMinOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorRange = new DevExpress.XtraGrid.Columns.GridColumn();
            this.chkcmbColor = new DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit();
            this.colSizeRange = new DevExpress.XtraGrid.Columns.GridColumn();
            this.chkcmbSize = new DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit();
            this.colCupRange = new DevExpress.XtraGrid.Columns.GridColumn();
            this.chkcmbCup = new DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit();
            this.colPHMaterial = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMRType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colYY = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.MRcmbEdit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkcmbColor)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkcmbSize)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkcmbCup)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.PackagingMaterial);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.MRcmbEdit,
            this.chkcmbColor,
            this.chkcmbSize,
            this.chkcmbCup});
            this.objListGridControl.Size = new System.Drawing.Size(1007, 398);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMRGroup,
            this.colMRCode,
            this.colMRType,
            this.colPHMaterial,
            this.colSuppRef,
            this.colSpecifications,
            this.colQtyPer,
            this.colPHUnit,
            this.colWastageOnCAC,
            this.colYY,
            this.colSupplier,
            this.colCurrency,
            this.colUnitPrice,
            this.colUOM,
            this.colExRate,
            this.colAllInPrice,
            this.colMinOrder,
            this.colColorRange,
            this.colSizeRange,
            this.colCupRange});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colPHMaterial, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // colMRGroup
            // 
            this.colMRGroup.Caption = "MRGroup";
            this.colMRGroup.ColumnEdit = this.MRcmbEdit;
            this.colMRGroup.FieldName = "MRGroup";
            this.colMRGroup.Name = "colMRGroup";
            this.colMRGroup.Visible = true;
            this.colMRGroup.VisibleIndex = 0;
            // 
            // MRcmbEdit
            // 
            this.MRcmbEdit.AutoHeight = false;
            this.MRcmbEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.MRcmbEdit.Items.AddRange(new object[] {
            "Labeling",
            "Packaging",
            "Packing"});
            this.MRcmbEdit.Name = "MRcmbEdit";
            // 
            // colMRCode
            // 
            this.colMRCode.Caption = "MRCode";
            this.colMRCode.FieldName = "MRCode";
            this.colMRCode.Name = "colMRCode";
            this.colMRCode.Visible = true;
            this.colMRCode.VisibleIndex = 1;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "SuppRef";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 4;
            this.colSuppRef.Width = 120;
            // 
            // colSpecifications
            // 
            this.colSpecifications.Caption = "Specifications";
            this.colSpecifications.FieldName = "Specifications";
            this.colSpecifications.Name = "colSpecifications";
            this.colSpecifications.Visible = true;
            this.colSpecifications.VisibleIndex = 5;
            this.colSpecifications.Width = 97;
            // 
            // colQtyPer
            // 
            this.colQtyPer.Caption = "QtyPer";
            this.colQtyPer.FieldName = "QtyPer";
            this.colQtyPer.Name = "colQtyPer";
            this.colQtyPer.Visible = true;
            this.colQtyPer.VisibleIndex = 6;
            this.colQtyPer.Width = 83;
            // 
            // colPHUnit
            // 
            this.colPHUnit.Caption = "PHUnit";
            this.colPHUnit.FieldName = "PHUnit";
            this.colPHUnit.Name = "colPHUnit";
            this.colPHUnit.Visible = true;
            this.colPHUnit.VisibleIndex = 7;
            this.colPHUnit.Width = 85;
            // 
            // colWastageOnCAC
            // 
            this.colWastageOnCAC.Caption = "WastageOnCAC";
            this.colWastageOnCAC.FieldName = "WastageOnCAC";
            this.colWastageOnCAC.Name = "colWastageOnCAC";
            this.colWastageOnCAC.Visible = true;
            this.colWastageOnCAC.VisibleIndex = 8;
            this.colWastageOnCAC.Width = 100;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supplier";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 10;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Currency";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 11;
            // 
            // colUnitPrice
            // 
            this.colUnitPrice.Caption = "UnitPrice";
            this.colUnitPrice.FieldName = "UnitPrice";
            this.colUnitPrice.Name = "colUnitPrice";
            this.colUnitPrice.Visible = true;
            this.colUnitPrice.VisibleIndex = 12;
            // 
            // colUOM
            // 
            this.colUOM.Caption = "UOM";
            this.colUOM.FieldName = "UOM";
            this.colUOM.Name = "colUOM";
            this.colUOM.Visible = true;
            this.colUOM.VisibleIndex = 13;
            // 
            // colExRate
            // 
            this.colExRate.Caption = "ExRate";
            this.colExRate.FieldName = "ExRate";
            this.colExRate.Name = "colExRate";
            this.colExRate.Visible = true;
            this.colExRate.VisibleIndex = 14;
            // 
            // colAllInPrice
            // 
            this.colAllInPrice.Caption = "AllInPrice";
            this.colAllInPrice.FieldName = "AllInPrice";
            this.colAllInPrice.Name = "colAllInPrice";
            this.colAllInPrice.Visible = true;
            this.colAllInPrice.VisibleIndex = 15;
            // 
            // colMinOrder
            // 
            this.colMinOrder.Caption = "MinOrder";
            this.colMinOrder.FieldName = "MinOrder";
            this.colMinOrder.Name = "colMinOrder";
            this.colMinOrder.Visible = true;
            this.colMinOrder.VisibleIndex = 16;
            // 
            // colColorRange
            // 
            this.colColorRange.Caption = "ColorRange";
            this.colColorRange.ColumnEdit = this.chkcmbColor;
            this.colColorRange.FieldName = "ColorRange";
            this.colColorRange.Name = "colColorRange";
            this.colColorRange.Visible = true;
            this.colColorRange.VisibleIndex = 17;
            // 
            // chkcmbColor
            // 
            this.chkcmbColor.AutoHeight = false;
            this.chkcmbColor.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.chkcmbColor.Name = "chkcmbColor";
            // 
            // colSizeRange
            // 
            this.colSizeRange.Caption = "SizeRange";
            this.colSizeRange.ColumnEdit = this.chkcmbSize;
            this.colSizeRange.FieldName = "SizeRange";
            this.colSizeRange.Name = "colSizeRange";
            this.colSizeRange.Visible = true;
            this.colSizeRange.VisibleIndex = 18;
            // 
            // chkcmbSize
            // 
            this.chkcmbSize.AutoHeight = false;
            this.chkcmbSize.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.chkcmbSize.Name = "chkcmbSize";
            // 
            // colCupRange
            // 
            this.colCupRange.Caption = "CupRange";
            this.colCupRange.ColumnEdit = this.chkcmbCup;
            this.colCupRange.FieldName = "CupRange";
            this.colCupRange.Name = "colCupRange";
            this.colCupRange.Visible = true;
            this.colCupRange.VisibleIndex = 19;
            // 
            // chkcmbCup
            // 
            this.chkcmbCup.AutoHeight = false;
            this.chkcmbCup.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.chkcmbCup.Name = "chkcmbCup";
            // 
            // colPHMaterial
            // 
            this.colPHMaterial.Caption = "PHMaterial";
            this.colPHMaterial.FieldName = "PHMaterial";
            this.colPHMaterial.Name = "colPHMaterial";
            this.colPHMaterial.Visible = true;
            this.colPHMaterial.VisibleIndex = 3;
            this.colPHMaterial.Width = 109;
            // 
            // colMRType
            // 
            this.colMRType.Caption = "MRType";
            this.colMRType.FieldName = "MRType";
            this.colMRType.Name = "colMRType";
            this.colMRType.Visible = true;
            this.colMRType.VisibleIndex = 2;
            this.colMRType.Width = 80;
            // 
            // colYY
            // 
            this.colYY.Caption = "YY";
            this.colYY.FieldName = "YY";
            this.colYY.Name = "colYY";
            this.colYY.Visible = true;
            this.colYY.VisibleIndex = 9;
            // 
            // StylePackingDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StylePackingDetailListForm";
            this.Size = new System.Drawing.Size(1007, 424);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.MRcmbEdit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkcmbColor)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkcmbSize)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkcmbCup)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colMRGroup;
        private DevExpress.XtraGrid.Columns.GridColumn colMRCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colSpecifications;
        private DevExpress.XtraGrid.Columns.GridColumn colQtyPer;
        private DevExpress.XtraGrid.Columns.GridColumn colPHUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colWastageOnCAC;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colUnitPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colUOM;
        private DevExpress.XtraGrid.Columns.GridColumn colExRate;
        private DevExpress.XtraGrid.Columns.GridColumn colAllInPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colMinOrder;
        private DevExpress.XtraGrid.Columns.GridColumn colColorRange;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeRange;
        private DevExpress.XtraGrid.Columns.GridColumn colCupRange;
        private DevExpress.XtraGrid.Columns.GridColumn colPHMaterial;
        private DevExpress.XtraGrid.Columns.GridColumn colMRType;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox MRcmbEdit;
        public DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit chkcmbColor;
        public DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit chkcmbSize;
        public DevExpress.XtraEditors.Repository.RepositoryItemCheckedComboBoxEdit chkcmbCup;
        private DevExpress.XtraGrid.Columns.GridColumn colYY;
    }
}
