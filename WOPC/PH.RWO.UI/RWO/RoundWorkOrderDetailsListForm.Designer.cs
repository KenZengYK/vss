namespace PH.RWO.UI
{
    partial class RoundWorkOrderDetailsListForm
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
            this.ColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Cup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Size = new DevExpress.XtraGrid.Columns.GridColumn();
            this.BulkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SampleQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.SizeOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.CupOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.colRatio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnApplyRatio = new DevExpress.XtraBars.BarButtonItem();
            this.colSizeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustCup = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4,
            this.btnApplyRatio});
            this.objbarManager.MaxItemId = 16;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem3, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnApplyRatio, true)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Load += new System.EventHandler(this.PivotTableDemo_Load);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.ColorCode,
            this.colRatio,
            this.Cup,
            this.Size,
            this.BulkQty,
            this.SampleQty,
            this.CupOrder,
            this.SizeOrder,
            this.colSizeDesc,
            this.colCustCup});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.CupOrder, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.SizeOrder, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // ColorCode
            // 
            this.ColorCode.Caption = "Color Code";
            this.ColorCode.FieldName = "ColorCode";
            this.ColorCode.Name = "ColorCode";
            this.ColorCode.Width = 111;
            // 
            // Cup
            // 
            this.Cup.Caption = "Cup";
            this.Cup.FieldName = "Cup";
            this.Cup.Name = "Cup";
            this.Cup.Visible = true;
            this.Cup.VisibleIndex = 0;
            this.Cup.Width = 69;
            // 
            // Size
            // 
            this.Size.Caption = "Size";
            this.Size.FieldName = "Size";
            this.Size.Name = "Size";
            this.Size.Visible = true;
            this.Size.VisibleIndex = 2;
            this.Size.Width = 73;
            // 
            // BulkQty
            // 
            this.BulkQty.Caption = "Bulk Qty";
            this.BulkQty.FieldName = "BulkQty";
            this.BulkQty.Name = "BulkQty";
            this.BulkQty.ShowButtonMode = DevExpress.XtraGrid.Views.Base.ShowButtonModeEnum.ShowAlways;
            this.BulkQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.BulkQty.Visible = true;
            this.BulkQty.VisibleIndex = 4;
            this.BulkQty.Width = 160;
            // 
            // SampleQty
            // 
            this.SampleQty.Caption = "Sample Qty";
            this.SampleQty.FieldName = "SampleQty";
            this.SampleQty.Name = "SampleQty";
            this.SampleQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.SampleQty.Visible = true;
            this.SampleQty.VisibleIndex = 5;
            this.SampleQty.Width = 120;
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
            this.barButtonItem3.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem3_ItemClick);
            // 
            // SizeOrder
            // 
            this.SizeOrder.Caption = "SizeOrder";
            this.SizeOrder.FieldName = "SizeOrder";
            this.SizeOrder.Name = "SizeOrder";
            this.SizeOrder.Width = 20;
            // 
            // CupOrder
            // 
            this.CupOrder.Caption = "CupOrder";
            this.CupOrder.FieldName = "CupOrder";
            this.CupOrder.Name = "CupOrder";
            this.CupOrder.Width = 20;
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Id = 14;
            this.barButtonItem4.Name = "barButtonItem4";
            // 
            // colRatio
            // 
            this.colRatio.Caption = "Ratio";
            this.colRatio.FieldName = "Ratio";
            this.colRatio.Name = "colRatio";
            // 
            // btnApplyRatio
            // 
            this.btnApplyRatio.Caption = "Apply Ratio";
            this.btnApplyRatio.Id = 15;
            this.btnApplyRatio.Name = "btnApplyRatio";
            this.btnApplyRatio.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnApplyRatio_ItemClick);
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.Caption = "Size Desc";
            this.colSizeDesc.FieldName = "SizeDesc";
            this.colSizeDesc.Name = "colSizeDesc";
            this.colSizeDesc.Visible = true;
            this.colSizeDesc.VisibleIndex = 3;
            this.colSizeDesc.Width = 72;
            // 
            // colCustCup
            // 
            this.colCustCup.Caption = "Cust Cup";
            this.colCustCup.FieldName = "CustCup";
            this.colCustCup.Name = "colCustCup";
            this.colCustCup.Visible = true;
            this.colCustCup.VisibleIndex = 1;
            this.colCustCup.Width = 77;
            // 
            // RoundWorkOrderDetailsListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "RoundWorkOrderDetailsListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn ColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn Cup;
        private DevExpress.XtraGrid.Columns.GridColumn Size;
        private DevExpress.XtraGrid.Columns.GridColumn BulkQty;
        private DevExpress.XtraGrid.Columns.GridColumn SampleQty;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraGrid.Columns.GridColumn SizeOrder;
        private DevExpress.XtraGrid.Columns.GridColumn CupOrder;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        public DevExpress.XtraGrid.Columns.GridColumn colRatio;
        public DevExpress.XtraBars.BarButtonItem btnApplyRatio;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colCustCup;

    }
}
