﻿using System;
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
    public class poIndividualItemWidthReport : DevExpress.XtraReports.UI.XtraReport
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
        private XRPictureBox xrPictureBox1;
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
        private XRSubreport xrSubreport1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private XRTable xrTable1;
        private XRTableRow xrTableRow1;
        private XRTableCell xrTableCell10;
        private XRTableRow xrTableRow13;
        private XRTableCell cellPONO;
        private XRTableCell xrTableCell15;
        private XRTableRow xrTableRow18;
        private XRTableCell xrTableCell28;
        private XRTableCell cellAmendmentNo;
        private XRTableRow xrTableRow19;
        private XRTableCell xrTableCell89;
        private XRTableCell xrTableCell90;
        private GroupHeaderBand GroupHeader4;
        private System.Windows.Forms.BindingSource bindingSource2;
        private GroupFooterBand GroupFooter3;
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
        private XRTable xrTable11;
        private XRTableRow xrTableRow26;
        private XRTableCell xrTableCell59;
        private XRTableRow xrTableRow28;
        private XRTableCell xrTableCell67;
        private XRTableCell xrTableCell71;
        private XRTableCell xrTableCell73;
        private XRTableCell xrTableCell53;
        private XRTableCell xrTableCell54;
        private XRTable xrTable4;
        private XRTableRow xrTableRow4;
        private XRTableCell xrTableCell6;
        private XRTableCell xrTableCell33;
        private XRTableCell cellColorShade;
        private XRTableCell cellQty;
        private XRTableCell xrTableCell36;
        private XRTableCell xrTableCell9;
        private XRTableCell cellAmount;
        private XRTableCell xrTableCell16;
        private XRTableCell cellCustOrderNo;
        private XRTableCell cellCustStyleNo;
        private XRTableCell cellProjectNo;
        private XRTable xrTable5;
        private XRTableRow xrTableRow5;
        private XRTableCell lbCompanyCN;
        private XRTableRow xrTableRow6;
        private XRTableCell lbCompanyEN;
        private XRTableCell xrTableCell18;
        private XRTableRow xrTableRow8;
        private XRTableCell cellTitle1;
        private XRTableCell cellTitle3;
        private XRTable xrTable12;
        private XRTableRow xrTableRow2;
        private XRTableCell xrTableCell14;
        private XRTableRow xrTableRow27;
        private XRTableCell cellDimension;
        private XRSubreport xrSubreport_Supplementsheet;
        private ReportHeaderBand ReportHeader1;
        private GroupFooterBand GroupFooter2;
        private XRControlStyle csHeaderSmall;
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
        private XRTableCell xrTableCell1;
        private XRTableCell xrTableCell62;
        private XRTableCell xrTableCell3;
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
        private XRTableCell cellTitle2;
        private XRTableRow xrTableRow10;
        private XRTableCell cellWebPONO;
        private XRTable tableTransit;
        private XRTableRow xrTableRow29;
        private XRTableCell xrTableCell109;
        private XRTableRow trowTransitTitle2;
        private XRTableCell cellTransitPoit1;
        private XRTableCell xrTableCell76;
        private XRTableCell cellEndPoint2;
        private XRTableRow trowTransitData;
        private XRTableCell xrTableCell110;
        private XRTableCell cellEndPointName;
        private XRTableCell cellEndPointNameData;
        private XRTableRow trowTransitData2;
        private XRTableCell xrTableCell13;
        private XRTableCell cellEndPointAddress;
        private XRTableCell cellEndPointAddressData;
        private XRTable xrTable3;
        private XRTableRow xrTableRow11;
        private XRTableCell xrTableCell37;
        private XRTableCell xrTableCell26;
        private XRTableCell xrTableCell4;
        private XRTableCell xrTableCell22;
        private XRTableCell xrTableCell2;
        private XRTableCell xrTableCell25;
        private XRTableCell xrTableCell23;
        private XRLabel xrLabel5;
        private XRLabel xrLabel3;
        private XRTableCell xrTableCell86;
        private XRTableCell xrTableCell88;
        private XRTableCell xrTableCell87;
        private XRLabel lblSizeMatrix;
        private XRLabel lblPHCopy;
        private XRTableCell lblHasVAT;
        private XRTableCell xrTableCell5;
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        public poIndividualItemWidthReport()
        {
            InitializeComponent();
            //
            // TODO: Add constructor logic here
            //
            //_project_ttl = new List<string>();
            //_color_ttl = new List<string>();
        }
        public poIndividualItemWidthReport(bool isPHCopy, bool isColorPrint, bool isDometisPrint)
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(poIndividualItemWidthReport));
            DevExpress.XtraReports.UI.XRSummary xrSummary1 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary2 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary3 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary4 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary5 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary6 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary7 = new DevExpress.XtraReports.UI.XRSummary();
            DevExpress.XtraReports.UI.XRSummary xrSummary8 = new DevExpress.XtraReports.UI.XRSummary();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable5 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyCN = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.lbCompanyEN = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow8 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTitle1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellTitle3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblSizeMatrix = new DevExpress.XtraReports.UI.XRLabel();
            this.lblPHCopy = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableRow13 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow10 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellWebPONO = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow18 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellAmendmentNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow19 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell89 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell90 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPictureBox1 = new DevExpress.XtraReports.UI.XRPictureBox();
            this.xrTable7 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow17 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell70 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell72 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell53 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTableCell54 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell84 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.DetailReport1 = new DevExpress.XtraReports.UI.DetailReportBand();
            this.Detail2 = new DevExpress.XtraReports.UI.DetailBand();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow11 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell37 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell25 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTableCell86 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell88 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell87 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable12 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow27 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellDimension = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupFooter1 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell33 = new DevExpress.XtraReports.UI.XRTableCell();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.cellColorShade = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell36 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellAmount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustOrderNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellCustStyleNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellProjectNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.GroupHeader3 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.xrSubreport1 = new DevExpress.XtraReports.UI.XRSubreport();
            this.GroupFooter3 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.GroupHeader4 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.tableTransit = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow29 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell109 = new DevExpress.XtraReports.UI.XRTableCell();
            this.trowTransitTitle2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.cellTransitPoit1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell76 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPoint2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.trowTransitData = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell110 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointName = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointNameData = new DevExpress.XtraReports.UI.XRTableCell();
            this.trowTransitData2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointAddress = new DevExpress.XtraReports.UI.XRTableCell();
            this.cellEndPointAddressData = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell62 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.ReportHeader1 = new DevExpress.XtraReports.UI.ReportHeaderBand();
            this.GroupFooter2 = new DevExpress.XtraReports.UI.GroupFooterBand();
            this.csHeaderSmall = new DevExpress.XtraReports.UI.XRControlStyle();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable10)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable11)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.tableTransit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).BeginInit();
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
            this.lbCompanyCN.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F);
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
            this.xrTableCell18});
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
            this.lbCompanyEN.Size = new System.Drawing.Size(348, 30);
            this.lbCompanyEN.StylePriority.UseFont = false;
            this.lbCompanyEN.StylePriority.UsePadding = false;
            this.lbCompanyEN.Text = "PH Garment Mfg. Co. Ltd.\r\n";
            this.lbCompanyEN.WordWrap = false;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Font = new System.Drawing.Font("Arial", 7F);
            this.xrTableCell18.Location = new System.Drawing.Point(348, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(124, 30);
            this.xrTableCell18.StylePriority.UseFont = false;
            this.xrTableCell18.StylePriority.UseForeColor = false;
            this.xrTableCell18.StylePriority.UseTextAlignment = false;
            this.xrTableCell18.Text = "(Member of PH Garment Group)";
            this.xrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
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
            this.cellTitle1.Font = new System.Drawing.Font("Arial", 11F, System.Drawing.FontStyle.Bold);
            this.cellTitle1.Location = new System.Drawing.Point(0, 0);
            this.cellTitle1.Name = "cellTitle1";
            this.cellTitle1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellTitle1.Size = new System.Drawing.Size(258, 36);
            this.cellTitle1.StylePriority.UseBorders = false;
            this.cellTitle1.StylePriority.UseFont = false;
            this.cellTitle1.StylePriority.UsePadding = false;
            this.cellTitle1.StylePriority.UseTextAlignment = false;
            this.cellTitle1.Text = "Purchase Order (Material Sample)";
            this.cellTitle1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.cellTitle1.WordWrap = false;
            // 
            // cellTitle2
            // 
            this.cellTitle2.Font = new System.Drawing.Font("Arial", 7F);
            this.cellTitle2.Location = new System.Drawing.Point(258, 0);
            this.cellTitle2.Name = "cellTitle2";
            this.cellTitle2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle2.Size = new System.Drawing.Size(116, 36);
            this.cellTitle2.StylePriority.UseFont = false;
            this.cellTitle2.StylePriority.UseTextAlignment = false;
            this.cellTitle2.Text = "- Individual item";
            this.cellTitle2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellTitle2.WordWrap = false;
            // 
            // cellTitle3
            // 
            this.cellTitle3.Font = new System.Drawing.Font("Arial", 7F);
            this.cellTitle3.Location = new System.Drawing.Point(374, 0);
            this.cellTitle3.Name = "cellTitle3";
            this.cellTitle3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTitle3.Size = new System.Drawing.Size(98, 36);
            this.cellTitle3.StylePriority.UseBorders = false;
            this.cellTitle3.StylePriority.UseFont = false;
            this.cellTitle3.StylePriority.UseTextAlignment = false;
            this.cellTitle3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.cellTitle3.WordWrap = false;
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
            this.xrTableRow1.Size = new System.Drawing.Size(204, 19);
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.lblSizeMatrix,
            this.lblPHCopy});
            this.xrTableCell10.Font = new System.Drawing.Font("Arial", 12F, System.Drawing.FontStyle.Bold);
            this.xrTableCell10.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(204, 19);
            this.xrTableCell10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // lblSizeMatrix
            // 
            this.lblSizeMatrix.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lblSizeMatrix.Font = new System.Drawing.Font("Arial", 8F);
            this.lblSizeMatrix.Location = new System.Drawing.Point(126, 0);
            this.lblSizeMatrix.Name = "lblSizeMatrix";
            this.lblSizeMatrix.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblSizeMatrix.Size = new System.Drawing.Size(77, 18);
            this.lblSizeMatrix.StylePriority.UseBorders = false;
            this.lblSizeMatrix.StylePriority.UseFont = false;
            this.lblSizeMatrix.StylePriority.UseTextAlignment = false;
            this.lblSizeMatrix.Text = "Size Matrix";
            this.lblSizeMatrix.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lblPHCopy
            // 
            this.lblPHCopy.BackColor = System.Drawing.Color.LightCyan;
            this.lblPHCopy.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lblPHCopy.Font = new System.Drawing.Font("Arial", 8F);
            this.lblPHCopy.Location = new System.Drawing.Point(1, 0);
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
            this.cellPONO.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
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
            this.xrTableCell15.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
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
            this.cellWebPONO});
            this.xrTableRow10.Name = "xrTableRow10";
            this.xrTableRow10.Size = new System.Drawing.Size(204, 19);
            // 
            // cellWebPONO
            // 
            this.cellWebPONO.CanGrow = false;
            this.cellWebPONO.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold);
            this.cellWebPONO.Location = new System.Drawing.Point(0, 0);
            this.cellWebPONO.Name = "cellWebPONO";
            this.cellWebPONO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellWebPONO.Size = new System.Drawing.Size(204, 19);
            this.cellWebPONO.StylePriority.UseFont = false;
            this.cellWebPONO.Text = "Web Order No. :    n.a.";
            // 
            // xrTableRow18
            // 
            this.xrTableRow18.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell28,
            this.cellAmendmentNo});
            this.xrTableRow18.Name = "xrTableRow18";
            this.xrTableRow18.Size = new System.Drawing.Size(204, 17);
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell28.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(95, 17);
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.Text = "Amendment No.:";
            // 
            // cellAmendmentNo
            // 
            this.cellAmendmentNo.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.cellAmendmentNo.Location = new System.Drawing.Point(95, 0);
            this.cellAmendmentNo.Name = "cellAmendmentNo";
            this.cellAmendmentNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellAmendmentNo.Size = new System.Drawing.Size(109, 17);
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
            this.xrTableRow19.Size = new System.Drawing.Size(204, 18);
            // 
            // xrTableCell89
            // 
            this.xrTableCell89.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell89.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell89.Multiline = true;
            this.xrTableCell89.Name = "xrTableCell89";
            this.xrTableCell89.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell89.Size = new System.Drawing.Size(95, 18);
            this.xrTableCell89.StylePriority.UseFont = false;
            this.xrTableCell89.Text = "Issue Date :";
            // 
            // xrTableCell90
            // 
            this.xrTableCell90.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "OrderDate", "{0:yyyy-MM-dd}")});
            this.xrTableCell90.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell90.Location = new System.Drawing.Point(95, 0);
            this.xrTableCell90.Multiline = true;
            this.xrTableCell90.Name = "xrTableCell90";
            this.xrTableCell90.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell90.Size = new System.Drawing.Size(109, 18);
            this.xrTableCell90.StylePriority.UseFont = false;
            this.xrTableCell90.StylePriority.UseTextAlignment = false;
            this.xrTableCell90.Text = "xrTableCell90";
            this.xrTableCell90.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrPictureBox1
            // 
            this.xrPictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("xrPictureBox1.Image")));
            this.xrPictureBox1.Location = new System.Drawing.Point(0, 0);
            this.xrPictureBox1.Name = "xrPictureBox1";
            this.xrPictureBox1.Size = new System.Drawing.Size(83, 58);
            this.xrPictureBox1.Sizing = DevExpress.XtraPrinting.ImageSizeMode.ZoomImage;
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
            this.xrTableCell53,
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
            this.xrTableCell70.Text = "Our Item Code";
            // 
            // xrTableCell72
            // 
            this.xrTableCell72.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell72.Name = "xrTableCell72";
            this.xrTableCell72.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell72.Size = new System.Drawing.Size(154, 20);
            this.xrTableCell72.Text = "Supplier Item Ref";
            // 
            // xrTableCell53
            // 
            this.xrTableCell53.Location = new System.Drawing.Point(229, 0);
            this.xrTableCell53.Name = "xrTableCell53";
            this.xrTableCell53.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell53.Size = new System.Drawing.Size(78, 20);
            this.xrTableCell53.Text = "Width";
            // 
            // xrTableCell74
            // 
            this.xrTableCell74.Location = new System.Drawing.Point(307, 0);
            this.xrTableCell74.Name = "xrTableCell74";
            this.xrTableCell74.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell74.Size = new System.Drawing.Size(458, 20);
            this.xrTableCell74.StylePriority.UseTextAlignment = false;
            this.xrTableCell74.Text = "Description";
            // 
            // xrPageInfo2
            // 
            this.xrPageInfo2.Font = new System.Drawing.Font("Times New Roman", 7F);
            this.xrPageInfo2.Format = "Page: {0} / {1}";
            this.xrPageInfo2.Location = new System.Drawing.Point(675, 17);
            this.xrPageInfo2.Name = "xrPageInfo2";
            this.xrPageInfo2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo2.Size = new System.Drawing.Size(79, 16);
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
            this.pivotGridColumn4.DetailText = null;
            this.pivotGridColumn4.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn4.EmptyValueText = null;
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
            this.pivotGridColumn9.DetailText = null;
            this.pivotGridColumn9.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn9.EmptyValueText = null;
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
            this.pivotGridColumn9.HeaderText = null;
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
            this.pivotGridColumn5.DetailText = null;
            this.pivotGridColumn5.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn5.EmptyValueText = null;
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
            this.pivotGridColumn5.HeaderText = null;
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
            this.pivotGridColumn1.DetailText = null;
            this.pivotGridColumn1.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.pivotGridColumn1.EmptyValueText = null;
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
            this.pivotGridColumn2.DetailText = null;
            this.pivotGridColumn2.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn2.EmptyValueText = null;
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
            this.pivotGridColumn6.DetailText = null;
            this.pivotGridColumn6.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn6.EmptyValueText = null;
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
            this.pivotGridColumn7.DetailText = null;
            this.pivotGridColumn7.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.pivotGridColumn7.EmptyValueText = null;
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
            this.pivotGridColumn10.DetailText = null;
            this.pivotGridColumn10.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn10.EmptyValueText = null;
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
            this.pivotGridColumn11.DetailText = null;
            this.pivotGridColumn11.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            this.pivotGridColumn11.DetailVisible = false;
            this.pivotGridColumn11.EmptyValueText = null;
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
            this.pivotGridColumn11.HeaderText = null;
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
            this.pivotGridColumn3.DetailText = null;
            this.pivotGridColumn3.DetailTextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.pivotGridColumn3.EmptyValueText = null;
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
            this.pivotGridColumn8.EmptyValueText = null;
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
            // lbNotepad
            // 
            this.lbNotepad.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.lbNotepad.Font = new System.Drawing.Font("Arial", 6.9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbNotepad.Location = new System.Drawing.Point(0, 0);
            this.lbNotepad.Multiline = true;
            this.lbNotepad.Name = "lbNotepad";
            this.lbNotepad.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.lbNotepad.Size = new System.Drawing.Size(765, 50);
            this.lbNotepad.StyleName = "csDetail";
            this.lbNotepad.StylePriority.UseBorders = false;
            this.lbNotepad.StylePriority.UseFont = false;
            this.lbNotepad.StylePriority.UsePadding = false;
            this.lbNotepad.Text = resources.GetString("lbNotepad.Text");
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
            // xrTable10
            // 
            this.xrTable10.Location = new System.Drawing.Point(95, 50);
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
            this.xrTableCell29.Text = "Confirmed & Accepted by:";
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
            this.xrTableCell52.Text = "Authorized Signature";
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
            this.xrTableCell54,
            this.xrTableCell84,
            this.xrTableCell5});
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
            // xrTableCell54
            // 
            this.xrTableCell54.Font = new System.Drawing.Font("Arial", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell54.Location = new System.Drawing.Point(229, 0);
            this.xrTableCell54.Name = "xrTableCell54";
            this.xrTableCell54.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell54.Size = new System.Drawing.Size(78, 24);
            this.xrTableCell54.StylePriority.UseFont = false;
            this.xrTableCell54.StylePriority.UsePadding = false;
            this.xrTableCell54.StylePriority.UseTextAlignment = false;
            this.xrTableCell54.Text = "[FabricWidth]";
            this.xrTableCell54.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell84
            // 
            this.xrTableCell84.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell84.CanGrow = false;
            this.xrTableCell84.Font = new System.Drawing.Font("Microsoft Sans Serif", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell84.Location = new System.Drawing.Point(307, 0);
            this.xrTableCell84.Name = "xrTableCell84";
            this.xrTableCell84.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell84.Size = new System.Drawing.Size(313, 24);
            this.xrTableCell84.StylePriority.UseBorders = false;
            this.xrTableCell84.StylePriority.UseFont = false;
            this.xrTableCell84.Text = "[CommodityDesc]";
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell5.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "HSMaterialName", "")});
            this.xrTableCell5.Location = new System.Drawing.Point(620, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(145, 24);
            this.xrTableCell5.StylePriority.UseBorders = false;
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
            this.xrTableCell37,
            this.xrTableCell26,
            this.xrTableCell4,
            this.xrTableCell22,
            this.xrTableCell2,
            this.xrTableCell25,
            this.xrTableCell23,
            this.xrTableCell86,
            this.xrTableCell88,
            this.xrTableCell87});
            this.xrTableRow11.Name = "xrTableRow11";
            this.xrTableRow11.Size = new System.Drawing.Size(765, 40);
            // 
            // xrTableCell37
            // 
            this.xrTableCell37.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell37.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell37.Multiline = true;
            this.xrTableCell37.Name = "xrTableCell37";
            this.xrTableCell37.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell37.Size = new System.Drawing.Size(142, 40);
            this.xrTableCell37.StylePriority.UseBorders = false;
            this.xrTableCell37.Text = "Our Item Color";
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell26.Location = new System.Drawing.Point(142, 0);
            this.xrTableCell26.Multiline = true;
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(78, 40);
            this.xrTableCell26.StylePriority.UseBorders = false;
            this.xrTableCell26.Text = "Supp Item\r\nColor  Shade";
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Location = new System.Drawing.Point(220, 0);
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(47, 40);
            this.xrTableCell4.StylePriority.UsePadding = false;
            this.xrTableCell4.Text = "Qty";
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Location = new System.Drawing.Point(267, 0);
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(21, 40);
            this.xrTableCell22.StylePriority.UsePadding = false;
            this.xrTableCell22.Text = "unit";
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(288, 0);
            this.xrTableCell2.Multiline = true;
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(40, 40);
            this.xrTableCell2.StylePriority.UsePadding = false;
            this.xrTableCell2.Text = "Unit Price\r\n([Currency])";
            // 
            // xrTableCell25
            // 
            this.xrTableCell25.Location = new System.Drawing.Point(328, 0);
            this.xrTableCell25.Multiline = true;
            this.xrTableCell25.Name = "xrTableCell25";
            this.xrTableCell25.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell25.Size = new System.Drawing.Size(88, 40);
            this.xrTableCell25.StylePriority.UsePadding = false;
            this.xrTableCell25.Text = "Amount\r\n([Currency])";
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel5,
            this.xrLabel3});
            this.xrTableCell23.Location = new System.Drawing.Point(416, 0);
            this.xrTableCell23.Multiline = true;
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(109, 40);
            this.xrTableCell23.StylePriority.UsePadding = false;
            this.xrTableCell23.Text = "Delivery Date\r\n(Week)";
            // 
            // xrLabel5
            // 
            this.xrLabel5.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrLabel5.Font = new System.Drawing.Font("Arial", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel5.Location = new System.Drawing.Point(0, 25);
            this.xrLabel5.Multiline = true;
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(109, 15);
            this.xrLabel5.StylePriority.UseBorders = false;
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.Text = "( see Notepad 1 )";
            // 
            // xrLabel3
            // 
            this.xrLabel3.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrLabel3.Location = new System.Drawing.Point(0, 0);
            this.xrLabel3.Multiline = true;
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(109, 25);
            this.xrLabel3.StylePriority.UseBorders = false;
            this.xrLabel3.Text = "Delivery Date\r\n(Week)";
            // 
            // xrTableCell86
            // 
            this.xrTableCell86.Location = new System.Drawing.Point(525, 0);
            this.xrTableCell86.Multiline = true;
            this.xrTableCell86.Name = "xrTableCell86";
            this.xrTableCell86.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell86.Size = new System.Drawing.Size(70, 40);
            this.xrTableCell86.StyleName = "csHeaderSmall";
            this.xrTableCell86.StylePriority.UsePadding = false;
            this.xrTableCell86.Text = "End Cust\r\nOrder No\r\n(if any)";
            // 
            // xrTableCell88
            // 
            this.xrTableCell88.Location = new System.Drawing.Point(595, 0);
            this.xrTableCell88.Multiline = true;
            this.xrTableCell88.Name = "xrTableCell88";
            this.xrTableCell88.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell88.Size = new System.Drawing.Size(101, 40);
            this.xrTableCell88.StyleName = "csHeaderSmall";
            this.xrTableCell88.StylePriority.UsePadding = false;
            this.xrTableCell88.Text = "End Cust\r\nStyle";
            // 
            // xrTableCell87
            // 
            this.xrTableCell87.Location = new System.Drawing.Point(696, 0);
            this.xrTableCell87.Multiline = true;
            this.xrTableCell87.Name = "xrTableCell87";
            this.xrTableCell87.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell87.Size = new System.Drawing.Size(69, 40);
            this.xrTableCell87.StyleName = "csHeaderSmall";
            this.xrTableCell87.StylePriority.UsePadding = false;
            this.xrTableCell87.Text = "Our\r\nProj#";
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
            this.xrTableCell14});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(765, 25);
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(765, 25);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "For Shipping Instructions & Shipping Marks, contact our logistic and shipping dep" +
                "artment at\r\nHong Kong Office: (852) 2422-6622, Shilong Town Factory: (86) 769-89" +
                "08-3666";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
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
            this.cellDimension.Text = "Quantity Summary of Item/Color  (2 dimensions)  on front page, 3 or 4 dimensions " +
                "to be shown on the supplement sheet on next page(s):";
            this.cellDimension.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // GroupFooter1
            // 
            this.GroupFooter1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4});
            this.GroupFooter1.Height = 24;
            this.GroupFooter1.Level = 1;
            this.GroupFooter1.Name = "GroupFooter1";
            this.GroupFooter1.Visible = false;
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
            this.xrTableCell6,
            this.xrTableCell33,
            this.cellColorShade,
            this.cellQty,
            this.xrTableCell36,
            this.xrTableCell9,
            this.cellAmount,
            this.xrTableCell16,
            this.cellCustOrderNo,
            this.cellCustStyleNo,
            this.cellProjectNo});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(765, 20);
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell6.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell6.Multiline = true;
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(54, 20);
            this.xrTableCell6.StylePriority.UseBorders = false;
            this.xrTableCell6.StylePriority.UsePadding = false;
            this.xrTableCell6.Text = "Total:";
            // 
            // xrTableCell33
            // 
            this.xrTableCell33.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell33.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "ColorCode", "")});
            this.xrTableCell33.Location = new System.Drawing.Point(54, 0);
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
            this.cellColorShade.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SupplierColorShade", "")});
            this.cellColorShade.Location = new System.Drawing.Point(142, 0);
            this.cellColorShade.Multiline = true;
            this.cellColorShade.Name = "cellColorShade";
            this.cellColorShade.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellColorShade.Size = new System.Drawing.Size(78, 20);
            this.cellColorShade.StylePriority.UseBorders = false;
            xrSummary2.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary2.IgnoreNullValues = true;
            xrSummary2.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellColorShade.Summary = xrSummary2;
            this.cellColorShade.Text = "cellColorShade";
            // 
            // cellQty
            // 
            this.cellQty.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellQty.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "SupplierPOQty", "")});
            this.cellQty.Location = new System.Drawing.Point(220, 0);
            this.cellQty.Name = "cellQty";
            this.cellQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.cellQty.Size = new System.Drawing.Size(47, 20);
            this.cellQty.StylePriority.UseBorders = false;
            this.cellQty.StylePriority.UsePadding = false;
            this.cellQty.StylePriority.UseTextAlignment = false;
            xrSummary3.FormatString = "{0:#,0.##}";
            xrSummary3.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellQty.Summary = xrSummary3;
            this.cellQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell36
            // 
            this.xrTableCell36.Location = new System.Drawing.Point(267, 0);
            this.xrTableCell36.Name = "xrTableCell36";
            this.xrTableCell36.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell36.Size = new System.Drawing.Size(21, 20);
            this.xrTableCell36.StylePriority.UsePadding = false;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Location = new System.Drawing.Point(288, 0);
            this.xrTableCell9.Multiline = true;
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(40, 20);
            this.xrTableCell9.StylePriority.UsePadding = false;
            // 
            // cellAmount
            // 
            this.cellAmount.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellAmount.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SuppAmount", "")});
            this.cellAmount.Location = new System.Drawing.Point(328, 0);
            this.cellAmount.Multiline = true;
            this.cellAmount.Name = "cellAmount";
            this.cellAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 2, 0, 0, 100F);
            this.cellAmount.Size = new System.Drawing.Size(88, 20);
            this.cellAmount.StylePriority.UseBorders = false;
            this.cellAmount.StylePriority.UsePadding = false;
            this.cellAmount.StylePriority.UseTextAlignment = false;
            xrSummary4.FormatString = "{0:N2}";
            xrSummary4.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellAmount.Summary = xrSummary4;
            this.cellAmount.Text = "cellAmount";
            this.cellAmount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell16.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "DeliveryWeek", "")});
            this.xrTableCell16.Location = new System.Drawing.Point(416, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(109, 20);
            this.xrTableCell16.StylePriority.UseBorders = false;
            this.xrTableCell16.StylePriority.UsePadding = false;
            xrSummary5.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary5.IgnoreNullValues = true;
            xrSummary5.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.xrTableCell16.Summary = xrSummary5;
            // 
            // cellCustOrderNo
            // 
            this.cellCustOrderNo.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellCustOrderNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "EndCustOrderNo", "")});
            this.cellCustOrderNo.Location = new System.Drawing.Point(525, 0);
            this.cellCustOrderNo.Multiline = true;
            this.cellCustOrderNo.Name = "cellCustOrderNo";
            this.cellCustOrderNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustOrderNo.Size = new System.Drawing.Size(70, 20);
            this.cellCustOrderNo.StylePriority.UseBorders = false;
            this.cellCustOrderNo.StylePriority.UsePadding = false;
            xrSummary6.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary6.IgnoreNullValues = true;
            xrSummary6.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellCustOrderNo.Summary = xrSummary6;
            this.cellCustOrderNo.Text = "cellCustOrderNo";
            // 
            // cellCustStyleNo
            // 
            this.cellCustStyleNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellCustStyleNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "EndCustStyleNo", "")});
            this.cellCustStyleNo.Location = new System.Drawing.Point(595, 0);
            this.cellCustStyleNo.Multiline = true;
            this.cellCustStyleNo.Name = "cellCustStyleNo";
            this.cellCustStyleNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellCustStyleNo.Size = new System.Drawing.Size(101, 20);
            this.cellCustStyleNo.StylePriority.UseBorders = false;
            this.cellCustStyleNo.StylePriority.UsePadding = false;
            xrSummary7.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary7.IgnoreNullValues = true;
            xrSummary7.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellCustStyleNo.Summary = xrSummary7;
            this.cellCustStyleNo.Text = "cellCustStyleNo";
            // 
            // cellProjectNo
            // 
            this.cellProjectNo.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellProjectNo.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", this.bindingSource1, "ProjectNO", "")});
            this.cellProjectNo.Location = new System.Drawing.Point(696, 0);
            this.cellProjectNo.Multiline = true;
            this.cellProjectNo.Name = "cellProjectNo";
            this.cellProjectNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellProjectNo.Size = new System.Drawing.Size(69, 20);
            this.cellProjectNo.StylePriority.UseBorders = false;
            this.cellProjectNo.StylePriority.UsePadding = false;
            xrSummary8.Func = DevExpress.XtraReports.UI.SummaryFunc.DCount;
            xrSummary8.IgnoreNullValues = true;
            xrSummary8.Running = DevExpress.XtraReports.UI.SummaryRunning.Group;
            this.cellProjectNo.Summary = xrSummary8;
            this.cellProjectNo.Text = "cellProjectNo";
            // 
            // GroupHeader3
            // 
            this.GroupHeader3.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrSubreport1});
            this.GroupHeader3.GroupFields.AddRange(new DevExpress.XtraReports.UI.GroupField[] {
            new DevExpress.XtraReports.UI.GroupField("SupplierReference", DevExpress.XtraReports.UI.XRColumnSortOrder.Ascending)});
            this.GroupHeader3.Height = 22;
            this.GroupHeader3.Name = "GroupHeader3";
            this.GroupHeader3.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.GroupHeader3_BeforePrint);
            // 
            // xrSubreport1
            // 
            this.xrSubreport1.Location = new System.Drawing.Point(0, 0);
            this.xrSubreport1.Name = "xrSubreport1";
            this.xrSubreport1.Size = new System.Drawing.Size(645, 20);
            // 
            // GroupFooter3
            // 
            this.GroupFooter3.Height = 0;
            this.GroupFooter3.Name = "GroupFooter3";
            // 
            // GroupHeader4
            // 
            this.GroupHeader4.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.tableTransit,
            this.xrTable6,
            this.xrTable8});
            this.GroupHeader4.Height = 178;
            this.GroupHeader4.Name = "GroupHeader4";
            // 
            // tableTransit
            // 
            this.tableTransit.Location = new System.Drawing.Point(0, 100);
            this.tableTransit.Name = "tableTransit";
            this.tableTransit.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow29,
            this.trowTransitTitle2,
            this.trowTransitData,
            this.trowTransitData2});
            this.tableTransit.Size = new System.Drawing.Size(765, 72);
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
            this.xrTableRow29.Size = new System.Drawing.Size(765, 25);
            // 
            // xrTableCell109
            // 
            this.xrTableCell109.Font = new System.Drawing.Font("Times New Roman", 7F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell109.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell109.Name = "xrTableCell109";
            this.xrTableCell109.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell109.Size = new System.Drawing.Size(765, 25);
            this.xrTableCell109.StylePriority.UseFont = false;
            this.xrTableCell109.Text = resources.GetString("xrTableCell109.Text");
            // 
            // trowTransitTitle2
            // 
            this.trowTransitTitle2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.cellTransitPoit1,
            this.xrTableCell76,
            this.cellEndPoint2});
            this.trowTransitTitle2.Name = "trowTransitTitle2";
            this.trowTransitTitle2.Size = new System.Drawing.Size(765, 17);
            // 
            // cellTransitPoit1
            // 
            this.cellTransitPoit1.BackColor = System.Drawing.Color.LightCyan;
            this.cellTransitPoit1.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)));
            this.cellTransitPoit1.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Bold);
            this.cellTransitPoit1.Location = new System.Drawing.Point(0, 0);
            this.cellTransitPoit1.Name = "cellTransitPoit1";
            this.cellTransitPoit1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellTransitPoit1.Size = new System.Drawing.Size(69, 17);
            this.cellTransitPoit1.StylePriority.UseBackColor = false;
            this.cellTransitPoit1.StylePriority.UseBorders = false;
            this.cellTransitPoit1.StylePriority.UseTextAlignment = false;
            this.cellTransitPoit1.Text = "Transit Point";
            this.cellTransitPoit1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell76
            // 
            this.xrTableCell76.BackColor = System.Drawing.Color.LightCyan;
            this.xrTableCell76.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell76.Font = new System.Drawing.Font("Arial", 6F, System.Drawing.FontStyle.Bold);
            this.xrTableCell76.Location = new System.Drawing.Point(69, 0);
            this.xrTableCell76.Name = "xrTableCell76";
            this.xrTableCell76.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell76.Size = new System.Drawing.Size(160, 17);
            this.xrTableCell76.StylePriority.UseBackColor = false;
            this.xrTableCell76.StylePriority.UseBorders = false;
            this.xrTableCell76.StylePriority.UseFont = false;
            this.xrTableCell76.StylePriority.UseTextAlignment = false;
            this.xrTableCell76.Text = " ( Delivery date is based on this point  )";
            // 
            // cellEndPoint2
            // 
            this.cellEndPoint2.BackColor = System.Drawing.Color.LightCyan;
            this.cellEndPoint2.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.cellEndPoint2.Font = new System.Drawing.Font("Arial", 6F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellEndPoint2.Location = new System.Drawing.Point(229, 0);
            this.cellEndPoint2.Name = "cellEndPoint2";
            this.cellEndPoint2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPoint2.Size = new System.Drawing.Size(536, 17);
            this.cellEndPoint2.StylePriority.UseBackColor = false;
            this.cellEndPoint2.StylePriority.UseBorders = false;
            this.cellEndPoint2.StylePriority.UseFont = false;
            this.cellEndPoint2.StylePriority.UseTextAlignment = false;
            this.cellEndPoint2.Text = "Special Note";
            this.cellEndPoint2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // trowTransitData
            // 
            this.trowTransitData.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell110,
            this.cellEndPointName,
            this.cellEndPointNameData});
            this.trowTransitData.Name = "trowTransitData";
            this.trowTransitData.Size = new System.Drawing.Size(765, 15);
            // 
            // xrTableCell110
            // 
            this.xrTableCell110.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell110.CanGrow = false;
            this.xrTableCell110.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "TransitPointEN", "")});
            this.xrTableCell110.Font = new System.Drawing.Font("Arial", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
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
            this.cellEndPointName.Text = "Code and Name : \r\n";
            // 
            // cellEndPointNameData
            // 
            this.cellEndPointNameData.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.cellEndPointNameData.CanGrow = false;
            this.cellEndPointNameData.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellEndPointNameData.Location = new System.Drawing.Point(311, 0);
            this.cellEndPointNameData.Multiline = true;
            this.cellEndPointNameData.Name = "cellEndPointNameData";
            this.cellEndPointNameData.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.cellEndPointNameData.Size = new System.Drawing.Size(454, 15);
            this.cellEndPointNameData.StylePriority.UseBorders = false;
            this.cellEndPointNameData.StylePriority.UseFont = false;
            this.cellEndPointNameData.StylePriority.UsePadding = false;
            this.cellEndPointNameData.Text = "[EndPoint]";
            // 
            // trowTransitData2
            // 
            this.trowTransitData2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell13,
            this.cellEndPointAddress,
            this.cellEndPointAddressData});
            this.trowTransitData2.Name = "trowTransitData2";
            this.trowTransitData2.Size = new System.Drawing.Size(765, 15);
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell13.CanGrow = false;
            this.xrTableCell13.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "IncotermsPointPort", "")});
            this.xrTableCell13.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(229, 15);
            this.xrTableCell13.StylePriority.UseBorders = false;
            this.xrTableCell13.StylePriority.UseTextAlignment = false;
            this.xrTableCell13.Text = "xrTableCell13";
            this.xrTableCell13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // cellEndPointAddress
            // 
            this.cellEndPointAddress.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.cellEndPointAddress.CanGrow = false;
            this.cellEndPointAddress.Location = new System.Drawing.Point(229, 0);
            this.cellEndPointAddress.Multiline = true;
            this.cellEndPointAddress.Name = "cellEndPointAddress";
            this.cellEndPointAddress.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPointAddress.Size = new System.Drawing.Size(82, 15);
            this.cellEndPointAddress.StylePriority.UseBorders = false;
            this.cellEndPointAddress.Text = "Address              : \r\n";
            // 
            // cellEndPointAddressData
            // 
            this.cellEndPointAddressData.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.cellEndPointAddressData.CanGrow = false;
            this.cellEndPointAddressData.Location = new System.Drawing.Point(311, 0);
            this.cellEndPointAddressData.Name = "cellEndPointAddressData";
            this.cellEndPointAddressData.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellEndPointAddressData.Size = new System.Drawing.Size(454, 15);
            this.cellEndPointAddressData.StylePriority.UseBorders = false;
            this.cellEndPointAddressData.Text = "[EndPointAddress]";
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
            this.xrTableCell43.Size = new System.Drawing.Size(49, 19);
            this.xrTableCell43.StylePriority.UseBorders = false;
            this.xrTableCell43.Text = "Supplier:";
            // 
            // xrTableCell60
            // 
            this.xrTableCell60.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell60.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierName", "")});
            this.xrTableCell60.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell60.Name = "xrTableCell60";
            this.xrTableCell60.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell60.Size = new System.Drawing.Size(433, 19);
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
            this.xrTableCell47.Size = new System.Drawing.Size(49, 30);
            this.xrTableCell47.StylePriority.UseBorders = false;
            this.xrTableCell47.Text = " ";
            // 
            // xrTableCell61
            // 
            this.xrTableCell61.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell61.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "SupplierAddress", "")});
            this.xrTableCell61.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell61.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell61.Multiline = true;
            this.xrTableCell61.Name = "xrTableCell61";
            this.xrTableCell61.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell61.Size = new System.Drawing.Size(433, 30);
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
            this.xrTableCell55.Size = new System.Drawing.Size(49, 17);
            this.xrTableCell55.StylePriority.UseBorders = false;
            this.xrTableCell55.Text = "Attn:";
            // 
            // xrTableCell63
            // 
            this.xrTableCell63.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell63.Name = "xrTableCell63";
            this.xrTableCell63.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell63.Size = new System.Drawing.Size(179, 17);
            this.xrTableCell63.Text = "[AttnPerson]";
            // 
            // xrTableCell56
            // 
            this.xrTableCell56.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell56.Location = new System.Drawing.Point(228, 0);
            this.xrTableCell56.Name = "xrTableCell56";
            this.xrTableCell56.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell56.Size = new System.Drawing.Size(41, 17);
            this.xrTableCell56.StylePriority.UseBorders = false;
            this.xrTableCell56.StylePriority.UseFont = false;
            this.xrTableCell56.Text = "E-mail:";
            // 
            // xrTableCell68
            // 
            this.xrTableCell68.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell68.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "Email", "")});
            this.xrTableCell68.Location = new System.Drawing.Point(269, 0);
            this.xrTableCell68.Name = "xrTableCell68";
            this.xrTableCell68.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell68.Size = new System.Drawing.Size(213, 17);
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
            this.xrTableCell57.Size = new System.Drawing.Size(49, 17);
            this.xrTableCell57.StylePriority.UseBorders = false;
            this.xrTableCell57.Text = "Tel No.:";
            // 
            // xrTableCell64
            // 
            this.xrTableCell64.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell64.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "TelNumber", "")});
            this.xrTableCell64.Location = new System.Drawing.Point(49, 0);
            this.xrTableCell64.Name = "xrTableCell64";
            this.xrTableCell64.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell64.Size = new System.Drawing.Size(179, 17);
            this.xrTableCell64.StylePriority.UseBorders = false;
            this.xrTableCell64.Text = "[Tel]";
            // 
            // xrTableCell58
            // 
            this.xrTableCell58.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableCell58.Location = new System.Drawing.Point(228, 0);
            this.xrTableCell58.Name = "xrTableCell58";
            this.xrTableCell58.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell58.Size = new System.Drawing.Size(41, 17);
            this.xrTableCell58.StylePriority.UseBorders = false;
            this.xrTableCell58.StylePriority.UseFont = false;
            this.xrTableCell58.Text = "Fax No :";
            // 
            // xrTableCell69
            // 
            this.xrTableCell69.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell69.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "FaxNumber", "")});
            this.xrTableCell69.Location = new System.Drawing.Point(269, 0);
            this.xrTableCell69.Name = "xrTableCell69";
            this.xrTableCell69.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell69.Size = new System.Drawing.Size(213, 17);
            this.xrTableCell69.StylePriority.UseBorders = false;
            this.xrTableCell69.Text = "[Fax]";
            // 
            // xrTableRow31
            // 
            this.xrTableRow31.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell1,
            this.xrTableCell62,
            this.xrTableCell3});
            this.xrTableRow31.Name = "xrTableRow31";
            this.xrTableRow31.Size = new System.Drawing.Size(482, 17);
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell1.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(109, 17);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.Text = "End Cust Code: [EndCustCode]";
            this.xrTableCell1.WordWrap = false;
            // 
            // xrTableCell62
            // 
            this.xrTableCell62.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell62.Location = new System.Drawing.Point(109, 0);
            this.xrTableCell62.Name = "xrTableCell62";
            this.xrTableCell62.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell62.Size = new System.Drawing.Size(119, 17);
            this.xrTableCell62.StylePriority.UseBorders = false;
            this.xrTableCell62.Text = "Our Production Site: [Factory]";
            this.xrTableCell62.WordWrap = false;
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell3.Location = new System.Drawing.Point(228, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(254, 17);
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.StylePriority.UsePadding = false;
            this.xrTableCell3.Text = "Location of Supp Factory: [LocationOfSuppFactoryDesc]";
            this.xrTableCell3.WordWrap = false;
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
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 4, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(71, 32);
            this.xrTableCell11.StylePriority.UseBorders = false;
            this.xrTableCell11.StylePriority.UsePadding = false;
            this.xrTableCell11.StylePriority.UseTextAlignment = false;
            this.xrTableCell11.Text = "Payment Term:";
            this.xrTableCell11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell12.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "PaymentTermENDesc", "")});
            this.xrTableCell12.Location = new System.Drawing.Point(71, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 4, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(208, 32);
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
            this.xrTableCell20.Size = new System.Drawing.Size(71, 17);
            this.xrTableCell20.StylePriority.UseBorders = false;
            this.xrTableCell20.Text = "Incoterms :";
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell27.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "IncotermsENDesc", "")});
            this.xrTableCell27.Location = new System.Drawing.Point(71, 0);
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(208, 17);
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
            this.xrTableCell39.Size = new System.Drawing.Size(71, 17);
            this.xrTableCell39.StylePriority.UseBorders = false;
            this.xrTableCell39.Text = "Transit Mode :";
            // 
            // xrTableCell40
            // 
            this.xrTableCell40.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell40.DataBindings.AddRange(new DevExpress.XtraReports.UI.XRBinding[] {
            new DevExpress.XtraReports.UI.XRBinding("Text", null, "ShipMode", "")});
            this.xrTableCell40.Location = new System.Drawing.Point(71, 0);
            this.xrTableCell40.Name = "xrTableCell40";
            this.xrTableCell40.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell40.Size = new System.Drawing.Size(208, 17);
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
            this.xrTableCell80.Size = new System.Drawing.Size(71, 17);
            this.xrTableCell80.StylePriority.UseBorders = false;
            this.xrTableCell80.Text = "Total Amount :";
            // 
            // cellGrandTotalCurrency
            // 
            this.cellGrandTotalCurrency.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellGrandTotalCurrency.Location = new System.Drawing.Point(71, 0);
            this.cellGrandTotalCurrency.Name = "cellGrandTotalCurrency";
            this.cellGrandTotalCurrency.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellGrandTotalCurrency.Size = new System.Drawing.Size(50, 17);
            this.cellGrandTotalCurrency.StylePriority.UseFont = false;
            this.cellGrandTotalCurrency.StylePriority.UseTextAlignment = false;
            this.cellGrandTotalCurrency.Text = "[Currency]";
            // 
            // cellGrandTotalAmount
            // 
            this.cellGrandTotalAmount.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.cellGrandTotalAmount.Font = new System.Drawing.Font("Arial", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cellGrandTotalAmount.Location = new System.Drawing.Point(121, 0);
            this.cellGrandTotalAmount.Name = "cellGrandTotalAmount";
            this.cellGrandTotalAmount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.cellGrandTotalAmount.Size = new System.Drawing.Size(79, 17);
            this.cellGrandTotalAmount.StylePriority.UseBorders = false;
            this.cellGrandTotalAmount.StylePriority.UseFont = false;
            this.cellGrandTotalAmount.Text = "[SuppAmount!N2]";
            // 
            // lblHasVAT
            // 
            this.lblHasVAT.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.lblHasVAT.Location = new System.Drawing.Point(200, 0);
            this.lblHasVAT.Name = "lblHasVAT";
            this.lblHasVAT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblHasVAT.Size = new System.Drawing.Size(79, 17);
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
            this.xrTableCell95.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 0, 0, 0, 100F);
            this.xrTableCell95.Size = new System.Drawing.Size(58, 17);
            this.xrTableCell95.StylePriority.UseBorders = false;
            this.xrTableCell95.StylePriority.UsePadding = false;
            this.xrTableCell95.Text = "Coordinator:";
            // 
            // xrTableCell96
            // 
            this.xrTableCell96.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell96.Location = new System.Drawing.Point(58, 0);
            this.xrTableCell96.Name = "xrTableCell96";
            this.xrTableCell96.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableCell96.Size = new System.Drawing.Size(221, 17);
            this.xrTableCell96.StylePriority.UseBorders = false;
            this.xrTableCell96.StylePriority.UsePadding = false;
            this.xrTableCell96.StylePriority.UseTextAlignment = false;
            this.xrTableCell96.Text = "[PurchaseOfficerAndEmail]";
            this.xrTableCell96.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // ReportHeader1
            // 
            this.ReportHeader1.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable5,
            this.xrTable1,
            this.xrPictureBox1});
            this.ReportHeader1.Height = 96;
            this.ReportHeader1.Name = "ReportHeader1";
            // 
            // GroupFooter2
            // 
            this.GroupFooter2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable10,
            this.lbNotepad});
            this.GroupFooter2.Height = 114;
            this.GroupFooter2.Name = "GroupFooter2";
            // 
            // csHeaderSmall
            // 
            this.csHeaderSmall.Font = new System.Drawing.Font("Arial", 5.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.csHeaderSmall.Name = "csHeaderSmall";
            this.csHeaderSmall.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // poIndividualItemWidthReport
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
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.pcn1DReport_BeforePrint);
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable10)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable11)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.tableTransit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).EndInit();
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
            POHeader p = this.GetCurrentRow() as POHeader;
            if (p == null) return;



            //------Xsj20160415:為打印VAT單價而註釋掉前面的代碼。----------------------- 
            this.lblHasVAT.Text = p.HaveVAT ? "(With VAT)" : "";
            //--------------------------------------------------------------------------

            SetPHCopyInfor(p);
            SetTitleInfor(p);
            SetNotepad(p);

            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;

            var aa = from a in context.POColorSizeDetails
                     where a.PONO == p.PONO && a.Company == p.Company && a.Version == p.Version && a.AmendmentNo == p.AmendmentNo
                     select a;


            //IEnumerable<POColorSizeDetail> list = this.DataSource as IEnumerable<POColorSizeDetail>;
            this.DetailReport.DataSource = null;
            this.DetailReport.DataSource = aa;

            //var cc = from a in context.POColorSizeDetails
            //         where a.PONO == p.PONO && a.Company == p.Company && (a.VersionFlag ?? false)
            //         select a;

            this.DetailReport1.DataSource = null;
            this.DetailReport1.DataSource = aa;

            var bb = (from a in aa
                      select new { ItemCode = a.SupplierReference }).Distinct();

            //List<POColorSizeDetail> items = new List<POColorSizeDetail>();
            //foreach (POColorSizeDetail d in list)
            //{
            //    POColorSizeDetail dd = items.Find(delegate(POColorSizeDetail d1) { return d1.ItemCode == d.ItemCode; });
            //    if (dd == null) items.Add(d);
            //}

            _itemCount = bb.Count();
            _itemRows = 28 / _itemCount;

            //this.lbItemCode.Height = _itemRows * 15;
            _reportItems = new poItemsIndividualItemWidthReport(IsColorPrint);
            this.xrSubreport1.ReportSource = _reportItems;

            //---------Supplementsheet----------

            this.cellDimension.Text = "Quantity Summary of \"Item/Color (2 dimensions)\" on front page, 3 dimensions plus \"size\" or 4 dimensions plus \"size/cup\" to be shown on the supplement sheet on next page(s):";
            XtraReport report;
            //if (p.IsWireBoneMatrix)
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
                this.cellDimension.Text = "Quantity Summary of Item/Color (2 dimensions) on this page:";
                return;
            }
            var b1 = from xx in context.POColorSizeDetails
                     //from yy in a1
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

                    //this.trowTransitTitle1.Cells.Remove(this.cellTransitWindow);
                    //this.tableTransit.Rows.Remove(this.trowTransitTitle1);
                    this.cellEndPointAddress.Text = "";
                    this.cellEndPointAddressData.Text = "";
                    //this.cellTransitFrame3.Text = "";

                    this.trowTransitTitle2.Cells.Remove(this.cellEndPoint2);
                    //this.trowTransitTitle2.Cells.Remove(this.cellTransitFrame1);

                    this.trowTransitData.Cells.Remove(this.cellEndPointNameData);
                    //this.trowTransitData.Cells.Remove(this.cellTransitFrame2);

                    this.trowTransitData2.Cells.Remove(this.cellEndPointAddressData);
                    //this.trowTransitData2.Cells.Remove(this.cellTransitFrame3);

                    //this.cellTransitWindow.Text = "";
                    //this.cellTransitWindow.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
                    //this.cellTransitWindow.BackColor = Color.Transparent;

                    //this.cellEndPoint1.Text = "Special Note";
                    this.cellEndPointName.Text = p.SpecialNote1;// (p.Factory == "KB" && (p.Supplier == "RUEY" || p.Supplier == "RGNA")) ? "Once the Our Production Site is KB (Thailand) & the shipment volume is applicable to FCL,": "";
                    this.cellEndPointAddress.Text = p.SpecialNote2;// (p.Factory == "KB" && (p.Supplier == "RUEY" || p.Supplier == "RGNA")) ? "the transit point should change to Chanburi Port of Thailand instead of Hong Kong Sea Port": "";

                    //this.cellEndPoint1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
                    this.cellEndPointName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
                    this.cellEndPointAddress.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;

                    //this.cellEndPoint1.Borders = this.cellEndPoint1.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                    this.cellEndPointName.Borders = this.cellEndPointName.Borders | DevExpress.XtraPrinting.BorderSide.Right;
                    this.cellEndPointAddress.Borders = this.cellEndPointAddress.Borders | DevExpress.XtraPrinting.BorderSide.Right;

                }
                finally
                {
                    this.tableTransit.ResumeLayout();
                }
                //int h = this.trowTransitTitle1.Height;
                //this.trowTransitTitle1.Size = new Size(this.trowTransitTitle1.Width, 1);
                //Band band = this.tableTransit.Parent as Band;
                //if (band != null) band.Height = band.Height - h + 1;
            }

        }
        private void SetTitleInfor(POHeader p)
        {
            //this.cellTitle1.Width = (p.OrderClass == 4 || p.OrderClass == 8) ? 258 : 192;
            //this.cellTitle2.Width = (p.OrderClass == 2) ? 88 : 129;
            this.cellTitle2.Font = new System.Drawing.Font("Arial", ((p.OrderClass == 2 || p.OrderClass == 3) ? 11F : 7F));
            this.cellTitle1.Font = new System.Drawing.Font("Arial", 11F, System.Drawing.FontStyle.Bold);

            this.cellTitle1.Text = p.POSubject;
            this.cellTitle2.Text = (p.OrderClass == 2 || p.OrderClass == 3) ? p.POSuffixSubject : " - Individual item";
            this.cellTitle3.Text = (p.OrderClass == 2 || p.OrderClass == 3) ? " - Individual item" : "";

            this.cellPONO.Text = (p.OrderClass == 4 || p.OrderClass == 8) ? "S.C. No.:" : "P.O. No.:";

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
                this.lbNotepad.Text += string.Format("\r\n  {0}. {1}", i, Common.HaveMultiPrice_Notepad_EN);
            }

            if (p.IsStyleColorDiff)
            {
                i++;
                this.lbNotepad.Text += string.Format("\r\n  {0}. {1}", i, Common.IsStyleColorDiff_Notepad_EN);
            }
            if (IsVatPrint)
            {
                i++;
                this.lbNotepad.Text += string.Format("\r\n  {0}. {1}", i, Common.VAT_Notepad_EN);
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

            //this.lbItemCode.Text = d.ItemCode;
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

        private void PageFooter_AfterPrint(object sender, EventArgs e)
        {
            this.xrTable11.Visible = false;
            this.xrPageInfo2.Visible = false;
            this.PageFooter.Height = 0;
        }



    }
}
