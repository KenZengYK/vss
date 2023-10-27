namespace PH.SPC.UI.Setup
{
    partial class ProductCodeListForm
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
            this.colDataCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescCN = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 45;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDataCode,
            this.colDescEN,
            this.colDescCN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colDataCode
            // 
            this.colDataCode.Caption = "Name";
            this.colDataCode.FieldName = "DataCode";
            this.colDataCode.Name = "colDataCode";
            this.colDataCode.OptionsColumn.AllowEdit = false;
            this.colDataCode.Visible = true;
            this.colDataCode.VisibleIndex = 0;
            this.colDataCode.Width = 113;
            // 
            // colDescEN
            // 
            this.colDescEN.Caption = "Desc. (EN)";
            this.colDescEN.FieldName = "Description";
            this.colDescEN.Name = "colDescEN";
            this.colDescEN.OptionsColumn.AllowEdit = false;
            this.colDescEN.Visible = true;
            this.colDescEN.VisibleIndex = 1;
            this.colDescEN.Width = 155;
            // 
            // colDescCN
            // 
            this.colDescCN.Caption = "Desc. (CN)";
            this.colDescCN.FieldName = "DataName";
            this.colDescCN.Name = "colDescCN";
            this.colDescCN.OptionsColumn.AllowEdit = false;
            this.colDescCN.Visible = true;
            this.colDescCN.VisibleIndex = 2;
            this.colDescCN.Width = 167;
            // 
            // ProductCodeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ProductCodeListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDataCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDescEN;
        private DevExpress.XtraGrid.Columns.GridColumn colDescCN;
    }
}
