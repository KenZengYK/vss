namespace PH.MIDc.UI
{
    partial class ShipmentLeadtimeListForm
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
            this.gridColumn_ShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Factory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Leadtime = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.gridColumn_MaterialGroup,
            this.gridColumn_ShipMode,
            this.gridColumn_Factory,
            this.gridColumn_Leadtime});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // gridColumn_MaterialGroup
            // 
            this.gridColumn_MaterialGroup.Caption = "Material Group";
            this.gridColumn_MaterialGroup.FieldName = "MaterialGroup";
            this.gridColumn_MaterialGroup.Name = "gridColumn_MaterialGroup";
            this.gridColumn_MaterialGroup.Visible = true;
            this.gridColumn_MaterialGroup.VisibleIndex = 0;
            this.gridColumn_MaterialGroup.Width = 133;
            // 
            // gridColumn_ShipMode
            // 
            this.gridColumn_ShipMode.Caption = "Ship Mode";
            this.gridColumn_ShipMode.FieldName = "ShipMode";
            this.gridColumn_ShipMode.Name = "gridColumn_ShipMode";
            this.gridColumn_ShipMode.Visible = true;
            this.gridColumn_ShipMode.VisibleIndex = 1;
            this.gridColumn_ShipMode.Width = 123;
            // 
            // gridColumn_Factory
            // 
            this.gridColumn_Factory.Caption = "Factory";
            this.gridColumn_Factory.FieldName = "Factory";
            this.gridColumn_Factory.Name = "gridColumn_Factory";
            this.gridColumn_Factory.Visible = true;
            this.gridColumn_Factory.VisibleIndex = 2;
            this.gridColumn_Factory.Width = 126;
            // 
            // gridColumn_Leadtime
            // 
            this.gridColumn_Leadtime.Caption = "Leadtime";
            this.gridColumn_Leadtime.FieldName = "Leadtime";
            this.gridColumn_Leadtime.Name = "gridColumn_Leadtime";
            this.gridColumn_Leadtime.Visible = true;
            this.gridColumn_Leadtime.VisibleIndex = 3;
            this.gridColumn_Leadtime.Width = 104;
            // 
            // ShipmentLeadtimeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "ShipmentLeadtimeListForm";
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_MaterialGroup;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_ShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Factory;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Leadtime;
    }
}
