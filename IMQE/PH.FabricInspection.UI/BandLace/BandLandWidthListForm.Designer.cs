namespace PH.FabricInspection.UI.BandLace
{
    partial class BandLandWidthListForm
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
            this.colSectionNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUsableWidth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSideToSideWidth = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSectionNo,
            this.colUsableWidth,
            this.colSideToSideWidth});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.BandLandWidth);
            // 
            // colSectionNo
            // 
            this.colSectionNo.Caption = "Section No.";
            this.colSectionNo.FieldName = "SectionNo";
            this.colSectionNo.Name = "colSectionNo";
            this.colSectionNo.Visible = true;
            this.colSectionNo.VisibleIndex = 0;
            this.colSectionNo.Width = 86;
            // 
            // colUsableWidth
            // 
            this.colUsableWidth.Caption = "Usable Width";
            this.colUsableWidth.FieldName = "UsableWidth";
            this.colUsableWidth.Name = "colUsableWidth";
            this.colUsableWidth.Visible = true;
            this.colUsableWidth.VisibleIndex = 1;
            this.colUsableWidth.Width = 115;
            // 
            // colSideToSideWidth
            // 
            this.colSideToSideWidth.Caption = "Side To Side Width";
            this.colSideToSideWidth.FieldName = "SideToSideWidth";
            this.colSideToSideWidth.Name = "colSideToSideWidth";
            this.colSideToSideWidth.Visible = true;
            this.colSideToSideWidth.VisibleIndex = 2;
            this.colSideToSideWidth.Width = 128;
            // 
            // BandLandWidthListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "BandLandWidthListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSectionNo;
        private DevExpress.XtraGrid.Columns.GridColumn colUsableWidth;
        private DevExpress.XtraGrid.Columns.GridColumn colSideToSideWidth;
    }
}
