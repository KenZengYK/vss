namespace PH.MIDc.UI
{
    partial class SpecListForm
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
            this.gridColumn_Color = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_ColorCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrintSheet2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrintSheet2,
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 14;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintSheet2, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Size = new System.Drawing.Size(923, 273);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_Color,
            this.gridColumn_ColorCategory});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gridColumn_Color
            // 
            this.gridColumn_Color.Caption = "Color";
            this.gridColumn_Color.FieldName = "Color";
            this.gridColumn_Color.Name = "gridColumn_Color";
            this.gridColumn_Color.Visible = true;
            this.gridColumn_Color.VisibleIndex = 0;
            // 
            // gridColumn_ColorCategory
            // 
            this.gridColumn_ColorCategory.Caption = "Color Category";
            this.gridColumn_ColorCategory.FieldName = "ColorCategory";
            this.gridColumn_ColorCategory.Name = "gridColumn_ColorCategory";
            this.gridColumn_ColorCategory.Visible = true;
            this.gridColumn_ColorCategory.VisibleIndex = 1;
            this.gridColumn_ColorCategory.Width = 113;
            // 
            // btnPrintSheet2
            // 
            this.btnPrintSheet2.Caption = "Print Sheet2(Color Dependent)";
            this.btnPrintSheet2.Id = 12;
            this.btnPrintSheet2.Name = "btnPrintSheet2";
            this.btnPrintSheet2.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnPrintSheet2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrintSheet2_ItemClick);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Print Sheet3(Color Dependent)";
            this.barButtonItem1.Id = 13;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // SpecListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "SpecListForm";
            this.Size = new System.Drawing.Size(923, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Color;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_ColorCategory;
        private DevExpress.XtraBars.BarButtonItem btnPrintSheet2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
    }
}
