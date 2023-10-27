namespace PH.MIDc.UI
{
    partial class SampleOrderPODetailListForm
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
            this.ricb_ColoerCategory = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gridColumn_Cup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.gridColumn_Size = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Price = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Amount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Selected = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ribe_Color = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricb_ColoerCategory)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribe_Color)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
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
            this.repositoryItemCheckEdit1,
            this.ricb_ColoerCategory,
            this.repositoryItemTextEdit1,
            this.ribe_Color});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_Color,
            this.gridColumn_Cup,
            this.gridColumn_Size,
            this.gridColumn_Qty,
            this.gridColumn_Price,
            this.gridColumn_Amount,
            this.gridColumn_Selected,
            this.gridColumn1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gridColumn_Color
            // 
            this.gridColumn_Color.Caption = "Color";
            this.gridColumn_Color.ColumnEdit = this.ribe_Color;
            this.gridColumn_Color.FieldName = "Color";
            this.gridColumn_Color.Name = "gridColumn_Color";
            this.gridColumn_Color.Visible = true;
            this.gridColumn_Color.VisibleIndex = 0;
            this.gridColumn_Color.Width = 94;
            // 
            // ricb_ColoerCategory
            // 
            this.ricb_ColoerCategory.AutoHeight = false;
            this.ricb_ColoerCategory.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricb_ColoerCategory.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.ricb_ColoerCategory.Items.AddRange(new object[] {
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
            this.ricb_ColoerCategory.Name = "ricb_ColoerCategory";
            this.ricb_ColoerCategory.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.ricb_ColoerCategory_CloseUp);
            // 
            // gridColumn_Cup
            // 
            this.gridColumn_Cup.Caption = "Cup";
            this.gridColumn_Cup.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn_Cup.FieldName = "Cup";
            this.gridColumn_Cup.Name = "gridColumn_Cup";
            this.gridColumn_Cup.Visible = true;
            this.gridColumn_Cup.VisibleIndex = 1;
            this.gridColumn_Cup.Width = 89;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // gridColumn_Size
            // 
            this.gridColumn_Size.Caption = "Size";
            this.gridColumn_Size.ColumnEdit = this.repositoryItemTextEdit1;
            this.gridColumn_Size.FieldName = "Size";
            this.gridColumn_Size.Name = "gridColumn_Size";
            this.gridColumn_Size.Visible = true;
            this.gridColumn_Size.VisibleIndex = 2;
            this.gridColumn_Size.Width = 86;
            // 
            // gridColumn_Qty
            // 
            this.gridColumn_Qty.Caption = "Qty";
            this.gridColumn_Qty.FieldName = "Qty";
            this.gridColumn_Qty.Name = "gridColumn_Qty";
            this.gridColumn_Qty.Visible = true;
            this.gridColumn_Qty.VisibleIndex = 3;
            this.gridColumn_Qty.Width = 92;
            // 
            // gridColumn_Price
            // 
            this.gridColumn_Price.Caption = "Price";
            this.gridColumn_Price.FieldName = "Price";
            this.gridColumn_Price.Name = "gridColumn_Price";
            this.gridColumn_Price.Visible = true;
            this.gridColumn_Price.VisibleIndex = 4;
            this.gridColumn_Price.Width = 84;
            // 
            // gridColumn_Amount
            // 
            this.gridColumn_Amount.Caption = "Amount";
            this.gridColumn_Amount.FieldName = "CostAmount";
            this.gridColumn_Amount.Name = "gridColumn_Amount";
            this.gridColumn_Amount.OptionsColumn.AllowEdit = false;
            this.gridColumn_Amount.Visible = true;
            this.gridColumn_Amount.VisibleIndex = 6;
            this.gridColumn_Amount.Width = 86;
            // 
            // gridColumn_Selected
            // 
            this.gridColumn_Selected.Caption = "Selected";
            this.gridColumn_Selected.ColumnEdit = this.repositoryItemCheckEdit1;
            this.gridColumn_Selected.FieldName = "Selected";
            this.gridColumn_Selected.Name = "gridColumn_Selected";
            this.gridColumn_Selected.Visible = true;
            this.gridColumn_Selected.VisibleIndex = 7;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Supplier Unit";
            this.gridColumn1.FieldName = "SupplierUnit";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.AllowEdit = false;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 5;
            this.gridColumn1.Width = 97;
            // 
            // ribe_Color
            // 
            this.ribe_Color.AutoHeight = false;
            this.ribe_Color.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribe_Color.Name = "ribe_Color";
            this.ribe_Color.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribe_Color_ButtonClick);
            // 
            // SampleOrderPODetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "SampleOrderPODetailListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SampleOrderPODetailListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricb_ColoerCategory)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribe_Color)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Color;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Cup;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Size;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Qty;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Price;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Amount;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Selected;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        public  DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricb_ColoerCategory;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribe_Color;
    }
}
