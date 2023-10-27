using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO.Detail
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class SubDetailItemsReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;

        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private XRTable tableItems;
        private XRTableRow xrTableRow18;
        private XRTableCell cellLine;
        private XRTableCell cellColorCode;
        private XRTableCell colorShadeCell;
        private XRTableCell xrTableCell94;
        private XRTableCell xrTableCell95;
        private XRTableCell xrPrice;
        private XRTableCell xrTableCell97;
        private XRTableCell xrTableCell98;
        private XRTableCell cellTolence;
        private XRTableCell cellCustOrder;
        private XRTableCell cellCustStyle;
        private XRTableCell cellProject;
        private XRTableCell buyerColorCell;
        private XRTableCell xrTableCell9;
        private XRTableCell xrTableCell28;
        private XRTableCell lbTtlCustStyleNo;
        private XRTableCell lbTtlCustOrderNo;
        private XRTableCell lbTtlTolence;
        private XRTableCell xrTableCell18;
        private XRTableCell xrTableCell17;
        private XRTableCell xrTableCell16;
        private XRTableCell xrTableCell15;
        private XRTableCell xrTableCell13;
        private XRTableCell xrTableCell12;
        private XRTableCell ttlColorShadeCell;
        private XRTableCell ttlColorCell;
        private XRTableCell lbSubTotal;
        private XRTableRow xrTableRow1;
        private XRTable tbSubtotal;
        private ReportFooterBand ReportFooter;
        private XRTableCell cellSpecSize;
        private XRTableCell lbTtlSpecSize;
        private System.Windows.Forms.BindingSource bindingSource1;
        private GroupHeaderBand GroupHeader1;
        private GroupFooterBand GroupFooter1;
        private XRTableCell xrTableCell40;
        private XRTableCell xrTableCell46;
        private XRTableCell xrTableCell47;
        private XRControlStyle csHeaderSmall;
        private XRTableCell xrTableCell10;
        private XRTable tbHeader;
        private XRTableRow xrTableRow11;
        private XRTableCell cellItemCode;
        private XRTableCell lbLine;
        private XRTableCell xrTableCell1;
        private XRLabel lbColorName;
        private XRLabel lbColorCode;
        private XRLabel lbColor;
        private XRTableCell lbColorShade;
        private XRTableCell lbQty;
        private XRTableCell lbUnit;
        private XRTableCell lbPrice;
        private XRTableCell lbAmount;
        private XRTableCell xrTableCell23;
        private XRLabel lbRemark1;
        private XRLabel lbDeliveryDate;
        private XRTableCell xrTableCell8;
        private XRTableCell lbTolence;
        private XRTableCell lbSpecSize;
        private XRTableCell lbCustOrder;
        private XRTableCell lbCustStyle;
        private XRTableCell lbGmtColor;
        private XRTableCell lbProject;
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
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary5 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary6 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary7 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary8 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary9 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary10 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary11 = new DevExpress.XtraReports.UI.XRSummary();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.tableItems = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow18 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellLine = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellColorCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.buyerColorCell = new DevExpress.XtraReports.UI.XRTableCell();
            this.colorShadeCell = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell94 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell95 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPrice = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell97 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell98 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTolence = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSpecSize = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustOrder = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustStyle = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell46 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell40 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellProject = new DevExpress.XtraReports.UI.XRTableCell();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.tbHeader = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellItemCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbLine = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbColorName = new DevExpress.XtraReports.UI.XRLabel();
            this.lbColorCode = new DevExpress.XtraReports.UI.XRLabel();
            this.lbColor = new DevExpress.XtraReports.UI.XRLabel();
            this.lbColorShade = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbUnit = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbPrice = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbRemark1 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbDeliveryDate = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTolence = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbSpecSize = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbCustOrder = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbCustStyle = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbGmtColor = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbProject = new DevExpress.XtraReports.UI.XRTableCell();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTtlCustStyleNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTtlCustOrderNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTtlTolence = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.ttlColorShadeCell = new DevExpress.XtraReports.UI.XRTableCell();
            this.ttlColorCell = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbSubTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbTtlSpecSize = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell47 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tbSubtotal = new DevExpress.XtraReports.UI.XRTable();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.tableItems)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbSubtotal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // tableItems
            // 
            this.tableItems.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tableItems.Location = new System.Drawing.Point(26, 0);
            this.tableItems.Name = "tableItems";
            this.tableItems.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow18});
            this.tableItems.Size = new System.Drawing.Size(739, 15);
            this.tableItems.StyleName = "csHeader";
            this.tableItems.StylePriority.UseBackColor = false;
            this.tableItems.StylePriority.UseBorders = false;
            this.tableItems.StylePriority.UseTextAlignment = false;
            this.tableItems.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow18
            // 
            this.xrTableRow18.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellLine,
            this.cellColorCode,
            this.buyerColorCell,
            this.colorShadeCell,
            this.xrTableCell94,
            this.xrTableCell95,
            this.xrPrice,
            this.xrTableCell10,
            this.xrTableCell97,
            this.xrTableCell98,
            this.xrTableCell9,
            this.cellTolence,
            this.cellSpecSize,
            this.cellCustOrder,
            this.cellCustStyle,
            this.xrTableCell46,
            this.xrTableCell40,
            this.cellProject});
            this.xrTableRow18.Name = "xrTableRow18";
            this.xrTableRow18.Size = new System.Drawing.Size(739, 15);
            // 
            // cellLine
            // 
            this.cellLine.CanGrow = false;
            this.cellLine.Location = new System.Drawing.Point(0, 0);
            this.cellLine.Multiline = true;
            this.cellLine.Name = "cellLine";
            this.cellLine.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellLine.Size = new System.Drawing.Size(21, 15);
            this.cellLine.StylePriority.UseBorders = false;
            this.cellLine.StylePriority.UsePadding = false;
            this.cellLine.WordWrap = false;
            // 
            // cellColorCode
            // 
            this.cellColorCode.CanGrow = false;
            this.cellColorCode.Location = new System.Drawing.Point(21, 0);
            this.cellColorCode.Multiline = true;
            this.cellColorCode.Name = "cellColorCode";
            this.cellColorCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellColorCode.Size = new System.Drawing.Size(25, 15);
            this.cellColorCode.StylePriority.UseBorders = false;
            this.cellColorCode.StylePriority.UsePadding = false;
            this.cellColorCode.WordWrap = false;
            // 
            // buyerColorCell
            // 
            this.buyerColorCell.CanGrow = false;
            this.buyerColorCell.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buyerColorCell.Location = new System.Drawing.Point(46, 0);
            this.buyerColorCell.Name = "buyerColorCell";
            this.buyerColorCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.buyerColorCell.Size = new System.Drawing.Size(105, 15);
            this.buyerColorCell.StylePriority.UseFont = false;
            this.buyerColorCell.StylePriority.UsePadding = false;
            this.buyerColorCell.StylePriority.UseTextAlignment = false;
            this.buyerColorCell.Text = "[ColorDesc]";
            this.buyerColorCell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.buyerColorCell.WordWrap = false;
            // 
            // colorShadeCell
            // 
            this.colorShadeCell.CanGrow = false;
            this.colorShadeCell.Location = new System.Drawing.Point(151, 0);
            this.colorShadeCell.Multiline = true;
            this.colorShadeCell.Name = "colorShadeCell";
            this.colorShadeCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.colorShadeCell.Size = new System.Drawing.Size(61, 15);
            this.colorShadeCell.StylePriority.UsePadding = false;
            this.colorShadeCell.StylePriority.UseTextAlignment = false;
            this.colorShadeCell.Text = "[ColorShade]";
            this.colorShadeCell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.colorShadeCell.WordWrap = false;
            // 
            // xrTableCell94
            // 
            this.xrTableCell94.CanGrow = false;
            this.xrTableCell94.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierPOQty", "")});
            this.xrTableCell94.Location = new System.Drawing.Point(212, 0);
            this.xrTableCell94.Name = "xrTableCell94";
            this.xrTableCell94.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell94.Size = new System.Drawing.Size(40, 15);
            this.xrTableCell94.StylePriority.UseTextAlignment = false;
            xrSummary1.FormatString = "{0:#,0.##}";
            xrSummary1.IgnoreNullValues = true;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell94.Summary = xrSummary1;
            this.xrTableCell94.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrTableCell94.WordWrap = false;
            // 
            // xrTableCell95
            // 
            this.xrTableCell95.CanGrow = false;
            this.xrTableCell95.Location = new System.Drawing.Point(252, 0);
            this.xrTableCell95.Name = "xrTableCell95";
            this.xrTableCell95.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell95.Size = new System.Drawing.Size(21, 15);
            this.xrTableCell95.Text = "[SupplierUOM]";
            this.xrTableCell95.WordWrap = false;
            // 
            // xrPrice
            // 
            this.xrPrice.CanGrow = false;
            this.xrPrice.Location = new System.Drawing.Point(273, 0);
            this.xrPrice.Multiline = true;
            this.xrPrice.Name = "xrPrice";
            this.xrPrice.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPrice.Size = new System.Drawing.Size(40, 15);
            this.xrPrice.StylePriority.UseTextAlignment = false;
            this.xrPrice.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPrice.WordWrap = false;
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.CanGrow = false;
            this.xrTableCell10.Location = new System.Drawing.Point(313, 0);
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(10, 15);
            this.xrTableCell10.Text = "[PriceDependent]";
            // 
            // xrTableCell97
            // 
            this.xrTableCell97.CanGrow = false;
            this.xrTableCell97.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "")});
            this.xrTableCell97.Location = new System.Drawing.Point(323, 0);
            this.xrTableCell97.Multiline = true;
            this.xrTableCell97.Name = "xrTableCell97";
            this.xrTableCell97.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.xrTableCell97.Size = new System.Drawing.Size(53, 15);
            this.xrTableCell97.StylePriority.UsePadding = false;
            this.xrTableCell97.StylePriority.UseTextAlignment = false;
            xrSummary2.FormatString = "{0:N2}";
            xrSummary2.IgnoreNullValues = true;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell97.Summary = xrSummary2;
            this.xrTableCell97.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrTableCell97.WordWrap = false;
            // 
            // xrTableCell98
            // 
            this.xrTableCell98.CanGrow = false;
            this.xrTableCell98.Location = new System.Drawing.Point(376, 0);
            this.xrTableCell98.Multiline = true;
            this.xrTableCell98.Name = "xrTableCell98";
            this.xrTableCell98.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell98.Size = new System.Drawing.Size(74, 15);
            this.xrTableCell98.StylePriority.UsePadding = false;
            this.xrTableCell98.StylePriority.UseTextAlignment = false;
            this.xrTableCell98.Text = "[DeliveryWeek]";
            this.xrTableCell98.WordWrap = false;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell9.Location = new System.Drawing.Point(450, 0);
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(2, 15);
            this.xrTableCell9.StylePriority.UseBorders = false;
            // 
            // cellTolence
            // 
            this.cellTolence.CanGrow = false;
            this.cellTolence.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Tolerance", "{0:N0}")});
            this.cellTolence.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellTolence.Location = new System.Drawing.Point(452, 0);
            this.cellTolence.Multiline = true;
            this.cellTolence.Name = "cellTolence";
            this.cellTolence.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTolence.Size = new System.Drawing.Size(26, 15);
            this.cellTolence.StylePriority.UseFont = false;
            this.cellTolence.Text = "cellTolence";
            this.cellTolence.WordWrap = false;
            // 
            // cellSpecSize
            // 
            this.cellSpecSize.CanGrow = false;
            this.cellSpecSize.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellSpecSize.Location = new System.Drawing.Point(478, 0);
            this.cellSpecSize.Name = "cellSpecSize";
            this.cellSpecSize.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellSpecSize.Size = new System.Drawing.Size(65, 15);
            this.cellSpecSize.StylePriority.UseFont = false;
            this.cellSpecSize.StylePriority.UsePadding = false;
            this.cellSpecSize.WordWrap = false;
            // 
            // cellCustOrder
            // 
            this.cellCustOrder.CanGrow = false;
            this.cellCustOrder.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustOrderNo", "")});
            this.cellCustOrder.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellCustOrder.Location = new System.Drawing.Point(543, 0);
            this.cellCustOrder.Multiline = true;
            this.cellCustOrder.Name = "cellCustOrder";
            this.cellCustOrder.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustOrder.Size = new System.Drawing.Size(50, 15);
            this.cellCustOrder.StylePriority.UseFont = false;
            this.cellCustOrder.StylePriority.UsePadding = false;
            this.cellCustOrder.StylePriority.UseTextAlignment = false;
            this.cellCustOrder.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellCustOrder.WordWrap = false;
            // 
            // cellCustStyle
            // 
            this.cellCustStyle.CanGrow = false;
            this.cellCustStyle.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustStyleNo", "")});
            this.cellCustStyle.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellCustStyle.Location = new System.Drawing.Point(593, 0);
            this.cellCustStyle.Multiline = true;
            this.cellCustStyle.Name = "cellCustStyle";
            this.cellCustStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustStyle.Size = new System.Drawing.Size(50, 15);
            this.cellCustStyle.StylePriority.UseFont = false;
            this.cellCustStyle.StylePriority.UsePadding = false;
            this.cellCustStyle.StylePriority.UseTextAlignment = false;
            this.cellCustStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellCustStyle.WordWrap = false;
            // 
            // xrTableCell46
            // 
            this.xrTableCell46.CanGrow = false;
            this.xrTableCell46.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "GarmentColor", "")});
            this.xrTableCell46.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell46.Location = new System.Drawing.Point(643, 0);
            this.xrTableCell46.Name = "xrTableCell46";
            this.xrTableCell46.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell46.Size = new System.Drawing.Size(26, 15);
            this.xrTableCell46.StylePriority.UseFont = false;
            this.xrTableCell46.WordWrap = false;
            // 
            // xrTableCell40
            // 
            this.xrTableCell40.CanGrow = false;
            this.xrTableCell40.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "StyleColorDiff", "")});
            this.xrTableCell40.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell40.Location = new System.Drawing.Point(669, 0);
            this.xrTableCell40.Name = "xrTableCell40";
            this.xrTableCell40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell40.Size = new System.Drawing.Size(12, 15);
            this.xrTableCell40.StylePriority.UseFont = false;
            // 
            // cellProject
            // 
            this.cellProject.CanGrow = false;
            this.cellProject.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.cellProject.Location = new System.Drawing.Point(681, 0);
            this.cellProject.Multiline = true;
            this.cellProject.Name = "cellProject";
            this.cellProject.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellProject.Size = new System.Drawing.Size(58, 15);
            this.cellProject.StylePriority.UseFont = false;
            this.cellProject.StylePriority.UsePadding = false;
            this.cellProject.WordWrap = false;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.tbHeader});
            this.PageHeader.Height = 65;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.PageHeader.Visible = false;
            // 
            // tbHeader
            // 
            this.tbHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.tbHeader.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tbHeader.Location = new System.Drawing.Point(0, 0);
            this.tbHeader.Name = "tbHeader";
            this.tbHeader.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow11});
            this.tbHeader.Size = new System.Drawing.Size(765, 40);
            this.tbHeader.StyleName = "csHeader";
            this.tbHeader.StylePriority.UseBackColor = false;
            this.tbHeader.StylePriority.UseBorders = false;
            this.tbHeader.StylePriority.UseTextAlignment = false;
            this.tbHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow11
            // 
            this.xrTableRow11.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellItemCode,
            this.lbLine,
            this.xrTableCell1,
            this.lbColorShade,
            this.lbQty,
            this.lbUnit,
            this.lbPrice,
            this.lbAmount,
            this.xrTableCell23,
            this.xrTableCell8,
            this.lbTolence,
            this.lbSpecSize,
            this.lbCustOrder,
            this.lbCustStyle,
            this.lbGmtColor,
            this.lbProject});
            this.xrTableRow11.Name = "xrTableRow11";
            this.xrTableRow11.Size = new System.Drawing.Size(765, 40);
            // 
            // cellItemCode
            // 
            this.cellItemCode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellItemCode.CanGrow = false;
            this.cellItemCode.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellItemCode.Location = new System.Drawing.Point(0, 0);
            this.cellItemCode.Multiline = true;
            this.cellItemCode.Name = "cellItemCode";
            this.cellItemCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellItemCode.Size = new System.Drawing.Size(26, 40);
            this.cellItemCode.StylePriority.UseBorders = false;
            this.cellItemCode.StylePriority.UseFont = false;
            this.cellItemCode.StylePriority.UsePadding = false;
            this.cellItemCode.Text = "買方品種編碼";
            // 
            // lbLine
            // 
            this.lbLine.CanGrow = false;
            this.lbLine.Location = new System.Drawing.Point(26, 0);
            this.lbLine.Multiline = true;
            this.lbLine.Name = "lbLine";
            this.lbLine.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbLine.Size = new System.Drawing.Size(21, 40);
            this.lbLine.StylePriority.UseBorders = false;
            this.lbLine.StylePriority.UsePadding = false;
            this.lbLine.Text = "行號";
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lbColorName,
            this.lbColorCode,
            this.lbColor});
            this.xrTableCell1.Location = new System.Drawing.Point(47, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(130, 40);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.Text = "buyerColorCell";
            // 
            // lbColorName
            // 
            this.lbColorName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.lbColorName.CanGrow = false;
            this.lbColorName.Location = new System.Drawing.Point(24, 20);
            this.lbColorName.Name = "lbColorName";
            this.lbColorName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbColorName.Size = new System.Drawing.Size(106, 20);
            this.lbColorName.StylePriority.UseBorders = false;
            this.lbColorName.Text = "名稱";
            // 
            // lbColorCode
            // 
            this.lbColorCode.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lbColorCode.CanGrow = false;
            this.lbColorCode.Location = new System.Drawing.Point(0, 20);
            this.lbColorCode.Name = "lbColorCode";
            this.lbColorCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbColorCode.Size = new System.Drawing.Size(24, 20);
            this.lbColorCode.StylePriority.UseBorders = false;
            this.lbColorCode.StylePriority.UsePadding = false;
            this.lbColorCode.Text = "編號";
            // 
            // lbColor
            // 
            this.lbColor.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbColor.CanGrow = false;
            this.lbColor.Location = new System.Drawing.Point(0, 0);
            this.lbColor.Name = "lbColor";
            this.lbColor.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbColor.Size = new System.Drawing.Size(130, 20);
            this.lbColor.StylePriority.UseBorders = false;
            this.lbColor.Text = "買方品種顏色";
            // 
            // lbColorShade
            // 
            this.lbColorShade.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbColorShade.CanGrow = false;
            this.lbColorShade.Location = new System.Drawing.Point(177, 0);
            this.lbColorShade.Multiline = true;
            this.lbColorShade.Name = "lbColorShade";
            this.lbColorShade.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbColorShade.Size = new System.Drawing.Size(61, 40);
            this.lbColorShade.StylePriority.UseBorders = false;
            this.lbColorShade.StylePriority.UsePadding = false;
            this.lbColorShade.Text = "供應商\r\n品種色影";
            // 
            // lbQty
            // 
            this.lbQty.CanGrow = false;
            this.lbQty.Location = new System.Drawing.Point(238, 0);
            this.lbQty.Name = "lbQty";
            this.lbQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbQty.Size = new System.Drawing.Size(40, 40);
            this.lbQty.StylePriority.UsePadding = false;
            this.lbQty.Text = "數量";
            // 
            // lbUnit
            // 
            this.lbUnit.CanGrow = false;
            this.lbUnit.Location = new System.Drawing.Point(278, 0);
            this.lbUnit.Name = "lbUnit";
            this.lbUnit.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbUnit.Size = new System.Drawing.Size(21, 40);
            this.lbUnit.StylePriority.UsePadding = false;
            this.lbUnit.Text = "單位";
            // 
            // lbPrice
            // 
            this.lbPrice.CanGrow = false;
            this.lbPrice.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbPrice.Location = new System.Drawing.Point(299, 0);
            this.lbPrice.Multiline = true;
            this.lbPrice.Name = "lbPrice";
            this.lbPrice.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbPrice.Size = new System.Drawing.Size(40, 40);
            this.lbPrice.StylePriority.UseFont = false;
            this.lbPrice.StylePriority.UsePadding = false;
            this.lbPrice.Text = "單價\r\n([Currency])";
            // 
            // lbAmount
            // 
            this.lbAmount.CanGrow = false;
            this.lbAmount.Location = new System.Drawing.Point(339, 0);
            this.lbAmount.Multiline = true;
            this.lbAmount.Name = "lbAmount";
            this.lbAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbAmount.Size = new System.Drawing.Size(63, 40);
            this.lbAmount.StylePriority.UsePadding = false;
            this.lbAmount.Text = "總金額\r\n([Currency])";
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lbRemark1,
            this.lbDeliveryDate});
            this.xrTableCell23.Location = new System.Drawing.Point(402, 0);
            this.xrTableCell23.Multiline = true;
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(74, 40);
            this.xrTableCell23.StylePriority.UsePadding = false;
            this.xrTableCell23.Text = "Delivery Date\r\n(Week)";
            // 
            // lbRemark1
            // 
            this.lbRemark1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbRemark1.CanGrow = false;
            this.lbRemark1.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbRemark1.Location = new System.Drawing.Point(0, 25);
            this.lbRemark1.Multiline = true;
            this.lbRemark1.Name = "lbRemark1";
            this.lbRemark1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbRemark1.Size = new System.Drawing.Size(74, 15);
            this.lbRemark1.StylePriority.UseBorders = false;
            this.lbRemark1.StylePriority.UseFont = false;
            this.lbRemark1.Text = "( 備注一 )";
            // 
            // lbDeliveryDate
            // 
            this.lbDeliveryDate.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.lbDeliveryDate.CanGrow = false;
            this.lbDeliveryDate.Location = new System.Drawing.Point(0, 0);
            this.lbDeliveryDate.Multiline = true;
            this.lbDeliveryDate.Name = "lbDeliveryDate";
            this.lbDeliveryDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbDeliveryDate.Size = new System.Drawing.Size(74, 25);
            this.lbDeliveryDate.StylePriority.UseBorders = false;
            this.lbDeliveryDate.Text = "交貨日期 (#週)";
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell8.Location = new System.Drawing.Point(476, 0);
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(2, 40);
            this.xrTableCell8.StylePriority.UseBorders = false;
            this.xrTableCell8.Text = "xrTableCell8";
            // 
            // lbTolence
            // 
            this.lbTolence.CanGrow = false;
            this.lbTolence.Location = new System.Drawing.Point(478, 0);
            this.lbTolence.Multiline = true;
            this.lbTolence.Name = "lbTolence";
            this.lbTolence.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbTolence.Size = new System.Drawing.Size(26, 40);
            this.lbTolence.StyleName = "csHeaderSmall";
            this.lbTolence.StylePriority.UseFont = false;
            this.lbTolence.StylePriority.UsePadding = false;
            this.lbTolence.Text = "付運\r\n寬容率\r\n(+/-)%";
            // 
            // lbSpecSize
            // 
            this.lbSpecSize.CanGrow = false;
            this.lbSpecSize.Font = new System.Drawing.Font("Arial Unicode MS", 5F);
            this.lbSpecSize.Location = new System.Drawing.Point(504, 0);
            this.lbSpecSize.Multiline = true;
            this.lbSpecSize.Name = "lbSpecSize";
            this.lbSpecSize.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.lbSpecSize.Size = new System.Drawing.Size(65, 40);
            this.lbSpecSize.StyleName = "csHeaderSmall";
            this.lbSpecSize.StylePriority.UseFont = false;
            this.lbSpecSize.StylePriority.UsePadding = false;
            this.lbSpecSize.StylePriority.UseTextAlignment = false;
            this.lbSpecSize.Text = "指定的\r\n尺寸大小\r\n/尺寸大小範圍";
            this.lbSpecSize.WordWrap = false;
            // 
            // lbCustOrder
            // 
            this.lbCustOrder.CanGrow = false;
            this.lbCustOrder.Location = new System.Drawing.Point(569, 0);
            this.lbCustOrder.Multiline = true;
            this.lbCustOrder.Name = "lbCustOrder";
            this.lbCustOrder.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbCustOrder.Size = new System.Drawing.Size(50, 40);
            this.lbCustOrder.StyleName = "csHeaderSmall";
            this.lbCustOrder.StylePriority.UsePadding = false;
            this.lbCustOrder.Text = "終端客戶\r\n訂單號\r\n(若有資料)";
            // 
            // lbCustStyle
            // 
            this.lbCustStyle.CanGrow = false;
            this.lbCustStyle.Location = new System.Drawing.Point(619, 0);
            this.lbCustStyle.Multiline = true;
            this.lbCustStyle.Name = "lbCustStyle";
            this.lbCustStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbCustStyle.Size = new System.Drawing.Size(50, 40);
            this.lbCustStyle.StyleName = "csHeaderSmall";
            this.lbCustStyle.StylePriority.UsePadding = false;
            this.lbCustStyle.Text = "終端客戶\r\n款號";
            // 
            // lbGmtColor
            // 
            this.lbGmtColor.CanGrow = false;
            this.lbGmtColor.Location = new System.Drawing.Point(669, 0);
            this.lbGmtColor.Multiline = true;
            this.lbGmtColor.Name = "lbGmtColor";
            this.lbGmtColor.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbGmtColor.Size = new System.Drawing.Size(38, 40);
            this.lbGmtColor.StyleName = "csHeaderSmall";
            this.lbGmtColor.StylePriority.UseFont = false;
            this.lbGmtColor.StylePriority.UsePadding = false;
            this.lbGmtColor.Text = "成衣顏色\r\n代號\r\n(作參考用)";
            this.lbGmtColor.WordWrap = false;
            // 
            // lbProject
            // 
            this.lbProject.CanGrow = false;
            this.lbProject.Location = new System.Drawing.Point(707, 0);
            this.lbProject.Multiline = true;
            this.lbProject.Name = "lbProject";
            this.lbProject.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbProject.Size = new System.Drawing.Size(58, 40);
            this.lbProject.StyleName = "csHeaderSmall";
            this.lbProject.StylePriority.UsePadding = false;
            this.lbProject.Text = "買方工程號";
            // 
            // csHeader
            // 
            this.csHeader.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csDetail
            // 
            this.csDetail.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.CanGrow = false;
            this.xrTableCell28.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ProjectNO", "")});
            this.xrTableCell28.Location = new System.Drawing.Point(681, 0);
            this.xrTableCell28.Multiline = true;
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(58, 15);
            xrSummary3.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary3.IgnoreNullValues = true;
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell28.Summary = xrSummary3;
            // 
            // lbTtlCustStyleNo
            // 
            this.lbTtlCustStyleNo.CanGrow = false;
            this.lbTtlCustStyleNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "EndCustStyleNo", "")});
            this.lbTtlCustStyleNo.Location = new System.Drawing.Point(593, 0);
            this.lbTtlCustStyleNo.Multiline = true;
            this.lbTtlCustStyleNo.Name = "lbTtlCustStyleNo";
            this.lbTtlCustStyleNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTtlCustStyleNo.Size = new System.Drawing.Size(50, 15);
            xrSummary4.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary4.IgnoreNullValues = true;
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lbTtlCustStyleNo.Summary = xrSummary4;
            // 
            // lbTtlCustOrderNo
            // 
            this.lbTtlCustOrderNo.CanGrow = false;
            this.lbTtlCustOrderNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "EndCustOrderNo", "")});
            this.lbTtlCustOrderNo.Location = new System.Drawing.Point(543, 0);
            this.lbTtlCustOrderNo.Multiline = true;
            this.lbTtlCustOrderNo.Name = "lbTtlCustOrderNo";
            this.lbTtlCustOrderNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTtlCustOrderNo.Size = new System.Drawing.Size(50, 15);
            xrSummary5.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary5.IgnoreNullValues = true;
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lbTtlCustOrderNo.Summary = xrSummary5;
            // 
            // lbTtlTolence
            // 
            this.lbTtlTolence.CanGrow = false;
            this.lbTtlTolence.Location = new System.Drawing.Point(452, 0);
            this.lbTtlTolence.Multiline = true;
            this.lbTtlTolence.Name = "lbTtlTolence";
            this.lbTtlTolence.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTtlTolence.Size = new System.Drawing.Size(26, 15);
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell18.Location = new System.Drawing.Point(450, 0);
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(2, 15);
            this.xrTableCell18.StylePriority.UseBorders = false;
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.CanGrow = false;
            this.xrTableCell17.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "DeliveryWeek", "")});
            this.xrTableCell17.Location = new System.Drawing.Point(376, 0);
            this.xrTableCell17.Multiline = true;
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(74, 15);
            xrSummary6.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary6.IgnoreNullValues = true;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell17.Summary = xrSummary6;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.CanGrow = false;
            this.xrTableCell16.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "{0:N0}")});
            this.xrTableCell16.Location = new System.Drawing.Point(313, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(63, 15);
            this.xrTableCell16.StylePriority.UsePadding = false;
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            xrSummary7.FormatString = "{0:N2}";
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell16.Summary = xrSummary7;
            this.xrTableCell16.Text = "xrTableCell16";
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.CanGrow = false;
            this.xrTableCell15.Location = new System.Drawing.Point(273, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(40, 15);
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.CanGrow = false;
            this.xrTableCell13.Location = new System.Drawing.Point(252, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(21, 15);
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.CanGrow = false;
            this.xrTableCell12.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierPOQty", "")});
            this.xrTableCell12.Location = new System.Drawing.Point(212, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(40, 15);
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            xrSummary8.FormatString = "{0:#,0.##}";
            xrSummary8.IgnoreNullValues = true;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.xrTableCell12.Summary = xrSummary8;
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // ttlColorShadeCell
            // 
            this.ttlColorShadeCell.CanGrow = false;
            this.ttlColorShadeCell.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierColorShade", "")});
            this.ttlColorShadeCell.Location = new System.Drawing.Point(151, 0);
            this.ttlColorShadeCell.Multiline = true;
            this.ttlColorShadeCell.Name = "ttlColorShadeCell";
            this.ttlColorShadeCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.ttlColorShadeCell.Size = new System.Drawing.Size(61, 15);
            this.ttlColorShadeCell.StylePriority.UseTextAlignment = false;
            xrSummary9.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary9.IgnoreNullValues = true;
            xrSummary9.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.ttlColorShadeCell.Summary = xrSummary9;
            // 
            // ttlColorCell
            // 
            this.ttlColorCell.CanGrow = false;
            this.ttlColorCell.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ColorDesc", "")});
            this.ttlColorCell.Location = new System.Drawing.Point(46, 0);
            this.ttlColorCell.Name = "ttlColorCell";
            this.ttlColorCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.ttlColorCell.Size = new System.Drawing.Size(105, 15);
            this.ttlColorCell.StylePriority.UseTextAlignment = false;
            xrSummary10.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary10.IgnoreNullValues = true;
            xrSummary10.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.ttlColorCell.Summary = xrSummary10;
            // 
            // lbSubTotal
            // 
            this.lbSubTotal.CanGrow = false;
            this.lbSubTotal.Location = new System.Drawing.Point(0, 0);
            this.lbSubTotal.Multiline = true;
            this.lbSubTotal.Name = "lbSubTotal";
            this.lbSubTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbSubTotal.Size = new System.Drawing.Size(46, 15);
            this.lbSubTotal.StylePriority.UseBorders = false;
            this.lbSubTotal.StylePriority.UsePadding = false;
            this.lbSubTotal.Text = "小計:";
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbSubTotal,
            this.ttlColorCell,
            this.ttlColorShadeCell,
            this.xrTableCell12,
            this.xrTableCell13,
            this.xrTableCell15,
            this.xrTableCell16,
            this.xrTableCell17,
            this.xrTableCell18,
            this.lbTtlTolence,
            this.lbTtlSpecSize,
            this.lbTtlCustOrderNo,
            this.lbTtlCustStyleNo,
            this.xrTableCell47,
            this.xrTableCell28});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(739, 15);
            // 
            // lbTtlSpecSize
            // 
            this.lbTtlSpecSize.CanGrow = false;
            this.lbTtlSpecSize.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ItemSize", "")});
            this.lbTtlSpecSize.Location = new System.Drawing.Point(478, 0);
            this.lbTtlSpecSize.Name = "lbTtlSpecSize";
            this.lbTtlSpecSize.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTtlSpecSize.Size = new System.Drawing.Size(65, 15);
            xrSummary11.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary11.IgnoreNullValues = true;
            xrSummary11.Running = DevExpress.XtraReports.UI.SummaryRunning.Report;
            this.lbTtlSpecSize.Summary = xrSummary11;
            // 
            // xrTableCell47
            // 
            this.xrTableCell47.CanGrow = false;
            this.xrTableCell47.Location = new System.Drawing.Point(643, 0);
            this.xrTableCell47.Name = "xrTableCell47";
            this.xrTableCell47.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell47.Size = new System.Drawing.Size(38, 15);
            // 
            // tbSubtotal
            // 
            this.tbSubtotal.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tbSubtotal.ForeColor = System.Drawing.Color.Blue;
            this.tbSubtotal.Location = new System.Drawing.Point(26, 0);
            this.tbSubtotal.Name = "tbSubtotal";
            this.tbSubtotal.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.tbSubtotal.Size = new System.Drawing.Size(739, 15);
            this.tbSubtotal.StyleName = "csHeader";
            this.tbSubtotal.StylePriority.UseBackColor = false;
            this.tbSubtotal.StylePriority.UseBorders = false;
            this.tbSubtotal.StylePriority.UseForeColor = false;
            this.tbSubtotal.StylePriority.UseTextAlignment = false;
            this.tbSubtotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.tbSubtotal});
            this.ReportFooter.Height = 15;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("OrderLine", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("Price", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 0;
            this.GroupHeader1.Name = "GroupHeader1";
            this.GroupHeader1.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader1_BeforePrint);
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.tableItems});
            this.GroupFooter1.Height = 15;
            this.GroupFooter1.Name = "GroupFooter1";
            this.GroupFooter1.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupFooter1_BeforePrint);
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // SubDetailItemsReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.ReportFooter,
            this.GroupHeader1,
            this.GroupFooter1});
            this.DataSource = this.bindingSource1;
            this.ExportOptions.PrintPreview.DefaultFileName = "POReport(Associate)";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csDetail,
            this.csHeaderSmall});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.poItemsReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.tableItems)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbSubtotal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        #endregion

        #region Creator
        public SubDetailItemsReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //
            this._specSizes = new List<PH.POPC.BO.SpecSize>();
        }
        public SubDetailItemsReport(PH.POPC.BO.POHeader poHeader, string langID, int rows)
            : this()
        {
            _poHeader = poHeader;
            _langID = langID;
            _rows = rows;
            PO = poHeader;
        }
        #endregion

        #region Fields

        private string _langID;
        private int _rows;
        private PH.POPC.BO.POHeader _poHeader;
        List<PH.POPC.BO.SpecSize> _specSizes;
        private bool _haveMultiProjectsByPrice;
        private int _currRow = 0;

        private POHeader _po;
        private POHeader PO
        {
            get { return _poHeader; }
            set { _poHeader = value; RemoveSpecialSize(); }
        }
        #endregion

        #region Event

        private void poItemsReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tableItems.Left = this.tbSubtotal.Left = 0;
            Common.SetPOReportSizeOfPageTwo(_poHeader, buyerColorCell, colorShadeCell, ttlColorCell, ttlColorShadeCell);

            _haveMultiProjectsByPrice = (_poHeader != null) && _poHeader.HaveMultiProjectsByPrice;

            SetTitleInfor();
            SetSubtotalBorder();
            //SetWidthSpecialSize();
        }
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this._specSizes.Clear();
        }
        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _currRow++;
            SetSpecSizeRange();
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PH.POPC.BO.POColorSizeDetail p = this.GetCurrentRow() as PH.POPC.BO.POColorSizeDetail;
            if (p == null) return;

            if (!string.IsNullOrEmpty(p.FitCode)) return;
            PH.POPC.BO.SpecSize s = this._specSizes.Find(delegate(PH.POPC.BO.SpecSize s1)
            {
                return s1.Size == p.SizeCode;
            });

            if (s == null)
            {
                s = new PH.POPC.BO.SpecSize() { Order = p.SizeOrder, Size = p.SizeCode, SizeDesc = p.SizeDesc };
                this._specSizes.Add(s);
            }
        }

        #endregion

        #region Functions

        private void SetSpecSizeRange()
        {
            PH.POPC.BO.POColorSizeDetail c = this.GetCurrentRow() as PH.POPC.BO.POColorSizeDetail;
            if (c == null) return;
            PH.POPC.BO.POHeader p = _poHeader;


            //int line = p.OrderLine;// (int)this.GetCurrentColumnValue("OrderLine");
            cellLine.Text = c.OrderLine > 100 ? "" : c.OrderLine.ToString();
            cellColorCode.Text = c.ColorCode == PH.POPC.BO.Common.VirtualColorCode ? "" : c.ColorCode;



            //------Xsj20160415:為打印VAT單價而註釋掉前面的代碼，添加後面的代碼。-------  
            //decimal pr = (c.Price ?? 0);// (decimal)this.GetCurrentColumnValue("Price");
            decimal pr = (c.VATPrice ?? 0);// (decimal)this.GetCurrentColumnValue("Price");
            //-------------------------------------------------------------------------
            xrPrice.Text = pr > 10000000 ? "" : pr.ToString("N4");




            #region Spec Size

            switch (p.SupplierDimension)
            {
                case PH.POPC.BO.PODimension.None:
                    break;
                case PH.POPC.BO.PODimension.One:
                    break;
                case PH.POPC.BO.PODimension.Two:
                    break;
                case PH.POPC.BO.PODimension.ThreeS:
                    if (p.IsSpecialSize)
                        this.cellSpecSize.Text = this._specSizes[0].SizeDesc;
                    break;
                case PH.POPC.BO.PODimension.ThreeR:
                    this._specSizes.Sort(PH.POPC.BO.SpecSize.SortSize);
                    string sSize = "";
                    //string sType = "";
                    if (this._specSizes.Count > 0)
                    {
                        if (this._specSizes.Count == 1) sSize = this._specSizes[0].SizeDesc;
                        else
                        {
                            sSize = string.Format("{0}-{1}", this._specSizes[0].SizeDesc, this._specSizes[this._specSizes.Count - 1].SizeDesc);
                        }
                    }
                    //this.cellSizeType.Text = sType;
                    this.cellSpecSize.Text = sSize;
                    break;
                case PH.POPC.BO.PODimension.Four:
                    if (c.OrderLine < 100 && !string.IsNullOrEmpty(c.FitCode))
                    {
                        //this.cellSizeType.Text = "(3)";
                        this.cellSpecSize.Text = (_langID == "EN") ? "See page 2 →" : "顯示在第二頁→";
                        //return;
                    }
                    else
                        this.cellSpecSize.Text = "";
                    break;
                default:
                    break;
            }
            #endregion

            #region Projct NO
            this.cellProject.Text = c.ProjectNO;
            //if (c.OrderLine > 100) this.cellProject.Text = "";
            //else
            //{
            //    if (_haveMultiProjectsByPrice)
            //    {
            //        this.cellProject.Text = (_langID == "EN") ? "See page 2 →" : "顯示在第二頁→";
            //    }
            //    else
            //        this.cellProject.Text = c.ProjectNO;
            //}

            #endregion

            #region Show border?

            if (!p.IsMultiItems)
            {
                bool emptyData = pr > 10000000 & (_currRow != _rows - 1);
                if (emptyData)
                    tableItems.Borders = (tableItems.Borders | DevExpress.XtraPrinting.BorderSide.Bottom) ^ DevExpress.XtraPrinting.BorderSide.Bottom;
                else
                    tableItems.Borders = tableItems.Borders | DevExpress.XtraPrinting.BorderSide.Bottom;
            }
            #endregion
        }
        private void SetTitleInfor()
        {
            this.lbSubTotal.Text = (_langID == "EN") ? "Sub-total:" : "小計:";

        }
        private void SetSubtotalBorder()
        {
            bool isMulti = _poHeader.IsMultiItems;
            ReportFooter.Visible = isMulti;
            //GroupFooter2.Visible = !isMulti;
            //if (!_poHeader.IsMultiItems)
            //{
            //    this.tbSubtotal.Borders = DevExpress.XtraPrinting.BorderSide.All;
            //}
        }
        private void RemoveSpecialSize()
        {
            //if (PO.SupplierDimension == PODimension.ThreeS && !PO.IsSpecialSize)
            //if (PO.FormNo == "4Dsm" || PO.FormNo == "2Dsw" || PO.FormNo == "2Dst" || PO.FormNo == "2Dw" || PO.FormNo == "2Dw")

            //由David修改判條件 2022-04-22
            //string[] FormNos = new string[] { "4D", "2D", "2Dsw", "2Dst" };
            string[] FormNos = new string[] { "2D", "2Dus", "3Dat", "3Daw", "4D" };
            if (FormNos.Contains(PO.FormNo))
            {
                Common.RemoveSpecialSizeCoumn(cellTolence, cellSpecSize, cellCustOrder, cellCustStyle);
                Common.RemoveSpecialSizeCoumn(lbTtlTolence, lbTtlSpecSize, lbTtlCustOrderNo, lbTtlCustStyleNo);
            }
        }
        #endregion


    }
}
