namespace PH.SPC.BackEnd
{
    partial class rptColorSize
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
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel26 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrControlStyle_Header = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrControlStyle_Footer = new DevExpress.XtraReports.UI.XRControlStyle();
            this.prPivotGrid1 = new PH.Platform.Report.PivotGrid.PRPivotGrid();
            this.pivotGridColumn1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn2 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn3 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn4 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn5 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.prPivotGrid1});
            this.Detail.Height = 43;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel26});
            this.PageHeader.Height = 25;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrLabel26
            // 
            this.xrLabel26.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrLabel26.Location = new System.Drawing.Point(0, 0);
            this.xrLabel26.Name = "xrLabel26";
            this.xrLabel26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel26.Size = new System.Drawing.Size(106, 23);
            this.xrLabel26.StyleName = "xrControlStyle_Header";
            this.xrLabel26.StylePriority.UseBorders = false;
            this.xrLabel26.Text = "顏色 / 尺碼分配：";
            // 
            // xrControlStyle_Header
            // 
            this.xrControlStyle_Header.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrControlStyle_Header.Name = "xrControlStyle_Header";
            this.xrControlStyle_Header.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrControlStyle_Header.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Height = 0;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // xrControlStyle_Footer
            // 
            this.xrControlStyle_Footer.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrControlStyle_Footer.Name = "xrControlStyle_Footer";
            this.xrControlStyle_Footer.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrControlStyle_Footer.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // prPivotGrid1
            // 
            this.prPivotGrid1.ColumnAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn5});
            this.prPivotGrid1.ColumnCounts = 7;
            this.prPivotGrid1.ColumnMaxWidth = 50;
            this.prPivotGrid1.ColumnMinWidth = 20;
            this.prPivotGrid1.DataAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn4});
            this.prPivotGrid1.DataRowHeight = 17;
            this.prPivotGrid1.GrandTotalText = "Grand Total";
            this.prPivotGrid1.HeaderDetailSpacing = 0;
            this.prPivotGrid1.LeftAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn1,
            this.pivotGridColumn2});
            this.prPivotGrid1.Location = new System.Drawing.Point(0, 0);
            this.prPivotGrid1.Name = "prPivotGrid1";
            this.prPivotGrid1.RightAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn3});
            this.prPivotGrid1.RowCounts = 1;
            this.prPivotGrid1.Size = new System.Drawing.Size(784, 42);
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
            this.pivotGridColumn1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn1.DetailTag = null;
            this.pivotGridColumn1.DetailText = null;
            this.pivotGridColumn1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn1.EmptyValueText = null;
            this.pivotGridColumn1.FieldName = "ColorID";
            this.pivotGridColumn1.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn1.HeaderBorderWidth = 1;
            this.pivotGridColumn1.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderKeepTogether = true;
            this.pivotGridColumn1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn1.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn1.HeaderTag = null;
            this.pivotGridColumn1.HeaderText = "PH ClrCode \r\n色碼";
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
            this.pivotGridColumn2.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn2.DetailTag = null;
            this.pivotGridColumn2.DetailText = null;
            this.pivotGridColumn2.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn2.EmptyValueText = null;
            this.pivotGridColumn2.FieldName = "Cup";
            this.pivotGridColumn2.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn2.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn2.HeaderBorderWidth = 1;
            this.pivotGridColumn2.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn2.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderKeepTogether = true;
            this.pivotGridColumn2.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn2.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn2.HeaderTag = null;
            this.pivotGridColumn2.HeaderText = "Cup \r\n杯";
            this.pivotGridColumn2.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn2.Name = "pivotGridColumn2";
            // 
            // pivotGridColumn3
            // 
            this.pivotGridColumn3.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn3.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn3.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn3.DetailBorderWidth = 1;
            this.pivotGridColumn3.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn3.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.DetailKeepTogether = true;
            this.pivotGridColumn3.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn3.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn3.DetailTag = null;
            this.pivotGridColumn3.DetailText = null;
            this.pivotGridColumn3.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn3.EmptyValueText = null;
            this.pivotGridColumn3.FieldName = " SizeID";
            this.pivotGridColumn3.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.SubTotal;
            this.pivotGridColumn3.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn3.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn3.HeaderBorderWidth = 1;
            this.pivotGridColumn3.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn3.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderKeepTogether = true;
            this.pivotGridColumn3.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn3.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn3.HeaderTag = null;
            this.pivotGridColumn3.HeaderText = "Sub Ttl\r\n小計";
            this.pivotGridColumn3.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn3.Name = "pivotGridColumn3";
            // 
            // pivotGridColumn4
            // 
            this.pivotGridColumn4.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn4.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn4.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn4.DetailBorderWidth = 1;
            this.pivotGridColumn4.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn4.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailKeepTogether = true;
            this.pivotGridColumn4.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn4.DetailTag = null;
            this.pivotGridColumn4.DetailText = null;
            this.pivotGridColumn4.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn4.EmptyValueText = null;
            this.pivotGridColumn4.FieldName = "Qty";
            this.pivotGridColumn4.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn4.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn4.HeaderBorderWidth = 1;
            this.pivotGridColumn4.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn4.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderKeepTogether = true;
            this.pivotGridColumn4.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn4.HeaderTag = null;
            this.pivotGridColumn4.HeaderText = null;
            this.pivotGridColumn4.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.Name = "pivotGridColumn4";
            // 
            // pivotGridColumn5
            // 
            this.pivotGridColumn5.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn5.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn5.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.DetailBorders = DevExpress.XtraPrinting.BorderSide.Left;
            this.pivotGridColumn5.DetailBorderWidth = 1;
            this.pivotGridColumn5.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn5.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.DetailKeepTogether = true;
            this.pivotGridColumn5.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn5.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.DetailTag = null;
            this.pivotGridColumn5.DetailText = null;
            this.pivotGridColumn5.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn5.EmptyValueText = null;
            this.pivotGridColumn5.FieldName = "SizeID";
            this.pivotGridColumn5.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn5.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn5.HeaderBorderWidth = 1;
            this.pivotGridColumn5.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn5.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderKeepTogether = true;
            this.pivotGridColumn5.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn5.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.HeaderTag = null;
            this.pivotGridColumn5.HeaderText = "Size / 日曬（Bras as USA inches / 胸圍依美式英時）";
            this.pivotGridColumn5.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn5.Name = "pivotGridColumn5";
            // 
            // rptColorSize
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.ReportFooter});
            this.Margins = new System.Drawing.Printing.Margins(20, 20, 20, 20);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.xrControlStyle_Header,
            this.xrControlStyle_Footer});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.XRControlStyle xrControlStyle_Header;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRControlStyle xrControlStyle_Footer;
        private DevExpress.XtraReports.UI.XRLabel xrLabel26;
        private PH.Platform.Report.PivotGrid.PRPivotGrid prPivotGrid1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn2;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn3;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn4;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn5;
    }
}
