namespace PH.POPC.BackEnd.PO.VATValue
{
    partial class SubVATReport
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
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            this.styleHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.styleData = new DevExpress.XtraReports.UI.XRControlStyle();
            this.detailBand1 = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tbMatch = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportHeader = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbBuyerItem = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbPOLine = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbVAT = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbAmountVAT = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // styleHeader
            // 
            this.styleHeader.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.styleHeader.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.styleHeader.Name = "styleHeader";
            this.styleHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // styleData
            // 
            this.styleData.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.styleData.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.styleData.Name = "styleData";
            this.styleData.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // detailBand1
            // 
            this.detailBand1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.detailBand1.Height = 20;
            this.detailBand1.KeepTogether = true;
            this.detailBand1.Name = "detailBand1";
            this.detailBand1.SortFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ItemCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("OrderLine", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.BorderWidth = 1;
            this.xrTable2.Location = new System.Drawing.Point(0, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTable2.Size = new System.Drawing.Size(542, 20);
            this.xrTable2.StyleName = "styleHeader";
            this.xrTable2.StylePriority.UseBorders = false;
            this.xrTable2.WordWrap = false;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell5,
            this.xrTableCell9,
            this.tbMatch,
            this.xrTableCell3,
            this.xrTableCell10});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(542, 20);
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.BackColor = System.Drawing.Color.Yellow;
            this.xrTableCell5.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ItemCode", "")});
            this.xrTableCell5.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(100, 20);
            this.xrTableCell5.StylePriority.UseBackColor = false;
            this.xrTableCell5.Text = "xrTableCell17";
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "OrderLine", "")});
            this.xrTableCell9.Location = new System.Drawing.Point(100, 0);
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(83, 20);
            this.xrTableCell9.Text = "xrTableCell18";
            // 
            // tbMatch
            // 
            this.tbMatch.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "{0:N2}")});
            this.tbMatch.Location = new System.Drawing.Point(183, 0);
            this.tbMatch.Name = "tbMatch";
            this.tbMatch.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tbMatch.Size = new System.Drawing.Size(142, 20);
            this.tbMatch.Text = "tbMatch";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "VAT", "{0:N0}")});
            this.xrTableCell3.Location = new System.Drawing.Point(325, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(67, 20);
            this.xrTableCell3.Text = "xrTableCell3";
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmountGrand", "{0:N2}")});
            this.xrTableCell10.Location = new System.Drawing.Point(392, 0);
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(150, 20);
            this.xrTableCell10.StylePriority.UseTextAlignment = false;
            this.xrTableCell10.Text = "xrTableCell10";
            // 
            // bindingSource1
            // 
            this.bindingSource1.AllowNew = true;
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.PODetail);
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.ReportFooter.Height = 20;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // xrTable3
            // 
            this.xrTable3.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable3.BorderWidth = 1;
            this.xrTable3.Location = new System.Drawing.Point(0, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable3.Size = new System.Drawing.Size(542, 20);
            this.xrTable3.StyleName = "styleHeader";
            this.xrTable3.StylePriority.UseBorders = false;
            this.xrTable3.WordWrap = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbTotal,
            this.xrTableCell2,
            this.xrTableCell4,
            this.xrTableCell6,
            this.xrTableCell7});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(542, 20);
            // 
            // lbTotal
            // 
            this.lbTotal.Location = new System.Drawing.Point(0, 0);
            this.lbTotal.Name = "lbTotal";
            this.lbTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTotal.Size = new System.Drawing.Size(100, 20);
            this.lbTotal.StylePriority.UseBackColor = false;
            this.lbTotal.Text = "Total:-";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(100, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(83, 20);
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "{0:N2}")});
            this.xrTableCell4.Location = new System.Drawing.Point(183, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(142, 20);
            xrSummary1.FormatString = "{0:N2}";
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell4.Summary = xrSummary1;
            this.xrTableCell4.Text = "tbMatch";
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Location = new System.Drawing.Point(325, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(67, 20);
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmountGrand", "{0:N2}")});
            this.xrTableCell7.Location = new System.Drawing.Point(392, 0);
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(150, 20);
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            xrSummary2.FormatString = "{0:N2}";
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell7.Summary = xrSummary2;
            this.xrTableCell7.Text = "xrTableCell10";
            // 
            // ReportHeader
            // 
            this.ReportHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.ReportHeader.Height = 25;
            this.ReportHeader.Name = "ReportHeader";
            // 
            // xrTable1
            // 
            this.xrTable1.BorderWidth = 1;
            this.xrTable1.Location = new System.Drawing.Point(0, 5);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable1.Size = new System.Drawing.Size(542, 20);
            this.xrTable1.StyleName = "styleHeader";
            this.xrTable1.WordWrap = false;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbBuyerItem,
            this.lbPOLine,
            this.lbAmount,
            this.lbVAT,
            this.lbAmountVAT});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(542, 20);
            // 
            // lbBuyerItem
            // 
            this.lbBuyerItem.CanGrow = false;
            this.lbBuyerItem.Location = new System.Drawing.Point(0, 0);
            this.lbBuyerItem.Multiline = true;
            this.lbBuyerItem.Name = "lbBuyerItem";
            this.lbBuyerItem.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbBuyerItem.Size = new System.Drawing.Size(100, 20);
            this.lbBuyerItem.StylePriority.UseBorders = false;
            this.lbBuyerItem.Text = "買方品種編碼";
            // 
            // lbPOLine
            // 
            this.lbPOLine.Location = new System.Drawing.Point(100, 0);
            this.lbPOLine.Name = "lbPOLine";
            this.lbPOLine.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbPOLine.Size = new System.Drawing.Size(83, 20);
            this.lbPOLine.StylePriority.UseBorders = false;
            this.lbPOLine.Text = "行號";
            // 
            // lbAmount
            // 
            this.lbAmount.Location = new System.Drawing.Point(183, 0);
            this.lbAmount.Name = "lbAmount";
            this.lbAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbAmount.Size = new System.Drawing.Size(142, 20);
            this.lbAmount.Text = "總金額 ([Currency])";
            // 
            // lbVAT
            // 
            this.lbVAT.Location = new System.Drawing.Point(325, 0);
            this.lbVAT.Name = "lbVAT";
            this.lbVAT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbVAT.Size = new System.Drawing.Size(67, 20);
            this.lbVAT.Text = "VAT (%)";
            // 
            // lbAmountVAT
            // 
            this.lbAmountVAT.CanGrow = false;
            this.lbAmountVAT.Location = new System.Drawing.Point(392, 0);
            this.lbAmountVAT.Multiline = true;
            this.lbAmountVAT.Name = "lbAmountVAT";
            this.lbAmountVAT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbAmountVAT.Size = new System.Drawing.Size(150, 20);
            this.lbAmountVAT.Text = "總金額 (含VAT) ([Currency])";
            // 
            // SubVATReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.detailBand1,
            this.ReportFooter,
            this.ReportHeader});
            this.DataSource = this.bindingSource1;
            this.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.styleData,
            this.styleHeader});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.XRControlStyle styleHeader;
        private System.Windows.Forms.BindingSource bindingSource1;
        private DevExpress.XtraReports.UI.XRControlStyle styleData;
        private DevExpress.XtraReports.UI.DetailBand detailBand1;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.ReportHeaderBand ReportHeader;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell10;
        private DevExpress.XtraReports.UI.XRTableCell tbMatch;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell lbBuyerItem;
        private DevExpress.XtraReports.UI.XRTableCell lbPOLine;
        private DevExpress.XtraReports.UI.XRTableCell lbAmountVAT;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell lbAmount;
        private DevExpress.XtraReports.UI.XRTableCell lbVAT;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell lbTotal;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;




    }
}
