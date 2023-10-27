namespace PH.SPC1.UI
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
            this.xrPivotGrid1 = new DevExpress.XtraReports.UI.XRPivotGrid();
            this.xrPivotGridField1 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField2 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField3 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField4 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField5 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel26 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrControlStyle_Header = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrControlStyle_Footer = new DevExpress.XtraReports.UI.XRControlStyle();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPivotGrid1});
            this.Detail.Height = 70;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrPivotGrid1
            // 
            this.xrPivotGrid1.Appearance.Cell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPivotGrid1.Appearance.CustomTotalCell.BackColor = System.Drawing.Color.White;
            this.xrPivotGrid1.Appearance.FieldHeader.BackColor = System.Drawing.Color.White;
            this.xrPivotGrid1.Appearance.FieldHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrPivotGrid1.Appearance.FieldValue.BackColor = System.Drawing.Color.White;
            this.xrPivotGrid1.Appearance.FieldValue.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrPivotGrid1.Appearance.FieldValueGrandTotal.BackColor = System.Drawing.Color.White;
            this.xrPivotGrid1.Appearance.FieldValueGrandTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPivotGrid1.Appearance.FieldValueTotal.BackColor = System.Drawing.Color.White;
            this.xrPivotGrid1.Appearance.FieldValueTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPivotGrid1.Appearance.GrandTotalCell.BackColor = System.Drawing.Color.White;
            this.xrPivotGrid1.Appearance.GrandTotalCell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPivotGrid1.Appearance.TotalCell.BackColor = System.Drawing.Color.White;
            this.xrPivotGrid1.Appearance.TotalCell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPivotGrid1.CellStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.CustomTotalCellStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.FieldHeaderStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.xrPivotGridField1,
            this.xrPivotGridField2,
            this.xrPivotGridField3,
            this.xrPivotGridField4,
            this.xrPivotGridField5});
            this.xrPivotGrid1.FieldValueGrandTotalStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.FieldValueStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.FieldValueTotalStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.FilterSeparatorStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.GrandTotalCellStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.HeaderGroupLineStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.LinesStyleName = "xrControlStyle_Header";
            this.xrPivotGrid1.Location = new System.Drawing.Point(0, 0);
            this.xrPivotGrid1.Name = "xrPivotGrid1";
            this.xrPivotGrid1.OptionsPrint.PrintColumnHeaders = DevExpress.Utils.DefaultBoolean.True;
            this.xrPivotGrid1.OptionsView.ShowDataHeaders = false;
            this.xrPivotGrid1.OptionsView.ShowFilterHeaders = false;
            this.xrPivotGrid1.OptionsView.ShowGrandTotalsForSingleValues = true;
            this.xrPivotGrid1.Size = new System.Drawing.Size(723, 70);
            this.xrPivotGrid1.TotalCellStyleName = "xrControlStyle_Header";
            // 
            // xrPivotGridField1
            // 
            this.xrPivotGridField1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField1.AreaIndex = 0;
            this.xrPivotGridField1.Caption = "顔色";
            this.xrPivotGridField1.FieldName = "ColorID";
            this.xrPivotGridField1.Name = "xrPivotGridField1";
            this.xrPivotGridField1.Options.ShowCustomTotals = false;
            this.xrPivotGridField1.Options.ShowGrandTotal = false;
            this.xrPivotGridField1.Options.ShowTotals = false;
            this.xrPivotGridField1.Width = 66;
            // 
            // xrPivotGridField2
            // 
            this.xrPivotGridField2.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField2.AreaIndex = 1;
            this.xrPivotGridField2.Caption = "杯";
            this.xrPivotGridField2.FieldName = "Cup";
            this.xrPivotGridField2.Name = "xrPivotGridField2";
            this.xrPivotGridField2.Options.ShowCustomTotals = false;
            this.xrPivotGridField2.SortOrder = DevExpress.XtraPivotGrid.PivotSortOrder.Descending;
            this.xrPivotGridField2.Width = 45;
            // 
            // xrPivotGridField3
            // 
            this.xrPivotGridField3.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.xrPivotGridField3.AreaIndex = 1;
            this.xrPivotGridField3.Caption = "2.客方碼";
            this.xrPivotGridField3.FieldName = "SizeID";
            this.xrPivotGridField3.Name = "xrPivotGridField3";
            this.xrPivotGridField3.Options.ShowCustomTotals = false;
            this.xrPivotGridField3.Options.ShowTotals = false;
            this.xrPivotGridField3.Width = 72;
            // 
            // xrPivotGridField4
            // 
            this.xrPivotGridField4.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.xrPivotGridField4.AreaIndex = 0;
            this.xrPivotGridField4.Caption = "1.國際碼";
            this.xrPivotGridField4.FieldName = "SizeWorld";
            this.xrPivotGridField4.Name = "xrPivotGridField4";
            this.xrPivotGridField4.Options.ShowCustomTotals = false;
            this.xrPivotGridField4.Options.ShowInCustomizationForm = false;
            this.xrPivotGridField4.Options.ShowTotals = false;
            this.xrPivotGridField4.Width = 120;
            // 
            // xrPivotGridField5
            // 
            this.xrPivotGridField5.Area = DevExpress.XtraPivotGrid.PivotArea.DataArea;
            this.xrPivotGridField5.AreaIndex = 0;
            this.xrPivotGridField5.Caption = "分配數量";
            this.xrPivotGridField5.FieldName = "Qty";
            this.xrPivotGridField5.Name = "xrPivotGridField5";
            this.xrPivotGridField5.Options.ShowTotals = false;
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
            this.xrLabel26.Size = new System.Drawing.Size(106, 25);
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
        private DevExpress.XtraReports.UI.XRPivotGrid xrPivotGrid1;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField1;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField2;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField3;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField4;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField5;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRControlStyle xrControlStyle_Footer;
        private DevExpress.XtraReports.UI.XRLabel xrLabel26;
    }
}
