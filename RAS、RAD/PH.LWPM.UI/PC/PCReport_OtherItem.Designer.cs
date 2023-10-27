namespace PH.LWPM.UI.PC
{
    partial class PCReport_OtherItem
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
            this.TableItem = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.TableCellItemNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.TableCellDescription = new DevExpress.XtraReports.UI.XRTableCell();
            this.TableCellUnitPrice = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.TableCellAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.TableCellDeliveryDate = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell30 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcGrandTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.TableItem)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.TableItem});
            this.Detail.Height = 22;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // TableItem
            // 
            this.TableItem.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.TableItem.Font = new System.Drawing.Font("Arial", 8F);
            this.TableItem.Location = new System.Drawing.Point(0, 0);
            this.TableItem.Name = "TableItem";
            this.TableItem.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.TableItem.Size = new System.Drawing.Size(783, 22);
            this.TableItem.StylePriority.UseBorders = false;
            this.TableItem.StylePriority.UseFont = false;
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.TableCellItemNo,
            this.TableCellDescription,
            this.TableCellUnitPrice,
            this.xrTableCell1,
            this.TableCellAmount,
            this.TableCellDeliveryDate});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(783, 22);
            // 
            // TableCellItemNo
            // 
            this.TableCellItemNo.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.TableCellItemNo.Location = new System.Drawing.Point(0, 0);
            this.TableCellItemNo.Name = "TableCellItemNo";
            this.TableCellItemNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.TableCellItemNo.Size = new System.Drawing.Size(45, 22);
            this.TableCellItemNo.StylePriority.UseBorders = false;
            this.TableCellItemNo.StylePriority.UseTextAlignment = false;
            this.TableCellItemNo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // TableCellDescription
            // 
            this.TableCellDescription.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.TableCellDescription.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Description", "")});
            this.TableCellDescription.Location = new System.Drawing.Point(45, 0);
            this.TableCellDescription.Name = "TableCellDescription";
            this.TableCellDescription.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.TableCellDescription.Size = new System.Drawing.Size(497, 22);
            this.TableCellDescription.StylePriority.UseBorders = false;
            this.TableCellDescription.StylePriority.UseTextAlignment = false;
            this.TableCellDescription.Text = "TableCellDescription";
            this.TableCellDescription.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // TableCellUnitPrice
            // 
            this.TableCellUnitPrice.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.TableCellUnitPrice.Location = new System.Drawing.Point(542, 0);
            this.TableCellUnitPrice.Multiline = true;
            this.TableCellUnitPrice.Name = "TableCellUnitPrice";
            this.TableCellUnitPrice.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.TableCellUnitPrice.Size = new System.Drawing.Size(40, 22);
            this.TableCellUnitPrice.StylePriority.UseBorders = false;
            this.TableCellUnitPrice.StylePriority.UseTextAlignment = false;
            this.TableCellUnitPrice.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell1.Location = new System.Drawing.Point(582, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(67, 22);
            this.xrTableCell1.StylePriority.UseBorders = false;
            // 
            // TableCellAmount
            // 
            this.TableCellAmount.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.TableCellAmount.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Amount", "{0:N2}")});
            this.TableCellAmount.Location = new System.Drawing.Point(649, 0);
            this.TableCellAmount.Multiline = true;
            this.TableCellAmount.Name = "TableCellAmount";
            this.TableCellAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.TableCellAmount.Size = new System.Drawing.Size(72, 22);
            this.TableCellAmount.StylePriority.UseBorders = false;
            this.TableCellAmount.StylePriority.UseTextAlignment = false;
            this.TableCellAmount.Text = "TableCellAmount";
            this.TableCellAmount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // TableCellDeliveryDate
            // 
            this.TableCellDeliveryDate.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.TableCellDeliveryDate.Location = new System.Drawing.Point(721, 0);
            this.TableCellDeliveryDate.Name = "TableCellDeliveryDate";
            this.TableCellDeliveryDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.TableCellDeliveryDate.Size = new System.Drawing.Size(62, 22);
            this.TableCellDeliveryDate.StylePriority.UseBorders = false;
            this.TableCellDeliveryDate.StylePriority.UseTextAlignment = false;
            this.TableCellDeliveryDate.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // bindingSource
            // 
            this.bindingSource.DataSource = typeof(PH.LWPM.BO.PCReportMerge);
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4});
            this.ReportFooter.Height = 22;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // xrTable4
            // 
            this.xrTable4.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTable4.Font = new System.Drawing.Font("Arial", 8F);
            this.xrTable4.Location = new System.Drawing.Point(0, 0);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow7});
            this.xrTable4.Size = new System.Drawing.Size(783, 22);
            this.xrTable4.StylePriority.UseBorders = false;
            this.xrTable4.StylePriority.UseFont = false;
            // 
            // xrTableRow7
            // 
            this.xrTableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell27,
            this.xrTableCell28,
            this.xrTableCell29,
            this.xrTableCell30,
            this.tcGrandTotal,
            this.xrTableCell32});
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(783, 22);
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell27.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(45, 22);
            this.xrTableCell27.StylePriority.UseBorders = false;
            this.xrTableCell27.StylePriority.UseTextAlignment = false;
            this.xrTableCell27.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell28.Location = new System.Drawing.Point(45, 0);
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(422, 22);
            this.xrTableCell28.StylePriority.UseBorders = false;
            this.xrTableCell28.StylePriority.UseTextAlignment = false;
            this.xrTableCell28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell29.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Underline);
            this.xrTableCell29.Location = new System.Drawing.Point(467, 0);
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(116, 22);
            this.xrTableCell29.StylePriority.UseBorders = false;
            this.xrTableCell29.StylePriority.UseFont = false;
            this.xrTableCell29.StylePriority.UseTextAlignment = false;
            this.xrTableCell29.Text = "Grand Total";
            this.xrTableCell29.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell30
            // 
            this.xrTableCell30.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell30.Location = new System.Drawing.Point(583, 0);
            this.xrTableCell30.Multiline = true;
            this.xrTableCell30.Name = "xrTableCell30";
            this.xrTableCell30.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell30.Size = new System.Drawing.Size(66, 22);
            this.xrTableCell30.StylePriority.UseBorders = false;
            this.xrTableCell30.StylePriority.UseTextAlignment = false;
            this.xrTableCell30.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tcGrandTotal
            // 
            this.tcGrandTotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tcGrandTotal.Location = new System.Drawing.Point(649, 0);
            this.tcGrandTotal.Multiline = true;
            this.tcGrandTotal.Name = "tcGrandTotal";
            this.tcGrandTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcGrandTotal.Size = new System.Drawing.Size(72, 22);
            this.tcGrandTotal.StylePriority.UseBorders = false;
            this.tcGrandTotal.StylePriority.UseTextAlignment = false;
            this.tcGrandTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.tcGrandTotal.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.tcGrandTotal_BeforePrint);
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell32.Location = new System.Drawing.Point(721, 0);
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(62, 22);
            this.xrTableCell32.StylePriority.UseBorders = false;
            this.xrTableCell32.StylePriority.UseTextAlignment = false;
            this.xrTableCell32.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // PCReport_OtherItem
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportFooter});
            this.DataSource = this.bindingSource;
            this.Margins = new System.Drawing.Printing.Margins(10, 10, 10, 10);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.TableItem)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRTable TableItem;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell TableCellItemNo;
        private DevExpress.XtraReports.UI.XRTableCell TableCellDescription;
        private DevExpress.XtraReports.UI.XRTableCell TableCellUnitPrice;
        private DevExpress.XtraReports.UI.XRTableCell TableCellAmount;
        private DevExpress.XtraReports.UI.XRTableCell TableCellDeliveryDate;
        public System.Windows.Forms.BindingSource bindingSource;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRTable xrTable4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow7;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell27;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell28;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell29;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell30;
        private DevExpress.XtraReports.UI.XRTableCell tcGrandTotal;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell32;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
    }
}
