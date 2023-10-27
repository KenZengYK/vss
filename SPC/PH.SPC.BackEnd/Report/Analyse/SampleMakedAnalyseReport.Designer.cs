namespace PH.SPC.BackEnd
{
    partial class SampleMakedAnalyseReport
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
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrLabel12 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel7 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel11 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbCustomer = new DevExpress.XtraReports.UI.XRLabel();
            this.lbSeason = new DevExpress.XtraReports.UI.XRLabel();
            this.lbCreateDate = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel6 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel8 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel9 = new DevExpress.XtraReports.UI.XRLabel();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csTitle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csFooter = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.lbStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            this.lbLDPercent = new DevExpress.XtraReports.UI.XRLabel();
            this.lbLDStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            this.lbQuotationStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel10 = new DevExpress.XtraReports.UI.XRLabel();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel12,
            this.xrLabel7,
            this.xrLabel4,
            this.xrLabel3,
            this.xrLabel2});
            this.Detail.Height = 24;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // xrLabel12
            // 
            this.xrLabel12.CanGrow = false;
            this.xrLabel12.Location = new System.Drawing.Point(147, 0);
            this.xrLabel12.Multiline = true;
            this.xrLabel12.Name = "xrLabel12";
            this.xrLabel12.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel12.Size = new System.Drawing.Size(94, 24);
            this.xrLabel12.StyleName = "csDetail";
            this.xrLabel12.Text = "[StyleCount!#,0]";
            this.xrLabel12.WordWrap = false;
            // 
            // xrLabel7
            // 
            this.xrLabel7.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel7.CanGrow = false;
            this.xrLabel7.Location = new System.Drawing.Point(449, 0);
            this.xrLabel7.Multiline = true;
            this.xrLabel7.Name = "xrLabel7";
            this.xrLabel7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel7.Size = new System.Drawing.Size(121, 24);
            this.xrLabel7.StyleName = "csDetail";
            this.xrLabel7.StylePriority.UseBorders = false;
            this.xrLabel7.Text = "[LDMakedPercent!0.00%]";
            this.xrLabel7.WordWrap = false;
            // 
            // xrLabel4
            // 
            this.xrLabel4.CanGrow = false;
            this.xrLabel4.Location = new System.Drawing.Point(337, 0);
            this.xrLabel4.Multiline = true;
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(112, 24);
            this.xrLabel4.StyleName = "csDetail";
            this.xrLabel4.Text = "[LDMakedQty!#,0]";
            this.xrLabel4.WordWrap = false;
            // 
            // xrLabel3
            // 
            this.xrLabel3.CanGrow = false;
            this.xrLabel3.Location = new System.Drawing.Point(241, 0);
            this.xrLabel3.Multiline = true;
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(96, 24);
            this.xrLabel3.StyleName = "csDetail";
            this.xrLabel3.Text = "[SampleMakedQty!#,0]";
            this.xrLabel3.WordWrap = false;
            // 
            // xrLabel2
            // 
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.Location = new System.Drawing.Point(8, 0);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(139, 24);
            this.xrLabel2.StyleName = "csDetail";
            this.xrLabel2.StylePriority.UseTextAlignment = false;
            this.xrLabel2.Text = "[ProductCategory]";
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrLabel2.WordWrap = false;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel11,
            this.xrLabel1,
            this.lbCustomer,
            this.lbSeason,
            this.lbCreateDate,
            this.xrPageInfo1,
            this.xrLabel5,
            this.xrLabel6,
            this.xrLabel8,
            this.xrLabel9});
            this.PageHeader.Height = 103;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrLabel11
            // 
            this.xrLabel11.CanGrow = false;
            this.xrLabel11.Location = new System.Drawing.Point(147, 74);
            this.xrLabel11.Multiline = true;
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(94, 29);
            this.xrLabel11.StyleName = "csTitle";
            this.xrLabel11.Text = "款式數量";
            this.xrLabel11.WordWrap = false;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(9, 5);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(373, 32);
            this.xrLabel1.StyleName = "csHeader";
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "樣板制造數量分析 (用於成本分析)";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbCustomer
            // 
            this.lbCustomer.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lbCustomer.Location = new System.Drawing.Point(8, 38);
            this.lbCustomer.Name = "lbCustomer";
            this.lbCustomer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCustomer.Size = new System.Drawing.Size(467, 16);
            this.lbCustomer.StyleName = "csTitle";
            this.lbCustomer.StylePriority.UseBorders = false;
            this.lbCustomer.StylePriority.UseTextAlignment = false;
            this.lbCustomer.Text = "客戶:";
            this.lbCustomer.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbSeason
            // 
            this.lbSeason.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lbSeason.Location = new System.Drawing.Point(8, 57);
            this.lbSeason.Name = "lbSeason";
            this.lbSeason.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbSeason.Size = new System.Drawing.Size(342, 16);
            this.lbSeason.StyleName = "csTitle";
            this.lbSeason.StylePriority.UseBorders = false;
            this.lbSeason.StylePriority.UseTextAlignment = false;
            this.lbSeason.Text = "季節:";
            this.lbSeason.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbCreateDate
            // 
            this.lbCreateDate.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lbCreateDate.Location = new System.Drawing.Point(351, 54);
            this.lbCreateDate.Name = "lbCreateDate";
            this.lbCreateDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCreateDate.Size = new System.Drawing.Size(217, 16);
            this.lbCreateDate.StyleName = "csTitle";
            this.lbCreateDate.StylePriority.UseBorders = false;
            this.lbCreateDate.StylePriority.UseTextAlignment = false;
            this.lbCreateDate.Text = "時段:";
            this.lbCreateDate.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrPageInfo1.Format = "PAGE: {0}/{1}";
            this.xrPageInfo1.Location = new System.Drawing.Point(476, 36);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(92, 15);
            this.xrPageInfo1.StyleName = "csTitle";
            this.xrPageInfo1.StylePriority.UseBorders = false;
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel5
            // 
            this.xrLabel5.CanGrow = false;
            this.xrLabel5.Location = new System.Drawing.Point(8, 74);
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(139, 29);
            this.xrLabel5.StyleName = "csTitle";
            this.xrLabel5.StylePriority.UseTextAlignment = false;
            this.xrLabel5.Text = "產品類別";
            this.xrLabel5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrLabel5.WordWrap = false;
            // 
            // xrLabel6
            // 
            this.xrLabel6.CanGrow = false;
            this.xrLabel6.Location = new System.Drawing.Point(241, 74);
            this.xrLabel6.Multiline = true;
            this.xrLabel6.Name = "xrLabel6";
            this.xrLabel6.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel6.Size = new System.Drawing.Size(96, 29);
            this.xrLabel6.StyleName = "csTitle";
            this.xrLabel6.Text = "做辦數量";
            this.xrLabel6.WordWrap = false;
            // 
            // xrLabel8
            // 
            this.xrLabel8.CanGrow = false;
            this.xrLabel8.Location = new System.Drawing.Point(337, 74);
            this.xrLabel8.Multiline = true;
            this.xrLabel8.Name = "xrLabel8";
            this.xrLabel8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel8.Size = new System.Drawing.Size(112, 29);
            this.xrLabel8.StyleName = "csTitle";
            this.xrLabel8.Text = "落單數量";
            this.xrLabel8.WordWrap = false;
            // 
            // xrLabel9
            // 
            this.xrLabel9.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel9.CanGrow = false;
            this.xrLabel9.Location = new System.Drawing.Point(449, 74);
            this.xrLabel9.Multiline = true;
            this.xrLabel9.Name = "xrLabel9";
            this.xrLabel9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel9.Size = new System.Drawing.Size(121, 29);
            this.xrLabel9.StyleName = "csTitle";
            this.xrLabel9.StylePriority.UseBorders = false;
            this.xrLabel9.Text = "比率";
            this.xrLabel9.WordWrap = false;
            // 
            // PageFooter
            // 
            this.PageFooter.Height = 0;
            this.PageFooter.Name = "PageFooter";
            this.PageFooter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageFooter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // csHeader
            // 
            this.csHeader.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csDetail
            // 
            this.csDetail.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csDetail.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 5, 0, 0, 100F);
            this.csDetail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // csTitle
            // 
            this.csTitle.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.csTitle.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csTitle.Name = "csTitle";
            this.csTitle.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 5, 0, 0, 100F);
            this.csTitle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // csFooter
            // 
            this.csFooter.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csFooter.Name = "csFooter";
            this.csFooter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lbStyleCount,
            this.lbLDPercent,
            this.lbLDStyleCount,
            this.lbQuotationStyleCount,
            this.xrLabel10});
            this.ReportFooter.Height = 24;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportFooter_BeforePrint);
            // 
            // lbStyleCount
            // 
            this.lbStyleCount.CanGrow = false;
            this.lbStyleCount.Location = new System.Drawing.Point(147, 0);
            this.lbStyleCount.Multiline = true;
            this.lbStyleCount.Name = "lbStyleCount";
            this.lbStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbStyleCount.Size = new System.Drawing.Size(96, 24);
            this.lbStyleCount.StyleName = "csDetail";
            xrSummary1.FormatString = "{0:#,0}";
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lbStyleCount.Summary = xrSummary1;
            this.lbStyleCount.WordWrap = false;
            // 
            // lbLDPercent
            // 
            this.lbLDPercent.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbLDPercent.CanGrow = false;
            this.lbLDPercent.Location = new System.Drawing.Point(449, 0);
            this.lbLDPercent.Multiline = true;
            this.lbLDPercent.Name = "lbLDPercent";
            this.lbLDPercent.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbLDPercent.Size = new System.Drawing.Size(121, 24);
            this.lbLDPercent.StyleName = "csDetail";
            this.lbLDPercent.StylePriority.UseBorders = false;
            this.lbLDPercent.WordWrap = false;
            // 
            // lbLDStyleCount
            // 
            this.lbLDStyleCount.CanGrow = false;
            this.lbLDStyleCount.Location = new System.Drawing.Point(337, 0);
            this.lbLDStyleCount.Multiline = true;
            this.lbLDStyleCount.Name = "lbLDStyleCount";
            this.lbLDStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbLDStyleCount.Size = new System.Drawing.Size(112, 24);
            this.lbLDStyleCount.StyleName = "csDetail";
            xrSummary2.FormatString = "{0:#,0}";
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lbLDStyleCount.Summary = xrSummary2;
            this.lbLDStyleCount.WordWrap = false;
            // 
            // lbQuotationStyleCount
            // 
            this.lbQuotationStyleCount.CanGrow = false;
            this.lbQuotationStyleCount.Location = new System.Drawing.Point(241, 0);
            this.lbQuotationStyleCount.Multiline = true;
            this.lbQuotationStyleCount.Name = "lbQuotationStyleCount";
            this.lbQuotationStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbQuotationStyleCount.Size = new System.Drawing.Size(96, 24);
            this.lbQuotationStyleCount.StyleName = "csDetail";
            xrSummary3.FormatString = "{0:#,0}";
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lbQuotationStyleCount.Summary = xrSummary3;
            this.lbQuotationStyleCount.WordWrap = false;
            // 
            // xrLabel10
            // 
            this.xrLabel10.CanGrow = false;
            this.xrLabel10.Location = new System.Drawing.Point(8, 0);
            this.xrLabel10.Name = "xrLabel10";
            this.xrLabel10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel10.Size = new System.Drawing.Size(139, 24);
            this.xrLabel10.StyleName = "csDetail";
            this.xrLabel10.StylePriority.UseTextAlignment = false;
            this.xrLabel10.Text = "Total :";
            this.xrLabel10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrLabel10.WordWrap = false;
            // 
            // SampleMakedAnalyseReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter,
            this.ReportFooter});
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csDetail,
            this.csTitle,
            this.csFooter});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.PageFooterBand PageFooter;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRControlStyle csHeader;
        private DevExpress.XtraReports.UI.XRControlStyle csDetail;
        private DevExpress.XtraReports.UI.XRControlStyle csTitle;
        private DevExpress.XtraReports.UI.XRControlStyle csFooter;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRLabel lbCreateDate;
        private DevExpress.XtraReports.UI.XRLabel lbSeason;
        private DevExpress.XtraReports.UI.XRLabel lbCustomer;
        private DevExpress.XtraReports.UI.XRLabel xrLabel8;
        private DevExpress.XtraReports.UI.XRLabel xrLabel6;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.XRLabel xrLabel9;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRLabel xrLabel7;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel lbLDPercent;
        private DevExpress.XtraReports.UI.XRLabel lbLDStyleCount;
        private DevExpress.XtraReports.UI.XRLabel lbQuotationStyleCount;
        private DevExpress.XtraReports.UI.XRLabel xrLabel10;
        private DevExpress.XtraReports.UI.XRLabel xrLabel12;
        private DevExpress.XtraReports.UI.XRLabel xrLabel11;
        private DevExpress.XtraReports.UI.XRLabel lbStyleCount;
    }
}
