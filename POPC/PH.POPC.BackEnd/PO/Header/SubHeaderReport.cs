using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO.Header
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class SubHeaderReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.BindingSource bindingSource2;
        private ReportHeaderBand ReportHeader1;
        private XRControlStyle csHeaderSmall;
        private XRPictureBox xrPictureBox1;
        private XRTable xrTable5;
        private XRTableRow xrTableRow5;
        private XRTableCell lbCompanyCN;
        private XRTableRow xrTableRow6;
        private XRTableCell lbCompanyEN;
        private XRTableRow xrTableRow8;
        private XRTableCell cellTitle1;
        private XRTableCell cellTitle2;
        private XRTableCell cellTitle3;
        private XRTable xrTable1;
        private XRTableRow xrTableRow1;
        private XRTableCell xrTableCell10;
        private XRLabel lblPHCopy;
        private XRTableRow xrTableRow13;
        private XRTableCell cellPONO;
        private XRTableCell xrTableCell15;
        private XRTableRow xrTableRow10;
        private XRTableCell cellWebPONO;
        private XRTableRow xrTableRow18;
        private XRTableCell cellAmendment;
        private XRTableCell cellAmendmentNo;
        private XRTableRow xrTableRow19;
        private XRTableCell cellIssueDate;
        private XRTableCell xrTableCell90;
        private XRTableCell lbWebPONO;
        private XRTableCell lbCompanyGroup;
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(SubHeaderReport));
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportHeader1 = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblPHCopy = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableRow13 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow10 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbWebPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellWebPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow18 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellAmendment = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellAmendmentNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow19 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellIssueDate = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell90 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrPictureBox1 = new DevExpress.XtraReports.UI.XRPictureBox();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
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
            this.csHeader.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // csDetail
            // 
            this.csDetail.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csDetail.Name = "csDetail";
            this.csDetail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // ReportHeader1
            // 
            this.ReportHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1,
            this.xrTable5,
            this.xrPictureBox1});
            this.ReportHeader1.Height = 85;
            this.ReportHeader1.Name = "ReportHeader1";
            // 
            // xrTable1
            // 
            this.xrTable1.Font = new System.Drawing.Font("Arial", 9.75F);
            this.xrTable1.Location = new System.Drawing.Point(549, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow13,
            this.xrTableRow10,
            this.xrTableRow18,
            this.xrTableRow19});
            this.xrTable1.Size = new System.Drawing.Size(210, 85);
            this.xrTable1.StylePriority.UseFont = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell10});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(210, 20);
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblPHCopy});
            this.xrTableCell10.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(210, 20);
            // 
            // lblPHCopy
            // 
            this.lblPHCopy.BackColor = System.Drawing.Color.LightCyan;
            this.lblPHCopy.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lblPHCopy.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lblPHCopy.Location = new System.Drawing.Point(115, 0);
            this.lblPHCopy.Name = "lblPHCopy";
            this.lblPHCopy.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblPHCopy.Size = new System.Drawing.Size(73, 18);
            this.lblPHCopy.StylePriority.UseBackColor = false;
            this.lblPHCopy.StylePriority.UseBorders = false;
            this.lblPHCopy.StylePriority.UseFont = false;
            this.lblPHCopy.StylePriority.UseTextAlignment = false;
            this.lblPHCopy.Text = "PHG Copy";
            this.lblPHCopy.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableRow13
            // 
            this.xrTableRow13.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellPONO,
            this.xrTableCell15});
            this.xrTableRow13.Name = "xrTableRow13";
            this.xrTableRow13.Size = new System.Drawing.Size(210, 23);
            // 
            // cellPONO
            // 
            this.cellPONO.Font = new System.Drawing.Font("Arial Unicode MS", 10F);
            this.cellPONO.Location = new System.Drawing.Point(0, 0);
            this.cellPONO.Name = "cellPONO";
            this.cellPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellPONO.Size = new System.Drawing.Size(98, 23);
            this.cellPONO.StylePriority.UseFont = false;
            this.cellPONO.StylePriority.UseTextAlignment = false;
            this.cellPONO.Text = "P.O. No.:";
            this.cellPONO.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 10F);
            this.xrTableCell15.Location = new System.Drawing.Point(98, 0);
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(112, 23);
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "[PONO]-[Dept]";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow10
            // 
            this.xrTableRow10.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbWebPONO,
            this.cellWebPONO});
            this.xrTableRow10.Name = "xrTableRow10";
            this.xrTableRow10.Size = new System.Drawing.Size(210, 14);
            // 
            // lbWebPONO
            // 
            this.lbWebPONO.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.lbWebPONO.Location = new System.Drawing.Point(0, 0);
            this.lbWebPONO.Name = "lbWebPONO";
            this.lbWebPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbWebPONO.Size = new System.Drawing.Size(98, 14);
            this.lbWebPONO.StylePriority.UseFont = false;
            this.lbWebPONO.Text = "網上訂購單號 :";
            // 
            // cellWebPONO
            // 
            this.cellWebPONO.CanGrow = false;
            this.cellWebPONO.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellWebPONO.Location = new System.Drawing.Point(98, 0);
            this.cellWebPONO.Name = "cellWebPONO";
            this.cellWebPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellWebPONO.Size = new System.Drawing.Size(112, 14);
            this.cellWebPONO.StylePriority.UseFont = false;
            this.cellWebPONO.StylePriority.UseTextAlignment = false;
            this.cellWebPONO.Text = "n.a.";
            this.cellWebPONO.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow18
            // 
            this.xrTableRow18.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellAmendment,
            this.cellAmendmentNo});
            this.xrTableRow18.Name = "xrTableRow18";
            this.xrTableRow18.Size = new System.Drawing.Size(210, 14);
            // 
            // cellAmendment
            // 
            this.cellAmendment.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellAmendment.Location = new System.Drawing.Point(0, 0);
            this.cellAmendment.Name = "cellAmendment";
            this.cellAmendment.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellAmendment.Size = new System.Drawing.Size(98, 14);
            this.cellAmendment.StylePriority.UseFont = false;
            this.cellAmendment.StylePriority.UseTextAlignment = false;
            this.cellAmendment.Text = "修正次數:";
            this.cellAmendment.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // cellAmendmentNo
            // 
            this.cellAmendmentNo.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellAmendmentNo.Location = new System.Drawing.Point(98, 0);
            this.cellAmendmentNo.Name = "cellAmendmentNo";
            this.cellAmendmentNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellAmendmentNo.Size = new System.Drawing.Size(112, 14);
            this.cellAmendmentNo.StylePriority.UseFont = false;
            this.cellAmendmentNo.StylePriority.UseTextAlignment = false;
            this.cellAmendmentNo.Text = "0";
            this.cellAmendmentNo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow19
            // 
            this.xrTableRow19.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellIssueDate,
            this.xrTableCell90});
            this.xrTableRow19.Name = "xrTableRow19";
            this.xrTableRow19.Size = new System.Drawing.Size(210, 14);
            // 
            // cellIssueDate
            // 
            this.cellIssueDate.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellIssueDate.Location = new System.Drawing.Point(0, 0);
            this.cellIssueDate.Multiline = true;
            this.cellIssueDate.Name = "cellIssueDate";
            this.cellIssueDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellIssueDate.Size = new System.Drawing.Size(98, 14);
            this.cellIssueDate.StylePriority.UseFont = false;
            this.cellIssueDate.Text = "發出日期 :";
            // 
            // xrTableCell90
            // 
            this.xrTableCell90.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "OrderDate", "{0:yyyy-MM-dd}")});
            this.xrTableCell90.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell90.Location = new System.Drawing.Point(98, 0);
            this.xrTableCell90.Multiline = true;
            this.xrTableCell90.Name = "xrTableCell90";
            this.xrTableCell90.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell90.Size = new System.Drawing.Size(112, 14);
            this.xrTableCell90.StylePriority.UseFont = false;
            this.xrTableCell90.StylePriority.UseTextAlignment = false;
            this.xrTableCell90.Text = "xrTableCell90";
            this.xrTableCell90.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTable5
            // 
            this.xrTable5.Font = new System.Drawing.Font("Arial", 9.75F);
            this.xrTable5.Location = new System.Drawing.Point(70, 0);
            this.xrTable5.Name = "xrTable5";
            this.xrTable5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5,
            this.xrTableRow6,
            this.xrTableRow8});
            this.xrTable5.Size = new System.Drawing.Size(477, 84);
            this.xrTable5.StylePriority.UseFont = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyCN});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(477, 29);
            // 
            // lbCompanyCN
            // 
            this.lbCompanyCN.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.lbCompanyCN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyCN.Name = "lbCompanyCN";
            this.lbCompanyCN.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbCompanyCN.Size = new System.Drawing.Size(477, 29);
            this.lbCompanyCN.StylePriority.UseFont = false;
            this.lbCompanyCN.StylePriority.UsePadding = false;
            this.lbCompanyCN.Text = "沛  恒  製  衣（東莞）有  限  公  司";
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyEN,
            this.lbCompanyGroup});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(477, 25);
            // 
            // lbCompanyEN
            // 
            this.lbCompanyEN.Font = new System.Drawing.Font("Arial Unicode MS", 13F);
            this.lbCompanyEN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyEN.Multiline = true;
            this.lbCompanyEN.Name = "lbCompanyEN";
            this.lbCompanyEN.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbCompanyEN.Size = new System.Drawing.Size(333, 25);
            this.lbCompanyEN.StylePriority.UseFont = false;
            this.lbCompanyEN.StylePriority.UsePadding = false;
            this.lbCompanyEN.Text = "P.H. Garment Mfg. (Dongguan) Co. Ltd.";
            this.lbCompanyEN.WordWrap = false;
            // 
            // lbCompanyGroup
            // 
            this.lbCompanyGroup.Font = new System.Drawing.Font("Arial", 7F);
            this.lbCompanyGroup.Location = new System.Drawing.Point(333, 0);
            this.lbCompanyGroup.Name = "lbCompanyGroup";
            this.lbCompanyGroup.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCompanyGroup.Size = new System.Drawing.Size(144, 25);
            this.lbCompanyGroup.StylePriority.UseFont = false;
            this.lbCompanyGroup.StylePriority.UseTextAlignment = false;
            this.lbCompanyGroup.Text = "(Member of PH Garment Group)";
            this.lbCompanyGroup.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow8
            // 
            this.xrTableRow8.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellTitle1,
            this.cellTitle2,
            this.cellTitle3});
            this.xrTableRow8.Name = "xrTableRow8";
            this.xrTableRow8.Size = new System.Drawing.Size(477, 30);
            // 
            // cellTitle1
            // 
            this.cellTitle1.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.cellTitle1.Location = new System.Drawing.Point(0, 0);
            this.cellTitle1.Name = "cellTitle1";
            this.cellTitle1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellTitle1.Size = new System.Drawing.Size(194, 30);
            this.cellTitle1.StylePriority.UseBorders = false;
            this.cellTitle1.StylePriority.UseFont = false;
            this.cellTitle1.StylePriority.UsePadding = false;
            this.cellTitle1.StylePriority.UseTextAlignment = false;
            this.cellTitle1.Text = "Purchase Order";
            this.cellTitle1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.cellTitle1.WordWrap = false;
            // 
            // cellTitle2
            // 
            this.cellTitle2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellTitle2.Location = new System.Drawing.Point(194, 0);
            this.cellTitle2.Name = "cellTitle2";
            this.cellTitle2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle2.Size = new System.Drawing.Size(156, 30);
            this.cellTitle2.StylePriority.UseFont = false;
            this.cellTitle2.StylePriority.UseTextAlignment = false;
            this.cellTitle2.Text = "- Individual item";
            this.cellTitle2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellTitle2.WordWrap = false;
            // 
            // cellTitle3
            // 
            this.cellTitle3.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellTitle3.Location = new System.Drawing.Point(350, 0);
            this.cellTitle3.Name = "cellTitle3";
            this.cellTitle3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle3.Size = new System.Drawing.Size(127, 30);
            this.cellTitle3.StylePriority.UseBorders = false;
            this.cellTitle3.StylePriority.UseFont = false;
            this.cellTitle3.StylePriority.UseTextAlignment = false;
            this.cellTitle3.Text = " ";
            this.cellTitle3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellTitle3.WordWrap = false;
            // 
            // xrPictureBox1
            // 
            this.xrPictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("xrPictureBox1.Image")));
            this.xrPictureBox1.Location = new System.Drawing.Point(0, 0);
            this.xrPictureBox1.Name = "xrPictureBox1";
            this.xrPictureBox1.Size = new System.Drawing.Size(70, 58);
            this.xrPictureBox1.Sizing = DevExpress.XtraPrinting.ImageSizeMode.ZoomImage;
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // bindingSource2
            // 
            this.bindingSource2.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // SubHeaderReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.ReportHeader1});
            this.DataSource = this.bindingSource2;
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
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
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
        private bool _isDometisPrint;
        private string _ReportTitleType;

        #endregion

        #region Creator

        public SubHeaderReport()
        {
            InitializeComponent();
        }
        public SubHeaderReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID, bool isDometisPrint, string AReportTitleType)
            : this()
        {
            _isPHCopy = isPHCopy;
            _isVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;
            _isDometisPrint = isDometisPrint;

            _ReportTitleType = AReportTitleType;
        }

        #endregion

        #region Event

        private void MainReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POHeader p = this.GetCurrentRow() as POHeader;
            if (p == null) return;

            SetPHCopyInfor(p);
            //Xsj:Show different title
            SetTitleInfor(p);
            //SetProjBDInfor(p);
            //SetWidthSpecialSize(p);
        }

        #endregion

        #region Functions

        //private void SetWidthSpecialSize(POHeader p)
        //{
        //    if (p == null) return;

        //    if (_langID == "EN")
        //        switch (p.SupplierDimension)
        //        {
        //            case PODimension.None:
        //                break;
        //            case PODimension.One:
        //                break;
        //            case PODimension.ThreeS:
        //                //this.lbWidth.Text = (p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_EN, p.MIDcSpecSize) : Common.Width2D_EN;
        //                this.lblSizeMatrix.Text = (p.IsSpecialSize) ? Common.SpecialSize_EN : Common.Width2D_EN;
        //                //this.tbWidth.Text = (p.IsSpecialSize) ? "[SpecificSize]" : "[FabricWidth]";
        //                //this.lbSpecSize.Text = Common.SpecialSize_EN + "\r\n" + Common.PriceDependent_EN;
        //                break;
        //            case PODimension.ThreeR:
        //                this.lblSizeMatrix.Text = Common.Width3D_EN;
        //                //this.lbWidth.Text = Common.Width3D_EN;
        //                //this.tbWidth.Text = "[SizeRangeEN]";
        //                //this.lbSpecSize.Text = Common.Width3D_EN + "\r\n" + Common.PriceDependent_EN;
        //                break;
        //            case PODimension.Four:
        //                this.lblSizeMatrix.Text = Common.Width4D_EN;
        //                //this.lbWidth.Text = Common.Width4D_EN;
        //                //this.lbSpecSize.Text = Common.Width4D_EN + "\r\n" + Common.PriceDependent_EN;
        //                //this.tbWidth.Text = "[SizeRangeEN]";
        //                break;
        //            default:
        //                break;
        //        }
        //    else //CN
        //        switch (p.SupplierDimension)
        //        {
        //            case PODimension.None:
        //                break;
        //            case PODimension.One:
        //                break;
        //            case PODimension.ThreeS:
        //                //this.lbWidth.Text = (p.IsSpecialSize) ? string.Format("{0}{1}", Common.SpecialSize2D_CN, p.MIDcSpecSize) : Common.Width2D_CN;
        //                this.lblSizeMatrix.Text = (p.IsSpecialSize) ? Common.SpecialSize_CN : Common.Width2D_CN;
        //                //this.tbWidth.Text = (p.IsSpecialSize) ? "[SpecificSize]" : "[FabricWidth]";
        //                //this.lbSpecSize.Text = Common.SpecialSize_CN + "\r\n" + Common.PriceDependent_CN;
        //                break;
        //            case PODimension.ThreeR:
        //                this.lblSizeMatrix.Text = Common.Width3D_CN;
        //                //this.lbWidth.Text = Common.Width3D_CN;
        //                //this.tbWidth.Text = "[SizeRangeCN]";
        //                //this.lbSpecSize.Text = Common.Width3D_CN + "\r\n" + Common.PriceDependent_CN;
        //                break;
        //            case PODimension.Four:
        //                this.lblSizeMatrix.Text = Common.Width4D_CN;
        //                //    this.lbWidth.Text = Common.Width4D_CN;
        //                //this.lbSpecSize.Text = Common.Width4D_CN + "\r\n" + Common.PriceDependent_CN;
        //                //this.tbWidth.Text = "[SizeRangeCN]";
        //                break;
        //            default:
        //                break;
        //        }

        //}
        //private void SetProjBDInfor(POHeader p)
        //{
        //    this.lbProjBD.Visible = (p.SupplierDimension == PODimension.ThreeS && p.HaveMultiProjectsByPrice)
        //        || (_isPHCopy && p.SupplierDimension == PODimension.ThreeS);

        //}
        private void SetPHCopyInfor(POHeader p)
        {
            //由David修改 2022-03-29
            if (_langID == "TW")
            {
                this.lblPHCopy.Text = this._isPHCopy ? "副本" : "原稿";
            }
            else
            {
                this.lblPHCopy.Text = this._isPHCopy ? "Our duplicate" : "Original";
            }

            //this.lblPHCopy.Text = this._isPHCopy ? "PHG copy" : "Original";
        }

        private void SetTitleInfor(POHeader p)
        {
            bool isLongWords = (p.OrderClass == 2 || p.OrderClass == 3);
            string titleMultiItem = (_langID == "EN") ? (p.IsMultiItems ? " - Multiple items" : " - Individual item") : (p.IsMultiItems ? " - 多類品種" : " - 單獨品種");

            this.cellTitle1.Width = (_isScO) ? 258 : 192;
            this.cellTitle2.Width = (p.OrderClass == 2) ? 88 : 129;
            this.cellTitle2.Font = new System.Drawing.Font("Arial Unicode MS", (isLongWords ? 11F : 7F));

            this.cellTitle1.Text = (_langID == "EN") ? p.POSubject : p.POSubjectCN;
            this.cellTitle2.Text = (isLongWords) ? (_langID == "EN" ? p.POSuffixSubject : p.POSuffixSubjectCN) : titleMultiItem;
            this.cellTitle3.Text = (isLongWords) ? titleMultiItem : "";

            this.cellPONO.Text = (_langID == "EN") ? (_isScO ? "S.C. No.:" : "P.O. No.:") : (_isScO ? "加工單號:" : "采購單號:");
            this.lbWebPONO.Text = (_langID == "EN") ? "Web Order No. :" : "網上訂購單號 :";
            this.cellAmendment.Text = (_langID == "EN") ? "Amendment No.:" : "修正次數:";
            this.cellIssueDate.Text = (_langID == "EN") ? "Issue Date :" : "發出日期:";

            //this.lbCompanyEN.Text = this._isDometisPrint ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN;
            //this.lbCompanyCN.Text = this._isDometisPrint ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN;
            //Xsj20151005:注釋掉上面代碼，添加以下代碼,顯示不同的報表標題 
            TradeMethodHelper tradeMethodHelper = new TradeMethodHelper();
            tradeMethodHelper.LangID = this._langID;
            tradeMethodHelper.ShowDifferentTitle(p, this.lbCompanyEN, this.lbCompanyCN, _ReportTitleType);

            //Xsj:註銷掉下代碼，添加新代碼
            //this.lbCompanyGroup.Size = this._isDometisPrint ? new Size(162, 25) : new Size(234, 25);
            this.lbCompanyGroup.Size = this._isDometisPrint ? new Size(162, 25) : new Size(162, 25);

            //由David增加 2020-01-16，PY时不显示PH Logo
            //this.xrPictureBox1.Visible = _ReportTitleType == "Dongguan"; //採購用戶Alice，Joyice要求三個報表都顯示Logo David修改2022-03-10

            //由David增加 2022-03-07, PHHK時不顯示 (Member of PH Garment Group)
            lbCompanyGroup.Visible = p.BuyerCode != "PHHK";
            //lbCompanyGroup.Visible = _ReportTitleType != "PHHK";

            //Joyice要求，只有PHHK才顯示大標題， 由David增加 2022-03-11
            lbCompanyCN.Visible = false; //統一不顯示大標題 2022-03-15
            //lbCompanyCN.Visible = _ReportTitleType == "PHHK";
        }


        //Xsj20151005:add for china custom control
        //private void ShowDifferentTitle(POHeader p)
        //{
        //    switch (p.TradeMethod)
        //    {
        //        case "E1":
        //        case "C1": //Xsj:直接進口
        //            if (_langID == "EN")
        //            {
        //                this.lbCompanyEN.Text = Common.CompanyTitleEN_DG;
        //                this.lbCompanyCN.Text = Common.CompanyTitleEN;
        //            }
        //            else
        //            {
        //                this.lbCompanyEN.Text = Common.CompanyTitleCN_DG;
        //                this.lbCompanyCN.Text = Common.CompanyTitleCN;
        //            }

        //            //Xsj:直接進口轉國內結轉
        //            //if()

        //            break;

        //        case "E2":
        //        case "C2": //Xsj:國內結轉
        //            if (_langID == "EN")
        //            {
        //                this.lbCompanyEN.Text = Common.CompanyTitleEN_DG;
        //                this.lbCompanyCN.Text = Common.CompanyTitleEN;
        //            }
        //            else
        //            {
        //                this.lbCompanyEN.Text = Common.CompanyTitleCN_DG;
        //                this.lbCompanyCN.Text = Common.CompanyTitleCN;
        //            } 
        //            break;

        //        case "E3":
        //        case "C3": //Xsj:國內採購
        //            if (_langID == "EN")
        //            {
        //                this.lbCompanyEN.Text = "";
        //                this.lbCompanyCN.Text = Common.CompanyTitleEN_DG;
        //            }
        //            else
        //            {
        //                this.lbCompanyEN.Text = "";
        //                this.lbCompanyCN.Text = Common.CompanyTitleCN_DG;
        //            }
        //            break;
        //        //default:
        //        //    this.lbCompanyEN.Text = this._isDometisPrint ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN;
        //        //    this.lbCompanyCN.Text = this._isDometisPrint ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN;
        //            break;
        //    }
        //}
        //------------------------------------------------

        #endregion

    }
}
