using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class StockReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader1;
        private DevExpress.XtraReports.UI.GroupFooterBand GroupFooter1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader2;
        private DevExpress.XtraReports.UI.GroupFooterBand GroupFooter2;
        private DevExpress.XtraReports.UI.XRLabel lblSubTotalRMB;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRLabel lblTotalOther;
        private DevExpress.XtraReports.UI.XRLabel xrLabel14;
        private DevExpress.XtraReports.UI.XRLabel lblHSCode;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRLabel lbAsAtDate;
        private DevExpress.XtraReports.UI.XRLabel lblHSMaterialName;
        private DevExpress.XtraReports.UI.XRLabel lblSubTotal;
        private DevExpress.XtraReports.UI.XRLabel lblSubTotalOther;
        private DevExpress.XtraReports.UI.XRLabel lblTotal;
        private DevExpress.XtraReports.UI.XRLabel lblTotalRMB;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo2;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell lblType;
        private DevExpress.XtraReports.UI.XRTableCell lblCode;
        private DevExpress.XtraReports.UI.XRTableCell lblQty;
        private DevExpress.XtraReports.UI.XRTableCell lblUnit;
        private DevExpress.XtraReports.UI.XRTableCell lblWeightRMB;
        private DevExpress.XtraReports.UI.XRTableCell lblWeightOther;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell cel1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRControlStyle xrControlStyle1;
        private DevExpress.XtraReports.UI.XRControlStyle xrControlStyle2;
        private DevExpress.XtraReports.UI.XRTableCell lblWeight;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell lblERPITEMCODE;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public StockReport()
        {
            InitializeComponent();
        }
        int _dt;
        public StockReport(object ds, int dt)
        {
            InitializeComponent();
            this.DataSource = ds;
            this._dt = dt;

            this.lblType.DataBindings.Add("Text", this.DataSource, "MATERIALTYPE");
            this.lblCode.DataBindings.Add("Text", this.DataSource, "SUPPREF");
            this.lblQty.DataBindings.Add("Text", this.DataSource, "SQTY");
            this.lblUnit.DataBindings.Add("Text", this.DataSource, "PHUNIT");
            this.lblWeight.DataBindings.Add("Text", this.DataSource, "WEIGHT");
            //this.lblHSCode.DataBindings.Add("Text", this.DataSource, "HSCODE");
            this.lblHSCode.DataBindings.Add("Text", this.DataSource, "CustomNo");
            //ChandlerXiao:add at 2016-10-19
            this.lblERPITEMCODE.DataBindings.Add("Text", this.DataSource, "ITEMCODE");
            this.lblHSMaterialName.DataBindings.Add("Text", this.DataSource, "materialName");
            this.lblWeightRMB.DataBindings.Add("Text", this.DataSource, "WEIGHT_RMB");
            this.lblWeightOther.DataBindings.Add("Text", this.DataSource, "WEIGHT_Other");

            this.lblSubTotalRMB.DataBindings.Add("Text", this.DataSource, "WEIGHT_RMB");
            this.lblTotalRMB.DataBindings.Add("Text", this.DataSource, "WEIGHT_RMB");
            this.lblSubTotalOther.DataBindings.Add("Text", this.DataSource, "WEIGHT_Other");
            this.lblTotalOther.DataBindings.Add("Text", this.DataSource, "WEIGHT_Other");
            if (this._dt == 0)
            {
                this._dt = Convert.ToInt32(DateTime.Now.ToString("yyyyMMdd"));
            }
            //----End--------------

            this.lblSubTotal.DataBindings.Add("Text", this.DataSource, "WEIGHT");
            this.lblTotal.DataBindings.Add("Text", this.DataSource, "WEIGHT");

            this.lbAsAtDate.Visible = this._dt != 0;
            this.lbAsAtDate.Text = string.Format("As At Date: {0:####/##/##}", this._dt);

        }

        private void InitializeComponent()
        {
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary5 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary6 = new DevExpress.XtraReports.UI.XRSummary();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPageInfo2 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.lbAsAtDate = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lblType = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblUnit = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblWeightRMB = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblWeightOther = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblWeight = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.lblSubTotal = new DevExpress.XtraReports.UI.XRLabel();
            this.lblSubTotalOther = new DevExpress.XtraReports.UI.XRLabel();
            this.lblSubTotalRMB = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel13 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cel1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblHSMaterialName = new DevExpress.XtraReports.UI.XRLabel();
            this.lblHSCode = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.lblTotal = new DevExpress.XtraReports.UI.XRLabel();
            this.lblTotalOther = new DevExpress.XtraReports.UI.XRLabel();
            this.lblTotalRMB = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel14 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrControlStyle1 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrControlStyle2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblERPITEMCODE = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageInfo2,
            this.lbAsAtDate,
            this.xrLabel3,
            this.xrPageInfo1,
            this.xrLabel1});
            this.PageHeader.Height = 44;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrPageInfo2
            // 
            this.xrPageInfo2.Format = "{0:HH:mm}";
            this.xrPageInfo2.Location = new System.Drawing.Point(382, 23);
            this.xrPageInfo2.Name = "xrPageInfo2";
            this.xrPageInfo2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo2.PageInfo = DevExpress.XtraPrinting.PageInfo.DateTime;
            this.xrPageInfo2.Size = new System.Drawing.Size(100, 18);
            this.xrPageInfo2.StylePriority.UseTextAlignment = false;
            this.xrPageInfo2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbAsAtDate
            // 
            this.lbAsAtDate.Font = new System.Drawing.Font("Times New Roman", 9.75F);
            this.lbAsAtDate.Location = new System.Drawing.Point(233, 23);
            this.lbAsAtDate.Name = "lbAsAtDate";
            this.lbAsAtDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbAsAtDate.Size = new System.Drawing.Size(148, 19);
            this.lbAsAtDate.StylePriority.UseFont = false;
            this.lbAsAtDate.StylePriority.UseTextAlignment = false;
            this.lbAsAtDate.Text = "As At Date:";
            this.lbAsAtDate.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.lbAsAtDate.Visible = false;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Location = new System.Drawing.Point(558, 21);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(45, 23);
            this.xrLabel3.StylePriority.UseTextAlignment = false;
            this.xrLabel3.Text = "Page:";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Location = new System.Drawing.Point(603, 21);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(100, 23);
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Times New Roman", 16F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(25, 8);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(166, 33);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.Text = "Stock Report";
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.Detail.Height = 23;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            // 
            // xrTable2
            // 
            this.xrTable2.Location = new System.Drawing.Point(8, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTable2.Size = new System.Drawing.Size(758, 23);
            this.xrTable2.StyleName = "xrControlStyle2";
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lblType,
            this.lblCode,
            this.lblERPITEMCODE,
            this.lblQty,
            this.lblUnit,
            this.lblWeightRMB,
            this.lblWeightOther,
            this.lblWeight});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(758, 23);
            this.xrTableRow2.StyleName = "xrControlStyle2";
            // 
            // lblType
            // 
            this.lblType.Location = new System.Drawing.Point(0, 0);
            this.lblType.Name = "lblType";
            this.lblType.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblType.Size = new System.Drawing.Size(65, 23);
            this.lblType.Text = "[MATERIALTYPE]";
            // 
            // lblCode
            // 
            this.lblCode.Location = new System.Drawing.Point(65, 0);
            this.lblCode.Name = "lblCode";
            this.lblCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblCode.Size = new System.Drawing.Size(108, 23);
            this.lblCode.Text = "[SUPPREF]";
            // 
            // lblQty
            // 
            this.lblQty.Location = new System.Drawing.Point(288, 0);
            this.lblQty.Name = "lblQty";
            this.lblQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblQty.Size = new System.Drawing.Size(68, 23);
            this.lblQty.StylePriority.UseTextAlignment = false;
            this.lblQty.Text = "[SQTY!#,0.00]";
            this.lblQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblUnit
            // 
            this.lblUnit.Location = new System.Drawing.Point(356, 0);
            this.lblUnit.Name = "lblUnit";
            this.lblUnit.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblUnit.Size = new System.Drawing.Size(42, 23);
            this.lblUnit.StylePriority.UseTextAlignment = false;
            this.lblUnit.Text = "[PHUnit]";
            this.lblUnit.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lblWeightRMB
            // 
            this.lblWeightRMB.Location = new System.Drawing.Point(398, 0);
            this.lblWeightRMB.Name = "lblWeightRMB";
            this.lblWeightRMB.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblWeightRMB.Size = new System.Drawing.Size(129, 23);
            this.lblWeightRMB.StylePriority.UseTextAlignment = false;
            this.lblWeightRMB.Text = "[Weight_RMB!#,0.0000]";
            this.lblWeightRMB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblWeightOther
            // 
            this.lblWeightOther.Location = new System.Drawing.Point(527, 0);
            this.lblWeightOther.Name = "lblWeightOther";
            this.lblWeightOther.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblWeightOther.Size = new System.Drawing.Size(128, 23);
            this.lblWeightOther.StylePriority.UseTextAlignment = false;
            this.lblWeightOther.Text = "[Weight_Other!#,0.0000]";
            this.lblWeightOther.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblWeight
            // 
            this.lblWeight.Location = new System.Drawing.Point(655, 0);
            this.lblWeight.Name = "lblWeight";
            this.lblWeight.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblWeight.Size = new System.Drawing.Size(103, 23);
            this.lblWeight.StylePriority.UseTextAlignment = false;
            this.lblWeight.Text = "[Weight!#,0.0000]";
            this.lblWeight.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("MATERIALTYPE", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 0;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblSubTotal,
            this.lblSubTotalOther,
            this.lblSubTotalRMB,
            this.xrLabel13});
            this.GroupFooter1.Height = 22;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // lblSubTotal
            // 
            this.lblSubTotal.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblSubTotal.Location = new System.Drawing.Point(665, 0);
            this.lblSubTotal.Name = "lblSubTotal";
            this.lblSubTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblSubTotal.Size = new System.Drawing.Size(102, 21);
            this.lblSubTotal.StylePriority.UseFont = false;
            this.lblSubTotal.StylePriority.UseTextAlignment = false;
            xrSummary1.FormatString = "{0:#,0.0000}";
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblSubTotal.Summary = xrSummary1;
            this.lblSubTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblSubTotalOther
            // 
            this.lblSubTotalOther.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblSubTotalOther.Location = new System.Drawing.Point(535, 0);
            this.lblSubTotalOther.Name = "lblSubTotalOther";
            this.lblSubTotalOther.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblSubTotalOther.Size = new System.Drawing.Size(128, 21);
            this.lblSubTotalOther.StylePriority.UseFont = false;
            this.lblSubTotalOther.StylePriority.UseTextAlignment = false;
            xrSummary2.FormatString = "{0:#,0.0000}";
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblSubTotalOther.Summary = xrSummary2;
            this.lblSubTotalOther.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblSubTotalRMB
            // 
            this.lblSubTotalRMB.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblSubTotalRMB.Location = new System.Drawing.Point(408, 0);
            this.lblSubTotalRMB.Name = "lblSubTotalRMB";
            this.lblSubTotalRMB.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblSubTotalRMB.Size = new System.Drawing.Size(124, 21);
            this.lblSubTotalRMB.StylePriority.UseFont = false;
            this.lblSubTotalRMB.StylePriority.UseTextAlignment = false;
            xrSummary3.FormatString = "{0:#,0.0000}";
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblSubTotalRMB.Summary = xrSummary3;
            this.lblSubTotalRMB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel13.Location = new System.Drawing.Point(333, 0);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(71, 21);
            this.xrLabel13.StylePriority.UseFont = false;
            this.xrLabel13.StylePriority.UseTextAlignment = false;
            this.xrLabel13.Text = "Sub-total:";
            this.xrLabel13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel2.Location = new System.Drawing.Point(8, 10);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(69, 21);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.Text = "H.S Code:";
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1,
            this.lblHSMaterialName,
            this.lblHSCode,
            this.xrLabel2});
            this.GroupHeader2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("HSCODE", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.Height = 67;
            this.GroupHeader2.Level = 1;
            this.GroupHeader2.Name = "GroupHeader2";
            this.GroupHeader2.RepeatEveryPage = true;
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(8, 33);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(758, 34);
            this.xrTable1.StyleName = "xrControlStyle1";
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cel1,
            this.xrTableCell4,
            this.xrTableCell6,
            this.xrTableCell5,
            this.xrTableCell2,
            this.xrTableCell3,
            this.xrTableCell7,
            this.xrTableCell1});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(758, 34);
            this.xrTableRow1.StyleName = "xrControlStyle1";
            // 
            // cel1
            // 
            this.cel1.Location = new System.Drawing.Point(0, 0);
            this.cel1.Name = "cel1";
            this.cel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cel1.Size = new System.Drawing.Size(65, 34);
            this.cel1.Text = "Mal.Type";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Location = new System.Drawing.Point(65, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(108, 34);
            this.xrTableCell4.Text = "PH Material Code";
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Location = new System.Drawing.Point(288, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(68, 34);
            this.xrTableCell5.Text = "Qty";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(356, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(42, 34);
            this.xrTableCell2.Text = "  Unit";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Location = new System.Drawing.Point(398, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(129, 34);
            this.xrTableCell3.Text = "Weight RMB \r\n (KGS)";
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Location = new System.Drawing.Point(527, 0);
            this.xrTableCell7.Multiline = true;
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(128, 34);
            this.xrTableCell7.Text = "Weight Other \r\n(KGS)";
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Location = new System.Drawing.Point(655, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(103, 34);
            this.xrTableCell1.Text = "Weight Total\r\n (KGS)";
            // 
            // lblHSMaterialName
            // 
            this.lblHSMaterialName.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblHSMaterialName.Location = new System.Drawing.Point(225, 10);
            this.lblHSMaterialName.Name = "lblHSMaterialName";
            this.lblHSMaterialName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblHSMaterialName.Size = new System.Drawing.Size(534, 21);
            this.lblHSMaterialName.StylePriority.UseFont = false;
            // 
            // lblHSCode
            // 
            this.lblHSCode.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblHSCode.Location = new System.Drawing.Point(78, 10);
            this.lblHSCode.Name = "lblHSCode";
            this.lblHSCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblHSCode.Size = new System.Drawing.Size(146, 21);
            this.lblHSCode.StylePriority.UseFont = false;
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblTotal,
            this.lblTotalOther,
            this.lblTotalRMB,
            this.xrLabel14});
            this.GroupFooter2.Height = 27;
            this.GroupFooter2.Level = 1;
            this.GroupFooter2.Name = "GroupFooter2";
            // 
            // lblTotal
            // 
            this.lblTotal.AnchorVertical = DevExpress.XtraReports.UI.VerticalAnchorStyles.Top;
            this.lblTotal.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblTotal.Location = new System.Drawing.Point(665, 0);
            this.lblTotal.Name = "lblTotal";
            this.lblTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblTotal.Size = new System.Drawing.Size(102, 21);
            this.lblTotal.StylePriority.UseFont = false;
            this.lblTotal.StylePriority.UseTextAlignment = false;
            xrSummary4.FormatString = "{0:#,0.00}";
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblTotal.Summary = xrSummary4;
            this.lblTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblTotalOther
            // 
            this.lblTotalOther.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblTotalOther.Location = new System.Drawing.Point(535, 0);
            this.lblTotalOther.Name = "lblTotalOther";
            this.lblTotalOther.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblTotalOther.Size = new System.Drawing.Size(128, 21);
            this.lblTotalOther.StylePriority.UseFont = false;
            this.lblTotalOther.StylePriority.UseTextAlignment = false;
            xrSummary5.FormatString = "{0:#,0.00}";
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblTotalOther.Summary = xrSummary5;
            this.lblTotalOther.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblTotalRMB
            // 
            this.lblTotalRMB.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblTotalRMB.Location = new System.Drawing.Point(408, 0);
            this.lblTotalRMB.Name = "lblTotalRMB";
            this.lblTotalRMB.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblTotalRMB.Size = new System.Drawing.Size(124, 21);
            this.lblTotalRMB.StylePriority.UseFont = false;
            this.lblTotalRMB.StylePriority.UseTextAlignment = false;
            xrSummary6.FormatString = "{0:#,0.00}";
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblTotalRMB.Summary = xrSummary6;
            this.lblTotalRMB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel14
            // 
            this.xrLabel14.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel14.Location = new System.Drawing.Point(333, 0);
            this.xrLabel14.Name = "xrLabel14";
            this.xrLabel14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel14.Size = new System.Drawing.Size(71, 21);
            this.xrLabel14.StylePriority.UseFont = false;
            this.xrLabel14.StylePriority.UseTextAlignment = false;
            this.xrLabel14.Text = "Total:";
            this.xrLabel14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrControlStyle1
            // 
            this.xrControlStyle1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrControlStyle1.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold);
            this.xrControlStyle1.Name = "xrControlStyle1";
            this.xrControlStyle1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrControlStyle1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrControlStyle2
            // 
            this.xrControlStyle2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrControlStyle2.Name = "xrControlStyle2";
            this.xrControlStyle2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrControlStyle2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Location = new System.Drawing.Point(173, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(115, 34);
            this.xrTableCell6.Text = "ERP Material Code";
            // 
            // lblERPITEMCODE
            // 
            this.lblERPITEMCODE.Location = new System.Drawing.Point(173, 0);
            this.lblERPITEMCODE.Name = "lblERPITEMCODE";
            this.lblERPITEMCODE.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblERPITEMCODE.Size = new System.Drawing.Size(115, 23);
            this.lblERPITEMCODE.Text = "[ITEMCODE]";
            // 
            // StockReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.GroupHeader1,
            this.GroupFooter1,
            this.GroupHeader2,
            this.GroupFooter2});
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 50, 50);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.xrControlStyle1,
            this.xrControlStyle2});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
