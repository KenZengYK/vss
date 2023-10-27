using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO.SupplementSheet.CN
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class SubWireBoneReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.PageFooterBand PageFooter;
        private GroupHeaderBand GroupHeader2;
        private GroupFooterBand GroupFooter2;
        private XRControlStyle csHeader;
        private ReportFooterBand ReportFooter;
        private XRPageInfo xrPageInfo2;
        private XRPictureBox xrPictureBox1;
        private XRLabel xrLabel3;
        private XRTable xrTable2;
        private XRTableRow xrTableRow2;
        private XRTableCell xrTableCell9;
        private XRTableCell xrTableCell10;
        private XRTableCell cellPONO;
        private XRTableCell xrTableCell12;
        private XRTableCell xrTableCell23;
        private XRTableCell xrTableCell14;
        private XRTableRow xrTableRow9;
        private XRTableCell xrTableCell27;
        private XRTableCell xrTableCell28;
        private XRTableCell xrTableCell29;
        private XRTableCell xrTableCell32;
        private XRTableCell xrTableCell33;
        private XRTableCell xrTableCell34;
        private XRTableCell xrTableCell36;
        private XRTable xrTable1;
        private XRTableRow xrTableRow1;
        private XRTableCell xrTableCell15;
        private XRTableCell xrTableCell16;
        private XRTableCell xrTableCell1;
        private XRTableCell cellDelivery;
        private XRTableCell xrTableCell18;
        private XRTableCell xrTableCell3;
        private XRTableCell xrTableCell6;
        private XRTableRow xrTableRow7;
        private XRTableCell xrTableCell4;
        private XRTableCell xrTableCell20;
        private XRTableCell xrTableCell21;
        private XRTableCell xrTableCell22;
        private XRTableCell xrTableCell26;
        private XRTableCell xrTableCell37;
        private XRLabel xrLabel1;
        private XRSubreport xrSubreport1;
        private XRTable xrTable4;
        private XRTableRow xrTableRow10;
        private XRTableCell xrTableCell2;
        private XRTableRow xrTableRow12;
        private XRTableCell xrTableCell5;
        private XRTableCell xrTableCell25;
        private XRCheckBox cbBuyerSide;
        private XRTableCell xrTableCell38;
        private XRTableCell xrTableCell8;
        private XRCheckBox cbSupplierSide;
        private XRTable xrTable5;
        private XRTableRow xrTableRow5;
        private XRTableCell lbCompanyCN;
        private XRTableRow xrTableRow6;
        private XRTableCell lbCompanyEN;
        private XRTableCell lbCompanyGroup;
        private XRTableRow xrTableRow8;
        private XRTableCell cellTitle1;
        private XRTableCell cellTitle2;
        private XRTableCell cellTitle3;
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SubWireBoneReport));
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow10 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow12 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell25 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cbBuyerSide = new DevExpress.XtraReports.UI.XRCheckBox();
            this.xrTableCell38 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cbSupplierSide = new DevExpress.XtraReports.UI.XRCheckBox();
            this.xrPictureBox1 = new DevExpress.XtraReports.UI.XRPictureBox();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow9 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell34 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.xrPageInfo2 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrSubreport1 = new DevExpress.XtraReports.UI.XRSubreport();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellDelivery = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell21 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell37 = new DevExpress.XtraReports.UI.XRTableCell();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable5 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyCN = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyEN = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbCompanyGroup = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow8 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTitle1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle3 = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.Visible = false;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable5,
            this.xrTable4,
            this.xrPictureBox1,
            this.xrLabel3,
            this.xrTable2});
            this.PageHeader.Height = 169;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTable4
            // 
            this.xrTable4.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable4.Location = new System.Drawing.Point(0, 126);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 0, 0, 0, 100F);
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow10,
            this.xrTableRow12});
            this.xrTable4.Size = new System.Drawing.Size(765, 40);
            this.xrTable4.StyleName = "csHeader";
            this.xrTable4.StylePriority.UseBorders = false;
            this.xrTable4.StylePriority.UsePadding = false;
            // 
            // xrTableRow10
            // 
            this.xrTableRow10.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell2});
            this.xrTableRow10.Name = "xrTableRow10";
            this.xrTableRow10.Size = new System.Drawing.Size(765, 16);
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(765, 16);
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.Text = "維度的數量一覽";
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow12
            // 
            this.xrTableRow12.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell5,
            this.xrTableCell25,
            this.xrTableCell38,
            this.xrTableCell8});
            this.xrTableRow12.Name = "xrTableRow12";
            this.xrTableRow12.Size = new System.Drawing.Size(765, 24);
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell5.Multiline = true;
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(77, 24);
            this.xrTableCell5.StylePriority.UseBorders = false;
            this.xrTableCell5.StylePriority.UseFont = false;
            this.xrTableCell5.StylePriority.UsePadding = false;
            this.xrTableCell5.StylePriority.UseTextAlignment = false;
            this.xrTableCell5.Text = "采購方";
            this.xrTableCell5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell25
            // 
            this.xrTableCell25.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.cbBuyerSide});
            this.xrTableCell25.Location = new System.Drawing.Point(77, 0);
            this.xrTableCell25.Name = "xrTableCell25";
            this.xrTableCell25.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell25.Size = new System.Drawing.Size(316, 24);
            this.xrTableCell25.Text = "xrTableCell25";
            // 
            // cbBuyerSide
            // 
            this.cbBuyerSide.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.cbBuyerSide.Checked = true;
            this.cbBuyerSide.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbBuyerSide.Location = new System.Drawing.Point(6, 2);
            this.cbBuyerSide.Name = "cbBuyerSide";
            this.cbBuyerSide.Size = new System.Drawing.Size(288, 19);
            this.cbBuyerSide.StyleName = "csHeader";
            this.cbBuyerSide.StylePriority.UseBorders = false;
            this.cbBuyerSide.StylePriority.UseTextAlignment = false;
            this.cbBuyerSide.Text = "2 dimensions - Item/Color";
            this.cbBuyerSide.WordWrap = false;
            // 
            // xrTableCell38
            // 
            this.xrTableCell38.Location = new System.Drawing.Point(393, 0);
            this.xrTableCell38.Multiline = true;
            this.xrTableCell38.Name = "xrTableCell38";
            this.xrTableCell38.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell38.Size = new System.Drawing.Size(77, 24);
            this.xrTableCell38.StylePriority.UseTextAlignment = false;
            this.xrTableCell38.Text = "供應方";
            this.xrTableCell38.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.cbSupplierSide});
            this.xrTableCell8.Location = new System.Drawing.Point(470, 0);
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(295, 24);
            this.xrTableCell8.StylePriority.UseBorders = false;
            this.xrTableCell8.Text = "xrTableCell8";
            // 
            // cbSupplierSide
            // 
            this.cbSupplierSide.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.cbSupplierSide.Checked = true;
            this.cbSupplierSide.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSupplierSide.Location = new System.Drawing.Point(9, 2);
            this.cbSupplierSide.Name = "cbSupplierSide";
            this.cbSupplierSide.Size = new System.Drawing.Size(255, 19);
            this.cbSupplierSide.StyleName = "csHeader";
            this.cbSupplierSide.StylePriority.UseBorders = false;
            this.cbSupplierSide.StylePriority.UseTextAlignment = false;
            this.cbSupplierSide.Text = "4 dimensions - Item/Color/Size/Cup";
            this.cbSupplierSide.WordWrap = false;
            // 
            // xrPictureBox1
            // 
            this.xrPictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("xrPictureBox1.Image")));
            this.xrPictureBox1.Location = new System.Drawing.Point(67, 0);
            this.xrPictureBox1.Name = "xrPictureBox1";
            this.xrPictureBox1.Size = new System.Drawing.Size(83, 58);
            this.xrPictureBox1.Sizing = DevExpress.XtraPrinting.ImageSizeMode.ZoomImage;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrLabel3.Location = new System.Drawing.Point(658, 17);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(77, 18);
            this.xrLabel3.StylePriority.UseBorders = false;
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.StylePriority.UseTextAlignment = false;
            this.xrLabel3.Text = "尺碼矩陣";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.Location = new System.Drawing.Point(0, 88);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2,
            this.xrTableRow9});
            this.xrTable2.Size = new System.Drawing.Size(765, 36);
            this.xrTable2.StyleName = "csHeader";
            this.xrTable2.StylePriority.UseBorders = false;
            this.xrTable2.StylePriority.UsePadding = false;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell9,
            this.xrTableCell10,
            this.cellPONO,
            this.xrTableCell12,
            this.xrTableCell23,
            this.xrTableCell14});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(765, 18);
            this.xrTableRow2.StylePriority.UseBorders = false;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrTableCell9.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(68, 18);
            this.xrTableCell9.StylePriority.UseBorders = false;
            this.xrTableCell9.StylePriority.UsePadding = false;
            this.xrTableCell9.Text = "供應商:";
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell10.Location = new System.Drawing.Point(68, 0);
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(454, 18);
            this.xrTableCell10.StylePriority.UseBorders = false;
            this.xrTableCell10.StylePriority.UseFont = false;
            this.xrTableCell10.Text = "[PODetail.POHeader.SupplierName]";
            // 
            // cellPONO
            // 
            this.cellPONO.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.cellPONO.Location = new System.Drawing.Point(522, 0);
            this.cellPONO.Name = "cellPONO";
            this.cellPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellPONO.Size = new System.Drawing.Size(48, 18);
            this.cellPONO.StylePriority.UseBorders = false;
            this.cellPONO.StylePriority.UseTextAlignment = false;
            this.cellPONO.Text = "采購單號:";
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell12.Location = new System.Drawing.Point(570, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(100, 18);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.Text = "[PONO] - [PODetail.POHeader.Dept]";
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell23.Location = new System.Drawing.Point(670, 0);
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(58, 18);
            this.xrTableCell23.StylePriority.UseBorders = false;
            this.xrTableCell23.StylePriority.UseTextAlignment = false;
            this.xrTableCell23.Text = "修正編號:";
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell14.Location = new System.Drawing.Point(728, 0);
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(37, 18);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "0";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow9
            // 
            this.xrTableRow9.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell27,
            this.xrTableCell28,
            this.xrTableCell29,
            this.xrTableCell32,
            this.xrTableCell33,
            this.xrTableCell34,
            this.xrTableCell36});
            this.xrTableRow9.Name = "xrTableRow9";
            this.xrTableRow9.Size = new System.Drawing.Size(765, 18);
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell27.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(68, 18);
            this.xrTableCell27.StylePriority.UseBorders = false;
            this.xrTableCell27.Text = "聯系人:";
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell28.Location = new System.Drawing.Point(68, 0);
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(202, 18);
            this.xrTableCell28.StylePriority.UseBorders = false;
            this.xrTableCell28.Text = "[PODetail.POHeader.PurchaseOfficer]";
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell29.Location = new System.Drawing.Point(270, 0);
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(78, 18);
            this.xrTableCell29.StylePriority.UseBorders = false;
            this.xrTableCell29.StylePriority.UseTextAlignment = false;
            this.xrTableCell29.Text = "總金額 :";
            this.xrTableCell29.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell32.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell32.Location = new System.Drawing.Point(348, 0);
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(47, 18);
            this.xrTableCell32.StylePriority.UseBorders = false;
            this.xrTableCell32.StylePriority.UseFont = false;
            this.xrTableCell32.StylePriority.UseTextAlignment = false;
            this.xrTableCell32.Text = "[Currency]";
            this.xrTableCell32.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell33.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell33.Location = new System.Drawing.Point(395, 0);
            this.xrTableCell33.Name = "xrTableCell33";
            this.xrTableCell33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell33.Size = new System.Drawing.Size(127, 18);
            this.xrTableCell33.StylePriority.UseBorders = false;
            this.xrTableCell33.StylePriority.UseFont = false;
            this.xrTableCell33.Text = "[PODetail.POHeader.SuppAmount!N2]";
            this.xrTableCell33.WordWrap = false;
            // 
            // xrTableCell34
            // 
            this.xrTableCell34.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell34.Location = new System.Drawing.Point(522, 0);
            this.xrTableCell34.Name = "xrTableCell34";
            this.xrTableCell34.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell34.Size = new System.Drawing.Size(81, 18);
            this.xrTableCell34.StylePriority.UseBorders = false;
            this.xrTableCell34.StylePriority.UseFont = false;
            this.xrTableCell34.StylePriority.UseTextAlignment = false;
            this.xrTableCell34.Text = "發出日期 :";
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell36.Location = new System.Drawing.Point(603, 0);
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(162, 18);
            this.xrTableCell36.StylePriority.UseBorders = false;
            this.xrTableCell36.StylePriority.UseFont = false;
            this.xrTableCell36.Text = "[PODetail.POHeader.OrderDate!yyyy-MM-dd]";
            // 
            // PageFooter
            // 
            this.PageFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPageInfo2});
            this.PageFooter.Height = 15;
            this.PageFooter.Name = "PageFooter";
            this.PageFooter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageFooter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.PageFooter.Visible = false;
            // 
            // xrPageInfo2
            // 
            this.xrPageInfo2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrPageInfo2.Format = "頁: {0} / {1}";
            this.xrPageInfo2.Location = new System.Drawing.Point(696, 0);
            this.xrPageInfo2.Name = "xrPageInfo2";
            this.xrPageInfo2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo2.Size = new System.Drawing.Size(67, 15);
            this.xrPageInfo2.StylePriority.UseFont = false;
            this.xrPageInfo2.StylePriority.UseTextAlignment = false;
            this.xrPageInfo2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("ItemCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("PONO", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("Price", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.Height = 0;
            this.GroupHeader2.Name = "GroupHeader2";
            this.GroupHeader2.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader2_BeforePrint);
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrSubreport1,
            this.xrTable1});
            this.GroupFooter2.Height = 61;
            this.GroupFooter2.KeepTogether = true;
            this.GroupFooter2.Name = "GroupFooter2";
            // 
            // xrSubreport1
            // 
            this.xrSubreport1.Location = new System.Drawing.Point(0, 34);
            this.xrSubreport1.Name = "xrSubreport1";
            this.xrSubreport1.Size = new System.Drawing.Size(765, 23);
            // 
            // xrTable1
            // 
            this.xrTable1.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTable1.Location = new System.Drawing.Point(0, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow7});
            this.xrTable1.Size = new System.Drawing.Size(765, 34);
            this.xrTable1.StyleName = "csHeader";
            this.xrTable1.StylePriority.UseBorders = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell15,
            this.xrTableCell16,
            this.xrTableCell1,
            this.cellDelivery,
            this.xrTableCell18,
            this.xrTableCell3,
            this.xrTableCell6});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(765, 17);
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrTableCell15.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(56, 17);
            this.xrTableCell15.StylePriority.UseBorders = false;
            this.xrTableCell15.Text = "工程號:";
            this.xrTableCell15.WordWrap = false;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Location = new System.Drawing.Point(56, 0);
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(106, 17);
            this.xrTableCell16.Text = "[PODetail.ProjectNo]";
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Location = new System.Drawing.Point(162, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(149, 17);
            this.xrTableCell1.Text = "制單號(若有資料): [PODetail.WorkOrderNo]";
            // 
            // cellDelivery
            // 
            this.cellDelivery.Location = new System.Drawing.Point(311, 0);
            this.cellDelivery.Name = "cellDelivery";
            this.cellDelivery.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellDelivery.Size = new System.Drawing.Size(112, 17);
            this.cellDelivery.StylePriority.UseTextAlignment = false;
            this.cellDelivery.Text = "交貨期／(周)    :";
            this.cellDelivery.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellDelivery.WordWrap = false;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell18.Location = new System.Drawing.Point(423, 0);
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(157, 17);
            this.xrTableCell18.StylePriority.UseBorders = false;
            this.xrTableCell18.StylePriority.UsePadding = false;
            this.xrTableCell18.Text = "[DeliveryWeek]";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Location = new System.Drawing.Point(580, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(105, 17);
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "單價 ([Currency]):";
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrTableCell3.WordWrap = false;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell6.Location = new System.Drawing.Point(685, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(80, 17);
            this.xrTableCell6.StylePriority.UseBorders = false;
            this.xrTableCell6.StylePriority.UseTextAlignment = false;
            this.xrTableCell6.Text = "[Price!N4]";
            this.xrTableCell6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow7
            // 
            this.xrTableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell4,
            this.xrTableCell20,
            this.xrTableCell21,
            this.xrTableCell22,
            this.xrTableCell26,
            this.xrTableCell37});
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(765, 17);
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell4.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(162, 17);
            this.xrTableCell4.StylePriority.UseBorders = false;
            this.xrTableCell4.Text = "終端客戶訂單號(若有資料):";
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell20.Location = new System.Drawing.Point(162, 0);
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(149, 17);
            this.xrTableCell20.StylePriority.UseBorders = false;
            this.xrTableCell20.Text = "[CustOrderNo]";
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell21.Location = new System.Drawing.Point(311, 0);
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(112, 17);
            this.xrTableCell21.StylePriority.UseBorders = false;
            this.xrTableCell21.StylePriority.UseTextAlignment = false;
            this.xrTableCell21.Text = "終端客戶款號:";
            this.xrTableCell21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell22.Location = new System.Drawing.Point(423, 0);
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(141, 17);
            this.xrTableCell22.StylePriority.UseBorders = false;
            this.xrTableCell22.Text = "[CustStyleNo]";
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell26.Location = new System.Drawing.Point(564, 0);
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(122, 17);
            this.xrTableCell26.StylePriority.UseBorders = false;
            this.xrTableCell26.StylePriority.UseTextAlignment = false;
            this.xrTableCell26.Text = "成衣顏色代號（作參考用):";
            this.xrTableCell26.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell37
            // 
            this.xrTableCell37.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell37.Location = new System.Drawing.Point(686, 0);
            this.xrTableCell37.Name = "xrTableCell37";
            this.xrTableCell37.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell37.Size = new System.Drawing.Size(79, 17);
            this.xrTableCell37.StylePriority.UseBorders = false;
            this.xrTableCell37.StylePriority.UseTextAlignment = false;
            this.xrTableCell37.Text = "[StyleColorAndDiff]";
            this.xrTableCell37.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // csHeader
            // 
            this.csHeader.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1});
            this.ReportFooter.Height = 36;
            this.ReportFooter.KeepTogether = true;
            this.ReportFooter.Name = "ReportFooter";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel1.Location = new System.Drawing.Point(0, 0);
            this.xrLabel1.Multiline = true;
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(765, 36);
            this.xrLabel1.StyleName = "csHeader";
            this.xrLabel1.StylePriority.UseBorders = false;
            this.xrLabel1.StylePriority.UsePadding = false;
            this.xrLabel1.Text = "備注 : \r\n  1.  上述之買方尺碼或尺碼/杯是等同終端客戶之成衣麥頭上顯示的尺碼或尺碼/杯;\r\n  2.  符號\"!\"表示此物料的顏色與成衣的顏色是不同的 " +
                "(例如撞色效果).";
            // 
            // xrTable5
            // 
            this.xrTable5.Font = new System.Drawing.Font("Arial", 9.75F);
            this.xrTable5.Location = new System.Drawing.Point(154, 0);
            this.xrTable5.Name = "xrTable5";
            this.xrTable5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5,
            this.xrTableRow6,
            this.xrTableRow8});
            this.xrTable5.Size = new System.Drawing.Size(482, 82);
            this.xrTable5.StylePriority.UseFont = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyCN});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(482, 29);
            // 
            // lbCompanyCN
            // 
            this.lbCompanyCN.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.lbCompanyCN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyCN.Name = "lbCompanyCN";
            this.lbCompanyCN.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCompanyCN.Size = new System.Drawing.Size(482, 29);
            this.lbCompanyCN.StylePriority.UseFont = false;
            this.lbCompanyCN.Text = "沛  恒  製  衣  有  限  公  司";
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyEN,
            this.lbCompanyGroup});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(482, 25);
            // 
            // lbCompanyEN
            // 
            this.lbCompanyEN.Font = new System.Drawing.Font("Arial", 13F);
            this.lbCompanyEN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyEN.Multiline = true;
            this.lbCompanyEN.Name = "lbCompanyEN";
            this.lbCompanyEN.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCompanyEN.Size = new System.Drawing.Size(266, 25);
            this.lbCompanyEN.StylePriority.UseFont = false;
            this.lbCompanyEN.Text = "PH Garment Mfg. Co. Ltd.\r\n";
            // 
            // lbCompanyGroup
            // 
            this.lbCompanyGroup.Font = new System.Drawing.Font("Arial", 7F);
            this.lbCompanyGroup.Location = new System.Drawing.Point(266, 0);
            this.lbCompanyGroup.Multiline = true;
            this.lbCompanyGroup.Name = "lbCompanyGroup";
            this.lbCompanyGroup.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCompanyGroup.Size = new System.Drawing.Size(216, 25);
            this.lbCompanyGroup.StylePriority.UseFont = false;
            this.lbCompanyGroup.StylePriority.UseForeColor = false;
            this.lbCompanyGroup.StylePriority.UseTextAlignment = false;
            this.lbCompanyGroup.Text = "(Member of PH Garment Group)\r\n";
            this.lbCompanyGroup.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow8
            // 
            this.xrTableRow8.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellTitle1,
            this.cellTitle2,
            this.cellTitle3});
            this.xrTableRow8.Name = "xrTableRow8";
            this.xrTableRow8.Size = new System.Drawing.Size(482, 28);
            // 
            // cellTitle1
            // 
            this.cellTitle1.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.cellTitle1.Location = new System.Drawing.Point(0, 0);
            this.cellTitle1.Name = "cellTitle1";
            this.cellTitle1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle1.Size = new System.Drawing.Size(235, 28);
            this.cellTitle1.StylePriority.UseBorders = false;
            this.cellTitle1.StylePriority.UseFont = false;
            this.cellTitle1.StylePriority.UseTextAlignment = false;
            this.cellTitle1.Text = "Purchase Order";
            this.cellTitle1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // cellTitle2
            // 
            this.cellTitle2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellTitle2.Location = new System.Drawing.Point(235, 0);
            this.cellTitle2.Name = "cellTitle2";
            this.cellTitle2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle2.Size = new System.Drawing.Size(129, 28);
            this.cellTitle2.StylePriority.UseFont = false;
            this.cellTitle2.StylePriority.UseTextAlignment = false;
            this.cellTitle2.Text = "- 附頁";
            this.cellTitle2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellTitle2.WordWrap = false;
            // 
            // cellTitle3
            // 
            this.cellTitle3.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellTitle3.Location = new System.Drawing.Point(364, 0);
            this.cellTitle3.Name = "cellTitle3";
            this.cellTitle3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle3.Size = new System.Drawing.Size(118, 28);
            this.cellTitle3.StylePriority.UseBorders = false;
            this.cellTitle3.StylePriority.UseFont = false;
            this.cellTitle3.StylePriority.UseTextAlignment = false;
            this.cellTitle3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // SubWireBoneReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter,
            this.GroupHeader2,
            this.GroupFooter2,
            this.ReportFooter});
            this.ExportOptions.PrintPreview.DefaultFileName = "po Report(4th dimension)";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.MainReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        #endregion

        #region Creator

        public SubWireBoneReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //

        }
        public SubWireBoneReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID, bool isDometisPrint)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;
            _isDometisPrint = isDometisPrint;
        }
        #endregion

        #region fields

        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;
        private bool _isDometisPrint;

        #endregion

        #region Event

        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            BuyerSKUList list = new BuyerSKUList();

            this.xrSubreport1.ReportSource = null;
            POColorSizeDetail p = this.GetCurrentRow() as POColorSizeDetail;
            if (p == null) return;

            List<POWireBoneMatrixTemp> matrixs = list.GetWireBoneMatrix(p.Version, p.AmendmentNo, p.Company, p.PONO, p.ItemCode, p.ColorCode, p.Price);

            SubWireBoneDetailReport dreport = new SubWireBoneDetailReport(_isPHCopy, _isVatPrint, _isScO, _langID);
            dreport.SetItemInfor(p);
            dreport.DataSource = matrixs;
            this.xrSubreport1.ReportSource = dreport;
        }

        private void MainReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            string dll_1 = typeof(POHeader).Assembly.Location;
            string dll_2 = typeof(SubWireBoneReport).Assembly.Location;
            string dll_3 = typeof(PH.Platform.Report.PivotGrid.PRPivotGrid).Assembly.Location;
            //
            this.ScriptReferences = new string[] { dll_1, dll_2, dll_3 };

            POColorSizeDetail p = this.GetCurrentRow() as POColorSizeDetail;
            if (p == null) return;
            SetDimension(p);
            SetTitleInfor(p);
        }

        #endregion

        #region Functions

        private void SetDimension(POColorSizeDetail p)
        {
            //string byrd = p.PODetail.BuyerQtyDimension;
            string suppd = p.PODetail.SuppQtyDimension;

            //string byrStr = "";
            string suppStr = "";

            //switch (byrd)
            //{
            //    case "2.1": byrStr = " 第二維 - 品種/顏色"; break;
            //    case "2.2": byrStr = " 第二維 - 品種/尺碼"; break;
            //    case "3.1": byrStr = " 第三維 - 品種/顏色/尺碼"; break;
            //    case "3.2": byrStr = " 第三維 - 品種/尺碼/杯"; break;
            //    case "4.0": byrStr = " 第四維 - 品種/顏色/尺碼/杯"; break;
            //    case "2": goto case "2.1";
            //    case "3": goto case "3.1";
            //    case "4": goto case "4.0";
            //    default:
            //        break;
            //}
            switch (suppd)
            {
                case "2.1": suppStr = " 第二維 - 品種/顏色"; break;
                case "2.2": suppStr = " 第二維 - 品種/尺碼"; break;
                case "3.1": suppStr = " 第三維 - 品種/顏色/尺碼"; break;
                case "3.2": suppStr = " 第三維 - 品種/尺碼/杯"; break;
                case "4.0": suppStr = " 第四維 - 品種/顏色/尺碼/杯"; break;
                case "2": goto case "2.1";
                case "3": goto case "3.1";
                case "4": goto case "4.0";
                default:
                    break;
            }
            //this.cbBuyerSide.Text = byrStr;
            this.cbSupplierSide.Text = suppStr;

            //this.cbBuyer21.Checked = byrd == "2.1";
            //this.cbBuyer22.Checked = byrd == "2.2";
            //this.cbBuyer31.Checked = byrd == "3.1";
            //this.cbBuyer32.Checked = byrd == "3.2";
            //this.cbBuyer4.Checked = byrd == "4.0";

            //this.cbSupp21.Checked = suppd == "2.1";
            //this.cbSupp22.Checked = suppd == "2.2";
            //this.cbSupp31.Checked = suppd == "3.1";
            //this.cbSupp32.Checked = suppd == "3.2";
            //this.cbSupp4.Checked = suppd == "4.0";
        }
        private void SetTitleInfor(POColorSizeDetail p)
        {
            POHeader h = p.PODetail.POHeader;
            bool isLongWords = (h.OrderClass == 2 || h.OrderClass == 3);

            this.cellTitle1.Width = (_isScO) ? 258 : 192;
            this.cellTitle3.Width = (h.OrderClass == 2) ? 88 : 129;
            this.cellTitle3.Font = new System.Drawing.Font("Arial Unicode MS", ((isLongWords) ? 11F : 7F));

            this.cellTitle1.Text = (_langID == "EN") ? h.POSubject : h.POSubjectCN;
            this.cellTitle2.Text = (isLongWords) ? (_langID == "EN" ? h.POSuffixSubject : h.POSuffixSubjectCN) : (_langID == "EN" ? "- Supplement sheet" : "- 附頁");
            this.cellTitle3.Text = (isLongWords) ? (_langID == "EN" ? "- Supplement sheet" : "- 附頁") : "";

            this.cellPONO.Text = (_langID == "EN") ? ((_isScO) ? "SC No.:" : "PO No.:") : ((_isScO) ? "加工單號:" : "采購單號:");

            this.lbCompanyEN.Text = this._isDometisPrint ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN;
            this.lbCompanyCN.Text = this._isDometisPrint ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN;
            this.lbCompanyGroup.Size = this._isDometisPrint ? new Size(162, 25) : new Size(234, 25);
            this.lbCompanyGroup.Text = ""; //由David增加 2022-03-28
        }

        #endregion

    }
}
