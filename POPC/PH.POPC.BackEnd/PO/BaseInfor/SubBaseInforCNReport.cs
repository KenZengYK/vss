using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.PO.BaseInfor
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class SubBaseInforCNReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region Designer

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private System.Windows.Forms.BindingSource bindingSource1;
        private GroupHeaderBand GroupHeader4;
        private System.Windows.Forms.BindingSource bindingSource2;
        private XRControlStyle csHeaderSmall;
        private XRTable tableTransit;
        private XRTableRow xrTableRow29;
        private XRTableCell cellTerms;
        private XRTableRow trowTransitTitle1;
        private XRTableCell cellTransitWindow;
        private XRTableRow trowTransitTitle2;
        private XRTableCell cellTransitPoit1;
        private XRTableCell xrTableCell76;
        private XRTableCell cellEndPoint1;
        private XRTableCell cellEndPoint2;
        private XRTableCell cellTransitFrame1;
        private XRTableRow trowTransitData;
        private XRTableCell xrTableCell110;
        private XRTableCell cellEndPointName;
        private XRTableCell cellEndPointNameData;
        private XRTableCell cellTransitFrame2;
        private XRTableRow trowTransitData2;
        private XRTableCell xrTableCell17;
        private XRTableCell cellEndPointAddress;
        private XRTableCell cellEndPointAddressData;
        private XRTableCell cellTransitFrame3;
        private XRTable xrTable6;
        private XRTableRow xrTableRow9;
        private XRTableCell xrTableCell43;
        private XRTableCell xrTableCell60;
        private XRTableRow xrTableRow14;
        private XRTableCell xrTableCell47;
        private XRTableCell xrTableCell61;
        private XRTableRow xrTableRow15;
        private XRTableCell xrTableCell55;
        private XRTableCell xrTableCell63;
        private XRTableCell xrTableCell56;
        private XRTableCell xrTableCell68;
        private XRTableRow xrTableRow30;
        private XRTableCell xrTableCell57;
        private XRTableCell xrTableCell64;
        private XRTableCell xrTableCell58;
        private XRTableCell xrTableCell69;
        private XRTableRow xrTableRow31;
        private XRTableCell xrTableCell24;
        private XRTableCell xrTableCell62;
        private XRTableCell xrTableCell40;
        private XRTable xrTable8;
        private XRTableRow xrTableRow20;
        private XRTableCell xrTableCell11;
        private XRTableCell xrTableCell12;
        private XRTableRow xrTableRow7;
        private XRTableCell xrTableCell1;
        private XRTableCell xrTableCell3;
        private XRTableRow xrTableRow21;
        private XRTableCell xrTableCell20;
        private XRTableCell xrTableCell27;
        private XRTableRow xrTableRow22;
        private XRTableCell xrTableCell39;
        private XRTableCell xrTableCell19;
        private XRTableCell lblVATSubTotalCaption;
        private XRTableCell lblVATSubTotalValue;
        private XRTableCell lblTradeMethod;
        private XRTableRow xrTableRow23;
        private XRTableCell xrTableCell80;
        private XRTableCell xrTableCell81;
        private XRTableCell lblGrandTotal;
        private XRTableRow xrTableRow24;
        private XRTableCell xrTableCell95;
        private XRTableCell xrTableCell96;
        private XRTableCell lblVAT;
        private XRTableCell xrTableCell5;
        private XRTableCell lblHasVAT;
        private XRTableCell xrTableCell6;
        private XRTableCell xrTableCell13;
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
            this.GroupHeader4 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable6 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow9 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell43 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell60 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow14 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell47 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell61 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow15 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell55 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell63 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell56 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell68 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow30 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell57 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell64 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell58 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell69 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow31 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell24 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell62 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell40 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable8 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow20 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow21 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow22 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell39 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblVATSubTotalCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblVATSubTotalValue = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblVAT = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblTradeMethod = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow23 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell80 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell81 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblGrandTotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblHasVAT = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow24 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell95 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell96 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableTransit = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow29 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTerms = new DevExpress.XtraReports.UI.XRTableCell();
            this.trowTransitTitle1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTransitWindow = new DevExpress.XtraReports.UI.XRTableCell();
            this.trowTransitTitle2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTransitPoit1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell76 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPoint1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPoint2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTransitFrame1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.trowTransitData = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell110 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointName = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointNameData = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTransitFrame2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.trowTransitData2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointAddress = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointAddressData = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTransitFrame3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tableTransit)).BeginInit();
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
            // GroupHeader4
            // 
            this.GroupHeader4.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable6,
            this.xrTable8,
            this.tableTransit});
            this.GroupHeader4.Height = 185;
            this.GroupHeader4.Name = "GroupHeader4";
            // 
            // xrTable6
            // 
            this.xrTable6.Location = new System.Drawing.Point(0, 0);
            this.xrTable6.Name = "xrTable6";
            this.xrTable6.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow9,
            this.xrTableRow14,
            this.xrTableRow15,
            this.xrTableRow30,
            this.xrTableRow31});
            this.xrTable6.Size = new System.Drawing.Size(450, 102);
            this.xrTable6.StyleName = "csHeader";
            this.xrTable6.StylePriority.UseBorders = false;
            this.xrTable6.StylePriority.UseTextAlignment = false;
            this.xrTable6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow9
            // 
            this.xrTableRow9.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell43,
            this.xrTableCell60,
            this.xrTableCell6,
            this.xrTableCell13});
            this.xrTableRow9.Name = "xrTableRow9";
            this.xrTableRow9.Size = new System.Drawing.Size(450, 19);
            // 
            // xrTableCell43
            // 
            this.xrTableCell43.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrTableCell43.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell43.Name = "xrTableCell43";
            this.xrTableCell43.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell43.Size = new System.Drawing.Size(49, 19);
            this.xrTableCell43.StylePriority.UseBorders = false;
            this.xrTableCell43.Text = "供應商:";
            // 
            // xrTableCell60
            // 
            this.xrTableCell60.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell60.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MIDcSupplierName", "")});
            this.xrTableCell60.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell60.Name = "xrTableCell60";
            this.xrTableCell60.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell60.Size = new System.Drawing.Size(333, 19);
            this.xrTableCell60.StylePriority.UseBorders = false;
            this.xrTableCell60.Text = "xrTableCell60";
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell6.Location = new System.Drawing.Point(382, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(31, 19);
            this.xrTableCell6.StylePriority.UseBorders = false;
            this.xrTableCell6.Text = "代碼:";
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell13.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Supplier", "")});
            this.xrTableCell13.Location = new System.Drawing.Point(413, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(37, 19);
            this.xrTableCell13.StylePriority.UseBorders = false;
            this.xrTableCell13.Text = "xrTableCell13";
            // 
            // xrTableRow14
            // 
            this.xrTableRow14.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell47,
            this.xrTableCell61});
            this.xrTableRow14.Name = "xrTableRow14";
            this.xrTableRow14.Size = new System.Drawing.Size(450, 31);
            // 
            // xrTableCell47
            // 
            this.xrTableCell47.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell47.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell47.Name = "xrTableCell47";
            this.xrTableCell47.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell47.Size = new System.Drawing.Size(49, 31);
            this.xrTableCell47.StylePriority.UseBorders = false;
            this.xrTableCell47.Text = " ";
            // 
            // xrTableCell61
            // 
            this.xrTableCell61.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell61.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "MIDcSupplierAddress", "")});
            this.xrTableCell61.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell61.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell61.Multiline = true;
            this.xrTableCell61.Name = "xrTableCell61";
            this.xrTableCell61.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell61.Size = new System.Drawing.Size(401, 31);
            this.xrTableCell61.StylePriority.UseBorders = false;
            this.xrTableCell61.StylePriority.UseFont = false;
            this.xrTableCell61.StylePriority.UseTextAlignment = false;
            this.xrTableCell61.Text = "xrTableCell61";
            this.xrTableCell61.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow15
            // 
            this.xrTableRow15.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell55,
            this.xrTableCell63,
            this.xrTableCell56,
            this.xrTableCell68});
            this.xrTableRow15.Name = "xrTableRow15";
            this.xrTableRow15.Size = new System.Drawing.Size(450, 17);
            // 
            // xrTableCell55
            // 
            this.xrTableCell55.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell55.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell55.Name = "xrTableCell55";
            this.xrTableCell55.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell55.Size = new System.Drawing.Size(49, 17);
            this.xrTableCell55.StylePriority.UseBorders = false;
            this.xrTableCell55.Text = "收件人:";
            // 
            // xrTableCell63
            // 
            this.xrTableCell63.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell63.Name = "xrTableCell63";
            this.xrTableCell63.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell63.Size = new System.Drawing.Size(164, 17);
            this.xrTableCell63.Text = "[AttnPerson]";
            // 
            // xrTableCell56
            // 
            this.xrTableCell56.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell56.Location = new System.Drawing.Point(213, 0);
            this.xrTableCell56.Name = "xrTableCell56";
            this.xrTableCell56.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell56.Size = new System.Drawing.Size(32, 17);
            this.xrTableCell56.StylePriority.UseBorders = false;
            this.xrTableCell56.StylePriority.UseFont = false;
            this.xrTableCell56.Text = "電郵:";
            // 
            // xrTableCell68
            // 
            this.xrTableCell68.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell68.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Email", "")});
            this.xrTableCell68.Location = new System.Drawing.Point(245, 0);
            this.xrTableCell68.Name = "xrTableCell68";
            this.xrTableCell68.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell68.Size = new System.Drawing.Size(205, 17);
            this.xrTableCell68.StylePriority.UseBorders = false;
            this.xrTableCell68.Text = "[EMail]";
            // 
            // xrTableRow30
            // 
            this.xrTableRow30.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell57,
            this.xrTableCell64,
            this.xrTableCell58,
            this.xrTableCell69});
            this.xrTableRow30.Name = "xrTableRow30";
            this.xrTableRow30.Size = new System.Drawing.Size(450, 17);
            // 
            // xrTableCell57
            // 
            this.xrTableCell57.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell57.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell57.Name = "xrTableCell57";
            this.xrTableCell57.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell57.Size = new System.Drawing.Size(49, 17);
            this.xrTableCell57.StylePriority.UseBorders = false;
            this.xrTableCell57.Text = "電話:";
            // 
            // xrTableCell64
            // 
            this.xrTableCell64.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell64.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "TelNumber", "")});
            this.xrTableCell64.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell64.Name = "xrTableCell64";
            this.xrTableCell64.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell64.Size = new System.Drawing.Size(164, 17);
            this.xrTableCell64.StylePriority.UseBorders = false;
            this.xrTableCell64.StylePriority.UsePadding = false;
            this.xrTableCell64.Text = "[Tel]";
            // 
            // xrTableCell58
            // 
            this.xrTableCell58.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell58.Location = new System.Drawing.Point(213, 0);
            this.xrTableCell58.Name = "xrTableCell58";
            this.xrTableCell58.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell58.Size = new System.Drawing.Size(32, 17);
            this.xrTableCell58.StylePriority.UseBorders = false;
            this.xrTableCell58.StylePriority.UseFont = false;
            this.xrTableCell58.Text = "傳真:";
            // 
            // xrTableCell69
            // 
            this.xrTableCell69.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell69.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FaxNumber", "")});
            this.xrTableCell69.Location = new System.Drawing.Point(245, 0);
            this.xrTableCell69.Name = "xrTableCell69";
            this.xrTableCell69.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell69.Size = new System.Drawing.Size(205, 17);
            this.xrTableCell69.StylePriority.UseBorders = false;
            this.xrTableCell69.Text = "[Fax]";
            // 
            // xrTableRow31
            // 
            this.xrTableRow31.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell24,
            this.xrTableCell62,
            this.xrTableCell40});
            this.xrTableRow31.Name = "xrTableRow31";
            this.xrTableRow31.Size = new System.Drawing.Size(450, 18);
            // 
            // xrTableCell24
            // 
            this.xrTableCell24.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell24.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell24.Multiline = true;
            this.xrTableCell24.Name = "xrTableCell24";
            this.xrTableCell24.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell24.Size = new System.Drawing.Size(120, 18);
            this.xrTableCell24.StylePriority.UseBorders = false;
            this.xrTableCell24.Text = "終端客戶代碼: [EndCustCode]";
            this.xrTableCell24.WordWrap = false;
            // 
            // xrTableCell62
            // 
            this.xrTableCell62.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell62.Location = new System.Drawing.Point(120, 0);
            this.xrTableCell62.Name = "xrTableCell62";
            this.xrTableCell62.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell62.Size = new System.Drawing.Size(93, 18);
            this.xrTableCell62.StylePriority.UseBorders = false;
            this.xrTableCell62.Text = "買方生產基地: [Factory]";
            this.xrTableCell62.WordWrap = false;
            // 
            // xrTableCell40
            // 
            this.xrTableCell40.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell40.Location = new System.Drawing.Point(213, 0);
            this.xrTableCell40.Name = "xrTableCell40";
            this.xrTableCell40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell40.Size = new System.Drawing.Size(237, 18);
            this.xrTableCell40.StylePriority.UseBorders = false;
            this.xrTableCell40.Text = "供應商工廠位置: [LocationOfSuppFactoryDescCN]";
            this.xrTableCell40.WordWrap = false;
            // 
            // xrTable8
            // 
            this.xrTable8.Location = new System.Drawing.Point(453, 0);
            this.xrTable8.Name = "xrTable8";
            this.xrTable8.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow20,
            this.xrTableRow7,
            this.xrTableRow21,
            this.xrTableRow22,
            this.xrTableRow23,
            this.xrTableRow24});
            this.xrTable8.Size = new System.Drawing.Size(312, 102);
            this.xrTable8.StyleName = "csHeader";
            this.xrTable8.StylePriority.UseBorders = false;
            this.xrTable8.StylePriority.UseTextAlignment = false;
            this.xrTable8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow20
            // 
            this.xrTableRow20.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell11,
            this.xrTableCell12});
            this.xrTableRow20.Name = "xrTableRow20";
            this.xrTableRow20.Size = new System.Drawing.Size(312, 17);
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrTableCell11.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(65, 17);
            this.xrTableCell11.StylePriority.UseBorders = false;
            this.xrTableCell11.StylePriority.UsePadding = false;
            this.xrTableCell11.StylePriority.UseTextAlignment = false;
            this.xrTableCell11.Text = "受益人:";
            this.xrTableCell11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell12.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BeneficiaryName", "")});
            this.xrTableCell12.Location = new System.Drawing.Point(65, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(247, 17);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.StylePriority.UsePadding = false;
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "60 days after monthly statement (AMS 60)";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow7
            // 
            this.xrTableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell3});
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(312, 17);
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(65, 17);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.Text = "付款條款:";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell3.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PaymentTermCNDesc", "")});
            this.xrTableCell3.Location = new System.Drawing.Point(65, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(247, 17);
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.Text = "xrTableCell3";
            // 
            // xrTableRow21
            // 
            this.xrTableRow21.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell20,
            this.xrTableCell27});
            this.xrTableRow21.Name = "xrTableRow21";
            this.xrTableRow21.Size = new System.Drawing.Size(312, 17);
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell20.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(65, 17);
            this.xrTableCell20.StylePriority.UseBorders = false;
            this.xrTableCell20.StylePriority.UsePadding = false;
            this.xrTableCell20.Text = "國際貿易條款:";
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell27.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "IncotermsCNDesc", "")});
            this.xrTableCell27.Location = new System.Drawing.Point(65, 0);
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(247, 17);
            this.xrTableCell27.StylePriority.UseBorders = false;
            this.xrTableCell27.Text = "Delivered Duty Paid (DDP)";
            // 
            // xrTableRow22
            // 
            this.xrTableRow22.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell39,
            this.xrTableCell19,
            this.lblVATSubTotalCaption,
            this.lblVATSubTotalValue,
            this.lblVAT,
            this.xrTableCell5,
            this.lblTradeMethod});
            this.xrTableRow22.Name = "xrTableRow22";
            this.xrTableRow22.Size = new System.Drawing.Size(312, 17);
            // 
            // xrTableCell39
            // 
            this.xrTableCell39.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell39.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell39.Name = "xrTableCell39";
            this.xrTableCell39.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell39.Size = new System.Drawing.Size(65, 17);
            this.xrTableCell39.StylePriority.UseBorders = false;
            this.xrTableCell39.Text = "運輸方式 :";
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "TransitModeCN", "")});
            this.xrTableCell19.Location = new System.Drawing.Point(65, 0);
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(56, 17);
            this.xrTableCell19.Text = "Land";
            // 
            // lblVATSubTotalCaption
            // 
            this.lblVATSubTotalCaption.Location = new System.Drawing.Point(121, 0);
            this.lblVATSubTotalCaption.Name = "lblVATSubTotalCaption";
            this.lblVATSubTotalCaption.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lblVATSubTotalCaption.Size = new System.Drawing.Size(27, 17);
            this.lblVATSubTotalCaption.StylePriority.UseTextAlignment = false;
            this.lblVATSubTotalCaption.Text = "小計金額";
            this.lblVATSubTotalCaption.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lblVATSubTotalValue
            // 
            this.lblVATSubTotalValue.Location = new System.Drawing.Point(148, 0);
            this.lblVATSubTotalValue.Name = "lblVATSubTotalValue";
            this.lblVATSubTotalValue.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblVATSubTotalValue.Size = new System.Drawing.Size(9, 17);
            this.lblVATSubTotalValue.Text = " ";
            // 
            // lblVAT
            // 
            this.lblVAT.Location = new System.Drawing.Point(157, 0);
            this.lblVAT.Name = "lblVAT";
            this.lblVAT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblVAT.Size = new System.Drawing.Size(9, 17);
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Location = new System.Drawing.Point(166, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(49, 17);
            this.xrTableCell5.Text = "貿易方式 :";
            // 
            // lblTradeMethod
            // 
            this.lblTradeMethod.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.lblTradeMethod.Location = new System.Drawing.Point(215, 0);
            this.lblTradeMethod.Name = "lblTradeMethod";
            this.lblTradeMethod.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblTradeMethod.Size = new System.Drawing.Size(97, 17);
            this.lblTradeMethod.StylePriority.UseBorders = false;
            this.lblTradeMethod.Text = " ";
            // 
            // xrTableRow23
            // 
            this.xrTableRow23.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell80,
            this.xrTableCell81,
            this.lblGrandTotal,
            this.lblHasVAT});
            this.xrTableRow23.Name = "xrTableRow23";
            this.xrTableRow23.Size = new System.Drawing.Size(312, 17);
            // 
            // xrTableCell80
            // 
            this.xrTableCell80.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell80.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell80.Name = "xrTableCell80";
            this.xrTableCell80.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell80.Size = new System.Drawing.Size(65, 17);
            this.xrTableCell80.StylePriority.UseBorders = false;
            this.xrTableCell80.Text = "總金額 :";
            // 
            // xrTableCell81
            // 
            this.xrTableCell81.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell81.Location = new System.Drawing.Point(65, 0);
            this.xrTableCell81.Name = "xrTableCell81";
            this.xrTableCell81.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell81.Size = new System.Drawing.Size(56, 17);
            this.xrTableCell81.StylePriority.UseFont = false;
            this.xrTableCell81.StylePriority.UseTextAlignment = false;
            this.xrTableCell81.Text = "[Currency]";
            // 
            // lblGrandTotal
            // 
            this.lblGrandTotal.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.lblGrandTotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblGrandTotal.Location = new System.Drawing.Point(121, 0);
            this.lblGrandTotal.Name = "lblGrandTotal";
            this.lblGrandTotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblGrandTotal.Size = new System.Drawing.Size(117, 17);
            this.lblGrandTotal.StylePriority.UseBorders = false;
            this.lblGrandTotal.StylePriority.UseFont = false;
            this.lblGrandTotal.Text = " ";
            // 
            // lblHasVAT
            // 
            this.lblHasVAT.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.lblHasVAT.Location = new System.Drawing.Point(238, 0);
            this.lblHasVAT.Name = "lblHasVAT";
            this.lblHasVAT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblHasVAT.Size = new System.Drawing.Size(74, 17);
            this.lblHasVAT.StylePriority.UseBorders = false;
            // 
            // xrTableRow24
            // 
            this.xrTableRow24.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell95,
            this.xrTableCell96});
            this.xrTableRow24.Name = "xrTableRow24";
            this.xrTableRow24.Size = new System.Drawing.Size(312, 17);
            // 
            // xrTableCell95
            // 
            this.xrTableCell95.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell95.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell95.Name = "xrTableCell95";
            this.xrTableCell95.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell95.Size = new System.Drawing.Size(65, 17);
            this.xrTableCell95.StylePriority.UseBorders = false;
            this.xrTableCell95.Text = "聯系人:";
            // 
            // xrTableCell96
            // 
            this.xrTableCell96.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell96.Location = new System.Drawing.Point(65, 0);
            this.xrTableCell96.Name = "xrTableCell96";
            this.xrTableCell96.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell96.Size = new System.Drawing.Size(247, 17);
            this.xrTableCell96.StylePriority.UseBorders = false;
            this.xrTableCell96.StylePriority.UseTextAlignment = false;
            this.xrTableCell96.Text = "[PurchaseOfficerAndEmail]";
            // 
            // tableTransit
            // 
            this.tableTransit.Location = new System.Drawing.Point(0, 102);
            this.tableTransit.Name = "tableTransit";
            this.tableTransit.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow29,
            this.trowTransitTitle1,
            this.trowTransitTitle2,
            this.trowTransitData,
            this.trowTransitData2});
            this.tableTransit.Size = new System.Drawing.Size(765, 83);
            this.tableTransit.StyleName = "csHeader";
            this.tableTransit.StylePriority.UseBorders = false;
            this.tableTransit.StylePriority.UseTextAlignment = false;
            this.tableTransit.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow29
            // 
            this.xrTableRow29.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellTerms});
            this.xrTableRow29.Name = "xrTableRow29";
            this.xrTableRow29.Size = new System.Drawing.Size(765, 18);
            // 
            // cellTerms
            // 
            this.cellTerms.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellTerms.Location = new System.Drawing.Point(0, 0);
            this.cellTerms.Name = "cellTerms";
            this.cellTerms.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellTerms.Size = new System.Drawing.Size(765, 18);
            this.cellTerms.StylePriority.UseFont = false;
            this.cellTerms.StylePriority.UsePadding = false;
            this.cellTerms.Text = "根據雙方所同意的加工條款和條件,現向貴公司提供如下物料,請作加工工序完成如下之物料品種並交回給我方。請即時承認收到和接受此加工單,並首先使用電郵確認,再交回已簽字" +
                "的此訂單複本";
            // 
            // trowTransitTitle1
            // 
            this.trowTransitTitle1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellTransitWindow});
            this.trowTransitTitle1.Name = "trowTransitTitle1";
            this.trowTransitTitle1.Size = new System.Drawing.Size(765, 18);
            this.trowTransitTitle1.StylePriority.UseTextAlignment = false;
            this.trowTransitTitle1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // cellTransitWindow
            // 
            this.cellTransitWindow.BackColor = System.Drawing.Color.LightCyan;
            this.cellTransitWindow.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTransitWindow.Location = new System.Drawing.Point(0, 0);
            this.cellTransitWindow.Name = "cellTransitWindow";
            this.cellTransitWindow.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTransitWindow.Size = new System.Drawing.Size(765, 18);
            this.cellTransitWindow.StylePriority.UseBackColor = false;
            this.cellTransitWindow.StylePriority.UseBorders = false;
            this.cellTransitWindow.StylePriority.UseTextAlignment = false;
            this.cellTransitWindow.Text = "時間框架 I --由交貨點到我方的收貨終點";
            this.cellTransitWindow.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // trowTransitTitle2
            // 
            this.trowTransitTitle2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellTransitPoit1,
            this.xrTableCell76,
            this.cellEndPoint1,
            this.cellEndPoint2,
            this.cellTransitFrame1});
            this.trowTransitTitle2.Name = "trowTransitTitle2";
            this.trowTransitTitle2.Size = new System.Drawing.Size(765, 17);
            // 
            // cellTransitPoit1
            // 
            this.cellTransitPoit1.BackColor = System.Drawing.Color.LightCyan;
            this.cellTransitPoit1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTransitPoit1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.cellTransitPoit1.Location = new System.Drawing.Point(0, 0);
            this.cellTransitPoit1.Name = "cellTransitPoit1";
            this.cellTransitPoit1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTransitPoit1.Size = new System.Drawing.Size(69, 17);
            this.cellTransitPoit1.StylePriority.UseBackColor = false;
            this.cellTransitPoit1.StylePriority.UseBorders = false;
            this.cellTransitPoit1.StylePriority.UseFont = false;
            this.cellTransitPoit1.StylePriority.UseTextAlignment = false;
            this.cellTransitPoit1.Text = "交貨點";
            this.cellTransitPoit1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell76
            // 
            this.xrTableCell76.BackColor = System.Drawing.Color.LightCyan;
            this.xrTableCell76.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell76.Font = new System.Drawing.Font("Arial Unicode MS", 6F);
            this.xrTableCell76.Location = new System.Drawing.Point(69, 0);
            this.xrTableCell76.Name = "xrTableCell76";
            this.xrTableCell76.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell76.Size = new System.Drawing.Size(160, 17);
            this.xrTableCell76.StylePriority.UseBackColor = false;
            this.xrTableCell76.StylePriority.UseBorders = false;
            this.xrTableCell76.StylePriority.UseFont = false;
            this.xrTableCell76.StylePriority.UseTextAlignment = false;
            this.xrTableCell76.Text = "(交貨期以此點為準)";
            // 
            // cellEndPoint1
            // 
            this.cellEndPoint1.BackColor = System.Drawing.Color.LightCyan;
            this.cellEndPoint1.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.cellEndPoint1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellEndPoint1.Location = new System.Drawing.Point(229, 0);
            this.cellEndPoint1.Name = "cellEndPoint1";
            this.cellEndPoint1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPoint1.Size = new System.Drawing.Size(192, 17);
            this.cellEndPoint1.StylePriority.UseBackColor = false;
            this.cellEndPoint1.StylePriority.UseBorders = false;
            this.cellEndPoint1.StylePriority.UseFont = false;
            this.cellEndPoint1.StylePriority.UseTextAlignment = false;
            this.cellEndPoint1.Text = "收貨終點";
            this.cellEndPoint1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellEndPoint2
            // 
            this.cellEndPoint2.BackColor = System.Drawing.Color.LightCyan;
            this.cellEndPoint2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellEndPoint2.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellEndPoint2.Location = new System.Drawing.Point(421, 0);
            this.cellEndPoint2.Name = "cellEndPoint2";
            this.cellEndPoint2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPoint2.Size = new System.Drawing.Size(289, 17);
            this.cellEndPoint2.StylePriority.UseBackColor = false;
            this.cellEndPoint2.StylePriority.UseBorders = false;
            this.cellEndPoint2.StylePriority.UseFont = false;
            this.cellEndPoint2.StylePriority.UseTextAlignment = false;
            this.cellEndPoint2.Text = "( 若國際貿易條款是DDP, 此點與交貨點應相同)";
            // 
            // cellTransitFrame1
            // 
            this.cellTransitFrame1.BackColor = System.Drawing.Color.LightCyan;
            this.cellTransitFrame1.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.cellTransitFrame1.Location = new System.Drawing.Point(710, 0);
            this.cellTransitFrame1.Name = "cellTransitFrame1";
            this.cellTransitFrame1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTransitFrame1.Size = new System.Drawing.Size(55, 17);
            this.cellTransitFrame1.StylePriority.UseBackColor = false;
            this.cellTransitFrame1.StylePriority.UseBorders = false;
            this.cellTransitFrame1.StylePriority.UseTextAlignment = false;
            this.cellTransitFrame1.Text = "時間框架 I";
            this.cellTransitFrame1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // trowTransitData
            // 
            this.trowTransitData.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell110,
            this.cellEndPointName,
            this.cellEndPointNameData,
            this.cellTransitFrame2});
            this.trowTransitData.Name = "trowTransitData";
            this.trowTransitData.Size = new System.Drawing.Size(765, 15);
            // 
            // xrTableCell110
            // 
            this.xrTableCell110.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell110.CanGrow = false;
            this.xrTableCell110.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "TransitPointCN", "")});
            this.xrTableCell110.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell110.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell110.Multiline = true;
            this.xrTableCell110.Name = "xrTableCell110";
            this.xrTableCell110.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell110.Size = new System.Drawing.Size(229, 15);
            this.xrTableCell110.StylePriority.UseBorders = false;
            this.xrTableCell110.StylePriority.UseFont = false;
            this.xrTableCell110.StylePriority.UseTextAlignment = false;
            this.xrTableCell110.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // cellEndPointName
            // 
            this.cellEndPointName.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.cellEndPointName.CanGrow = false;
            this.cellEndPointName.Location = new System.Drawing.Point(229, 0);
            this.cellEndPointName.Multiline = true;
            this.cellEndPointName.Name = "cellEndPointName";
            this.cellEndPointName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPointName.Size = new System.Drawing.Size(82, 15);
            this.cellEndPointName.StylePriority.UseBorders = false;
            this.cellEndPointName.Text = "代碼及名稱:";
            // 
            // cellEndPointNameData
            // 
            this.cellEndPointNameData.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.cellEndPointNameData.CanGrow = false;
            this.cellEndPointNameData.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellEndPointNameData.Location = new System.Drawing.Point(311, 0);
            this.cellEndPointNameData.Multiline = true;
            this.cellEndPointNameData.Name = "cellEndPointNameData";
            this.cellEndPointNameData.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellEndPointNameData.Size = new System.Drawing.Size(399, 15);
            this.cellEndPointNameData.StylePriority.UseBorders = false;
            this.cellEndPointNameData.StylePriority.UseFont = false;
            this.cellEndPointNameData.StylePriority.UsePadding = false;
            this.cellEndPointNameData.Text = "[EndPointCN]";
            // 
            // cellTransitFrame2
            // 
            this.cellTransitFrame2.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.cellTransitFrame2.CanGrow = false;
            this.cellTransitFrame2.Location = new System.Drawing.Point(710, 0);
            this.cellTransitFrame2.Multiline = true;
            this.cellTransitFrame2.Name = "cellTransitFrame2";
            this.cellTransitFrame2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTransitFrame2.Size = new System.Drawing.Size(55, 15);
            this.cellTransitFrame2.StylePriority.UseBorders = false;
            this.cellTransitFrame2.StylePriority.UseTextAlignment = false;
            this.cellTransitFrame2.Text = "[TransitFrame] 天";
            this.cellTransitFrame2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // trowTransitData2
            // 
            this.trowTransitData2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell17,
            this.cellEndPointAddress,
            this.cellEndPointAddressData,
            this.cellTransitFrame3});
            this.trowTransitData2.Name = "trowTransitData2";
            this.trowTransitData2.Size = new System.Drawing.Size(765, 15);
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell17.CanGrow = false;
            this.xrTableCell17.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "IncotermsPointPort", "")});
            this.xrTableCell17.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(229, 15);
            this.xrTableCell17.StylePriority.UseBorders = false;
            this.xrTableCell17.StylePriority.UseTextAlignment = false;
            this.xrTableCell17.Text = "xrTableCell17";
            this.xrTableCell17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellEndPointAddress
            // 
            this.cellEndPointAddress.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.cellEndPointAddress.CanGrow = false;
            this.cellEndPointAddress.Location = new System.Drawing.Point(229, 0);
            this.cellEndPointAddress.Name = "cellEndPointAddress";
            this.cellEndPointAddress.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPointAddress.Size = new System.Drawing.Size(82, 15);
            this.cellEndPointAddress.StylePriority.UseBorders = false;
            this.cellEndPointAddress.Text = "地址:";
            // 
            // cellEndPointAddressData
            // 
            this.cellEndPointAddressData.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellEndPointAddressData.CanGrow = false;
            this.cellEndPointAddressData.Location = new System.Drawing.Point(311, 0);
            this.cellEndPointAddressData.Name = "cellEndPointAddressData";
            this.cellEndPointAddressData.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPointAddressData.Size = new System.Drawing.Size(399, 15);
            this.cellEndPointAddressData.StylePriority.UseBorders = false;
            this.cellEndPointAddressData.Text = "[EndPointAddressCN]";
            // 
            // cellTransitFrame3
            // 
            this.cellTransitFrame3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTransitFrame3.CanGrow = false;
            this.cellTransitFrame3.Location = new System.Drawing.Point(710, 0);
            this.cellTransitFrame3.Multiline = true;
            this.cellTransitFrame3.Name = "cellTransitFrame3";
            this.cellTransitFrame3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTransitFrame3.Size = new System.Drawing.Size(55, 15);
            this.cellTransitFrame3.StylePriority.UseBorders = false;
            this.cellTransitFrame3.StylePriority.UseTextAlignment = false;
            this.cellTransitFrame3.Text = "(只供參考)";
            this.cellTransitFrame3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // bindingSource2
            // 
            this.bindingSource2.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // SubBaseInforCNReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.GroupHeader4});
            this.DataSource = this.bindingSource2;
            this.ExportOptions.PrintPreview.DefaultFileName = "POReport(Individual item)";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csDetail,
            this.csHeaderSmall});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.MainReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tableTransit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        #endregion


        #region Creator

        public SubBaseInforCNReport()
        {
            InitializeComponent();

            //this.xrTableCell2.Text = "我司為海關認證企業，請各商業務夥伴按海關認證企業要求，優化和完善貿易，安全管理！";

            //
            // TODO: Add constructor logic here
            //
            //_project_ttl = new List<string>();
            //_color_ttl = new List<string>();
        }
        public SubBaseInforCNReport(bool isPHCopy, bool isVatPrint, bool isScO, string langID)
            : this()
        {
            _isPHCopy = isPHCopy;
            IsVatPrint = isVatPrint;
            _isScO = isScO;
            _langID = langID;
        }

        #endregion

        #region fields

        private bool _isPHCopy;
        private bool _isScO;
        private bool _isVatPrint;
        private string _langID;

        public bool IsVatPrint
        {
            get { return _isVatPrint; }
            set
            {
                _isVatPrint = value;

                if (_isVatPrint)
                {
                    //this.lblVATSubTotalCaption.Text = "";
                    this.lblVATSubTotalValue.Text = Common.VATSubTotalValue;
                    this.lblVAT.Text = Common.VATValue;
                    this.lblGrandTotal.Text = Common.VATGrandTotal;
                }
                else
                {
                    this.lblVATSubTotalCaption.Text = "";
                    this.lblVATSubTotalValue.Text = "";
                    this.lblVAT.Text = "";
                    this.lblGrandTotal.Text = Common.VATGrandTotal2;
                }

            }
        }

        #endregion

        #region Event

        private void MainReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POHeader p = this.GetCurrentRow() as POHeader;
            if (p == null) return;

            SetPHCopyInfor(p);
            SetTerms(p);

            //Xsj20151006:Add TradeMethod
            this.lblTradeMethod.Text = Common.GetTradeMethodByPOHeader(p, this._langID);
            //----------------------


            //------Xsj20160415:為打印VAT單價而註釋掉前面的代碼。----------------------- 
            this.lblHasVAT.Text = p.HaveVAT ? "(含稅)" : "";
            //--------------------------------------------------------------------------
        }

        #endregion

        #region Functions

        private void SetPHCopyInfor(POHeader p)
        {
            if (!this._isPHCopy)
            {
                this.tableTransit.SuspendLayout();
                try
                {

                    this.cellEndPointAddress.Text = "";
                    this.cellEndPointAddressData.Text = "";
                    this.cellTransitFrame3.Text = "";

                    //Xsj:remove the defect cell
                    this.trowTransitTitle2.Cells.Remove(this.cellEndPoint2);
                    this.trowTransitTitle2.Cells.Remove(this.cellTransitFrame1);

                    this.trowTransitData.Cells.Remove(this.cellEndPointNameData);
                    this.trowTransitData.Cells.Remove(this.cellTransitFrame2);

                    //Xsj20151026:add
                    //this.trowCustomNote.Cells.Remove(this.CellTemp);


                    this.trowTransitData2.Cells.Remove(this.cellEndPointAddressData);
                    this.trowTransitData2.Cells.Remove(this.cellTransitFrame3);

                    this.cellTransitWindow.Text = "";
                    this.cellTransitWindow.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
                    this.cellTransitWindow.BackColor = Color.Transparent;

                    //this.cellEndPoint1.Text = "特別提示";
                    //this.cellEndPointName.Text = p.SpecialNote1;// (p.Factory == "KB" && (p.Supplier == "RUEY" || p.Supplier == "RGNA")) ? "當買方生產基地為 KB (泰國) 及該批次的貨品量可安排 FCL ( 櫃貨)時, ": "";
                    //this.cellEndPointAddress.Text = p.SpecialNote2;// (p.Factory == "KB" && (p.Supplier == "RUEY" || p.Supplier == "RGNA")) ? "交貨點應從香港海港更改為泰國的Chanburi 海港": "";

                    //this.cellEndPoint1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    //this.cellEndPointName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
                    //this.cellEndPointAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;

                    this.cellEndPoint1.Borders = this.cellEndPoint1.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                    this.cellEndPointName.Borders = this.cellEndPointName.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                    this.cellEndPointAddress.Borders = this.cellEndPointAddress.Borders | DevExpress.XtraPrinting.BorderSide.Right;


                    //由David修改 2022-04-25
                    this.cellEndPoint1.Text = "特別提示";
                    this.cellEndPointName.Text = "--";
                    this.cellEndPointAddress.Text = "";

                    this.cellEndPoint1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    this.cellEndPointName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
                    this.cellEndPointAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                }
                finally
                {
                    this.tableTransit.ResumeLayout();
                }
                int h = this.trowTransitTitle1.Height;
                this.trowTransitTitle1.Size = new Size(this.trowTransitTitle1.Width, 1);
                Band band = this.tableTransit.Parent as Band;
                if (band != null) band.Height = band.Height - h + 1;
            }

        }
        private void SetTerms(POHeader p)
        {
            if (p.IsScPO)
            {
                cellTerms.Text = (this._langID == "EN") ?
                    "We would like you to proceed the sub-contracting operation, with material item(s) listed below & supplied by us, and return the finished material item(s) as description below as per our sub-contract agreement of general terms & conditions. Please acknowledge receipt and acceptance of this order immediately & send your confirmation by return email first, then by returning the copy duly signed."
                    : "根據雙方所同意的加工條款和條件,現向貴公司提供如下物料,請作加工工序完成如下之物料品種並交回給我方。請即時承認收到和接受此加工單,並首先使用電郵確認,再交回已簽字的此訂單複本";
            }
            else
            {
                cellTerms.Text = (this._langID == "EN") ?
                    "We would like to purchase the following item(s) from you as per our agreement of general terms & conditions for sales & purchase. Please acknowledge receipt and acceptance of this order immediately & send your confirmation by return email first, then by returning the copy duly signed."
                    : "根據雙方所同意的采購條款，現向貴公司訂購如下商品。請即時承認收到和接受此訂單，並首先使用電郵確認，再交回已簽字的此訂單複本。";
            }
        }

        #endregion

    }
}
