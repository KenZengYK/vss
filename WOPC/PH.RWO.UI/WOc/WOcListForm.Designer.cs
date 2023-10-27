namespace PH.RWO.UI
{
    partial class WOcListForm
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
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBulkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalRWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colT3 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
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
            this.ribeChoose});
            this.objListGridControl.Size = new System.Drawing.Size(1034, 352);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany,
            this.colSalesOrderNo,
            this.colWorkOrderNo,
            this.colFactoryWork,
            this.colExFtyDate,
            this.colProjectNo,
            this.colFactory,
            this.colCustomer,
            this.colCheckFlag,
            this.colColorCode,
            this.colTotalQty,
            this.colSampleQty,
            this.colBulkQty,
            this.colTotalRWO,
            this.colT3});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(651, 317, 202, 207);
            this.objListGridView.GroupCount = 2;
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
            this.ribeChoose.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeAction_ButtonClick);
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
            this.colSalesOrderNo.Caption = "Sales Order No";
            this.colSalesOrderNo.FieldName = "SalesOrderNo";
            this.colSalesOrderNo.Name = "colSalesOrderNo";
            this.colSalesOrderNo.OptionsColumn.AllowEdit = false;
            this.colSalesOrderNo.Visible = true;
            this.colSalesOrderNo.VisibleIndex = 1;
            this.colSalesOrderNo.Width = 104;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO#";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 2;
            this.colWorkOrderNo.Width = 106;
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
            this.colFactoryWork.Visible = true;
            this.colFactoryWork.VisibleIndex = 4;
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
            this.colExFtyDate.Visible = true;
            this.colExFtyDate.VisibleIndex = 6;
            this.colExFtyDate.Width = 95;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project No";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 0;
            this.colProjectNo.Width = 107;
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
            // colCheckFlag
            // 
            this.colCheckFlag.Caption = "Entrance Key";
            this.colCheckFlag.ColumnEdit = this.ribeChoose;
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.VisibleIndex = 8;
            this.colCheckFlag.Width = 96;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ERP Color Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 3;
            this.colColorCode.Width = 106;
            // 
            // colTotalQty
            // 
            this.colTotalQty.Caption = "Total Qty";
            this.colTotalQty.FieldName = "TotalQty";
            this.colTotalQty.Name = "colTotalQty";
            this.colTotalQty.OptionsColumn.AllowEdit = false;
            this.colTotalQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalQty.Width = 82;
            // 
            // colSampleQty
            // 
            this.colSampleQty.Caption = "Sample Qty";
            this.colSampleQty.DisplayFormat.FormatString = "N0";
            this.colSampleQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSampleQty.FieldName = "SampleQty";
            this.colSampleQty.Name = "colSampleQty";
            this.colSampleQty.OptionsColumn.AllowEdit = false;
            this.colSampleQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleQty.Width = 91;
            // 
            // colBulkQty
            // 
            this.colBulkQty.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colBulkQty.Caption = "Qty";
            this.colBulkQty.DisplayFormat.FormatString = "N0";
            this.colBulkQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colBulkQty.FieldName = "BulkQty";
            this.colBulkQty.Name = "colBulkQty";
            this.colBulkQty.OptionsColumn.AllowEdit = false;
            this.colBulkQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkQty.Visible = true;
            this.colBulkQty.VisibleIndex = 7;
            this.colBulkQty.Width = 87;
            // 
            // colTotalRWO
            // 
            this.colTotalRWO.Caption = "Total Rounds";
            this.colTotalRWO.DisplayFormat.FormatString = "N0";
            this.colTotalRWO.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalRWO.FieldName = "TotalRWO";
            this.colTotalRWO.Name = "colTotalRWO";
            this.colTotalRWO.OptionsColumn.AllowEdit = false;
            this.colTotalRWO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalRWO.Width = 98;
            // 
            // colT3
            // 
            this.colT3.Caption = "T3 Date";
            this.colT3.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colT3.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colT3.FieldName = "T3";
            this.colT3.Name = "colT3";
            this.colT3.OptionsColumn.AllowEdit = false;
            this.colT3.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colT3.Visible = true;
            this.colT3.VisibleIndex = 5;
            this.colT3.Width = 81;
            // 
            // WOcListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WOcListForm";
            this.Size = new System.Drawing.Size(1034, 379);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
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
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalQty;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleQty;
        private DevExpress.XtraGrid.Columns.GridColumn colBulkQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalRWO;
        private DevExpress.XtraGrid.Columns.GridColumn colT3;

    }
}
