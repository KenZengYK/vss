namespace PH.POPC.BackEnd
{
    partial class SubReport2
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
            this.xrLabelStyle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrLabelHeaderStyle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrLabelTextStyle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrTableLeftCellStyle = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportHeader = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.xrPageBreak1 = new DevExpress.XtraReports.UI.XRPageBreak();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrSubreport1 = new DevExpress.XtraReports.UI.XRSubreport();
            this.subReport11 = new PH.POPC.BackEnd.SubReport1();
            ((System.ComponentModel.ISupportInitialize)(this.subReport11)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.StylePriority.UseBorders = false;
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // xrLabelStyle
            // 
            this.xrLabelStyle.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabelStyle.Name = "xrLabelStyle";
            this.xrLabelStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabelStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabelHeaderStyle
            // 
            this.xrLabelHeaderStyle.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabelHeaderStyle.Name = "xrLabelHeaderStyle";
            this.xrLabelHeaderStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabelHeaderStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabelTextStyle
            // 
            this.xrLabelTextStyle.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabelTextStyle.Name = "xrLabelTextStyle";
            this.xrLabelTextStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabelTextStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableLeftCellStyle
            // 
            this.xrTableLeftCellStyle.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableLeftCellStyle.Name = "xrTableLeftCellStyle";
            this.xrTableLeftCellStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableLeftCellStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // ReportHeader
            // 
            this.ReportHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1,
            this.xrPageBreak1,
            this.xrSubreport1});
            this.ReportHeader.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.ReportHeader.Height = 48;
            this.ReportHeader.KeepTogether = true;
            this.ReportHeader.Name = "ReportHeader";
            this.ReportHeader.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportHeader_BeforePrint);
            // 
            // xrPageBreak1
            // 
            this.xrPageBreak1.Location = new System.Drawing.Point(0, 0);
            this.xrPageBreak1.Name = "xrPageBreak1";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 12F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(0, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(734, 23);
            this.xrLabel1.Text = "xrLabel1";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrSubreport1
            // 
            this.xrSubreport1.Location = new System.Drawing.Point(0, 25);
            this.xrSubreport1.Name = "xrSubreport1";
            this.xrSubreport1.ReportSource = this.subReport11;
            this.xrSubreport1.Size = new System.Drawing.Size(760, 23);
            // 
            // SubReport2
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportHeader});
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 10, 10);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.xrLabelStyle,
            this.xrLabelHeaderStyle,
            this.xrLabelTextStyle,
            this.xrTableLeftCellStyle});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.subReport11)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        //private PODetailDataSet dataSetPODetail;
        //private PH.PO.UI.PODetailDataSetTableAdapters.PODetailTableAdapter PODetailTableAdapter;
        private DevExpress.XtraReports.UI.XRControlStyle xrLabelStyle;
        private DevExpress.XtraReports.UI.XRControlStyle xrLabelHeaderStyle;
        private DevExpress.XtraReports.UI.XRControlStyle xrLabelTextStyle;
        private DevExpress.XtraReports.UI.XRControlStyle xrTableLeftCellStyle;
        private DevExpress.XtraReports.UI.ReportHeaderBand ReportHeader;
        private DevExpress.XtraReports.UI.XRSubreport xrSubreport1;
        private SubReport1 subReport11;
        private DevExpress.XtraReports.UI.XRPageBreak xrPageBreak1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
    }
}
