using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class StockReportSummary : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRLabel lbAsAtDate;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell cellHSCode;
        private DevExpress.XtraReports.UI.XRTableCell cellRowNum;
        private DevExpress.XtraReports.UI.XRTableCell cellMaterialName;
        private DevExpress.XtraReports.UI.XRTableCell cellWeightRMB;
        private DevExpress.XtraReports.UI.XRTableCell cellWeightTotal;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell11;
        private DevExpress.XtraReports.UI.XRTableCell cellWeightOther;
        private DevExpress.XtraReports.UI.XRControlStyle colCaption;
        private DevExpress.XtraReports.UI.XRControlStyle colContent;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell13;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell15;
        private DevExpress.XtraReports.UI.XRTableCell cellSummaryWeightRMB;
        private DevExpress.XtraReports.UI.XRTableCell cellSummaryWeightOther;
        private DevExpress.XtraReports.UI.XRTableCell cellSummaryWeightTotal;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public StockReportSummary()
        {
            InitializeComponent();
        }

        int _dt;
        public StockReportSummary(object ds,int dt)
        {
            InitializeComponent();
            this.DataSource = ds;
            this._dt = dt;

            //this.lblHSCode.DataBindings.Add("Text", this.DataSource, "HSCODE");
            //this.lblMatName.DataBindings.Add("Text", this.DataSource, "materialname");
            //this.lblQty.DataBindings.Add("Text", this.DataSource, "WEIGHT", "{0:0.00}");
            //this.xrLabel7.DataBindings.Add("Text", this.DataSource, "WEIGHT", "{0:0.00}");

            this.cellHSCode.DataBindings.Add("Text", this.DataSource, "HSCODE");
            this.cellRowNum.DataBindings.Add("Text", this.DataSource, "RowNum");
            this.cellMaterialName.DataBindings.Add("Text", this.DataSource, "MaterialName");
            this.cellWeightRMB.DataBindings.Add("Text", this.DataSource, "Weight_RMB", "{0:0.00}");
            this.cellWeightOther.DataBindings.Add("Text", this.DataSource, "Weight_Other", "{0:0.00}");
            this.cellWeightTotal.DataBindings.Add("Text", this.DataSource, "Weight_Total", "{0:0.00}");

            this.cellSummaryWeightRMB.DataBindings.Add("Text", this.DataSource, "Weight_RMB", "{0:0.00}");
            this.cellSummaryWeightOther.DataBindings.Add("Text", this.DataSource, "Weight_Other", "{0:0.00}");
            this.cellSummaryWeightTotal.DataBindings.Add("Text", this.DataSource, "Weight_Total", "{0:0.00}");
            

            this.lbAsAtDate.Visible = this._dt != 0;
            this.lbAsAtDate.Text = string.Format("As At Date: {0:####/##/##}", this._dt);
        }

        private void InitializeComponent()
        {
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbAsAtDate = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellHSCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellRowNum = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellMaterialName = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellWeightRMB = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellWeightTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellWeightOther = new DevExpress.XtraReports.UI.XRTableCell();
            this.colCaption = new DevExpress.XtraReports.UI.XRControlStyle();
            this.colContent = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSummaryWeightRMB = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSummaryWeightOther = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSummaryWeightTotal = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1,
            this.lbAsAtDate,
            this.xrLabel3,
            this.xrPageInfo1,
            this.xrLabel1});
            this.PageHeader.Height = 67;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(0, 42);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(767, 25);
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell4,
            this.xrTableCell2,
            this.xrTableCell3,
            this.xrTableCell11,
            this.xrTableCell5});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(767, 25);
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(108, 25);
            this.xrTableCell1.StyleName = "colCaption";
            this.xrTableCell1.Text = "H.S.Code";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Location = new System.Drawing.Point(108, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(75, 25);
            this.xrTableCell4.StyleName = "colCaption";
            this.xrTableCell4.Text = "Row Num.";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(183, 0);
            this.xrTableCell2.Multiline = true;
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(267, 25);
            this.xrTableCell2.StyleName = "colCaption";
            this.xrTableCell2.Text = "Material\r\n";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Location = new System.Drawing.Point(450, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(100, 25);
            this.xrTableCell3.StyleName = "colCaption";
            this.xrTableCell3.Text = "Qty RMB (kg)";
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Location = new System.Drawing.Point(658, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(109, 25);
            this.xrTableCell5.StyleName = "colCaption";
            this.xrTableCell5.Text = "Qty  Total (kg)";
            // 
            // lbAsAtDate
            // 
            this.lbAsAtDate.Font = new System.Drawing.Font("Times New Roman", 7F);
            this.lbAsAtDate.Location = new System.Drawing.Point(408, 25);
            this.lbAsAtDate.Name = "lbAsAtDate";
            this.lbAsAtDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbAsAtDate.Size = new System.Drawing.Size(133, 17);
            this.lbAsAtDate.StylePriority.UseFont = false;
            this.lbAsAtDate.Text = "As At Date:";
            this.lbAsAtDate.Visible = false;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Location = new System.Drawing.Point(672, 25);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(45, 17);
            this.xrLabel3.Text = "Page:";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Location = new System.Drawing.Point(717, 25);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(50, 17);
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Times New Roman", 16F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(217, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(233, 25);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.Text = "Stock Report";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.Detail.Height = 25;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            // 
            // xrTable2
            // 
            this.xrTable2.Location = new System.Drawing.Point(0, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTable2.Size = new System.Drawing.Size(767, 25);
            this.xrTable2.StyleName = "colContent";
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellHSCode,
            this.cellRowNum,
            this.cellMaterialName,
            this.cellWeightRMB,
            this.cellWeightOther,
            this.cellWeightTotal});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(767, 25);
            // 
            // cellHSCode
            // 
            this.cellHSCode.Location = new System.Drawing.Point(0, 0);
            this.cellHSCode.Name = "cellHSCode";
            this.cellHSCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellHSCode.Size = new System.Drawing.Size(108, 25);
            this.cellHSCode.Text = "[HSCODE]";
            // 
            // cellRowNum
            // 
            this.cellRowNum.Location = new System.Drawing.Point(108, 0);
            this.cellRowNum.Name = "cellRowNum";
            this.cellRowNum.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellRowNum.Size = new System.Drawing.Size(75, 25);
            this.cellRowNum.StylePriority.UseTextAlignment = false;
            this.cellRowNum.Text = "[RowNum]";
            this.cellRowNum.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // cellMaterialName
            // 
            this.cellMaterialName.Location = new System.Drawing.Point(183, 0);
            this.cellMaterialName.Multiline = true;
            this.cellMaterialName.Name = "cellMaterialName";
            this.cellMaterialName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellMaterialName.Size = new System.Drawing.Size(267, 25);
            this.cellMaterialName.Text = "[MaterialName]";
            // 
            // cellWeightRMB
            // 
            this.cellWeightRMB.Location = new System.Drawing.Point(450, 0);
            this.cellWeightRMB.Name = "cellWeightRMB";
            this.cellWeightRMB.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellWeightRMB.Size = new System.Drawing.Size(100, 25);
            this.cellWeightRMB.StylePriority.UseTextAlignment = false;
            this.cellWeightRMB.Text = "[Weight_Other!#,0.00]";
            this.cellWeightRMB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellWeightTotal
            // 
            this.cellWeightTotal.Location = new System.Drawing.Point(658, 0);
            this.cellWeightTotal.Name = "cellWeightTotal";
            this.cellWeightTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellWeightTotal.Size = new System.Drawing.Size(109, 25);
            this.cellWeightTotal.StylePriority.UseTextAlignment = false;
            this.cellWeightTotal.Text = "[Weight_Total!#,0.00]";
            this.cellWeightTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.ReportFooter.Height = 42;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.Location = new System.Drawing.Point(550, 0);
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(108, 25);
            this.xrTableCell11.StyleName = "colCaption";
            this.xrTableCell11.Text = "Qty Other (kg)";
            // 
            // cellWeightOther
            // 
            this.cellWeightOther.Location = new System.Drawing.Point(550, 0);
            this.cellWeightOther.Name = "cellWeightOther";
            this.cellWeightOther.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellWeightOther.Size = new System.Drawing.Size(108, 25);
            this.cellWeightOther.StylePriority.UseTextAlignment = false;
            this.cellWeightOther.Text = "[Weight_RMB!#,0.00]";
            this.cellWeightOther.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // colCaption
            // 
            this.colCaption.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.colCaption.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.colCaption.Name = "colCaption";
            this.colCaption.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.colCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // colContent
            // 
            this.colContent.Name = "colContent";
            this.colContent.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.colContent.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTable3
            // 
            this.xrTable3.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTable3.Location = new System.Drawing.Point(0, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable3.Size = new System.Drawing.Size(767, 25);
            this.xrTable3.StyleName = "colContent";
            this.xrTable3.StylePriority.UseBorders = false;
            this.xrTable3.StylePriority.UseTextAlignment = false;
            this.xrTable3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell13,
            this.xrTableCell14,
            this.xrTableCell15,
            this.cellSummaryWeightRMB,
            this.cellSummaryWeightOther,
            this.cellSummaryWeightTotal});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(767, 25);
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(108, 25);
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Location = new System.Drawing.Point(108, 0);
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(75, 25);
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Location = new System.Drawing.Point(183, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(267, 25);
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "Summary:";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellSummaryWeightRMB
            // 
            this.cellSummaryWeightRMB.Location = new System.Drawing.Point(450, 0);
            this.cellSummaryWeightRMB.Name = "cellSummaryWeightRMB";
            this.cellSummaryWeightRMB.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSummaryWeightRMB.Size = new System.Drawing.Size(100, 25);
            this.cellSummaryWeightRMB.StylePriority.UseTextAlignment = false;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.cellSummaryWeightRMB.Summary = xrSummary1;
            this.cellSummaryWeightRMB.Text = "[Weight_Other!#,0.00]";
            this.cellSummaryWeightRMB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellSummaryWeightOther
            // 
            this.cellSummaryWeightOther.Location = new System.Drawing.Point(550, 0);
            this.cellSummaryWeightOther.Name = "cellSummaryWeightOther";
            this.cellSummaryWeightOther.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSummaryWeightOther.Size = new System.Drawing.Size(108, 25);
            this.cellSummaryWeightOther.StylePriority.UseTextAlignment = false;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.cellSummaryWeightOther.Summary = xrSummary2;
            this.cellSummaryWeightOther.Text = "[Weight_RMB!#,0.00]";
            this.cellSummaryWeightOther.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellSummaryWeightTotal
            // 
            this.cellSummaryWeightTotal.Location = new System.Drawing.Point(658, 0);
            this.cellSummaryWeightTotal.Name = "cellSummaryWeightTotal";
            this.cellSummaryWeightTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSummaryWeightTotal.Size = new System.Drawing.Size(109, 25);
            this.cellSummaryWeightTotal.StylePriority.UseTextAlignment = false;
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.cellSummaryWeightTotal.Summary = xrSummary3;
            this.cellSummaryWeightTotal.Text = "[Weight_Total!#,0.00]";
            this.cellSummaryWeightTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // StockReportSummary
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.ReportFooter});
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 50, 50);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.colCaption,
            this.colContent});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
