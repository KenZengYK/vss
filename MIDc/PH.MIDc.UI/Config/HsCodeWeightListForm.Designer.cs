namespace PH.MIDc.UI
{
    partial class HsCodeWeightListForm
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
            this.gridColumn_MaterialType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_MaterialCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_MaterialGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_HsCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_WeightHsCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn_MaterialType,
            this.gridColumn_MaterialCode,
            this.gridColumn_MaterialGroup,
            this.gridColumn_HsCode,
            this.gridColumn_WeightHsCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // gridColumn_MaterialType
            // 
            this.gridColumn_MaterialType.Caption = "Material Type";
            this.gridColumn_MaterialType.FieldName = "MaterialType";
            this.gridColumn_MaterialType.Name = "gridColumn_MaterialType";
            this.gridColumn_MaterialType.Visible = true;
            this.gridColumn_MaterialType.VisibleIndex = 0;
            this.gridColumn_MaterialType.Width = 108;
            // 
            // gridColumn_MaterialCode
            // 
            this.gridColumn_MaterialCode.Caption = "Material Code";
            this.gridColumn_MaterialCode.FieldName = "MaterialCode";
            this.gridColumn_MaterialCode.Name = "gridColumn_MaterialCode";
            this.gridColumn_MaterialCode.Visible = true;
            this.gridColumn_MaterialCode.VisibleIndex = 1;
            this.gridColumn_MaterialCode.Width = 131;
            // 
            // gridColumn_MaterialGroup
            // 
            this.gridColumn_MaterialGroup.Caption = "Material Group";
            this.gridColumn_MaterialGroup.FieldName = "MaterialGroup";
            this.gridColumn_MaterialGroup.Name = "gridColumn_MaterialGroup";
            this.gridColumn_MaterialGroup.Visible = true;
            this.gridColumn_MaterialGroup.VisibleIndex = 2;
            this.gridColumn_MaterialGroup.Width = 118;
            // 
            // gridColumn_HsCode
            // 
            this.gridColumn_HsCode.Caption = "H.S. Code";
            this.gridColumn_HsCode.FieldName = "HsCode";
            this.gridColumn_HsCode.Name = "gridColumn_HsCode";
            this.gridColumn_HsCode.Visible = true;
            this.gridColumn_HsCode.VisibleIndex = 3;
            this.gridColumn_HsCode.Width = 110;
            // 
            // gridColumn_WeightHsCode
            // 
            this.gridColumn_WeightHsCode.Caption = "Weight(KGS/Unit)";
            this.gridColumn_WeightHsCode.FieldName = "WeightHsCode";
            this.gridColumn_WeightHsCode.Name = "gridColumn_WeightHsCode";
            this.gridColumn_WeightHsCode.Visible = true;
            this.gridColumn_WeightHsCode.VisibleIndex = 4;
            this.gridColumn_WeightHsCode.Width = 143;
            // 
            // HsCodeWeightListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "HsCodeWeightListForm";
            this.Load += new System.EventHandler(this.HsCodeWeightListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_MaterialType;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_MaterialCode;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_MaterialGroup;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_HsCode;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_WeightHsCode;

    }
}
