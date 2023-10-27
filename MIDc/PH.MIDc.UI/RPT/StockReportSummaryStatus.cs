using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class StockReportSummaryStatus : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRPivotGrid xrPivotGrid1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.ComponentModel.IContainer components;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldHSCODE;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldStockStatus;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldWEIGHT;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldMaterialName;
        private DevExpress.XtraReports.UI.XRControlStyle csString;
        private DevExpress.XtraReports.UI.XRControlStyle csQty;
        private DevExpress.XtraReports.UI.XRControlStyle csCenter;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo2;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldHSIndex;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public StockReportSummaryStatus()
        {
            InitializeComponent();
        }
        public StockReportSummaryStatus(object ds)
        {
            InitializeComponent();
            InitValue(ds);
        }

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(StockReportSummaryStatus));
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPageInfo2 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPivotGrid1 = new DevExpress.XtraReports.UI.XRPivotGrid();
            this.fieldHSIndex = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldHSCODE = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldStockStatus = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldWEIGHT = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldMaterialName = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.csString = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csQty = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csCenter = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageInfo2,
            this.xrPageInfo1,
            this.xrLabel1});
            this.PageHeader.Height = 25;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrPageInfo2
            // 
            this.xrPageInfo2.Format = "Print Date: {0:yyyy/MM/dd}";
            this.xrPageInfo2.Location = new System.Drawing.Point(833, 0);
            this.xrPageInfo2.Name = "xrPageInfo2";
            this.xrPageInfo2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo2.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime;
            this.xrPageInfo2.Size = new System.Drawing.Size(133, 25);
            this.xrPageInfo2.StyleName = "csString";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Format = "Page: {0} of {1}";
            this.xrPageInfo1.Location = new System.Drawing.Point(1000, 0);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(100, 23);
            this.xrPageInfo1.StyleName = "csString";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Times New Roman", 16F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(358, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(358, 25);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.Text = "Stock Report by Status";
            // 
            // xrPivotGrid1
            // 
            this.xrPivotGrid1.CellStyleName = "csQty";
            this.xrPivotGrid1.CustomTotalCellStyleName = "csQty";
            this.xrPivotGrid1.DataSource = this.bindingSource1;
            this.xrPivotGrid1.FieldHeaderStyleName = "csString";
            this.xrPivotGrid1.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.fieldHSIndex,
            this.fieldHSCODE,
            this.fieldStockStatus,
            this.fieldWEIGHT,
            this.fieldMaterialName});
            this.xrPivotGrid1.FieldValueGrandTotalStyleName = "csQty";
            this.xrPivotGrid1.FieldValueStyleName = "csString";
            this.xrPivotGrid1.FieldValueTotalStyleName = "csQty";
            this.xrPivotGrid1.GrandTotalCellStyleName = "csQty";
            this.xrPivotGrid1.Location = new System.Drawing.Point(0, 0);
            this.xrPivotGrid1.Name = "xrPivotGrid1";
            this.xrPivotGrid1.OptionsPrint.PrintDataHeaders = DevExpress.Utils.DefaultBoolean.False;
            this.xrPivotGrid1.OptionsView.ShowColumnGrandTotals = false;
            this.xrPivotGrid1.Size = new System.Drawing.Size(383, 75);
            this.xrPivotGrid1.TotalCellStyleName = "csQty";
            // 
            // fieldHSIndex
            // 
            this.fieldHSIndex.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldHSIndex.AreaIndex = 0;
            this.fieldHSIndex.Caption = "Index";
            this.fieldHSIndex.FieldName = "IndexValue";
            this.fieldHSIndex.Name = "fieldHSIndex";
            this.fieldHSIndex.Width = 30;
            // 
            // fieldHSCODE
            // 
            this.fieldHSCODE.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldHSCODE.AreaIndex = 1;
            this.fieldHSCODE.Caption = "HSIndex";
            this.fieldHSCODE.FieldName = "HSCODE";
            this.fieldHSCODE.Name = "fieldHSCODE";
            this.fieldHSCODE.Width = 75;
            // 
            // fieldStockStatus
            // 
            this.fieldStockStatus.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.fieldStockStatus.AreaIndex = 0;
            this.fieldStockStatus.Caption = "Qty(kgs) by Status";
            this.fieldStockStatus.FieldName = "StockStatus";
            this.fieldStockStatus.Name = "fieldStockStatus";
            this.fieldStockStatus.Width = 61;
            // 
            // fieldWEIGHT
            // 
            this.fieldWEIGHT.Area = DevExpress.XtraPivotGrid.PivotArea.DataArea;
            this.fieldWEIGHT.AreaIndex = 0;
            this.fieldWEIGHT.Caption = "Qty(kgs)";
            this.fieldWEIGHT.CellFormat.FormatString = "{0:N2}";
            this.fieldWEIGHT.CellFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.fieldWEIGHT.FieldName = "WEIGHT";
            this.fieldWEIGHT.Name = "fieldWEIGHT";
            this.fieldWEIGHT.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.CustomTotals;
            this.fieldWEIGHT.Width = 65;
            // 
            // fieldMaterialName
            // 
            this.fieldMaterialName.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldMaterialName.AreaIndex = 2;
            this.fieldMaterialName.Caption = "Material";
            this.fieldMaterialName.FieldName = "MaterialName";
            this.fieldMaterialName.Name = "fieldMaterialName";
            this.fieldMaterialName.Width = 130;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPivotGrid1});
            this.Detail.Height = 75;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel2});
            this.ReportFooter.Height = 158;
            this.ReportFooter.KeepTogether = true;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // xrLabel2
            // 
            this.xrLabel2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel2.Location = new System.Drawing.Point(0, 8);
            this.xrLabel2.Multiline = true;
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 0, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(708, 150);
            this.xrLabel2.StyleName = "csString";
            this.xrLabel2.StylePriority.UseBorders = false;
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.StylePriority.UsePadding = false;
            this.xrLabel2.StylePriority.UseTextAlignment = false;
            this.xrLabel2.Text = resources.GetString("xrLabel2.Text");
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // csString
            // 
            this.csString.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csString.Name = "csString";
            this.csString.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csString.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // csQty
            // 
            this.csQty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.csQty.Name = "csQty";
            this.csQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // csCenter
            // 
            this.csCenter.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.csCenter.Name = "csCenter";
            this.csCenter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csCenter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.MIDc.BO.StockSumStatus);
            // 
            // StockReportSummaryStatus
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.ReportFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csString,
            this.csQty,
            this.csCenter});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        private void InitValue(object ds)
        {
            this.xrPivotGrid1.DataSource = ds;
            this.DataSource = null;


            //this.lblHSCode.DataBindings.Add("Text", this.DataSource, "HSCODE"); 
            //this.lblMatName.DataBindings.Add("Text", this.DataSource, "materialname");
            //this.lblQty.DataBindings.Add("Text", this.DataSource, "WEIGHT", "{0:0.00}");
            //this.xrLabel7.DataBindings.Add("Text", this.DataSource, "WEIGHT", "{0:0.00}");

            //this.lbAsAtDate.Visible = this._dt != 0;
            //this.lbAsAtDate.Text = string.Format("As At Date: {0:####/##/##}", this._dt);
        }
    }
}
