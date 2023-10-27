namespace PH.HDO.UI.InputOrOutStock
{
    partial class StockOutListFrm
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
            this.colDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPO_number = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colInvoice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProject_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterial_name = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterial_Art = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterial_Group = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceived = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLot_no = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotal_THB = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUSE_FULL = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLoc = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.HDO.BO.Stock_Out);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(1592, 414);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDate,
            this.colPO_number,
            this.colInvoice,
            this.colSupplier,
            this.colProject_No,
            this.colMaterial_name,
            this.colMaterial_Art,
            this.colMaterial_Group,
            this.colType,
            this.colReceived,
            this.colColor,
            this.colSize,
            this.colLot_no,
            this.colQty,
            this.colUom,
            this.colPrice,
            this.colCurrency,
            this.colTotal,
            this.colRate,
            this.colTotal_THB,
            this.colUSE_FULL,
            this.colLoc});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.OptionsView.ShowGroupPanel = false;
            // 
            // colDate
            // 
            this.colDate.Caption = "Date";
            this.colDate.FieldName = "Date";
            this.colDate.Name = "colDate";
            this.colDate.Visible = true;
            this.colDate.VisibleIndex = 0;
            // 
            // colPO_number
            // 
            this.colPO_number.Caption = "PO number";
            this.colPO_number.FieldName = "PO_number";
            this.colPO_number.Name = "colPO_number";
            this.colPO_number.Visible = true;
            this.colPO_number.VisibleIndex = 1;
            // 
            // colInvoice
            // 
            this.colInvoice.Caption = "Invoice";
            this.colInvoice.FieldName = "Invoice";
            this.colInvoice.Name = "colInvoice";
            this.colInvoice.Visible = true;
            this.colInvoice.VisibleIndex = 2;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supplier";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.Visible = true;
            this.colSupplier.VisibleIndex = 3;
            // 
            // colProject_No
            // 
            this.colProject_No.Caption = "Project No";
            this.colProject_No.FieldName = "Project_No";
            this.colProject_No.Name = "colProject_No";
            this.colProject_No.Visible = true;
            this.colProject_No.VisibleIndex = 4;
            // 
            // colMaterial_name
            // 
            this.colMaterial_name.Caption = "Material name";
            this.colMaterial_name.FieldName = "Material_name";
            this.colMaterial_name.Name = "colMaterial_name";
            this.colMaterial_name.Visible = true;
            this.colMaterial_name.VisibleIndex = 5;
            // 
            // colMaterial_Art
            // 
            this.colMaterial_Art.Caption = "Material Art";
            this.colMaterial_Art.FieldName = "Material_Art";
            this.colMaterial_Art.Name = "colMaterial_Art";
            this.colMaterial_Art.Visible = true;
            this.colMaterial_Art.VisibleIndex = 6;
            // 
            // colMaterial_Group
            // 
            this.colMaterial_Group.Caption = "Material Group";
            this.colMaterial_Group.FieldName = "Material_Group";
            this.colMaterial_Group.Name = "colMaterial_Group";
            this.colMaterial_Group.Visible = true;
            this.colMaterial_Group.VisibleIndex = 7;
            // 
            // colType
            // 
            this.colType.Caption = "Type";
            this.colType.FieldName = "Type";
            this.colType.Name = "colType";
            this.colType.Visible = true;
            this.colType.VisibleIndex = 8;
            // 
            // colReceived
            // 
            this.colReceived.Caption = "Received";
            this.colReceived.FieldName = "Received";
            this.colReceived.Name = "colReceived";
            this.colReceived.Visible = true;
            this.colReceived.VisibleIndex = 9;
            // 
            // colColor
            // 
            this.colColor.Caption = "Color";
            this.colColor.FieldName = "Color";
            this.colColor.Name = "colColor";
            this.colColor.Visible = true;
            this.colColor.VisibleIndex = 10;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.Visible = true;
            this.colSize.VisibleIndex = 11;
            // 
            // colLot_no
            // 
            this.colLot_no.Caption = "Lot no";
            this.colLot_no.FieldName = "Lot_no";
            this.colLot_no.Name = "colLot_no";
            this.colLot_no.Visible = true;
            this.colLot_no.VisibleIndex = 12;
            // 
            // colQty
            // 
            this.colQty.Caption = "Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 13;
            // 
            // colUom
            // 
            this.colUom.Caption = "Uom";
            this.colUom.FieldName = "Uom";
            this.colUom.Name = "colUom";
            this.colUom.Visible = true;
            this.colUom.VisibleIndex = 14;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 15;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Currency";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 16;
            // 
            // colTotal
            // 
            this.colTotal.Caption = "Total";
            this.colTotal.FieldName = "Total";
            this.colTotal.Name = "colTotal";
            this.colTotal.SummaryItem.DisplayFormat = "{0:N3}";
            this.colTotal.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colTotal.Visible = true;
            this.colTotal.VisibleIndex = 17;
            // 
            // colRate
            // 
            this.colRate.Caption = "Rate";
            this.colRate.FieldName = "Rate";
            this.colRate.Name = "colRate";
            this.colRate.Visible = true;
            this.colRate.VisibleIndex = 18;
            // 
            // colTotal_THB
            // 
            this.colTotal_THB.Caption = "Total THB";
            this.colTotal_THB.FieldName = "Total_THB";
            this.colTotal_THB.Name = "colTotal_THB";
            this.colTotal_THB.SummaryItem.DisplayFormat = "{0:N3}";
            this.colTotal_THB.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colTotal_THB.Visible = true;
            this.colTotal_THB.VisibleIndex = 19;
            // 
            // colUSE_FULL
            // 
            this.colUSE_FULL.Caption = "USE FULL";
            this.colUSE_FULL.FieldName = "USE_FULL";
            this.colUSE_FULL.Name = "colUSE_FULL";
            this.colUSE_FULL.Visible = true;
            this.colUSE_FULL.VisibleIndex = 20;
            // 
            // colLoc
            // 
            this.colLoc.Caption = "Loc";
            this.colLoc.FieldName = "Loc";
            this.colLoc.Name = "colLoc";
            this.colLoc.Visible = true;
            this.colLoc.VisibleIndex = 21;
            // 
            // StockOutListFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StockOutListFrm";
            this.Size = new System.Drawing.Size(1592, 441);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPO_number;
        private DevExpress.XtraGrid.Columns.GridColumn colInvoice;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplier;
        private DevExpress.XtraGrid.Columns.GridColumn colProject_No;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterial_name;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterial_Art;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterial_Group;
        private DevExpress.XtraGrid.Columns.GridColumn colType;
        private DevExpress.XtraGrid.Columns.GridColumn colReceived;
        private DevExpress.XtraGrid.Columns.GridColumn colColor;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colLot_no;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraGrid.Columns.GridColumn colUom;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colTotal;
        private DevExpress.XtraGrid.Columns.GridColumn colRate;
        private DevExpress.XtraGrid.Columns.GridColumn colTotal_THB;
        private DevExpress.XtraGrid.Columns.GridColumn colUSE_FULL;
        private DevExpress.XtraGrid.Columns.GridColumn colLoc;
    }
}
