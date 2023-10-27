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
    public class poMultipleSpecItemReport : DevExpress.XtraReports.UI.XtraReport
    {
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn1;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn2;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn3;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn4;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn5;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn6;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn7;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn8;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn9;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn10;
        private PH.Platform.Report.PivotGrid.PivotGridColumn pivotGridColumn11;
        private XRPageInfo xrPageInfo2;
        private XRControlStyle csHeader;
        private XRControlStyle csDetail;
        private XRLabel lbNotepad;
        private ReportFooterBand ReportFooter;
        private PageFooterBand PageFooter;
        private XRTable xrTable7;
        private XRTableRow xrTableRow17;
        private XRTableCell xrTableCell70;
        private XRTableCell xrTableCell72;
        private XRTableCell xrTableCell74;
        private DetailReportBand DetailReport;
        private DetailBand Detail1;
        private DetailReportBand DetailReport1;
        private DetailBand Detail2;
        private ReportHeaderBand ReportHeader;
        private XRTable xrTable2;
        private XRTableRow xrTableRow3;
        private XRTableCell xrTableCell82;
        private XRTableCell xrTableCell83;
        private XRTableCell xrTableCell84;
        private GroupHeaderBand GroupHeader1;
        private GroupFooterBand GroupFooter1;
        private GroupHeaderBand GroupHeader2;
        private GroupHeaderBand GroupHeader3;
        private XRLabel lbItemCode;
        private XRSubreport xrSubreport1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private GroupHeaderBand GroupHeader4;
        private System.Windows.Forms.BindingSource bindingSource2;
        private XRTable xrTable4;
        private XRTableRow xrTableRow4;
        private XRTableCell xrTableCell9;
        private XRTableCell cellColor;
        private XRTableCell xrTableCell33;
        private XRTableCell cellColorShade;
        private XRTableCell cellQty;
        private XRTableCell xrTableCell36;
        private XRTableCell xrTableCell16;
        private XRTableCell cellAmount;
        private XRTableCell xrTableCell17;
        private XRTableCell xrTableCell41;
        private XRTableCell xrTableCell42;
        private XRTableCell xrTableCell44;
        private XRTableCell cellCustOrderNo;
        private XRTableCell cellCustStyleNo;
        private XRTableCell cellProjectNo;
        private GroupFooterBand GroupFooter3;
        private XRTable xrTable11;
        private XRTableRow xrTableRow26;
        private XRTableCell xrTableCell59;
        private XRTableRow xrTableRow28;
        private XRTableCell xrTableCell67;
        private XRTableCell xrTableCell71;
        private XRTableCell xrTableCell73;
        private XRTable xrTable12;
        private XRTableRow xrTableRow2;
        private XRTableCell xrTableCell53;
        private XRTableRow xrTableRow27;
        private XRTableCell cellDimension;
        private XRSubreport xrSubreport_Supplementsheet;
        private ReportHeaderBand ReportHeader1;
        private GroupFooterBand GroupFooter2;
        private XRTableCell xrTableCell66;
        private XRControlStyle csHeaderSmall;
        private XRTable xrTable10;
        private XRTableRow xrTableRow12;
        private XRTableCell xrTableCell29;
        private XRTableCell xrTableCell32;
        private XRTableCell xrTableCell34;
        private XRTableRow xrTableRow16;
        private XRTableCell xrTableCell45;
        private XRTableCell xrTableCell46;
        private XRTableCell xrTableCell48;
        private XRTableRow xrTableRow25;
        private XRTableCell xrTableCell49;
        private XRTableCell xrTableCell50;
        private XRTableCell xrTableCell52;
        private XRPictureBox xrPictureBox1;
        private XRTable xrTable5;
        private XRTableRow xrTableRow5;
        private XRTableCell lbCompanyCN;
        private XRTableRow xrTableRow6;
        private XRTableCell lbCompanyEN;
        private XRTableCell xrTableCell19;
        private XRTableRow xrTableRow8;
        private XRTableCell cellTitle1;
        private XRTableCell cellTitle2;
        private XRTableCell cellTitle3;
        private XRTable xrTable1;
        private XRTableRow xrTableRow1;
        private XRTableCell xrTableCell10;
        private XRLabel lblPHCopy;
        private XRLabel lblSizeMatrix;
        private XRTableRow xrTableRow13;
        private XRTableCell cellPONO;
        private XRTableCell xrTableCell15;
        private XRTableRow xrTableRow10;
        private XRTableCell xrTableCell13;
        private XRTableRow xrTableRow18;
        private XRTableCell xrTableCell28;
        private XRTableCell cellAmendmentNo;
        private XRTableRow xrTableRow19;
        private XRTableCell xrTableCell89;
        private XRTableCell xrTableCell90;
        private XRTable tableTransit;
        private XRTableRow xrTableRow29;
        private XRTableCell xrTableCell109;
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
        private XRTableCell xrTableCell1;
        private XRTableCell cellEndPointAddress;
        private XRTableCell cellEndPointAddressData;
        private XRTableCell cellTransitFrame3;
        private XRTable xrTable3;
        private XRTableRow xrTableRow11;
        private XRTableCell xrTableCell14;
        private XRTableCell xrTableCell21;
        private XRTableCell xrTableCell37;
        private XRLabel xrLabel4;
        private XRLabel xrLabel2;
        private XRLabel xrLabel1;
        private XRTableCell xrTableCell26;
        private XRTableCell xrTableCell4;
        private XRTableCell xrTableCell22;
        private XRTableCell xrTableCell2;
        private XRTableCell xrTableCell25;
        private XRTableCell xrTableCell23;
        private XRLabel xrLabel5;
        private XRLabel xrLabel3;
        private XRTableCell xrTableCell8;
        private XRTableCell xrTableCell5;
        private XRTableCell xrTableCell7;
        private XRTableCell xrTableCell86;
        private XRTableCell xrTableCell88;
        private XRTableCell xrTableCell38;
        private XRTableCell xrTableCell87;
        private XRTable xrTable6;
        private XRTableRow xrTableRow7;
        private XRTableCell xrTableCell43;
        private XRTableCell xrTableCell60;
        private XRTableRow xrTableRow9;
        private XRTableCell xrTableCell47;
        private XRTableCell xrTableCell61;
        private XRTableRow xrTableRow14;
        private XRTableCell xrTableCell55;
        private XRTableCell xrTableCell63;
        private XRTableCell xrTableCell56;
        private XRTableCell xrTableCell68;
        private XRTableRow xrTableRow15;
        private XRTableCell xrTableCell57;
        private XRTableCell xrTableCell64;
        private XRTableCell xrTableCell58;
        private XRTableCell xrTableCell69;
        private XRTableRow xrTableRow31;
        private XRTableCell xrTableCell3;
        private XRTableCell xrTableCell62;
        private XRTableCell xrTableCell6;
        private XRTable xrTable8;
        private XRTableRow xrTableRow20;
        private XRTableCell xrTableCell11;
        private XRTableCell xrTableCell12;
        private XRTableRow xrTableRow21;
        private XRTableCell xrTableCell20;
        private XRTableCell xrTableCell27;
        private XRTableRow xrTableRow22;
        private XRTableCell xrTableCell39;
        private XRTableCell xrTableCell40;
        private XRTableRow xrTableRow23;
        private XRTableCell xrTableCell80;
        private XRTableCell cellGrandTotalCurrency;
        private XRTableCell cellGrandTotalAmount;
        private XRTableRow xrTableRow24;
        private XRTableCell xrTableCell95;
        private XRTableCell xrTableCell96;
        private XRTableCell lblHasVAT;
        private XRTableCell xrTableCell18;
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public poMultipleSpecItemReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //
            //_project_ttl = new List<string>();
            //_color_ttl = new List<string>();
        }
        public poMultipleSpecItemReport(bool isPHCopy, bool isColorPrint, bool isDometisPrint)
            : this()
        {
            _isPHCopy = isPHCopy;
            IsColorPrint = isColorPrint;
            _isDometisPrint = isDometisPrint;
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(poMultipleSpecItemReport));
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable7 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow17 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell70 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell72 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell74 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPageInfo2 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.pivotGridColumn4 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn9 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn5 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn1 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn2 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn6 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn7 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn10 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn11 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn3 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.pivotGridColumn8 = new PH.Platform.Report.PivotGrid.PivotGridColumn();
            this.csHeader = new DevExpress.XtraReports.UI.XRControlStyle();
            this.csDetail = new DevExpress.XtraReports.UI.XRControlStyle();
            this.lbNotepad = new DevExpress.XtraReports.UI.XRLabel();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrSubreport_Supplementsheet = new DevExpress.XtraReports.UI.XRSubreport();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            this.xrTable11 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow26 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell59 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow28 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell67 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell71 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell73 = new DevExpress.XtraReports.UI.XRTableCell();
            this.DetailReport = new DevExpress.XtraReports.UI.DetailReportBand();
            this.Detail1 = new DevExpress.XtraReports.UI.DetailBand();
            this.ReportHeader = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.GroupHeader2 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell82 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell83 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell84 = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.DetailReport1 = new DevExpress.XtraReports.UI.DetailReportBand();
            this.Detail2 = new DevExpress.XtraReports.UI.DetailBand();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell21 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell37 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell25 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell86 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell88 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell38 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell87 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable12 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell53 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow27 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellDimension = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellColor = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.cellColorShade = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell41 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell42 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell44 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustOrderNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustStyleNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell66 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellProjectNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader3 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrSubreport1 = new DevExpress.XtraReports.UI.XRSubreport();
            this.lbItemCode = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupFooter3 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.GroupHeader4 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable6 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell43 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell60 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow9 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell47 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell61 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow14 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell55 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell63 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell56 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell68 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow15 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell57 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell64 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell58 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell69 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow31 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell62 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable8 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow20 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow21 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow22 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell39 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell40 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow23 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell80 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellGrandTotalCurrency = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellGrandTotalAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblHasVAT = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow24 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell95 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell96 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tableTransit = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow29 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell109 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointAddress = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointAddressData = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTransitFrame3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportHeader1 = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblPHCopy = new DevExpress.XtraReports.UI.XRLabel();
            this.lblSizeMatrix = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableRow13 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow10 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow18 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellAmendmentNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow19 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell89 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell90 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable5 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyCN = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyEN = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow8 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTitle1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPictureBox1 = new DevExpress.XtraReports.UI.XRPictureBox();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrTable10 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow12 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell32 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell34 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow16 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell45 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell46 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell48 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow25 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell49 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell50 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell52 = new DevExpress.XtraReports.UI.XRTableCell();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable11)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tableTransit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable10)).BeginInit();
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
            // PageHeader
            // 
            this.PageHeader.Height = 0;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
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
            this.xrTable7.Size = new System.Drawing.Size(765, 20);
            this.xrTable7.StyleName = "csDetail";
            this.xrTable7.StylePriority.UseBorders = false;
            this.xrTable7.StylePriority.UseTextAlignment = false;
            this.xrTable7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow17
            // 
            this.xrTableRow17.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell70,
            this.xrTableCell72,
            this.xrTableCell74});
            this.xrTableRow17.Name = "xrTableRow17";
            this.xrTableRow17.Size = new System.Drawing.Size(765, 20);
            // 
            // xrTableCell70
            // 
            this.xrTableCell70.BackColor = System.Drawing.Color.Yellow;
            this.xrTableCell70.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell70.Name = "xrTableCell70";
            this.xrTableCell70.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell70.Size = new System.Drawing.Size(75, 20);
            this.xrTableCell70.StylePriority.UseBackColor = false;
            this.xrTableCell70.Text = "買方品種編碼";
            // 
            // xrTableCell72
            // 
            this.xrTableCell72.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell72.Name = "xrTableCell72";
            this.xrTableCell72.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell72.Size = new System.Drawing.Size(154, 20);
            this.xrTableCell72.Text = "供應商品種代碼";
            // 
            // xrTableCell74
            // 
            this.xrTableCell74.Location = new System.Drawing.Point(229, 0);
            this.xrTableCell74.Name = "xrTableCell74";
            this.xrTableCell74.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell74.Size = new System.Drawing.Size(536, 20);
            this.xrTableCell74.StylePriority.UseTextAlignment = false;
            this.xrTableCell74.Text = "摘要";
            // 
            // xrPageInfo2
            // 
            this.xrPageInfo2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrPageInfo2.Format = "頁: {0} / {1}";
            this.xrPageInfo2.Location = new System.Drawing.Point(674, 16);
            this.xrPageInfo2.Name = "xrPageInfo2";
            this.xrPageInfo2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo2.Size = new System.Drawing.Size(79, 17);
            this.xrPageInfo2.StylePriority.UseFont = false;
            this.xrPageInfo2.StylePriority.UseTextAlignment = false;
            this.xrPageInfo2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // pivotGridColumn4
            // 
            this.pivotGridColumn4.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn4.DetailBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(255)))));
            this.pivotGridColumn4.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn4.DetailBorderWidth = 1;
            this.pivotGridColumn4.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn4.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.DetailKeepTogether = true;
            this.pivotGridColumn4.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn4.DetailTag = null;
            this.pivotGridColumn4.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.FieldName = "SizeDesc";
            this.pivotGridColumn4.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn4.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.pivotGridColumn4.HeaderBorderWidth = 1;
            this.pivotGridColumn4.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn4.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn4.HeaderKeepTogether = true;
            this.pivotGridColumn4.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn4.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn4.HeaderTag = null;
            this.pivotGridColumn4.HeaderText = "Size";
            this.pivotGridColumn4.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.Name = "pivotGridColumn4";
            // 
            // pivotGridColumn9
            // 
            this.pivotGridColumn9.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn9.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn9.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn9.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn9.DetailBorderWidth = 1;
            this.pivotGridColumn9.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
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
            this.pivotGridColumn9.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
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
            this.pivotGridColumn5.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn5.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.DetailKeepTogether = true;
            this.pivotGridColumn5.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn5.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.DetailTag = null;
            this.pivotGridColumn5.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn5.FieldName = "SupplierOutstandingQty";
            this.pivotGridColumn5.HeaderBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn5.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn5.HeaderBorderWidth = 1;
            this.pivotGridColumn5.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn5.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn5.HeaderKeepTogether = true;
            this.pivotGridColumn5.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 10, 0, 0, -1F);
            this.pivotGridColumn5.HeaderSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn5.HeaderTag = null;
            this.pivotGridColumn5.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn5.Name = "pivotGridColumn5";
            this.pivotGridColumn5.TotalFormatString = "{0:N0}";
            // 
            // pivotGridColumn1
            // 
            this.pivotGridColumn1.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn1.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn1.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn1.DetailBorderWidth = 1;
            this.pivotGridColumn1.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn1.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.DetailKeepTogether = true;
            this.pivotGridColumn1.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, -1F);
            this.pivotGridColumn1.DetailProcessDuplicates = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn1.DetailProcessNullValues = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn1.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn1.DetailTag = null;
            this.pivotGridColumn1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.pivotGridColumn1.FieldName = "SupplierReference";
            this.pivotGridColumn1.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn1.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn1.HeaderBorderWidth = 1;
            this.pivotGridColumn1.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn1.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn1.HeaderKeepTogether = true;
            this.pivotGridColumn1.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn1.HeaderSize = new System.Drawing.Size(120, 25);
            this.pivotGridColumn1.HeaderTag = null;
            this.pivotGridColumn1.HeaderText = "Item#";
            this.pivotGridColumn1.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn1.Name = "pivotGridColumn1";
            // 
            // pivotGridColumn2
            // 
            this.pivotGridColumn2.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn2.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn2.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn2.DetailBorderWidth = 1;
            this.pivotGridColumn2.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn2.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.DetailKeepTogether = true;
            this.pivotGridColumn2.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn2.DetailProcessDuplicates = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn2.DetailProcessNullValues = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn2.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn2.DetailTag = null;
            this.pivotGridColumn2.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn2.FieldName = "PONO";
            this.pivotGridColumn2.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn2.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn2.HeaderBorderWidth = 1;
            this.pivotGridColumn2.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn2.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn2.HeaderKeepTogether = true;
            this.pivotGridColumn2.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn2.HeaderSize = new System.Drawing.Size(55, 25);
            this.pivotGridColumn2.HeaderTag = null;
            this.pivotGridColumn2.HeaderText = "PO#";
            this.pivotGridColumn2.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn2.Name = "pivotGridColumn2";
            this.pivotGridColumn2.SubTotalText = "PO[PONO] Sub-total:";
            // 
            // pivotGridColumn6
            // 
            this.pivotGridColumn6.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn6.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn6.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn6.DetailBorderWidth = 1;
            this.pivotGridColumn6.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn6.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.DetailKeepTogether = true;
            this.pivotGridColumn6.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn6.DetailProcessDuplicates = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn6.DetailProcessNullValues = DevExpress.XtraReports.UI.ValueSuppressType.Suppress;
            this.pivotGridColumn6.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn6.DetailTag = null;
            this.pivotGridColumn6.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn6.FieldName = "ColorCode";
            this.pivotGridColumn6.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn6.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn6.HeaderBorderWidth = 1;
            this.pivotGridColumn6.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn6.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn6.HeaderKeepTogether = true;
            this.pivotGridColumn6.HeaderMultiline = true;
            this.pivotGridColumn6.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn6.HeaderSize = new System.Drawing.Size(55, 25);
            this.pivotGridColumn6.HeaderTag = null;
            this.pivotGridColumn6.HeaderText = "PH\r\nColor\r\nCode";
            this.pivotGridColumn6.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn6.Name = "pivotGridColumn6";
            this.pivotGridColumn6.SubTotalText = "Color[ColorCode] Sub-total:";
            // 
            // pivotGridColumn7
            // 
            this.pivotGridColumn7.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn7.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn7.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn7.DetailBorderWidth = 1;
            this.pivotGridColumn7.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn7.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.DetailKeepTogether = true;
            this.pivotGridColumn7.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn7.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn7.DetailTag = null;
            this.pivotGridColumn7.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn7.FieldName = "FitCode";
            this.pivotGridColumn7.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn7.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn7.HeaderBorderWidth = 1;
            this.pivotGridColumn7.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn7.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn7.HeaderKeepTogether = true;
            this.pivotGridColumn7.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn7.HeaderSize = new System.Drawing.Size(40, 25);
            this.pivotGridColumn7.HeaderTag = null;
            this.pivotGridColumn7.HeaderText = "Cup";
            this.pivotGridColumn7.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn7.Name = "pivotGridColumn7";
            // 
            // pivotGridColumn10
            // 
            this.pivotGridColumn10.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn10.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn10.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn10.DetailBorderWidth = 1;
            this.pivotGridColumn10.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn10.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.DetailKeepTogether = true;
            this.pivotGridColumn10.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn10.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn10.DetailTag = null;
            this.pivotGridColumn10.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn10.FieldName = "Price";
            this.pivotGridColumn10.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn10.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn10.HeaderBorderWidth = 1;
            this.pivotGridColumn10.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn10.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn10.HeaderKeepTogether = true;
            this.pivotGridColumn10.HeaderMultiline = true;
            this.pivotGridColumn10.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn10.HeaderSize = new System.Drawing.Size(50, 25);
            this.pivotGridColumn10.HeaderTag = null;
            this.pivotGridColumn10.HeaderText = "Price\r\n([Currency])";
            this.pivotGridColumn10.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn10.Name = "pivotGridColumn10";
            this.pivotGridColumn10.TotalFormatString = "{0:N4}";
            // 
            // pivotGridColumn11
            // 
            this.pivotGridColumn11.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn11.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn11.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn11.DetailBorders = DevExpress.XtraPrinting.BorderSide.None;
            this.pivotGridColumn11.DetailBorderWidth = 1;
            this.pivotGridColumn11.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
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
            this.pivotGridColumn11.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
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
            this.pivotGridColumn3.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn3.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.DetailKeepTogether = true;
            this.pivotGridColumn3.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, -1F);
            this.pivotGridColumn3.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn3.DetailTag = null;
            this.pivotGridColumn3.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn3.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.SubTotal;
            this.pivotGridColumn3.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn3.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn3.HeaderBorderWidth = 1;
            this.pivotGridColumn3.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn3.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn3.HeaderKeepTogether = true;
            this.pivotGridColumn3.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn3.HeaderSize = new System.Drawing.Size(60, 25);
            this.pivotGridColumn3.HeaderTag = null;
            this.pivotGridColumn3.HeaderText = "Sub-Ttl";
            this.pivotGridColumn3.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn3.Name = "pivotGridColumn3";
            this.pivotGridColumn3.TotalFormatString = "{0:N0}";
            // 
            // pivotGridColumn8
            // 
            this.pivotGridColumn8.Area = PH.Platform.Report.PivotGrid.PivotArea.LeftRowArea;
            this.pivotGridColumn8.DetailBackColor = System.Drawing.Color.Transparent;
            this.pivotGridColumn8.DetailBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.DetailBorders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn8.DetailBorderWidth = 1;
            this.pivotGridColumn8.DetailFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn8.DetailForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.DetailKeepTogether = true;
            this.pivotGridColumn8.DetailPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn8.DetailSize = new System.Drawing.Size(100, 25);
            this.pivotGridColumn8.DetailTag = null;
            this.pivotGridColumn8.DetailText = "pcs";
            this.pivotGridColumn8.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn8.FieldType = PH.Platform.Report.PivotGrid.PivotFieldType.Unit;
            this.pivotGridColumn8.HeaderBackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.pivotGridColumn8.HeaderBorderColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.HeaderBorders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.pivotGridColumn8.HeaderBorderWidth = 1;
            this.pivotGridColumn8.HeaderFont = new System.Drawing.Font("Times New Roman", 9.75F);
            this.pivotGridColumn8.HeaderForeColor = System.Drawing.SystemColors.ControlText;
            this.pivotGridColumn8.HeaderKeepTogether = true;
            this.pivotGridColumn8.HeaderMultiline = true;
            this.pivotGridColumn8.HeaderPadding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 96F);
            this.pivotGridColumn8.HeaderSize = new System.Drawing.Size(35, 25);
            this.pivotGridColumn8.HeaderTag = null;
            this.pivotGridColumn8.HeaderText = "PO\'s\r\nu/m";
            this.pivotGridColumn8.HeaderTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn8.Name = "pivotGridColumn8";
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
            // lbNotepad
            // 
            this.lbNotepad.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbNotepad.Location = new System.Drawing.Point(0, 0);
            this.lbNotepad.Multiline = true;
            this.lbNotepad.Name = "lbNotepad";
            this.lbNotepad.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.lbNotepad.Size = new System.Drawing.Size(765, 55);
            this.lbNotepad.StyleName = "csDetail";
            this.lbNotepad.StylePriority.UseBorders = false;
            this.lbNotepad.StylePriority.UseFont = false;
            this.lbNotepad.StylePriority.UsePadding = false;
            this.lbNotepad.Text = "備注 : \r\n  1. 交貨期是以到達交貨點為準。而交貨點是根據選擇不同國際貿易條款(INCOTERMS)而定.\r\n  2. 交貨點是按照雙方同意的國際貿易條款(" +
                "INCOTERMS)的貨品交貨地址(買方和供應方).\r\n  3. 以上表格的小計和總計,不會重複計算相同的顏色. 終端客戶訂單號/款號及買方工程號.";
            this.lbNotepad.WordWrap = false;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrSubreport_Supplementsheet});
            this.ReportFooter.Height = 23;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.PageBreak = DevExpress.XtraReports.UI.PageBreak.BeforeBand;
            // 
            // xrSubreport_Supplementsheet
            // 
            this.xrSubreport_Supplementsheet.Location = new System.Drawing.Point(0, 0);
            this.xrSubreport_Supplementsheet.Name = "xrSubreport_Supplementsheet";
            this.xrSubreport_Supplementsheet.Size = new System.Drawing.Size(100, 23);
            // 
            // PageFooter
            // 
            this.PageFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable11,
            this.xrPageInfo2});
            this.PageFooter.Height = 33;
            this.PageFooter.Name = "PageFooter";
            // 
            // xrTable11
            // 
            this.xrTable11.Location = new System.Drawing.Point(95, 0);
            this.xrTable11.Name = "xrTable11";
            this.xrTable11.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow26,
            this.xrTableRow28});
            this.xrTable11.Size = new System.Drawing.Size(577, 33);
            this.xrTable11.StyleName = "csHeader";
            this.xrTable11.StylePriority.UseTextAlignment = false;
            this.xrTable11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow26
            // 
            this.xrTableRow26.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell59});
            this.xrTableRow26.Name = "xrTableRow26";
            this.xrTableRow26.Size = new System.Drawing.Size(577, 17);
            // 
            // xrTableCell59
            // 
            this.xrTableCell59.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell59.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell59.Name = "xrTableCell59";
            this.xrTableCell59.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell59.Size = new System.Drawing.Size(577, 17);
            this.xrTableCell59.StylePriority.UseFont = false;
            this.xrTableCell59.StylePriority.UseTextAlignment = false;
            this.xrTableCell59.Text = "Unit 1901, Ever Gain Plaza, Tower 1, 88 Container Port Road, Kwai Chung, Hong Kon" +
                "g";
            this.xrTableCell59.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow28
            // 
            this.xrTableRow28.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell67,
            this.xrTableCell71,
            this.xrTableCell73});
            this.xrTableRow28.Name = "xrTableRow28";
            this.xrTableRow28.Size = new System.Drawing.Size(577, 16);
            // 
            // xrTableCell67
            // 
            this.xrTableCell67.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell67.Name = "xrTableCell67";
            this.xrTableCell67.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell67.Size = new System.Drawing.Size(216, 16);
            this.xrTableCell67.StylePriority.UseTextAlignment = false;
            this.xrTableCell67.Text = "Tel: (852) 2422 6622";
            this.xrTableCell67.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell71
            // 
            this.xrTableCell71.Location = new System.Drawing.Point(216, 0);
            this.xrTableCell71.Name = "xrTableCell71";
            this.xrTableCell71.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell71.Size = new System.Drawing.Size(72, 16);
            // 
            // xrTableCell73
            // 
            this.xrTableCell73.Location = new System.Drawing.Point(288, 0);
            this.xrTableCell73.Name = "xrTableCell73";
            this.xrTableCell73.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell73.Size = new System.Drawing.Size(289, 16);
            this.xrTableCell73.Text = "Fax: (852) 2428 7212";
            // 
            // DetailReport
            // 
            this.DetailReport.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail1,
            this.ReportHeader,
            this.GroupHeader2});
            this.DetailReport.DataSource = this.bindingSource2;
            this.DetailReport.Name = "DetailReport";
            // 
            // Detail1
            // 
            this.Detail1.Height = 0;
            this.Detail1.Name = "Detail1";
            // 
            // ReportHeader
            // 
            this.ReportHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable7});
            this.ReportHeader.Height = 20;
            this.ReportHeader.Name = "ReportHeader";
            // 
            // GroupHeader2
            // 
            this.GroupHeader2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.GroupHeader2.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("SupplierReference", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader2.Height = 24;
            this.GroupHeader2.Name = "GroupHeader2";
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
            this.xrTableCell84,
            this.xrTableCell18});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Size = new System.Drawing.Size(765, 24);
            // 
            // xrTableCell82
            // 
            this.xrTableCell82.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell82.Name = "xrTableCell82";
            this.xrTableCell82.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell82.Size = new System.Drawing.Size(75, 24);
            this.xrTableCell82.StylePriority.UseFont = false;
            this.xrTableCell82.StylePriority.UseTextAlignment = false;
            this.xrTableCell82.Text = "[MIDcItemCode]";
            this.xrTableCell82.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell83
            // 
            this.xrTableCell83.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell83.Name = "xrTableCell83";
            this.xrTableCell83.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell83.Size = new System.Drawing.Size(154, 24);
            this.xrTableCell83.StylePriority.UseTextAlignment = false;
            this.xrTableCell83.Text = "[SupplierReference]";
            this.xrTableCell83.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell84
            // 
            this.xrTableCell84.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell84.CanGrow = false;
            this.xrTableCell84.Font = new System.Drawing.Font("Arial Unicode MS", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell84.Location = new System.Drawing.Point(229, 0);
            this.xrTableCell84.Name = "xrTableCell84";
            this.xrTableCell84.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell84.Size = new System.Drawing.Size(336, 24);
            this.xrTableCell84.StylePriority.UseBorders = false;
            this.xrTableCell84.StylePriority.UseFont = false;
            this.xrTableCell84.Text = "[CommodityDesc]";
            // 
            // bindingSource2
            // 
            this.bindingSource2.DataSource = typeof(PH.POPC.BO.POHeader);
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
            this.DetailReport1.Level = 1;
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
            this.xrTable3,
            this.xrTable12});
            this.GroupHeader1.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("PONO", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader1.Height = 84;
            this.GroupHeader1.Level = 1;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // xrTable3
            // 
            this.xrTable3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.xrTable3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable3.Location = new System.Drawing.Point(0, 44);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow11});
            this.xrTable3.Size = new System.Drawing.Size(765, 40);
            this.xrTable3.StyleName = "csHeader";
            this.xrTable3.StylePriority.UseBackColor = false;
            this.xrTable3.StylePriority.UseBorders = false;
            this.xrTable3.StylePriority.UseTextAlignment = false;
            this.xrTable3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow11
            // 
            this.xrTableRow11.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell14,
            this.xrTableCell21,
            this.xrTableCell37,
            this.xrTableCell26,
            this.xrTableCell4,
            this.xrTableCell22,
            this.xrTableCell2,
            this.xrTableCell25,
            this.xrTableCell23,
            this.xrTableCell8,
            this.xrTableCell5,
            this.xrTableCell7,
            this.xrTableCell86,
            this.xrTableCell88,
            this.xrTableCell38,
            this.xrTableCell87});
            this.xrTableRow11.Name = "xrTableRow11";
            this.xrTableRow11.Size = new System.Drawing.Size(765, 40);
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.CanGrow = false;
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell14.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(26, 40);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UsePadding = false;
            this.xrTableCell14.Text = "供方品種編碼";
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.CanGrow = false;
            this.xrTableCell21.Location = new System.Drawing.Point(26, 0);
            this.xrTableCell21.Multiline = true;
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(21, 40);
            this.xrTableCell21.StylePriority.UseBorders = false;
            this.xrTableCell21.StylePriority.UsePadding = false;
            this.xrTableCell21.Text = "行號";
            // 
            // xrTableCell37
            // 
            this.xrTableCell37.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell37.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel4,
            this.xrLabel2,
            this.xrLabel1});
            this.xrTableCell37.Location = new System.Drawing.Point(47, 0);
            this.xrTableCell37.Multiline = true;
            this.xrTableCell37.Name = "xrTableCell37";
            this.xrTableCell37.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell37.Size = new System.Drawing.Size(113, 40);
            this.xrTableCell37.StylePriority.UseBorders = false;
            this.xrTableCell37.Text = "xrTableCell37";
            // 
            // xrLabel4
            // 
            this.xrLabel4.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrLabel4.CanGrow = false;
            this.xrLabel4.Location = new System.Drawing.Point(24, 20);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(89, 20);
            this.xrLabel4.StylePriority.UseBorders = false;
            this.xrLabel4.Text = "名稱";
            // 
            // xrLabel2
            // 
            this.xrLabel2.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrLabel2.CanGrow = false;
            this.xrLabel2.Location = new System.Drawing.Point(0, 20);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(24, 20);
            this.xrLabel2.StylePriority.UseBorders = false;
            this.xrLabel2.StylePriority.UsePadding = false;
            this.xrLabel2.Text = "編號";
            // 
            // xrLabel1
            // 
            this.xrLabel1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel1.CanGrow = false;
            this.xrLabel1.Location = new System.Drawing.Point(0, 0);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(113, 20);
            this.xrLabel1.StylePriority.UseBorders = false;
            this.xrLabel1.Text = "買方品種顏色";
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell26.CanGrow = false;
            this.xrTableCell26.Location = new System.Drawing.Point(160, 0);
            this.xrTableCell26.Multiline = true;
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(78, 40);
            this.xrTableCell26.StylePriority.UseBorders = false;
            this.xrTableCell26.StylePriority.UsePadding = false;
            this.xrTableCell26.Text = "供應商\r\n品種色影";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.CanGrow = false;
            this.xrTableCell4.Location = new System.Drawing.Point(238, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(36, 40);
            this.xrTableCell4.StylePriority.UsePadding = false;
            this.xrTableCell4.Text = "數量";
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.CanGrow = false;
            this.xrTableCell22.Location = new System.Drawing.Point(274, 0);
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(21, 40);
            this.xrTableCell22.StylePriority.UsePadding = false;
            this.xrTableCell22.Text = "單位";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.CanGrow = false;
            this.xrTableCell2.Location = new System.Drawing.Point(295, 0);
            this.xrTableCell2.Multiline = true;
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(40, 40);
            this.xrTableCell2.StylePriority.UsePadding = false;
            this.xrTableCell2.Text = "單價\r\n([Currency])";
            this.xrTableCell2.WordWrap = false;
            // 
            // xrTableCell25
            // 
            this.xrTableCell25.CanGrow = false;
            this.xrTableCell25.Location = new System.Drawing.Point(335, 0);
            this.xrTableCell25.Multiline = true;
            this.xrTableCell25.Name = "xrTableCell25";
            this.xrTableCell25.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell25.Size = new System.Drawing.Size(63, 40);
            this.xrTableCell25.StylePriority.UsePadding = false;
            this.xrTableCell25.Text = "總金額\r\n([Currency])";
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel5,
            this.xrLabel3});
            this.xrTableCell23.Location = new System.Drawing.Point(398, 0);
            this.xrTableCell23.Multiline = true;
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(74, 40);
            this.xrTableCell23.StylePriority.UsePadding = false;
            this.xrTableCell23.Text = "Delivery Date\r\n(Week)";
            // 
            // xrLabel5
            // 
            this.xrLabel5.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel5.CanGrow = false;
            this.xrLabel5.Font = new System.Drawing.Font("Arial", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel5.Location = new System.Drawing.Point(0, 25);
            this.xrLabel5.Multiline = true;
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(74, 15);
            this.xrLabel5.StylePriority.UseBorders = false;
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.Text = "( 備注一 )";
            // 
            // xrLabel3
            // 
            this.xrLabel3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrLabel3.CanGrow = false;
            this.xrLabel3.Location = new System.Drawing.Point(0, 0);
            this.xrLabel3.Multiline = true;
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(74, 25);
            this.xrLabel3.StylePriority.UseBorders = false;
            this.xrLabel3.Text = "交貨日期 (#週)";
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell8.Location = new System.Drawing.Point(472, 0);
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(2, 40);
            this.xrTableCell8.StylePriority.UseBorders = false;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.CanGrow = false;
            this.xrTableCell5.Location = new System.Drawing.Point(474, 0);
            this.xrTableCell5.Multiline = true;
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(26, 40);
            this.xrTableCell5.StyleName = "csHeaderSmall";
            this.xrTableCell5.StylePriority.UseFont = false;
            this.xrTableCell5.StylePriority.UsePadding = false;
            this.xrTableCell5.Text = "付運\r\n寬容率\r\n(+/-)%";
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.CanGrow = false;
            this.xrTableCell7.Font = new System.Drawing.Font("Arial Unicode MS", 5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell7.Location = new System.Drawing.Point(500, 0);
            this.xrTableCell7.Multiline = true;
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(65, 40);
            this.xrTableCell7.StyleName = "csHeaderSmall";
            this.xrTableCell7.StylePriority.UseFont = false;
            this.xrTableCell7.StylePriority.UsePadding = false;
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            this.xrTableCell7.Text = "指定的\r\n尺寸大小\r\n/尺寸大小範圍";
            this.xrTableCell7.WordWrap = false;
            // 
            // xrTableCell86
            // 
            this.xrTableCell86.CanGrow = false;
            this.xrTableCell86.Location = new System.Drawing.Point(565, 0);
            this.xrTableCell86.Multiline = true;
            this.xrTableCell86.Name = "xrTableCell86";
            this.xrTableCell86.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell86.Size = new System.Drawing.Size(54, 40);
            this.xrTableCell86.StyleName = "csHeaderSmall";
            this.xrTableCell86.StylePriority.UsePadding = false;
            this.xrTableCell86.Text = "終端客戶\r\n訂單號\r\n(若有資料)";
            // 
            // xrTableCell88
            // 
            this.xrTableCell88.CanGrow = false;
            this.xrTableCell88.Location = new System.Drawing.Point(619, 0);
            this.xrTableCell88.Multiline = true;
            this.xrTableCell88.Name = "xrTableCell88";
            this.xrTableCell88.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell88.Size = new System.Drawing.Size(50, 40);
            this.xrTableCell88.StyleName = "csHeaderSmall";
            this.xrTableCell88.StylePriority.UsePadding = false;
            this.xrTableCell88.Text = "終端客戶\r\n款號";
            // 
            // xrTableCell38
            // 
            this.xrTableCell38.CanGrow = false;
            this.xrTableCell38.Location = new System.Drawing.Point(669, 0);
            this.xrTableCell38.Multiline = true;
            this.xrTableCell38.Name = "xrTableCell38";
            this.xrTableCell38.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell38.Size = new System.Drawing.Size(38, 40);
            this.xrTableCell38.StyleName = "csHeaderSmall";
            this.xrTableCell38.StylePriority.UseFont = false;
            this.xrTableCell38.StylePriority.UsePadding = false;
            this.xrTableCell38.Text = "成衣顏色\r\n代號\r\n(作參考用)";
            this.xrTableCell38.WordWrap = false;
            // 
            // xrTableCell87
            // 
            this.xrTableCell87.CanGrow = false;
            this.xrTableCell87.Location = new System.Drawing.Point(707, 0);
            this.xrTableCell87.Multiline = true;
            this.xrTableCell87.Name = "xrTableCell87";
            this.xrTableCell87.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell87.Size = new System.Drawing.Size(58, 40);
            this.xrTableCell87.StyleName = "csHeaderSmall";
            this.xrTableCell87.StylePriority.UsePadding = false;
            this.xrTableCell87.Text = "買方工程號";
            // 
            // xrTable12
            // 
            this.xrTable12.Location = new System.Drawing.Point(0, 3);
            this.xrTable12.Name = "xrTable12";
            this.xrTable12.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2,
            this.xrTableRow27});
            this.xrTable12.Size = new System.Drawing.Size(765, 41);
            this.xrTable12.StyleName = "csHeader";
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell53});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(765, 25);
            // 
            // xrTableCell53
            // 
            this.xrTableCell53.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell53.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell53.Multiline = true;
            this.xrTableCell53.Name = "xrTableCell53";
            this.xrTableCell53.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell53.Size = new System.Drawing.Size(765, 25);
            this.xrTableCell53.StylePriority.UseBorders = false;
            this.xrTableCell53.StylePriority.UseTextAlignment = false;
            this.xrTableCell53.Text = "對于船務要求及箱嘜，詳情請聯絡我司之物流及船務部：\r\n香港寫字樓: (852) 2422-6622, 石龍鎮廠: (86) 769-8908-3666";
            this.xrTableCell53.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow27
            // 
            this.xrTableRow27.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellDimension});
            this.xrTableRow27.Name = "xrTableRow27";
            this.xrTableRow27.Size = new System.Drawing.Size(765, 16);
            // 
            // cellDimension
            // 
            this.cellDimension.Location = new System.Drawing.Point(0, 0);
            this.cellDimension.Name = "cellDimension";
            this.cellDimension.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellDimension.Size = new System.Drawing.Size(765, 16);
            this.cellDimension.StylePriority.UseTextAlignment = false;
            this.cellDimension.Text = "數量一覽，品種/顏色(二維)顯示在此頁:";
            this.cellDimension.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4});
            this.GroupFooter1.Height = 24;
            this.GroupFooter1.Level = 1;
            this.GroupFooter1.Name = "GroupFooter1";
            // 
            // xrTable4
            // 
            this.xrTable4.ForeColor = System.Drawing.Color.Blue;
            this.xrTable4.Location = new System.Drawing.Point(0, 2);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTable4.Size = new System.Drawing.Size(765, 20);
            this.xrTable4.StyleName = "csHeader";
            this.xrTable4.StylePriority.UseBackColor = false;
            this.xrTable4.StylePriority.UseBorders = false;
            this.xrTable4.StylePriority.UseForeColor = false;
            this.xrTable4.StylePriority.UseTextAlignment = false;
            this.xrTable4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell9,
            this.cellColor,
            this.xrTableCell33,
            this.cellColorShade,
            this.cellQty,
            this.xrTableCell36,
            this.xrTableCell16,
            this.cellAmount,
            this.xrTableCell17,
            this.xrTableCell41,
            this.xrTableCell42,
            this.xrTableCell44,
            this.cellCustOrderNo,
            this.cellCustStyleNo,
            this.xrTableCell66,
            this.cellProjectNo});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(765, 20);
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.CanGrow = false;
            this.xrTableCell9.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell9.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell9.Multiline = true;
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(47, 20);
            this.xrTableCell9.StylePriority.UseBorders = false;
            this.xrTableCell9.StylePriority.UseFont = false;
            this.xrTableCell9.StylePriority.UsePadding = false;
            this.xrTableCell9.Text = "總計:";
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
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell33.CanGrow = false;
            this.xrTableCell33.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "ColorCode", "")});
            this.xrTableCell33.Location = new System.Drawing.Point(72, 0);
            this.xrTableCell33.Multiline = true;
            this.xrTableCell33.Name = "xrTableCell33";
            this.xrTableCell33.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell33.Size = new System.Drawing.Size(88, 20);
            this.xrTableCell33.StylePriority.UseBorders = false;
            xrSummary1.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary1.IgnoreNullValues = true;
            xrSummary1.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell33.Summary = xrSummary1;
            // 
            // bindingSource1
            // 
            this.bindingSource1.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // cellColorShade
            // 
            this.cellColorShade.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellColorShade.CanGrow = false;
            this.cellColorShade.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SupplierColorShade", "")});
            this.cellColorShade.Location = new System.Drawing.Point(160, 0);
            this.cellColorShade.Multiline = true;
            this.cellColorShade.Name = "cellColorShade";
            this.cellColorShade.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellColorShade.Size = new System.Drawing.Size(78, 20);
            this.cellColorShade.StylePriority.UseBorders = false;
            xrSummary2.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary2.IgnoreNullValues = true;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellColorShade.Summary = xrSummary2;
            // 
            // cellQty
            // 
            this.cellQty.CanGrow = false;
            this.cellQty.Location = new System.Drawing.Point(238, 0);
            this.cellQty.Name = "cellQty";
            this.cellQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellQty.Size = new System.Drawing.Size(36, 20);
            this.cellQty.StylePriority.UseBorders = false;
            this.cellQty.StylePriority.UsePadding = false;
            this.cellQty.StylePriority.UseTextAlignment = false;
            this.cellQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.CanGrow = false;
            this.xrTableCell36.Location = new System.Drawing.Point(274, 0);
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(21, 20);
            this.xrTableCell36.StylePriority.UsePadding = false;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.CanGrow = false;
            this.xrTableCell16.Location = new System.Drawing.Point(295, 0);
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
            this.cellAmount.Location = new System.Drawing.Point(335, 0);
            this.cellAmount.Multiline = true;
            this.cellAmount.Name = "cellAmount";
            this.cellAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.cellAmount.Size = new System.Drawing.Size(63, 20);
            this.cellAmount.StylePriority.UseBorders = false;
            this.cellAmount.StylePriority.UsePadding = false;
            this.cellAmount.StylePriority.UseTextAlignment = false;
            xrSummary3.FormatString = "{0:N2}";
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellAmount.Summary = xrSummary3;
            this.cellAmount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell17.CanGrow = false;
            this.xrTableCell17.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "DeliveryWeek", "")});
            this.xrTableCell17.Location = new System.Drawing.Point(398, 0);
            this.xrTableCell17.Multiline = true;
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(74, 20);
            this.xrTableCell17.StylePriority.UseBorders = false;
            this.xrTableCell17.StylePriority.UsePadding = false;
            xrSummary4.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary4.IgnoreNullValues = true;
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell17.Summary = xrSummary4;
            this.xrTableCell17.Text = "xrTableCell17";
            // 
            // xrTableCell41
            // 
            this.xrTableCell41.Location = new System.Drawing.Point(472, 0);
            this.xrTableCell41.Name = "xrTableCell41";
            this.xrTableCell41.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell41.Size = new System.Drawing.Size(2, 20);
            this.xrTableCell41.StylePriority.UseBorders = false;
            // 
            // xrTableCell42
            // 
            this.xrTableCell42.CanGrow = false;
            this.xrTableCell42.Location = new System.Drawing.Point(474, 0);
            this.xrTableCell42.Multiline = true;
            this.xrTableCell42.Name = "xrTableCell42";
            this.xrTableCell42.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell42.Size = new System.Drawing.Size(26, 20);
            this.xrTableCell42.StylePriority.UsePadding = false;
            // 
            // xrTableCell44
            // 
            this.xrTableCell44.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell44.CanGrow = false;
            this.xrTableCell44.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "ItemSize", "")});
            this.xrTableCell44.Location = new System.Drawing.Point(500, 0);
            this.xrTableCell44.Multiline = true;
            this.xrTableCell44.Name = "xrTableCell44";
            this.xrTableCell44.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell44.Size = new System.Drawing.Size(65, 20);
            this.xrTableCell44.StylePriority.UseBorders = false;
            this.xrTableCell44.StylePriority.UsePadding = false;
            xrSummary5.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary5.IgnoreNullValues = true;
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell44.Summary = xrSummary5;
            // 
            // cellCustOrderNo
            // 
            this.cellCustOrderNo.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellCustOrderNo.CanGrow = false;
            this.cellCustOrderNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "EndCustOrderNo", "")});
            this.cellCustOrderNo.Location = new System.Drawing.Point(565, 0);
            this.cellCustOrderNo.Multiline = true;
            this.cellCustOrderNo.Name = "cellCustOrderNo";
            this.cellCustOrderNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustOrderNo.Size = new System.Drawing.Size(54, 20);
            this.cellCustOrderNo.StylePriority.UseBorders = false;
            this.cellCustOrderNo.StylePriority.UsePadding = false;
            xrSummary6.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary6.IgnoreNullValues = true;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellCustOrderNo.Summary = xrSummary6;
            // 
            // cellCustStyleNo
            // 
            this.cellCustStyleNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellCustStyleNo.CanGrow = false;
            this.cellCustStyleNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "EndCustStyleNo", "")});
            this.cellCustStyleNo.Location = new System.Drawing.Point(619, 0);
            this.cellCustStyleNo.Multiline = true;
            this.cellCustStyleNo.Name = "cellCustStyleNo";
            this.cellCustStyleNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustStyleNo.Size = new System.Drawing.Size(50, 20);
            this.cellCustStyleNo.StylePriority.UseBorders = false;
            this.cellCustStyleNo.StylePriority.UsePadding = false;
            xrSummary7.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary7.IgnoreNullValues = true;
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellCustStyleNo.Summary = xrSummary7;
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
            xrSummary8.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary8.IgnoreNullValues = true;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellProjectNo.Summary = xrSummary8;
            // 
            // GroupHeader3
            // 
            this.GroupHeader3.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrSubreport1,
            this.lbItemCode});
            this.GroupHeader3.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("SupplierReference", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader3.Height = 22;
            this.GroupHeader3.Name = "GroupHeader3";
            this.GroupHeader3.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader3_BeforePrint);
            // 
            // xrSubreport1
            // 
            this.xrSubreport1.Location = new System.Drawing.Point(26, 0);
            this.xrSubreport1.Name = "xrSubreport1";
            this.xrSubreport1.Size = new System.Drawing.Size(645, 20);
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
            // GroupHeader4
            // 
            this.GroupHeader4.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable6,
            this.xrTable8,
            this.tableTransit});
            this.GroupHeader4.Height = 188;
            this.GroupHeader4.Name = "GroupHeader4";
            // 
            // xrTable6
            // 
            this.xrTable6.Location = new System.Drawing.Point(0, 0);
            this.xrTable6.Name = "xrTable6";
            this.xrTable6.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow7,
            this.xrTableRow9,
            this.xrTableRow14,
            this.xrTableRow15,
            this.xrTableRow31});
            this.xrTable6.Size = new System.Drawing.Size(482, 100);
            this.xrTable6.StyleName = "csHeader";
            this.xrTable6.StylePriority.UseBorders = false;
            this.xrTable6.StylePriority.UseTextAlignment = false;
            this.xrTable6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow7
            // 
            this.xrTableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell43,
            this.xrTableCell60});
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(482, 19);
            // 
            // xrTableCell43
            // 
            this.xrTableCell43.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrTableCell43.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell43.Name = "xrTableCell43";
            this.xrTableCell43.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell43.Size = new System.Drawing.Size(60, 19);
            this.xrTableCell43.StylePriority.UseBorders = false;
            this.xrTableCell43.Text = "供應商:";
            // 
            // xrTableCell60
            // 
            this.xrTableCell60.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell60.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierName", "")});
            this.xrTableCell60.Location = new System.Drawing.Point(60, 0);
            this.xrTableCell60.Name = "xrTableCell60";
            this.xrTableCell60.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell60.Size = new System.Drawing.Size(422, 19);
            this.xrTableCell60.StylePriority.UseBorders = false;
            this.xrTableCell60.Text = "[SupplierNameTrue]";
            // 
            // xrTableRow9
            // 
            this.xrTableRow9.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell47,
            this.xrTableCell61});
            this.xrTableRow9.Name = "xrTableRow9";
            this.xrTableRow9.Size = new System.Drawing.Size(482, 30);
            // 
            // xrTableCell47
            // 
            this.xrTableCell47.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell47.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell47.Name = "xrTableCell47";
            this.xrTableCell47.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell47.Size = new System.Drawing.Size(60, 30);
            this.xrTableCell47.StylePriority.UseBorders = false;
            this.xrTableCell47.Text = " ";
            // 
            // xrTableCell61
            // 
            this.xrTableCell61.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell61.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierAddress", "")});
            this.xrTableCell61.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell61.Location = new System.Drawing.Point(60, 0);
            this.xrTableCell61.Multiline = true;
            this.xrTableCell61.Name = "xrTableCell61";
            this.xrTableCell61.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell61.Size = new System.Drawing.Size(422, 30);
            this.xrTableCell61.StylePriority.UseBorders = false;
            this.xrTableCell61.StylePriority.UseFont = false;
            this.xrTableCell61.StylePriority.UseTextAlignment = false;
            this.xrTableCell61.Text = "xrTableCell61";
            this.xrTableCell61.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow14
            // 
            this.xrTableRow14.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell55,
            this.xrTableCell63,
            this.xrTableCell56,
            this.xrTableCell68});
            this.xrTableRow14.Name = "xrTableRow14";
            this.xrTableRow14.Size = new System.Drawing.Size(482, 17);
            // 
            // xrTableCell55
            // 
            this.xrTableCell55.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell55.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell55.Name = "xrTableCell55";
            this.xrTableCell55.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell55.Size = new System.Drawing.Size(60, 17);
            this.xrTableCell55.StylePriority.UseBorders = false;
            this.xrTableCell55.Text = "收件人:";
            // 
            // xrTableCell63
            // 
            this.xrTableCell63.Location = new System.Drawing.Point(60, 0);
            this.xrTableCell63.Name = "xrTableCell63";
            this.xrTableCell63.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell63.Size = new System.Drawing.Size(168, 17);
            this.xrTableCell63.Text = "[AttnPerson]";
            // 
            // xrTableCell56
            // 
            this.xrTableCell56.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell56.Location = new System.Drawing.Point(228, 0);
            this.xrTableCell56.Name = "xrTableCell56";
            this.xrTableCell56.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell56.Size = new System.Drawing.Size(34, 17);
            this.xrTableCell56.StylePriority.UseBorders = false;
            this.xrTableCell56.StylePriority.UseFont = false;
            this.xrTableCell56.Text = "電郵:";
            // 
            // xrTableCell68
            // 
            this.xrTableCell68.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell68.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Email", "")});
            this.xrTableCell68.Location = new System.Drawing.Point(262, 0);
            this.xrTableCell68.Name = "xrTableCell68";
            this.xrTableCell68.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell68.Size = new System.Drawing.Size(220, 17);
            this.xrTableCell68.StylePriority.UseBorders = false;
            this.xrTableCell68.Text = "[EMail]";
            // 
            // xrTableRow15
            // 
            this.xrTableRow15.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell57,
            this.xrTableCell64,
            this.xrTableCell58,
            this.xrTableCell69});
            this.xrTableRow15.Name = "xrTableRow15";
            this.xrTableRow15.Size = new System.Drawing.Size(482, 17);
            // 
            // xrTableCell57
            // 
            this.xrTableCell57.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell57.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell57.Name = "xrTableCell57";
            this.xrTableCell57.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell57.Size = new System.Drawing.Size(60, 17);
            this.xrTableCell57.StylePriority.UseBorders = false;
            this.xrTableCell57.Text = "電話:";
            // 
            // xrTableCell64
            // 
            this.xrTableCell64.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell64.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "TelNumber", "")});
            this.xrTableCell64.Location = new System.Drawing.Point(60, 0);
            this.xrTableCell64.Name = "xrTableCell64";
            this.xrTableCell64.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell64.Size = new System.Drawing.Size(168, 17);
            this.xrTableCell64.StylePriority.UseBorders = false;
            this.xrTableCell64.Text = "[Tel]";
            // 
            // xrTableCell58
            // 
            this.xrTableCell58.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell58.Location = new System.Drawing.Point(228, 0);
            this.xrTableCell58.Name = "xrTableCell58";
            this.xrTableCell58.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell58.Size = new System.Drawing.Size(34, 17);
            this.xrTableCell58.StylePriority.UseBorders = false;
            this.xrTableCell58.StylePriority.UseFont = false;
            this.xrTableCell58.Text = "傳真:";
            // 
            // xrTableCell69
            // 
            this.xrTableCell69.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell69.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FaxNumber", "")});
            this.xrTableCell69.Location = new System.Drawing.Point(262, 0);
            this.xrTableCell69.Name = "xrTableCell69";
            this.xrTableCell69.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell69.Size = new System.Drawing.Size(220, 17);
            this.xrTableCell69.StylePriority.UseBorders = false;
            this.xrTableCell69.Text = "[Fax]";
            // 
            // xrTableRow31
            // 
            this.xrTableRow31.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell3,
            this.xrTableCell62,
            this.xrTableCell6});
            this.xrTableRow31.Name = "xrTableRow31";
            this.xrTableRow31.Size = new System.Drawing.Size(482, 17);
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell3.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(128, 17);
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.Text = "終端客戶代碼: [EndCustCode]";
            this.xrTableCell3.WordWrap = false;
            // 
            // xrTableCell62
            // 
            this.xrTableCell62.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell62.Location = new System.Drawing.Point(128, 0);
            this.xrTableCell62.Name = "xrTableCell62";
            this.xrTableCell62.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell62.Size = new System.Drawing.Size(100, 17);
            this.xrTableCell62.StylePriority.UseBorders = false;
            this.xrTableCell62.Text = "買方生產基地: [Factory]";
            this.xrTableCell62.WordWrap = false;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell6.Location = new System.Drawing.Point(228, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(254, 17);
            this.xrTableCell6.StylePriority.UseBorders = false;
            this.xrTableCell6.Text = "供應商工廠所在地: [LocationOfSuppFactoryDesc]";
            this.xrTableCell6.WordWrap = false;
            // 
            // xrTable8
            // 
            this.xrTable8.Location = new System.Drawing.Point(486, 0);
            this.xrTable8.Name = "xrTable8";
            this.xrTable8.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow20,
            this.xrTableRow21,
            this.xrTableRow22,
            this.xrTableRow23,
            this.xrTableRow24});
            this.xrTable8.Size = new System.Drawing.Size(279, 100);
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
            this.xrTableRow20.Size = new System.Drawing.Size(279, 32);
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.xrTableCell11.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 4, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(67, 32);
            this.xrTableCell11.StylePriority.UseBorders = false;
            this.xrTableCell11.StylePriority.UsePadding = false;
            this.xrTableCell11.StylePriority.UseTextAlignment = false;
            this.xrTableCell11.Text = "付款條款:";
            this.xrTableCell11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell12.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PaymentTermCNDesc", "")});
            this.xrTableCell12.Location = new System.Drawing.Point(67, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 4, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(212, 32);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.StylePriority.UsePadding = false;
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "60 days after monthly statement (AMS 60)";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow21
            // 
            this.xrTableRow21.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell20,
            this.xrTableCell27});
            this.xrTableRow21.Name = "xrTableRow21";
            this.xrTableRow21.Size = new System.Drawing.Size(279, 17);
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell20.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(67, 17);
            this.xrTableCell20.StylePriority.UseBorders = false;
            this.xrTableCell20.Text = "國際貿易條款:";
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell27.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "IncotermsCNDesc", "")});
            this.xrTableCell27.Location = new System.Drawing.Point(67, 0);
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(212, 17);
            this.xrTableCell27.StylePriority.UseBorders = false;
            this.xrTableCell27.Text = "Delivered Duty Paid (DDP)";
            // 
            // xrTableRow22
            // 
            this.xrTableRow22.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell39,
            this.xrTableCell40});
            this.xrTableRow22.Name = "xrTableRow22";
            this.xrTableRow22.Size = new System.Drawing.Size(279, 17);
            // 
            // xrTableCell39
            // 
            this.xrTableCell39.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell39.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell39.Name = "xrTableCell39";
            this.xrTableCell39.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell39.Size = new System.Drawing.Size(67, 17);
            this.xrTableCell39.StylePriority.UseBorders = false;
            this.xrTableCell39.Text = "運輸方式 :";
            // 
            // xrTableCell40
            // 
            this.xrTableCell40.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell40.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "TransitModeCN", "")});
            this.xrTableCell40.Location = new System.Drawing.Point(67, 0);
            this.xrTableCell40.Name = "xrTableCell40";
            this.xrTableCell40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell40.Size = new System.Drawing.Size(212, 17);
            this.xrTableCell40.StylePriority.UseBorders = false;
            this.xrTableCell40.Text = "Land";
            // 
            // xrTableRow23
            // 
            this.xrTableRow23.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell80,
            this.cellGrandTotalCurrency,
            this.cellGrandTotalAmount,
            this.lblHasVAT});
            this.xrTableRow23.Name = "xrTableRow23";
            this.xrTableRow23.Size = new System.Drawing.Size(279, 17);
            // 
            // xrTableCell80
            // 
            this.xrTableCell80.Borders = DevExpress.XtraPrinting.BorderSide.Left;
            this.xrTableCell80.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell80.Name = "xrTableCell80";
            this.xrTableCell80.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell80.Size = new System.Drawing.Size(67, 17);
            this.xrTableCell80.StylePriority.UseBorders = false;
            this.xrTableCell80.Text = "總金額 :";
            // 
            // cellGrandTotalCurrency
            // 
            this.cellGrandTotalCurrency.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellGrandTotalCurrency.Location = new System.Drawing.Point(67, 0);
            this.cellGrandTotalCurrency.Name = "cellGrandTotalCurrency";
            this.cellGrandTotalCurrency.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellGrandTotalCurrency.Size = new System.Drawing.Size(64, 17);
            this.cellGrandTotalCurrency.StylePriority.UseFont = false;
            this.cellGrandTotalCurrency.StylePriority.UseTextAlignment = false;
            this.cellGrandTotalCurrency.Text = "[Currency]";
            // 
            // cellGrandTotalAmount
            // 
            this.cellGrandTotalAmount.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.cellGrandTotalAmount.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellGrandTotalAmount.Location = new System.Drawing.Point(131, 0);
            this.cellGrandTotalAmount.Name = "cellGrandTotalAmount";
            this.cellGrandTotalAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellGrandTotalAmount.Size = new System.Drawing.Size(74, 17);
            this.cellGrandTotalAmount.StylePriority.UseBorders = false;
            this.cellGrandTotalAmount.StylePriority.UseFont = false;
            this.cellGrandTotalAmount.Text = "[SuppAmount!N2]";
            // 
            // lblHasVAT
            // 
            this.lblHasVAT.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.lblHasVAT.Location = new System.Drawing.Point(205, 0);
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
            this.xrTableRow24.Size = new System.Drawing.Size(279, 17);
            // 
            // xrTableCell95
            // 
            this.xrTableCell95.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell95.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell95.Name = "xrTableCell95";
            this.xrTableCell95.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell95.Size = new System.Drawing.Size(45, 17);
            this.xrTableCell95.StylePriority.UseBorders = false;
            this.xrTableCell95.Text = "聯系人:";
            // 
            // xrTableCell96
            // 
            this.xrTableCell96.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell96.Location = new System.Drawing.Point(45, 0);
            this.xrTableCell96.Name = "xrTableCell96";
            this.xrTableCell96.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell96.Size = new System.Drawing.Size(234, 17);
            this.xrTableCell96.StylePriority.UseBorders = false;
            this.xrTableCell96.StylePriority.UseTextAlignment = false;
            this.xrTableCell96.Text = "[PurchaseOfficerAndEmail]";
            this.xrTableCell96.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tableTransit
            // 
            this.tableTransit.Location = new System.Drawing.Point(0, 100);
            this.tableTransit.Name = "tableTransit";
            this.tableTransit.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow29,
            this.trowTransitTitle1,
            this.trowTransitTitle2,
            this.trowTransitData,
            this.trowTransitData2});
            this.tableTransit.Size = new System.Drawing.Size(765, 85);
            this.tableTransit.StyleName = "csHeader";
            this.tableTransit.StylePriority.UseBorders = false;
            this.tableTransit.StylePriority.UseTextAlignment = false;
            this.tableTransit.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow29
            // 
            this.xrTableRow29.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell109});
            this.xrTableRow29.Name = "xrTableRow29";
            this.xrTableRow29.Size = new System.Drawing.Size(765, 20);
            // 
            // xrTableCell109
            // 
            this.xrTableCell109.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell109.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell109.Name = "xrTableCell109";
            this.xrTableCell109.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell109.Size = new System.Drawing.Size(765, 20);
            this.xrTableCell109.StylePriority.UseFont = false;
            this.xrTableCell109.Text = "根據雙方所同意的采購條款，現向貴公司訂購如下商品。請即時承認收到和接受此訂單，並首先使用電郵確認，再交回已簽字的此訂單複本。";
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
            this.cellTransitWindow.Text = "時間框架--由交貨點到目的地點";
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
            this.cellTransitPoit1.Borders = DevExpress.XtraPrinting.BorderSide.Left;
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
            this.xrTableCell76.Borders = DevExpress.XtraPrinting.BorderSide.Right;
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
            this.cellEndPoint1.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellEndPoint1.Location = new System.Drawing.Point(229, 0);
            this.cellEndPoint1.Name = "cellEndPoint1";
            this.cellEndPoint1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPoint1.Size = new System.Drawing.Size(192, 17);
            this.cellEndPoint1.StylePriority.UseBackColor = false;
            this.cellEndPoint1.StylePriority.UseFont = false;
            this.cellEndPoint1.StylePriority.UseTextAlignment = false;
            this.cellEndPoint1.Text = "目的地點";
            this.cellEndPoint1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellEndPoint2
            // 
            this.cellEndPoint2.BackColor = System.Drawing.Color.LightCyan;
            this.cellEndPoint2.Borders = DevExpress.XtraPrinting.BorderSide.Right;
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
            this.cellTransitFrame1.Text = "時間框架";
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
            this.xrTableCell110.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
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
            this.xrTableCell110.Text = "Arrival Point of destination: Shilong Town";
            // 
            // cellEndPointName
            // 
            this.cellEndPointName.Borders = DevExpress.XtraPrinting.BorderSide.Top;
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
            this.cellEndPointNameData.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
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
            this.cellTransitFrame2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
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
            this.xrTableCell1,
            this.cellEndPointAddress,
            this.cellEndPointAddressData,
            this.cellTransitFrame3});
            this.trowTransitData2.Name = "trowTransitData2";
            this.trowTransitData2.Size = new System.Drawing.Size(765, 15);
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell1.CanGrow = false;
            this.xrTableCell1.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "IncotermsPointPort", "")});
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(229, 15);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "xrTableCell17";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
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
            // ReportHeader1
            // 
            this.ReportHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1,
            this.xrTable5,
            this.xrPictureBox1});
            this.ReportHeader1.Height = 96;
            this.ReportHeader1.Name = "ReportHeader1";
            // 
            // xrTable1
            // 
            this.xrTable1.Font = new System.Drawing.Font("Arial", 9.75F);
            this.xrTable1.Location = new System.Drawing.Point(561, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow13,
            this.xrTableRow10,
            this.xrTableRow18,
            this.xrTableRow19});
            this.xrTable1.Size = new System.Drawing.Size(204, 96);
            this.xrTable1.StylePriority.UseFont = false;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell10});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(204, 20);
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblPHCopy,
            this.lblSizeMatrix});
            this.xrTableCell10.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(204, 20);
            // 
            // lblPHCopy
            // 
            this.lblPHCopy.BackColor = System.Drawing.Color.LightCyan;
            this.lblPHCopy.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lblPHCopy.Font = new System.Drawing.Font("Arial", 8F);
            this.lblPHCopy.Location = new System.Drawing.Point(1, 1);
            this.lblPHCopy.Name = "lblPHCopy";
            this.lblPHCopy.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblPHCopy.Size = new System.Drawing.Size(77, 18);
            this.lblPHCopy.StylePriority.UseBackColor = false;
            this.lblPHCopy.StylePriority.UseBorders = false;
            this.lblPHCopy.StylePriority.UseFont = false;
            this.lblPHCopy.StylePriority.UseTextAlignment = false;
            this.lblPHCopy.Text = "PH Copy";
            this.lblPHCopy.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lblSizeMatrix
            // 
            this.lblSizeMatrix.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lblSizeMatrix.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lblSizeMatrix.Location = new System.Drawing.Point(126, 1);
            this.lblSizeMatrix.Name = "lblSizeMatrix";
            this.lblSizeMatrix.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblSizeMatrix.Size = new System.Drawing.Size(77, 18);
            this.lblSizeMatrix.StylePriority.UseBorders = false;
            this.lblSizeMatrix.StylePriority.UseFont = false;
            this.lblSizeMatrix.StylePriority.UseTextAlignment = false;
            this.lblSizeMatrix.Text = "尺碼矩陣";
            this.lblSizeMatrix.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow13
            // 
            this.xrTableRow13.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellPONO,
            this.xrTableCell15});
            this.xrTableRow13.Name = "xrTableRow13";
            this.xrTableRow13.Size = new System.Drawing.Size(204, 23);
            // 
            // cellPONO
            // 
            this.cellPONO.Font = new System.Drawing.Font("Arial Unicode MS", 10F, System.Drawing.FontStyle.Bold);
            this.cellPONO.Location = new System.Drawing.Point(0, 0);
            this.cellPONO.Name = "cellPONO";
            this.cellPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellPONO.Size = new System.Drawing.Size(95, 23);
            this.cellPONO.StylePriority.UseFont = false;
            this.cellPONO.StylePriority.UseTextAlignment = false;
            this.cellPONO.Text = "P.O. No.:";
            this.cellPONO.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 10F, System.Drawing.FontStyle.Bold);
            this.xrTableCell15.Location = new System.Drawing.Point(95, 0);
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(109, 23);
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "[PONO]";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow10
            // 
            this.xrTableRow10.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell13});
            this.xrTableRow10.Name = "xrTableRow10";
            this.xrTableRow10.Size = new System.Drawing.Size(204, 19);
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.CanGrow = false;
            this.xrTableCell13.Font = new System.Drawing.Font("Arial Unicode MS", 10F, System.Drawing.FontStyle.Bold);
            this.xrTableCell13.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(204, 19);
            this.xrTableCell13.StylePriority.UseFont = false;
            this.xrTableCell13.Text = "網上訂購單號 : n.a.";
            // 
            // xrTableRow18
            // 
            this.xrTableRow18.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell28,
            this.cellAmendmentNo});
            this.xrTableRow18.Name = "xrTableRow18";
            this.xrTableRow18.Size = new System.Drawing.Size(204, 18);
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell28.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(95, 18);
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.StylePriority.UseTextAlignment = false;
            this.xrTableCell28.Text = "修正次數:";
            this.xrTableCell28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // cellAmendmentNo
            // 
            this.cellAmendmentNo.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.cellAmendmentNo.Location = new System.Drawing.Point(95, 0);
            this.cellAmendmentNo.Name = "cellAmendmentNo";
            this.cellAmendmentNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellAmendmentNo.Size = new System.Drawing.Size(109, 18);
            this.cellAmendmentNo.StylePriority.UseFont = false;
            this.cellAmendmentNo.StylePriority.UseTextAlignment = false;
            this.cellAmendmentNo.Text = "0";
            this.cellAmendmentNo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow19
            // 
            this.xrTableRow19.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell89,
            this.xrTableCell90});
            this.xrTableRow19.Name = "xrTableRow19";
            this.xrTableRow19.Size = new System.Drawing.Size(204, 16);
            // 
            // xrTableCell89
            // 
            this.xrTableCell89.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell89.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell89.Multiline = true;
            this.xrTableCell89.Name = "xrTableCell89";
            this.xrTableCell89.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell89.Size = new System.Drawing.Size(95, 16);
            this.xrTableCell89.StylePriority.UseFont = false;
            this.xrTableCell89.Text = "發出日期 :";
            // 
            // xrTableCell90
            // 
            this.xrTableCell90.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "OrderDate", "{0:yyyy-MM-dd}")});
            this.xrTableCell90.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell90.Location = new System.Drawing.Point(95, 0);
            this.xrTableCell90.Multiline = true;
            this.xrTableCell90.Name = "xrTableCell90";
            this.xrTableCell90.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell90.Size = new System.Drawing.Size(109, 16);
            this.xrTableCell90.StylePriority.UseFont = false;
            this.xrTableCell90.StylePriority.UseTextAlignment = false;
            this.xrTableCell90.Text = "xrTableCell90";
            this.xrTableCell90.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTable5
            // 
            this.xrTable5.Font = new System.Drawing.Font("Arial", 9.75F);
            this.xrTable5.Location = new System.Drawing.Point(85, 0);
            this.xrTable5.Name = "xrTable5";
            this.xrTable5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow5,
            this.xrTableRow6,
            this.xrTableRow8});
            this.xrTable5.Size = new System.Drawing.Size(472, 96);
            this.xrTable5.StylePriority.UseFont = false;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyCN});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(472, 30);
            // 
            // lbCompanyCN
            // 
            this.lbCompanyCN.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.lbCompanyCN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyCN.Name = "lbCompanyCN";
            this.lbCompanyCN.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbCompanyCN.Size = new System.Drawing.Size(472, 30);
            this.lbCompanyCN.StylePriority.UseFont = false;
            this.lbCompanyCN.StylePriority.UsePadding = false;
            this.lbCompanyCN.Text = "沛  恒  製  衣  有  限  公  司";
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.lbCompanyEN,
            this.xrTableCell19});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(472, 30);
            // 
            // lbCompanyEN
            // 
            this.lbCompanyEN.Font = new System.Drawing.Font("Arial", 13F);
            this.lbCompanyEN.Location = new System.Drawing.Point(0, 0);
            this.lbCompanyEN.Multiline = true;
            this.lbCompanyEN.Name = "lbCompanyEN";
            this.lbCompanyEN.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.lbCompanyEN.Size = new System.Drawing.Size(318, 30);
            this.lbCompanyEN.StylePriority.UseFont = false;
            this.lbCompanyEN.StylePriority.UsePadding = false;
            this.lbCompanyEN.Text = "PH Garment Mfg. Co. Ltd.\r\n";
            this.lbCompanyEN.WordWrap = false;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Font = new System.Drawing.Font("Arial", 7F);
            this.xrTableCell19.Location = new System.Drawing.Point(318, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(154, 30);
            this.xrTableCell19.StylePriority.UseFont = false;
            this.xrTableCell19.StylePriority.UseForeColor = false;
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "(Member of PH Garment Group)";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow8
            // 
            this.xrTableRow8.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellTitle1,
            this.cellTitle2,
            this.cellTitle3});
            this.xrTableRow8.Name = "xrTableRow8";
            this.xrTableRow8.Size = new System.Drawing.Size(472, 36);
            // 
            // cellTitle1
            // 
            this.cellTitle1.Font = new System.Drawing.Font("Arial Unicode MS", 14F);
            this.cellTitle1.Location = new System.Drawing.Point(0, 0);
            this.cellTitle1.Name = "cellTitle1";
            this.cellTitle1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellTitle1.Size = new System.Drawing.Size(258, 36);
            this.cellTitle1.StylePriority.UseBorders = false;
            this.cellTitle1.StylePriority.UseFont = false;
            this.cellTitle1.StylePriority.UsePadding = false;
            this.cellTitle1.StylePriority.UseTextAlignment = false;
            this.cellTitle1.Text = "Supplier Sample Issue";
            this.cellTitle1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.cellTitle1.WordWrap = false;
            // 
            // cellTitle2
            // 
            this.cellTitle2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellTitle2.Location = new System.Drawing.Point(258, 0);
            this.cellTitle2.Name = "cellTitle2";
            this.cellTitle2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle2.Size = new System.Drawing.Size(121, 36);
            this.cellTitle2.StylePriority.UseFont = false;
            this.cellTitle2.StylePriority.UseTextAlignment = false;
            this.cellTitle2.Text = " - Multiple items";
            this.cellTitle2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellTitle2.WordWrap = false;
            // 
            // cellTitle3
            // 
            this.cellTitle3.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.cellTitle3.Location = new System.Drawing.Point(379, 0);
            this.cellTitle3.Name = "cellTitle3";
            this.cellTitle3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle3.Size = new System.Drawing.Size(93, 36);
            this.cellTitle3.StylePriority.UseBorders = false;
            this.cellTitle3.StylePriority.UseFont = false;
            this.cellTitle3.StylePriority.UseTextAlignment = false;
            this.cellTitle3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellTitle3.WordWrap = false;
            // 
            // xrPictureBox1
            // 
            this.xrPictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("xrPictureBox1.Image")));
            this.xrPictureBox1.Location = new System.Drawing.Point(0, 0);
            this.xrPictureBox1.Name = "xrPictureBox1";
            this.xrPictureBox1.Size = new System.Drawing.Size(83, 58);
            this.xrPictureBox1.Sizing = DevExpress.XtraPrinting.ImageSizeMode.ZoomImage;
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable10,
            this.lbNotepad});
            this.GroupFooter2.Height = 121;
            this.GroupFooter2.Name = "GroupFooter2";
            // 
            // xrTable10
            // 
            this.xrTable10.Location = new System.Drawing.Point(95, 55);
            this.xrTable10.Name = "xrTable10";
            this.xrTable10.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow12,
            this.xrTableRow16,
            this.xrTableRow25});
            this.xrTable10.Size = new System.Drawing.Size(577, 60);
            this.xrTable10.StyleName = "csHeader";
            this.xrTable10.StylePriority.UseTextAlignment = false;
            this.xrTable10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTableRow12
            // 
            this.xrTableRow12.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell29,
            this.xrTableCell32,
            this.xrTableCell34});
            this.xrTableRow12.Name = "xrTableRow12";
            this.xrTableRow12.Size = new System.Drawing.Size(577, 17);
            this.xrTableRow12.StylePriority.UseTextAlignment = false;
            this.xrTableRow12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomLeft;
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(161, 17);
            this.xrTableCell29.Text = "確認及同意:";
            // 
            // xrTableCell32
            // 
            this.xrTableCell32.Location = new System.Drawing.Point(161, 0);
            this.xrTableCell32.Name = "xrTableCell32";
            this.xrTableCell32.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell32.Size = new System.Drawing.Size(220, 17);
            // 
            // xrTableCell34
            // 
            this.xrTableCell34.Location = new System.Drawing.Point(381, 0);
            this.xrTableCell34.Name = "xrTableCell34";
            this.xrTableCell34.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell34.Size = new System.Drawing.Size(196, 17);
            this.xrTableCell34.Text = "P.H. Garment Mfg. Co., Ltd.:";
            // 
            // xrTableRow16
            // 
            this.xrTableRow16.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell45,
            this.xrTableCell46,
            this.xrTableCell48});
            this.xrTableRow16.Name = "xrTableRow16";
            this.xrTableRow16.Size = new System.Drawing.Size(577, 27);
            // 
            // xrTableCell45
            // 
            this.xrTableCell45.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell45.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell45.Name = "xrTableCell45";
            this.xrTableCell45.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell45.Size = new System.Drawing.Size(161, 27);
            this.xrTableCell45.StylePriority.UseBorders = false;
            // 
            // xrTableCell46
            // 
            this.xrTableCell46.Location = new System.Drawing.Point(161, 0);
            this.xrTableCell46.Name = "xrTableCell46";
            this.xrTableCell46.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell46.Size = new System.Drawing.Size(220, 27);
            // 
            // xrTableCell48
            // 
            this.xrTableCell48.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell48.Location = new System.Drawing.Point(381, 0);
            this.xrTableCell48.Name = "xrTableCell48";
            this.xrTableCell48.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell48.Size = new System.Drawing.Size(196, 27);
            this.xrTableCell48.StylePriority.UseBorders = false;
            // 
            // xrTableRow25
            // 
            this.xrTableRow25.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell49,
            this.xrTableCell50,
            this.xrTableCell52});
            this.xrTableRow25.Name = "xrTableRow25";
            this.xrTableRow25.Size = new System.Drawing.Size(577, 16);
            // 
            // xrTableCell49
            // 
            this.xrTableCell49.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell49.Name = "xrTableCell49";
            this.xrTableCell49.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell49.Size = new System.Drawing.Size(161, 16);
            // 
            // xrTableCell50
            // 
            this.xrTableCell50.Location = new System.Drawing.Point(161, 0);
            this.xrTableCell50.Name = "xrTableCell50";
            this.xrTableCell50.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell50.Size = new System.Drawing.Size(220, 16);
            // 
            // xrTableCell52
            // 
            this.xrTableCell52.Location = new System.Drawing.Point(381, 0);
            this.xrTableCell52.Name = "xrTableCell52";
            this.xrTableCell52.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell52.Size = new System.Drawing.Size(196, 16);
            this.xrTableCell52.Text = "授權人簽署";
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial Unicode MS", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell18.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "HSMaterialName", "")});
            this.xrTableCell18.Location = new System.Drawing.Point(565, 0);
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(200, 24);
            this.xrTableCell18.StylePriority.UseBorders = false;
            this.xrTableCell18.Text = "xrTableCell18";
            // 
            // poMultipleSpecItemReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.ReportFooter,
            this.PageFooter,
            this.DetailReport,
            this.DetailReport1,
            this.GroupHeader4,
            this.ReportHeader1,
            this.GroupFooter2});
            this.DataSource = this.bindingSource2;
            this.ExportOptions.PrintPreview.DefaultFileName = "POReport(Multiple items)";
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 30, 30);
            this.PageHeight = 1169;
            this.PageWidth = 827;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.csHeader,
            this.csDetail,
            this.csHeaderSmall});
            this.Version = "8.1";
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.pcn1DReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable11)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tableTransit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable10)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        bool _isPHCopy;
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

        private bool _isVatPrint;
        public bool IsVatPrint
        {
            get { return false; }
            set { _isVatPrint = value; }
        }


        XtraReport _reportItems;
        int _itemCount, _itemRows;
        private void pcn1DReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.lblPHCopy.Text = this._isPHCopy ? "PH Copy" : "Original";
            POHeader p = this.GetCurrentRow() as POHeader;
            if (p == null) return;

            //------Xsj20160415:為打印VAT單價而註釋掉前面的代碼。----------------------- 
            this.lblHasVAT.Text = p.HaveVAT ? "(含稅)" : "";
            //--------------------------------------------------------------------------

            SetPHCopyInfor(p);
            SetTitleInfor(p);
            SetNotepad(p);

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            var aa = from a in context.POColorSizeDetails
                     where a.PONO == p.PONO && a.Company == p.Company && a.Version == p.Version && a.AmendmentNo == p.AmendmentNo
                     select a;

            this.DetailReport.DataSource = null;
            this.DetailReport.DataSource = aa;
            this.DetailReport1.DataSource = null;
            this.DetailReport1.DataSource = aa;

            var bb = (from a in aa
                      select new { ItemCode = a.SupplierReference }).Distinct();

            _itemCount = bb.Count();
            _itemRows = 28 / _itemCount;

            this.lbItemCode.Height = _itemRows * 15;
            _reportItems = new poItemsMultipleSpecItemReport(IsColorPrint);
            this.xrSubreport1.ReportSource = _reportItems;

            this.cellDimension.Text = "數量一覽之\"品種/顏色 (二維)\"顯示在此頁, 在三維增加\"尺寸大小\"或在四維增加\"尺寸大小/杯\"會顯示在下一頁的補充表上:";
            XtraReport report;
            if (p.HaveSupplementSheet && (p.MoreBuyerSizeCup ?? false))
                report = new poWireBoneReport(IsColorPrint);
            else if (p.HaveSupplementSheet && p.BuyerDimension == PODimension.ThreeR)
                report = new po3DReport(IsColorPrint, _isDometisPrint);
            else if (p.HaveSupplementSheet && p.BuyerDimension == PODimension.Four)
                report = new po4DReport(IsColorPrint, _isDometisPrint);
            else
            {
                this.ReportFooter.Visible = false;
                this.ReportFooter.PageBreak = PageBreak.None;
                this.PageFooter.PrintOn = PrintOnPages.AllPages;
                this.lblSizeMatrix.Visible = false;
                this.cellDimension.Text = "數量一覽，品種/顏色(二維)顯示在此頁:";
                return;
            }
            var b1 = from xx in context.POColorSizeDetails
                     where xx.Company == p.Company && xx.PONO == p.PONO && xx.Version == p.Version && xx.AmendmentNo == p.AmendmentNo
                     orderby xx.FitCode
                     select xx;

            report.DataSource = b1;
            xrSubreport_Supplementsheet.ReportSource = report;
        }
        private void SetPHCopyInfor(POHeader p)
        {
            this.lblPHCopy.Text = this._isPHCopy ? "PH Copy" : "Original";
            if (!this._isPHCopy)
            {
                this.tableTransit.SuspendLayout();
                try
                {

                    this.cellEndPointAddress.Text = "";
                    this.cellEndPointAddressData.Text = "";
                    this.cellTransitFrame3.Text = "";

                    this.trowTransitTitle2.Cells.Remove(this.cellEndPoint2);
                    this.trowTransitTitle2.Cells.Remove(this.cellTransitFrame1);

                    this.trowTransitData.Cells.Remove(this.cellEndPointNameData);
                    this.trowTransitData.Cells.Remove(this.cellTransitFrame2);

                    this.trowTransitData2.Cells.Remove(this.cellEndPointAddressData);
                    this.trowTransitData2.Cells.Remove(this.cellTransitFrame3);

                    this.cellTransitWindow.Text = "";
                    this.cellTransitWindow.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
                    this.cellTransitWindow.BackColor = Color.Transparent;

                    this.cellEndPoint1.Text = "特別提示";
                    this.cellEndPointName.Text = p.SpecialNote1;// (p.Factory == "KB" && (p.Supplier == "RUEY" || p.Supplier == "RGNA")) ? "當買方生產基地為 KB (泰國) 及該批次的貨品量可安排 FCL ( 櫃貨)時, ": "";
                    this.cellEndPointAddress.Text = p.SpecialNote2;// (p.Factory == "KB" && (p.Supplier == "RUEY" || p.Supplier == "RGNA")) ? "交貨點應從香港海港更改為泰國的Chanburi 海港": "";

                    this.cellEndPoint1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    this.cellEndPointName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
                    this.cellEndPointAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;

                    this.cellEndPoint1.Borders = this.cellEndPoint1.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                    this.cellEndPointName.Borders = this.cellEndPointName.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                    this.cellEndPointAddress.Borders = this.cellEndPointAddress.Borders | DevExpress.XtraPrinting.BorderSide.Right;
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
        private void SetTitleInfor(POHeader p)
        {
            //this.cellTitle1.Width = (p.OrderClass == 4 || p.OrderClass == 8) ? 258 : 192;
            //this.cellTitle2.Width = (p.OrderClass == 2) ? 88 : 129;
            this.cellTitle2.Font = new System.Drawing.Font("Arial Unicode MS", ((p.OrderClass == 2 || p.OrderClass == 3) ? 11F : 7F));

            this.cellTitle1.Text = p.POSubjectCN;
            this.cellTitle2.Text = (p.OrderClass == 2 || p.OrderClass == 3) ? p.POSuffixSubjectCN : " - 多類品種";
            this.cellTitle3.Text = (p.OrderClass == 2 || p.OrderClass == 3) ? " - 多類品種" : "";

            this.cellPONO.Text = (p.OrderClass == 4 || p.OrderClass == 8) ? "加工單號:" : "采購單號:";

            if (p.FOC ?? false)
            {
                this.cellGrandTotalAmount.DataBindings.Clear();
                this.cellGrandTotalCurrency.DataBindings.Clear();
                this.cellGrandTotalAmount.Text = "0";
                this.cellGrandTotalCurrency.Text = "";
            }
            this.lbCompanyEN.Text = this._isDometisPrint ? Common.CompanyTitleEN_DG : Common.CompanyTitleEN;
            this.lbCompanyCN.Text = this._isDometisPrint ? Common.CompanyTitleCN_DG : Common.CompanyTitleCN;
            //this.lbCompanyGroup.Size = this._isDometisPrint ? new Size(162, 25) : new Size(234, 25);
        }
        private void SetNotepad(POHeader p)
        {
            int i = 3;
            if (p.HaveMultiPrice)
            {
                i++;
                this.lbNotepad.Text += string.Format("\r\n  {0}. {1}", i, Common.HaveMultiPrice_Notepad_CN);
            }

            if (p.IsStyleColorDiff)
            {
                i++;
                this.lbNotepad.Text += string.Format("\r\n  {0}. {1}", i, Common.IsStyleColorDiff_Notepad_CN);
            }
            if (IsVatPrint)
            {
                i++;
                this.lbNotepad.Text += string.Format("\r\n  {0}. {1}", i, Common.VAT_Notepad_CN);
            }
        }


        //List<string> _project_ttl;
        //List<string> _color_ttl;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //string project = (string)this.GetCurrentColumnValue("ProjectNo");
            //string colorcode = (string)this.GetCurrentColumnValue("ColorCode");
            //if (!_project_ttl.Contains(project))
            //{
            //    _project_ttl.Add(project);
            //}
            //if (!_color_ttl.Contains(colorcode))
            //{
            //    _color_ttl.Add(colorcode);
            //}
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.cellProjectNo.Text = string.Format("{0}", this._project_ttl.Count);
            //this.cellColor.Text = this.cellColorShade.Text = string.Format("{0}", this._color_ttl.Count);
        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //_project_ttl.Clear();
            // _color_ttl.Clear();
        }

        public void SetReportDataSource(object items)
        {
            this.DataSource = items;
            this.DetailReport.DataSource = items;
            //this.DetailReport1.DataSource = items;

        }

        private void GroupHeader3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            POColorSizeDetail d = this.DetailReport1.GetCurrentRow() as POColorSizeDetail;
            if (d == null) return;

            this.lbItemCode.Text = d.SupplierReference;
            //this.lbItemCode.Angle = 90;
            //string itemcode = (string)this.DetailReport1.GetCurrentColumnValue("ItemCode");
            IEnumerable<POColorSizeDetail> list = this.DetailReport1.DataSource as IEnumerable<POColorSizeDetail>;
            //var subitems = from a in list
            //               where a.ItemCode == d.ItemCode
            //               select a;

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            //string pono = "P060679";

            var aa = from a in context.POColorSizeDetails
                     where a.PONO == d.PONO && a.Company == d.Company && a.Version == d.Version && a.AmendmentNo == d.AmendmentNo && a.SupplierReference == d.SupplierReference
                     select a;


            var bb = (from a in aa
                      select new { OrderLine = a.OrderLine, ColorCode = a.ColorCode, Price = a.Price }).Distinct();


            System.Windows.Forms.BindingSource bs = new System.Windows.Forms.BindingSource();
            bs.DataSource = aa;

            for (int i = bb.Count(); i < _itemRows - 1; i++)
            {
                object obj = bs.AddNew();

                POColorSizeDetail dd = obj as POColorSizeDetail;
                dd.Company = d.Company;
                dd.PONO = d.PONO;
                dd.Version = d.Version;
                dd.AmendmentNo = d.AmendmentNo;
                dd.OrderLine = 100 + i;
                dd.SKU = d.SKU;
                dd.ItemCode = d.ItemCode;
                dd.SupplierReference = d.SupplierReference;
                //dd.Price = 10000000 + i;

                //dd.PODetail = d.PODetail;

            }
            this._reportItems.DataSource = null;
            this._reportItems.DataSource = bs;

        }

    }
}
