namespace PH.MIDc.UI
{
    partial class CustomerBrandedListForm
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
            this.ricb_update = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gridColumn_Customer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Branded = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridColumn_Selection = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemRadioGroup1 = new DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup();
            this.gridColumn_Price = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricb_update)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_Customer,
            this.gridColumn_Branded,
            this.gridColumn_Selection,
            this.gridColumn_Price});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ricb_update,
            this.repositoryItemCheckEdit1,
            this.repositoryItemRadioGroup1});
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // repositoryItemComboBox1
            // 
            this.ricb_update.AutoHeight = false;
            this.ricb_update.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricb_update.Name = "repositoryItemComboBox1";
            // 
            // gridColumn_Customer
            // 
            this.gridColumn_Customer.Caption = "Customer";
            this.gridColumn_Customer.ColumnEdit = this.ricb_update;
            this.gridColumn_Customer.FieldName = "Customer";
            this.gridColumn_Customer.Name = "gridColumn_Customer";
            this.gridColumn_Customer.Visible = true;
            this.gridColumn_Customer.VisibleIndex = 0;
            this.gridColumn_Customer.Width = 89;
            // 
            // gridColumn_Branded
            // 
            this.gridColumn_Branded.Caption = "Branded";
            this.gridColumn_Branded.ColumnEdit = this.repositoryItemCheckEdit1;
            this.gridColumn_Branded.FieldName = "Branded";
            this.gridColumn_Branded.Name = "gridColumn_Branded";
            this.gridColumn_Branded.Visible = true;
            this.gridColumn_Branded.VisibleIndex = 1;
            this.gridColumn_Branded.Width = 93;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridColumn_Selection
            // 
            this.gridColumn_Selection.Caption = "Selection";
            this.gridColumn_Selection.ColumnEdit = this.repositoryItemRadioGroup1;
            this.gridColumn_Selection.FieldName = "Selection";
            this.gridColumn_Selection.Name = "gridColumn_Selection";
            this.gridColumn_Selection.Visible = true;
            this.gridColumn_Selection.VisibleIndex = 2;
            this.gridColumn_Selection.Width = 435;
            // 
            // repositoryItemRadioGroup1
            // 
            this.repositoryItemRadioGroup1.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "material assigned by customer"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "material proposed by P.H.")});
            this.repositoryItemRadioGroup1.Name = "repositoryItemRadioGroup1";
            // 
            // gridColumn_Price
            // 
            this.gridColumn_Price.Caption = "Price";
            this.gridColumn_Price.FieldName = "Price";
            this.gridColumn_Price.Name = "gridColumn_Price";
            this.gridColumn_Price.Visible = true;
            this.gridColumn_Price.VisibleIndex = 3;
            this.gridColumn_Price.Width = 124;
            // 
            // CustomerBrandedListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            //this.CurDataMember = "CustomerBrandeds";
            this.Name = "CustomerBrandedListForm";
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricb_update)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Customer;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Branded;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricb_update;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Selection;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Price;
        private DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup repositoryItemRadioGroup1;
    }
}
