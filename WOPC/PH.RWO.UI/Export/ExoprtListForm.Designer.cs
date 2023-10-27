namespace PH.RWO.UI
{
    partial class ExportListForm
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
            this.PoNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.WOc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ShipDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ManufactureCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Color = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.Size = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Cup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.StyleCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.BulkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CustomerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Unit = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4});
            this.objbarManager.MaxItemId = 15;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.PoNo,
            this.WOc,
            this.ExFtyDate,
            this.ShipDate,
            this.ManufactureCode,
            this.Color,
            this.Size,
            this.Cup,
            this.StyleCode,
            this.BulkQty,
            this.CustomerCode,
            this.Unit});
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Cup, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Size, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // PoNo
            // 
            this.PoNo.Caption = "PoNo";
            this.PoNo.FieldName = "PoNo";
            this.PoNo.Name = "PoNo";
            this.PoNo.Visible = true;
            this.PoNo.VisibleIndex = 0;
            this.PoNo.Width = 94;
            // 
            // WOc
            // 
            this.WOc.Caption = "WOc";
            this.WOc.FieldName = "WOc";
            this.WOc.Name = "WOc";
            this.WOc.Visible = true;
            this.WOc.VisibleIndex = 1;
            this.WOc.Width = 111;
            // 
            // ExFtyDate
            // 
            this.ExFtyDate.Caption = "ExFtyDate";
            this.ExFtyDate.FieldName = "ExftyDate";
            this.ExFtyDate.Name = "ExFtyDate";
            this.ExFtyDate.Visible = true;
            this.ExFtyDate.VisibleIndex = 2;
            this.ExFtyDate.Width = 84;
            // 
            // ShipDate
            // 
            this.ShipDate.Caption = "ShipDate";
            this.ShipDate.FieldName = "ShipDate";
            this.ShipDate.Name = "ShipDate";
            this.ShipDate.Visible = true;
            this.ShipDate.VisibleIndex = 3;
            this.ShipDate.Width = 77;
            // 
            // ManufactureCode
            // 
            this.ManufactureCode.Caption = "ManufactureCode";
            this.ManufactureCode.FieldName = "ManufactureCode";
            this.ManufactureCode.Name = "ManufactureCode";
            this.ManufactureCode.SummaryItem.FieldName = "BulkQty";
            this.ManufactureCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.ManufactureCode.Visible = true;
            this.ManufactureCode.VisibleIndex = 4;
            this.ManufactureCode.Width = 105;
            // 
            // Color
            // 
            this.Color.Caption = "Color";
            this.Color.FieldName = "ColorCode";
            this.Color.Name = "Color";
            this.Color.SummaryItem.FieldName = "SampleQty";
            this.Color.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.Color.Visible = true;
            this.Color.VisibleIndex = 5;
            this.Color.Width = 62;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Test";
            this.barButtonItem1.Id = 10;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "Import Data";
            this.barButtonItem2.Id = 11;
            this.barButtonItem2.Name = "barButtonItem2";
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "Import Data";
            this.barButtonItem3.Id = 12;
            this.barButtonItem3.Name = "barButtonItem3";
            // 
            // Size
            // 
            this.Size.Caption = "Size";
            this.Size.FieldName = "Size";
            this.Size.Name = "Size";
            this.Size.Visible = true;
            this.Size.VisibleIndex = 6;
            this.Size.Width = 50;
            // 
            // Cup
            // 
            this.Cup.Caption = "Cup";
            this.Cup.FieldName = "Cup";
            this.Cup.Name = "Cup";
            this.Cup.Visible = true;
            this.Cup.VisibleIndex = 7;
            this.Cup.Width = 80;
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Id = 14;
            this.barButtonItem4.Name = "barButtonItem4";
            // 
            // StyleCode
            // 
            this.StyleCode.Caption = "StyleCode";
            this.StyleCode.FieldName = "CustStyle";
            this.StyleCode.Name = "StyleCode";
            this.StyleCode.Visible = true;
            this.StyleCode.VisibleIndex = 8;
            // 
            // BulkQty
            // 
            this.BulkQty.Caption = "BulkQty";
            this.BulkQty.FieldName = "BulkQty";
            this.BulkQty.Name = "BulkQty";
            this.BulkQty.Visible = true;
            this.BulkQty.VisibleIndex = 9;
            // 
            // CustomerCode
            // 
            this.CustomerCode.Caption = "CustomerCode";
            this.CustomerCode.FieldName = "CustomerCode";
            this.CustomerCode.Name = "CustomerCode";
            this.CustomerCode.Visible = true;
            this.CustomerCode.VisibleIndex = 10;
            // 
            // Unit
            // 
            this.Unit.Caption = "Unit";
            this.Unit.FieldName = "Unit";
            this.Unit.Name = "Unit";
            this.Unit.Visible = true;
            this.Unit.VisibleIndex = 11;
            // 
            // ExportListForm
            // 
            this.AllowGridEdit = true;
            ////this.AllowKeyPress = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ExportListForm";
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn PoNo;
        private DevExpress.XtraGrid.Columns.GridColumn WOc;
        private DevExpress.XtraGrid.Columns.GridColumn ExFtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn ShipDate;
        private DevExpress.XtraGrid.Columns.GridColumn ManufactureCode;
        private DevExpress.XtraGrid.Columns.GridColumn Color;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraGrid.Columns.GridColumn Size;
        private DevExpress.XtraGrid.Columns.GridColumn Cup;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraGrid.Columns.GridColumn StyleCode;
        private DevExpress.XtraGrid.Columns.GridColumn BulkQty;
        private DevExpress.XtraGrid.Columns.GridColumn CustomerCode;
        private DevExpress.XtraGrid.Columns.GridColumn Unit;

    }
}
