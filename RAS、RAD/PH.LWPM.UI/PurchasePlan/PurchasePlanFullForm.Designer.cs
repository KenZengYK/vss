namespace PH.LWPM.UI.PurchasePlan
{
    partial class PurchasePlanFullForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPurchaseNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurcaseDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colVendorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVendorNameEN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHWTypeCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colModel = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHWTypeDescriptionCN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHSCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDepartment = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colShipmentCount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQty1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmount1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectStockInDate1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsPOConfirm1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ItemCheckEdit_Bool = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQty2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmount2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectStockInDate2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsPOConfirm2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQty3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmount3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectStockInDate3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsPOConfirm3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQty4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmount4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectStockInDate4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsPOConfirm4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colIssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQuatationNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUnitPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEffectiveDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckEdit_Bool)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ItemCheckEdit_Bool});
            this.objListGridControl.Size = new System.Drawing.Size(1405, 512);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PurchasePlanDetail);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand7,
            this.gridBand1,
            this.gridBand8,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6});
            this.bandedGridView1.ColumnPanelRowHeight = 40;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colVendorCode,
            this.colHWTypeCode,
            this.colModel,
            this.colDepartment,
            this.colTotalQty,
            this.colShipmentCount,
            this.colIssueDate,
            this.colQuatationNO,
            this.colCurrency,
            this.colUnitPrice,
            this.colEffectiveDate,
            this.colQty1,
            this.colProjectStockInDate1,
            this.colIsPOConfirm1,
            this.colQty2,
            this.colProjectStockInDate2,
            this.colIsPOConfirm2,
            this.colQty3,
            this.colProjectStockInDate3,
            this.colIsPOConfirm3,
            this.colQty4,
            this.colProjectStockInDate4,
            this.colIsPOConfirm4,
            this.colAmount1,
            this.colAmount2,
            this.colAmount3,
            this.colAmount4,
            this.colVendorNameEN,
            this.colHWTypeDescriptionCN,
            this.colHSCode,
            this.colPurchaseNo,
            this.colPurcaseDate});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Purchasing Plan";
            this.gridBand7.Columns.Add(this.colPurchaseNo);
            this.gridBand7.Columns.Add(this.colPurcaseDate);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 108;
            // 
            // colPurchaseNo
            // 
            this.colPurchaseNo.AppearanceCell.Options.UseTextOptions = true;
            this.colPurchaseNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPurchaseNo.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colPurchaseNo.Caption = "#";
            this.colPurchaseNo.FieldName = "PurchaseNo";
            this.colPurchaseNo.Name = "colPurchaseNo";
            this.colPurchaseNo.Visible = true;
            this.colPurchaseNo.Width = 50;
            // 
            // colPurcaseDate
            // 
            this.colPurcaseDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPurcaseDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPurcaseDate.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colPurcaseDate.Caption = "dd";
            this.colPurcaseDate.DisplayFormat.FormatString = "yy-MM-dd";
            this.colPurcaseDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colPurcaseDate.FieldName = "PurchaseDate";
            this.colPurcaseDate.Name = "colPurcaseDate";
            this.colPurcaseDate.Visible = true;
            this.colPurcaseDate.Width = 58;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Vendor";
            this.gridBand1.Columns.Add(this.colVendorCode);
            this.gridBand1.Columns.Add(this.colVendorNameEN);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 183;
            // 
            // colVendorCode
            // 
            this.colVendorCode.Caption = "Code";
            this.colVendorCode.FieldName = "VendorCode";
            this.colVendorCode.Name = "colVendorCode";
            this.colVendorCode.Visible = true;
            this.colVendorCode.Width = 70;
            // 
            // colVendorNameEN
            // 
            this.colVendorNameEN.Caption = "Name";
            this.colVendorNameEN.FieldName = "VendorShortName";
            this.colVendorNameEN.Name = "colVendorNameEN";
            this.colVendorNameEN.OptionsColumn.AllowEdit = false;
            this.colVendorNameEN.Visible = true;
            this.colVendorNameEN.Width = 113;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "HW Information";
            this.gridBand8.Columns.Add(this.colHWTypeCode);
            this.gridBand8.Columns.Add(this.colModel);
            this.gridBand8.Columns.Add(this.colHWTypeDescriptionCN);
            this.gridBand8.Columns.Add(this.colHSCode);
            this.gridBand8.Columns.Add(this.colDepartment);
            this.gridBand8.Columns.Add(this.colTotalQty);
            this.gridBand8.Columns.Add(this.colShipmentCount);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 688;
            // 
            // colHWTypeCode
            // 
            this.colHWTypeCode.Caption = "HW\r\nType";
            this.colHWTypeCode.FieldName = "HWTypeCode";
            this.colHWTypeCode.Name = "colHWTypeCode";
            this.colHWTypeCode.Visible = true;
            this.colHWTypeCode.Width = 50;
            // 
            // colModel
            // 
            this.colModel.Caption = "Model";
            this.colModel.FieldName = "Model";
            this.colModel.Name = "colModel";
            this.colModel.Visible = true;
            this.colModel.Width = 148;
            // 
            // colHWTypeDescriptionCN
            // 
            this.colHWTypeDescriptionCN.Caption = "Description (CN)";
            this.colHWTypeDescriptionCN.FieldName = "HWTypeDescriptionCN";
            this.colHWTypeDescriptionCN.Name = "colHWTypeDescriptionCN";
            this.colHWTypeDescriptionCN.OptionsColumn.AllowEdit = false;
            this.colHWTypeDescriptionCN.Visible = true;
            this.colHWTypeDescriptionCN.Width = 270;
            // 
            // colHSCode
            // 
            this.colHSCode.Caption = "HS. Code";
            this.colHSCode.FieldName = "HSCode";
            this.colHSCode.Name = "colHSCode";
            this.colHSCode.OptionsColumn.AllowEdit = false;
            this.colHSCode.Visible = true;
            this.colHSCode.Width = 73;
            // 
            // colDepartment
            // 
            this.colDepartment.Caption = "Dept\'s\r\nuser";
            this.colDepartment.FieldName = "Department";
            this.colDepartment.Name = "colDepartment";
            this.colDepartment.Visible = true;
            this.colDepartment.Width = 57;
            // 
            // colTotalQty
            // 
            this.colTotalQty.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTotalQty.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colTotalQty.Caption = "Ttl\r\nQty";
            this.colTotalQty.FieldName = "TotalQty";
            this.colTotalQty.Name = "colTotalQty";
            this.colTotalQty.Visible = true;
            this.colTotalQty.Width = 42;
            // 
            // colShipmentCount
            // 
            this.colShipmentCount.AppearanceCell.Options.UseTextOptions = true;
            this.colShipmentCount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colShipmentCount.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colShipmentCount.Caption = "#of\r\nShpt";
            this.colShipmentCount.FieldName = "ShipmentCount";
            this.colShipmentCount.Name = "colShipmentCount";
            this.colShipmentCount.Visible = true;
            this.colShipmentCount.Width = 48;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "1st shipment";
            this.gridBand2.Columns.Add(this.colQty1);
            this.gridBand2.Columns.Add(this.colAmount1);
            this.gridBand2.Columns.Add(this.colProjectStockInDate1);
            this.gridBand2.Columns.Add(this.colIsPOConfirm1);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 253;
            // 
            // colQty1
            // 
            this.colQty1.AppearanceCell.Options.UseTextOptions = true;
            this.colQty1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colQty1.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colQty1.Caption = "Qty\r\n@shpt";
            this.colQty1.FieldName = "Qty1";
            this.colQty1.Name = "colQty1";
            this.colQty1.Visible = true;
            this.colQty1.Width = 57;
            // 
            // colAmount1
            // 
            this.colAmount1.AppearanceCell.Options.UseTextOptions = true;
            this.colAmount1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAmount1.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colAmount1.Caption = "Amount";
            this.colAmount1.DisplayFormat.FormatString = "N2";
            this.colAmount1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAmount1.FieldName = "Amount1";
            this.colAmount1.Name = "colAmount1";
            this.colAmount1.OptionsColumn.AllowEdit = false;
            this.colAmount1.OptionsColumn.ReadOnly = true;
            this.colAmount1.Visible = true;
            this.colAmount1.Width = 70;
            // 
            // colProjectStockInDate1
            // 
            this.colProjectStockInDate1.AppearanceCell.Options.UseTextOptions = true;
            this.colProjectStockInDate1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colProjectStockInDate1.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colProjectStockInDate1.Caption = "Proj\r\nStk-in dd";
            this.colProjectStockInDate1.DisplayFormat.FormatString = "yy-MM-dd";
            this.colProjectStockInDate1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colProjectStockInDate1.FieldName = "ProjectStockInDate1";
            this.colProjectStockInDate1.Name = "colProjectStockInDate1";
            this.colProjectStockInDate1.Visible = true;
            this.colProjectStockInDate1.Width = 71;
            // 
            // colIsPOConfirm1
            // 
            this.colIsPOConfirm1.Caption = "PO \r\ncfmd?";
            this.colIsPOConfirm1.ColumnEdit = this.ItemCheckEdit_Bool;
            this.colIsPOConfirm1.FieldName = "IsPOConfirm1";
            this.colIsPOConfirm1.Name = "colIsPOConfirm1";
            this.colIsPOConfirm1.Visible = true;
            this.colIsPOConfirm1.Width = 55;
            // 
            // ItemCheckEdit_Bool
            // 
            this.ItemCheckEdit_Bool.AutoHeight = false;
            this.ItemCheckEdit_Bool.Name = "ItemCheckEdit_Bool";
            this.ItemCheckEdit_Bool.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "2nd shipment";
            this.gridBand3.Columns.Add(this.colQty2);
            this.gridBand3.Columns.Add(this.colAmount2);
            this.gridBand3.Columns.Add(this.colProjectStockInDate2);
            this.gridBand3.Columns.Add(this.colIsPOConfirm2);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 242;
            // 
            // colQty2
            // 
            this.colQty2.AppearanceCell.Options.UseTextOptions = true;
            this.colQty2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colQty2.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colQty2.Caption = "Qty\r\n@shpt";
            this.colQty2.FieldName = "Qty2";
            this.colQty2.Name = "colQty2";
            this.colQty2.OptionsFilter.AllowFilter = false;
            this.colQty2.Visible = true;
            this.colQty2.Width = 47;
            // 
            // colAmount2
            // 
            this.colAmount2.AppearanceCell.Options.UseTextOptions = true;
            this.colAmount2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAmount2.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colAmount2.Caption = "Amount";
            this.colAmount2.DisplayFormat.FormatString = "N2";
            this.colAmount2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAmount2.FieldName = "Amount2";
            this.colAmount2.Name = "colAmount2";
            this.colAmount2.OptionsColumn.AllowEdit = false;
            this.colAmount2.OptionsColumn.ReadOnly = true;
            this.colAmount2.Visible = true;
            this.colAmount2.Width = 69;
            // 
            // colProjectStockInDate2
            // 
            this.colProjectStockInDate2.AppearanceCell.Options.UseTextOptions = true;
            this.colProjectStockInDate2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colProjectStockInDate2.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colProjectStockInDate2.Caption = "Proj\r\nStk-in dd";
            this.colProjectStockInDate2.DisplayFormat.FormatString = "yy-MM-dd";
            this.colProjectStockInDate2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colProjectStockInDate2.FieldName = "ProjectStockInDate2";
            this.colProjectStockInDate2.Name = "colProjectStockInDate2";
            this.colProjectStockInDate2.Visible = true;
            this.colProjectStockInDate2.Width = 71;
            // 
            // colIsPOConfirm2
            // 
            this.colIsPOConfirm2.Caption = "PO \r\ncfmd?";
            this.colIsPOConfirm2.ColumnEdit = this.ItemCheckEdit_Bool;
            this.colIsPOConfirm2.FieldName = "IsPOConfirm2";
            this.colIsPOConfirm2.Name = "colIsPOConfirm2";
            this.colIsPOConfirm2.Visible = true;
            this.colIsPOConfirm2.Width = 55;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "3rd shipment";
            this.gridBand4.Columns.Add(this.colQty3);
            this.gridBand4.Columns.Add(this.colAmount3);
            this.gridBand4.Columns.Add(this.colProjectStockInDate3);
            this.gridBand4.Columns.Add(this.colIsPOConfirm3);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 257;
            // 
            // colQty3
            // 
            this.colQty3.AppearanceCell.Options.UseTextOptions = true;
            this.colQty3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colQty3.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colQty3.Caption = "Qty\r\n@shpt";
            this.colQty3.FieldName = "Qty3";
            this.colQty3.Name = "colQty3";
            this.colQty3.Visible = true;
            this.colQty3.Width = 57;
            // 
            // colAmount3
            // 
            this.colAmount3.AppearanceCell.Options.UseTextOptions = true;
            this.colAmount3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAmount3.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colAmount3.Caption = "Amount";
            this.colAmount3.DisplayFormat.FormatString = "N2";
            this.colAmount3.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAmount3.FieldName = "Amount3";
            this.colAmount3.Name = "colAmount3";
            this.colAmount3.OptionsColumn.AllowEdit = false;
            this.colAmount3.OptionsColumn.ReadOnly = true;
            this.colAmount3.Visible = true;
            this.colAmount3.Width = 74;
            // 
            // colProjectStockInDate3
            // 
            this.colProjectStockInDate3.AppearanceCell.Options.UseTextOptions = true;
            this.colProjectStockInDate3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colProjectStockInDate3.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colProjectStockInDate3.Caption = "Proj\r\nStk-in dd";
            this.colProjectStockInDate3.DisplayFormat.FormatString = "yy-MM-dd";
            this.colProjectStockInDate3.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colProjectStockInDate3.FieldName = "ProjectStockInDate3";
            this.colProjectStockInDate3.Name = "colProjectStockInDate3";
            this.colProjectStockInDate3.Visible = true;
            this.colProjectStockInDate3.Width = 71;
            // 
            // colIsPOConfirm3
            // 
            this.colIsPOConfirm3.Caption = "PO \r\ncfmd?";
            this.colIsPOConfirm3.ColumnEdit = this.ItemCheckEdit_Bool;
            this.colIsPOConfirm3.FieldName = "IsPOConfirm3";
            this.colIsPOConfirm3.Name = "colIsPOConfirm3";
            this.colIsPOConfirm3.Visible = true;
            this.colIsPOConfirm3.Width = 55;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "4th shipment";
            this.gridBand5.Columns.Add(this.colQty4);
            this.gridBand5.Columns.Add(this.colAmount4);
            this.gridBand5.Columns.Add(this.colProjectStockInDate4);
            this.gridBand5.Columns.Add(this.colIsPOConfirm4);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 255;
            // 
            // colQty4
            // 
            this.colQty4.AppearanceCell.Options.UseTextOptions = true;
            this.colQty4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colQty4.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colQty4.Caption = "Qty\r\n@shpt";
            this.colQty4.FieldName = "Qty4";
            this.colQty4.Name = "colQty4";
            this.colQty4.Visible = true;
            this.colQty4.Width = 57;
            // 
            // colAmount4
            // 
            this.colAmount4.AppearanceCell.Options.UseTextOptions = true;
            this.colAmount4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAmount4.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colAmount4.Caption = "Amount";
            this.colAmount4.DisplayFormat.FormatString = "N2";
            this.colAmount4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colAmount4.FieldName = "Amount4";
            this.colAmount4.Name = "colAmount4";
            this.colAmount4.OptionsColumn.AllowEdit = false;
            this.colAmount4.OptionsColumn.ReadOnly = true;
            this.colAmount4.Visible = true;
            this.colAmount4.Width = 72;
            // 
            // colProjectStockInDate4
            // 
            this.colProjectStockInDate4.AppearanceCell.Options.UseTextOptions = true;
            this.colProjectStockInDate4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colProjectStockInDate4.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colProjectStockInDate4.Caption = "Proj\r\nStk-in dd";
            this.colProjectStockInDate4.DisplayFormat.FormatString = "yy-MM-dd";
            this.colProjectStockInDate4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colProjectStockInDate4.FieldName = "ProjectStockInDate4";
            this.colProjectStockInDate4.Name = "colProjectStockInDate4";
            this.colProjectStockInDate4.Visible = true;
            this.colProjectStockInDate4.Width = 71;
            // 
            // colIsPOConfirm4
            // 
            this.colIsPOConfirm4.Caption = "PO \r\ncfmd?";
            this.colIsPOConfirm4.ColumnEdit = this.ItemCheckEdit_Bool;
            this.colIsPOConfirm4.FieldName = "IsPOConfirm4";
            this.colIsPOConfirm4.Name = "colIsPOConfirm4";
            this.colIsPOConfirm4.Visible = true;
            this.colIsPOConfirm4.Width = 55;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Quotation";
            this.gridBand6.Columns.Add(this.colIssueDate);
            this.gridBand6.Columns.Add(this.colQuatationNO);
            this.gridBand6.Columns.Add(this.colCurrency);
            this.gridBand6.Columns.Add(this.colUnitPrice);
            this.gridBand6.Columns.Add(this.colEffectiveDate);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 355;
            // 
            // colIssueDate
            // 
            this.colIssueDate.Caption = "Issed \r\nDate";
            this.colIssueDate.DisplayFormat.FormatString = "yy-MM-dd";
            this.colIssueDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colIssueDate.FieldName = "IssueDate";
            this.colIssueDate.Name = "colIssueDate";
            this.colIssueDate.Visible = true;
            this.colIssueDate.Width = 60;
            // 
            // colQuatationNO
            // 
            this.colQuatationNO.Caption = "Qtn No.";
            this.colQuatationNO.FieldName = "QuatationNO";
            this.colQuatationNO.Name = "colQuatationNO";
            this.colQuatationNO.Visible = true;
            this.colQuatationNO.Width = 107;
            // 
            // colCurrency
            // 
            this.colCurrency.AppearanceCell.Options.UseTextOptions = true;
            this.colCurrency.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCurrency.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colCurrency.Caption = "Curr";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.Width = 44;
            // 
            // colUnitPrice
            // 
            this.colUnitPrice.AppearanceCell.Options.UseTextOptions = true;
            this.colUnitPrice.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colUnitPrice.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colUnitPrice.Caption = "Unit Price";
            this.colUnitPrice.DisplayFormat.FormatString = "N2";
            this.colUnitPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colUnitPrice.FieldName = "UnitPrice";
            this.colUnitPrice.Name = "colUnitPrice";
            this.colUnitPrice.Visible = true;
            this.colUnitPrice.Width = 74;
            // 
            // colEffectiveDate
            // 
            this.colEffectiveDate.AppearanceCell.Options.UseTextOptions = true;
            this.colEffectiveDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEffectiveDate.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colEffectiveDate.Caption = "Effective\r\nDate";
            this.colEffectiveDate.DisplayFormat.FormatString = "yy-MM-dd";
            this.colEffectiveDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Custom;
            this.colEffectiveDate.FieldName = "EffectiveDate";
            this.colEffectiveDate.Name = "colEffectiveDate";
            this.colEffectiveDate.Visible = true;
            this.colEffectiveDate.Width = 70;
            // 
            // PurchasePlanFullForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PurchasePlanFullForm";
            this.Size = new System.Drawing.Size(1405, 539);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ItemCheckEdit_Bool)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVendorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHWTypeCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colModel;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDepartment;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShipmentCount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQuatationNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCurrency;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUnitPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEffectiveDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectStockInDate1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsPOConfirm1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectStockInDate2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsPOConfirm2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectStockInDate3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsPOConfirm3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectStockInDate4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsPOConfirm4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurcaseDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVendorNameEN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHWTypeDescriptionCN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHSCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAmount1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAmount2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAmount3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAmount4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit ItemCheckEdit_Bool;
    }
}
