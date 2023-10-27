using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PH.MIDc.UI
{
    public class StockReport3 : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader2;
        private DevExpress.XtraReports.UI.GroupFooterBand GroupFooter2;
        private DevExpress.XtraReports.UI.XRLabel lblTotalQty;
        private DevExpress.XtraReports.UI.XRLabel xrLabel14;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRLabel lbAsAtDate;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell tc_Qty33;
        private DevExpress.XtraReports.UI.XRTableCell tc_ConversationFactor33;
        private DevExpress.XtraReports.UI.XRTableCell tc_Unit33;
        private DevExpress.XtraReports.UI.XRTableCell tc_TotalWeith33;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell tc_HSCode;
        private DevExpress.XtraReports.UI.XRTableCell tc_ProjectNo;
        private DevExpress.XtraReports.UI.XRTableCell tc_MaterialName;
        private DevExpress.XtraReports.UI.XRTableCell tc_Qty;
        private DevExpress.XtraReports.UI.XRTableCell tc_ConversationFactor;
        private DevExpress.XtraReports.UI.XRTableCell tc_Unit;
        private DevExpress.XtraReports.UI.XRTableCell tc_TotalWeith;
        private DevExpress.XtraReports.UI.XRLabel lb_TotalWeightAll;
        private DevExpress.XtraReports.UI.XRTableCell tc_SuppRef;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;

        int _dt;
        #endregion

        public StockReport3()
        {
            InitializeComponent();
        }
        
        public StockReport3(object ds,int dt)
        {
            InitializeComponent();
            this.DataSource = ds;
            this._dt = dt;

            this.tc_ConversationFactor.DataBindings.Add("Text", this.DataSource, "ConversationFactor");
            this.tc_HSCode.DataBindings.Add("Text", this.DataSource, "HSCode");
            this.tc_MaterialName.DataBindings.Add("Text", this.DataSource, "MaterialName");
            this.tc_ProjectNo.DataBindings.Add("Text", this.DataSource, "ProjectNo");
            this.tc_Qty.DataBindings.Add("Text", this.DataSource, "Qty"   );
            this.tc_TotalWeith.DataBindings.Add("Text", this.DataSource, "TotalWeith");
            this.tc_SuppRef.DataBindings.Add("Text", this.DataSource, "SuppRef");
            this.tc_Unit.DataBindings.Add("Text", this.DataSource, "PHUNIT");

            this.lblTotalQty.DataBindings.Add("Text", this.DataSource, "Qty");
            this.lb_TotalWeightAll.DataBindings.Add("Text", this.DataSource, "TotalWeith");
         

            this.lbAsAtDate.Visible = this._dt != 0;
            this.lbAsAtDate.Text = string.Format("As At Date: {0:####/##/##}", this._dt);


            //this.lblType.DataBindings.Add("Text", this.DataSource, "MATERIALTYPE");
            //this.lblCode.DataBindings.Add("Text", this.DataSource, "SUPPREF");
            //this.lblQty.DataBindings.Add("Text", this.DataSource, "SQTY");
            //this.lblUnit.DataBindings.Add("Text", this.DataSource, "PHUNIT");
            //this.lblWeight.DataBindings.Add("Text", this.DataSource, "WEIGHT");
            //this.lblHSCode.DataBindings.Add("Text", this.DataSource, "HSCODE");

            //this.lblSubTotal.DataBindings.Add("Text", this.DataSource, "WEIGHT");
            //this.lblTotal.DataBindings.Add("Text", this.DataSource, "WEIGHT");

            //this.lbAsAtDate.Visible = this._dt != 0;
            //this.lbAsAtDate.Text = string.Format("As At Date: {0:####/##/##}", this._dt);

        }

        private void InitializeComponent()
        {
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.lbAsAtDate = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tc_HSCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_ProjectNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_MaterialName = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_Qty = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_ConversationFactor = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_Unit = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_TotalWeith = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_Qty33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_ConversationFactor33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_Unit33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_TotalWeith33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.lb_TotalWeightAll = new DevExpress.XtraReports.UI.XRLabel();
            this.lblTotalQty = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel14 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tc_SuppRef = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lbAsAtDate,
            this.xrLabel3,
            this.xrPageInfo1,
            this.xrLabel1});
            this.PageHeader.Height = 44;
            this.PageHeader.Name = "PageHeader";
            // 
            // lbAsAtDate
            // 
            this.lbAsAtDate.Font = new System.Drawing.Font("Times New Roman", 7F);
            this.lbAsAtDate.Location = new System.Drawing.Point(233, 25);
            this.lbAsAtDate.Name = "lbAsAtDate";
            this.lbAsAtDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbAsAtDate.Size = new System.Drawing.Size(258, 17);
            this.lbAsAtDate.StylePriority.UseFont = false;
            this.lbAsAtDate.Text = "As At Date:";
            this.lbAsAtDate.Visible = false;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Location = new System.Drawing.Point(558, 21);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(45, 23);
            this.xrLabel3.Text = "Page:";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Location = new System.Drawing.Point(603, 21);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(100, 23);
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
            this.xrTable2.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTable2.Location = new System.Drawing.Point(0, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTable2.Size = new System.Drawing.Size(801, 23);
            this.xrTable2.StylePriority.UseBorders = false;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tc_HSCode,
            this.tc_ProjectNo,
            this.tc_SuppRef,
            this.tc_MaterialName,
            this.tc_Qty,
            this.tc_ConversationFactor,
            this.tc_Unit,
            this.tc_TotalWeith});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(801, 23);
            // 
            // tc_HSCode
            // 
            this.tc_HSCode.Location = new System.Drawing.Point(0, 0);
            this.tc_HSCode.Name = "tc_HSCode";
            this.tc_HSCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_HSCode.Size = new System.Drawing.Size(101, 23);
            this.tc_HSCode.StylePriority.UseTextAlignment = false;
            this.tc_HSCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tc_ProjectNo
            // 
            this.tc_ProjectNo.Location = new System.Drawing.Point(101, 0);
            this.tc_ProjectNo.Name = "tc_ProjectNo";
            this.tc_ProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_ProjectNo.Size = new System.Drawing.Size(109, 23);
            this.tc_ProjectNo.StylePriority.UseTextAlignment = false;
            this.tc_ProjectNo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tc_MaterialName
            // 
            this.tc_MaterialName.Location = new System.Drawing.Point(366, 0);
            this.tc_MaterialName.Name = "tc_MaterialName";
            this.tc_MaterialName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_MaterialName.Size = new System.Drawing.Size(115, 23);
            this.tc_MaterialName.StylePriority.UseTextAlignment = false;
            this.tc_MaterialName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tc_Qty
            // 
            this.tc_Qty.Location = new System.Drawing.Point(481, 0);
            this.tc_Qty.Name = "tc_Qty";
            this.tc_Qty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_Qty.Size = new System.Drawing.Size(72, 23);
            this.tc_Qty.StylePriority.UseTextAlignment = false;
            this.tc_Qty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tc_ConversationFactor
            // 
            this.tc_ConversationFactor.Location = new System.Drawing.Point(553, 0);
            this.tc_ConversationFactor.Multiline = true;
            this.tc_ConversationFactor.Name = "tc_ConversationFactor";
            this.tc_ConversationFactor.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_ConversationFactor.Size = new System.Drawing.Size(104, 23);
            this.tc_ConversationFactor.StylePriority.UseTextAlignment = false;
            this.tc_ConversationFactor.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // tc_Unit
            // 
            this.tc_Unit.Location = new System.Drawing.Point(657, 0);
            this.tc_Unit.Name = "tc_Unit";
            this.tc_Unit.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_Unit.Size = new System.Drawing.Size(66, 23);
            this.tc_Unit.StylePriority.UseTextAlignment = false;
            this.tc_Unit.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tc_TotalWeith
            // 
            this.tc_TotalWeith.Location = new System.Drawing.Point(723, 0);
            this.tc_TotalWeith.Name = "tc_TotalWeith";
            this.tc_TotalWeith.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_TotalWeith.Size = new System.Drawing.Size(78, 23);
            this.tc_TotalWeith.StylePriority.UseTextAlignment = false;
            this.tc_TotalWeith.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.GroupHeader2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("HSCODE", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.Height = 39;
            this.GroupHeader2.Name = "GroupHeader2";
            this.GroupHeader2.RepeatEveryPage = true;
            // 
            // xrTable1
            // 
            this.xrTable1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable1.Location = new System.Drawing.Point(0, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(802, 39);
            this.xrTable1.StylePriority.UseBorders = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell4,
            this.xrTableCell1,
            this.xrTableCell2,
            this.xrTableCell5,
            this.tc_Qty33,
            this.tc_ConversationFactor33,
            this.tc_Unit33,
            this.tc_TotalWeith33});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(802, 39);
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(101, 39);
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            this.xrTableCell4.Text = "H.S. Code";
            this.xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Location = new System.Drawing.Point(101, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(109, 39);
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "Project Nr.";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Location = new System.Drawing.Point(366, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(115, 39);
            this.xrTableCell5.StylePriority.UseTextAlignment = false;
            this.xrTableCell5.Text = "Material  Name";
            this.xrTableCell5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tc_Qty33
            // 
            this.tc_Qty33.Location = new System.Drawing.Point(481, 0);
            this.tc_Qty33.Name = "tc_Qty33";
            this.tc_Qty33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_Qty33.Size = new System.Drawing.Size(72, 39);
            this.tc_Qty33.StylePriority.UseTextAlignment = false;
            this.tc_Qty33.Text = "Qty";
            this.tc_Qty33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tc_ConversationFactor33
            // 
            this.tc_ConversationFactor33.Location = new System.Drawing.Point(553, 0);
            this.tc_ConversationFactor33.Multiline = true;
            this.tc_ConversationFactor33.Name = "tc_ConversationFactor33";
            this.tc_ConversationFactor33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_ConversationFactor33.Size = new System.Drawing.Size(104, 39);
            this.tc_ConversationFactor33.StylePriority.UseTextAlignment = false;
            this.tc_ConversationFactor33.Text = "Conversation\r\nFactor";
            this.tc_ConversationFactor33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tc_Unit33
            // 
            this.tc_Unit33.Location = new System.Drawing.Point(657, 0);
            this.tc_Unit33.Name = "tc_Unit33";
            this.tc_Unit33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_Unit33.Size = new System.Drawing.Size(66, 39);
            this.tc_Unit33.StylePriority.UseTextAlignment = false;
            this.tc_Unit33.Text = "Unit";
            this.tc_Unit33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tc_TotalWeith33
            // 
            this.tc_TotalWeith33.Location = new System.Drawing.Point(723, 0);
            this.tc_TotalWeith33.Name = "tc_TotalWeith33";
            this.tc_TotalWeith33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_TotalWeith33.Size = new System.Drawing.Size(79, 39);
            this.tc_TotalWeith33.StylePriority.UseTextAlignment = false;
            this.tc_TotalWeith33.Text = "Total Weight";
            this.tc_TotalWeith33.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lb_TotalWeightAll,
            this.lblTotalQty,
            this.xrLabel14});
            this.GroupFooter2.Height = 22;
            this.GroupFooter2.Name = "GroupFooter2";
            // 
            // lb_TotalWeightAll
            // 
            this.lb_TotalWeightAll.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lb_TotalWeightAll.Location = new System.Drawing.Point(600, 0);
            this.lb_TotalWeightAll.Name = "lb_TotalWeightAll";
            this.lb_TotalWeightAll.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lb_TotalWeightAll.Size = new System.Drawing.Size(150, 22);
            this.lb_TotalWeightAll.StylePriority.UseFont = false;
            this.lb_TotalWeightAll.StylePriority.UseTextAlignment = false;
            xrSummary1.FormatString = "{0:#,0.00}";
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lb_TotalWeightAll.Summary = xrSummary1;
            this.lb_TotalWeightAll.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lblTotalQty
            // 
            this.lblTotalQty.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.lblTotalQty.Location = new System.Drawing.Point(403, 0);
            this.lblTotalQty.Name = "lblTotalQty";
            this.lblTotalQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblTotalQty.Size = new System.Drawing.Size(122, 22);
            this.lblTotalQty.StylePriority.UseFont = false;
            this.lblTotalQty.StylePriority.UseTextAlignment = false;
            xrSummary2.FormatString = "{0:#,0.00}";
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lblTotalQty.Summary = xrSummary2;
            this.lblTotalQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel14
            // 
            this.xrLabel14.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold);
            this.xrLabel14.Location = new System.Drawing.Point(8, 0);
            this.xrLabel14.Name = "xrLabel14";
            this.xrLabel14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel14.Size = new System.Drawing.Size(68, 21);
            this.xrLabel14.StylePriority.UseFont = false;
            this.xrLabel14.Text = "Total:";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(210, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(156, 39);
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.Text = "SuppRef";
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tc_SuppRef
            // 
            this.tc_SuppRef.Location = new System.Drawing.Point(210, 0);
            this.tc_SuppRef.Name = "tc_SuppRef";
            this.tc_SuppRef.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tc_SuppRef.Size = new System.Drawing.Size(156, 23);
            // 
            // StockReport3
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.GroupHeader2,
            this.GroupFooter2});
            this.Margins = new System.Drawing.Printing.Margins(9, 11, 32, 50);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
