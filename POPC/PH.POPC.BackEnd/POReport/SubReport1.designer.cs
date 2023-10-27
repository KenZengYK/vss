namespace PH.POPC.BackEnd
{
    partial class SubReport1
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
            this.ReportHeader.Font = new System.Drawing.Font("Times New Roman", 9F);
            this.ReportHeader.Height = 0;
            this.ReportHeader.KeepTogether = true;
            this.ReportHeader.Name = "ReportHeader";
            // 
            // SubReport1
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportHeader});
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 0, 0);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.xrLabelStyle,
            this.xrLabelHeaderStyle,
            this.xrLabelTextStyle,
            this.xrTableLeftCellStyle});
            this.Version = "8.1";
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
    }
}
