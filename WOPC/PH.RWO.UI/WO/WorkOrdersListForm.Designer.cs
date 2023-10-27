namespace PH.RWO.UI
{
    partial class WorkOrdersListForm
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
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.Utils.SuperToolTip superToolTip2 = new DevExpress.Utils.SuperToolTip();
            DevExpress.Utils.ToolTipItem toolTipItem2 = new DevExpress.Utils.ToolTipItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOSLReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRwoReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.btnTAMAReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnOthersReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnRwoEtam = new DevExpress.XtraBars.BarButtonItem();
            this.btnRwoHbi = new DevExpress.XtraBars.BarButtonItem();
            this.btnTAMAReports = new DevExpress.XtraBars.BarButtonItem();
            this.workOrderBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.colTotalRWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalColor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerCollection = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSeasonRange = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPackingMethod = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCatNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDestination = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBrandName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHKPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRatio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaxOvershipQtyRatio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSAH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSizeMatrix = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colComposition = new DevExpress.XtraGrid.Columns.GridColumn();
            this.WOStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnWOKBReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem3 = new DevExpress.XtraBars.BarSubItem();
            this.bbut_GenerateSPC = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonSample = new DevExpress.XtraBars.BarButtonItem();
            this.colSalesOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.workOrderBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.btnWOSLReport,
            this.btnRwoReport,
            this.barSubItem1,
            this.btnTAMAReport,
            this.btnOthersReport,
            this.barSubItem2,
            this.btnRwoEtam,
            this.btnRwoHbi,
            this.btnTAMAReports,
            this.btnWOKBReport,
            this.barSubItem3,
            this.bbut_GenerateSPC,
            this.barButtonSample});
            this.objbarManager.MaxItemId = 26;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem1, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnWOSLReport, "", true, true, false, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.bbut_GenerateSPC, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonSample, "", true, true, false, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.DataSource = this.workOrderBindingSource;
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode2.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode2});
            this.objListGridControl.Size = new System.Drawing.Size(1131, 354);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colWorkOrderNo,
            this.colTotalColor,
            this.colTotalRWO,
            this.colStyleNo,
            this.colCustomerStyleNo,
            this.colCustomerPO,
            this.colCustomerCollection,
            this.colVersion,
            this.colSeasonRange,
            this.colShipMode,
            this.colPackingMethod,
            this.colCatNo,
            this.colCategory,
            this.colDestination,
            this.colBrandName,
            this.colHKPrice,
            this.colRatio,
            this.colMaxOvershipQtyRatio,
            this.colSAH,
            this.colComposition,
            this.colSizeMatrix,
            this.WOStatus,
            this.colSalesOrderLine});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Query";
            this.barButtonItem1.Id = 10;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // btnWOSLReport
            // 
            this.btnWOSLReport.Caption = "WO Report";
            this.btnWOSLReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnWOSLReport.Id = 11;
            this.btnWOSLReport.Name = "btnWOSLReport";
            toolTipItem2.Text = "WorkOrder Report";
            superToolTip2.Items.Add(toolTipItem2);
            this.btnWOSLReport.SuperTip = superToolTip2;
            this.btnWOSLReport.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnWOSLReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnWOReport_ItemClick);
            // 
            // btnRwoReport
            // 
            this.btnRwoReport.Caption = "RWO Report";
            this.btnRwoReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnRwoReport.Id = 12;
            this.btnRwoReport.Name = "btnRwoReport";
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
            // workOrderBindingSource
            // 
            this.workOrderBindingSource.DataSource = typeof(PH.RWO.BO.WorkOrder);
            // 
            // colTotalRWO
            // 
            this.colTotalRWO.Caption = "Cop WO#";
            this.colTotalRWO.FieldName = "TotalRWO";
            this.colTotalRWO.Name = "colTotalRWO";
            this.colTotalRWO.OptionsColumn.ReadOnly = true;
            this.colTotalRWO.Visible = true;
            this.colTotalRWO.VisibleIndex = 3;
            this.colTotalRWO.Width = 77;
            // 
            // colTotalColor
            // 
            this.colTotalColor.Caption = "Clr#";
            this.colTotalColor.FieldName = "TotalColor";
            this.colTotalColor.Name = "colTotalColor";
            this.colTotalColor.OptionsColumn.ReadOnly = true;
            this.colTotalColor.Visible = true;
            this.colTotalColor.VisibleIndex = 2;
            this.colTotalColor.Width = 61;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO#";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 1;
            this.colWorkOrderNo.Width = 105;
            // 
            // colStyleNo
            // 
            this.colStyleNo.Caption = "PH Style No";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 4;
            this.colStyleNo.Width = 88;
            // 
            // colCustomerStyleNo
            // 
            this.colCustomerStyleNo.Caption = "Cust Style No";
            this.colCustomerStyleNo.FieldName = "CustomerStyleNo";
            this.colCustomerStyleNo.Name = "colCustomerStyleNo";
            this.colCustomerStyleNo.Visible = true;
            this.colCustomerStyleNo.VisibleIndex = 5;
            this.colCustomerStyleNo.Width = 110;
            // 
            // colCustomerPO
            // 
            this.colCustomerPO.Caption = "Cust PO";
            this.colCustomerPO.FieldName = "CustomerPO";
            this.colCustomerPO.Name = "colCustomerPO";
            this.colCustomerPO.Visible = true;
            this.colCustomerPO.VisibleIndex = 6;
            this.colCustomerPO.Width = 99;
            // 
            // colCustomerCollection
            // 
            this.colCustomerCollection.Caption = "Cust Collection";
            this.colCustomerCollection.FieldName = "CustomerCollection";
            this.colCustomerCollection.Name = "colCustomerCollection";
            this.colCustomerCollection.Visible = true;
            this.colCustomerCollection.VisibleIndex = 7;
            this.colCustomerCollection.Width = 132;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.Visible = true;
            this.colVersion.VisibleIndex = 8;
            // 
            // colSeasonRange
            // 
            this.colSeasonRange.Caption = "Season/Range";
            this.colSeasonRange.FieldName = "SeasonRange";
            this.colSeasonRange.Name = "colSeasonRange";
            this.colSeasonRange.Visible = true;
            this.colSeasonRange.VisibleIndex = 9;
            this.colSeasonRange.Width = 112;
            // 
            // colShipMode
            // 
            this.colShipMode.Caption = "Ship Mode";
            this.colShipMode.FieldName = "ShipMode";
            this.colShipMode.Name = "colShipMode";
            this.colShipMode.Visible = true;
            this.colShipMode.VisibleIndex = 10;
            this.colShipMode.Width = 79;
            // 
            // colPackingMethod
            // 
            this.colPackingMethod.Caption = "Packing Method";
            this.colPackingMethod.FieldName = "PackingMethod";
            this.colPackingMethod.Name = "colPackingMethod";
            this.colPackingMethod.Visible = true;
            this.colPackingMethod.VisibleIndex = 11;
            this.colPackingMethod.Width = 112;
            // 
            // colCatNo
            // 
            this.colCatNo.Caption = "Cat No";
            this.colCatNo.FieldName = "CatNo";
            this.colCatNo.Name = "colCatNo";
            this.colCatNo.Visible = true;
            this.colCatNo.VisibleIndex = 12;
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Visible = true;
            this.colCategory.VisibleIndex = 13;
            // 
            // colDestination
            // 
            this.colDestination.Caption = "Destination";
            this.colDestination.FieldName = "Destination";
            this.colDestination.Name = "colDestination";
            this.colDestination.Visible = true;
            this.colDestination.VisibleIndex = 14;
            this.colDestination.Width = 147;
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "BrandName";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            this.colBrandName.Visible = true;
            this.colBrandName.VisibleIndex = 15;
            this.colBrandName.Width = 100;
            // 
            // colHKPrice
            // 
            this.colHKPrice.Caption = "HK Price";
            this.colHKPrice.FieldName = "HKPrice";
            this.colHKPrice.Name = "colHKPrice";
            this.colHKPrice.Visible = true;
            this.colHKPrice.VisibleIndex = 16;
            // 
            // colRatio
            // 
            this.colRatio.Caption = "Ratio";
            this.colRatio.FieldName = "Ratio";
            this.colRatio.Name = "colRatio";
            this.colRatio.Visible = true;
            this.colRatio.VisibleIndex = 17;
            // 
            // colMaxOvershipQtyRatio
            // 
            this.colMaxOvershipQtyRatio.Caption = "Max Overship Qty Ratio";
            this.colMaxOvershipQtyRatio.FieldName = "MaxOvershipQtyRatio";
            this.colMaxOvershipQtyRatio.Name = "colMaxOvershipQtyRatio";
            this.colMaxOvershipQtyRatio.Visible = true;
            this.colMaxOvershipQtyRatio.VisibleIndex = 20;
            this.colMaxOvershipQtyRatio.Width = 137;
            // 
            // colSAH
            // 
            this.colSAH.Caption = "SAH";
            this.colSAH.FieldName = "SAH";
            this.colSAH.Name = "colSAH";
            this.colSAH.Visible = true;
            this.colSAH.VisibleIndex = 21;
            // 
            // colSizeMatrix
            // 
            this.colSizeMatrix.Caption = "Size Matrix";
            this.colSizeMatrix.FieldName = "SizeMatrix";
            this.colSizeMatrix.Name = "colSizeMatrix";
            this.colSizeMatrix.Visible = true;
            this.colSizeMatrix.VisibleIndex = 19;
            // 
            // colComposition
            // 
            this.colComposition.Caption = "Composition";
            this.colComposition.FieldName = "Composition";
            this.colComposition.Name = "colComposition";
            this.colComposition.Visible = true;
            this.colComposition.VisibleIndex = 18;
            this.colComposition.Width = 97;
            // 
            // WOStatus
            // 
            this.WOStatus.Caption = "WO Status";
            this.WOStatus.FieldName = "Status";
            this.WOStatus.Name = "WOStatus";
            this.WOStatus.Visible = true;
            this.WOStatus.VisibleIndex = 0;
            this.WOStatus.Width = 107;
            // 
            // btnWOKBReport
            // 
            this.btnWOKBReport.Caption = "WO Report (KB)";
            this.btnWOKBReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnWOKBReport.Id = 22;
            this.btnWOKBReport.Name = "btnWOKBReport";
            this.btnWOKBReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnWOKBReport_ItemClick);
            // 
            // barSubItem3
            // 
            this.barSubItem3.Caption = "Report";
            this.barSubItem3.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.barSubItem3.Id = 23;
            this.barSubItem3.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnWOKBReport)});
            this.barSubItem3.Name = "barSubItem3";
            this.barSubItem3.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // bbut_GenerateSPC
            // 
            this.bbut_GenerateSPC.Caption = "Generate SPC";
            this.bbut_GenerateSPC.Id = 24;
            this.bbut_GenerateSPC.Name = "bbut_GenerateSPC";
            this.bbut_GenerateSPC.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.bbut_GenerateSPC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.bbut_AutoGenerateSPC_ItemClick);
            // 
            // barButtonSample
            // 
            this.barButtonSample.Caption = "Sample";
            this.barButtonSample.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.barButtonSample.Id = 25;
            this.barButtonSample.Name = "barButtonSample";
            this.barButtonSample.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barButtonSample.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonSample_ItemClick);
            // 
            // colSalesOrderLine
            // 
            this.colSalesOrderLine.Caption = "SalesOrderLine";
            this.colSalesOrderLine.FieldName = "SalesOrderLine";
            this.colSalesOrderLine.Name = "colSalesOrderLine";
            // 
            // WorkOrdersListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WorkOrdersListForm";
            this.Size = new System.Drawing.Size(1131, 381);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.workOrderBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem btnWOSLReport;
        private DevExpress.XtraBars.BarButtonItem btnRwoReport;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem btnTAMAReport;
        private DevExpress.XtraBars.BarButtonItem btnOthersReport;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnRwoEtam;
        private DevExpress.XtraBars.BarButtonItem btnRwoHbi;
        private DevExpress.XtraBars.BarButtonItem btnTAMAReports;
        private System.Windows.Forms.BindingSource workOrderBindingSource;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalRWO;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalColor;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerPO;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerCollection;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colSeasonRange;
        private DevExpress.XtraGrid.Columns.GridColumn colShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn colPackingMethod;
        private DevExpress.XtraGrid.Columns.GridColumn colCatNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCategory;
        private DevExpress.XtraGrid.Columns.GridColumn colDestination;
        private DevExpress.XtraGrid.Columns.GridColumn colBrandName;
        private DevExpress.XtraGrid.Columns.GridColumn colHKPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colRatio;
        private DevExpress.XtraGrid.Columns.GridColumn colMaxOvershipQtyRatio;
        private DevExpress.XtraGrid.Columns.GridColumn colSAH;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeMatrix;
        private DevExpress.XtraGrid.Columns.GridColumn colComposition;
        private DevExpress.XtraGrid.Columns.GridColumn WOStatus;
        private DevExpress.XtraBars.BarButtonItem btnWOKBReport;
        private DevExpress.XtraBars.BarSubItem barSubItem3;
        private DevExpress.XtraBars.BarButtonItem bbut_GenerateSPC;
        private DevExpress.XtraBars.BarButtonItem barButtonSample;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderLine;

    }
}
