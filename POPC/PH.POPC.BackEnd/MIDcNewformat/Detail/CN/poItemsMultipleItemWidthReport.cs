using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;


namespace PH.POPC.BackEnd.MIDcNewformat.CN
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class poItemsMultipleItemWidthReport : DevExpress.XtraReports.UI.XtraReport
    {
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn2;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn3;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn4;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn5;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn6;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn7;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn8;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn9;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn10;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn11;
        private XRTable xrTable3;
        private XRTableRow xrTableRow11;
        private XRTableCell xrTableCell21;
        private XRTableCell xrTableCell22;
        private XRTableCell xrTableCell23;
        private XRTableCell xrTableCell25;
        private XRTableCell xrTableCell26;
        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private XRTableCell xrTableCell37;
        private XRTableCell xrTableCell2;
        private XRTableCell xrTableCell4;
        private XRTableCell xrTableCell5;
        private XRLabel xrLabel1;
        private XRLabel xrLabel2;
        private XRLabel xrLabel4;
        private XRTableCell xrTableCell14;
        private XRTableCell xrTableCell86;
        private XRTableCell xrTableCell87;
        private XRTableCell xrTableCell88;
        private XRTable tableItems;
        private XRTableRow xrTableRow18;
        private XRTableCell cellLine;
        private XRTableCell xrTableCell91;
        private XRTableCell xrTableCell92;
        private XRTableCell xrTableCell94;
        private XRTableCell xrTableCell95;
        private XRTableCell xrPrice;
        private XRTableCell xrTableCell97;
        private XRTableCell xrTableCell98;
        private XRTableCell xrTableCell99;
        private XRTableCell xrTableCell100;
        private XRTableCell xrTableCell101;
        private XRTableCell xrTableCell102;
        private XRTableCell xrTableCell103;
        private XRTableCell xrTableCell8;
        private XRTableCell xrTableCell9;
        private XRTableCell xrTableCell28;
        private XRTableCell xrTableCell27;
        private XRTableCell xrTableCell24;
        private XRTableCell xrTableCell19;
        private XRTableCell xrTableCell18;
        private XRTableCell xrTableCell17;
        private XRTableCell xrTableCell16;
        private XRTableCell xrTableCell15;
        private XRTableCell xrTableCell13;
        private XRTableCell xrTableCell12;
        private XRTableCell xrTableCell11;
        private XRTableCell xrTableCell6;
        private XRTableCell xrTableCell1;
        private XRTableRow xrTableRow1;
        private XRTable xrTable1;
        private ReportFooterBand ReportFooter;
        private System.Windows.Forms.BindingSource bindingSource1;
        private GroupHeaderBand GroupHeader1;
        private GroupFooterBand GroupFooter1;
        private XRTable xrTable4;
        private XRTableRow xrTableRow4;
        private XRTableCell xrTableCell3;
        private XRTableCell cellColor;
        private XRTableCell xrTableCell33;
        private XRTableCell cellColorShade;
        private XRTableCell cellQty;
        private XRTableCell xrTableCell36;
        private XRTableCell xrTableCell29;
        private XRTableCell cellAmount;
        private XRTableCell xrTableCell30;
        private XRTableCell xrTableCell41;
        private XRTableCell xrTableCell42;
        private XRTableCell cellCustOrderNo;
        private XRTableCell cellCustStyleNo;
        private XRTableCell cellProjectNo;
        private XRTableCell xrTableCell32;
        private XRTableCell xrTableCell34;
        private XRTableCell xrTableCell38;
        private XRTableCell xrTableCell39;
        private XRTableCell xrTableCell40;
        private XRControlStyle csHeaderSmall;
        private XRLabel xrLabel5;
        private XRLabel xrLabel3;
        private XRTableCell xrTableCell35;
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public poItemsMultipleItemWidthReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //
        }
        public poItemsMultipleItemWidthReport(bool isColorPrint)
            : this()
        {
            IsColorPrint = isColorPrint;
        }
        private bool _isColorPrint;
        public bool IsColorPrint
        {
            get { return _isColorPrint; }
            set
            {
                _isColorPrint = value;
                if (_isColorPrint) return;

                this.SuspendLayout();
                try
                {
                    ReportHelper.SetBlackWhiteForStyle(this);
                    ReportHelper.SetBlackWhitePrinting_Report(this);
                }

                finally
                {
                    this.ResumeLayout();
                }
            }
        }
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
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary5 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary6 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary7 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary8 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary9 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary10 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary11 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary12 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary13 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary14 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary15 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary16 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary17 = new DevExpress.XtraReports.UI.XRSummary();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.tableItems = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow18 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellLine = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell91 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell103 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell92 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell94 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell95 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPrice = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell35 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell97 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell98 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell99 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell100 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell101 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell38 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell39 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell102 = new DevExpress.XtraReports.UI.XRTableCell();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellColor = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellColorShade = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell30 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell41 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell42 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustOrderNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustStyleNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell34 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellProjectNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell21 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell37 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell25 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell86 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell88 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell87 = new DevExpress.XtraReports.UI.XRTableCell();
            this.pivotGridColumn4 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn9 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn5 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn2 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn6 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn7 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn10 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn11 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn3 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn8 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell24 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell40 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            ((System.ComponentModel.ISupportInitialize)(this.tableItems)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // tableItems
            // 
            this.tableItems.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tableItems.Location = new System.Drawing.Point(26, 0);
            this.tableItems.Name = "tableItems";
            this.tableItems.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow18});
            this.tableItems.Size = new System.Drawing.Size(739, 15);
            this.tableItems.StyleName = "csHeader";
            this.tableItems.StylePriority.UseBackColor = false;
            this.tableItems.StylePriority.UseBorders = false;
            this.tableItems.StylePriority.UseTextAlignment = false;
            this.tableItems.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow18
            // 
            this.xrTableRow18.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellLine,
            this.xrTableCell91,
            this.xrTableCell103,
            this.xrTableCell92,
            this.xrTableCell94,
            this.xrTableCell95,
            this.xrPrice,
            this.xrTableCell35,
            this.xrTableCell97,
            this.xrTableCell98,
            this.xrTableCell9,
            this.xrTableCell99,
            this.xrTableCell100,
            this.xrTableCell101,
            this.xrTableCell38,
            this.xrTableCell39,
            this.xrTableCell102});
            this.xrTableRow18.Name = "xrTableRow18";
            this.xrTableRow18.Size = new System.Drawing.Size(739, 15);
            // 
            // cellLine
            // 
            this.cellLine.CanGrow = false;
            this.cellLine.Location = new System.Drawing.Point(0, 0);
            this.cellLine.Multiline = true;
            this.cellLine.Name = "cellLine";
            this.cellLine.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellLine.Size = new System.Drawing.Size(21, 15);
            this.cellLine.StylePriority.UseBorders = false;
            this.cellLine.StylePriority.UsePadding = false;
            this.cellLine.WordWrap = false;
            // 
            // xrTableCell91
            // 
            this.xrTableCell91.CanGrow = false;
            this.xrTableCell91.Location = new System.Drawing.Point(21, 0);
            this.xrTableCell91.Multiline = true;
            this.xrTableCell91.Name = "xrTableCell91";
            this.xrTableCell91.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell91.Size = new System.Drawing.Size(25, 15);
            this.xrTableCell91.StylePriority.UseBorders = false;
            this.xrTableCell91.StylePriority.UsePadding = false;
            this.xrTableCell91.Text = "[ColorCode]";
            this.xrTableCell91.WordWrap = false;
            // 
            // xrTableCell103
            // 
            this.xrTableCell103.CanGrow = false;
            this.xrTableCell103.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell103.Location = new System.Drawing.Point(46, 0);
            this.xrTableCell103.Name = "xrTableCell103";
            this.xrTableCell103.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrTableCell103.Size = new System.Drawing.Size(97, 15);
            this.xrTableCell103.StylePriority.UseFont = false;
            this.xrTableCell103.StylePriority.UsePadding = false;
            this.xrTableCell103.StylePriority.UseTextAlignment = false;
            this.xrTableCell103.Text = "[ColorDesc]";
            this.xrTableCell103.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrTableCell103.WordWrap = false;
            // 
            // xrTableCell92
            // 
            this.xrTableCell92.CanGrow = false;
            this.xrTableCell92.Location = new System.Drawing.Point(143, 0);
            this.xrTableCell92.Multiline = true;
            this.xrTableCell92.Name = "xrTableCell92";
            this.xrTableCell92.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrTableCell92.Size = new System.Drawing.Size(80, 15);
            this.xrTableCell92.StylePriority.UsePadding = false;
            this.xrTableCell92.StylePriority.UseTextAlignment = false;
            this.xrTableCell92.Text = "[ColorShade]";
            this.xrTableCell92.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrTableCell92.WordWrap = false;
            // 
            // xrTableCell94
            // 
            this.xrTableCell94.CanGrow = false;
            this.xrTableCell94.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierPOQty", "")});
            this.xrTableCell94.Location = new System.Drawing.Point(223, 0);
            this.xrTableCell94.Name = "xrTableCell94";
            this.xrTableCell94.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell94.Size = new System.Drawing.Size(48, 15);
            this.xrTableCell94.StylePriority.UseTextAlignment = false;
            xrSummary1.FormatString = "{0:#,0.##}";
            xrSummary1.IgnoreNullValues = true;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell94.Summary = xrSummary1;
            this.xrTableCell94.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrTableCell94.WordWrap = false;
            // 
            // xrTableCell95
            // 
            this.xrTableCell95.CanGrow = false;
            this.xrTableCell95.Location = new System.Drawing.Point(271, 0);
            this.xrTableCell95.Name = "xrTableCell95";
            this.xrTableCell95.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell95.Size = new System.Drawing.Size(21, 15);
            this.xrTableCell95.Text = "[SupplierUOM]";
            this.xrTableCell95.WordWrap = false;
            // 
            // xrPrice
            // 
            this.xrPrice.CanGrow = false;
            this.xrPrice.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "VATPrice", "{0:N4}")});
            this.xrPrice.Location = new System.Drawing.Point(292, 0);
            this.xrPrice.Multiline = true;
            this.xrPrice.Name = "xrPrice";
            this.xrPrice.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPrice.Size = new System.Drawing.Size(40, 15);
            this.xrPrice.StylePriority.UseTextAlignment = false;
            this.xrPrice.Text = "xrPrice";
            this.xrPrice.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPrice.WordWrap = false;
            // 
            // xrTableCell35
            // 
            this.xrTableCell35.CanGrow = false;
            this.xrTableCell35.Location = new System.Drawing.Point(332, 0);
            this.xrTableCell35.Name = "xrTableCell35";
            this.xrTableCell35.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell35.Size = new System.Drawing.Size(10, 15);
            this.xrTableCell35.Text = "[PriceDependent]";
            // 
            // xrTableCell97
            // 
            this.xrTableCell97.CanGrow = false;
            this.xrTableCell97.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "")});
            this.xrTableCell97.Location = new System.Drawing.Point(342, 0);
            this.xrTableCell97.Multiline = true;
            this.xrTableCell97.Name = "xrTableCell97";
            this.xrTableCell97.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.xrTableCell97.Size = new System.Drawing.Size(57, 15);
            this.xrTableCell97.StylePriority.UsePadding = false;
            this.xrTableCell97.StylePriority.UseTextAlignment = false;
            xrSummary2.FormatString = "{0:N2}";
            xrSummary2.IgnoreNullValues = true;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell97.Summary = xrSummary2;
            this.xrTableCell97.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrTableCell97.WordWrap = false;
            // 
            // xrTableCell98
            // 
            this.xrTableCell98.CanGrow = false;
            this.xrTableCell98.Location = new System.Drawing.Point(399, 0);
            this.xrTableCell98.Multiline = true;
            this.xrTableCell98.Name = "xrTableCell98";
            this.xrTableCell98.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell98.Size = new System.Drawing.Size(74, 15);
            this.xrTableCell98.StylePriority.UsePadding = false;
            this.xrTableCell98.StylePriority.UseTextAlignment = false;
            this.xrTableCell98.Text = "[DeliveryWeek]";
            this.xrTableCell98.WordWrap = false;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell9.Location = new System.Drawing.Point(473, 0);
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(2, 15);
            this.xrTableCell9.StylePriority.UseBorders = false;
            // 
            // xrTableCell99
            // 
            this.xrTableCell99.CanGrow = false;
            this.xrTableCell99.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Tolerance", "{0:N0}")});
            this.xrTableCell99.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell99.Location = new System.Drawing.Point(475, 0);
            this.xrTableCell99.Multiline = true;
            this.xrTableCell99.Name = "xrTableCell99";
            this.xrTableCell99.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell99.Size = new System.Drawing.Size(32, 15);
            this.xrTableCell99.StylePriority.UseFont = false;
            this.xrTableCell99.Text = "xrTableCell99";
            this.xrTableCell99.WordWrap = false;
            // 
            // xrTableCell100
            // 
            this.xrTableCell100.CanGrow = false;
            this.xrTableCell100.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustOrderNo", "")});
            this.xrTableCell100.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell100.Location = new System.Drawing.Point(507, 0);
            this.xrTableCell100.Multiline = true;
            this.xrTableCell100.Name = "xrTableCell100";
            this.xrTableCell100.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell100.Size = new System.Drawing.Size(70, 15);
            this.xrTableCell100.StylePriority.UseFont = false;
            this.xrTableCell100.StylePriority.UsePadding = false;
            this.xrTableCell100.StylePriority.UseTextAlignment = false;
            this.xrTableCell100.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrTableCell100.WordWrap = false;
            // 
            // xrTableCell101
            // 
            this.xrTableCell101.CanGrow = false;
            this.xrTableCell101.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustStyleNo", "")});
            this.xrTableCell101.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell101.Location = new System.Drawing.Point(577, 0);
            this.xrTableCell101.Multiline = true;
            this.xrTableCell101.Name = "xrTableCell101";
            this.xrTableCell101.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell101.Size = new System.Drawing.Size(62, 15);
            this.xrTableCell101.StylePriority.UseFont = false;
            this.xrTableCell101.StylePriority.UsePadding = false;
            this.xrTableCell101.StylePriority.UseTextAlignment = false;
            this.xrTableCell101.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrTableCell101.WordWrap = false;
            // 
            // xrTableCell38
            // 
            this.xrTableCell38.CanGrow = false;
            this.xrTableCell38.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GarmentColor", "")});
            this.xrTableCell38.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell38.Location = new System.Drawing.Point(639, 0);
            this.xrTableCell38.Name = "xrTableCell38";
            this.xrTableCell38.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell38.Size = new System.Drawing.Size(27, 15);
            this.xrTableCell38.StylePriority.UseFont = false;
            // 
            // xrTableCell39
            // 
            this.xrTableCell39.CanGrow = false;
            this.xrTableCell39.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "StyleColorDiff", "")});
            this.xrTableCell39.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell39.Location = new System.Drawing.Point(666, 0);
            this.xrTableCell39.Name = "xrTableCell39";
            this.xrTableCell39.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell39.Size = new System.Drawing.Size(12, 15);
            this.xrTableCell39.StylePriority.UseFont = false;
            // 
            // xrTableCell102
            // 
            this.xrTableCell102.CanGrow = false;
            this.xrTableCell102.Font = new System.Drawing.Font("Arial", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell102.Location = new System.Drawing.Point(678, 0);
            this.xrTableCell102.Multiline = true;
            this.xrTableCell102.Name = "xrTableCell102";
            this.xrTableCell102.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell102.Size = new System.Drawing.Size(61, 15);
            this.xrTableCell102.StylePriority.UseFont = false;
            this.xrTableCell102.StylePriority.UsePadding = false;
            this.xrTableCell102.Text = "[ProjectNO]";
            this.xrTableCell102.WordWrap = false;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4,
            this.xrTable3});
            this.PageHeader.Height = 83;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.PageHeader.Visible = false;
            // 
            // xrTable4
            // 
            this.xrTable4.ForeColor = System.Drawing.Color.Blue;
            this.xrTable4.Location = new System.Drawing.Point(0, 50);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTable4.Size = new System.Drawing.Size(765, 20);
            this.xrTable4.StyleName = "csHeader";
            this.xrTable4.StylePriority.UseBackColor = false;
            this.xrTable4.StylePriority.UseBorders = false;
            this.xrTable4.StylePriority.UseForeColor = false;
            this.xrTable4.StylePriority.UseTextAlignment = false;
            this.xrTable4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell3,
            this.cellColor,
            this.xrTableCell33,
            this.cellColorShade,
            this.cellQty,
            this.xrTableCell36,
            this.xrTableCell29,
            this.cellAmount,
            this.xrTableCell30,
            this.xrTableCell41,
            this.xrTableCell42,
            this.cellCustOrderNo,
            this.cellCustStyleNo,
            this.xrTableCell34,
            this.cellProjectNo});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(765, 20);
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.CanGrow = false;
            this.xrTableCell3.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell3.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(47, 20);
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.StylePriority.UseFont = false;
            this.xrTableCell3.StylePriority.UsePadding = false;
            this.xrTableCell3.Text = "總計l:";
            // 
            // cellColor
            // 
            this.cellColor.Location = new System.Drawing.Point(47, 0);
            this.cellColor.Multiline = true;
            this.cellColor.Name = "cellColor";
            this.cellColor.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellColor.Size = new System.Drawing.Size(25, 20);
            this.cellColor.StylePriority.UseBorders = false;
            this.cellColor.StylePriority.UsePadding = false;
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell33.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ColorCode", "")});
            this.xrTableCell33.Location = new System.Drawing.Point(72, 0);
            this.xrTableCell33.Multiline = true;
            this.xrTableCell33.Name = "xrTableCell33";
            this.xrTableCell33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell33.Size = new System.Drawing.Size(97, 20);
            this.xrTableCell33.StylePriority.UseBorders = false;
            xrSummary3.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary3.IgnoreNullValues = true;
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell33.Summary = xrSummary3;
            this.xrTableCell33.Text = "xrTableCell33";
            // 
            // cellColorShade
            // 
            this.cellColorShade.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellColorShade.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierColorShade", "")});
            this.cellColorShade.Location = new System.Drawing.Point(169, 0);
            this.cellColorShade.Multiline = true;
            this.cellColorShade.Name = "cellColorShade";
            this.cellColorShade.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellColorShade.Size = new System.Drawing.Size(80, 20);
            this.cellColorShade.StylePriority.UseBorders = false;
            xrSummary4.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary4.IgnoreNullValues = true;
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellColorShade.Summary = xrSummary4;
            this.cellColorShade.Text = "cellColorShade";
            // 
            // cellQty
            // 
            this.cellQty.Location = new System.Drawing.Point(249, 0);
            this.cellQty.Name = "cellQty";
            this.cellQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellQty.Size = new System.Drawing.Size(48, 20);
            this.cellQty.StylePriority.UseBorders = false;
            this.cellQty.StylePriority.UsePadding = false;
            this.cellQty.StylePriority.UseTextAlignment = false;
            this.cellQty.Text = "cellQty";
            this.cellQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.Location = new System.Drawing.Point(297, 0);
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(21, 20);
            this.xrTableCell36.StylePriority.UsePadding = false;
            this.xrTableCell36.Text = "xrTableCell36";
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Location = new System.Drawing.Point(318, 0);
            this.xrTableCell29.Multiline = true;
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(40, 20);
            this.xrTableCell29.StylePriority.UsePadding = false;
            this.xrTableCell29.Text = "xrTableCell29";
            // 
            // cellAmount
            // 
            this.cellAmount.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellAmount.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "")});
            this.cellAmount.Location = new System.Drawing.Point(358, 0);
            this.cellAmount.Multiline = true;
            this.cellAmount.Name = "cellAmount";
            this.cellAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.cellAmount.Size = new System.Drawing.Size(67, 20);
            this.cellAmount.StylePriority.UseBorders = false;
            this.cellAmount.StylePriority.UsePadding = false;
            this.cellAmount.StylePriority.UseTextAlignment = false;
            xrSummary5.FormatString = "{0:N2}";
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellAmount.Summary = xrSummary5;
            this.cellAmount.Text = "cellAmount";
            this.cellAmount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell30
            // 
            this.xrTableCell30.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell30.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "DeliveryWeek", "")});
            this.xrTableCell30.Location = new System.Drawing.Point(425, 0);
            this.xrTableCell30.Multiline = true;
            this.xrTableCell30.Name = "xrTableCell30";
            this.xrTableCell30.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell30.Size = new System.Drawing.Size(74, 20);
            this.xrTableCell30.StylePriority.UseBorders = false;
            this.xrTableCell30.StylePriority.UsePadding = false;
            xrSummary6.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary6.IgnoreNullValues = true;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell30.Summary = xrSummary6;
            this.xrTableCell30.Text = "xrTableCell30";
            // 
            // xrTableCell41
            // 
            this.xrTableCell41.Location = new System.Drawing.Point(499, 0);
            this.xrTableCell41.Name = "xrTableCell41";
            this.xrTableCell41.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell41.Size = new System.Drawing.Size(2, 20);
            this.xrTableCell41.StylePriority.UseBorders = false;
            this.xrTableCell41.Text = "xrTableCell41";
            // 
            // xrTableCell42
            // 
            this.xrTableCell42.Location = new System.Drawing.Point(501, 0);
            this.xrTableCell42.Multiline = true;
            this.xrTableCell42.Name = "xrTableCell42";
            this.xrTableCell42.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell42.Size = new System.Drawing.Size(32, 20);
            this.xrTableCell42.StylePriority.UsePadding = false;
            this.xrTableCell42.Text = "xrTableCell42";
            // 
            // cellCustOrderNo
            // 
            this.cellCustOrderNo.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellCustOrderNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "EndCustOrderNo", "")});
            this.cellCustOrderNo.Location = new System.Drawing.Point(533, 0);
            this.cellCustOrderNo.Multiline = true;
            this.cellCustOrderNo.Name = "cellCustOrderNo";
            this.cellCustOrderNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustOrderNo.Size = new System.Drawing.Size(70, 20);
            this.cellCustOrderNo.StylePriority.UseBorders = false;
            this.cellCustOrderNo.StylePriority.UsePadding = false;
            xrSummary7.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary7.IgnoreNullValues = true;
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellCustOrderNo.Summary = xrSummary7;
            this.cellCustOrderNo.Text = "cellCustOrderNo";
            // 
            // cellCustStyleNo
            // 
            this.cellCustStyleNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellCustStyleNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "EndCustStyleNo", "")});
            this.cellCustStyleNo.Location = new System.Drawing.Point(603, 0);
            this.cellCustStyleNo.Multiline = true;
            this.cellCustStyleNo.Name = "cellCustStyleNo";
            this.cellCustStyleNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustStyleNo.Size = new System.Drawing.Size(62, 20);
            this.cellCustStyleNo.StylePriority.UseBorders = false;
            this.cellCustStyleNo.StylePriority.UsePadding = false;
            xrSummary8.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary8.IgnoreNullValues = true;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellCustStyleNo.Summary = xrSummary8;
            this.cellCustStyleNo.Text = "cellCustStyleNo";
            // 
            // xrTableCell34
            // 
            this.xrTableCell34.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell34.Location = new System.Drawing.Point(665, 0);
            this.xrTableCell34.Name = "xrTableCell34";
            this.xrTableCell34.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell34.Size = new System.Drawing.Size(39, 20);
            this.xrTableCell34.StylePriority.UseBorders = false;
            // 
            // cellProjectNo
            // 
            this.cellProjectNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellProjectNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ProjectNO", "")});
            this.cellProjectNo.Location = new System.Drawing.Point(704, 0);
            this.cellProjectNo.Multiline = true;
            this.cellProjectNo.Name = "cellProjectNo";
            this.cellProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellProjectNo.Size = new System.Drawing.Size(61, 20);
            this.cellProjectNo.StylePriority.UseBorders = false;
            this.cellProjectNo.StylePriority.UsePadding = false;
            xrSummary9.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary9.IgnoreNullValues = true;
            xrSummary9.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellProjectNo.Summary = xrSummary9;
            this.cellProjectNo.Text = "cellProjectNo";
            // 
            // xrTable3
            // 
            this.xrTable3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.xrTable3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable3.Location = new System.Drawing.Point(0, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow11});
            this.xrTable3.Size = new System.Drawing.Size(765, 40);
            this.xrTable3.StyleName = "csHeader";
            this.xrTable3.StylePriority.UseBackColor = false;
            this.xrTable3.StylePriority.UseBorders = false;
            this.xrTable3.StylePriority.UseTextAlignment = false;
            this.xrTable3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow11
            // 
            this.xrTableRow11.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell14,
            this.xrTableCell21,
            this.xrTableCell37,
            this.xrTableCell26,
            this.xrTableCell4,
            this.xrTableCell22,
            this.xrTableCell2,
            this.xrTableCell25,
            this.xrTableCell23,
            this.xrTableCell8,
            this.xrTableCell5,
            this.xrTableCell86,
            this.xrTableCell88,
            this.xrTableCell32,
            this.xrTableCell87});
            this.xrTableRow11.Name = "xrTableRow11";
            this.xrTableRow11.Size = new System.Drawing.Size(765, 40);
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.CanGrow = false;
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell14.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(26, 40);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UsePadding = false;
            this.xrTableCell14.Text = "買方品種編碼";
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.CanGrow = false;
            this.xrTableCell21.Location = new System.Drawing.Point(26, 0);
            this.xrTableCell21.Multiline = true;
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(21, 40);
            this.xrTableCell21.StylePriority.UseBorders = false;
            this.xrTableCell21.StylePriority.UsePadding = false;
            this.xrTableCell21.Text = "行號";
            // 
            // xrTableCell37
            // 
            this.xrTableCell37.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell37.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel4,
            this.xrLabel2,
            this.xrLabel1});
            this.xrTableCell37.Location = new System.Drawing.Point(47, 0);
            this.xrTableCell37.Multiline = true;
            this.xrTableCell37.Name = "xrTableCell37";
            this.xrTableCell37.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell37.Size = new System.Drawing.Size(122, 40);
            this.xrTableCell37.StylePriority.UseBorders = false;
            // 
            // xrLabel4
            // 
            this.xrLabel4.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrLabel4.CanGrow = false;
            this.xrLabel4.Location = new System.Drawing.Point(24, 20);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(98, 20);
            this.xrLabel4.StylePriority.UseBorders = false;
            this.xrLabel4.Text = "名稱";
            // 
            // xrLabel2
            // 
            this.xrLabel2.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.Location = new System.Drawing.Point(0, 20);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(24, 20);
            this.xrLabel2.StylePriority.UseBorders = false;
            this.xrLabel2.StylePriority.UsePadding = false;
            this.xrLabel2.Text = "編碼";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel1.CanGrow = false;
            this.xrLabel1.Location = new System.Drawing.Point(0, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(122, 20);
            this.xrLabel1.StylePriority.UseBorders = false;
            this.xrLabel1.Text = "買方品種顏色";
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell26.CanGrow = false;
            this.xrTableCell26.Location = new System.Drawing.Point(169, 0);
            this.xrTableCell26.Multiline = true;
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(80, 40);
            this.xrTableCell26.StylePriority.UseBorders = false;
            this.xrTableCell26.Text = "供應商\r\n品種色影";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.CanGrow = false;
            this.xrTableCell4.Location = new System.Drawing.Point(249, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(48, 40);
            this.xrTableCell4.StylePriority.UsePadding = false;
            this.xrTableCell4.Text = "數量";
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.CanGrow = false;
            this.xrTableCell22.Location = new System.Drawing.Point(297, 0);
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(21, 40);
            this.xrTableCell22.StylePriority.UsePadding = false;
            this.xrTableCell22.Text = "單位";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.CanGrow = false;
            this.xrTableCell2.Location = new System.Drawing.Point(318, 0);
            this.xrTableCell2.Multiline = true;
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(40, 40);
            this.xrTableCell2.StylePriority.UsePadding = false;
            this.xrTableCell2.Text = "單價\r\n([Currency])";
            // 
            // xrTableCell25
            // 
            this.xrTableCell25.CanGrow = false;
            this.xrTableCell25.Location = new System.Drawing.Point(358, 0);
            this.xrTableCell25.Multiline = true;
            this.xrTableCell25.Name = "xrTableCell25";
            this.xrTableCell25.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell25.Size = new System.Drawing.Size(67, 40);
            this.xrTableCell25.StylePriority.UsePadding = false;
            this.xrTableCell25.Text = "總金額\r\n([Currency])";
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel5,
            this.xrLabel3});
            this.xrTableCell23.Location = new System.Drawing.Point(425, 0);
            this.xrTableCell23.Multiline = true;
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(74, 40);
            this.xrTableCell23.StylePriority.UsePadding = false;
            this.xrTableCell23.Text = "Delivery Date\r\n(Week)";
            // 
            // xrLabel5
            // 
            this.xrLabel5.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel5.CanGrow = false;
            this.xrLabel5.Font = new System.Drawing.Font("Arial", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel5.Location = new System.Drawing.Point(0, 25);
            this.xrLabel5.Multiline = true;
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(74, 15);
            this.xrLabel5.StylePriority.UseBorders = false;
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.Text = "( 備注一 )";
            // 
            // xrLabel3
            // 
            this.xrLabel3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrLabel3.CanGrow = false;
            this.xrLabel3.Location = new System.Drawing.Point(0, 0);
            this.xrLabel3.Multiline = true;
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(74, 25);
            this.xrLabel3.StylePriority.UseBorders = false;
            this.xrLabel3.Text = "交貨日期 (#週)";
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell8.Location = new System.Drawing.Point(499, 0);
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(2, 40);
            this.xrTableCell8.StylePriority.UseBorders = false;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.CanGrow = false;
            this.xrTableCell5.Location = new System.Drawing.Point(501, 0);
            this.xrTableCell5.Multiline = true;
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(32, 40);
            this.xrTableCell5.StyleName = "csHeaderSmall";
            this.xrTableCell5.StylePriority.UsePadding = false;
            this.xrTableCell5.Text = "付運\r\n寬容率\r\n(+/-)%";
            // 
            // xrTableCell86
            // 
            this.xrTableCell86.CanGrow = false;
            this.xrTableCell86.Location = new System.Drawing.Point(533, 0);
            this.xrTableCell86.Multiline = true;
            this.xrTableCell86.Name = "xrTableCell86";
            this.xrTableCell86.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell86.Size = new System.Drawing.Size(70, 40);
            this.xrTableCell86.StyleName = "csHeaderSmall";
            this.xrTableCell86.StylePriority.UsePadding = false;
            this.xrTableCell86.Text = "終端客戶\r\n訂單號\r\n(若有資料)";
            // 
            // xrTableCell88
            // 
            this.xrTableCell88.CanGrow = false;
            this.xrTableCell88.Location = new System.Drawing.Point(603, 0);
            this.xrTableCell88.Multiline = true;
            this.xrTableCell88.Name = "xrTableCell88";
            this.xrTableCell88.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell88.Size = new System.Drawing.Size(62, 40);
            this.xrTableCell88.StyleName = "csHeaderSmall";
            this.xrTableCell88.StylePriority.UsePadding = false;
            this.xrTableCell88.Text = "終端客戶\r\n款號";
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.CanGrow = false;
            this.xrTableCell32.Location = new System.Drawing.Point(665, 0);
            this.xrTableCell32.Multiline = true;
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(39, 40);
            this.xrTableCell32.StyleName = "csHeaderSmall";
            this.xrTableCell32.StylePriority.UseFont = false;
            this.xrTableCell32.StylePriority.UsePadding = false;
            this.xrTableCell32.Text = "成衣顏色\r\n代號\r\n(作參考用)";
            this.xrTableCell32.WordWrap = false;
            // 
            // xrTableCell87
            // 
            this.xrTableCell87.CanGrow = false;
            this.xrTableCell87.Location = new System.Drawing.Point(704, 0);
            this.xrTableCell87.Multiline = true;
            this.xrTableCell87.Name = "xrTableCell87";
            this.xrTableCell87.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell87.Size = new System.Drawing.Size(61, 40);
            this.xrTableCell87.StyleName = "csHeaderSmall";
            this.xrTableCell87.StylePriority.UsePadding = false;
            this.xrTableCell87.Text = "買方工程號";
            // 
            // pivotGridColumn4
            // 
            this.pivotGridColumn4.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn4.DetailBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.pivotGridColumn4.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn4.DetailBorderWidth = 1;
            this.pivotGridColumn4.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn4.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailKeepTogether = true;
            this.pivotGridColumn4.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn4.DetailTag = null;
            this.pivotGridColumn4.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.FieldName = "SizeDesc";
            this.pivotGridColumn4.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn4.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.pivotGridColumn4.HeaderBorderWidth = 1;
            this.pivotGridColumn4.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn4.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderKeepTogether = true;
            this.pivotGridColumn4.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn4.HeaderTag = null;
            this.pivotGridColumn4.HeaderText = "Size";
            this.pivotGridColumn4.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.Name = "pivotGridColumn4";
            // 
            // pivotGridColumn9
            // 
            this.pivotGridColumn9.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn9.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn9.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn9.DetailBorderWidth = 1;
            this.pivotGridColumn9.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn9.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.DetailKeepTogether = true;
            this.pivotGridColumn9.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn9.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn9.DetailTag = null;
            this.pivotGridColumn9.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn9.FieldName = "SizeID";
            this.pivotGridColumn9.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Index;
            this.pivotGridColumn9.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn9.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn9.HeaderBorderWidth = 1;
            this.pivotGridColumn9.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn9.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.HeaderKeepTogether = true;
            this.pivotGridColumn9.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn9.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn9.HeaderTag = null;
            this.pivotGridColumn9.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn9.Name = "pivotGridColumn9";
            // 
            // pivotGridColumn5
            // 
            this.pivotGridColumn5.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn5.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn5.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn5.DetailBorderWidth = 1;
            this.pivotGridColumn5.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn5.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.DetailKeepTogether = true;
            this.pivotGridColumn5.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn5.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.DetailTag = null;
            this.pivotGridColumn5.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn5.FieldName = "SupplierOutstandingQty";
            this.pivotGridColumn5.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn5.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn5.HeaderBorderWidth = 1;
            this.pivotGridColumn5.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn5.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderKeepTogether = true;
            this.pivotGridColumn5.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, -1F);
            this.pivotGridColumn5.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.HeaderTag = null;
            this.pivotGridColumn5.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn5.Name = "pivotGridColumn5";
            this.pivotGridColumn5.TotalFormatString = "{0:N0}";
            // 
            // pivotGridColumn1
            // 
            this.pivotGridColumn1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn1.DetailBorderWidth = 1;
            this.pivotGridColumn1.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.DetailKeepTogether = true;
            this.pivotGridColumn1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, -1F);
            this.pivotGridColumn1.DetailProcessDuplicates = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn1.DetailProcessNullValues = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn1.DetailTag = null;
            this.pivotGridColumn1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.pivotGridColumn1.FieldName = "SupplierReference";
            this.pivotGridColumn1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn1.HeaderBorderWidth = 1;
            this.pivotGridColumn1.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderKeepTogether = true;
            this.pivotGridColumn1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn1.HeaderSize = new System.Drawing.Size(120, 25);
            this.pivotGridColumn1.HeaderTag = null;
            this.pivotGridColumn1.HeaderText = "Item#";
            this.pivotGridColumn1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn1.Name = "pivotGridColumn1";
            // 
            // pivotGridColumn2
            // 
            this.pivotGridColumn2.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn2.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn2.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn2.DetailBorderWidth = 1;
            this.pivotGridColumn2.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn2.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.DetailKeepTogether = true;
            this.pivotGridColumn2.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn2.DetailProcessDuplicates = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn2.DetailProcessNullValues = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn2.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn2.DetailTag = null;
            this.pivotGridColumn2.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn2.FieldName = "PONO";
            this.pivotGridColumn2.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn2.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn2.HeaderBorderWidth = 1;
            this.pivotGridColumn2.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn2.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderKeepTogether = true;
            this.pivotGridColumn2.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn2.HeaderSize = new System.Drawing.Size(55, 25);
            this.pivotGridColumn2.HeaderTag = null;
            this.pivotGridColumn2.HeaderText = "PO#";
            this.pivotGridColumn2.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn2.Name = "pivotGridColumn2";
            this.pivotGridColumn2.SubTotalText = "PO[PONO] Sub-total:";
            // 
            // pivotGridColumn6
            // 
            this.pivotGridColumn6.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn6.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn6.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn6.DetailBorderWidth = 1;
            this.pivotGridColumn6.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn6.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.DetailKeepTogether = true;
            this.pivotGridColumn6.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn6.DetailProcessDuplicates = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn6.DetailProcessNullValues = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn6.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn6.DetailTag = null;
            this.pivotGridColumn6.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn6.FieldName = "ColorCode";
            this.pivotGridColumn6.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn6.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn6.HeaderBorderWidth = 1;
            this.pivotGridColumn6.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn6.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.HeaderKeepTogether = true;
            this.pivotGridColumn6.HeaderMultiline = true;
            this.pivotGridColumn6.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn6.HeaderSize = new System.Drawing.Size(55, 25);
            this.pivotGridColumn6.HeaderTag = null;
            this.pivotGridColumn6.HeaderText = "PH\r\nColor\r\nCode";
            this.pivotGridColumn6.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn6.Name = "pivotGridColumn6";
            this.pivotGridColumn6.SubTotalText = "Color[ColorCode] Sub-total:";
            // 
            // pivotGridColumn7
            // 
            this.pivotGridColumn7.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn7.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn7.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn7.DetailBorderWidth = 1;
            this.pivotGridColumn7.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn7.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.DetailKeepTogether = true;
            this.pivotGridColumn7.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn7.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn7.DetailTag = null;
            this.pivotGridColumn7.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn7.FieldName = "FitCode";
            this.pivotGridColumn7.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn7.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn7.HeaderBorderWidth = 1;
            this.pivotGridColumn7.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn7.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.HeaderKeepTogether = true;
            this.pivotGridColumn7.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn7.HeaderSize = new System.Drawing.Size(40, 25);
            this.pivotGridColumn7.HeaderTag = null;
            this.pivotGridColumn7.HeaderText = "Cup";
            this.pivotGridColumn7.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn7.Name = "pivotGridColumn7";
            // 
            // pivotGridColumn10
            // 
            this.pivotGridColumn10.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn10.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn10.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn10.DetailBorderWidth = 1;
            this.pivotGridColumn10.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn10.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.DetailKeepTogether = true;
            this.pivotGridColumn10.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn10.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn10.DetailTag = null;
            this.pivotGridColumn10.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn10.FieldName = "Price";
            this.pivotGridColumn10.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn10.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn10.HeaderBorderWidth = 1;
            this.pivotGridColumn10.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn10.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.HeaderKeepTogether = true;
            this.pivotGridColumn10.HeaderMultiline = true;
            this.pivotGridColumn10.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn10.HeaderSize = new System.Drawing.Size(50, 25);
            this.pivotGridColumn10.HeaderTag = null;
            this.pivotGridColumn10.HeaderText = "Price\r\n([Currency])";
            this.pivotGridColumn10.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn10.Name = "pivotGridColumn10";
            this.pivotGridColumn10.TotalFormatString = "{0:N4}";
            // 
            // pivotGridColumn11
            // 
            this.pivotGridColumn11.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn11.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn11.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn11.DetailBorderWidth = 1;
            this.pivotGridColumn11.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn11.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.DetailKeepTogether = true;
            this.pivotGridColumn11.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn11.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn11.DetailTag = null;
            this.pivotGridColumn11.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn11.DetailVisible = false;
            this.pivotGridColumn11.FieldName = "Currency";
            this.pivotGridColumn11.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn11.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn11.HeaderBorderWidth = 1;
            this.pivotGridColumn11.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn11.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.HeaderKeepTogether = true;
            this.pivotGridColumn11.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn11.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn11.HeaderTag = null;
            this.pivotGridColumn11.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn11.HeaderVisible = false;
            this.pivotGridColumn11.Name = "pivotGridColumn11";
            // 
            // pivotGridColumn3
            // 
            this.pivotGridColumn3.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn3.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn3.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn3.DetailBorderWidth = 1;
            this.pivotGridColumn3.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn3.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.DetailKeepTogether = true;
            this.pivotGridColumn3.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn3.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn3.DetailTag = null;
            this.pivotGridColumn3.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn3.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.SubTotal;
            this.pivotGridColumn3.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn3.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn3.HeaderBorderWidth = 1;
            this.pivotGridColumn3.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn3.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderKeepTogether = true;
            this.pivotGridColumn3.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn3.HeaderSize = new System.Drawing.Size(60, 25);
            this.pivotGridColumn3.HeaderTag = null;
            this.pivotGridColumn3.HeaderText = "Sub-Ttl";
            this.pivotGridColumn3.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn3.Name = "pivotGridColumn3";
            this.pivotGridColumn3.TotalFormatString = "{0:N0}";
            // 
            // pivotGridColumn8
            // 
            this.pivotGridColumn8.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn8.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn8.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn8.DetailBorderWidth = 1;
            this.pivotGridColumn8.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn8.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.DetailKeepTogether = true;
            this.pivotGridColumn8.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn8.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn8.DetailTag = null;
            this.pivotGridColumn8.DetailText = "pcs";
            this.pivotGridColumn8.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn8.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Unit;
            this.pivotGridColumn8.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn8.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn8.HeaderBorderWidth = 1;
            this.pivotGridColumn8.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn8.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.HeaderKeepTogether = true;
            this.pivotGridColumn8.HeaderMultiline = true;
            this.pivotGridColumn8.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn8.HeaderSize = new System.Drawing.Size(35, 25);
            this.pivotGridColumn8.HeaderTag = null;
            this.pivotGridColumn8.HeaderText = "PO\'s\r\nu/m";
            this.pivotGridColumn8.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn8.Name = "pivotGridColumn8";
            // 
            // csHeader
            // 
            this.csHeader.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csDetail
            // 
            this.csDetail.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.CanGrow = false;
            this.xrTableCell28.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ProjectNO", "")});
            this.xrTableCell28.Location = new System.Drawing.Point(678, 0);
            this.xrTableCell28.Multiline = true;
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(61, 15);
            xrSummary10.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary10.IgnoreNullValues = true;
            xrSummary10.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell28.Summary = xrSummary10;
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.CanGrow = false;
            this.xrTableCell27.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "EndCustStyleNo", "")});
            this.xrTableCell27.Location = new System.Drawing.Point(577, 0);
            this.xrTableCell27.Multiline = true;
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(62, 15);
            xrSummary11.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary11.IgnoreNullValues = true;
            xrSummary11.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell27.Summary = xrSummary11;
            // 
            // xrTableCell24
            // 
            this.xrTableCell24.CanGrow = false;
            this.xrTableCell24.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "EndCustOrderNo", "")});
            this.xrTableCell24.Location = new System.Drawing.Point(507, 0);
            this.xrTableCell24.Multiline = true;
            this.xrTableCell24.Name = "xrTableCell24";
            this.xrTableCell24.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell24.Size = new System.Drawing.Size(70, 15);
            xrSummary12.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary12.IgnoreNullValues = true;
            xrSummary12.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell24.Summary = xrSummary12;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.CanGrow = false;
            this.xrTableCell19.Location = new System.Drawing.Point(475, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(32, 15);
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell18.Location = new System.Drawing.Point(473, 0);
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(2, 15);
            this.xrTableCell18.StylePriority.UseBorders = false;
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.CanGrow = false;
            this.xrTableCell17.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "DeliveryWeek", "")});
            this.xrTableCell17.Location = new System.Drawing.Point(399, 0);
            this.xrTableCell17.Multiline = true;
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(74, 15);
            xrSummary13.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary13.IgnoreNullValues = true;
            xrSummary13.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell17.Summary = xrSummary13;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.CanGrow = false;
            this.xrTableCell16.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "{0:N0}")});
            this.xrTableCell16.Location = new System.Drawing.Point(332, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(67, 15);
            this.xrTableCell16.StylePriority.UsePadding = false;
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            xrSummary14.FormatString = "{0:N2}";
            xrSummary14.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell16.Summary = xrSummary14;
            this.xrTableCell16.Text = "xrTableCell16";
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrTableCell16.WordWrap = false;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.CanGrow = false;
            this.xrTableCell15.Location = new System.Drawing.Point(292, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(40, 15);
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.CanGrow = false;
            this.xrTableCell13.Location = new System.Drawing.Point(271, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(21, 15);
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.CanGrow = false;
            this.xrTableCell12.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierPOQty", "")});
            this.xrTableCell12.Location = new System.Drawing.Point(223, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(48, 15);
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            xrSummary15.FormatString = "{0:#,0.##}";
            xrSummary15.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell12.Summary = xrSummary15;
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.CanGrow = false;
            this.xrTableCell11.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierColorShade", "")});
            this.xrTableCell11.Location = new System.Drawing.Point(143, 0);
            this.xrTableCell11.Multiline = true;
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(80, 15);
            this.xrTableCell11.StylePriority.UseTextAlignment = false;
            xrSummary16.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary16.IgnoreNullValues = true;
            xrSummary16.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell11.Summary = xrSummary16;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.CanGrow = false;
            this.xrTableCell6.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ColorCode", "")});
            this.xrTableCell6.Location = new System.Drawing.Point(46, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(97, 15);
            this.xrTableCell6.StylePriority.UseTextAlignment = false;
            xrSummary17.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary17.IgnoreNullValues = true;
            xrSummary17.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell6.Summary = xrSummary17;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.CanGrow = false;
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(46, 15);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UsePadding = false;
            this.xrTableCell1.Text = "小計:";
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell6,
            this.xrTableCell11,
            this.xrTableCell12,
            this.xrTableCell13,
            this.xrTableCell15,
            this.xrTableCell16,
            this.xrTableCell17,
            this.xrTableCell18,
            this.xrTableCell19,
            this.xrTableCell24,
            this.xrTableCell27,
            this.xrTableCell40,
            this.xrTableCell28});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(739, 15);
            // 
            // xrTableCell40
            // 
            this.xrTableCell40.CanGrow = false;
            this.xrTableCell40.Location = new System.Drawing.Point(639, 0);
            this.xrTableCell40.Name = "xrTableCell40";
            this.xrTableCell40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell40.Size = new System.Drawing.Size(39, 15);
            // 
            // xrTable1
            // 
            this.xrTable1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable1.ForeColor = System.Drawing.Color.Blue;
            this.xrTable1.Location = new System.Drawing.Point(26, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(739, 15);
            this.xrTable1.StyleName = "csHeader";
            this.xrTable1.StylePriority.UseBackColor = false;
            this.xrTable1.StylePriority.UseBorders = false;
            this.xrTable1.StylePriority.UseForeColor = false;
            this.xrTable1.StylePriority.UseTextAlignment = false;
            this.xrTable1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.ReportFooter.Height = 15;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("OrderLine", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("Price", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 0;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.tableItems});
            this.GroupFooter1.Height = 15;
            this.GroupFooter1.Name = "GroupFooter1";
            this.GroupFooter1.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupFooter1_BeforePrint);
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // poItemsMultipleItemWidthReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.ReportFooter,
            this.GroupHeader1,
            this.GroupFooter1});
            this.DataSource = this.bindingSource1;
            this.ExportOptions.PrintPreview.DefaultFileName = "POReport(Associate)";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csDetail,
            this.csHeaderSmall});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.poItemsReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.tableItems)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void poItemsReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tableItems.Left = this.xrTable1.Left = 0;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int line = (int)this.GetCurrentColumnValue("OrderLine");
            cellLine.Text = line > 100 ? "" : line.ToString();
            //decimal p = (decimal)this.GetCurrentColumnValue("Price");
            //xrPrice.Text = p > 10000000 ? "" : p.ToString("N4");
        }




    }
}
