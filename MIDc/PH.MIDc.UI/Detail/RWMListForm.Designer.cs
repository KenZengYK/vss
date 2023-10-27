namespace PH.MIDc.UI
{
    partial class RWMListForm
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
            this.gridColumn_Color = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Size = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_RWMType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.gridColumn_Color,
            this.gridColumn_Size,
            this.gridColumn_RWMType,
            this.gridColumn_Qty});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // gridColumn_Color
            // 
            this.gridColumn_Color.Caption = "Color";
            this.gridColumn_Color.FieldName = "Color";
            this.gridColumn_Color.Name = "gridColumn_Color";
            this.gridColumn_Color.Visible = true;
            this.gridColumn_Color.VisibleIndex = 0;
            this.gridColumn_Color.Width = 81;
            // 
            // gridColumn_Size
            // 
            this.gridColumn_Size.Caption = "Size";
            this.gridColumn_Size.FieldName = "Size";
            this.gridColumn_Size.Name = "gridColumn_Size";
            this.gridColumn_Size.Visible = true;
            this.gridColumn_Size.VisibleIndex = 1;
            // 
            // gridColumn_RWMType
            // 
            this.gridColumn_RWMType.Caption = "RWM Type";
            this.gridColumn_RWMType.FieldName = "RWMType";
            this.gridColumn_RWMType.Name = "gridColumn_RWMType";
            this.gridColumn_RWMType.Visible = true;
            this.gridColumn_RWMType.VisibleIndex = 2;
            this.gridColumn_RWMType.Width = 94;
            // 
            // gridColumn_Qty
            // 
            this.gridColumn_Qty.Caption = "Qty";
            this.gridColumn_Qty.FieldName = "Qty";
            this.gridColumn_Qty.Name = "gridColumn_Qty";
            this.gridColumn_Qty.Visible = true;
            this.gridColumn_Qty.VisibleIndex = 3;
            this.gridColumn_Qty.Width = 84;
            // 
            // RWMListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "RWMListForm";
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Color;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Size;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_RWMType;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_Qty;
    }
}
