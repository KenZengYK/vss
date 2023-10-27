using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.MIDcNewformat.EN
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class poWireBoneDetailReport : DevExpress.XtraReports.UI.XtraReport
    {
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private XRControlStyle csHeader;
        private GroupHeaderBand GroupHeader1;
        private GroupFooterBand GroupFooter1;
        private XRTable xrTable1;
        private XRTableRow xrTableRow1;
        private XRTableCell xrTableCell15;
        private XRTableCell cellPONOCaption;
        private XRTableCell xrTableCell18;
        private XRTableCell xrTableCell3;
        private XRTableCell xrTableCell1;
        private XRTableCell lblSuppSizeCup;
        private XRTableCell xrTableCell4;
        private XRTableCell xrTableCell6;
        private XRLabel xrLabel1;
        private XRTable xrTable2;
        private XRTableRow xrTableRow2;
        private XRTableCell cellSize2;
        private XRTableCell cellSize4;
        private XRTableCell cellSize7;
        private XRTableCell cellSize1;
        private XRTableCell cellSize3;
        private XRTableCell cellSize5;
        private XRTableCell cellSize6;
        private GroupHeaderBand GroupHeader2;
        private GroupFooterBand GroupFooter2;
        private XRTable xrTable3;
        private XRTableRow xrTableRow3;
        private XRTableCell xrTableCell5;
        private XRTableCell xrTableCell7;
        private XRTableCell xrTableCell8;
        private XRTableCell xrTableCell9;
        private XRTableCell xrTableCell161;
        private XRTableCell cellSize16;
        private XRTableCell cellSize17;
        private XRTableCell xrTableCell22;
        private XRTableCell cellSize11;
        private XRTableCell cellSize12;
        private XRTableCell cellSize13;
        private XRTableCell cellSize14;
        private XRTableCell cellSize15;
        private XRTableCell xrTableCell19;
        private XRTable xrTable4;
        private XRTableRow xrTableRow4;
        private XRTableCell cellItemCode;
        private XRTableCell cellPONO;
        private XRTableCell cellColorCode;
        private XRTableCell xrTableCell13;
        private XRTableCell cellSuppSizeCup;
        private XRTableCell cellQty1;
        private XRTableCell cellQty2;
        private XRTableCell cellQty3;
        private XRTableCell cellQty4;
        private XRTableCell cellQty5;
        private XRTableCell cellQty6;
        private XRTableCell cellQty7;
        private XRTableCell cellSubTtl;
        private XRTableCell cellUom;
        private XRTable xrTable5;
        private XRTableRow xrTableRow5;
        private XRTableCell xrTableCell28;
        private XRTableCell xrTableCell29;
        private XRTableCell xrTableCell30;
        private XRTableCell xrTableCell31;
        private XRTableCell xrTableCell32;
        private XRTableCell cellTtlQty1;
        private XRTableCell cellTtlQty2;
        private XRTableCell cellTtlQty3;
        private XRTableCell cellTtlQty4;
        private XRTableCell cellTtlQty5;
        private XRTableCell cellTtlQty6;
        private XRTableCell cellTtlQty7;
        private XRTableCell xrTableCell40;
        private XRTableCell cellSuppUom;
        private XRControlStyle csHeader2;
        private System.Windows.Forms.BindingSource bindingSource1;
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public poWireBoneDetailReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //
            this.xrTable3.Visible = false;
            this.GroupHeader2.Height = 0;
            this._count = 0;
        }
        public poWireBoneDetailReport(bool isColorPrint)
            : this()
        {
            IsColorPrint = isColorPrint;
        }
        private bool _isColorPrint;
        public bool IsColorPrint
        {
            get { return _isColorPrint; }
            set
            {
                _isColorPrint = value;
                if (_isColorPrint) return;

                this.SuspendLayout();
                try
                {
                    ReportHelper.SetBlackWhiteForStyle(this);
                    ReportHelper.SetBlackWhitePrinting_Report(this);
                }

                finally
                {
                    this.ResumeLayout();
                }
            }
        }
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
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellItemCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellColorCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSuppSizeCup = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSubTtl = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellUom = new DevExpress.XtraReports.UI.XRTableCell();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellPONOCaption = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblSuppSizeCup = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellSize1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrTable5 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell30 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell31 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTtlQty1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTtlQty2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTtlQty3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTtlQty4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTtlQty5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTtlQty6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTtlQty7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell40 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSuppUom = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell161 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellSize17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.csHeader2 = new DevExpress.XtraReports.UI.XRControlStyle();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4});
            this.Detail.Height = 20;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.Detail.AfterPrint += new System.EventHandler(this.Detail_AfterPrint);
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // xrTable4
            // 
            this.xrTable4.Location = new System.Drawing.Point(0, 0);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTable4.Size = new System.Drawing.Size(765, 20);
            this.xrTable4.StyleName = "csHeader2";
            this.xrTable4.StylePriority.UseBorders = false;
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellItemCode,
            this.cellPONO,
            this.cellColorCode,
            this.xrTableCell13,
            this.cellSuppSizeCup,
            this.cellQty1,
            this.cellQty2,
            this.cellQty3,
            this.cellQty4,
            this.cellQty5,
            this.cellQty6,
            this.cellQty7,
            this.cellSubTtl,
            this.cellUom});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(765, 20);
            // 
            // cellItemCode
            // 
            this.cellItemCode.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.cellItemCode.Location = new System.Drawing.Point(0, 0);
            this.cellItemCode.Name = "cellItemCode";
            this.cellItemCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellItemCode.Size = new System.Drawing.Size(70, 20);
            this.cellItemCode.StylePriority.UseBorders = false;
            this.cellItemCode.WordWrap = false;
            // 
            // cellPONO
            // 
            this.cellPONO.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.cellPONO.Location = new System.Drawing.Point(70, 0);
            this.cellPONO.Name = "cellPONO";
            this.cellPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellPONO.Size = new System.Drawing.Size(60, 20);
            this.cellPONO.StylePriority.UseBorders = false;
            this.cellPONO.StylePriority.UseTextAlignment = false;
            this.cellPONO.WordWrap = false;
            // 
            // cellColorCode
            // 
            this.cellColorCode.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.cellColorCode.Location = new System.Drawing.Point(130, 0);
            this.cellColorCode.Multiline = true;
            this.cellColorCode.Name = "cellColorCode";
            this.cellColorCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 2, 0, 0, 100F);
            this.cellColorCode.Size = new System.Drawing.Size(60, 20);
            this.cellColorCode.StylePriority.UseBorders = false;
            this.cellColorCode.StylePriority.UsePadding = false;
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell13.Location = new System.Drawing.Point(190, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(2, 20);
            this.xrTableCell13.StylePriority.UseBorders = false;
            // 
            // cellSuppSizeCup
            // 
            this.cellSuppSizeCup.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSuppSizeCup.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppSizeCup", "")});
            this.cellSuppSizeCup.Location = new System.Drawing.Point(192, 0);
            this.cellSuppSizeCup.Name = "cellSuppSizeCup";
            this.cellSuppSizeCup.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSuppSizeCup.Size = new System.Drawing.Size(53, 20);
            this.cellSuppSizeCup.StylePriority.UseBorders = false;
            // 
            // cellQty1
            // 
            this.cellQty1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty1.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty1", "{0:#,0.##}")});
            this.cellQty1.Location = new System.Drawing.Point(245, 0);
            this.cellQty1.Name = "cellQty1";
            this.cellQty1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellQty1.Size = new System.Drawing.Size(60, 20);
            this.cellQty1.StylePriority.UseBorders = false;
            this.cellQty1.Text = "cellQty1";
            // 
            // cellQty2
            // 
            this.cellQty2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty2.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty2", "{0:#,0.##}")});
            this.cellQty2.Location = new System.Drawing.Point(305, 0);
            this.cellQty2.Name = "cellQty2";
            this.cellQty2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellQty2.Size = new System.Drawing.Size(60, 20);
            this.cellQty2.StylePriority.UseBorders = false;
            this.cellQty2.Text = "cellQty2";
            // 
            // cellQty3
            // 
            this.cellQty3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty3.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty3", "{0:#,0.##}")});
            this.cellQty3.Location = new System.Drawing.Point(365, 0);
            this.cellQty3.Name = "cellQty3";
            this.cellQty3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellQty3.Size = new System.Drawing.Size(60, 20);
            this.cellQty3.StylePriority.UseBorders = false;
            this.cellQty3.Text = "cellQty3";
            // 
            // cellQty4
            // 
            this.cellQty4.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty4.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty4", "{0:#,0.##}")});
            this.cellQty4.Location = new System.Drawing.Point(425, 0);
            this.cellQty4.Name = "cellQty4";
            this.cellQty4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellQty4.Size = new System.Drawing.Size(60, 20);
            this.cellQty4.StylePriority.UseBorders = false;
            this.cellQty4.Text = "cellQty4";
            // 
            // cellQty5
            // 
            this.cellQty5.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty5.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty5", "{0:#,0.##}")});
            this.cellQty5.Location = new System.Drawing.Point(485, 0);
            this.cellQty5.Name = "cellQty5";
            this.cellQty5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellQty5.Size = new System.Drawing.Size(60, 20);
            this.cellQty5.StylePriority.UseBorders = false;
            this.cellQty5.Text = "cellQty5";
            // 
            // cellQty6
            // 
            this.cellQty6.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty6.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty6", "{0:#,0.##}")});
            this.cellQty6.Location = new System.Drawing.Point(545, 0);
            this.cellQty6.Name = "cellQty6";
            this.cellQty6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellQty6.Size = new System.Drawing.Size(60, 20);
            this.cellQty6.StylePriority.UseBorders = false;
            this.cellQty6.Text = "cellQty6";
            // 
            // cellQty7
            // 
            this.cellQty7.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty7.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty7", "{0:#,0.##}")});
            this.cellQty7.Location = new System.Drawing.Point(605, 0);
            this.cellQty7.Name = "cellQty7";
            this.cellQty7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellQty7.Size = new System.Drawing.Size(60, 20);
            this.cellQty7.StylePriority.UseBorders = false;
            this.cellQty7.Text = "cellQty7";
            // 
            // cellSubTtl
            // 
            this.cellSubTtl.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.cellSubTtl.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SubTotalQty", "{0:#,0.##}")});
            this.cellSubTtl.Location = new System.Drawing.Point(665, 0);
            this.cellSubTtl.Name = "cellSubTtl";
            this.cellSubTtl.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSubTtl.Size = new System.Drawing.Size(70, 20);
            this.cellSubTtl.StylePriority.UseBorders = false;
            this.cellSubTtl.Text = "cellSubTtl";
            // 
            // cellUom
            // 
            this.cellUom.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.cellUom.Location = new System.Drawing.Point(735, 0);
            this.cellUom.Multiline = true;
            this.cellUom.Name = "cellUom";
            this.cellUom.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellUom.Size = new System.Drawing.Size(30, 20);
            this.cellUom.StylePriority.UseBorders = false;
            this.cellUom.StylePriority.UseTextAlignment = false;
            this.cellUom.WordWrap = false;
            // 
            // csHeader
            // 
            this.csHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.csHeader.Font = new System.Drawing.Font("Arial", 7F);
            this.csHeader.Name = "csHeader";
            this.csHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.GroupHeader1.Height = 35;
            this.GroupHeader1.Level = 1;
            this.GroupHeader1.Name = "GroupHeader1";
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
            this.xrTable1.Size = new System.Drawing.Size(765, 35);
            this.xrTable1.StyleName = "csHeader";
            this.xrTable1.StylePriority.UseBorders = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell15,
            this.cellPONOCaption,
            this.xrTableCell18,
            this.xrTableCell1,
            this.lblSuppSizeCup,
            this.xrTableCell4,
            this.xrTableCell6,
            this.xrTableCell3});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(765, 35);
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(70, 35);
            this.xrTableCell15.StylePriority.UseBorders = false;
            this.xrTableCell15.Text = "Supp Item Ref#";
            // 
            // cellPONOCaption
            // 
            this.cellPONOCaption.Location = new System.Drawing.Point(70, 0);
            this.cellPONOCaption.Name = "cellPONOCaption";
            this.cellPONOCaption.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellPONOCaption.Size = new System.Drawing.Size(60, 35);
            this.cellPONOCaption.StylePriority.UseTextAlignment = false;
            this.cellPONOCaption.Text = "PO#";
            this.cellPONOCaption.WordWrap = false;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Location = new System.Drawing.Point(130, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(60, 35);
            this.xrTableCell18.StylePriority.UseBorders = false;
            this.xrTableCell18.StylePriority.UsePadding = false;
            this.xrTableCell18.Text = "Our\r\nColor Code";
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell1.Location = new System.Drawing.Point(190, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(2, 35);
            this.xrTableCell1.StylePriority.UseBorders = false;
            // 
            // lblSuppSizeCup
            // 
            this.lblSuppSizeCup.Location = new System.Drawing.Point(192, 0);
            this.lblSuppSizeCup.Name = "lblSuppSizeCup";
            this.lblSuppSizeCup.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblSuppSizeCup.Size = new System.Drawing.Size(53, 35);
            this.lblSuppSizeCup.Text = "Supp Size";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.BackColor = System.Drawing.Color.White;
            this.xrTableCell4.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2,
            this.xrLabel1});
            this.xrTableCell4.Location = new System.Drawing.Point(245, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(420, 35);
            this.xrTableCell4.StylePriority.UseBackColor = false;
            // 
            // xrTable2
            // 
            this.xrTable2.Location = new System.Drawing.Point(0, 17);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTable2.Size = new System.Drawing.Size(420, 18);
            this.xrTable2.StyleName = "csHeader2";
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellSize1,
            this.cellSize2,
            this.cellSize3,
            this.cellSize4,
            this.cellSize5,
            this.cellSize6,
            this.cellSize7});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(420, 18);
            // 
            // cellSize1
            // 
            this.cellSize1.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup1", "")});
            this.cellSize1.Location = new System.Drawing.Point(0, 0);
            this.cellSize1.Name = "cellSize1";
            this.cellSize1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize1.Size = new System.Drawing.Size(60, 18);
            this.cellSize1.StylePriority.UseBackColor = false;
            // 
            // cellSize2
            // 
            this.cellSize2.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup2", "")});
            this.cellSize2.Location = new System.Drawing.Point(60, 0);
            this.cellSize2.Name = "cellSize2";
            this.cellSize2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize2.Size = new System.Drawing.Size(60, 18);
            this.cellSize2.StylePriority.UseBackColor = false;
            // 
            // cellSize3
            // 
            this.cellSize3.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup3", "")});
            this.cellSize3.Location = new System.Drawing.Point(120, 0);
            this.cellSize3.Name = "cellSize3";
            this.cellSize3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize3.Size = new System.Drawing.Size(60, 18);
            // 
            // cellSize4
            // 
            this.cellSize4.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup4", "")});
            this.cellSize4.Location = new System.Drawing.Point(180, 0);
            this.cellSize4.Name = "cellSize4";
            this.cellSize4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize4.Size = new System.Drawing.Size(60, 18);
            // 
            // cellSize5
            // 
            this.cellSize5.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup5", "")});
            this.cellSize5.Location = new System.Drawing.Point(240, 0);
            this.cellSize5.Name = "cellSize5";
            this.cellSize5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize5.Size = new System.Drawing.Size(60, 18);
            // 
            // cellSize6
            // 
            this.cellSize6.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup6", "")});
            this.cellSize6.Location = new System.Drawing.Point(300, 0);
            this.cellSize6.Name = "cellSize6";
            this.cellSize6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize6.Size = new System.Drawing.Size(60, 18);
            // 
            // cellSize7
            // 
            this.cellSize7.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup7", "")});
            this.cellSize7.Location = new System.Drawing.Point(360, 0);
            this.cellSize7.Name = "cellSize7";
            this.cellSize7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize7.Size = new System.Drawing.Size(60, 18);
            // 
            // xrLabel1
            // 
            this.xrLabel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.xrLabel1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrLabel1.Location = new System.Drawing.Point(0, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(420, 17);
            this.xrLabel1.StylePriority.UseBackColor = false;
            this.xrLabel1.StylePriority.UseBorders = false;
            this.xrLabel1.Text = "Our Size/Cup";
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Location = new System.Drawing.Point(665, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(70, 35);
            this.xrTableCell6.Text = "Sub-Ttl";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Location = new System.Drawing.Point(735, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(30, 35);
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "PO\'s\r\nunit";
            this.xrTableCell3.WordWrap = false;
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable5});
            this.GroupFooter1.Height = 20;
            this.GroupFooter1.Level = 1;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // xrTable5
            // 
            this.xrTable5.Location = new System.Drawing.Point(0, 0);
            this.xrTable5.Name = "xrTable5";
            this.xrTable5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5});
            this.xrTable5.Size = new System.Drawing.Size(765, 20);
            this.xrTable5.StyleName = "csHeader2";
            this.xrTable5.StylePriority.UseBorders = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell28,
            this.xrTableCell29,
            this.xrTableCell30,
            this.xrTableCell31,
            this.xrTableCell32,
            this.cellTtlQty1,
            this.cellTtlQty2,
            this.cellTtlQty3,
            this.cellTtlQty4,
            this.cellTtlQty5,
            this.cellTtlQty6,
            this.cellTtlQty7,
            this.xrTableCell40,
            this.cellSuppUom});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(765, 20);
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(70, 20);
            this.xrTableCell28.StylePriority.UseBorders = false;
            this.xrTableCell28.WordWrap = false;
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Location = new System.Drawing.Point(70, 0);
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(60, 20);
            this.xrTableCell29.StylePriority.UseBorders = false;
            this.xrTableCell29.StylePriority.UseTextAlignment = false;
            this.xrTableCell29.WordWrap = false;
            // 
            // xrTableCell30
            // 
            this.xrTableCell30.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell30.Location = new System.Drawing.Point(130, 0);
            this.xrTableCell30.Multiline = true;
            this.xrTableCell30.Name = "xrTableCell30";
            this.xrTableCell30.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 2, 0, 0, 100F);
            this.xrTableCell30.Size = new System.Drawing.Size(60, 20);
            this.xrTableCell30.StylePriority.UseBorders = false;
            this.xrTableCell30.StylePriority.UsePadding = false;
            this.xrTableCell30.Text = "Total";
            // 
            // xrTableCell31
            // 
            this.xrTableCell31.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell31.Location = new System.Drawing.Point(190, 0);
            this.xrTableCell31.Name = "xrTableCell31";
            this.xrTableCell31.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell31.Size = new System.Drawing.Size(2, 20);
            this.xrTableCell31.StylePriority.UseBorders = false;
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell32.Location = new System.Drawing.Point(192, 0);
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(53, 20);
            this.xrTableCell32.StylePriority.UseBorders = false;
            // 
            // cellTtlQty1
            // 
            this.cellTtlQty1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTtlQty1.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty1", "")});
            this.cellTtlQty1.Location = new System.Drawing.Point(245, 0);
            this.cellTtlQty1.Name = "cellTtlQty1";
            this.cellTtlQty1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTtlQty1.Size = new System.Drawing.Size(60, 20);
            this.cellTtlQty1.StylePriority.UseBorders = false;
            xrSummary1.FormatString = "{0:#,0.##}";
            xrSummary1.IgnoreNullValues = true;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellTtlQty1.Summary = xrSummary1;
            // 
            // cellTtlQty2
            // 
            this.cellTtlQty2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTtlQty2.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty2", "")});
            this.cellTtlQty2.Location = new System.Drawing.Point(305, 0);
            this.cellTtlQty2.Name = "cellTtlQty2";
            this.cellTtlQty2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTtlQty2.Size = new System.Drawing.Size(60, 20);
            this.cellTtlQty2.StylePriority.UseBorders = false;
            xrSummary2.FormatString = "{0:#,0.##}";
            xrSummary2.IgnoreNullValues = true;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellTtlQty2.Summary = xrSummary2;
            // 
            // cellTtlQty3
            // 
            this.cellTtlQty3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTtlQty3.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty3", "")});
            this.cellTtlQty3.Location = new System.Drawing.Point(365, 0);
            this.cellTtlQty3.Name = "cellTtlQty3";
            this.cellTtlQty3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTtlQty3.Size = new System.Drawing.Size(60, 20);
            this.cellTtlQty3.StylePriority.UseBorders = false;
            xrSummary3.FormatString = "{0:#,0.##}";
            xrSummary3.IgnoreNullValues = true;
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellTtlQty3.Summary = xrSummary3;
            // 
            // cellTtlQty4
            // 
            this.cellTtlQty4.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTtlQty4.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty4", "")});
            this.cellTtlQty4.Location = new System.Drawing.Point(425, 0);
            this.cellTtlQty4.Name = "cellTtlQty4";
            this.cellTtlQty4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTtlQty4.Size = new System.Drawing.Size(60, 20);
            this.cellTtlQty4.StylePriority.UseBorders = false;
            xrSummary4.FormatString = "{0:#,0.##}";
            xrSummary4.IgnoreNullValues = true;
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellTtlQty4.Summary = xrSummary4;
            // 
            // cellTtlQty5
            // 
            this.cellTtlQty5.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTtlQty5.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty5", "")});
            this.cellTtlQty5.Location = new System.Drawing.Point(485, 0);
            this.cellTtlQty5.Name = "cellTtlQty5";
            this.cellTtlQty5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTtlQty5.Size = new System.Drawing.Size(60, 20);
            this.cellTtlQty5.StylePriority.UseBorders = false;
            xrSummary5.FormatString = "{0:#,0.##}";
            xrSummary5.IgnoreNullValues = true;
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellTtlQty5.Summary = xrSummary5;
            // 
            // cellTtlQty6
            // 
            this.cellTtlQty6.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTtlQty6.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty6", "")});
            this.cellTtlQty6.Location = new System.Drawing.Point(545, 0);
            this.cellTtlQty6.Name = "cellTtlQty6";
            this.cellTtlQty6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTtlQty6.Size = new System.Drawing.Size(60, 20);
            this.cellTtlQty6.StylePriority.UseBorders = false;
            xrSummary6.FormatString = "{0:#,0.##}";
            xrSummary6.IgnoreNullValues = true;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellTtlQty6.Summary = xrSummary6;
            // 
            // cellTtlQty7
            // 
            this.cellTtlQty7.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellTtlQty7.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppQty7", "")});
            this.cellTtlQty7.Location = new System.Drawing.Point(605, 0);
            this.cellTtlQty7.Name = "cellTtlQty7";
            this.cellTtlQty7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTtlQty7.Size = new System.Drawing.Size(60, 20);
            this.cellTtlQty7.StylePriority.UseBorders = false;
            xrSummary7.FormatString = "{0:#,0.##}";
            xrSummary7.IgnoreNullValues = true;
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellTtlQty7.Summary = xrSummary7;
            // 
            // xrTableCell40
            // 
            this.xrTableCell40.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell40.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SubTotalQty", "")});
            this.xrTableCell40.Location = new System.Drawing.Point(665, 0);
            this.xrTableCell40.Name = "xrTableCell40";
            this.xrTableCell40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell40.Size = new System.Drawing.Size(70, 20);
            this.xrTableCell40.StylePriority.UseBorders = false;
            xrSummary8.FormatString = "{0:#,0.##}";
            xrSummary8.IgnoreNullValues = true;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell40.Summary = xrSummary8;
            // 
            // cellSuppUom
            // 
            this.cellSuppUom.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSuppUom.Location = new System.Drawing.Point(735, 0);
            this.cellSuppUom.Multiline = true;
            this.cellSuppUom.Name = "cellSuppUom";
            this.cellSuppUom.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSuppUom.Size = new System.Drawing.Size(30, 20);
            this.cellSuppUom.StylePriority.UseBorders = false;
            this.cellSuppUom.StylePriority.UseTextAlignment = false;
            this.cellSuppUom.WordWrap = false;
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.GroupHeader2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("SuppSizeCup", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.Height = 20;
            this.GroupHeader2.Name = "GroupHeader2";
            this.GroupHeader2.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader2_BeforePrint);
            // 
            // xrTable3
            // 
            this.xrTable3.Location = new System.Drawing.Point(0, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable3.Size = new System.Drawing.Size(765, 20);
            this.xrTable3.StyleName = "csHeader2";
            this.xrTable3.StylePriority.UseBorders = false;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell5,
            this.xrTableCell7,
            this.xrTableCell8,
            this.xrTableCell9,
            this.xrTableCell161,
            this.cellSize11,
            this.cellSize12,
            this.cellSize13,
            this.cellSize14,
            this.cellSize15,
            this.cellSize16,
            this.cellSize17,
            this.xrTableCell19,
            this.xrTableCell22});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(765, 20);
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell5.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(70, 20);
            this.xrTableCell5.StylePriority.UseBorders = false;
            this.xrTableCell5.WordWrap = false;
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell7.Location = new System.Drawing.Point(70, 0);
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(60, 20);
            this.xrTableCell7.StylePriority.UseBorders = false;
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            this.xrTableCell7.WordWrap = false;
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell8.Location = new System.Drawing.Point(130, 0);
            this.xrTableCell8.Multiline = true;
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(60, 20);
            this.xrTableCell8.StylePriority.UseBorders = false;
            this.xrTableCell8.StylePriority.UsePadding = false;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell9.Location = new System.Drawing.Point(190, 0);
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(2, 20);
            this.xrTableCell9.StylePriority.UseBorders = false;
            // 
            // xrTableCell161
            // 
            this.xrTableCell161.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.xrTableCell161.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell161.Location = new System.Drawing.Point(192, 0);
            this.xrTableCell161.Name = "xrTableCell161";
            this.xrTableCell161.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell161.Size = new System.Drawing.Size(53, 20);
            this.xrTableCell161.StylePriority.UseBackColor = false;
            this.xrTableCell161.StylePriority.UseBorders = false;
            // 
            // cellSize11
            // 
            this.cellSize11.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSize11.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup1", "")});
            this.cellSize11.Location = new System.Drawing.Point(245, 0);
            this.cellSize11.Name = "cellSize11";
            this.cellSize11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize11.Size = new System.Drawing.Size(60, 20);
            this.cellSize11.StylePriority.UseBorders = false;
            // 
            // cellSize12
            // 
            this.cellSize12.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSize12.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup2", "")});
            this.cellSize12.Location = new System.Drawing.Point(305, 0);
            this.cellSize12.Name = "cellSize12";
            this.cellSize12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize12.Size = new System.Drawing.Size(60, 20);
            this.cellSize12.StylePriority.UseBorders = false;
            // 
            // cellSize13
            // 
            this.cellSize13.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSize13.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup3", "")});
            this.cellSize13.Location = new System.Drawing.Point(365, 0);
            this.cellSize13.Name = "cellSize13";
            this.cellSize13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize13.Size = new System.Drawing.Size(60, 20);
            this.cellSize13.StylePriority.UseBorders = false;
            // 
            // cellSize14
            // 
            this.cellSize14.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSize14.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup4", "")});
            this.cellSize14.Location = new System.Drawing.Point(425, 0);
            this.cellSize14.Name = "cellSize14";
            this.cellSize14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize14.Size = new System.Drawing.Size(60, 20);
            this.cellSize14.StylePriority.UseBorders = false;
            // 
            // cellSize15
            // 
            this.cellSize15.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSize15.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup5", "")});
            this.cellSize15.Location = new System.Drawing.Point(485, 0);
            this.cellSize15.Name = "cellSize15";
            this.cellSize15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize15.Size = new System.Drawing.Size(60, 20);
            this.cellSize15.StylePriority.UseBorders = false;
            // 
            // cellSize16
            // 
            this.cellSize16.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSize16.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup6", "")});
            this.cellSize16.Location = new System.Drawing.Point(545, 0);
            this.cellSize16.Name = "cellSize16";
            this.cellSize16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize16.Size = new System.Drawing.Size(60, 20);
            this.cellSize16.StylePriority.UseBorders = false;
            // 
            // cellSize17
            // 
            this.cellSize17.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellSize17.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "BuyerSizeCup7", "")});
            this.cellSize17.Location = new System.Drawing.Point(605, 0);
            this.cellSize17.Name = "cellSize17";
            this.cellSize17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellSize17.Size = new System.Drawing.Size(60, 20);
            this.cellSize17.StylePriority.UseBorders = false;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell19.Location = new System.Drawing.Point(665, 0);
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(70, 20);
            this.xrTableCell19.StylePriority.UseBorders = false;
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell22.Location = new System.Drawing.Point(735, 0);
            this.xrTableCell22.Multiline = true;
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(30, 20);
            this.xrTableCell22.StylePriority.UseBackColor = false;
            this.xrTableCell22.StylePriority.UseBorders = false;
            this.xrTableCell22.StylePriority.UseTextAlignment = false;
            this.xrTableCell22.WordWrap = false;
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Height = 0;
            this.GroupFooter2.Name = "GroupFooter2";
            // 
            // csHeader2
            // 
            this.csHeader2.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeader2.Name = "csHeader2";
            this.csHeader2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.csHeader2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POWireBoneMatrixTemp);
            // 
            // poWireBoneDetailReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.GroupHeader1,
            this.GroupFooter1,
            this.GroupHeader2,
            this.GroupFooter2});
            this.DataSource = this.bindingSource1;
            this.ExportOptions.PrintPreview.DefaultFileName = "po Report(4th dimension)";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csHeader2});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.poWireBoneDetailReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private void poWireBoneDetailReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POWireBoneMatrixTemp p = this.GetCurrentRow() as POWireBoneMatrixTemp;
            if (p == null) return;

            Header1BackColor(p);
            bFirst = true;
            OtherInfor(p);


        }
        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POWireBoneMatrixTemp p = this.GetCurrentRow() as POWireBoneMatrixTemp;
            if (p == null) return;

            Header2BackColor(p);
        }


        private void Header1BackColor(POWireBoneMatrixTemp p)
        {
            if (!IsColorPrint) return;

            int i = p.BackColorIndex;
            Color c = System.Drawing.Color.FromArgb(p.ColorsRed[i], p.ColorsGreen[i], p.ColorsBlue[i]);
            this.cellSize1.BackColor = this.cellSize2.BackColor = this.cellSize3.BackColor = this.cellSize4.BackColor
                = this.cellSize5.BackColor = this.cellSize6.BackColor = this.cellSize7.BackColor = c;
        }
        private void Header2BackColor(POWireBoneMatrixTemp p)
        {
            if (!IsColorPrint) return;

            int i = p.BackColorIndex;
            Color c = System.Drawing.Color.FromArgb(p.ColorsRed[i], p.ColorsGreen[i], p.ColorsBlue[i]);
            this.cellSize11.BackColor = this.cellSize12.BackColor = this.cellSize13.BackColor = this.cellSize14.BackColor
                = this.cellSize15.BackColor = this.cellSize16.BackColor = this.cellSize17.BackColor = c;

            this.cellSuppSizeCup.BackColor = c;
        }

        bool bFirst;
        private void OtherInfor(POWireBoneMatrixTemp p)
        {
            if (bFirst)
            {
                this.cellItemCode.Text = p.SupplierReference;
                this.cellPONO.Text = p.PONO;
                this.cellColorCode.Text = p.ColorCode;
            }
            else
            {
                this.cellItemCode.Text = "";
                this.cellPONO.Text = "";
                this.cellColorCode.Text = "";
            }
        }
        public void SetItemInfor(POColorSizeDetail p)
        {            
            this.cellItemCode.Text = p.SupplierReference;// itemCode;
            this.cellPONO.Text = p.PONO;// pono;
            this.cellColorCode.Text = p.ColorCode;// colorCode;
            this.cellSuppUom.Text = p.SupplierUOM;
            int orderClass = p.PODetail.POHeader.OrderClass ?? 0;
            this.cellPONOCaption.Text = (orderClass == 4 || orderClass == 8) ? "SC#" : "PO#";
            string suppd = p.PODetail.SuppQtyDimension;
            this.lblSuppSizeCup.Text = suppd.StartsWith("4") ? "Supp\r\nSize/Cup" : "Supp\r\nSize";
        }

        int _count;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            bFirst = false;
            this.xrTable3.Visible = true;
            List<POWireBoneMatrixTemp> list = this.DataSource as List<POWireBoneMatrixTemp>;
            this._count++;
            if (list.Count == 0 || list.Count == this._count)
            {
                this.cellItemCode.Borders = this.cellItemCode.Borders | DevExpress.XtraPrinting.BorderSide.Bottom;
                this.cellPONO.Borders = this.cellPONO.Borders | DevExpress.XtraPrinting.BorderSide.Bottom;
                this.cellColorCode.Borders = this.cellColorCode.Borders | DevExpress.XtraPrinting.BorderSide.Bottom;

                this.cellSubTtl.Borders = this.cellSubTtl.Borders | DevExpress.XtraPrinting.BorderSide.Bottom;
                this.cellUom.Borders = this.cellUom.Borders | DevExpress.XtraPrinting.BorderSide.Bottom;

            }
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            POWireBoneMatrixTemp p = this.GetCurrentRow() as POWireBoneMatrixTemp;
            if (p == null) return;
            OtherInfor(p);
        }
    }
}
