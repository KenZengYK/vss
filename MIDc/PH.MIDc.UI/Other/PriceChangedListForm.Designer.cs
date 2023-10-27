namespace PH.MIDc.UI
{
    partial class PriceChangedListForm
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
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPriceType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEffectFromDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colEffectEndDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorRange = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRatio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsMultiPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMultiPriceStr = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMIDcSuppRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colERPSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.MaterialPrice);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMaterialType,
            this.colSuppRef,
            this.colPriceType,
            this.colCategory,
            this.colEffectFromDate,
            this.colEffectEndDate,
            this.colColorRange,
            this.colSize,
            this.colCup,
            this.colPrice,
            this.colRatio,
            this.colIsMultiPrice,
            this.colMultiPriceStr,
            this.colMIDcSuppRef,
            this.colERPSupplier});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colMaterialType, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSuppRef, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colPriceType, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCategory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colEffectFromDate, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "SuppRef";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.Visible = true;
            this.colSuppRef.VisibleIndex = 1;
            // 
            // colPriceType
            // 
            this.colPriceType.Caption = "PriceType";
            this.colPriceType.FieldName = "PriceType";
            this.colPriceType.Name = "colPriceType";
            this.colPriceType.Visible = true;
            this.colPriceType.VisibleIndex = 2;
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Visible = true;
            this.colCategory.VisibleIndex = 3;
            // 
            // colEffectFromDate
            // 
            this.colEffectFromDate.Caption = "EffectFromDate";
            this.colEffectFromDate.FieldName = "EffectFromDate";
            this.colEffectFromDate.Name = "colEffectFromDate";
            this.colEffectFromDate.Visible = true;
            this.colEffectFromDate.VisibleIndex = 4;
            // 
            // colEffectEndDate
            // 
            this.colEffectEndDate.Caption = "EffectEndDate";
            this.colEffectEndDate.FieldName = "EffectEndDate";
            this.colEffectEndDate.Name = "colEffectEndDate";
            this.colEffectEndDate.Visible = true;
            this.colEffectEndDate.VisibleIndex = 5;
            // 
            // colColorRange
            // 
            this.colColorRange.Caption = "ColorRange";
            this.colColorRange.FieldName = "ColorRange";
            this.colColorRange.Name = "colColorRange";
            this.colColorRange.Visible = true;
            this.colColorRange.VisibleIndex = 6;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.Visible = true;
            this.colSize.VisibleIndex = 7;
            // 
            // colCup
            // 
            this.colCup.Caption = "Cup";
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.Visible = true;
            this.colCup.VisibleIndex = 8;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 9;
            // 
            // colRatio
            // 
            this.colRatio.Caption = "Ratio";
            this.colRatio.FieldName = "Ratio";
            this.colRatio.Name = "colRatio";
            this.colRatio.Visible = true;
            this.colRatio.VisibleIndex = 10;
            // 
            // colIsMultiPrice
            // 
            this.colIsMultiPrice.Caption = "IsMultiPrice";
            this.colIsMultiPrice.FieldName = "IsMultiPrice";
            this.colIsMultiPrice.Name = "colIsMultiPrice";
            this.colIsMultiPrice.OptionsColumn.ReadOnly = true;
            this.colIsMultiPrice.Visible = true;
            this.colIsMultiPrice.VisibleIndex = 11;
            // 
            // colMultiPriceStr
            // 
            this.colMultiPriceStr.Caption = "MultiPriceStr";
            this.colMultiPriceStr.FieldName = "MultiPriceStr";
            this.colMultiPriceStr.Name = "colMultiPriceStr";
            this.colMultiPriceStr.OptionsColumn.ReadOnly = true;
            this.colMultiPriceStr.Visible = true;
            this.colMultiPriceStr.VisibleIndex = 12;
            // 
            // colMaterialType
            // 
            this.colMaterialType.Caption = "MaterialType";
            this.colMaterialType.FieldName = "MaterialType";
            this.colMaterialType.Name = "colMaterialType";
            this.colMaterialType.OptionsColumn.ReadOnly = true;
            this.colMaterialType.Visible = true;
            this.colMaterialType.VisibleIndex = 0;
            // 
            // colMIDcSuppRef
            // 
            this.colMIDcSuppRef.Caption = "MIDcSuppRef";
            this.colMIDcSuppRef.FieldName = "MIDcSuppRef";
            this.colMIDcSuppRef.Name = "colMIDcSuppRef";
            this.colMIDcSuppRef.OptionsColumn.ReadOnly = true;
            this.colMIDcSuppRef.Visible = true;
            this.colMIDcSuppRef.VisibleIndex = 13;
            // 
            // colERPSupplier
            // 
            this.colERPSupplier.Caption = "ERPSupplier";
            this.colERPSupplier.FieldName = "ERPSupplier";
            this.colERPSupplier.Name = "colERPSupplier";
            this.colERPSupplier.OptionsColumn.ReadOnly = true;
            this.colERPSupplier.Visible = true;
            this.colERPSupplier.VisibleIndex = 14;
            // 
            // PriceChangedListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PriceChangedListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colPriceType;
        private DevExpress.XtraGrid.Columns.GridColumn colCategory;
        private DevExpress.XtraGrid.Columns.GridColumn colEffectFromDate;
        private DevExpress.XtraGrid.Columns.GridColumn colEffectEndDate;
        private DevExpress.XtraGrid.Columns.GridColumn colColorRange;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colCup;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colRatio;
        private DevExpress.XtraGrid.Columns.GridColumn colIsMultiPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colMultiPriceStr;
        private DevExpress.XtraGrid.Columns.GridColumn colMIDcSuppRef;
        private DevExpress.XtraGrid.Columns.GridColumn colERPSupplier;


    }
}
