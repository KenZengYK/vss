namespace PH.RWO.UI
{
    partial class StyleRationListForm
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
            this.colCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSytleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRatio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CupOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.Size = new System.Drawing.Size(803, 274);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.CupOrder,
            this.colSizeOrder,
            this.colSytleNo,
            this.colColorCode,
            this.colCup,
            this.colSize,
            this.colRatio});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.CupOrder, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSizeOrder, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // colCup
            // 
            this.colCup.Caption = "Cup";
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.Visible = true;
            this.colCup.VisibleIndex = 0;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.Visible = true;
            this.colSize.VisibleIndex = 1;
            this.colSize.Width = 69;
            // 
            // colSytleNo
            // 
            this.colSytleNo.Caption = "SytleNo";
            this.colSytleNo.FieldName = "SytleNo";
            this.colSytleNo.Name = "colSytleNo";
            this.colSytleNo.Width = 145;
            // 
            // colRatio
            // 
            this.colRatio.Caption = "Ratio";
            this.colRatio.FieldName = "Ratio";
            this.colRatio.Name = "colRatio";
            this.colRatio.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colRatio.Visible = true;
            this.colRatio.VisibleIndex = 2;
            this.colRatio.Width = 96;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Clr#";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            // 
            // CupOrder
            // 
            this.CupOrder.Caption = "Cup Order";
            this.CupOrder.FieldName = "CupOrder";
            this.CupOrder.Name = "CupOrder";
            this.CupOrder.SortMode = DevExpress.XtraGrid.ColumnSortMode.Value;
            // 
            // colSizeOrder
            // 
            this.colSizeOrder.Caption = "Size Order";
            this.colSizeOrder.FieldName = "SizeOrder";
            this.colSizeOrder.Name = "colSizeOrder";
            this.colSizeOrder.SortMode = DevExpress.XtraGrid.ColumnSortMode.Value;
            // 
            // StyleRationListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleRationListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCup;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colSytleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colRatio;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn CupOrder;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeOrder;
    }
}
