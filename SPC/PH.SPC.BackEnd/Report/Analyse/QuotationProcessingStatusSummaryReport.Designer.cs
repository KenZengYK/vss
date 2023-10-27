namespace PH.SPC.BackEnd
{
    partial class QuotationProcessingStatusSummaryReport
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
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary6 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary5 = new DevExpress.XtraReports.UI.XRSummary();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrLabel14 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel8 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel6 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.lbCreateDate = new DevExpress.XtraReports.UI.XRLabel();
            this.lbCustomer = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel11 = new DevExpress.XtraReports.UI.XRLabel();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csTitle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csFooter = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.lblStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            this.lbLDStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            this.lblQuotationStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel10 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel13 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrLabel7 = new DevExpress.XtraReports.UI.XRLabel();
            this.lblSubQuotationStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel12 = new DevExpress.XtraReports.UI.XRLabel();
            this.lblSubStyleCount = new DevExpress.XtraReports.UI.XRLabel();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel14,
            this.xrLabel3,
            this.xrLabel4,
            this.xrLabel2});
            this.Detail.Height = 24;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // xrLabel14
            // 
            this.xrLabel14.CanGrow = false;
            this.xrLabel14.Location = new System.Drawing.Point(147, 0);
            this.xrLabel14.Multiline = true;
            this.xrLabel14.Name = "xrLabel14";
            this.xrLabel14.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel14.Size = new System.Drawing.Size(90, 24);
            this.xrLabel14.StyleName = "csDetail";
            this.xrLabel14.Text = "[StyleCount!#,0]";
            this.xrLabel14.WordWrap = false;
            // 
            // xrLabel3
            // 
            this.xrLabel3.CanGrow = false;
            this.xrLabel3.Location = new System.Drawing.Point(237, 0);
            this.xrLabel3.Multiline = true;
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(107, 24);
            this.xrLabel3.StyleName = "csDetail";
            this.xrLabel3.Text = "[MakeSampleTimes!#,0]";
            this.xrLabel3.WordWrap = false;
            // 
            // xrLabel4
            // 
            this.xrLabel4.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel4.CanGrow = false;
            this.xrLabel4.Location = new System.Drawing.Point(344, 0);
            this.xrLabel4.Multiline = true;
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(115, 24);
            this.xrLabel4.StyleName = "csDetail";
            this.xrLabel4.StylePriority.UseBorders = false;
            this.xrLabel4.Text = "[StyleID]";
            this.xrLabel4.WordWrap = false;
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
            this.xrLabel8,
            this.xrLabel6,
            this.xrLabel5,
            this.xrPageInfo1,
            this.lbCreateDate,
            this.lbCustomer,
            this.xrLabel1,
            this.xrLabel11});
            this.PageHeader.Height = 103;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrLabel8
            // 
            this.xrLabel8.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel8.CanGrow = false;
            this.xrLabel8.Location = new System.Drawing.Point(344, 74);
            this.xrLabel8.Multiline = true;
            this.xrLabel8.Name = "xrLabel8";
            this.xrLabel8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel8.Size = new System.Drawing.Size(115, 29);
            this.xrLabel8.StyleName = "csTitle";
            this.xrLabel8.StylePriority.UseBorders = false;
            this.xrLabel8.Text = "款號";
            this.xrLabel8.WordWrap = false;
            // 
            // xrLabel6
            // 
            this.xrLabel6.CanGrow = false;
            this.xrLabel6.Location = new System.Drawing.Point(147, 74);
            this.xrLabel6.Multiline = true;
            this.xrLabel6.Name = "xrLabel6";
            this.xrLabel6.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel6.Size = new System.Drawing.Size(90, 29);
            this.xrLabel6.StyleName = "csTitle";
            this.xrLabel6.Text = "款式數量";
            this.xrLabel6.WordWrap = false;
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
            // xrPageInfo1
            // 
            this.xrPageInfo1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrPageInfo1.Format = "PAGE: {0}/{1}";
            this.xrPageInfo1.Location = new System.Drawing.Point(383, 33);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(68, 15);
            this.xrPageInfo1.StyleName = "csTitle";
            this.xrPageInfo1.StylePriority.UseBorders = false;
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbCreateDate
            // 
            this.lbCreateDate.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lbCreateDate.Location = new System.Drawing.Point(150, 54);
            this.lbCreateDate.Name = "lbCreateDate";
            this.lbCreateDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCreateDate.Size = new System.Drawing.Size(299, 16);
            this.lbCreateDate.StyleName = "csTitle";
            this.lbCreateDate.StylePriority.UseBorders = false;
            this.lbCreateDate.StylePriority.UseTextAlignment = false;
            this.lbCreateDate.Text = "時段:";
            this.lbCreateDate.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbCustomer
            // 
            this.lbCustomer.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lbCustomer.Location = new System.Drawing.Point(9, 54);
            this.lbCustomer.Name = "lbCustomer";
            this.lbCustomer.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCustomer.Size = new System.Drawing.Size(98, 16);
            this.lbCustomer.StyleName = "csTitle";
            this.lbCustomer.StylePriority.UseBorders = false;
            this.lbCustomer.StylePriority.UseTextAlignment = false;
            this.lbCustomer.Text = "客戶:";
            this.lbCustomer.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(8, 8);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(375, 32);
            this.xrLabel1.StyleName = "csHeader";
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "Sample Processing Status Summary";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel11
            // 
            this.xrLabel11.CanGrow = false;
            this.xrLabel11.Location = new System.Drawing.Point(237, 74);
            this.xrLabel11.Multiline = true;
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(107, 29);
            this.xrLabel11.StyleName = "csTitle";
            this.xrLabel11.Text = "做辦次數";
            this.xrLabel11.WordWrap = false;
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
            this.lblStyleCount,
            this.lbLDStyleCount,
            this.lblQuotationStyleCount,
            this.xrLabel10});
            this.ReportFooter.Height = 24;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportFooter_BeforePrint);
            // 
            // lblStyleCount
            // 
            this.lblStyleCount.AnchorVertical = DevExpress.XtraReports.UI.VerticalAnchorStyles.Top;
            this.lblStyleCount.CanGrow = false;
            this.lblStyleCount.Location = new System.Drawing.Point(147, 0);
            this.lblStyleCount.Multiline = true;
            this.lblStyleCount.Name = "lblStyleCount";
            this.lblStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lblStyleCount.Size = new System.Drawing.Size(90, 24);
            this.lblStyleCount.StyleName = "csDetail";
            xrSummary1.FormatString = "{0:#,0}";
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lblStyleCount.Summary = xrSummary1;
            this.lblStyleCount.WordWrap = false;
            // 
            // lbLDStyleCount
            // 
            this.lbLDStyleCount.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbLDStyleCount.CanGrow = false;
            this.lbLDStyleCount.Location = new System.Drawing.Point(344, 0);
            this.lbLDStyleCount.Multiline = true;
            this.lbLDStyleCount.Name = "lbLDStyleCount";
            this.lbLDStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbLDStyleCount.Size = new System.Drawing.Size(115, 24);
            this.lbLDStyleCount.StyleName = "csDetail";
            this.lbLDStyleCount.StylePriority.UseBorders = false;
            xrSummary2.FormatString = "{0:#,0}";
            this.lbLDStyleCount.Summary = xrSummary2;
            this.lbLDStyleCount.WordWrap = false;
            // 
            // lblQuotationStyleCount
            // 
            this.lblQuotationStyleCount.AnchorVertical = DevExpress.XtraReports.UI.VerticalAnchorStyles.Top;
            this.lblQuotationStyleCount.CanGrow = false;
            this.lblQuotationStyleCount.Location = new System.Drawing.Point(237, 0);
            this.lblQuotationStyleCount.Multiline = true;
            this.lblQuotationStyleCount.Name = "lblQuotationStyleCount";
            this.lblQuotationStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lblQuotationStyleCount.Size = new System.Drawing.Size(107, 24);
            this.lblQuotationStyleCount.StyleName = "csDetail";
            xrSummary3.FormatString = "{0:#,0}";
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lblQuotationStyleCount.Summary = xrSummary3;
            this.lblQuotationStyleCount.WordWrap = false;
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
            this.xrLabel10.Text = "Grand Total :";
            this.xrLabel10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrLabel10.WordWrap = false;
            // 
            // xrLabel13
            // 
            this.xrLabel13.CanGrow = false;
            this.xrLabel13.Location = new System.Drawing.Point(150, 75);
            this.xrLabel13.Multiline = true;
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(92, 24);
            xrSummary4.FormatString = "{0:#,0}";
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrLabel13.Summary = xrSummary4;
            this.xrLabel13.Text = "xrLabel13";
            this.xrLabel13.WordWrap = false;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ProductCategory", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 0;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblSubStyleCount,
            this.xrLabel12,
            this.lblSubQuotationStyleCount,
            this.xrLabel7});
            this.GroupFooter1.Height = 24;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // xrLabel7
            // 
            this.xrLabel7.CanGrow = false;
            this.xrLabel7.Location = new System.Drawing.Point(8, 0);
            this.xrLabel7.Name = "xrLabel7";
            this.xrLabel7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel7.Size = new System.Drawing.Size(139, 24);
            this.xrLabel7.StyleName = "csDetail";
            this.xrLabel7.StylePriority.UseTextAlignment = false;
            this.xrLabel7.Text = "Sub-Total :";
            this.xrLabel7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrLabel7.WordWrap = false;
            // 
            // lblSubQuotationStyleCount
            // 
            this.lblSubQuotationStyleCount.AnchorVertical = DevExpress.XtraReports.UI.VerticalAnchorStyles.Top;
            this.lblSubQuotationStyleCount.CanGrow = false;
            this.lblSubQuotationStyleCount.Location = new System.Drawing.Point(237, 0);
            this.lblSubQuotationStyleCount.Multiline = true;
            this.lblSubQuotationStyleCount.Name = "lblSubQuotationStyleCount";
            this.lblSubQuotationStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lblSubQuotationStyleCount.Size = new System.Drawing.Size(107, 24);
            this.lblSubQuotationStyleCount.StyleName = "csDetail";
            xrSummary6.FormatString = "{0:#,0}";
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblSubQuotationStyleCount.Summary = xrSummary6;
            this.lblSubQuotationStyleCount.WordWrap = false;
            // 
            // xrLabel12
            // 
            this.xrLabel12.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel12.CanGrow = false;
            this.xrLabel12.Location = new System.Drawing.Point(344, 0);
            this.xrLabel12.Multiline = true;
            this.xrLabel12.Name = "xrLabel12";
            this.xrLabel12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel12.Size = new System.Drawing.Size(115, 24);
            this.xrLabel12.StyleName = "csDetail";
            this.xrLabel12.StylePriority.UseBorders = false;
            this.xrLabel12.WordWrap = false;
            // 
            // lblSubStyleCount
            // 
            this.lblSubStyleCount.AnchorVertical = DevExpress.XtraReports.UI.VerticalAnchorStyles.Top;
            this.lblSubStyleCount.CanGrow = false;
            this.lblSubStyleCount.Location = new System.Drawing.Point(147, 0);
            this.lblSubStyleCount.Multiline = true;
            this.lblSubStyleCount.Name = "lblSubStyleCount";
            this.lblSubStyleCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lblSubStyleCount.Size = new System.Drawing.Size(90, 24);
            this.lblSubStyleCount.StyleName = "csDetail";
            xrSummary5.FormatString = "{0:#,0}";
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblSubStyleCount.Summary = xrSummary5;
            this.lblSubStyleCount.WordWrap = false;
            // 
            // QuotationProcessingStatusSummaryReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter,
            this.ReportFooter,
            this.GroupHeader1,
            this.GroupFooter1});
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
        private DevExpress.XtraReports.UI.XRLabel lbCustomer;
        private DevExpress.XtraReports.UI.XRLabel xrLabel8;
        private DevExpress.XtraReports.UI.XRLabel xrLabel6;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel lbLDStyleCount;
        private DevExpress.XtraReports.UI.XRLabel lblQuotationStyleCount;
        private DevExpress.XtraReports.UI.XRLabel xrLabel10;
        private DevExpress.XtraReports.UI.XRLabel xrLabel11;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRLabel xrLabel14;
        private DevExpress.XtraReports.UI.XRLabel lblStyleCount;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader1;
        private DevExpress.XtraReports.UI.GroupFooterBand GroupFooter1;
        private DevExpress.XtraReports.UI.XRLabel lblSubStyleCount;
        private DevExpress.XtraReports.UI.XRLabel xrLabel12;
        private DevExpress.XtraReports.UI.XRLabel lblSubQuotationStyleCount;
        private DevExpress.XtraReports.UI.XRLabel xrLabel7;
    }
}
