namespace PH.RWO.UI
{
    partial class MRAttachForm
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
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWastageOnCAC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAllInPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMOQ = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colERPSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExchangeRate = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.RWO.BO.MR);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSuppRef,
            this.colMaterialGroup,
            this.colMaterialType,
            this.colMaterialCode,
            this.colSupplierUnit,
            this.colWastageOnCAC,
            this.colAllInPrice,
            this.colMOQ,
            this.colERPSupplier,
            this.colCurrency,
            this.colExchangeRate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "SuppRef";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 0;
            // 
            // colMaterialGroup
            // 
            this.colMaterialGroup.Caption = "MaterialGroup";
            this.colMaterialGroup.FieldName = "MaterialGroup";
            this.colMaterialGroup.Name = "colMaterialGroup";
            this.colMaterialGroup.Visible = true;
            this.colMaterialGroup.VisibleIndex = 1;
            // 
            // colMaterialType
            // 
            this.colMaterialType.Caption = "MaterialType";
            this.colMaterialType.FieldName = "MaterialType";
            this.colMaterialType.Name = "colMaterialType";
            this.colMaterialType.Visible = true;
            this.colMaterialType.VisibleIndex = 2;
            // 
            // colMaterialCode
            // 
            this.colMaterialCode.Caption = "MaterialCode";
            this.colMaterialCode.FieldName = "MaterialCode";
            this.colMaterialCode.Name = "colMaterialCode";
            this.colMaterialCode.Visible = true;
            this.colMaterialCode.VisibleIndex = 3;
            // 
            // colSupplierUnit
            // 
            this.colSupplierUnit.Caption = "SupplierUnit";
            this.colSupplierUnit.FieldName = "SupplierUnit";
            this.colSupplierUnit.Name = "colSupplierUnit";
            this.colSupplierUnit.Visible = true;
            this.colSupplierUnit.VisibleIndex = 4;
            // 
            // colWastageOnCAC
            // 
            this.colWastageOnCAC.Caption = "WastageOnCAC";
            this.colWastageOnCAC.FieldName = "WastageOnCAC";
            this.colWastageOnCAC.Name = "colWastageOnCAC";
            this.colWastageOnCAC.Visible = true;
            this.colWastageOnCAC.VisibleIndex = 5;
            // 
            // colAllInPrice
            // 
            this.colAllInPrice.Caption = "AllInPrice";
            this.colAllInPrice.FieldName = "AllInPrice";
            this.colAllInPrice.Name = "colAllInPrice";
            this.colAllInPrice.Visible = true;
            this.colAllInPrice.VisibleIndex = 6;
            // 
            // colMOQ
            // 
            this.colMOQ.Caption = "MOQ";
            this.colMOQ.FieldName = "MOQ";
            this.colMOQ.Name = "colMOQ";
            this.colMOQ.Visible = true;
            this.colMOQ.VisibleIndex = 7;
            // 
            // colERPSupplier
            // 
            this.colERPSupplier.Caption = "ERPSupplier";
            this.colERPSupplier.FieldName = "ERPSupplier";
            this.colERPSupplier.Name = "colERPSupplier";
            this.colERPSupplier.Visible = true;
            this.colERPSupplier.VisibleIndex = 8;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Currency";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 9;
            // 
            // colExchangeRate
            // 
            this.colExchangeRate.Caption = "ExchangeRate";
            this.colExchangeRate.FieldName = "ExchangeRate";
            this.colExchangeRate.Name = "colExchangeRate";
            this.colExchangeRate.Visible = true;
            this.colExchangeRate.VisibleIndex = 10;
            // 
            // MRAttachForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MRAttachForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialGroup;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colWastageOnCAC;
        private DevExpress.XtraGrid.Columns.GridColumn colAllInPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colMOQ;
        private DevExpress.XtraGrid.Columns.GridColumn colERPSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colExchangeRate;
    }
}
