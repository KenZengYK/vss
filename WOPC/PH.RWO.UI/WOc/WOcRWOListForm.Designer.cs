namespace PH.RWO.UI
{
    partial class WOcRWOListForm
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
            DevExpress.Utils.SuperToolTip superToolTip1 = new DevExpress.Utils.SuperToolTip();
            DevExpress.Utils.ToolTipItem toolTipItem1 = new DevExpress.Utils.ToolTipItem();
            this.rideDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.btnTAMAReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnOthersReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnRwoEtam = new DevExpress.XtraBars.BarButtonItem();
            this.btnRwoHbi = new DevExpress.XtraBars.BarButtonItem();
            this.btnTAMAReports = new DevExpress.XtraBars.BarButtonItem();
            this.ribeChoose = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colCompany = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWork = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRoundNos1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWorkStartDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineWorkStartDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colT3Date1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAjustT3Date1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAjustT3DateConfirm1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFCLExFtyDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLCLExFtyDate1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNumberOfLine1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFWOption1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSoIssueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeliveryDate = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rideDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rideDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeChoose)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.btnWOReport,
            this.btnRWOReport,
            this.barSubItem1,
            this.btnTAMAReport,
            this.btnOthersReport,
            this.barSubItem2,
            this.btnRwoEtam,
            this.btnRwoHbi,
            this.btnTAMAReports});
            this.objbarManager.MaxItemId = 23;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem1, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnWOReport, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnRWOReport, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ribeChoose,
            this.rideDate});
            this.objListGridControl.Size = new System.Drawing.Size(1354, 450);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 35;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany,
            this.colSalesOrderNo,
            this.colWorkOrderNo,
            this.colFactoryWork,
            this.colExFtyDate,
            this.colProjectNo,
            this.colFactory,
            this.colCustomer,
            this.colColorCode,
            this.colRoundNos1,
            this.colFactoryWorkStartDate1,
            this.colLineWorkStartDate1,
            this.colT3Date1,
            this.colAjustT3Date1,
            this.colAjustT3DateConfirm1,
            this.colFCLExFtyDate1,
            this.colLCLExFtyDate1,
            this.colNumberOfLine1,
            this.colQty,
            this.colFWOption1,
            this.colSoIssueDate,
            this.colDeliveryDate});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(651, 317, 202, 207);
            this.objListGridView.GroupCount = 2;
            this.objListGridView.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Sum, "Qty", null, "(Qty Sum =  {0})"),
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Count, "SalesOrderNo", null, "")});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsSelection.InvertSelection = true;
            this.objListGridView.OptionsView.AllowCellMerge = true;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colFactory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCustomer, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.objListGridView_CellMerge);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.RoundWorkOrder);
            // 
            // rideDate
            // 
            this.rideDate.AutoHeight = false;
            this.rideDate.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rideDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.rideDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.rideDate.EditFormat.FormatString = "yyyy/MM/dd";
            this.rideDate.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.rideDate.Mask.EditMask = "yyyy/MM/dd";
            this.rideDate.Name = "rideDate";
            this.rideDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Query";
            this.barButtonItem1.Id = 10;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // btnWOReport
            // 
            this.btnWOReport.Caption = "WO Report";
            this.btnWOReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnWOReport.Id = 11;
            this.btnWOReport.Name = "btnWOReport";
            toolTipItem1.Text = "WorkOrder Report";
            superToolTip1.Items.Add(toolTipItem1);
            this.btnWOReport.SuperTip = superToolTip1;
            this.btnWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnWOReport_ItemClick);
            // 
            // btnRWOReport
            // 
            this.btnRWOReport.Caption = "Cop WO Report";
            this.btnRWOReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnRWOReport.Id = 12;
            this.btnRWOReport.Name = "btnRWOReport";
            this.btnRWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRWOReport_ItemClick);
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "WorkOrder";
            this.barSubItem1.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.barSubItem1.Id = 15;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnTAMAReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnOthersReport)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // btnTAMAReport
            // 
            this.btnTAMAReport.Caption = "M&&S Report";
            this.btnTAMAReport.Id = 16;
            this.btnTAMAReport.Name = "btnTAMAReport";
            // 
            // btnOthersReport
            // 
            this.btnOthersReport.Caption = "except Hans && M&&S";
            this.btnOthersReport.Id = 17;
            this.btnOthersReport.Name = "btnOthersReport";
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "RWO Report";
            this.barSubItem2.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.barSubItem2.Id = 18;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRwoEtam),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRwoHbi),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnTAMAReports)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnRwoEtam
            // 
            this.btnRwoEtam.Caption = "ETAM Report";
            this.btnRwoEtam.Id = 19;
            this.btnRwoEtam.Name = "btnRwoEtam";
            // 
            // btnRwoHbi
            // 
            this.btnRwoHbi.Caption = "HBI Report";
            this.btnRwoHbi.Id = 20;
            this.btnRwoHbi.Name = "btnRwoHbi";
            // 
            // btnTAMAReports
            // 
            this.btnTAMAReports.Caption = "TAMA Report";
            this.btnTAMAReports.Id = 21;
            this.btnTAMAReports.Name = "btnTAMAReports";
            // 
            // ribeChoose
            // 
            this.ribeChoose.AutoHeight = false;
            this.ribeChoose.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribeChoose.Name = "ribeChoose";
            this.ribeChoose.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.OptionsColumn.AllowEdit = false;
            // 
            // colSalesOrderNo
            // 
            this.colSalesOrderNo.Caption = "Sales Order No.";
            this.colSalesOrderNo.FieldName = "SalesOrderNo";
            this.colSalesOrderNo.Name = "colSalesOrderNo";
            this.colSalesOrderNo.OptionsColumn.AllowEdit = false;
            this.colSalesOrderNo.Visible = true;
            this.colSalesOrderNo.VisibleIndex = 1;
            this.colSalesOrderNo.Width = 74;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 2;
            this.colWorkOrderNo.Width = 82;
            // 
            // colFactoryWork
            // 
            this.colFactoryWork.Caption = "FW Start Date";
            this.colFactoryWork.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFactoryWork.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFactoryWork.FieldName = "FWStartDate";
            this.colFactoryWork.Name = "colFactoryWork";
            this.colFactoryWork.OptionsColumn.AllowEdit = false;
            this.colFactoryWork.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFactoryWork.Width = 103;
            // 
            // colExFtyDate
            // 
            this.colExFtyDate.Caption = "Ex-fty Date";
            this.colExFtyDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colExFtyDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colExFtyDate.FieldName = "ExFtyDate";
            this.colExFtyDate.Name = "colExFtyDate";
            this.colExFtyDate.OptionsColumn.AllowEdit = false;
            this.colExFtyDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colExFtyDate.Width = 95;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 0;
            this.colProjectNo.Width = 140;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Width = 68;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.OptionsColumn.AllowEdit = false;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ERP Color Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 4;
            this.colColorCode.Width = 76;
            // 
            // colRoundNos1
            // 
            this.colRoundNos1.Caption = "Cop WO";
            this.colRoundNos1.FieldName = "RoundNos";
            this.colRoundNos1.Name = "colRoundNos1";
            this.colRoundNos1.OptionsColumn.AllowEdit = false;
            this.colRoundNos1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRoundNos1.Visible = true;
            this.colRoundNos1.VisibleIndex = 5;
            this.colRoundNos1.Width = 50;
            // 
            // colFactoryWorkStartDate1
            // 
            this.colFactoryWorkStartDate1.Caption = "FW Start Date";
            this.colFactoryWorkStartDate1.FieldName = "FactoryWorkStartDate";
            this.colFactoryWorkStartDate1.Name = "colFactoryWorkStartDate1";
            this.colFactoryWorkStartDate1.OptionsColumn.AllowEdit = false;
            this.colFactoryWorkStartDate1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFactoryWorkStartDate1.Visible = true;
            this.colFactoryWorkStartDate1.VisibleIndex = 8;
            this.colFactoryWorkStartDate1.Width = 70;
            // 
            // colLineWorkStartDate1
            // 
            this.colLineWorkStartDate1.Caption = "SW Start Date";
            this.colLineWorkStartDate1.FieldName = "LineWorkStartDate_SpecialFactory";
            this.colLineWorkStartDate1.Name = "colLineWorkStartDate1";
            this.colLineWorkStartDate1.OptionsColumn.AllowEdit = false;
            this.colLineWorkStartDate1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLineWorkStartDate1.Visible = true;
            this.colLineWorkStartDate1.VisibleIndex = 9;
            this.colLineWorkStartDate1.Width = 72;
            // 
            // colT3Date1
            // 
            this.colT3Date1.Caption = "T3 Date";
            this.colT3Date1.FieldName = "T3Date";
            this.colT3Date1.Name = "colT3Date1";
            this.colT3Date1.OptionsColumn.AllowEdit = false;
            this.colT3Date1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colT3Date1.Visible = true;
            this.colT3Date1.VisibleIndex = 10;
            this.colT3Date1.Width = 70;
            // 
            // colAjustT3Date1
            // 
            this.colAjustT3Date1.Caption = "aT3 Date";
            this.colAjustT3Date1.FieldName = "AjustT3Date";
            this.colAjustT3Date1.Name = "colAjustT3Date1";
            this.colAjustT3Date1.OptionsColumn.AllowEdit = false;
            this.colAjustT3Date1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colAjustT3Date1.Visible = true;
            this.colAjustT3Date1.VisibleIndex = 11;
            this.colAjustT3Date1.Width = 70;
            // 
            // colAjustT3DateConfirm1
            // 
            this.colAjustT3DateConfirm1.Caption = "aT3 Date Confirm";
            this.colAjustT3DateConfirm1.FieldName = "AjustT3DateConfirm";
            this.colAjustT3DateConfirm1.Name = "colAjustT3DateConfirm1";
            this.colAjustT3DateConfirm1.OptionsColumn.AllowEdit = false;
            this.colAjustT3DateConfirm1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colAjustT3DateConfirm1.Visible = true;
            this.colAjustT3DateConfirm1.VisibleIndex = 12;
            this.colAjustT3DateConfirm1.Width = 69;
            // 
            // colFCLExFtyDate1
            // 
            this.colFCLExFtyDate1.Caption = "FCL Ex-Fty Date";
            this.colFCLExFtyDate1.FieldName = "FCLExFtyDate";
            this.colFCLExFtyDate1.Name = "colFCLExFtyDate1";
            this.colFCLExFtyDate1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFCLExFtyDate1.Visible = true;
            this.colFCLExFtyDate1.VisibleIndex = 13;
            this.colFCLExFtyDate1.Width = 80;
            // 
            // colLCLExFtyDate1
            // 
            this.colLCLExFtyDate1.Caption = "LCL Ex-Fty Date";
            this.colLCLExFtyDate1.FieldName = "LCLExFtyDate";
            this.colLCLExFtyDate1.Name = "colLCLExFtyDate1";
            this.colLCLExFtyDate1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLCLExFtyDate1.Visible = true;
            this.colLCLExFtyDate1.VisibleIndex = 14;
            this.colLCLExFtyDate1.Width = 80;
            // 
            // colNumberOfLine1
            // 
            this.colNumberOfLine1.Caption = "No. of Line";
            this.colNumberOfLine1.FieldName = "NumberOfLine";
            this.colNumberOfLine1.Name = "colNumberOfLine1";
            this.colNumberOfLine1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colNumberOfLine1.Visible = true;
            this.colNumberOfLine1.VisibleIndex = 15;
            this.colNumberOfLine1.Width = 66;
            // 
            // colQty
            // 
            this.colQty.Caption = "Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.OptionsColumn.AllowEdit = false;
            this.colQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 6;
            this.colQty.Width = 62;
            // 
            // colFWOption1
            // 
            this.colFWOption1.Caption = "Option";
            this.colFWOption1.FieldName = "FWOption";
            this.colFWOption1.Name = "colFWOption1";
            this.colFWOption1.OptionsColumn.AllowEdit = false;
            this.colFWOption1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFWOption1.Visible = true;
            this.colFWOption1.VisibleIndex = 16;
            this.colFWOption1.Width = 63;
            // 
            // colSoIssueDate
            // 
            this.colSoIssueDate.Caption = "SO Issue Date";
            this.colSoIssueDate.FieldName = "SoIssueDate";
            this.colSoIssueDate.Name = "colSoIssueDate";
            this.colSoIssueDate.OptionsColumn.AllowEdit = false;
            this.colSoIssueDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSoIssueDate.Visible = true;
            this.colSoIssueDate.VisibleIndex = 3;
            this.colSoIssueDate.Width = 90;
            // 
            // colDeliveryDate
            // 
            this.colDeliveryDate.Caption = "Delivery Date";
            this.colDeliveryDate.FieldName = "DeliveryDate";
            this.colDeliveryDate.Name = "colDeliveryDate";
            this.colDeliveryDate.OptionsColumn.AllowEdit = false;
            this.colDeliveryDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDeliveryDate.Visible = true;
            this.colDeliveryDate.VisibleIndex = 7;
            this.colDeliveryDate.Width = 85;
            // 
            // WOcRWOListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WOcRWOListForm";
            this.Size = new System.Drawing.Size(1354, 477);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rideDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rideDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeChoose)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem btnWOReport;
        private DevExpress.XtraBars.BarButtonItem btnRWOReport;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem btnTAMAReport;
        private DevExpress.XtraBars.BarButtonItem btnOthersReport;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnRwoEtam;
        private DevExpress.XtraBars.BarButtonItem btnRwoHbi;
        private DevExpress.XtraBars.BarButtonItem btnTAMAReports;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeChoose;
        private DevExpress.XtraGrid.Columns.GridColumn colCompany;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWork;
        private DevExpress.XtraGrid.Columns.GridColumn colExFtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit rideDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRoundNos1;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWorkStartDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colLineWorkStartDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colT3Date1;
        private DevExpress.XtraGrid.Columns.GridColumn colAjustT3Date1;
        private DevExpress.XtraGrid.Columns.GridColumn colAjustT3DateConfirm1;
        private DevExpress.XtraGrid.Columns.GridColumn colFCLExFtyDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colLCLExFtyDate1;
        private DevExpress.XtraGrid.Columns.GridColumn colNumberOfLine1;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraGrid.Columns.GridColumn colFWOption1;
        private DevExpress.XtraGrid.Columns.GridColumn colSoIssueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colDeliveryDate;

    }
}
