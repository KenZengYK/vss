namespace PH.LWPM.UI.MC
{
    partial class LCShipmentDateListForm
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
            this.colVendorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectionDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipmentDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVendorName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnGetData = new DevExpress.XtraBars.BarButtonItem();
            this.colMCType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWCategoryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWGroupCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPOIssueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colETD = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnGetData});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnGetData, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1220, 409);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 60;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colMCType,
            this.colProjectionDate,
            this.colPONO,
            this.colShipmentDate,
            this.colVendorCode,
            this.colVendorName,
            this.colPrice,
            this.colCurrency,
            this.colQty,
            this.colHWCategoryCode,
            this.colHWGroupCode,
            this.colPOIssueDate,
            this.colETD,
            this.colHWTypeNameEN,
            this.gridColumn2});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(1374, 560, 216, 201);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.objListGridView_CustomDrawCell);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.LCShipmentDate);
            // 
            // colVendorCode
            // 
            this.colVendorCode.Caption = "Vendor Code";
            this.colVendorCode.FieldName = "VendorCode";
            this.colVendorCode.Name = "colVendorCode";
            this.colVendorCode.OptionsColumn.AllowEdit = false;
            this.colVendorCode.Visible = true;
            this.colVendorCode.VisibleIndex = 13;
            this.colVendorCode.Width = 98;
            // 
            // colProjectionDate
            // 
            this.colProjectionDate.Caption = "Project stk-in dd";
            this.colProjectionDate.DisplayFormat.FormatString = "yy-MM-dd";
            this.colProjectionDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colProjectionDate.FieldName = "ProjectStockInDate";
            this.colProjectionDate.Name = "colProjectionDate";
            this.colProjectionDate.OptionsColumn.AllowEdit = false;
            this.colProjectionDate.Visible = true;
            this.colProjectionDate.VisibleIndex = 11;
            this.colProjectionDate.Width = 68;
            // 
            // colShipmentDate
            // 
            this.colShipmentDate.Caption = "Actual stk-in dd (Flow3)";
            this.colShipmentDate.DisplayFormat.FormatString = "yy-MM-dd";
            this.colShipmentDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colShipmentDate.FieldName = "ActualStockInDate";
            this.colShipmentDate.Name = "colShipmentDate";
            this.colShipmentDate.Visible = true;
            this.colShipmentDate.VisibleIndex = 12;
            this.colShipmentDate.Width = 76;
            // 
            // colVendorName
            // 
            this.colVendorName.Caption = "Vendor Short Name";
            this.colVendorName.FieldName = "VendorName";
            this.colVendorName.Name = "colVendorName";
            this.colVendorName.OptionsColumn.AllowEdit = false;
            this.colVendorName.Visible = true;
            this.colVendorName.VisibleIndex = 14;
            this.colVendorName.Width = 264;
            // 
            // barBtnGetData
            // 
            this.barBtnGetData.Caption = "Get Data";
            this.barBtnGetData.Id = 61;
            this.barBtnGetData.Name = "barBtnGetData";
            this.barBtnGetData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnGetData_ItemClick);
            // 
            // colMCType
            // 
            this.colMCType.Caption = "HW Type Code";
            this.colMCType.FieldName = "MCType";
            this.colMCType.Name = "colMCType";
            this.colMCType.Visible = true;
            this.colMCType.VisibleIndex = 4;
            this.colMCType.Width = 66;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO#";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 0;
            this.colPONO.Width = 92;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "PO Unit Px";
            this.colPrice.DisplayFormat.FormatString = "N2";
            this.colPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 9;
            this.colPrice.Width = 54;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Curr";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.VisibleIndex = 8;
            this.colCurrency.Width = 44;
            // 
            // colQty
            // 
            this.colQty.Caption = "Item Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 7;
            this.colQty.Width = 56;
            // 
            // colHWCategoryCode
            // 
            this.colHWCategoryCode.Caption = "HW Cat. Code";
            this.colHWCategoryCode.FieldName = "HWCategoryCode";
            this.colHWCategoryCode.Name = "colHWCategoryCode";
            this.colHWCategoryCode.Visible = true;
            this.colHWCategoryCode.VisibleIndex = 2;
            this.colHWCategoryCode.Width = 55;
            // 
            // colHWGroupCode
            // 
            this.colHWGroupCode.Caption = "HW Grp Code";
            this.colHWGroupCode.FieldName = "HWGroupCode";
            this.colHWGroupCode.Name = "colHWGroupCode";
            this.colHWGroupCode.Visible = true;
            this.colHWGroupCode.VisibleIndex = 3;
            this.colHWGroupCode.Width = 55;
            // 
            // colHWTypeNameEN
            // 
            this.colHWTypeNameEN.Caption = "HW Type Description (CN)";
            this.colHWTypeNameEN.FieldName = "HWTypeNameCN";
            this.colHWTypeNameEN.Name = "colHWTypeNameEN";
            this.colHWTypeNameEN.Visible = true;
            this.colHWTypeNameEN.VisibleIndex = 6;
            this.colHWTypeNameEN.Width = 167;
            // 
            // colPOIssueDate
            // 
            this.colPOIssueDate.Caption = "PO Issued dd";
            this.colPOIssueDate.DisplayFormat.FormatString = "yy-MM-dd";
            this.colPOIssueDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colPOIssueDate.FieldName = "POIssueDate";
            this.colPOIssueDate.Name = "colPOIssueDate";
            this.colPOIssueDate.Visible = true;
            this.colPOIssueDate.VisibleIndex = 1;
            this.colPOIssueDate.Width = 61;
            // 
            // colETD
            // 
            this.colETD.Caption = "ETD";
            this.colETD.DisplayFormat.FormatString = "yy-MM-dd";
            this.colETD.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colETD.FieldName = "ETD";
            this.colETD.Name = "colETD";
            this.colETD.Visible = true;
            this.colETD.VisibleIndex = 10;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "HW Type Description";
            this.gridColumn2.FieldName = "HWTypeNameEN";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 5;
            this.gridColumn2.Width = 138;
            // 
            // LCShipmentDateListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LCShipmentDateListForm";
            this.Size = new System.Drawing.Size(1220, 436);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colVendorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectionDate;
        private DevExpress.XtraGrid.Columns.GridColumn colShipmentDate;
        private DevExpress.XtraGrid.Columns.GridColumn colVendorName;
        private DevExpress.XtraBars.BarButtonItem barBtnGetData;
        private DevExpress.XtraGrid.Columns.GridColumn colMCType;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrency;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraGrid.Columns.GridColumn colHWCategoryCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWGroupCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn colPOIssueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colETD;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
    }
}
