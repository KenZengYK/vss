namespace PH.BasicInfo.UI.TimeElement
{
    partial class SupplierFactoryListForm
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
            this.colERPSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierFactoryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRegionCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescriptionCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCountryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Size = new System.Drawing.Size(1096, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colERPSupplier,
            this.colSupplierFactoryCode,
            this.colDescription,
            this.colDescriptionCN,
            this.colRegionCode,
            this.colCountryCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.SupplierFactory);
            // 
            // colERPSupplier
            // 
            this.colERPSupplier.Caption = "ERP\'s Supplier Code";
            this.colERPSupplier.FieldName = "ERPSupplier";
            this.colERPSupplier.Name = "colERPSupplier";
            this.colERPSupplier.Visible = true;
            this.colERPSupplier.VisibleIndex = 0;
            this.colERPSupplier.Width = 141;
            // 
            // colSupplierFactoryCode
            // 
            this.colSupplierFactoryCode.Caption = "Location of Supplier Factory Code";
            this.colSupplierFactoryCode.FieldName = "SupplierFactoryCode";
            this.colSupplierFactoryCode.Name = "colSupplierFactoryCode";
            this.colSupplierFactoryCode.Visible = true;
            this.colSupplierFactoryCode.VisibleIndex = 1;
            this.colSupplierFactoryCode.Width = 220;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Region or Country(EN)";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 2;
            this.colDescription.Width = 192;
            // 
            // colRegionCode
            // 
            this.colRegionCode.Caption = "Region Cde";
            this.colRegionCode.FieldName = "RegionCode";
            this.colRegionCode.Name = "colRegionCode";
            this.colRegionCode.Visible = true;
            this.colRegionCode.VisibleIndex = 4;
            this.colRegionCode.Width = 101;
            // 
            // colDescriptionCN
            // 
            this.colDescriptionCN.Caption = "Region or Country(CN)";
            this.colDescriptionCN.FieldName = "DescriptionCN";
            this.colDescriptionCN.Name = "colDescriptionCN";
            this.colDescriptionCN.Visible = true;
            this.colDescriptionCN.VisibleIndex = 3;
            this.colDescriptionCN.Width = 220;
            // 
            // colCountryCode
            // 
            this.colCountryCode.Caption = "Country Cde";
            this.colCountryCode.FieldName = "CountryCode";
            this.colCountryCode.Name = "colCountryCode";
            this.colCountryCode.Visible = true;
            this.colCountryCode.VisibleIndex = 5;
            this.colCountryCode.Width = 90;
            // 
            // SupplierFactoryListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SupplierFactoryListForm";
            this.Size = new System.Drawing.Size(1096, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colERPSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierFactoryCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRegionCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDescriptionCN;
        private DevExpress.XtraGrid.Columns.GridColumn colCountryCode;
    }
}
