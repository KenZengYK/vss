using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO.Items
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class SubItemsScOReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private System.Windows.Forms.BindingSource bindingSource1;
        private ReportHeaderBand ReportHeader1;
        private XRControlStyle csHeaderSmall;
        private GroupFooterBand GroupFooter4;
        private GroupHeaderBand GroupHeader1;
        private XRTable xrTable7;
        private XRTableRow xrTableRow36;
        private XRTableCell lbTitle1;
        private XRTableCell lbTitle2;
        private XRTableCell xrTableCell72;
        private XRTableRow xrTableRow17;
        private XRTableCell lbItemCode;
        private XRTableCell lbDesc;
        private XRTableCell lbSuppRef;
        private XRTableCell lbWidth;
        private XRTableCell xrTableCell84;
        private XRTable xrTable2;
        private XRTableRow xrTableRow3;
        private XRTableCell lbTitle3;
        private XRTableRow xrTableRow37;
        private XRTableCell lbItemCode2;
        private XRTableCell lbDesc2;
        private XRTableCell lbWidth2;
        private XRTableCell lbQty;
        private XRTableCell lbUnit;
        private XRTable xrTable14;
        private XRTableRow xrTableRow33;
        private XRTableCell xrTableCell121;
        private XRTableCell xrTableCell122;
        private XRTableCell xrTableCell123;
        private XRTableCell tbWidth;
        private XRTableCell xrTableCell124;
        private XRTableCell xrTableCell125;
        private XRTableCell xrTableCell126;
        private XRTableCell xrTableCell127;
        private XRTableCell xrTableCell128;
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
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.ReportHeader1 = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.xrTable7 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow36 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbTitle1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbTitle2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell72 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow17 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbItemCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbDesc = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbSuppRef = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbWidth = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell84 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbTitle3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow37 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbItemCode2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbDesc2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbWidth2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbUnit = new DevExpress.XtraReports.UI.XRTableCell();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GroupFooter4 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable14 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow33 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell121 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell122 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell123 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tbWidth = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell124 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell125 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell126 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell127 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell128 = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable14)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.MainReport_BeforePrint);
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
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // ReportHeader1
            // 
            this.ReportHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable7});
            this.ReportHeader1.Height = 53;
            this.ReportHeader1.Name = "ReportHeader1";
            // 
            // xrTable7
            // 
            this.xrTable7.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable7.Location = new System.Drawing.Point(0, 1);
            this.xrTable7.Name = "xrTable7";
            this.xrTable7.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow36,
            this.xrTableRow17});
            this.xrTable7.Size = new System.Drawing.Size(765, 52);
            this.xrTable7.StyleName = "csDetail";
            this.xrTable7.StylePriority.UseBorders = false;
            this.xrTable7.StylePriority.UseTextAlignment = false;
            this.xrTable7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow36
            // 
            this.xrTableRow36.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbTitle1,
            this.lbTitle2,
            this.xrTableCell72});
            this.xrTableRow36.Name = "xrTableRow36";
            this.xrTableRow36.Size = new System.Drawing.Size(765, 20);
            // 
            // lbTitle1
            // 
            this.lbTitle1.Location = new System.Drawing.Point(0, 0);
            this.lbTitle1.Name = "lbTitle1";
            this.lbTitle1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTitle1.Size = new System.Drawing.Size(347, 20);
            this.lbTitle1.Text = "完成(改變成)之物料品種資料";
            // 
            // lbTitle2
            // 
            this.lbTitle2.BackColor = System.Drawing.Color.Yellow;
            this.lbTitle2.Location = new System.Drawing.Point(347, 0);
            this.lbTitle2.Name = "lbTitle2";
            this.lbTitle2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTitle2.Size = new System.Drawing.Size(135, 20);
            this.lbTitle2.StylePriority.UseBackColor = false;
            this.lbTitle2.Text = "加工工序";
            // 
            // xrTableCell72
            // 
            this.xrTableCell72.Location = new System.Drawing.Point(482, 0);
            this.xrTableCell72.Name = "xrTableCell72";
            this.xrTableCell72.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 2, 0, 0, 100F);
            this.xrTableCell72.Size = new System.Drawing.Size(283, 20);
            this.xrTableCell72.StylePriority.UsePadding = false;
            this.xrTableCell72.StylePriority.UseTextAlignment = false;
            this.xrTableCell72.Text = "[ConvertedItemOperation]";
            this.xrTableCell72.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow17
            // 
            this.xrTableRow17.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbItemCode,
            this.lbDesc,
            this.lbSuppRef,
            this.lbWidth,
            this.xrTableCell84});
            this.xrTableRow17.Name = "xrTableRow17";
            this.xrTableRow17.Size = new System.Drawing.Size(765, 32);
            // 
            // lbItemCode
            // 
            this.lbItemCode.BackColor = System.Drawing.Color.Yellow;
            this.lbItemCode.Location = new System.Drawing.Point(0, 0);
            this.lbItemCode.Multiline = true;
            this.lbItemCode.Name = "lbItemCode";
            this.lbItemCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbItemCode.Size = new System.Drawing.Size(75, 32);
            this.lbItemCode.StylePriority.UseBackColor = false;
            this.lbItemCode.Text = "買方品種編碼";
            // 
            // lbDesc
            // 
            this.lbDesc.Location = new System.Drawing.Point(75, 0);
            this.lbDesc.Name = "lbDesc";
            this.lbDesc.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbDesc.Size = new System.Drawing.Size(107, 32);
            this.lbDesc.Text = "簡明描述";
            // 
            // lbSuppRef
            // 
            this.lbSuppRef.Location = new System.Drawing.Point(182, 0);
            this.lbSuppRef.Multiline = true;
            this.lbSuppRef.Name = "lbSuppRef";
            this.lbSuppRef.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbSuppRef.Size = new System.Drawing.Size(96, 32);
            this.lbSuppRef.Text = "加工廠品種代碼";
            // 
            // lbWidth
            // 
            this.lbWidth.Location = new System.Drawing.Point(278, 0);
            this.lbWidth.Multiline = true;
            this.lbWidth.Name = "lbWidth";
            this.lbWidth.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbWidth.Size = new System.Drawing.Size(69, 32);
            this.lbWidth.StylePriority.UseFont = false;
            this.lbWidth.Text = "封度";
            // 
            // xrTableCell84
            // 
            this.xrTableCell84.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.xrTableCell84.Location = new System.Drawing.Point(347, 0);
            this.xrTableCell84.Name = "xrTableCell84";
            this.xrTableCell84.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell84.Size = new System.Drawing.Size(418, 32);
            this.xrTableCell84.Text = "xrTableCell38";
            // 
            // xrTable2
            // 
            this.xrTable2.Location = new System.Drawing.Point(0, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3,
            this.xrTableRow37});
            this.xrTable2.Size = new System.Drawing.Size(418, 32);
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbTitle3});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(418, 16);
            // 
            // lbTitle3
            // 
            this.lbTitle3.Location = new System.Drawing.Point(0, 0);
            this.lbTitle3.Name = "lbTitle3";
            this.lbTitle3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbTitle3.Size = new System.Drawing.Size(418, 16);
            this.lbTitle3.Text = "進行用之物料品種清單(由買方提供)";
            // 
            // xrTableRow37
            // 
            this.xrTableRow37.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbItemCode2,
            this.lbDesc2,
            this.lbWidth2,
            this.lbQty,
            this.lbUnit});
            this.xrTableRow37.Name = "xrTableRow37";
            this.xrTableRow37.Size = new System.Drawing.Size(418, 16);
            // 
            // lbItemCode2
            // 
            this.lbItemCode2.Location = new System.Drawing.Point(0, 0);
            this.lbItemCode2.Name = "lbItemCode2";
            this.lbItemCode2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbItemCode2.Size = new System.Drawing.Size(75, 16);
            this.lbItemCode2.Text = "品種編碼";
            // 
            // lbDesc2
            // 
            this.lbDesc2.Location = new System.Drawing.Point(75, 0);
            this.lbDesc2.Name = "lbDesc2";
            this.lbDesc2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbDesc2.Size = new System.Drawing.Size(214, 16);
            this.lbDesc2.Text = "簡明描述";
            // 
            // lbWidth2
            // 
            this.lbWidth2.Location = new System.Drawing.Point(289, 0);
            this.lbWidth2.Name = "lbWidth2";
            this.lbWidth2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbWidth2.Size = new System.Drawing.Size(75, 16);
            this.lbWidth2.Text = "封度";
            // 
            // lbQty
            // 
            this.lbQty.Location = new System.Drawing.Point(364, 0);
            this.lbQty.Name = "lbQty";
            this.lbQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbQty.Size = new System.Drawing.Size(30, 16);
            this.lbQty.Text = "數量";
            // 
            // lbUnit
            // 
            this.lbUnit.Location = new System.Drawing.Point(394, 0);
            this.lbUnit.Name = "lbUnit";
            this.lbUnit.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbUnit.Size = new System.Drawing.Size(24, 16);
            this.lbUnit.StylePriority.UsePadding = false;
            this.lbUnit.Text = "單位";
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // GroupFooter4
            // 
            this.GroupFooter4.Height = 0;
            this.GroupFooter4.Name = "GroupFooter4";
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable14});
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ItemCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 24;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // xrTable14
            // 
            this.xrTable14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable14.Location = new System.Drawing.Point(0, 0);
            this.xrTable14.Name = "xrTable14";
            this.xrTable14.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow33});
            this.xrTable14.Size = new System.Drawing.Size(765, 24);
            this.xrTable14.StyleName = "csDetail";
            this.xrTable14.StylePriority.UseBorders = false;
            this.xrTable14.StylePriority.UseTextAlignment = false;
            this.xrTable14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow33
            // 
            this.xrTableRow33.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell121,
            this.xrTableCell122,
            this.xrTableCell123,
            this.tbWidth,
            this.xrTableCell124,
            this.xrTableCell125,
            this.xrTableCell126,
            this.xrTableCell127,
            this.xrTableCell128});
            this.xrTableRow33.Name = "xrTableRow33";
            this.xrTableRow33.Size = new System.Drawing.Size(765, 24);
            // 
            // xrTableCell121
            // 
            this.xrTableCell121.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell121.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell121.Name = "xrTableCell121";
            this.xrTableCell121.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell121.Size = new System.Drawing.Size(75, 24);
            this.xrTableCell121.StylePriority.UseFont = false;
            this.xrTableCell121.StylePriority.UseTextAlignment = false;
            this.xrTableCell121.Text = "[ItemCode]";
            this.xrTableCell121.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell122
            // 
            this.xrTableCell122.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell122.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell122.Name = "xrTableCell122";
            this.xrTableCell122.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell122.Size = new System.Drawing.Size(107, 24);
            this.xrTableCell122.StylePriority.UseFont = false;
            this.xrTableCell122.StylePriority.UseTextAlignment = false;
            this.xrTableCell122.Text = "[CommodityDesc]";
            // 
            // xrTableCell123
            // 
            this.xrTableCell123.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell123.Location = new System.Drawing.Point(182, 0);
            this.xrTableCell123.Name = "xrTableCell123";
            this.xrTableCell123.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell123.Size = new System.Drawing.Size(96, 24);
            this.xrTableCell123.StylePriority.UseFont = false;
            this.xrTableCell123.StylePriority.UseTextAlignment = false;
            this.xrTableCell123.Text = "[SupplierReference]";
            this.xrTableCell123.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tbWidth
            // 
            this.tbWidth.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.tbWidth.Location = new System.Drawing.Point(278, 0);
            this.tbWidth.Name = "tbWidth";
            this.tbWidth.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.tbWidth.Size = new System.Drawing.Size(69, 24);
            this.tbWidth.StylePriority.UseFont = false;
            this.tbWidth.StylePriority.UsePadding = false;
            this.tbWidth.StylePriority.UseTextAlignment = false;
            this.tbWidth.Text = " ";
            this.tbWidth.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell124
            // 
            this.xrTableCell124.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell124.Location = new System.Drawing.Point(347, 0);
            this.xrTableCell124.Multiline = true;
            this.xrTableCell124.Name = "xrTableCell124";
            this.xrTableCell124.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell124.Size = new System.Drawing.Size(75, 24);
            this.xrTableCell124.StylePriority.UseFont = false;
            this.xrTableCell124.StylePriority.UseTextAlignment = false;
            this.xrTableCell124.Text = "[ConvertedItemMaterial]";
            this.xrTableCell124.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell125
            // 
            this.xrTableCell125.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell125.Location = new System.Drawing.Point(422, 0);
            this.xrTableCell125.Multiline = true;
            this.xrTableCell125.Name = "xrTableCell125";
            this.xrTableCell125.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell125.Size = new System.Drawing.Size(214, 24);
            this.xrTableCell125.StylePriority.UseFont = false;
            this.xrTableCell125.StylePriority.UseTextAlignment = false;
            this.xrTableCell125.Text = "[ConvertedItemDesc]";
            this.xrTableCell125.WordWrap = false;
            // 
            // xrTableCell126
            // 
            this.xrTableCell126.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell126.Location = new System.Drawing.Point(636, 0);
            this.xrTableCell126.Multiline = true;
            this.xrTableCell126.Name = "xrTableCell126";
            this.xrTableCell126.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell126.Size = new System.Drawing.Size(75, 24);
            this.xrTableCell126.StylePriority.UseFont = false;
            this.xrTableCell126.StylePriority.UseTextAlignment = false;
            this.xrTableCell126.Text = "[ConvertedItemWidth]";
            this.xrTableCell126.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrTableCell126.WordWrap = false;
            // 
            // xrTableCell127
            // 
            this.xrTableCell127.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell127.Location = new System.Drawing.Point(711, 0);
            this.xrTableCell127.Multiline = true;
            this.xrTableCell127.Name = "xrTableCell127";
            this.xrTableCell127.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell127.Size = new System.Drawing.Size(30, 24);
            this.xrTableCell127.StylePriority.UseFont = false;
            this.xrTableCell127.StylePriority.UseTextAlignment = false;
            this.xrTableCell127.Text = "TBA";
            this.xrTableCell127.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrTableCell127.WordWrap = false;
            // 
            // xrTableCell128
            // 
            this.xrTableCell128.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell128.Location = new System.Drawing.Point(741, 0);
            this.xrTableCell128.Multiline = true;
            this.xrTableCell128.Name = "xrTableCell128";
            this.xrTableCell128.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell128.Size = new System.Drawing.Size(24, 24);
            this.xrTableCell128.StylePriority.UseFont = false;
            this.xrTableCell128.StylePriority.UseTextAlignment = false;
            this.xrTableCell128.Text = "[ConvertedItemUnit]";
            this.xrTableCell128.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // SubItemsScOReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportHeader1,
            this.GroupFooter4,
            this.GroupHeader1});
            this.DataSource = this.bindingSource1;
            this.ExportOptions.PrintPreview.DefaultFileName = "POReport(Multiple items)";
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
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable14)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        #endregion

        #region fields

        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;

        #endregion

        #region Creator

        public SubItemsScOReport()
        {
            InitializeComponent();
        }
        public SubItemsScOReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;
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
                    this.lbWidth.Text = (_langID == "EN") ?
                        ((p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_EN, p.MIDcSpecSize) : Common.Width2D_EN)
                        : ((p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_CN, p.MIDcSpecSizeCN) : Common.Width2D_CN);
                    //this.lblSizeMatrix.Text = (p.IsSpecialSize) ? Common.SpecialSize_CN : Common.Width2D_CN;
                    this.tbWidth.Text = (p.IsSpecialSize) ? "[SpecificSize]" : "[FabricWidth]";
                    //this.lbSpecSize.Text = this.lbSpecSize2.Text = Common.SpecialSize_CN + "\r\n" + Common.PriceDependent_CN;
                    break;
                case PODimension.ThreeR:
                    //this.lblSizeMatrix.Text = 
                    this.lbWidth.Text = (_langID == "EN") ? Common.Width3D_EN : Common.Width3D_CN;
                    this.tbWidth.Text = (_langID == "EN") ? "[SizeRangeEN]" : "[SizeRangeCN]";
                    //this.lbSpecSize.Text = this.lbSpecSize2.Text = Common.Width3D_CN + "\r\n" + Common.PriceDependent_CN;
                    break;
                case PODimension.Four:
                    //this.lblSizeMatrix.Text = 
                    this.lbWidth.Text = (_langID == "EN") ? Common.Width4D_EN : Common.Width4D_CN;
                    this.tbWidth.Text = (_langID == "EN") ? "[SizeRangeEN]" : "[SizeRangeCN]";
                    //this.lbSpecSize.Text = this.lbSpecSize2.Text = Common.Width4D_CN + "\r\n" + Common.PriceDependent_CN;
                    break;
                default:
                    break;
            }
        }
        private void SetTitleInfor(POHeader p)
        {
            this.lbTitle1.Text = (_langID == "EN") ? "Finished (converted) material item(s) information" : "完成(改變成)之物料品種資料"; 
            this.lbItemCode.Text = (_langID == "EN") ? "Our Finished Item Code" : "買方品種編碼";
            this.lbDesc.Text = (_langID == "EN") ? "Brief Desc." : "簡明描述";            
            this.lbSuppRef.Text = (_langID == "EN") ? "Sub-contractor\r\nItem(s) Ref" : "加工廠品種代碼"; 

            this.lbTitle2.Text = (_langID == "EN") ? "Sub-contracting Operation" : "加工工序"; 
            this.lbTitle3.Text = (_langID == "EN") ? "Material item(s) list for processing use (supplied by Buyer)" : "進行用之物料品種清單(由買方提供)"; 
            this.lbItemCode2.Text = (_langID == "EN") ? "Item Code" : "品種編碼"; 
            this.lbDesc2.Text = (_langID == "EN") ? "Brief Desc." : "簡明描述"; 
            this.lbWidth2.Text = (_langID == "EN") ? "Width" : "封度"; 
            this.lbQty.Text = (_langID == "EN") ? "Qty" : "數量";
            this.lbUnit.Text = (_langID == "EN") ? "Unit" : "單位"; 
        }

        #endregion


    }
}
