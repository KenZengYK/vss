namespace PH.BasicInfo.UI.TimeElement
{
    partial class SupplierProductRangeListForm
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
            this.gridColumn_MaterialGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_ProductRange = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_IsSelect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Description = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_MaterialGroup,
            this.gridColumn_ProductRange,
            this.gridColumn_IsSelect,
            this.gridColumn_Description});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gridColumn_MaterialGroup
            // 
            this.gridColumn_MaterialGroup.Caption = "Material Group";
            this.gridColumn_MaterialGroup.FieldName = "MaterialGroup";
            this.gridColumn_MaterialGroup.Name = "gridColumn_MaterialGroup";
            this.gridColumn_MaterialGroup.Width = 113;
            // 
            // gridColumn_ProductRange
            // 
            this.gridColumn_ProductRange.Caption = "Product Range";
            this.gridColumn_ProductRange.FieldName = "ProductRange";
            this.gridColumn_ProductRange.Name = "gridColumn_ProductRange";
            this.gridColumn_ProductRange.Visible = true;
            this.gridColumn_ProductRange.VisibleIndex = 1;
            this.gridColumn_ProductRange.Width = 131;
            // 
            // gridColumn_IsSelect
            // 
            this.gridColumn_IsSelect.Caption = "IsSelect";
            this.gridColumn_IsSelect.FieldName = "IsSelect";
            this.gridColumn_IsSelect.Name = "gridColumn_IsSelect";
            this.gridColumn_IsSelect.Visible = true;
            this.gridColumn_IsSelect.VisibleIndex = 0;
            // 
            // gridColumn_Description
            // 
            this.gridColumn_Description.Caption = "Description";
            this.gridColumn_Description.FieldName = "Description";
            this.gridColumn_Description.Name = "gridColumn_Description";
            this.gridColumn_Description.Width = 269;
            // 
            // SupplierProductRangeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "SupplierProductRangeListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_MaterialGroup;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_ProductRange;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_IsSelect;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Description;
    }
}
