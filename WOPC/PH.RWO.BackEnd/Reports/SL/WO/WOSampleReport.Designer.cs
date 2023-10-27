namespace PH.RWO.BackEnd
{
    partial class WOSampleReport
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

        #region Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.prPivotSample = new PH.Platform.Report.PivotGrid.PRPivotGrid();
            this.pivotColSize1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColSizeOrder1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColQty1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.pivotColSymbol = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColSampleType = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColWorkShop = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColAddressTo = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColSampleDespatchDate = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColColorCode1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColCup1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColSubTtl1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColUnit1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColSizeOrder = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.csHeader1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csFooter1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csTitle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportHeader = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell31 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.csHeader2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csHeader3 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetailBlue1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetailYellow = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csTime1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetailBlue2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetailGreen = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csTime2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csTime3 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csFooter2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // prPivotSample
            // 
            this.prPivotSample.ColumnAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotColSize1,
            this.pivotColSizeOrder1});
            this.prPivotSample.ColumnCounts = 6;
            this.prPivotSample.ColumnMaxWidth = 60;
            this.prPivotSample.DataAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotColQty1});
            this.prPivotSample.DataMember = "WorkOrderColors.WorkOrderSKUs";
            this.prPivotSample.DataSource = this.bindingSource1;
            this.prPivotSample.GrandTotalText = "Total / 總數:-";
            this.prPivotSample.LeftAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotColSymbol,
            this.pivotColSampleType,
            this.pivotColWorkShop,
            this.pivotColAddressTo,
            this.pivotColSampleDespatchDate,
            this.pivotColColorCode1,
            this.pivotColCup1});
            this.prPivotSample.Location = new System.Drawing.Point(0, 25);
            this.prPivotSample.Name = "prPivotSample";
            this.prPivotSample.RightAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotColSubTtl1,
            this.pivotColUnit1});
            this.prPivotSample.RowCounts = 4;
            this.prPivotSample.Size = new System.Drawing.Size(730, 23);
            // 
            // pivotColSize1
            // 
            this.pivotColSize1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColSize1.DetailBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.pivotColSize1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSize1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSize1.DetailBorderWidth = 1;
            this.pivotColSize1.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSize1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSize1.DetailKeepTogether = true;
            this.pivotColSize1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSize1.DetailSize = new System.Drawing.Size(100, 23);
            this.pivotColSize1.DetailTag = null;
            this.pivotColSize1.DetailText = null;
            this.pivotColSize1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSize1.EmptyValueText = null;
            this.pivotColSize1.FieldName = "SizeDesc";
            this.pivotColSize1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColSize1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSize1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.pivotColSize1.HeaderBorderWidth = 1;
            this.pivotColSize1.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.pivotColSize1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSize1.HeaderKeepTogether = true;
            this.pivotColSize1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSize1.HeaderSize = new System.Drawing.Size(100, 20);
            this.pivotColSize1.HeaderTag = null;
            this.pivotColSize1.HeaderText = "SIZE / 晒士 ( Bras as British inches / 胸圍依英式英吋)";
            this.pivotColSize1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSize1.Name = "pivotColSize1";
            this.pivotColSize1.TotalFormatString = "{0:#,#}";
            // 
            // pivotColSizeOrder1
            // 
            this.pivotColSizeOrder1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColSizeOrder1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColSizeOrder1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder1.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotColSizeOrder1.DetailBorderWidth = 1;
            this.pivotColSizeOrder1.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotColSizeOrder1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder1.DetailKeepTogether = true;
            this.pivotColSizeOrder1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSizeOrder1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColSizeOrder1.DetailTag = null;
            this.pivotColSizeOrder1.DetailText = null;
            this.pivotColSizeOrder1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotColSizeOrder1.DetailVisible = false;
            this.pivotColSizeOrder1.EmptyValueText = null;
            this.pivotColSizeOrder1.FieldName = "SizeOrder";
            this.pivotColSizeOrder1.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Index;
            this.pivotColSizeOrder1.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotColSizeOrder1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder1.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotColSizeOrder1.HeaderBorderWidth = 1;
            this.pivotColSizeOrder1.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotColSizeOrder1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder1.HeaderKeepTogether = true;
            this.pivotColSizeOrder1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSizeOrder1.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotColSizeOrder1.HeaderTag = null;
            this.pivotColSizeOrder1.HeaderText = null;
            this.pivotColSizeOrder1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotColSizeOrder1.HeaderVisible = false;
            this.pivotColSizeOrder1.Name = "pivotColSizeOrder1";
            // 
            // pivotColQty1
            // 
            this.pivotColQty1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColQty1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColQty1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColQty1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColQty1.DetailBorderWidth = 1;
            this.pivotColQty1.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColQty1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColQty1.DetailKeepTogether = true;
            this.pivotColQty1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColQty1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColQty1.DetailTag = null;
            this.pivotColQty1.DetailText = null;
            this.pivotColQty1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColQty1.EmptyValueText = null;
            this.pivotColQty1.FieldName = "SampleQty";
            this.pivotColQty1.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotColQty1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColQty1.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotColQty1.HeaderBorderWidth = 1;
            this.pivotColQty1.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColQty1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColQty1.HeaderKeepTogether = true;
            this.pivotColQty1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 5, 0, 0, -1F);
            this.pivotColQty1.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotColQty1.HeaderTag = null;
            this.pivotColQty1.HeaderText = null;
            this.pivotColQty1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotColQty1.Name = "pivotColQty1";
            this.pivotColQty1.TotalFormatString = "{0:#,#}";
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.RWO.BO.WorkOrderSample);
            // 
            // pivotColSymbol
            // 
            this.pivotColSymbol.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColSymbol.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColSymbol.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSymbol.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSymbol.DetailBorderWidth = 1;
            this.pivotColSymbol.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSymbol.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSymbol.DetailKeepTogether = true;
            this.pivotColSymbol.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSymbol.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColSymbol.DetailTag = null;
            this.pivotColSymbol.DetailText = null;
            this.pivotColSymbol.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSymbol.EmptyValueText = null;
            this.pivotColSymbol.FieldName = "Symbol";
            this.pivotColSymbol.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColSymbol.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSymbol.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSymbol.HeaderBorderWidth = 1;
            this.pivotColSymbol.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSymbol.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSymbol.HeaderKeepTogether = true;
            this.pivotColSymbol.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSymbol.HeaderSize = new System.Drawing.Size(10, 25);
            this.pivotColSymbol.HeaderTag = null;
            this.pivotColSymbol.HeaderText = null;
            this.pivotColSymbol.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSymbol.Name = "pivotColSymbol";
            // 
            // pivotColSampleType
            // 
            this.pivotColSampleType.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColSampleType.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColSampleType.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleType.DetailBorders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.pivotColSampleType.DetailBorderWidth = 1;
            this.pivotColSampleType.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSampleType.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleType.DetailKeepTogether = true;
            this.pivotColSampleType.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSampleType.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColSampleType.DetailTag = null;
            this.pivotColSampleType.DetailText = null;
            this.pivotColSampleType.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSampleType.EmptyValueText = null;
            this.pivotColSampleType.FieldName = "SampleType";
            this.pivotColSampleType.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColSampleType.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleType.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSampleType.HeaderBorderWidth = 1;
            this.pivotColSampleType.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSampleType.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleType.HeaderKeepTogether = true;
            this.pivotColSampleType.HeaderMultiline = true;
            this.pivotColSampleType.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSampleType.HeaderSize = new System.Drawing.Size(42, 25);
            this.pivotColSampleType.HeaderTag = null;
            this.pivotColSampleType.HeaderText = "Type\r\n類別";
            this.pivotColSampleType.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSampleType.Name = "pivotColSampleType";
            // 
            // pivotColWorkShop
            // 
            this.pivotColWorkShop.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColWorkShop.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColWorkShop.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColWorkShop.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColWorkShop.DetailBorderWidth = 1;
            this.pivotColWorkShop.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColWorkShop.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColWorkShop.DetailKeepTogether = true;
            this.pivotColWorkShop.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColWorkShop.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColWorkShop.DetailTag = null;
            this.pivotColWorkShop.DetailText = null;
            this.pivotColWorkShop.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColWorkShop.EmptyValueText = null;
            this.pivotColWorkShop.FieldName = "WorkShop";
            this.pivotColWorkShop.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColWorkShop.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColWorkShop.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColWorkShop.HeaderBorderWidth = 1;
            this.pivotColWorkShop.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColWorkShop.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColWorkShop.HeaderKeepTogether = true;
            this.pivotColWorkShop.HeaderMultiline = true;
            this.pivotColWorkShop.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColWorkShop.HeaderSize = new System.Drawing.Size(52, 25);
            this.pivotColWorkShop.HeaderTag = null;
            this.pivotColWorkShop.HeaderText = "Make by\r\nw/c Ws\r\n制作部門";
            this.pivotColWorkShop.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColWorkShop.Name = "pivotColWorkShop";
            // 
            // pivotColAddressTo
            // 
            this.pivotColAddressTo.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColAddressTo.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColAddressTo.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColAddressTo.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColAddressTo.DetailBorderWidth = 1;
            this.pivotColAddressTo.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pivotColAddressTo.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColAddressTo.DetailKeepTogether = true;
            this.pivotColAddressTo.DetailMultiline = true;
            this.pivotColAddressTo.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColAddressTo.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColAddressTo.DetailTag = null;
            this.pivotColAddressTo.DetailText = null;
            this.pivotColAddressTo.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColAddressTo.EmptyValueText = null;
            this.pivotColAddressTo.FieldName = "AddressTo";
            this.pivotColAddressTo.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColAddressTo.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColAddressTo.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColAddressTo.HeaderBorderWidth = 1;
            this.pivotColAddressTo.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pivotColAddressTo.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColAddressTo.HeaderKeepTogether = true;
            this.pivotColAddressTo.HeaderMultiline = true;
            this.pivotColAddressTo.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColAddressTo.HeaderSize = new System.Drawing.Size(52, 25);
            this.pivotColAddressTo.HeaderTag = null;
            this.pivotColAddressTo.HeaderText = "Address\r\nTo\r\n目的地";
            this.pivotColAddressTo.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColAddressTo.Name = "pivotColAddressTo";
            // 
            // pivotColSampleDespatchDate
            // 
            this.pivotColSampleDespatchDate.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColSampleDespatchDate.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColSampleDespatchDate.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleDespatchDate.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSampleDespatchDate.DetailBorderWidth = 1;
            this.pivotColSampleDespatchDate.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSampleDespatchDate.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleDespatchDate.DetailKeepTogether = true;
            this.pivotColSampleDespatchDate.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSampleDespatchDate.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColSampleDespatchDate.DetailTag = null;
            this.pivotColSampleDespatchDate.DetailText = "[SampleDespatchDate!yyyy/MM/dd]";
            this.pivotColSampleDespatchDate.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSampleDespatchDate.EmptyValueText = null;
            this.pivotColSampleDespatchDate.FieldName = "SampleDespatchDate";
            this.pivotColSampleDespatchDate.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColSampleDespatchDate.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleDespatchDate.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSampleDespatchDate.HeaderBorderWidth = 1;
            this.pivotColSampleDespatchDate.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSampleDespatchDate.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSampleDespatchDate.HeaderKeepTogether = true;
            this.pivotColSampleDespatchDate.HeaderMultiline = true;
            this.pivotColSampleDespatchDate.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSampleDespatchDate.HeaderSize = new System.Drawing.Size(52, 25);
            this.pivotColSampleDespatchDate.HeaderTag = null;
            this.pivotColSampleDespatchDate.HeaderText = "Despatch\r\nDate\r\n速送日期";
            this.pivotColSampleDespatchDate.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSampleDespatchDate.Name = "pivotColSampleDespatchDate";
            // 
            // pivotColColorCode1
            // 
            this.pivotColColorCode1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColColorCode1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColColorCode1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColColorCode1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColColorCode1.DetailBorderWidth = 1;
            this.pivotColColorCode1.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColColorCode1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColColorCode1.DetailKeepTogether = true;
            this.pivotColColorCode1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColColorCode1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColColorCode1.DetailTag = null;
            this.pivotColColorCode1.DetailText = null;
            this.pivotColColorCode1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColColorCode1.EmptyValueText = null;
            this.pivotColColorCode1.FieldName = "ColorCode";
            this.pivotColColorCode1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColColorCode1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColColorCode1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColColorCode1.HeaderBorderWidth = 1;
            this.pivotColColorCode1.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pivotColColorCode1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColColorCode1.HeaderKeepTogether = true;
            this.pivotColColorCode1.HeaderMultiline = true;
            this.pivotColColorCode1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColColorCode1.HeaderSize = new System.Drawing.Size(52, 43);
            this.pivotColColorCode1.HeaderTag = null;
            this.pivotColColorCode1.HeaderText = "PH\r\nClr Code\r\n色碼";
            this.pivotColColorCode1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColColorCode1.Name = "pivotColColorCode1";
            // 
            // pivotColCup1
            // 
            this.pivotColCup1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColCup1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColCup1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColCup1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColCup1.DetailBorderWidth = 1;
            this.pivotColCup1.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.pivotColCup1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColCup1.DetailKeepTogether = true;
            this.pivotColCup1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColCup1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColCup1.DetailTag = null;
            this.pivotColCup1.DetailText = null;
            this.pivotColCup1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColCup1.EmptyValueText = null;
            this.pivotColCup1.FieldName = "CustCup";
            this.pivotColCup1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColCup1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColCup1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColCup1.HeaderBorderWidth = 1;
            this.pivotColCup1.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColCup1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColCup1.HeaderKeepTogether = true;
            this.pivotColCup1.HeaderMultiline = true;
            this.pivotColCup1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColCup1.HeaderSize = new System.Drawing.Size(52, 43);
            this.pivotColCup1.HeaderTag = null;
            this.pivotColCup1.HeaderText = "CUPS\r\n杯";
            this.pivotColCup1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColCup1.Name = "pivotColCup1";
            // 
            // pivotColSubTtl1
            // 
            this.pivotColSubTtl1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColSubTtl1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColSubTtl1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSubTtl1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSubTtl1.DetailBorderWidth = 1;
            this.pivotColSubTtl1.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSubTtl1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSubTtl1.DetailKeepTogether = true;
            this.pivotColSubTtl1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotColSubTtl1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColSubTtl1.DetailTag = null;
            this.pivotColSubTtl1.DetailText = null;
            this.pivotColSubTtl1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotColSubTtl1.EmptyValueText = null;
            this.pivotColSubTtl1.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.SubTotal;
            this.pivotColSubTtl1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColSubTtl1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSubTtl1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColSubTtl1.HeaderBorderWidth = 1;
            this.pivotColSubTtl1.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColSubTtl1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSubTtl1.HeaderKeepTogether = true;
            this.pivotColSubTtl1.HeaderMultiline = true;
            this.pivotColSubTtl1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSubTtl1.HeaderSize = new System.Drawing.Size(68, 43);
            this.pivotColSubTtl1.HeaderTag = null;
            this.pivotColSubTtl1.HeaderText = "Sub-Ttl\r\n小計";
            this.pivotColSubTtl1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColSubTtl1.Name = "pivotColSubTtl1";
            this.pivotColSubTtl1.TotalFormatString = "{0:#,#}";
            // 
            // pivotColUnit1
            // 
            this.pivotColUnit1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColUnit1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColUnit1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColUnit1.DetailBorderWidth = 1;
            this.pivotColUnit1.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColUnit1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit1.DetailKeepTogether = true;
            this.pivotColUnit1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColUnit1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColUnit1.DetailTag = null;
            this.pivotColUnit1.DetailText = "pcs";
            this.pivotColUnit1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColUnit1.EmptyValueText = null;
            this.pivotColUnit1.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Unit;
            this.pivotColUnit1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColUnit1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColUnit1.HeaderBorderWidth = 1;
            this.pivotColUnit1.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColUnit1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit1.HeaderKeepTogether = true;
            this.pivotColUnit1.HeaderMultiline = true;
            this.pivotColUnit1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColUnit1.HeaderSize = new System.Drawing.Size(31, 43);
            this.pivotColUnit1.HeaderTag = null;
            this.pivotColUnit1.HeaderText = "unit\r\n單位";
            this.pivotColUnit1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColUnit1.Name = "pivotColUnit1";
            // 
            // pivotColSizeOrder
            // 
            this.pivotColSizeOrder.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColSizeOrder.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColSizeOrder.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotColSizeOrder.DetailBorderWidth = 1;
            this.pivotColSizeOrder.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotColSizeOrder.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder.DetailKeepTogether = true;
            this.pivotColSizeOrder.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSizeOrder.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColSizeOrder.DetailTag = null;
            this.pivotColSizeOrder.DetailText = null;
            this.pivotColSizeOrder.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotColSizeOrder.DetailVisible = false;
            this.pivotColSizeOrder.EmptyValueText = null;
            this.pivotColSizeOrder.FieldName = "SizeOrder";
            this.pivotColSizeOrder.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Index;
            this.pivotColSizeOrder.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotColSizeOrder.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotColSizeOrder.HeaderBorderWidth = 1;
            this.pivotColSizeOrder.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotColSizeOrder.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColSizeOrder.HeaderKeepTogether = true;
            this.pivotColSizeOrder.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColSizeOrder.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotColSizeOrder.HeaderTag = null;
            this.pivotColSizeOrder.HeaderText = null;
            this.pivotColSizeOrder.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotColSizeOrder.HeaderVisible = false;
            this.pivotColSizeOrder.Name = "pivotColSizeOrder";
            // 
            // PageHeader
            // 
            this.PageHeader.Height = 0;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.PrintOn = DevExpress.XtraReports.UI.PrintOnPages.NotWithReportHeader;
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // csHeader1
            // 
            this.csHeader1.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader1.Name = "csHeader1";
            this.csHeader1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csDetail1
            // 
            this.csDetail1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csDetail1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail1.Name = "csDetail1";
            this.csDetail1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetail1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csFooter1
            // 
            this.csFooter1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csFooter1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csFooter1.Name = "csFooter1";
            this.csFooter1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csTitle
            // 
            this.csTitle.Font = new System.Drawing.Font("Arial Unicode MS", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csTitle.Name = "csTitle";
            this.csTitle.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csTitle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // ReportHeader
            // 
            this.ReportHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel2,
            this.xrTable1});
            this.ReportHeader.Height = 75;
            this.ReportHeader.Name = "ReportHeader";
            // 
            // xrLabel2
            // 
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel2.Location = new System.Drawing.Point(0, 8);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(730, 29);
            this.xrLabel2.StyleName = "csTitle";
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.Text = " Work Order - Sample Despatch Qty & Date / 制單- 樣板速遞數和日期";
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(6, 50);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(725, 25);
            this.xrTable1.StyleName = "csHeader1";
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell4,
            this.xrTableCell2,
            this.xrTableCell31,
            this.xrTableCell5,
            this.xrTableCell3,
            this.xrTableCell36,
            this.xrTableCell6});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(725, 25);
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(75, 25);
            this.xrTableCell1.Text = "Factory:\r\n工廠: ";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Factory", "")});
            this.xrTableCell4.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(114, 25);
            this.xrTableCell4.StyleName = "csHeader2";
            this.xrTableCell4.Text = "[WorkOrderSKU.WorkOrderColor.WorkOrder.Project..Factory]";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(189, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(68, 25);
            // 
            // xrTableCell31
            // 
            this.xrTableCell31.Location = new System.Drawing.Point(257, 0);
            this.xrTableCell31.Multiline = true;
            this.xrTableCell31.Name = "xrTableCell31";
            this.xrTableCell31.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell31.Size = new System.Drawing.Size(78, 25);
            this.xrTableCell31.Text = "SO No.:\r\n銷售單號:";
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SalesOrderNo", "")});
            this.xrTableCell5.Location = new System.Drawing.Point(335, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(113, 25);
            this.xrTableCell5.StyleName = "csHeader2";
            this.xrTableCell5.Text = "[Project.Customer]";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Location = new System.Drawing.Point(448, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(66, 25);
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.Location = new System.Drawing.Point(514, 0);
            this.xrTableCell36.Multiline = true;
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(99, 25);
            this.xrTableCell36.Text = "Project No.:\r\n工程號: ";
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ProjectNo", "")});
            this.xrTableCell6.Location = new System.Drawing.Point(613, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(112, 25);
            this.xrTableCell6.StyleName = "csHeader2";
            this.xrTableCell6.Text = "[Project.SoIssueDate!yyyy/MM/dd]";
            // 
            // csHeader2
            // 
            this.csHeader2.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.csHeader2.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader2.Name = "csHeader2";
            this.csHeader2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.csHeader2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csDetail2
            // 
            this.csDetail2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.csDetail2.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail2.Name = "csDetail2";
            this.csDetail2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetail2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csHeader3
            // 
            this.csHeader3.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader3.Name = "csHeader3";
            this.csHeader3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csDetailBlue1
            // 
            this.csDetailBlue1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.csDetailBlue1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.csDetailBlue1.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetailBlue1.Name = "csDetailBlue1";
            this.csDetailBlue1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetailBlue1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csDetailYellow
            // 
            this.csDetailYellow.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.csDetailYellow.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.csDetailYellow.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetailYellow.Name = "csDetailYellow";
            this.csDetailYellow.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetailYellow.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csTime1
            // 
            this.csTime1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.csTime1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csTime1.Name = "csTime1";
            this.csTime1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.csTime1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csDetailBlue2
            // 
            this.csDetailBlue2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.csDetailBlue2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.csDetailBlue2.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetailBlue2.Name = "csDetailBlue2";
            this.csDetailBlue2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetailBlue2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csDetailGreen
            // 
            this.csDetailGreen.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.csDetailGreen.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetailGreen.Name = "csDetailGreen";
            this.csDetailGreen.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csDetailGreen.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csTime2
            // 
            this.csTime2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csTime2.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csTime2.Name = "csTime2";
            this.csTime2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.csTime2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csTime3
            // 
            this.csTime3.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.csTime3.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csTime3.Name = "csTime3";
            this.csTime3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csTime3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csFooter2
            // 
            this.csFooter2.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csFooter2.Name = "csFooter2";
            this.csFooter2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csFooter2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1,
            this.prPivotSample});
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("WorkOrderNo", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 48;
            this.GroupHeader1.KeepTogether = true;
            this.GroupHeader1.Name = "GroupHeader1";
            this.GroupHeader1.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader1_BeforePrint);
            // 
            // xrLabel1
            // 
            this.xrLabel1.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "WorkOrderNo", "")});
            this.xrLabel1.Location = new System.Drawing.Point(8, 5);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(120, 18);
            this.xrLabel1.StyleName = "csHeader3";
            this.xrLabel1.Text = "xrLabel1";
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Height = 0;
            this.GroupFooter1.KeepTogether = true;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // PageFooter
            // 
            this.PageFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageInfo1});
            this.PageFooter.Height = 16;
            this.PageFooter.Name = "PageFooter";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Format = "Page: {0}/{1}";
            this.xrPageInfo1.Location = new System.Drawing.Point(658, 0);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(76, 16);
            this.xrPageInfo1.StyleName = "csFooter2";
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // WOSampleReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.ReportHeader,
            this.GroupHeader1,
            this.GroupFooter1,
            this.PageFooter});
            this.DataSource = this.bindingSource1;
            this.Margins = new System.Drawing.Printing.Margins(60, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader1,
            this.csDetail1,
            this.csFooter1,
            this.csTitle,
            this.csHeader2,
            this.csDetail2,
            this.csHeader3,
            this.csDetailBlue1,
            this.csDetailYellow,
            this.csTime1,
            this.csDetailBlue2,
            this.csDetailGreen,
            this.csTime2,
            this.csTime3,
            this.csFooter2});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.XRControlStyle csHeader1;
        private DevExpress.XtraReports.UI.XRControlStyle csDetail1;
        private DevExpress.XtraReports.UI.XRControlStyle csFooter1;
        private DevExpress.XtraReports.UI.XRControlStyle csTitle;
        private DevExpress.XtraReports.UI.ReportHeaderBand ReportHeader;
        private DevExpress.XtraReports.UI.XRControlStyle csHeader2;
        private DevExpress.XtraReports.UI.XRControlStyle csDetail2;
        private DevExpress.XtraReports.UI.XRControlStyle csHeader3;
        private DevExpress.XtraReports.UI.XRControlStyle csDetailBlue1;
        private DevExpress.XtraReports.UI.XRControlStyle csDetailYellow;
        private DevExpress.XtraReports.UI.XRControlStyle csTime1;
        private DevExpress.XtraReports.UI.XRControlStyle csDetailBlue2;
        private DevExpress.XtraReports.UI.XRControlStyle csDetailGreen;
        private DevExpress.XtraReports.UI.XRControlStyle csTime2;
        private DevExpress.XtraReports.UI.XRControlStyle csTime3;
        private DevExpress.XtraReports.UI.XRControlStyle csFooter2;
        private System.Windows.Forms.BindingSource bindingSource1;
        //private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColColorCode;
        //private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColCup;
        //private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSubTtl;
        //private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColUnit;
        //private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSize;
        //private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColQty;

        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColColorCode1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColCup1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSubTtl1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColUnit1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSize1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColQty1;

        private PH.Platform.Report.PivotGrid.PRPivotGrid prPivotSample;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSampleDespatchDate;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSampleType;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColWorkShop;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSizeOrder;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSizeOrder1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColAddressTo;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader1;
        private DevExpress.XtraReports.UI.GroupFooterBand GroupFooter1;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell31;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell36;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColSymbol;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.PageFooterBand PageFooter;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
    }
}
