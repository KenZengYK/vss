namespace PH.MIDc.UI
{
    partial class RatioPriceListForm
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
            this.gridColumn_ColorCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemcbb = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gridColumn_Price = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.gridColumn_Ratio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemcbb)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit2)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 18;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.Visible = false;
            // 
            // barBtnFirst
            // 
            this.barBtnFirst.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnPrevious
            // 
            this.barBtnPrevious.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barEdtCurRecNo
            // 
            this.barEdtCurRecNo.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barStcRec
            // 
            this.barStcRec.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnNext
            // 
            this.barBtnNext.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnLast
            // 
            this.barBtnLast.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemcbb,
            this.repositoryItemSpinEdit1,
            this.repositoryItemSpinEdit2});
            this.objListGridControl.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.objListGridControl_KeyPress);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_ColorCategory,
            this.gridColumn_Price,
            this.gridColumn_Ratio,
            this.gridColumn1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn_ColorCategory
            // 
            this.gridColumn_ColorCategory.Caption = "Color Category";
            this.gridColumn_ColorCategory.ColumnEdit = this.repositoryItemcbb;
            this.gridColumn_ColorCategory.FieldName = "ColorCategory";
            this.gridColumn_ColorCategory.Name = "gridColumn_ColorCategory";
            this.gridColumn_ColorCategory.Visible = true;
            this.gridColumn_ColorCategory.VisibleIndex = 2;
            this.gridColumn_ColorCategory.Width = 101;
            // 
            // repositoryItemcbb
            // 
            this.repositoryItemcbb.AutoHeight = false;
            this.repositoryItemcbb.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemcbb.Items.AddRange(new object[] {
            "ALL",
            "WHITE",
            "BLACK",
            "PASTEL",
            "MEDIUM",
            "DARK",
            "2TONE",
            "PRINT",
            "GOLD",
            "SILVER",
            "CLEAR",
            "STDC"});
            this.repositoryItemcbb.Name = "repositoryItemcbb";
            // 
            // gridColumn_Price
            // 
            this.gridColumn_Price.Caption = "Price";
            this.gridColumn_Price.FieldName = "Price";
            this.gridColumn_Price.Name = "gridColumn_Price";
            this.gridColumn_Price.Visible = true;
            this.gridColumn_Price.VisibleIndex = 0;
            this.gridColumn_Price.Width = 62;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // gridColumn_Ratio
            // 
            this.gridColumn_Ratio.Caption = "Ratio";
            this.gridColumn_Ratio.FieldName = "Ratio";
            this.gridColumn_Ratio.Name = "gridColumn_Ratio";
            this.gridColumn_Ratio.Visible = true;
            this.gridColumn_Ratio.VisibleIndex = 1;
            this.gridColumn_Ratio.Width = 49;
            // 
            // repositoryItemSpinEdit2
            // 
            this.repositoryItemSpinEdit2.AutoHeight = false;
            this.repositoryItemSpinEdit2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemSpinEdit2.Name = "repositoryItemSpinEdit2";
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "id";
            this.gridColumn1.FieldName = "Id";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Width = 103;
            // 
            // RatioPriceListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "RatioPriceListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemcbb)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit2)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public DevExpress.XtraGrid.Columns.GridColumn gridColumn_ColorCategory;
        public DevExpress.XtraGrid.Columns.GridColumn gridColumn_Price;
        public DevExpress.XtraGrid.Columns.GridColumn gridColumn_Ratio;
        public DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemcbb;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit2;
    }
}
