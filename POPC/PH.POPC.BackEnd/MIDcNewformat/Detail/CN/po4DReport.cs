using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using PH.POPC.BO;

namespace PH.POPC.BackEnd.MIDcNewformat.CN
{
    /// <summary>
    /// Summary description for pcnReport
    /// </summary>
    public class po4DReport : DevExpress.XtraReports.UI.XtraReport
    {
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.PageFooterBand PageFooter;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotcolPONO;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn3;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn4;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn5;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn6;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn7;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotColUnit;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn9;
        private GroupHeaderBand GroupHeader2;
        private GroupFooterBand GroupFooter2;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn10;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn11;
        private XRControlStyle csHeader;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn12;
        private ReportFooterBand ReportFooter;
        private XRPageInfo xrPageInfo2;
        private PH.Platform.Report.PivotGrid.PRPivotGrid prPivotGrid1;
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
        private XRTable xrTable5;
        private XRTableRow xrTableRow5;
        private XRTableCell lbCompanyCN;
        private XRTableRow xrTableRow6;
        private XRTableCell lbCompanyEN;
        private XRTableCell xrTableCell7;
        private XRTableRow xrTableRow8;
        private XRTableCell cellTitle1;
        private XRTableCell cellTitle2;
        private XRTableCell cellTitle3;
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
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn2;
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public po4DReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //

        }
        public po4DReport(bool isColorPrint, bool isDometisPrint)
            : this()
        {
            IsColorPrint = isColorPrint;
            _isDometisPrint = isDometisPrint;
        }
        private bool _isColorPrint;
        private bool _isDometisPrint;
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(po4DReport));
            this.pivotGridColumn4 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn12 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn9 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn5 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotcolPONO = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn6 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn7 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn10 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn11 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn3 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotColUnit = new PH.Platform.Report.PivotGrid.PivotGridColumn();
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
            this.xrTable5 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyCN = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyEN = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow8 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTitle1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle3 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.prPivotGrid1 = new PH.Platform.Report.PivotGrid.PRPivotGrid();
            this.pivotGridColumn2 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // pivotGridColumn4
            // 
            this.pivotGridColumn4.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn4.DetailBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.pivotGridColumn4.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailBorders = DevExpress.XtraPrinting.BorderSide.Left;
            this.pivotGridColumn4.DetailBorderWidth = 1;
            this.pivotGridColumn4.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn4.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailKeepTogether = true;
            this.pivotGridColumn4.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.DetailSize = new System.Drawing.Size(100, 20);
            this.pivotGridColumn4.DetailTag = null;
            this.pivotGridColumn4.DetailText = null;
            this.pivotGridColumn4.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.EmptyValueText = null;
            this.pivotGridColumn4.FieldName = "CustomerSize";
            this.pivotGridColumn4.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn4.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn4.HeaderBorderWidth = 1;
            this.pivotGridColumn4.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn4.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderKeepTogether = true;
            this.pivotGridColumn4.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.HeaderSize = new System.Drawing.Size(100, 20);
            this.pivotGridColumn4.HeaderTag = null;
            this.pivotGridColumn4.HeaderText = "尺碼";
            this.pivotGridColumn4.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.Name = "pivotGridColumn4";
            // 
            // pivotGridColumn12
            // 
            this.pivotGridColumn12.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn12.DetailBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.pivotGridColumn12.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn12.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn12.DetailBorderWidth = 1;
            this.pivotGridColumn12.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn12.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn12.DetailKeepTogether = true;
            this.pivotGridColumn12.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn12.DetailSize = new System.Drawing.Size(100, 20);
            this.pivotGridColumn12.DetailTag = null;
            this.pivotGridColumn12.DetailText = null;
            this.pivotGridColumn12.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn12.EmptyValueText = null;
            this.pivotGridColumn12.FieldName = "SupplierSize";
            this.pivotGridColumn12.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn12.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn12.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn12.HeaderBorderWidth = 1;
            this.pivotGridColumn12.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn12.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn12.HeaderKeepTogether = true;
            this.pivotGridColumn12.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn12.HeaderSize = new System.Drawing.Size(100, 20);
            this.pivotGridColumn12.HeaderTag = null;
            this.pivotGridColumn12.HeaderText = null;
            this.pivotGridColumn12.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn12.HeaderVisible = false;
            this.pivotGridColumn12.Name = "pivotGridColumn12";
            // 
            // pivotGridColumn9
            // 
            this.pivotGridColumn9.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn9.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn9.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn9.DetailBorderWidth = 1;
            this.pivotGridColumn9.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn9.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.DetailKeepTogether = true;
            this.pivotGridColumn9.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn9.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn9.DetailTag = null;
            this.pivotGridColumn9.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn9.FieldName = "SizeID";
            this.pivotGridColumn9.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Index;
            this.pivotGridColumn9.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn9.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn9.HeaderBorderWidth = 1;
            this.pivotGridColumn9.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn9.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.HeaderKeepTogether = true;
            this.pivotGridColumn9.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn9.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn9.HeaderTag = null;
            this.pivotGridColumn9.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn9.Name = "pivotGridColumn9";
            // 
            // pivotGridColumn5
            // 
            this.pivotGridColumn5.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn5.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn5.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn5.DetailBorderWidth = 1;
            this.pivotGridColumn5.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn5.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.DetailKeepTogether = true;
            this.pivotGridColumn5.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn5.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.DetailTag = null;
            this.pivotGridColumn5.DetailText = null;
            this.pivotGridColumn5.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn5.EmptyValueText = null;
            this.pivotGridColumn5.FieldName = "SupplierPOQty";
            this.pivotGridColumn5.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn5.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn5.HeaderBorderWidth = 1;
            this.pivotGridColumn5.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn5.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderKeepTogether = true;
            this.pivotGridColumn5.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, -1F);
            this.pivotGridColumn5.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.HeaderTag = null;
            this.pivotGridColumn5.HeaderText = null;
            this.pivotGridColumn5.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn5.Name = "pivotGridColumn5";
            this.pivotGridColumn5.TotalFormatString = "{0:#,0.##}";
            // 
            // pivotGridColumn1
            // 
            this.pivotGridColumn1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn1.DetailBorderWidth = 1;
            this.pivotGridColumn1.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.DetailKeepTogether = true;
            this.pivotGridColumn1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, -1F);
            this.pivotGridColumn1.DetailScripts.OnBeforePrint = resources.GetString("pivotGridColumn1.DetailScripts.OnBeforePrint");
            this.pivotGridColumn1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn1.DetailTag = null;
            this.pivotGridColumn1.DetailText = null;
            this.pivotGridColumn1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.pivotGridColumn1.EmptyValueText = null;
            this.pivotGridColumn1.FieldName = "SupplierReference";
            this.pivotGridColumn1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn1.HeaderBorderWidth = 1;
            this.pivotGridColumn1.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderKeepTogether = true;
            this.pivotGridColumn1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn1.HeaderSize = new System.Drawing.Size(60, 25);
            this.pivotGridColumn1.HeaderTag = null;
            this.pivotGridColumn1.HeaderText = "供應商品種編碼";
            this.pivotGridColumn1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn1.Name = "pivotGridColumn1";
            // 
            // pivotcolPONO
            // 
            this.pivotcolPONO.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotcolPONO.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotcolPONO.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotcolPONO.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotcolPONO.DetailBorderWidth = 1;
            this.pivotcolPONO.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotcolPONO.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotcolPONO.DetailKeepTogether = true;
            this.pivotcolPONO.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotcolPONO.DetailScripts.OnBeforePrint = resources.GetString("pivotcolPONO.DetailScripts.OnBeforePrint");
            this.pivotcolPONO.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotcolPONO.DetailTag = null;
            this.pivotcolPONO.DetailText = null;
            this.pivotcolPONO.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotcolPONO.EmptyValueText = null;
            this.pivotcolPONO.FieldName = "PONO";
            this.pivotcolPONO.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotcolPONO.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotcolPONO.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotcolPONO.HeaderBorderWidth = 1;
            this.pivotcolPONO.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotcolPONO.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotcolPONO.HeaderKeepTogether = true;
            this.pivotcolPONO.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotcolPONO.HeaderSize = new System.Drawing.Size(45, 25);
            this.pivotcolPONO.HeaderTag = null;
            this.pivotcolPONO.HeaderText = "采購單號";
            this.pivotcolPONO.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotcolPONO.Name = "pivotcolPONO";
            // 
            // pivotGridColumn6
            // 
            this.pivotGridColumn6.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn6.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn6.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn6.DetailBorderWidth = 1;
            this.pivotGridColumn6.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn6.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.DetailKeepTogether = true;
            this.pivotGridColumn6.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn6.DetailScripts.OnBeforePrint = resources.GetString("pivotGridColumn6.DetailScripts.OnBeforePrint");
            this.pivotGridColumn6.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn6.DetailTag = null;
            this.pivotGridColumn6.DetailText = null;
            this.pivotGridColumn6.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn6.EmptyValueText = null;
            this.pivotGridColumn6.FieldName = "ColorCode";
            this.pivotGridColumn6.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn6.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn6.HeaderBorderWidth = 1;
            this.pivotGridColumn6.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn6.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.HeaderKeepTogether = true;
            this.pivotGridColumn6.HeaderMultiline = true;
            this.pivotGridColumn6.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn6.HeaderSize = new System.Drawing.Size(35, 25);
            this.pivotGridColumn6.HeaderTag = null;
            this.pivotGridColumn6.HeaderText = "買方\r\n品種\r\n顏色\r\n代碼";
            this.pivotGridColumn6.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn6.Name = "pivotGridColumn6";
            // 
            // pivotGridColumn7
            // 
            this.pivotGridColumn7.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn7.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn7.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn7.DetailBorderWidth = 1;
            this.pivotGridColumn7.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn7.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.DetailKeepTogether = true;
            this.pivotGridColumn7.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn7.DetailScripts.OnBeforePrint = resources.GetString("pivotGridColumn7.DetailScripts.OnBeforePrint");
            this.pivotGridColumn7.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn7.DetailTag = null;
            this.pivotGridColumn7.DetailText = null;
            this.pivotGridColumn7.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn7.EmptyValueText = null;
            this.pivotGridColumn7.FieldName = "FitDesc";
            this.pivotGridColumn7.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn7.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn7.HeaderBorderWidth = 1;
            this.pivotGridColumn7.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn7.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.HeaderKeepTogether = true;
            this.pivotGridColumn7.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn7.HeaderScripts.OnBeforePrint = resources.GetString("pivotGridColumn7.HeaderScripts.OnBeforePrint");
            this.pivotGridColumn7.HeaderSize = new System.Drawing.Size(50, 25);
            this.pivotGridColumn7.HeaderTag = null;
            this.pivotGridColumn7.HeaderText = "杯";
            this.pivotGridColumn7.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn7.Name = "pivotGridColumn7";
            // 
            // pivotGridColumn10
            // 
            this.pivotGridColumn10.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn10.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn10.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn10.DetailBorderWidth = 1;
            this.pivotGridColumn10.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn10.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.DetailKeepTogether = true;
            this.pivotGridColumn10.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn10.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn10.DetailTag = null;
            this.pivotGridColumn10.DetailText = null;
            this.pivotGridColumn10.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn10.DetailVisible = false;
            this.pivotGridColumn10.EmptyValueText = null;
            this.pivotGridColumn10.FieldName = "Price";
            this.pivotGridColumn10.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn10.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn10.HeaderBorderWidth = 1;
            this.pivotGridColumn10.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn10.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.HeaderKeepTogether = true;
            this.pivotGridColumn10.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn10.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn10.HeaderTag = null;
            this.pivotGridColumn10.HeaderText = null;
            this.pivotGridColumn10.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn10.HeaderVisible = false;
            this.pivotGridColumn10.Name = "pivotGridColumn10";
            // 
            // pivotGridColumn11
            // 
            this.pivotGridColumn11.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn11.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn11.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn11.DetailBorderWidth = 1;
            this.pivotGridColumn11.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn11.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.DetailKeepTogether = true;
            this.pivotGridColumn11.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn11.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn11.DetailTag = null;
            this.pivotGridColumn11.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn11.DetailVisible = false;
            this.pivotGridColumn11.FieldName = "Currency";
            this.pivotGridColumn11.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn11.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn11.HeaderBorderWidth = 1;
            this.pivotGridColumn11.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn11.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.HeaderKeepTogether = true;
            this.pivotGridColumn11.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn11.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn11.HeaderTag = null;
            this.pivotGridColumn11.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn11.HeaderVisible = false;
            this.pivotGridColumn11.Name = "pivotGridColumn11";
            // 
            // pivotGridColumn3
            // 
            this.pivotGridColumn3.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn3.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn3.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn3.DetailBorderWidth = 1;
            this.pivotGridColumn3.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn3.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.DetailKeepTogether = true;
            this.pivotGridColumn3.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn3.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn3.DetailTag = null;
            this.pivotGridColumn3.DetailText = null;
            this.pivotGridColumn3.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn3.EmptyValueText = null;
            this.pivotGridColumn3.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.SubTotal;
            this.pivotGridColumn3.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn3.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn3.HeaderBorderWidth = 1;
            this.pivotGridColumn3.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotGridColumn3.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderKeepTogether = true;
            this.pivotGridColumn3.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn3.HeaderSize = new System.Drawing.Size(50, 25);
            this.pivotGridColumn3.HeaderTag = null;
            this.pivotGridColumn3.HeaderText = "小計";
            this.pivotGridColumn3.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn3.Name = "pivotGridColumn3";
            this.pivotGridColumn3.TotalFormatString = "{0:N0}";
            // 
            // pivotColUnit
            // 
            this.pivotColUnit.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotColUnit.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotColUnit.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColUnit.DetailBorderWidth = 1;
            this.pivotColUnit.DetailFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColUnit.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit.DetailKeepTogether = true;
            this.pivotColUnit.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColUnit.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotColUnit.DetailTag = null;
            this.pivotColUnit.DetailText = "pcs";
            this.pivotColUnit.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColUnit.EmptyValueText = null;
            this.pivotColUnit.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Unit;
            this.pivotColUnit.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotColUnit.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotColUnit.HeaderBorderWidth = 1;
            this.pivotColUnit.HeaderFont = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.pivotColUnit.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotColUnit.HeaderKeepTogether = true;
            this.pivotColUnit.HeaderMultiline = true;
            this.pivotColUnit.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotColUnit.HeaderSize = new System.Drawing.Size(40, 25);
            this.pivotColUnit.HeaderTag = null;
            this.pivotColUnit.HeaderText = "采購單\r\n單位";
            this.pivotColUnit.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotColUnit.Name = "pivotColUnit";
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
            this.xrTable4,
            this.xrTable5,
            this.xrPictureBox1,
            this.xrLabel3,
            this.xrTable2});
            this.PageHeader.Height = 170;
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
            // xrTable5
            // 
            this.xrTable5.Font = new System.Drawing.Font("Arial", 9.75F);
            this.xrTable5.Location = new System.Drawing.Point(154, 0);
            this.xrTable5.Name = "xrTable5";
            this.xrTable5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5,
            this.xrTableRow6,
            this.xrTableRow8});
            this.xrTable5.Size = new System.Drawing.Size(482, 84);
            this.xrTable5.StylePriority.UseFont = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyCN});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(482, 30);
            // 
            // lbCompanyCN
            // 
            this.lbCompanyCN.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.lbCompanyCN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyCN.Name = "lbCompanyCN";
            this.lbCompanyCN.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCompanyCN.Size = new System.Drawing.Size(482, 30);
            this.lbCompanyCN.StylePriority.UseFont = false;
            this.lbCompanyCN.Text = "沛  恒  製  衣  有  限  公  司";
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyEN,
            this.xrTableCell7});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(482, 26);
            // 
            // lbCompanyEN
            // 
            this.lbCompanyEN.Font = new System.Drawing.Font("Arial", 13F);
            this.lbCompanyEN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyEN.Multiline = true;
            this.lbCompanyEN.Name = "lbCompanyEN";
            this.lbCompanyEN.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbCompanyEN.Size = new System.Drawing.Size(318, 26);
            this.lbCompanyEN.StylePriority.UseFont = false;
            this.lbCompanyEN.Text = "PH Garment Mfg. Co. Ltd.\r\n";
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Font = new System.Drawing.Font("Arial", 7F);
            this.xrTableCell7.Location = new System.Drawing.Point(318, 0);
            this.xrTableCell7.Multiline = true;
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(164, 26);
            this.xrTableCell7.StylePriority.UseFont = false;
            this.xrTableCell7.StylePriority.UseForeColor = false;
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            this.xrTableCell7.Text = "(Member of PH Garment Group)\r\n";
            this.xrTableCell7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
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
            this.cellTitle1.Text = "Supplier Sample Issue";
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
            this.cellPONO.Size = new System.Drawing.Size(58, 18);
            this.cellPONO.StylePriority.UseBorders = false;
            this.cellPONO.StylePriority.UseTextAlignment = false;
            this.cellPONO.Text = "采購單號:";
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell12.Location = new System.Drawing.Point(580, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(93, 18);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.Text = "[PONO] - [PODetail.POHeader.Dept]";
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell23.Location = new System.Drawing.Point(673, 0);
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(55, 18);
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
            new DevExpress.XtraReports.UI.GroupField("SupplierReference", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("PONO", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("ColorCode", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("Price", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending),
            new DevExpress.XtraReports.UI.GroupField("ProjectNO", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.Height = 0;
            this.GroupHeader2.Name = "GroupHeader2";
            this.GroupHeader2.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader2_BeforePrint);
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1,
            this.prPivotGrid1});
            this.GroupFooter2.Height = 72;
            this.GroupFooter2.KeepTogether = true;
            this.GroupFooter2.Name = "GroupFooter2";
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
            // 
            // cellDelivery
            // 
            this.cellDelivery.Location = new System.Drawing.Point(311, 0);
            this.cellDelivery.Name = "cellDelivery";
            this.cellDelivery.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellDelivery.Size = new System.Drawing.Size(116, 17);
            this.cellDelivery.StylePriority.UseTextAlignment = false;
            this.cellDelivery.Text = "交貨期／(周)    :";
            this.cellDelivery.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellDelivery.WordWrap = false;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Borders = DevExpress.XtraPrinting.BorderSide.Top;
            this.xrTableCell18.Location = new System.Drawing.Point(427, 0);
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(5, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(153, 17);
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
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell20.Location = new System.Drawing.Point(162, 0);
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(149, 17);
            this.xrTableCell20.StylePriority.UseBorders = false;
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell21.Location = new System.Drawing.Point(311, 0);
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(116, 17);
            this.xrTableCell21.StylePriority.UseBorders = false;
            this.xrTableCell21.StylePriority.UseTextAlignment = false;
            this.xrTableCell21.Text = "終端客戶款號:";
            this.xrTableCell21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell22.Location = new System.Drawing.Point(427, 0);
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(125, 17);
            this.xrTableCell22.StylePriority.UseBorders = false;
            this.xrTableCell22.Text = "[CustStyleNo]";
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell26.Location = new System.Drawing.Point(552, 0);
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(133, 17);
            this.xrTableCell26.StylePriority.UseBorders = false;
            this.xrTableCell26.StylePriority.UseTextAlignment = false;
            this.xrTableCell26.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell37
            // 
            this.xrTableCell37.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell37.Location = new System.Drawing.Point(685, 0);
            this.xrTableCell37.Name = "xrTableCell37";
            this.xrTableCell37.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell37.Size = new System.Drawing.Size(80, 17);
            this.xrTableCell37.StylePriority.UseBorders = false;
            this.xrTableCell37.StylePriority.UseTextAlignment = false;
            this.xrTableCell37.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // prPivotGrid1
            // 
            this.prPivotGrid1.ColumnAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn4,
            this.pivotGridColumn12,
            this.pivotGridColumn9});
            this.prPivotGrid1.ColumnMaxWidth = 150;
            this.prPivotGrid1.DataAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn5});
            this.prPivotGrid1.GrandTotalText = "總計:";
            this.prPivotGrid1.HeaderDetailSpacing = 0;
            this.prPivotGrid1.LeftAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn1,
            this.pivotcolPONO,
            this.pivotGridColumn6,
            this.pivotGridColumn7,
            this.pivotGridColumn10,
            this.pivotGridColumn11,
            this.pivotGridColumn2});
            this.prPivotGrid1.Location = new System.Drawing.Point(0, 34);
            this.prPivotGrid1.Name = "prPivotGrid1";
            this.prPivotGrid1.RightAreaFields.AddRange(new PH.Platform.Report.PivotGrid.PivotGridColumn[] {
            this.pivotGridColumn3,
            this.pivotColUnit});
            this.prPivotGrid1.RowCounts = 1;
            this.prPivotGrid1.Size = new System.Drawing.Size(765, 33);
            // 
            // pivotGridColumn2
            // 
            this.pivotGridColumn2.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn2.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn2.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn2.DetailBorderWidth = 1;
            this.pivotGridColumn2.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn2.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.DetailKeepTogether = true;
            this.pivotGridColumn2.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn2.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn2.DetailTag = null;
            this.pivotGridColumn2.DetailText = null;
            this.pivotGridColumn2.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn2.DetailVisible = false;
            this.pivotGridColumn2.EmptyValueText = null;
            this.pivotGridColumn2.FieldName = "CustCupDesc";
            this.pivotGridColumn2.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn2.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn2.HeaderBorderWidth = 1;
            this.pivotGridColumn2.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn2.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderKeepTogether = true;
            this.pivotGridColumn2.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn2.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn2.HeaderTag = null;
            this.pivotGridColumn2.HeaderText = null;
            this.pivotGridColumn2.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn2.HeaderVisible = false;
            this.pivotGridColumn2.Name = "pivotGridColumn2";
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
            // po4DReport
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
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.pcn4DReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        public void SetCaption(bool isPCN)
        {
            //if (isPCN)
            //{

            //    xrLabel4.Text = isPCN ? "PCN" : "PCN Manifest";
            //    xrTableCell2.Text = isPCN ? "Commencing Day of this Week (Week #):" : "Deliver Date / Week:";
            //    // xrTableCell2.Width = isPCN ? 170 : 102;
            //    xrTableCell5.Text = isPCN ? "14/09/2009 (Week 38)" : "14/09/2009 (Week 38)";
            //    xrTableCell3.Text = isPCN ? "PCN No.:" : "PCN Manifest No.:";
            //    xrTableCell6.Text = isPCN ? "0909-38-PHCP-1S" : "0909-38-PHCP-1S-1/1";
            //}
        }
        private void GroupHeader2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POSKUList list = new POSKUList();


            //POPCDataContext context = new POPCDataContext(POPCDataContext.LiveConnectString);
            //context.CommandTimeout = 10000;
            //var aa = this.DataSource as IEnumerable<View_POPC_PUR>;
            this.prPivotGrid1.DataSource = null;
            POColorSizeDetail p = this.GetCurrentRow() as POColorSizeDetail;
            if (p == null) return;

            this.pivotColUnit.DetailText = p.SupplierUOM;
            //var bb = from b in context.POColorSizeDetails
            //         where b.Company == p.Company && b.ItemCode == p.ItemCode && (b.VersionFlag ?? false)
            //         && b.PONO == p.PONO && b.ColorCode == p.ColorCode && b.Price == p.Price
            //         select b;
            //var bb = list.GetPOSKUbyColorPrice(p.Version, p.AmendmentNo, p.Company, p.PONO, p.ItemCode, p.ColorCode, p.Price);
            //var bb = list.GetPOSKUbyColorPriceProject(p.Version, p.AmendmentNo, p.Company, p.PONO, p.ItemCode, p.ColorCode, p.Price, p.ProjectNO);
            var bb = list.GetMIDcPOColorSizeDetailsMatrix(p.Version, p.AmendmentNo, p.Company, p.PONO, p.SupplierReference, p.ColorCode, p.Price);

            //List<POColorSizeDetail> ds = new List<POColorSizeDetail>();
            //foreach (PODetail d in p.PODetails)
            //{
            //    ds.AddRange(d.POColorSizeDetails.ToList<POColorSizeDetail>());
            //}
            this.prPivotGrid1.DataSource = bb;
        }

        private void SetDimension(POColorSizeDetail p)
        {
            string byrd = p.PODetail.BuyerQtyDimension;
            string suppd = p.PODetail.SuppQtyDimension;

            string byrStr = "";
            string suppStr = "";

            switch (byrd)
            {
                case "2.1": byrStr = " 第二維 - 品種/顏色"; break;
                case "2.2": byrStr = " 第二維 - 品種/尺碼"; break;
                case "3.1": byrStr = " 第三維 - 品種/顏色/尺碼"; break;
                case "3.2": byrStr = " 第三維 - 品種/尺碼/杯"; break;
                case "4.0": byrStr = " 第四維 - 品種/顏色/尺碼/杯"; break;
                case "2": goto case "2.1";
                case "3": goto case "3.1";
                case "4": goto case "4.0";
                default:
                    break;
            }
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
            this.cbBuyerSide.Text = byrStr;
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
            //this.cellTitle1.Width = (p.PODetail.POHeader.OrderClass == 4 || p.PODetail.POHeader.OrderClass == 8) ? 258 : 192;
            //this.cellTitle3.Width = (p.PODetail.POHeader.OrderClass == 2) ? 88 : 129;
            this.cellTitle3.Font = new System.Drawing.Font("Arial Unicode MS", ((p.PODetail.POHeader.OrderClass == 2 || p.PODetail.POHeader.OrderClass == 3) ? 11F : 7F));

            this.cellTitle1.Text = p.PODetail.POHeader.POSubjectCN;
            this.cellTitle2.Text = (p.PODetail.POHeader.OrderClass == 2 || p.PODetail.POHeader.OrderClass == 3) ? p.PODetail.POHeader.POSuffixSubjectCN : "- 附頁";
            this.cellTitle3.Text = (p.PODetail.POHeader.OrderClass == 2 || p.PODetail.POHeader.OrderClass == 3) ? "- 附頁" : "";

            this.cellPONO.Text = (p.PODetail.POHeader.OrderClass == 4 || p.PODetail.POHeader.OrderClass == 8) ? "加工單號:" : "采購單號:";
            this.pivotcolPONO.HeaderText = (p.PODetail.POHeader.OrderClass == 4 || p.PODetail.POHeader.OrderClass == 8) ? "加工單號" : "采購單號";


            this.lbCompanyCN.Text = this._isDometisPrint ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN;
            this.lbCompanyCN.Text = this._isDometisPrint ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN;
            //this.lbCompanyGroup.Size = this._isDometisPrint ? new Size(162, 25) : new Size(234, 25);
        }

        private void OnBeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            XRTableCell cell = sender as XRTableCell;
            if (cell == null) return;
            cell.Controls.Clear();

            int height = 20;
            XRLabel lblA, lblB;
            int x = 0;
            int y = 0;
            int width = cell.Width;

            lblA = new XRLabel();
            lblA.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            cell.Controls.Add(lblA);
            lblA.Location = new System.Drawing.Point(x, y);
            lblA.Size = new System.Drawing.Size(width, height);
            lblA.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            //lblA.ForeColor = System.Drawing.Color.FromName(scol);
            lblA.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            lblA.Text = "杯";
            lblA.Borders = DevExpress.XtraPrinting.BorderSide.Bottom | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top;
            lblA.CanGrow = false;
            y += height;

            width = cell.Width / 2;

            lblB = new XRLabel();
            lblB.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            cell.Controls.Add(lblB);
            lblB.Location = new System.Drawing.Point(x, y);
            lblB.Size = new System.Drawing.Size(width, height);
            lblB.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            //lblB.ForeColor = System.Drawing.Color.Black;
            lblB.Text = "采購方";
            lblB.Font = new System.Drawing.Font("Arial Unicode MS", 5F);
            lblB.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            lblB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            lblB.CanGrow = false;
            x += width;
            y += height;
            width = cell.Width - width;

            lblB = new XRLabel();
            lblB.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            cell.Controls.Add(lblB);
            lblB.Location = new System.Drawing.Point(x, y);
            lblB.Size = new System.Drawing.Size(width, height);
            lblB.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            lblB.ForeColor = System.Drawing.Color.Black;
            lblB.Text = "供應商";
            lblB.Font = new System.Drawing.Font("Arial Unicode MS", 5F);
            lblB.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom;
            lblB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            lblB.CanGrow = false;

        }

        private void OnBeforePrint1(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            XRTableCell cell = sender as XRTableCell;
            if (cell == null) return;
            DetailBand band = cell.Row.Table.Parent as DetailBand;

            int height = 20;
            cell.Controls.Clear();

            string cup = (string)GetCurrentColumnValue("FitCode");

            XRLabel lblA, lblB;

            int x = 0;
            int y = 0;
            int width = (cell.Width / 2);
            int width2 = (cell.Width - width);

            lblA = new XRLabel();
            lblA.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            cell.Controls.Add(lblA);
            lblA.Location = new System.Drawing.Point(x, y);
            lblA.Size = new System.Drawing.Size(width, height);
            lblA.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            //lblA.ForeColor = System.Drawing.Color.FromName(scol);
            lblA.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            lblA.Text = cup;
            lblA.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            lblA.CanGrow = false;
            x += width;

            lblB = new XRLabel();
            lblB.Name = string.Format("PHLabel_{0}", PH.Platform.Report.ReportHelper.PHControlName);
            cell.Controls.Add(lblB);
            lblB.Location = new System.Drawing.Point(x, y);
            lblB.Size = new System.Drawing.Size(width2, height);
            lblB.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            //lblB.ForeColor = System.Drawing.Color.Black;
            lblB.Text = cup;
            lblB.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            lblB.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            lblB.CanGrow = false;

        }

        int _iRow = 0;
        private void OnBeforePrint_Item(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            _iRow++;
            XRTableCell cell = sender as XRTableCell;
            if (cell == null) return;

            XRBinding binding = cell.DataBindings["Text"];
            string sValue = "";
            if (binding != null)
            {
                sValue = (string)GetCurrentColumnValue(binding.DataMember);
                cell.DataBindings.Clear();
            }

            cell.Text = sValue;

            XtraReport report = cell.RootReport;
            PH.POPC.BackEnd.MIDcNewformat.CN.po4DReport report1 = report.Tag as PH.POPC.BackEnd.MIDcNewformat.CN.po4DReport;
            if (report1 == null) return;

            int iRecordCount = report1.GetPivotGridRecordCount();
            if (_iRow == iRecordCount)
            {
                cell.Borders = DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom;
            }
            else
            {
                cell.Borders = DevExpress.XtraPrinting.BorderSide.Left;

            }
        }

        public int GetPivotGridRecordCount()
        {
            return this.prPivotGrid1.ViewInfo.DataController.PivotDataSource.RecordCount;
        }
        private void pcn4DReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string dll_1 = typeof(POHeader).Assembly.Location;
            string dll_2 = typeof(po4DReport).Assembly.Location;
            string dll_3 = typeof(PH.Platform.Report.PivotGrid.PRPivotGrid).Assembly.Location;
            //
            this.ScriptReferences = new string[] { dll_1, dll_2, dll_3 };

            POColorSizeDetail p = this.GetCurrentRow() as POColorSizeDetail;
            if (p == null) return;
            SetDimension(p);
            SetTitleInfor(p);
        }
    }
}
