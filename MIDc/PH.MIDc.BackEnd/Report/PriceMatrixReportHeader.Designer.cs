namespace PH.MIDc.BackEnd
{
    partial class PriceMatrixReportHeader
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
            this.subReport_CurrPrice = new DevExpress.XtraReports.UI.XRSubreport();
            this.subReport_FuturePrice = new DevExpress.XtraReports.UI.XRSubreport();
            this.subReport_LastPrice = new DevExpress.XtraReports.UI.XRSubreport();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrCheckBox1 = new DevExpress.XtraReports.UI.XRCheckBox();
            this.xrLabel46 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 225;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // subReport_CurrPrice
            // 
            this.subReport_CurrPrice.Location = new System.Drawing.Point(0, 33);
            this.subReport_CurrPrice.Name = "subReport_CurrPrice";
            this.subReport_CurrPrice.Size = new System.Drawing.Size(750, 23);
            // 
            // subReport_FuturePrice
            // 
            this.subReport_FuturePrice.CanShrink = true;
            this.subReport_FuturePrice.Location = new System.Drawing.Point(0, 100);
            this.subReport_FuturePrice.Name = "subReport_FuturePrice";
            this.subReport_FuturePrice.Size = new System.Drawing.Size(750, 23);
            // 
            // subReport_LastPrice
            // 
            this.subReport_LastPrice.CanShrink = true;
            this.subReport_LastPrice.Location = new System.Drawing.Point(0, 67);
            this.subReport_LastPrice.Name = "subReport_LastPrice";
            this.subReport_LastPrice.Size = new System.Drawing.Size(750, 23);
            // 
            // ReportFooter
            // 
            this.ReportFooter.Height = 0;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.Visible = false;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1,
            this.xrCheckBox1,
            this.subReport_CurrPrice,
            this.subReport_FuturePrice,
            this.subReport_LastPrice,
            this.xrLabel46});
            this.GroupHeader1.Height = 134;
            this.GroupHeader1.KeepTogether = true;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // xrLabel1
            // 
            this.xrLabel1.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "VAT", "{0:N0}")});
            this.xrLabel1.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(475, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(58, 25);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "xrLabel1";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrLabel1.Visible = false;
            // 
            // xrCheckBox1
            // 
            this.xrCheckBox1.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("CheckState", null, "HaveVAT", "")});
            this.xrCheckBox1.Font = new System.Drawing.Font("Arial", 8F);
            this.xrCheckBox1.Location = new System.Drawing.Point(400, 0);
            this.xrCheckBox1.Name = "xrCheckBox1";
            this.xrCheckBox1.Size = new System.Drawing.Size(75, 25);
            this.xrCheckBox1.StylePriority.UseFont = false;
            this.xrCheckBox1.Text = " VAT (%):-";
            this.xrCheckBox1.Visible = false;
            // 
            // xrLabel46
            // 
            this.xrLabel46.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrLabel46.CanGrow = false;
            this.xrLabel46.Font = new System.Drawing.Font("Arial", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))));
            this.xrLabel46.Location = new System.Drawing.Point(0, 0);
            this.xrLabel46.Name = "xrLabel46";
            this.xrLabel46.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel46.Size = new System.Drawing.Size(360, 25);
            this.xrLabel46.Text = "Price Details";
            this.xrLabel46.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrLabel46.WordWrap = false;
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.Height = 16;
            this.GroupHeader2.KeepTogether = true;
            this.GroupHeader2.Level = 1;
            this.GroupHeader2.Name = "GroupHeader2";
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.MIDc.BO.Detail);
            // 
            // PriceMatrixReportHeader
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportFooter,
            this.GroupHeader1,
            this.GroupHeader2});
            this.DataSource = this.bindingSource1;
            this.Margins = new System.Drawing.Printing.Margins(0, 2, 0, 0);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRSubreport subReport_FuturePrice;
        private DevExpress.XtraReports.UI.XRSubreport subReport_CurrPrice;
        private DevExpress.XtraReports.UI.XRSubreport subReport_LastPrice;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader1;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader2;
        private DevExpress.XtraReports.UI.XRLabel xrLabel46;
        private DevExpress.XtraReports.UI.XRCheckBox xrCheckBox1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
    }
}
