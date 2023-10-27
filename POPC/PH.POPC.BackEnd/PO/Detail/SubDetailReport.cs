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
    public class SubDetailReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;

        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private DetailReportBand DetailReport1;
        private DetailBand Detail2;
        private GroupHeaderBand GroupHeader1;
        private GroupFooterBand GroupFooter1;
        private GroupHeaderBand GroupHeader3;
        private GroupHeaderBand GroupHeader5;
        private XRLabel lbItemCode;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.BindingSource bindingSource2;
        private GroupFooterBand GroupFooter3;
        private XRControlStyle csHeaderSmall;
        private XRTable tbHeader;
        private XRTableRow xrTableRow11;
        private XRTableCell cellItemCode;
        private XRTableCell lbLine;
        private XRTableCell buyerColorCell;
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
        private XRTable tbTotal;
        private XRTableRow xrTableRow4;
        private XRTableCell lbTotal;
        private XRTableCell cellColor;
        private XRTableCell ttlColorCell;
        private XRTableCell ttlColorShadeCell;
        private XRTableCell cellQty;
        private XRTableCell xrTableCell36;
        private XRTableCell xrTableCell16;
        private XRTableCell cellAmount;
        private XRTableCell cellDeliveryWeek;
        private XRTableCell xrTableCell41;
        private XRTableCell lbTtlTolence;
        private XRTableCell lbTtlSpecSize;
        private XRTableCell lbTtlCustOrderNo;
        private XRTableCell lbTtlCustStyleNo;
        private XRTableCell xrTableCell66;
        private XRTableCell cellProjectNo;
        private XRSubreport subPOItems;
        private XRLabel lbPrjBD;
        private XRLabel lbPONO;
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
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.DetailReport1 = new DevExpress.XtraReports.UI.DetailReportBand();
            this.Detail2 = new DevExpress.XtraReports.UI.DetailBand();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.lbPONO = new DevExpress.XtraReports.UI.XRLabel();
            this.lbPrjBD = new DevExpress.XtraReports.UI.XRLabel();
            this.tbHeader = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellItemCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbLine = new DevExpress.XtraReports.UI.XRTableCell();
            this.buyerColorCell = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.tbTotal = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellColor = new DevExpress.XtraReports.UI.XRTableCell();
            this.ttlColorCell = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.ttlColorShadeCell = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellDeliveryWeek = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell41 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTtlTolence = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTtlSpecSize = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTtlCustOrderNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTtlCustStyleNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell66 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellProjectNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader3 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.subPOItems = new DevExpress.XtraReports.UI.XRSubreport();
            this.lbItemCode = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupFooter3 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            ((System.ComponentModel.ISupportInitialize)(this.tbHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbTotal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
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
            // DetailReport1
            // 
            this.DetailReport1.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail2,
            this.GroupHeader1,
            this.GroupFooter1,
            this.GroupHeader3,
            this.GroupFooter3});
            this.DetailReport1.DataSource = this.bindingSource2;
            this.DetailReport1.Name = "DetailReport1";
            // 
            // Detail2
            // 
            this.Detail2.Height = 0;
            this.Detail2.Name = "Detail2";
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lbPONO,
            this.lbPrjBD,
            this.tbHeader});
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("PONO", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 67;
            this.GroupHeader1.Level = 1;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // lbPONO
            // 
            this.lbPONO.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.lbPONO.Location = new System.Drawing.Point(672, 4);
            this.lbPONO.Name = "lbPONO";
            this.lbPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbPONO.Size = new System.Drawing.Size(91, 20);
            this.lbPONO.StylePriority.UseFont = false;
            this.lbPONO.StylePriority.UseTextAlignment = false;
            this.lbPONO.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // lbPrjBD
            // 
            this.lbPrjBD.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.lbPrjBD.Location = new System.Drawing.Point(0, 0);
            this.lbPrjBD.Name = "lbPrjBD";
            this.lbPrjBD.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbPrjBD.Size = new System.Drawing.Size(670, 27);
            this.lbPrjBD.StylePriority.UseFont = false;
            this.lbPrjBD.StylePriority.UseTextAlignment = false;
            this.lbPrjBD.Text = "按工程號顯示每品種/顏色的數量分配";
            this.lbPrjBD.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tbHeader
            // 
            this.tbHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.tbHeader.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tbHeader.Location = new System.Drawing.Point(0, 27);
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
            this.buyerColorCell,
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
            // buyerColorCell
            // 
            this.buyerColorCell.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.buyerColorCell.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lbColorName,
            this.lbColorCode,
            this.lbColor});
            this.buyerColorCell.Location = new System.Drawing.Point(47, 0);
            this.buyerColorCell.Multiline = true;
            this.buyerColorCell.Name = "buyerColorCell";
            this.buyerColorCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.buyerColorCell.Size = new System.Drawing.Size(130, 40);
            this.buyerColorCell.StylePriority.UseBorders = false;
            this.buyerColorCell.Text = "buyerColorCell";
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
            this.lbSpecSize.Font = new System.Drawing.Font("Arial Unicode MS", 5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
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
            this.lbProject.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbProject.Location = new System.Drawing.Point(707, 0);
            this.lbProject.Multiline = true;
            this.lbProject.Name = "lbProject";
            this.lbProject.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbProject.Size = new System.Drawing.Size(58, 40);
            this.lbProject.StyleName = "csHeaderSmall";
            this.lbProject.StylePriority.UseFont = false;
            this.lbProject.StylePriority.UsePadding = false;
            this.lbProject.Text = "買方工程號";
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.tbTotal});
            this.GroupFooter1.Height = 24;
            this.GroupFooter1.Level = 1;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // tbTotal
            // 
            this.tbTotal.ForeColor = System.Drawing.Color.Blue;
            this.tbTotal.Location = new System.Drawing.Point(0, 2);
            this.tbTotal.Name = "tbTotal";
            this.tbTotal.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.tbTotal.Size = new System.Drawing.Size(765, 20);
            this.tbTotal.StyleName = "csHeader";
            this.tbTotal.StylePriority.UseBackColor = false;
            this.tbTotal.StylePriority.UseBorders = false;
            this.tbTotal.StylePriority.UseForeColor = false;
            this.tbTotal.StylePriority.UseTextAlignment = false;
            this.tbTotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbTotal,
            this.cellColor,
            this.ttlColorCell,
            this.ttlColorShadeCell,
            this.cellQty,
            this.xrTableCell36,
            this.xrTableCell16,
            this.cellAmount,
            this.cellDeliveryWeek,
            this.xrTableCell41,
            this.lbTtlTolence,
            this.lbTtlSpecSize,
            this.lbTtlCustOrderNo,
            this.lbTtlCustStyleNo,
            this.xrTableCell66,
            this.cellProjectNo});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(765, 20);
            // 
            // lbTotal
            // 
            this.lbTotal.CanGrow = false;
            this.lbTotal.Location = new System.Drawing.Point(0, 0);
            this.lbTotal.Multiline = true;
            this.lbTotal.Name = "lbTotal";
            this.lbTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbTotal.Size = new System.Drawing.Size(47, 20);
            this.lbTotal.StylePriority.UseBorders = false;
            this.lbTotal.StylePriority.UseFont = false;
            this.lbTotal.StylePriority.UsePadding = false;
            this.lbTotal.Text = "總計:";
            // 
            // cellColor
            // 
            this.cellColor.CanGrow = false;
            this.cellColor.Location = new System.Drawing.Point(47, 0);
            this.cellColor.Multiline = true;
            this.cellColor.Name = "cellColor";
            this.cellColor.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellColor.Size = new System.Drawing.Size(25, 20);
            this.cellColor.StylePriority.UseBorders = false;
            this.cellColor.StylePriority.UsePadding = false;
            this.cellColor.StylePriority.UseTextAlignment = false;
            // 
            // ttlColorCell
            // 
            this.ttlColorCell.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.ttlColorCell.CanGrow = false;
            this.ttlColorCell.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "ColorCode", "")});
            this.ttlColorCell.Location = new System.Drawing.Point(72, 0);
            this.ttlColorCell.Multiline = true;
            this.ttlColorCell.Name = "ttlColorCell";
            this.ttlColorCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.ttlColorCell.Size = new System.Drawing.Size(105, 20);
            this.ttlColorCell.StylePriority.UseBorders = false;
            xrSummary1.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary1.IgnoreNullValues = true;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.ttlColorCell.Summary = xrSummary1;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // ttlColorShadeCell
            // 
            this.ttlColorShadeCell.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.ttlColorShadeCell.CanGrow = false;
            this.ttlColorShadeCell.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SupplierColorShade", "")});
            this.ttlColorShadeCell.Location = new System.Drawing.Point(177, 0);
            this.ttlColorShadeCell.Multiline = true;
            this.ttlColorShadeCell.Name = "ttlColorShadeCell";
            this.ttlColorShadeCell.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.ttlColorShadeCell.Size = new System.Drawing.Size(61, 20);
            this.ttlColorShadeCell.StylePriority.UseBorders = false;
            xrSummary2.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary2.IgnoreNullValues = true;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.ttlColorShadeCell.Summary = xrSummary2;
            // 
            // cellQty
            // 
            this.cellQty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty.CanGrow = false;
            this.cellQty.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SupplierPOQty", "")});
            this.cellQty.Location = new System.Drawing.Point(238, 0);
            this.cellQty.Name = "cellQty";
            this.cellQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellQty.Size = new System.Drawing.Size(40, 20);
            this.cellQty.StylePriority.UseBorders = false;
            this.cellQty.StylePriority.UsePadding = false;
            this.cellQty.StylePriority.UseTextAlignment = false;
            xrSummary3.FormatString = "{0:#,0.##}";
            xrSummary3.IgnoreNullValues = true;
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellQty.Summary = xrSummary3;
            this.cellQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.CanGrow = false;
            this.xrTableCell36.Location = new System.Drawing.Point(278, 0);
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(21, 20);
            this.xrTableCell36.StylePriority.UsePadding = false;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.CanGrow = false;
            this.xrTableCell16.Location = new System.Drawing.Point(299, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(40, 20);
            this.xrTableCell16.StylePriority.UsePadding = false;
            // 
            // cellAmount
            // 
            this.cellAmount.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellAmount.CanGrow = false;
            this.cellAmount.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SuppAmount", "")});
            this.cellAmount.Location = new System.Drawing.Point(339, 0);
            this.cellAmount.Multiline = true;
            this.cellAmount.Name = "cellAmount";
            this.cellAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.cellAmount.Size = new System.Drawing.Size(63, 20);
            this.cellAmount.StylePriority.UseBorders = false;
            this.cellAmount.StylePriority.UsePadding = false;
            this.cellAmount.StylePriority.UseTextAlignment = false;
            xrSummary4.FormatString = "{0:N2}";
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellAmount.Summary = xrSummary4;
            this.cellAmount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellDeliveryWeek
            // 
            this.cellDeliveryWeek.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellDeliveryWeek.CanGrow = false;
            this.cellDeliveryWeek.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "DeliveryWeek", "")});
            this.cellDeliveryWeek.Location = new System.Drawing.Point(402, 0);
            this.cellDeliveryWeek.Multiline = true;
            this.cellDeliveryWeek.Name = "cellDeliveryWeek";
            this.cellDeliveryWeek.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellDeliveryWeek.Size = new System.Drawing.Size(74, 20);
            this.cellDeliveryWeek.StylePriority.UseBorders = false;
            this.cellDeliveryWeek.StylePriority.UsePadding = false;
            xrSummary5.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary5.IgnoreNullValues = true;
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellDeliveryWeek.Summary = xrSummary5;
            // 
            // xrTableCell41
            // 
            this.xrTableCell41.Location = new System.Drawing.Point(476, 0);
            this.xrTableCell41.Name = "xrTableCell41";
            this.xrTableCell41.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell41.Size = new System.Drawing.Size(2, 20);
            this.xrTableCell41.StylePriority.UseBorders = false;
            // 
            // lbTtlTolence
            // 
            this.lbTtlTolence.CanGrow = false;
            this.lbTtlTolence.Location = new System.Drawing.Point(478, 0);
            this.lbTtlTolence.Multiline = true;
            this.lbTtlTolence.Name = "lbTtlTolence";
            this.lbTtlTolence.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbTtlTolence.Size = new System.Drawing.Size(26, 20);
            this.lbTtlTolence.StylePriority.UsePadding = false;
            // 
            // lbTtlSpecSize
            // 
            this.lbTtlSpecSize.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbTtlSpecSize.CanGrow = false;
            this.lbTtlSpecSize.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "ItemSize", "")});
            this.lbTtlSpecSize.Location = new System.Drawing.Point(504, 0);
            this.lbTtlSpecSize.Multiline = true;
            this.lbTtlSpecSize.Name = "lbTtlSpecSize";
            this.lbTtlSpecSize.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbTtlSpecSize.Size = new System.Drawing.Size(65, 20);
            this.lbTtlSpecSize.StylePriority.UseBorders = false;
            this.lbTtlSpecSize.StylePriority.UsePadding = false;
            xrSummary6.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lbTtlSpecSize.Summary = xrSummary6;
            this.lbTtlSpecSize.Text = "lbTtlSpecSize";
            this.lbTtlSpecSize.SummaryCalculated += new DevExpress.XtraReports.UI.TextFormatEventHandler(this.lbTtlSpecSize_SummaryCalculated);
            // 
            // lbTtlCustOrderNo
            // 
            this.lbTtlCustOrderNo.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbTtlCustOrderNo.CanGrow = false;
            this.lbTtlCustOrderNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "EndCustOrderNo", "")});
            this.lbTtlCustOrderNo.Location = new System.Drawing.Point(569, 0);
            this.lbTtlCustOrderNo.Multiline = true;
            this.lbTtlCustOrderNo.Name = "lbTtlCustOrderNo";
            this.lbTtlCustOrderNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbTtlCustOrderNo.Size = new System.Drawing.Size(50, 20);
            this.lbTtlCustOrderNo.StylePriority.UseBorders = false;
            this.lbTtlCustOrderNo.StylePriority.UsePadding = false;
            xrSummary7.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary7.IgnoreNullValues = true;
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lbTtlCustOrderNo.Summary = xrSummary7;
            // 
            // lbTtlCustStyleNo
            // 
            this.lbTtlCustStyleNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbTtlCustStyleNo.CanGrow = false;
            this.lbTtlCustStyleNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "EndCustStyleNo", "")});
            this.lbTtlCustStyleNo.Location = new System.Drawing.Point(619, 0);
            this.lbTtlCustStyleNo.Multiline = true;
            this.lbTtlCustStyleNo.Name = "lbTtlCustStyleNo";
            this.lbTtlCustStyleNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbTtlCustStyleNo.Size = new System.Drawing.Size(50, 20);
            this.lbTtlCustStyleNo.StylePriority.UseBorders = false;
            this.lbTtlCustStyleNo.StylePriority.UsePadding = false;
            xrSummary8.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary8.IgnoreNullValues = true;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.lbTtlCustStyleNo.Summary = xrSummary8;
            // 
            // xrTableCell66
            // 
            this.xrTableCell66.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell66.CanGrow = false;
            this.xrTableCell66.Location = new System.Drawing.Point(669, 0);
            this.xrTableCell66.Name = "xrTableCell66";
            this.xrTableCell66.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell66.Size = new System.Drawing.Size(38, 20);
            this.xrTableCell66.StylePriority.UseBorders = false;
            // 
            // cellProjectNo
            // 
            this.cellProjectNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellProjectNo.CanGrow = false;
            this.cellProjectNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "ProjectNO", "")});
            this.cellProjectNo.Location = new System.Drawing.Point(707, 0);
            this.cellProjectNo.Multiline = true;
            this.cellProjectNo.Name = "cellProjectNo";
            this.cellProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellProjectNo.Size = new System.Drawing.Size(58, 20);
            this.cellProjectNo.StylePriority.UseBorders = false;
            this.cellProjectNo.StylePriority.UsePadding = false;
            xrSummary9.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary9.IgnoreNullValues = true;
            xrSummary9.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellProjectNo.Summary = xrSummary9;
            // 
            // GroupHeader3
            // 
            this.GroupHeader3.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.subPOItems,
            this.lbItemCode});
            this.GroupHeader3.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ItemCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader3.Height = 22;
            this.GroupHeader3.Name = "GroupHeader3";
            this.GroupHeader3.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader3_BeforePrint);
            // 
            // subPOItems
            // 
            this.subPOItems.Location = new System.Drawing.Point(26, 0);
            this.subPOItems.Name = "subPOItems";
            this.subPOItems.Size = new System.Drawing.Size(739, 22);
            // 
            // lbItemCode
            // 
            this.lbItemCode.Angle = 90F;
            this.lbItemCode.BackColor = System.Drawing.Color.Yellow;
            this.lbItemCode.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbItemCode.Location = new System.Drawing.Point(0, 0);
            this.lbItemCode.Name = "lbItemCode";
            this.lbItemCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbItemCode.Size = new System.Drawing.Size(26, 22);
            this.lbItemCode.StyleName = "csDetail";
            this.lbItemCode.StylePriority.UseBackColor = false;
            this.lbItemCode.StylePriority.UseBorders = false;
            this.lbItemCode.StylePriority.UseTextAlignment = false;
            this.lbItemCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // GroupFooter3
            // 
            this.GroupFooter3.Height = 0;
            this.GroupFooter3.Name = "GroupFooter3";
            // 
            // bindingSource2
            // 
            this.bindingSource2.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // SubDetailReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.DetailReport1});
            this.DataSource = this.bindingSource2;
            this.ExportOptions.PrintPreview.DefaultFileName = "POReport(Multiple items)";
            this.Font = new System.Drawing.Font("Times New Roman", 9.75F);
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 20, 20);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csDetail,
            this.csHeaderSmall});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.MainReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.tbHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tbTotal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        #endregion

        #region fields

        //private int TotalSizeMatrix;

        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;

        XtraReport _reportItems;
        XtraReport _reportItemsSum;
        int _itemCount, _itemRows;

        private POHeader _po;
        private POHeader PO
        {
            get { return _po; }
            set
            {
                _po = value; RemoveSpecialSize();
                if (_po != null) this.lbPONO.Text = string.Format("{0}-{1}", _po.PONO, _po.Dept);
            }
        }
        #endregion

        #region Creator

        public SubDetailReport()
        {
            InitializeComponent();
        }
        public SubDetailReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID, POHeader po)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;
            PO = po;

        }

        #endregion

        #region Event

        private void MainReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POColorSizeDetail c = this.GetCurrentRow() as POColorSizeDetail;
            if (c == null) return;
            POHeader p = c.PODetail.POHeader;
            if (p == null) return;

            SetTitleInfor(p);
            SetWidthSpecialSize(p);

            IEnumerable<POColorSizeDetail> aa = this.DataSource as IEnumerable<POColorSizeDetail>;
            this.DetailReport1.DataSource = null;
            this.DetailReport1.DataSource = aa;

            this.DataSource = null;


            var bb = (from a in aa
                      select new { ItemCode = a.ItemCode }).Distinct();

            _itemCount = bb.Count();
            _itemRows = Common.GetPOReportRowCount(p) / _itemCount;
            Common.SetPOReportSizeOfPageOne(p, lbColorShade, buyerColorCell, lbColor, lbColorName, ttlColorCell, ttlColorShadeCell);

            //this.lbItemCode.Height = _itemRows * Common.GetPOReportRowHeight(p);

            if (p.IsMultiItems)
                this.lbItemCode.Height = _itemRows * Common.GetPOReportRowHeight(p);
            else
                this.lbItemCode.Height = (_itemRows - 1) * Common.GetPOReportRowHeight(p);

            _reportItems = new SubDetailItemsReport(p, _langID, _itemRows);
            this.subPOItems.ReportSource = _reportItems;

            BingdingTotalCell();

            ////由David加入 2022-04-15
            //TotalSizeMatrix = aa.Select(o => new { o.ColorCode, o.SizeCode, o.FitCode }).Distinct().Count();

        }
        private void GroupHeader3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POColorSizeDetail c = this.DetailReport1.GetCurrentRow() as POColorSizeDetail;
            if (c == null) return;

            this.lbItemCode.Text = c.ItemCode;

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            var aa = from a in context.POColorSizeDetails
                     where a.PONO == c.PONO && a.Company == c.Company && a.Version == c.Version && a.AmendmentNo == c.AmendmentNo && a.ItemCode == c.ItemCode
                     select a;


            var bb = (from a in aa
                      select new { OrderLine = a.OrderLine, ColorCode = a.ColorCode, Price = a.Price }).Distinct();


            System.Windows.Forms.BindingSource bs = new System.Windows.Forms.BindingSource();
            bs.DataSource = aa;

            //add blank row
            for (int i = bb.Count(); i < _itemRows - 1; i++)
            {
                object obj = bs.AddNew();

                POColorSizeDetail c1 = obj as POColorSizeDetail;
                c1.Company = c.Company;
                c1.PONO = c.PONO;
                c1.Version = c.Version;
                c1.AmendmentNo = c.AmendmentNo;
                c1.OrderLine = 100 + i;
                c1.ColorCode = PH.POPC.BO.Common.VirtualColorCode;
                c1.SKU = c.SKU;
                c1.ItemCode = c.ItemCode;
                c1.Price = 10000000 + i;
                //dd.PODetail = d.PODetail;

            }
            this._reportItems.DataSource = null;
            this._reportItems.DataSource = bs;
        }

        #endregion

        #region Functions

        private void SetWidthSpecialSize(POHeader p)
        {
            if (p == null) return;

            switch (p.SupplierDimension)
            {
                case PODimension.None:
                    break;
                case PODimension.One:
                    break;
                case PODimension.ThreeS:
                    //this.lbWidth.Text = (p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_CN, p.MIDcSpecSize) : Common.Width2D_CN;
                    //this.lblSizeMatrix.Text = (p.IsSpecialSize) ? Common.SpecialSize_CN : Common.Width2D_CN;
                    //this.tbWidth.Text = (p.IsSpecialSize) ? "[SpecificSize]" : "[FabricWidth]";
                    this.lbSpecSize.Text = (_langID == "EN") ? Common.SpecialSize_EN + "\r\n" + Common.PriceDependent_EN : Common.SpecialSize_CN + "\r\n" + Common.PriceDependent_CN;

                    //if (!p.IsSpecialSize)
                    //{
                    //    Common.RemoveSpecialSizeCoumn(lbTolence, lbSpecSize, lbCustOrder, lbCustStyle);
                    //    Common.RemoveSpecialSizeCoumn(lbTtlTolence, lbTtlSpecSize, lbTtlCustOrderNo, lbTtlCustStyleNo);
                    //}
                    break;
                case PODimension.ThreeR:
                    //this.lblSizeMatrix.Text = this.lbWidth.Text = Common.Width3D_CN;
                    //this.tbWidth.Text = "[SizeRangeCN]";
                    this.lbSpecSize.Text = (_langID == "EN") ? Common.Width3D_EN + "\r\n" + Common.PriceDependent_EN : Common.Width3D_CN + "\r\n" + Common.PriceDependent_CN;
                    break;
                case PODimension.Four:
                    //this.lblSizeMatrix.Text = this.lbWidth.Text = Common.Width4D_CN;
                    this.lbSpecSize.Text = (_langID == "EN") ? Common.Width4D_EN + "\r\n" + Common.PriceDependent_EN : Common.Width4D_CN + "\r\n" + Common.PriceDependent_CN;
                    //this.tbWidth.Text = "[SizeRangeCN]";
                    break;
                default:
                    break;
            }
        }
        private void SetTitleInfor(POHeader p)
        {
            this.lbPrjBD.Text = (_langID == "EN") ? "Qty breakdown for Item/ Color (by Project#)"
                : "每品種/ 顏色的數量分配（按工程號顯示）";

            this.cellItemCode.Text = (_langID == "EN") ? "Our\r\nItem\r\nCode" : "買方品種編碼";
            this.lbLine.Text = (_langID == "EN") ? "Line\r\n#" : "行號";
            this.lbColor.Text = (_langID == "EN") ? "Our Item Color" : "買方品種顏色";
            this.lbColorCode.Text = (_langID == "EN") ? "Code" : "編號";
            this.lbColorName.Text = (_langID == "EN") ? "Name" : "名稱";
            this.lbColorShade.Text = (_langID == "EN") ? "Supp Item\r\nColor  Shade" : "供應商\r\n品種色影";
            this.lbQty.Text = (_langID == "EN") ? "Qty" : "數量";
            this.lbUnit.Text = (_langID == "EN") ? "Unit" : "單位";
            this.lbPrice.Text = (_langID == "EN") ? "Unit Price\r\n([Currency])" : "單價\r\n([Currency])";
            this.lbAmount.Text = (_langID == "EN") ? "Amount\r\n([Currency])" : "總金額\r\n([Currency])";
            this.lbDeliveryDate.Text = (_langID == "EN") ? "Delivery Date\r\n(Week)" : "交貨日期 (#週) ";
            this.lbRemark1.Text = (_langID == "EN") ? "(see Notepad 1)" : "(備注一)";
            this.lbTolence.Text = (_langID == "EN") ? "Shpt\r\nTolr\r\n(+/-)%" : "付運\r\n寬容率\r\n(+/-)%";
            //this.lbSpecSize.Text = (_langID=="EN") ? "Specific\r\nSize/Size Range" : "指定的\r\n尺寸大小\r\n/尺寸大小範圍";
            this.lbCustOrder.Text = (_langID == "EN") ? "End Cust\r\nOrder No\r\n(if any)" : "終端客戶\r\n訂單號\r\n(若有資料)";
            this.lbCustStyle.Text = (_langID == "EN") ? "End Cust\r\nStyle" : "終端客戶\r\n款號";
            this.lbGmtColor.Text = (_langID == "EN") ? "Garment\r\nColor code\r\n(for ref)" : "成衣顏色\r\n代號\r\n(作參考用)";
            this.lbProject.Text = (_langID == "EN") ? "Our\r\nProj#" : "買方工程號";
            this.lbTotal.Text = (_langID == "EN") ? "Total:" : "總計:";

            //this.lbSuppCert.Text = (_langID == "EN") ? "Confirmed & Accepted by:" : "確認及同意:";
            //this.lbAuth.Text = (_langID == "EN") ? "Authorized Signature" : "授權人簽署";

            //this.lbNotepad.Text = see SetNotepad
        }

        private void RemoveSpecialSize()
        {
            //if (PO.SupplierDimension == PODimension.ThreeS && !PO.IsSpecialSize)

            //由David修改判條件 2022-04-22
            //if (PO.FormNo == "4Dsm" || PO.FormNo == "2Dsw" || PO.FormNo == "2Dst" || PO.FormNo == "2Dw" || PO.FormNo == "2Dw")
            //string[] FormNos = new string[] { "4D", "2D", "2Dsw", "2Dst" };
            string[] FormNos = new string[] { "2D", "2Dus", "3Dat", "3Daw", "4D" };
            if (FormNos.Contains(PO.FormNo))
            {
                Common.RemoveSpecialSizeCoumn(lbTolence, lbSpecSize, lbCustOrder, lbCustStyle);
                Common.RemoveSpecialSizeCoumn(lbTtlTolence, lbTtlSpecSize, lbTtlCustOrderNo, lbTtlCustStyleNo);
            }
        }
        #endregion

        #region Bingding Cell
        private void BingdingTotalCell()
        {
            DataBingdingCell(ttlColorCell, "ColorCode");
            DataBingdingCell(ttlColorShadeCell, "SupplierColorShade");
            DataBingdingCell(cellQty, "SupplierPOQty");
            DataBingdingCell(cellAmount, "SuppAmount");
            DataBingdingCell(cellDeliveryWeek, "DeliveryWeek");
            DataBingdingCell(lbTtlSpecSize, "ItemSize");
            DataBingdingCell(lbTtlCustOrderNo, "EndCustOrderNo");
            DataBingdingCell(lbTtlCustStyleNo, "EndCustStyleNo");
            DataBingdingCell(cellProjectNo, "ProjectNO");
        }
        private void DataBingdingCell(XRTableCell cell, string dataMemenber)
        {
            cell.DataBindings.Clear();
            cell.DataBindings.Add(new XRBinding("Text", this.DetailReport1.DataSource, dataMemenber));
        }
        #endregion

        private void lbTtlSpecSize_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            // e.Text = TotalSizeMatrix.ToString();
        }
    }
}
