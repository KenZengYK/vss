namespace PH.POPC.UI
{
    partial class Z_OutstandingPOListForm
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
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBuyerCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSplitNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWhse = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOurItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCoordinator = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierPOQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierOutstandingQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBalPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUnit = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOurColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPurchaseDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseInvoiceOrPackingListNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSLWhseDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSLWhseDQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colIQAPassQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIQAFailQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPPMCDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPPMCQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPPMCBalQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCuttingDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCuttingConfirmQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemTextEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.btnCopyRow = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnCopyRow});
            this.objbarManager.MaxItemId = 64;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyRow, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemTextEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(2200, 272);
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.Z_OutstandingPO);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand7,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6});
            this.bandedGridView1.ColumnPanelRowHeight = 60;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colBuyerCode,
            this.colPONO,
            this.colWhse,
            this.colProjectNo,
            this.colOurItemCode,
            this.colCurrency,
            this.colCoordinator,
            this.colSuppCode,
            this.colSuppItemCode,
            this.colSupplierPOQty,
            this.colSupplierOutstandingQty,
            this.colBalPercent,
            this.colUnit,
            this.colSize,
            this.colCup,
            this.colOurColorCode,
            this.colPurchaseDate,
            this.colPurchaseInvoiceOrPackingListNo,
            this.colPurchaseQty,
            this.colSLWhseDate,
            this.colSLWhseDQty,
            this.colIQAPassQty,
            this.colIQAFailQty,
            this.colPPMCDate,
            this.colPPMCQty,
            this.colPPMCBalQty,
            this.colCuttingDate,
            this.colCuttingConfirmQty,
            this.colRemark,
            this.colOrderLine,
            this.colSplitNo,
            this.colPrice});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1773, 174, 200, 492);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colRemark, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Basic Information";
            this.gridBand1.Columns.Add(this.colBuyerCode);
            this.gridBand1.Columns.Add(this.colPONO);
            this.gridBand1.Columns.Add(this.colOrderLine);
            this.gridBand1.Columns.Add(this.colSplitNo);
            this.gridBand1.Columns.Add(this.colWhse);
            this.gridBand1.Columns.Add(this.colProjectNo);
            this.gridBand1.Columns.Add(this.colOurItemCode);
            this.gridBand1.Columns.Add(this.colCurrency);
            this.gridBand1.Columns.Add(this.colCoordinator);
            this.gridBand1.Columns.Add(this.colSuppCode);
            this.gridBand1.Columns.Add(this.colSuppItemCode);
            this.gridBand1.Columns.Add(this.colSupplierPOQty);
            this.gridBand1.Columns.Add(this.colSupplierOutstandingQty);
            this.gridBand1.Columns.Add(this.colPrice);
            this.gridBand1.Columns.Add(this.colBalPercent);
            this.gridBand1.Columns.Add(this.colUnit);
            this.gridBand1.Columns.Add(this.colSize);
            this.gridBand1.Columns.Add(this.colCup);
            this.gridBand1.Columns.Add(this.colOurColorCode);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 1245;
            // 
            // colBuyerCode
            // 
            this.colBuyerCode.Caption = "Buyer\r\nCde";
            this.colBuyerCode.FieldName = "BuyerCode";
            this.colBuyerCode.Name = "colBuyerCode";
            this.colBuyerCode.Visible = true;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "PO\r\nLine";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.Visible = true;
            this.colOrderLine.Width = 44;
            // 
            // colSplitNo
            // 
            this.colSplitNo.Caption = "Split\r\nNo.";
            this.colSplitNo.FieldName = "SplitNo";
            this.colSplitNo.Name = "colSplitNo";
            this.colSplitNo.Visible = true;
            this.colSplitNo.Width = 45;
            // 
            // colWhse
            // 
            this.colWhse.Caption = "Whse\r\nSite";
            this.colWhse.FieldName = "Whse";
            this.colWhse.Name = "colWhse";
            this.colWhse.Visible = true;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj.\r\nNo.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            // 
            // colOurItemCode
            // 
            this.colOurItemCode.Caption = "Our Item Code";
            this.colOurItemCode.FieldName = "OurItemCode";
            this.colOurItemCode.Name = "colOurItemCode";
            this.colOurItemCode.Visible = true;
            this.colOurItemCode.Width = 103;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Curr.";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Visible = true;
            this.colCurrency.Width = 52;
            // 
            // colCoordinator
            // 
            this.colCoordinator.Caption = "Coordinator";
            this.colCoordinator.FieldName = "Coordinator";
            this.colCoordinator.Name = "colCoordinator";
            this.colCoordinator.Visible = true;
            this.colCoordinator.Width = 85;
            // 
            // colSuppCode
            // 
            this.colSuppCode.Caption = "Supp\r\nCode";
            this.colSuppCode.FieldName = "SuppCode";
            this.colSuppCode.Name = "colSuppCode";
            this.colSuppCode.Visible = true;
            // 
            // colSuppItemCode
            // 
            this.colSuppItemCode.Caption = "Supp Item Code\r\n(if any)";
            this.colSuppItemCode.FieldName = "SuppItemCode";
            this.colSuppItemCode.Name = "colSuppItemCode";
            this.colSuppItemCode.Visible = true;
            this.colSuppItemCode.Width = 112;
            // 
            // colSupplierPOQty
            // 
            this.colSupplierPOQty.Caption = "Qty";
            this.colSupplierPOQty.DisplayFormat.FormatString = "N0";
            this.colSupplierPOQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSupplierPOQty.FieldName = "SupplierPOQty";
            this.colSupplierPOQty.Name = "colSupplierPOQty";
            this.colSupplierPOQty.Visible = true;
            this.colSupplierPOQty.Width = 81;
            // 
            // colSupplierOutstandingQty
            // 
            this.colSupplierOutstandingQty.Caption = "SupplierOutstandingQty";
            this.colSupplierOutstandingQty.DisplayFormat.FormatString = "N0";
            this.colSupplierOutstandingQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSupplierOutstandingQty.FieldName = "SupplierOutstandingQty";
            this.colSupplierOutstandingQty.Name = "colSupplierOutstandingQty";
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.DisplayFormat.FormatString = "N5";
            this.colPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            // 
            // colBalPercent
            // 
            this.colBalPercent.Caption = "Bal %";
            this.colBalPercent.DisplayFormat.FormatString = "P";
            this.colBalPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colBalPercent.FieldName = "POBalancePercent";
            this.colBalPercent.Name = "colBalPercent";
            this.colBalPercent.Visible = true;
            this.colBalPercent.Width = 56;
            // 
            // colUnit
            // 
            this.colUnit.Caption = "Unit";
            this.colUnit.FieldName = "Unit";
            this.colUnit.Name = "colUnit";
            this.colUnit.Visible = true;
            this.colUnit.Width = 44;
            // 
            // colSize
            // 
            this.colSize.Caption = "Sz";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.Visible = true;
            this.colSize.Width = 55;
            // 
            // colCup
            // 
            this.colCup.Caption = "Cup";
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.Visible = true;
            this.colCup.Width = 43;
            // 
            // colOurColorCode
            // 
            this.colOurColorCode.Caption = "Our Code";
            this.colOurColorCode.FieldName = "OurColorCode";
            this.colOurColorCode.Name = "colOurColorCode";
            this.colOurColorCode.Visible = true;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Purchase";
            this.gridBand7.Columns.Add(this.colPurchaseDate);
            this.gridBand7.Columns.Add(this.colPurchaseInvoiceOrPackingListNo);
            this.gridBand7.Columns.Add(this.colPurchaseQty);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 212;
            // 
            // colPurchaseDate
            // 
            this.colPurchaseDate.Caption = "Date";
            this.colPurchaseDate.FieldName = "PurchaseDate";
            this.colPurchaseDate.Name = "colPurchaseDate";
            this.colPurchaseDate.Visible = true;
            // 
            // colPurchaseInvoiceOrPackingListNo
            // 
            this.colPurchaseInvoiceOrPackingListNo.Caption = "Invoice &\r\npacking list\r\nNo.";
            this.colPurchaseInvoiceOrPackingListNo.FieldName = "PurchaseInvoiceOrPackingListNo";
            this.colPurchaseInvoiceOrPackingListNo.Name = "colPurchaseInvoiceOrPackingListNo";
            this.colPurchaseInvoiceOrPackingListNo.Visible = true;
            this.colPurchaseInvoiceOrPackingListNo.Width = 79;
            // 
            // colPurchaseQty
            // 
            this.colPurchaseQty.Caption = "Qty";
            this.colPurchaseQty.DisplayFormat.FormatString = "N2";
            this.colPurchaseQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPurchaseQty.FieldName = "PurchaseQty";
            this.colPurchaseQty.Name = "colPurchaseQty";
            this.colPurchaseQty.Visible = true;
            this.colPurchaseQty.Width = 58;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Whse";
            this.gridBand2.Columns.Add(this.colSLWhseDate);
            this.gridBand2.Columns.Add(this.colSLWhseDQty);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 150;
            // 
            // colSLWhseDate
            // 
            this.colSLWhseDate.Caption = "Date";
            this.colSLWhseDate.FieldName = "SLWhseDate";
            this.colSLWhseDate.Name = "colSLWhseDate";
            this.colSLWhseDate.Visible = true;
            // 
            // colSLWhseDQty
            // 
            this.colSLWhseDQty.Caption = "Qty";
            this.colSLWhseDQty.DisplayFormat.FormatString = "N2";
            this.colSLWhseDQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSLWhseDQty.FieldName = "SLWhseDQty";
            this.colSLWhseDQty.Name = "colSLWhseDQty";
            this.colSLWhseDQty.Visible = true;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "IQA ";
            this.gridBand3.Columns.Add(this.colIQAPassQty);
            this.gridBand3.Columns.Add(this.colIQAFailQty);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 150;
            // 
            // colIQAPassQty
            // 
            this.colIQAPassQty.Caption = "Pass\r\n(Qty)";
            this.colIQAPassQty.FieldName = "IQAPassQty";
            this.colIQAPassQty.Name = "colIQAPassQty";
            this.colIQAPassQty.Visible = true;
            // 
            // colIQAFailQty
            // 
            this.colIQAFailQty.Caption = "Fail\r\n(Qty)";
            this.colIQAFailQty.DisplayFormat.FormatString = "N2";
            this.colIQAFailQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colIQAFailQty.FieldName = "IQAFailQty";
            this.colIQAFailQty.Name = "colIQAFailQty";
            this.colIQAFailQty.Visible = true;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "PPMC";
            this.gridBand4.Columns.Add(this.colPPMCDate);
            this.gridBand4.Columns.Add(this.colPPMCQty);
            this.gridBand4.Columns.Add(this.colPPMCBalQty);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 199;
            // 
            // colPPMCDate
            // 
            this.colPPMCDate.Caption = "Date";
            this.colPPMCDate.FieldName = "PPMCDate";
            this.colPPMCDate.Name = "colPPMCDate";
            this.colPPMCDate.Visible = true;
            // 
            // colPPMCQty
            // 
            this.colPPMCQty.Caption = "Issued \r\nQty";
            this.colPPMCQty.DisplayFormat.FormatString = "N0";
            this.colPPMCQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPPMCQty.FieldName = "PPMCQty";
            this.colPPMCQty.Name = "colPPMCQty";
            this.colPPMCQty.Visible = true;
            this.colPPMCQty.Width = 57;
            // 
            // colPPMCBalQty
            // 
            this.colPPMCBalQty.Caption = "Bal Qty";
            this.colPPMCBalQty.DisplayFormat.FormatString = "N2";
            this.colPPMCBalQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPPMCBalQty.FieldName = "PPMCBalQty";
            this.colPPMCBalQty.Name = "colPPMCBalQty";
            this.colPPMCBalQty.Visible = true;
            this.colPPMCBalQty.Width = 67;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Cutting";
            this.gridBand5.Columns.Add(this.colCuttingDate);
            this.gridBand5.Columns.Add(this.colCuttingConfirmQty);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 150;
            // 
            // colCuttingDate
            // 
            this.colCuttingDate.Caption = "Date";
            this.colCuttingDate.FieldName = "CuttingDate";
            this.colCuttingDate.Name = "colCuttingDate";
            this.colCuttingDate.Visible = true;
            // 
            // colCuttingConfirmQty
            // 
            this.colCuttingConfirmQty.Caption = "Confirmed\r\n(Qty)";
            this.colCuttingConfirmQty.DisplayFormat.FormatString = "N2";
            this.colCuttingConfirmQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCuttingConfirmQty.FieldName = "CuttingConfirmQty";
            this.colCuttingConfirmQty.Name = "colCuttingConfirmQty";
            this.colCuttingConfirmQty.Visible = true;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Remark";
            this.gridBand6.Columns.Add(this.colRemark);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 97;
            // 
            // colRemark
            // 
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.Width = 97;
            // 
            // repositoryItemTextEdit1
            // 
            this.repositoryItemTextEdit1.AutoHeight = false;
            this.repositoryItemTextEdit1.Name = "repositoryItemTextEdit1";
            // 
            // btnCopyRow
            // 
            this.btnCopyRow.Caption = "Copy Row";
            this.btnCopyRow.Id = 63;
            this.btnCopyRow.Name = "btnCopyRow";
            this.btnCopyRow.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopyRow_ItemClick);
            // 
            // Z_OutstandingPOListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "Z_OutstandingPOListForm";
            this.Size = new System.Drawing.Size(2200, 299);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBuyerCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWhse;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOurItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCurrency;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCoordinator;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierPOQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierOutstandingQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBalPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUnit;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOurColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseInvoiceOrPackingListNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSLWhseDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSLWhseDQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIQAPassQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIQAFailQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPPMCDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPPMCQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPPMCBalQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCuttingDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCuttingConfirmQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraBars.BarButtonItem btnCopyRow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSplitNo;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPrice;

    }
}
