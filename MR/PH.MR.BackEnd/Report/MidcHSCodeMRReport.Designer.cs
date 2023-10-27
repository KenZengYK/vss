namespace PH.MR.BackEnd
{
    partial class MidcHSCodeMRReport
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
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrPageBreak_Summary2Detail = new DevExpress.XtraReports.UI.XRPageBreak();
            this.xrSubreport_Detail = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrSubreport_Summary = new DevExpress.XtraReports.UI.XRSubreport();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.xrMRSummarywithProjectWorkOrder = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrPageBreak1 = new DevExpress.XtraReports.UI.XRPageBreak();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageBreak1,
            this.xrMRSummarywithProjectWorkOrder,
            this.xrPageBreak_Summary2Detail,
            this.xrSubreport_Detail,
            this.xrSubreport_Summary});
            this.Detail.Height = 159;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrPageBreak_Summary2Detail
            // 
            this.xrPageBreak_Summary2Detail.Location = new System.Drawing.Point(0, 50);
            this.xrPageBreak_Summary2Detail.Name = "xrPageBreak_Summary2Detail";
            // 
            // xrSubreport_Detail
            // 
            this.xrSubreport_Detail.Location = new System.Drawing.Point(0, 58);
            this.xrSubreport_Detail.Name = "xrSubreport_Detail";
            this.xrSubreport_Detail.Size = new System.Drawing.Size(1600, 42);
            // 
            // xrSubreport_Summary
            // 
            this.xrSubreport_Summary.Location = new System.Drawing.Point(0, 0);
            this.xrSubreport_Summary.Name = "xrSubreport_Summary";
            this.xrSubreport_Summary.Size = new System.Drawing.Size(1600, 42);
            // 
            // PageHeader
            // 
            this.PageHeader.Height = 0;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // PageFooter
            // 
            this.PageFooter.Height = 0;
            this.PageFooter.Name = "PageFooter";
            this.PageFooter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageFooter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrMRSummarywithProjectWorkOrder
            // 
            this.xrMRSummarywithProjectWorkOrder.Location = new System.Drawing.Point(0, 117);
            this.xrMRSummarywithProjectWorkOrder.Name = "xrMRSummarywithProjectWorkOrder";
            this.xrMRSummarywithProjectWorkOrder.Size = new System.Drawing.Size(1600, 42);
            // 
            // xrPageBreak1
            // 
            this.xrPageBreak1.Location = new System.Drawing.Point(0, 108);
            this.xrPageBreak1.Name = "xrPageBreak1";
            // 
            // MidcHSCodeMRReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter});
            this.Margins = new System.Drawing.Printing.Margins(30, 20, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 1654;
            this.PaperKind = System.Drawing.Printing.PaperKind.Custom;
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.MidcHSCodeMRReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.PageFooterBand PageFooter;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreport_Detail;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreport_Summary;
        private DevExpress.XtraReports.UI.XRPageBreak xrPageBreak_Summary2Detail;
        private DevExpress.XtraReports.UI.XRPageBreak xrPageBreak1;
        public DevExpress.XtraReports.UI.XRSubreport xrMRSummarywithProjectWorkOrder;
    }
}
