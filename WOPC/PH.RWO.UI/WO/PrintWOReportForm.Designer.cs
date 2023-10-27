namespace PH.RWO.UI.WO
{
    partial class PrintWOReportForm
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
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.btnReCalculation = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSalesOrderNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSalesOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustomerStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLCLExFtyShipCompleted = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colShipMode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colNumberOfLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLWNonShipWindow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChosenvs3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChosenOption = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBandNotFinished = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBalaceShipmetQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBalaceShipmetQtyPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colExFtyDateAdjust = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colShipModeAdjust = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBandIncompleteWO = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colIncompleteWOReasonCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.barRecal = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrint,
            this.btnReCalculation,
            this.barRecal});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnReCalculation, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barRecal, false)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode});
            this.objListGridControl.Size = new System.Drawing.Size(1631, 463);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
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
            this.BindingSource.DataSource = typeof(PH.RWO.BO.WorkOrder);
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 60;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // btnReCalculation
            // 
            this.btnReCalculation.Caption = "ReCalculation";
            this.btnReCalculation.Id = 61;
            this.btnReCalculation.Name = "btnReCalculation";
            this.btnReCalculation.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnReCalculation_ItemClick);
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
            this.bandedGridView1.BandPanelRowHeight = 40;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBandNotFinished,
            this.gridBandIncompleteWO});
            this.bandedGridView1.ColumnPanelRowHeight = 40;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colFactory,
            this.colSalesOrderNo,
            this.colProjectNo,
            this.colCustomer,
            this.colStatus,
            this.colWorkOrderNo,
            this.colTotalColor,
            this.colSalesOrderLine,
            this.colStyleNo,
            this.colCustomerStyleNo,
            this.colLCLExFtyShipCompleted,
            this.colShipMode,
            this.colBulkQty,
            this.colNumberOfLine,
            this.colLWNonShipWindow,
            this.colChosenvs3,
            this.colChosenOption,
            this.colBalaceShipmetQty,
            this.colBalaceShipmetQtyPercent,
            this.colExFtyDateAdjust,
            this.colShipModeAdjust,
            this.colIncompleteWOReasonCode});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.GroupCount = 1;
            this.bandedGridView1.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "BulkQty", this.colBulkQty, "{0:N0}", 2),
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "BalaceShipmetQty", this.colBalaceShipmetQty, "{0:N0}", 2),
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Count, "WorkOrderNo", this.colWorkOrderNo, "{0:N0}", 2),
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Custom, "BalaceShipmetQtyPercent", this.colBalaceShipmetQtyPercent, "{0:N2}", 2)});
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colFactory, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate);
            this.bandedGridView1.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.bandedGridView1_ValidateRow);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Data captured from S21";
            this.gridBand1.Columns.Add(this.colFactory);
            this.gridBand1.Columns.Add(this.colSalesOrderNo);
            this.gridBand1.Columns.Add(this.colProjectNo);
            this.gridBand1.Columns.Add(this.colCustomer);
            this.gridBand1.Columns.Add(this.colStatus);
            this.gridBand1.Columns.Add(this.colWorkOrderNo);
            this.gridBand1.Columns.Add(this.colTotalColor);
            this.gridBand1.Columns.Add(this.colSalesOrderLine);
            this.gridBand1.Columns.Add(this.colStyleNo);
            this.gridBand1.Columns.Add(this.colCustomerStyleNo);
            this.gridBand1.Columns.Add(this.colLCLExFtyShipCompleted);
            this.gridBand1.Columns.Add(this.colShipMode);
            this.gridBand1.Columns.Add(this.colBulkQty);
            this.gridBand1.Columns.Add(this.colNumberOfLine);
            this.gridBand1.Columns.Add(this.colLWNonShipWindow);
            this.gridBand1.Columns.Add(this.colChosenvs3);
            this.gridBand1.Columns.Add(this.colChosenOption);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 1193;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.OptionsColumn.ReadOnly = true;
            this.colFactory.Visible = true;
            this.colFactory.Width = 52;
            // 
            // colSalesOrderNo
            // 
            this.colSalesOrderNo.Caption = "SO#";
            this.colSalesOrderNo.FieldName = "SalesOrderNo";
            this.colSalesOrderNo.Name = "colSalesOrderNo";
            this.colSalesOrderNo.OptionsColumn.AllowEdit = false;
            this.colSalesOrderNo.Visible = true;
            this.colSalesOrderNo.Width = 61;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project#";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.OptionsColumn.ReadOnly = true;
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 84;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Cust";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.OptionsColumn.AllowEdit = false;
            this.colCustomer.OptionsColumn.ReadOnly = true;
            this.colCustomer.Visible = true;
            this.colCustomer.Width = 59;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "WO Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.OptionsColumn.AllowEdit = false;
            this.colStatus.OptionsColumn.ReadOnly = true;
            this.colStatus.Visible = true;
            this.colStatus.Width = 82;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO#";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNo.SummaryItem.DisplayFormat = "{0:N0}";
            this.colWorkOrderNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Count;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.Width = 71;
            // 
            // colTotalColor
            // 
            this.colTotalColor.Caption = "# of Clr";
            this.colTotalColor.FieldName = "TotalColor";
            this.colTotalColor.Name = "colTotalColor";
            this.colTotalColor.OptionsColumn.AllowEdit = false;
            this.colTotalColor.Visible = true;
            this.colTotalColor.Width = 63;
            // 
            // colSalesOrderLine
            // 
            this.colSalesOrderLine.Caption = "Ord Line";
            this.colSalesOrderLine.FieldName = "SalesOrderLine";
            this.colSalesOrderLine.Name = "colSalesOrderLine";
            this.colSalesOrderLine.OptionsColumn.AllowEdit = false;
            this.colSalesOrderLine.Visible = true;
            this.colSalesOrderLine.Width = 43;
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "ERP Style#";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.OptionsColumn.AllowEdit = false;
            this.colStyleNo.Visible = true;
            this.colStyleNo.Width = 97;
            // 
            // colCustomerStyleNo
            // 
            this.colCustomerStyleNo.Caption = "Cust Style#";
            this.colCustomerStyleNo.FieldName = "CustomerStyleNo";
            this.colCustomerStyleNo.Name = "colCustomerStyleNo";
            this.colCustomerStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustomerStyleNo.Visible = true;
            this.colCustomerStyleNo.Width = 100;
            // 
            // colLCLExFtyShipCompleted
            // 
            this.colLCLExFtyShipCompleted.Caption = "Ex-Fty dd";
            this.colLCLExFtyShipCompleted.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colLCLExFtyShipCompleted.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLCLExFtyShipCompleted.FieldName = "LCLExFtyShipCompleted";
            this.colLCLExFtyShipCompleted.Name = "colLCLExFtyShipCompleted";
            this.colLCLExFtyShipCompleted.OptionsColumn.AllowEdit = false;
            this.colLCLExFtyShipCompleted.Visible = true;
            this.colLCLExFtyShipCompleted.Width = 74;
            // 
            // colShipMode
            // 
            this.colShipMode.Caption = "Ship Mode";
            this.colShipMode.FieldName = "ShipMode";
            this.colShipMode.Name = "colShipMode";
            this.colShipMode.OptionsColumn.AllowEdit = false;
            this.colShipMode.Visible = true;
            this.colShipMode.Width = 79;
            // 
            // colBulkQty
            // 
            this.colBulkQty.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colBulkQty.Caption = "Bulk Shpt Qty";
            this.colBulkQty.DisplayFormat.FormatString = "N0";
            this.colBulkQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colBulkQty.FieldName = "BulkQty";
            this.colBulkQty.Name = "colBulkQty";
            this.colBulkQty.OptionsColumn.AllowEdit = false;
            this.colBulkQty.SummaryItem.DisplayFormat = "{0:N0}";
            this.colBulkQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colBulkQty.Visible = true;
            this.colBulkQty.Width = 78;
            // 
            // colNumberOfLine
            // 
            this.colNumberOfLine.AppearanceCell.Options.UseTextOptions = true;
            this.colNumberOfLine.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colNumberOfLine.Caption = "# of AL";
            this.colNumberOfLine.FieldName = "NumberOfLine";
            this.colNumberOfLine.Name = "colNumberOfLine";
            this.colNumberOfLine.OptionsColumn.AllowEdit = false;
            this.colNumberOfLine.Visible = true;
            this.colNumberOfLine.Width = 64;
            // 
            // colLWNonShipWindow
            // 
            this.colLWNonShipWindow.AppearanceCell.Options.UseTextOptions = true;
            this.colLWNonShipWindow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colLWNonShipWindow.Caption = "SW window";
            this.colLWNonShipWindow.FieldName = "LWNonShipWindow";
            this.colLWNonShipWindow.Name = "colLWNonShipWindow";
            this.colLWNonShipWindow.OptionsColumn.AllowEdit = false;
            this.colLWNonShipWindow.Visible = true;
            this.colLWNonShipWindow.Width = 63;
            // 
            // colChosenvs3
            // 
            this.colChosenvs3.AppearanceCell.Options.UseTextOptions = true;
            this.colChosenvs3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colChosenvs3.Caption = "SW buffer";
            this.colChosenvs3.FieldName = "Chosenvs3";
            this.colChosenvs3.Name = "colChosenvs3";
            this.colChosenvs3.OptionsColumn.AllowEdit = false;
            this.colChosenvs3.Visible = true;
            this.colChosenvs3.Width = 59;
            // 
            // colChosenOption
            // 
            this.colChosenOption.Caption = "Chosen Option";
            this.colChosenOption.FieldName = "ChosenOption";
            this.colChosenOption.Name = "colChosenOption";
            this.colChosenOption.Visible = true;
            this.colChosenOption.Width = 64;
            // 
            // gridBandNotFinished
            // 
            this.gridBandNotFinished.Caption = "Data captured from COP\r\nNot yet shpd Finished Gmts";
            this.gridBandNotFinished.Columns.Add(this.colBalaceShipmetQty);
            this.gridBandNotFinished.Columns.Add(this.colBalaceShipmetQtyPercent);
            this.gridBandNotFinished.Columns.Add(this.colExFtyDateAdjust);
            this.gridBandNotFinished.Columns.Add(this.colShipModeAdjust);
            this.gridBandNotFinished.MinWidth = 20;
            this.gridBandNotFinished.Name = "gridBandNotFinished";
            this.gridBandNotFinished.Width = 274;
            // 
            // colBalaceShipmetQty
            // 
            this.colBalaceShipmetQty.AppearanceCell.Options.UseTextOptions = true;
            this.colBalaceShipmetQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colBalaceShipmetQty.Caption = "Qty";
            this.colBalaceShipmetQty.DisplayFormat.FormatString = "N0";
            this.colBalaceShipmetQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colBalaceShipmetQty.FieldName = "BalaceShipmetQty";
            this.colBalaceShipmetQty.Name = "colBalaceShipmetQty";
            this.colBalaceShipmetQty.OptionsColumn.AllowEdit = false;
            this.colBalaceShipmetQty.SummaryItem.DisplayFormat = "{0:N0}";
            this.colBalaceShipmetQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colBalaceShipmetQty.Visible = true;
            this.colBalaceShipmetQty.Width = 62;
            // 
            // colBalaceShipmetQtyPercent
            // 
            this.colBalaceShipmetQtyPercent.AppearanceCell.Options.UseTextOptions = true;
            this.colBalaceShipmetQtyPercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colBalaceShipmetQtyPercent.Caption = "%";
            this.colBalaceShipmetQtyPercent.DisplayFormat.FormatString = "f2";
            this.colBalaceShipmetQtyPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colBalaceShipmetQtyPercent.FieldName = "BalaceShipmetQtyPercent";
            this.colBalaceShipmetQtyPercent.Name = "colBalaceShipmetQtyPercent";
            this.colBalaceShipmetQtyPercent.OptionsColumn.AllowEdit = false;
            this.colBalaceShipmetQtyPercent.SummaryItem.DisplayFormat = "{0:N2}";
            this.colBalaceShipmetQtyPercent.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colBalaceShipmetQtyPercent.Visible = true;
            this.colBalaceShipmetQtyPercent.Width = 62;
            // 
            // colExFtyDateAdjust
            // 
            this.colExFtyDateAdjust.Caption = "Ex-fty dd\r\n(adj.)";
            this.colExFtyDateAdjust.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colExFtyDateAdjust.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colExFtyDateAdjust.FieldName = "ExFtyDateAdjust";
            this.colExFtyDateAdjust.Name = "colExFtyDateAdjust";
            this.colExFtyDateAdjust.OptionsColumn.AllowEdit = false;
            this.colExFtyDateAdjust.Visible = true;
            // 
            // colShipModeAdjust
            // 
            this.colShipModeAdjust.Caption = "Transit Mode\r\nChange ?";
            this.colShipModeAdjust.FieldName = "ShipModeAdjust";
            this.colShipModeAdjust.Name = "colShipModeAdjust";
            this.colShipModeAdjust.OptionsColumn.AllowEdit = false;
            this.colShipModeAdjust.Visible = true;
            // 
            // gridBandIncompleteWO
            // 
            this.gridBandIncompleteWO.Caption = "Incomplete\r\nWO";
            this.gridBandIncompleteWO.Columns.Add(this.colIncompleteWOReasonCode);
            this.gridBandIncompleteWO.MinWidth = 20;
            this.gridBandIncompleteWO.Name = "gridBandIncompleteWO";
            this.gridBandIncompleteWO.Width = 74;
            // 
            // colIncompleteWOReasonCode
            // 
            this.colIncompleteWOReasonCode.Caption = "Reason\r\nCde";
            this.colIncompleteWOReasonCode.ColumnEdit = this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode;
            this.colIncompleteWOReasonCode.FieldName = "IncompleteWOReasonCode";
            this.colIncompleteWOReasonCode.Name = "colIncompleteWOReasonCode";
            this.colIncompleteWOReasonCode.Visible = true;
            this.colIncompleteWOReasonCode.Width = 74;
            // 
            // repositoryItemGridLookUpEdit_IncompleteWOReasonCode
            // 
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode.AutoHeight = false;
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode.Name = "repositoryItemGridLookUpEdit_IncompleteWOReasonCode";
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode.NullText = "";
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode.PopupFormMinSize = new System.Drawing.Size(760, 0);
            this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode.View = this.repositoryItemGridLookUpEdit1View;
            // 
            // repositoryItemGridLookUpEdit1View
            // 
            this.repositoryItemGridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.repositoryItemGridLookUpEdit1View.Name = "repositoryItemGridLookUpEdit1View";
            this.repositoryItemGridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.RowAutoHeight = true;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // barRecal
            // 
            this.barRecal.Caption = "Recal";
            this.barRecal.Id = 62;
            this.barRecal.Name = "barRecal";
            this.barRecal.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barRecal_ItemClick);
            // 
            // PrintWOReportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PrintWOReportForm";
            this.Size = new System.Drawing.Size(1631, 490);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit_IncompleteWOReasonCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraBars.BarButtonItem btnReCalculation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFactory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSalesOrderNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustomer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSalesOrderLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustomerStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLCLExFtyShipCompleted;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShipMode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNumberOfLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLWNonShipWindow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChosenvs3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChosenOption;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBandNotFinished;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBalaceShipmetQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBalaceShipmetQtyPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colExFtyDateAdjust;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colShipModeAdjust;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBandIncompleteWO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIncompleteWOReasonCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit repositoryItemGridLookUpEdit_IncompleteWOReasonCode;
        private DevExpress.XtraGrid.Views.Grid.GridView repositoryItemGridLookUpEdit1View;
        private DevExpress.XtraBars.BarButtonItem barRecal;
    }
}
