using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class StockReportSummaryMeter : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRLabel lblMeterQty;
        private DevExpress.XtraReports.UI.XRLabel lblMatName;
        private DevExpress.XtraReports.UI.XRLabel lblHSCode;
        private DevExpress.XtraReports.UI.XRLabel xrLabel6;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRLabel lblMeterSumQty;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel lbAsAtDate;
        private DevExpress.XtraReports.UI.XRLabel xrLabel8;
        private DevExpress.XtraReports.UI.XRLabel lblWeightQty;
        private DevExpress.XtraReports.UI.XRLabel lblWeightSumQty;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public StockReportSummaryMeter()
        {
            InitializeComponent();
        }

        int _dt;
        public StockReportSummaryMeter(object ds,int dt)
        {
            InitializeComponent();
            this.DataSource = ds;
            this._dt = dt;

            this.lblHSCode.DataBindings.Add("Text", this.DataSource, "HSCODE"); 
            this.lblMatName.DataBindings.Add("Text", this.DataSource, "materialname");
            this.lblMeterQty.DataBindings.Add("Text", this.DataSource, "MeterQty", "{0:N2}");
            this.lblWeightQty.DataBindings.Add("Text", this.DataSource, "WEIGHT", "{0:N2}");
            this.lblMeterSumQty.DataBindings.Add("Text", this.DataSource, "MeterQty", "{0:N2}");
            this.lblWeightSumQty.DataBindings.Add("Text", this.DataSource, "WEIGHT", "{0:N2}");

            this.lbAsAtDate.Visible = this._dt != 0;
            this.lbAsAtDate.Text = string.Format("As At Date: {0:####/##/##}", this._dt);
        }

        private void InitializeComponent()
        {
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.lbAsAtDate = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel6 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.lblMeterQty = new DevExpress.XtraReports.UI.XRLabel();
            this.lblMatName = new DevExpress.XtraReports.UI.XRLabel();
            this.lblHSCode = new DevExpress.XtraReports.UI.XRLabel();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.lblMeterSumQty = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel8 = new DevExpress.XtraReports.UI.XRLabel();
            this.lblWeightQty = new DevExpress.XtraReports.UI.XRLabel();
            this.lblWeightSumQty = new DevExpress.XtraReports.UI.XRLabel();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel8,
            this.lbAsAtDate,
            this.xrLabel4,
            this.xrLabel6,
            this.xrLabel5,
            this.xrLabel3,
            this.xrPageInfo1,
            this.xrLabel1});
            this.PageHeader.Height = 75;
            this.PageHeader.Name = "PageHeader";
            // 
            // lbAsAtDate
            // 
            this.lbAsAtDate.Font = new System.Drawing.Font("Times New Roman", 7F);
            this.lbAsAtDate.Location = new System.Drawing.Point(250, 25);
            this.lbAsAtDate.Name = "lbAsAtDate";
            this.lbAsAtDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbAsAtDate.Size = new System.Drawing.Size(258, 17);
            this.lbAsAtDate.StylePriority.UseFont = false;
            this.lbAsAtDate.Text = "As At Date:";
            this.lbAsAtDate.Visible = false;
            // 
            // xrLabel4
            // 
            this.xrLabel4.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel4.CanGrow = false;
            this.xrLabel4.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel4.Location = new System.Drawing.Point(8, 50);
            this.xrLabel4.Multiline = true;
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(117, 25);
            this.xrLabel4.StylePriority.UseBorders = false;
            this.xrLabel4.StylePriority.UseFont = false;
            this.xrLabel4.StylePriority.UseTextAlignment = false;
            this.xrLabel4.Text = "H.S.Code";
            this.xrLabel4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel6
            // 
            this.xrLabel6.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel6.CanGrow = false;
            this.xrLabel6.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel6.Location = new System.Drawing.Point(367, 50);
            this.xrLabel6.Multiline = true;
            this.xrLabel6.Name = "xrLabel6";
            this.xrLabel6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel6.Size = new System.Drawing.Size(150, 25);
            this.xrLabel6.StylePriority.UseBorders = false;
            this.xrLabel6.StylePriority.UseFont = false;
            this.xrLabel6.StylePriority.UseTextAlignment = false;
            this.xrLabel6.Text = "Qty (Meter)";
            this.xrLabel6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel5
            // 
            this.xrLabel5.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel5.CanGrow = false;
            this.xrLabel5.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel5.Location = new System.Drawing.Point(125, 50);
            this.xrLabel5.Multiline = true;
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(242, 25);
            this.xrLabel5.StylePriority.UseBorders = false;
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.StylePriority.UseTextAlignment = false;
            this.xrLabel5.Text = "Material\r\nCode";
            this.xrLabel5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Location = new System.Drawing.Point(558, 21);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(45, 23);
            this.xrLabel3.Text = "Page:";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Location = new System.Drawing.Point(603, 21);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(100, 23);
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Times New Roman", 16F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(42, 8);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(166, 33);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.Text = "Stock Report";
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblWeightQty,
            this.lblMeterQty,
            this.lblMatName,
            this.lblHSCode});
            this.Detail.Height = 21;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            // 
            // lblMeterQty
            // 
            this.lblMeterQty.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lblMeterQty.Location = new System.Drawing.Point(367, 0);
            this.lblMeterQty.Multiline = true;
            this.lblMeterQty.Name = "lblMeterQty";
            this.lblMeterQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblMeterQty.Size = new System.Drawing.Size(150, 21);
            this.lblMeterQty.StylePriority.UseBorders = false;
            this.lblMeterQty.StylePriority.UseTextAlignment = false;
            this.lblMeterQty.Text = "[SQTY!#,0.00]";
            this.lblMeterQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblMatName
            // 
            this.lblMatName.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lblMatName.Location = new System.Drawing.Point(125, 0);
            this.lblMatName.Multiline = true;
            this.lblMatName.Name = "lblMatName";
            this.lblMatName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblMatName.Size = new System.Drawing.Size(242, 21);
            this.lblMatName.StylePriority.UseBorders = false;
            this.lblMatName.StylePriority.UseTextAlignment = false;
            this.lblMatName.Text = "[SUPPREF]";
            this.lblMatName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lblHSCode
            // 
            this.lblHSCode.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lblHSCode.Location = new System.Drawing.Point(8, 0);
            this.lblHSCode.Multiline = true;
            this.lblHSCode.Name = "lblHSCode";
            this.lblHSCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblHSCode.Size = new System.Drawing.Size(117, 21);
            this.lblHSCode.StylePriority.UseBorders = false;
            this.lblHSCode.StylePriority.UseTextAlignment = false;
            this.lblHSCode.Text = "[MATERIALTYPE]";
            this.lblHSCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblWeightSumQty,
            this.xrLabel2,
            this.lblMeterSumQty});
            this.ReportFooter.Height = 29;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel2.Location = new System.Drawing.Point(300, 8);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(50, 21);
            this.xrLabel2.StylePriority.UseTextAlignment = false;
            this.xrLabel2.Text = "Total:";
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblMeterSumQty
            // 
            this.lblMeterSumQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lblMeterSumQty.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblMeterSumQty.Location = new System.Drawing.Point(367, 8);
            this.lblMeterSumQty.Multiline = true;
            this.lblMeterSumQty.Name = "lblMeterSumQty";
            this.lblMeterSumQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblMeterSumQty.Size = new System.Drawing.Size(150, 21);
            this.lblMeterSumQty.StylePriority.UseBorders = false;
            this.lblMeterSumQty.StylePriority.UseTextAlignment = false;
            xrSummary2.FormatString = "{0:N2}";
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lblMeterSumQty.Summary = xrSummary2;
            this.lblMeterSumQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel8
            // 
            this.xrLabel8.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel8.CanGrow = false;
            this.xrLabel8.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel8.Location = new System.Drawing.Point(517, 50);
            this.xrLabel8.Multiline = true;
            this.xrLabel8.Name = "xrLabel8";
            this.xrLabel8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel8.Size = new System.Drawing.Size(150, 25);
            this.xrLabel8.StylePriority.UseBorders = false;
            this.xrLabel8.StylePriority.UseFont = false;
            this.xrLabel8.StylePriority.UseTextAlignment = false;
            this.xrLabel8.Text = "Qty (kgs)";
            this.xrLabel8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lblWeightQty
            // 
            this.lblWeightQty.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lblWeightQty.Location = new System.Drawing.Point(517, 0);
            this.lblWeightQty.Multiline = true;
            this.lblWeightQty.Name = "lblWeightQty";
            this.lblWeightQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblWeightQty.Size = new System.Drawing.Size(150, 21);
            this.lblWeightQty.StylePriority.UseBorders = false;
            this.lblWeightQty.StylePriority.UseTextAlignment = false;
            this.lblWeightQty.Text = "[SQTY!#,0.00]";
            this.lblWeightQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblWeightSumQty
            // 
            this.lblWeightSumQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lblWeightSumQty.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblWeightSumQty.Location = new System.Drawing.Point(517, 8);
            this.lblWeightSumQty.Multiline = true;
            this.lblWeightSumQty.Name = "lblWeightSumQty";
            this.lblWeightSumQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblWeightSumQty.Size = new System.Drawing.Size(150, 21);
            this.lblWeightSumQty.StylePriority.UseBorders = false;
            this.lblWeightSumQty.StylePriority.UseTextAlignment = false;
            xrSummary1.FormatString = "{0:N2}";
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lblWeightSumQty.Summary = xrSummary1;
            this.lblWeightSumQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // StockReportSummaryMeter
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.ReportFooter});
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 50, 50);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
