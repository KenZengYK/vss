using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;
using PH.Platform.BO;
using PH.BasicInfo.BO;

namespace PH.POPC.BackEnd.PO.Items
{
    /// <summary>
    /// Summary description for pcnReport
    /// 按王生的要求，中文版和英文的格式不同，所以单独增加这份中文版的报表，由David增加 2022-03-26
    /// </summary>
    public class SubItemsPOReport_CN : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private System.Windows.Forms.BindingSource bindingSource1;
        private ReportHeaderBand ReportHeader1;
        private XRControlStyle csHeaderSmall;
        private XRTable xrTable7;
        private XRTableRow xrTableRow17;
        private XRTableCell lbItemCode;
        private XRTableCell lbSuppRef;
        private XRTableCell lbWidth;
        private XRTableCell lbDesc;
        private XRTable xrTable2;
        private XRTableRow xrTableRow3;
        private XRTableCell xrTableCell82;
        private XRTableCell xrTableCell83;
        private XRTableCell tbWidth;
        private XRTableCell xrTableCell84;
        private GroupHeaderBand GroupHeader1;
        private XRTableCell tblCell_HSMaterialName;
        private XRTableCell xrTableCell3;
        private XRTable xrTable1;
        private XRTableRow xrTableRow1;
        private XRTableCell xrTableCell8;
        private XRTableCell xrTableCell9;
        private XRTableRow xrTableRow2;
        private XRTableCell xrTableCell4;
        private XRTableCell xrTableCell5;
        private XRLine xrLine1;
        private XRLine xrLine2;
        private ReportFooterBand ReportFooter;
        private XRLine xrLine3;
        private XRLine xrLine5;
        private XRLine xrLine6;
        private XRLine xrLine4;
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
            this.xrTable7 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow17 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbItemCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbSuppRef = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbWidth = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbDesc = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLine6 = new DevExpress.XtraReports.UI.XRLine();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell82 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell83 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tbWidth = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell84 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tblCell_HSMaterialName = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLine4 = new DevExpress.XtraReports.UI.XRLine();
            this.ReportHeader1 = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.xrLine3 = new DevExpress.XtraReports.UI.XRLine();
            this.xrLine1 = new DevExpress.XtraReports.UI.XRLine();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrLine2 = new DevExpress.XtraReports.UI.XRLine();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrLine5 = new DevExpress.XtraReports.UI.XRLine();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
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
            // xrTable7
            // 
            this.xrTable7.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable7.Location = new System.Drawing.Point(0, 0);
            this.xrTable7.Name = "xrTable7";
            this.xrTable7.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow17});
            this.xrTable7.Size = new System.Drawing.Size(593, 30);
            this.xrTable7.StyleName = "csDetail";
            this.xrTable7.StylePriority.UseBorders = false;
            this.xrTable7.StylePriority.UseTextAlignment = false;
            this.xrTable7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow17
            // 
            this.xrTableRow17.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbItemCode,
            this.lbSuppRef,
            this.lbWidth,
            this.lbDesc});
            this.xrTableRow17.Name = "xrTableRow17";
            this.xrTableRow17.Size = new System.Drawing.Size(593, 30);
            // 
            // lbItemCode
            // 
            this.lbItemCode.BackColor = System.Drawing.Color.Yellow;
            this.lbItemCode.BorderWidth = 1;
            this.lbItemCode.Location = new System.Drawing.Point(0, 0);
            this.lbItemCode.Name = "lbItemCode";
            this.lbItemCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbItemCode.Size = new System.Drawing.Size(75, 30);
            this.lbItemCode.StylePriority.UseBackColor = false;
            this.lbItemCode.StylePriority.UseBorderWidth = false;
            this.lbItemCode.Text = "買方品種編碼";
            // 
            // lbSuppRef
            // 
            this.lbSuppRef.Location = new System.Drawing.Point(75, 0);
            this.lbSuppRef.Name = "lbSuppRef";
            this.lbSuppRef.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbSuppRef.Size = new System.Drawing.Size(154, 30);
            this.lbSuppRef.Text = "供應商品種代碼";
            // 
            // lbWidth
            // 
            this.lbWidth.Location = new System.Drawing.Point(229, 0);
            this.lbWidth.Multiline = true;
            this.lbWidth.Name = "lbWidth";
            this.lbWidth.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbWidth.Size = new System.Drawing.Size(100, 30);
            this.lbWidth.Text = "封度";
            // 
            // lbDesc
            // 
            this.lbDesc.Location = new System.Drawing.Point(329, 0);
            this.lbDesc.Name = "lbDesc";
            this.lbDesc.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbDesc.Size = new System.Drawing.Size(264, 30);
            this.lbDesc.StylePriority.UseTextAlignment = false;
            this.lbDesc.Text = "供應商之商品英文名稱";
            // 
            // xrLine6
            // 
            this.xrLine6.BorderWidth = 2;
            this.xrLine6.LineDirection = DevExpress.XtraReports.UI.LineDirection.Vertical;
            this.xrLine6.LineWidth = 2;
            this.xrLine6.Location = new System.Drawing.Point(0, 0);
            this.xrLine6.Name = "xrLine6";
            this.xrLine6.Size = new System.Drawing.Size(2, 30);
            this.xrLine6.StylePriority.UseBorderWidth = false;
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.Location = new System.Drawing.Point(0, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(765, 24);
            this.xrTable2.StyleName = "csDetail";
            this.xrTable2.StylePriority.UseBorders = false;
            this.xrTable2.StylePriority.UseTextAlignment = false;
            this.xrTable2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell82,
            this.xrTableCell83,
            this.tbWidth,
            this.xrTableCell84,
            this.xrTableCell3,
            this.tblCell_HSMaterialName});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(765, 24);
            // 
            // xrTableCell82
            // 
            this.xrTableCell82.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell82.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell82.Name = "xrTableCell82";
            this.xrTableCell82.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell82.Size = new System.Drawing.Size(75, 24);
            this.xrTableCell82.StylePriority.UseBorders = false;
            this.xrTableCell82.StylePriority.UseFont = false;
            this.xrTableCell82.StylePriority.UseTextAlignment = false;
            this.xrTableCell82.Text = "[ItemCode]";
            this.xrTableCell82.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell83
            // 
            this.xrTableCell83.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell83.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell83.Name = "xrTableCell83";
            this.xrTableCell83.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell83.Size = new System.Drawing.Size(154, 24);
            this.xrTableCell83.StylePriority.UseBorders = false;
            this.xrTableCell83.StylePriority.UseTextAlignment = false;
            this.xrTableCell83.Text = "[SupplierReference]";
            this.xrTableCell83.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tbWidth
            // 
            this.tbWidth.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tbWidth.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F);
            this.tbWidth.Location = new System.Drawing.Point(229, 0);
            this.tbWidth.Name = "tbWidth";
            this.tbWidth.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tbWidth.Size = new System.Drawing.Size(100, 24);
            this.tbWidth.StylePriority.UseBorders = false;
            this.tbWidth.StylePriority.UseFont = false;
            this.tbWidth.StylePriority.UseTextAlignment = false;
            this.tbWidth.Text = " ";
            this.tbWidth.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell84
            // 
            this.xrTableCell84.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell84.CanGrow = false;
            this.xrTableCell84.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell84.Location = new System.Drawing.Point(329, 0);
            this.xrTableCell84.Name = "xrTableCell84";
            this.xrTableCell84.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell84.Size = new System.Drawing.Size(264, 24);
            this.xrTableCell84.StylePriority.UseBorders = false;
            this.xrTableCell84.StylePriority.UseFont = false;
            this.xrTableCell84.Text = "[CommodityDesc]";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell3.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "CustomHSCode", "")});
            this.xrTableCell3.Location = new System.Drawing.Point(593, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(66, 24);
            this.xrTableCell3.StylePriority.UseBorders = false;
            // 
            // tblCell_HSMaterialName
            // 
            this.tblCell_HSMaterialName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.tblCell_HSMaterialName.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "HSMaterialName", "")});
            this.tblCell_HSMaterialName.Location = new System.Drawing.Point(659, 0);
            this.tblCell_HSMaterialName.Multiline = true;
            this.tblCell_HSMaterialName.Name = "tblCell_HSMaterialName";
            this.tblCell_HSMaterialName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tblCell_HSMaterialName.Size = new System.Drawing.Size(106, 24);
            this.tblCell_HSMaterialName.StylePriority.UseBorders = false;
            this.tblCell_HSMaterialName.StylePriority.UsePadding = false;
            this.tblCell_HSMaterialName.StylePriority.UseTextAlignment = false;
            this.tblCell_HSMaterialName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.tblCell_HSMaterialName.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.tblCell_HSMaterialName_BeforePrint);
            // 
            // xrLine4
            // 
            this.xrLine4.BorderWidth = 2;
            this.xrLine4.LineDirection = DevExpress.XtraReports.UI.LineDirection.Vertical;
            this.xrLine4.LineWidth = 2;
            this.xrLine4.Location = new System.Drawing.Point(0, 0);
            this.xrLine4.Name = "xrLine4";
            this.xrLine4.Size = new System.Drawing.Size(2, 24);
            this.xrLine4.StylePriority.UseBorderWidth = false;
            // 
            // ReportHeader1
            // 
            this.ReportHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLine6,
            this.xrLine3,
            this.xrLine1,
            this.xrTable1,
            this.xrTable7});
            this.ReportHeader1.Height = 30;
            this.ReportHeader1.Name = "ReportHeader1";
            // 
            // xrLine3
            // 
            this.xrLine3.BorderWidth = 2;
            this.xrLine3.LineDirection = DevExpress.XtraReports.UI.LineDirection.Vertical;
            this.xrLine3.LineWidth = 2;
            this.xrLine3.Location = new System.Drawing.Point(764, 0);
            this.xrLine3.Name = "xrLine3";
            this.xrLine3.Size = new System.Drawing.Size(2, 30);
            this.xrLine3.StylePriority.UseBorderWidth = false;
            // 
            // xrLine1
            // 
            this.xrLine1.BorderWidth = 2;
            this.xrLine1.Location = new System.Drawing.Point(0, 0);
            this.xrLine1.Name = "xrLine1";
            this.xrLine1.Size = new System.Drawing.Size(766, 2);
            this.xrLine1.StylePriority.UseBorderWidth = false;
            // 
            // xrTable1
            // 
            this.xrTable1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable1.Location = new System.Drawing.Point(593, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow2});
            this.xrTable1.Size = new System.Drawing.Size(172, 30);
            this.xrTable1.StyleName = "csDetail";
            this.xrTable1.StylePriority.UseBorders = false;
            this.xrTable1.StylePriority.UseTextAlignment = false;
            this.xrTable1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell8,
            this.xrTableCell9});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(172, 16);
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell8.CanGrow = false;
            this.xrTableCell8.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(66, 16);
            this.xrTableCell8.StylePriority.UseBorders = false;
            this.xrTableCell8.StylePriority.UseTextAlignment = false;
            this.xrTableCell8.Text = "海關商品編碼\r\n";
            this.xrTableCell8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            this.xrTableCell8.WordWrap = false;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell9.CanGrow = false;
            this.xrTableCell9.Location = new System.Drawing.Point(66, 0);
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(106, 16);
            this.xrTableCell9.StylePriority.UseBorders = false;
            this.xrTableCell9.StylePriority.UseTextAlignment = false;
            this.xrTableCell9.Text = "税票用之海關商品名稱\r\n";
            this.xrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            this.xrTableCell9.WordWrap = false;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell4,
            this.xrTableCell5});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(172, 14);
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell4.CanGrow = false;
            this.xrTableCell4.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell4.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(66, 14);
            this.xrTableCell4.StylePriority.UseBorders = false;
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            this.xrTableCell4.Text = "(HS Cde)";
            this.xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            this.xrTableCell4.WordWrap = false;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.CanGrow = false;
            this.xrTableCell5.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell5.Location = new System.Drawing.Point(66, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(106, 14);
            this.xrTableCell5.StylePriority.UseFont = false;
            this.xrTableCell5.StylePriority.UseTextAlignment = false;
            this.xrTableCell5.Text = "(max.10 CHN words)";
            this.xrTableCell5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            this.xrTableCell5.WordWrap = false;
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // xrLine2
            // 
            this.xrLine2.BorderWidth = 2;
            this.xrLine2.LineWidth = 2;
            this.xrLine2.Location = new System.Drawing.Point(0, 0);
            this.xrLine2.Name = "xrLine2";
            this.xrLine2.Size = new System.Drawing.Size(766, 2);
            this.xrLine2.StylePriority.UseBorderWidth = false;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLine4,
            this.xrLine5,
            this.xrTable2});
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ItemCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 24;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // xrLine5
            // 
            this.xrLine5.BorderWidth = 2;
            this.xrLine5.LineDirection = DevExpress.XtraReports.UI.LineDirection.Vertical;
            this.xrLine5.LineWidth = 2;
            this.xrLine5.Location = new System.Drawing.Point(764, 0);
            this.xrLine5.Name = "xrLine5";
            this.xrLine5.Size = new System.Drawing.Size(2, 24);
            this.xrLine5.StylePriority.UseBorderWidth = false;
            // 
            // ReportFooter
            // 
            this.ReportFooter.BorderWidth = 2;
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLine2});
            this.ReportFooter.Height = 2;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.StylePriority.UseBorderWidth = false;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // SubItemsPOReport_CN
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportHeader1,
            this.GroupHeader1,
            this.ReportFooter});
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
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
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

        public SubItemsPOReport_CN()
        {
            InitializeComponent();
        }
        public SubItemsPOReport_CN(bool isPHCopy, bool isVatPrint, bool isScO, string langID)
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

            ////Xsj:如果是非人民幣結算的供應商，則不顯示海關物料名稱。
            //if (p.SupplierProfile == null || p.SupplierProfile.Currency != "RMB")
            //{
            //    this.tblCell_HSMaterialName.DataBindings.Clear();
            //    this.tblCell_HSMaterialName.Text = "";
            //}

        }
        #endregion

        #region Functions

        private void SetWidthSpecialSize(POHeader p)
        {
            if (p == null) return;

            BasicInfoDataContext BasicInfoDB = ContextBuilder.CreateContext<BasicInfoDataContext>();
            POFormNo obj = BasicInfoDB.POFormNos.FirstOrDefault(s => s.Code == p.FormNo);
            this.lbWidth.Text = (_langID == "EN") ? obj.WidthEN : obj.WidthCN;
            this.lbWidth.Text = this.lbWidth.Text.Replace("\\r\\n", "\r\n");

            switch (p.FormNo)
            {
                case "2D":
                case "2Dus":
                case "3Das-rc":
                    this.tbWidth.Text = "[FabricWidth]";
                    break;

                case "3Das":
                case "3Dat":
                case "3Daw":
                    this.tbWidth.Text = "[SpecificSize]";
                    break;

                case "3D":
                case "4D":
                    this.tbWidth.Text = (_langID == "EN") ? "[SizeRangeEN]" : "[SizeRangeCN]";
                    break;

                default:
                    break;

            }


            //switch (p.SupplierDimension)
            //{
            //    case PODimension.None:
            //        break;
            //    case PODimension.One:
            //        break;
            //    case PODimension.ThreeS:
            //        this.lbWidth.Text = (_langID == "EN") ?
            //            ((p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_EN, p.MIDcSpecSize) : Common.Width2D_EN)
            //            : ((p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_CN, p.MIDcSpecSizeCN) : Common.Width2D_CN);
            //        //this.lblSizeMatrix.Text = (p.IsSpecialSize) ? Common.SpecialSize_CN : Common.Width2D_CN;
            //        this.tbWidth.Text = (p.IsSpecialSize) ? "[SpecificSize]" : "[FabricWidth]";
            //        //this.lbSpecSize.Text = this.lbSpecSize2.Text = Common.SpecialSize_CN + "\r\n" + Common.PriceDependent_CN;
            //        break;
            //    case PODimension.ThreeR:
            //        //this.lblSizeMatrix.Text = 
            //        this.lbWidth.Text = (_langID == "EN") ? Common.Width3D_EN : Common.Width3D_CN;
            //        this.tbWidth.Text = (_langID == "EN") ? "[SizeRangeEN]" : "[SizeRangeCN]";
            //        //this.lbSpecSize.Text = this.lbSpecSize2.Text = Common.Width3D_CN + "\r\n" + Common.PriceDependent_CN;
            //        break;
            //    case PODimension.Four:
            //        //this.lblSizeMatrix.Text = 
            //        this.lbWidth.Text = (_langID == "EN") ? Common.Width4D_EN : Common.Width4D_CN;
            //        this.tbWidth.Text = (_langID == "EN") ? "[SizeRangeEN]" : "[SizeRangeCN]";
            //        //this.lbSpecSize.Text = this.lbSpecSize2.Text = Common.Width4D_CN + "\r\n" + Common.PriceDependent_CN;
            //        break;
            //    default:
            //        break;
            //}
        }
        private void SetTitleInfor(POHeader p)
        {
            //this.lbItemCode.Text = (_langID == "EN") ? "Our Item Code" : "買方品種編碼";
            //this.lbSuppRef.Text = (_langID == "EN") ? "Supplier Item Ref" : "供應商品種代碼";
            //this.lbDesc.Text = (_langID == "EN") ? "Description" : "摘要";

        }

        #endregion

        private void tblCell_HSMaterialName_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POColorSizeDetail c = this.GetCurrentRow() as POColorSizeDetail;
            if (c == null) return;
            POHeader p = c.PODetail.POHeader;
            if (p == null) return;

            //Xsj:如果是非人民幣結算的供應商，則不顯示海關物料名稱。
            if (p.SupplierProfile == null || p.SupplierProfile.Currency != "RMB")
            {
                //this.tblCell_HSMaterialName.DataBindings.Clear();
                this.tblCell_HSMaterialName.Text = "";
            }
            else //由David處理, 2022-03-26， RMB時，將海關名稱中的"/國內採購"去掉不顯示
            {
                POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
                var obj = db.POReportConfigs.FirstOrDefault(x => x.DataType == "HSCode" && x.Code == "HSNameReplace");
                tblCell_HSMaterialName.Text = tblCell_HSMaterialName.Text.Replace(obj.DescEN, obj.DescCN);
            }
        }

    }
}
