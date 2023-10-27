namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    partial class sBandLandSkewnessBowListForm
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
            this.colMeasureSkewnessDistanceCD = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.colMeasureSkewnessDistanceCD});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.BandLandSkewnessBow);
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
            // colMeasureSkewnessDistanceCD
            // 
            this.colMeasureSkewnessDistanceCD.Caption = "Meas. Skewness Distance (CD)";
            this.colMeasureSkewnessDistanceCD.FieldName = "MeasureSkewnessDistanceCD";
            this.colMeasureSkewnessDistanceCD.Name = "colMeasureSkewnessDistanceCD";
            this.colMeasureSkewnessDistanceCD.Visible = true;
            this.colMeasureSkewnessDistanceCD.VisibleIndex = 1;
            this.colMeasureSkewnessDistanceCD.Width = 219;
            // 
            // BandLandSkewnessBowListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "BandLandSkewnessBowListForm";
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
        private DevExpress.XtraGrid.Columns.GridColumn colMeasureSkewnessDistanceCD;
    }
}
