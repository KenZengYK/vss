/*    
*  
* Copyright (c) 2008 PeiHeng   
*  
* $Archive: PH.POPC.UI.POHeaderListFormBakBak.cs$   
* $Author: PH.IT.water  $  
* $Date: 2008/5/19 上午 11:43:39 $   
* $Revision: 0 $   
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Text;
using System.Linq;
using System.Windows.Forms;
using PH.POPC.BO;
using PH.Platform.UI.CS.DataQuery;

using DevExpress.Utils;
using DevExpress.XtraEditors;
using DevExpress.Data;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraEditors.Controls;

namespace PH.POPC.UI
{
    public partial class POPCLevel3Form : PH.Platform.UI.CS.UI2.ListForm
    {

        #region//auto code
        //private System.ComponentModel.IContainer components = null;

        private DevExpress.XtraBars.BarButtonItem barBtnRefresh;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        //private DevExpress.XtraBars.BarButtonItem barButtonItem1;//;=new DevExpress.XtraBars.BarButtonItem();
        public DevExpress.XtraBars.BarButtonItem barBtnPoList;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandPO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCompany;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplier;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSKU;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFitDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPODeliveryDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTimeFrame1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTimeFrame2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIncoterms;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitModePO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPoint;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndPoint;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVersion;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAmendmentNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCreditNoteNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCRFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCRDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCRNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsOutStanding;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandRC;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierUOM1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceAmount;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit riCheck;
        private DevExpress.XtraBars.BarButtonItem btnAddLots;
        private DevExpress.XtraBars.PopupMenu popupMenu1;
        private IContainer components;
        private DevExpress.XtraBars.BarButtonItem btnChangeTransitMode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVersionFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDebitNoteNO;
        private DevExpress.XtraBars.BarSubItem btnShipmentYes;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFactory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierLocation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOReqDeliveryDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierReference;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorShade;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierUOM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCurrency;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseOfficer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTeam;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReport;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeReport;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCRQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCReplacement;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQtyReplace;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandDNCN;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand14;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOIssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOExftyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustOrderNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOurSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOurFitDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHBalanceQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOBalancePercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNumOfProject;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riPHDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustColor;
        private DevExpress.XtraBars.BarButtonItem btnPrintShipment;
        private DevExpress.XtraBars.BarButtonItem btnPrintPO;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riicbDone;
        private DevExpress.XtraBars.BarButtonItem btnWOReport;
        private DevExpress.XtraBars.BarButtonItem btnRWOReport;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHUOM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppRCQty;
        private DevExpress.XtraBars.BarButtonItem btnClone;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHPOQty;
        private ImageList imageList1;
        private DevExpress.XtraBars.BarButtonItem btnCopySingle;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderClassDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTimeFramIIStartPointDateShow;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandSuppRef;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTime;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandCust;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandDelRef;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPointCode;
        private DevExpress.XtraBars.BarButtonItem btnPOPCForm;
        private DevExpress.XtraBars.BarButtonItem btnLevel;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandPage2Key;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReplacementDesc;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnSupplementSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClassCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBrandName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGoodsReceivingDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFlowupFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBuyerCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDeliveryRouting;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTtlDiffRev;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand15;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand16;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand17;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand18;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand19;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand20;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand21;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOFWStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand22;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand23;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand24;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand25;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand26;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand27;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand28;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitMode2Show;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTimeFramIIEndPointDateShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGRNQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riDate;
        #endregion

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(POPCLevel3Form));
            this.riDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.bandPO = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCompany = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBuyerCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsOutStanding = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOIssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riPHDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSKU = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandSuppRef = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplier = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierLocation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandPage2Key = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandQty = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPOQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTtlDiffRev = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHBalanceQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOBalancePercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplierUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOurSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOurFitDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFitDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandCust = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colEndCustColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBrandName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustOrderNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGmtColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandTime = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colIncoterms = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDeliveryRouting = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderClassDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitPointCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colWOFWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPOReqDeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPODeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand22 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand23 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitModePO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand24 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitMode2Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand25 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTimeFrame1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand26 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTimeFrame2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand27 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTimeFramIIStartPointDateShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand28 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTimeFramIIEndPointDateShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandDelRef = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGRNQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGoodsReceivingDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandRC = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRCDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppRCQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierUOM1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCReplacement = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riicbDone = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.bandQtyReplace = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRCRDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCRNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCRQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCRFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colInvoiceDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCreditNoteNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDebitNoteNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceAmount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colNumOfProject = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReport = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ribeReport = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colVersionFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHPOQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReplacementDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colClassCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFlowupFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandDNCN = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.riCheck = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.btnPrintShipment = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintPO = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnClone = new DevExpress.XtraBars.BarButtonItem();
            this.btnCopySingle = new DevExpress.XtraBars.BarButtonItem();
            this.btnShipmentYes = new DevExpress.XtraBars.BarSubItem();
            this.btnAddLots = new DevExpress.XtraBars.BarButtonItem();
            this.btnChangeTransitMode = new DevExpress.XtraBars.BarButtonItem();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btnPOPCForm = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnSupplementSheet = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbDone)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Images = this.imageList1;
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnRefresh,
            this.barSubItem1,
            this.barBtnPoList,
            this.btnAddLots,
            this.btnChangeTransitMode,
            this.btnShipmentYes,
            this.btnPrintShipment,
            this.btnPrintPO,
            this.btnWOReport,
            this.btnRWOReport,
            this.btnClone,
            this.btnCopySingle,
            this.btnPOPCForm,
            this.btnLevel,
            this.barSubItem2,
            this.btnSupplementSheet,
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 30;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem2, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barButtonItem1, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.riDate,
            this.riCheck,
            this.ribeReport,
            this.riPHDate,
            this.riicbDone});
            this.objListGridControl.Size = new System.Drawing.Size(4500, 373);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.PORC);
            // 
            // riDate
            // 
            this.riDate.AutoHeight = false;
            this.riDate.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.riDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.riDate.Name = "riDate";
            this.riDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // barBtnRefresh
            // 
            this.barBtnRefresh.Caption = "Refresh";
            this.barBtnRefresh.Id = 11;
            this.barBtnRefresh.Name = "barBtnRefresh";
            this.barBtnRefresh.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "barSubItem1";
            this.barSubItem1.Id = 12;
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barBtnPoList
            // 
            this.barBtnPoList.Alignment = DevExpress.XtraBars.BarItemLinkAlignment.Left;
            this.barBtnPoList.Caption = "PoList";
            this.barBtnPoList.Id = 15;
            this.barBtnPoList.Name = "barBtnPoList";
            this.barBtnPoList.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandPO,
            this.bandSuppRef,
            this.bandPage2Key,
            this.bandQty,
            this.gridBand2,
            this.bandCust,
            this.bandTime,
            this.gridBand22,
            this.bandDelRef,
            this.bandRC,
            this.gridBand9});
            this.bandedGridView1.ColumnPanelRowHeight = 50;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colCompany,
            this.colPONO,
            this.colVersion,
            this.colAmendmentNo,
            this.colOrderLine,
            this.colSKU,
            this.colCreditNoteNO,
            this.colInvoiceAmount,
            this.colSupplierUOM1,
            this.colRCRFlag,
            this.colRCRDate,
            this.colRCRNO,
            this.colIsOutStanding,
            this.colSupplier,
            this.colProjectNo,
            this.colPODeliveryDate,
            this.colTimeFrame1,
            this.colTimeFrame2,
            this.colIncoterms,
            this.colTransitModePO,
            this.colTransitPoint,
            this.colEndPoint,
            this.colItemCode,
            this.colColorCode,
            this.colSizeDesc,
            this.colFitDesc,
            this.colVersionFlag,
            this.colDebitNoteNO,
            this.colInvoiceDate,
            this.colInvoiceFlag,
            this.colFactory,
            this.colSupplierLocation,
            this.colEndCustCode,
            this.colPOReqDeliveryDate,
            this.colCustStyleNo,
            this.colPOQty,
            this.colSupplierReference,
            this.colColorShade,
            this.colSupplierUOM,
            this.colCurrency,
            this.colPurchaseOfficer,
            this.colTeam,
            this.colReport,
            this.colRCRQty,
            this.colRCQty,
            this.colRCNO,
            this.colRCDate,
            this.colRCReplacement,
            this.colPOIssueDate,
            this.colCustOrderNo,
            this.colOurSizeDesc,
            this.colOurFitDesc,
            this.colPHBalanceQty,
            this.colPOBalancePercent,
            this.colPrice,
            this.colNumOfProject,
            this.colEndCustColor,
            this.colSuppRCQty,
            this.colPHUOM,
            this.colPHPOQty,
            this.colOrderClassDesc,
            this.colTimeFramIIStartPointDateShow,
            this.colTransitPointCode,
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.bandedGridColumn3,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.colReplacementDesc,
            this.colClassCode,
            this.colBrandName,
            this.colGmtColorName,
            this.colItemColorName,
            this.colGoodsReceivingDate,
            this.colFlowupFlag,
            this.colMaterialGroup,
            this.colBuyerCode,
            this.colDeliveryRouting,
            this.colTtlDiffRev,
            this.colWOFWStartDate,
            this.colWOExftyDate,
            this.colTransitMode2Show,
            this.colTimeFramIIEndPointDateShow,
            this.colGRNQty});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(701, 322, 274, 405);
            this.bandedGridView1.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.GroupFormat = "[#image]{1} {2}";
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.AllowIncrementalSearch = true;
            this.bandedGridView1.OptionsBehavior.AutoPopulateColumns = false;
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsNavigation.EnterMoveNextColumn = true;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsSelection.MultiSelect = true;
            this.bandedGridView1.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colTeam, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colPurchaseOfficer, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colProjectNo, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSKU, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colPONO, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colOrderLine, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.bandedGridView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.bandedGridView1_MouseDown);
            // 
            // bandPO
            // 
            this.bandPO.Caption = "General PO\'s Information";
            this.bandPO.Columns.Add(this.colCompany);
            this.bandPO.Columns.Add(this.colBuyerCode);
            this.bandPO.Columns.Add(this.colIsOutStanding);
            this.bandPO.Columns.Add(this.colPOIssueDate);
            this.bandPO.Columns.Add(this.colPONO);
            this.bandPO.Columns.Add(this.colFactory);
            this.bandPO.Columns.Add(this.colProjectNo);
            this.bandPO.Columns.Add(this.colSKU);
            this.bandPO.Columns.Add(this.colItemCode);
            this.bandPO.Columns.Add(this.bandedGridColumn1);
            this.bandPO.Columns.Add(this.colOrderLine);
            this.bandPO.Columns.Add(this.colTeam);
            this.bandPO.Columns.Add(this.colPurchaseOfficer);
            this.bandPO.Columns.Add(this.colAmendmentNo);
            this.bandPO.MinWidth = 20;
            this.bandPO.Name = "bandPO";
            this.bandPO.Tag = 1;
            this.bandPO.Width = 814;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.OptionsColumn.AllowEdit = false;
            this.colCompany.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCompany.OptionsColumn.ReadOnly = true;
            // 
            // colBuyerCode
            // 
            this.colBuyerCode.Caption = "Buyer Cde";
            this.colBuyerCode.FieldName = "BuyerCode";
            this.colBuyerCode.Name = "colBuyerCode";
            this.colBuyerCode.OptionsColumn.AllowEdit = false;
            this.colBuyerCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBuyerCode.Visible = true;
            this.colBuyerCode.Width = 80;
            // 
            // colIsOutStanding
            // 
            this.colIsOutStanding.AppearanceCell.Options.UseTextOptions = true;
            this.colIsOutStanding.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colIsOutStanding.Caption = "PO Status";
            this.colIsOutStanding.FieldName = "POStatus";
            this.colIsOutStanding.Name = "colIsOutStanding";
            this.colIsOutStanding.OptionsColumn.AllowEdit = false;
            this.colIsOutStanding.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colIsOutStanding.OptionsColumn.ReadOnly = true;
            this.colIsOutStanding.Visible = true;
            this.colIsOutStanding.Width = 77;
            // 
            // colPOIssueDate
            // 
            this.colPOIssueDate.Caption = "Issued dd";
            this.colPOIssueDate.ColumnEdit = this.riPHDate;
            this.colPOIssueDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colPOIssueDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPOIssueDate.FieldName = "POIssueDate";
            this.colPOIssueDate.Name = "colPOIssueDate";
            this.colPOIssueDate.OptionsColumn.AllowEdit = false;
            this.colPOIssueDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOIssueDate.Visible = true;
            this.colPOIssueDate.Width = 77;
            // 
            // riPHDate
            // 
            this.riPHDate.AutoHeight = false;
            this.riPHDate.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riPHDate.DisplayFormat.FormatString = "dd/MM/yy";
            this.riPHDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.riPHDate.Name = "riPHDate";
            this.riPHDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // colPONO
            // 
            this.colPONO.AppearanceCell.Options.UseTextOptions = true;
            this.colPONO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPONO.OptionsColumn.ReadOnly = true;
            this.colPONO.Visible = true;
            this.colPONO.Width = 62;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceCell.Options.UseTextOptions = true;
            this.colFactory.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Our Prdn Site";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFactory.Visible = true;
            this.colFactory.Width = 97;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj. No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colProjectNo.OptionsColumn.ReadOnly = true;
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 96;
            // 
            // colSKU
            // 
            this.colSKU.Caption = "SKU";
            this.colSKU.FieldName = "SKU";
            this.colSKU.Name = "colSKU";
            this.colSKU.OptionsColumn.AllowEdit = false;
            this.colSKU.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSKU.OptionsColumn.ReadOnly = true;
            // 
            // colItemCode
            // 
            this.colItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colItemCode.OptionsColumn.ReadOnly = true;
            this.colItemCode.Visible = true;
            this.colItemCode.Width = 105;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "PO No.";
            this.bandedGridColumn1.FieldName = "PONO";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn1.SummaryItem.DisplayFormat = "{0}";
            this.bandedGridColumn1.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandedGridColumn1.SummaryItem.Tag = "PONO";
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "PO Line\r\n(ref)";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOrderLine.OptionsColumn.ReadOnly = true;
            this.colOrderLine.Visible = true;
            this.colOrderLine.Width = 66;
            // 
            // colTeam
            // 
            this.colTeam.AppearanceCell.Options.UseTextOptions = true;
            this.colTeam.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTeam.Caption = "Division";
            this.colTeam.FieldName = "Team";
            this.colTeam.Name = "colTeam";
            this.colTeam.OptionsColumn.AllowEdit = false;
            this.colTeam.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTeam.Visible = true;
            this.colTeam.Width = 66;
            // 
            // colPurchaseOfficer
            // 
            this.colPurchaseOfficer.Caption = "Coordinator";
            this.colPurchaseOfficer.FieldName = "PurchaseOfficer";
            this.colPurchaseOfficer.Name = "colPurchaseOfficer";
            this.colPurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.colPurchaseOfficer.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPurchaseOfficer.Visible = true;
            this.colPurchaseOfficer.Width = 88;
            // 
            // colAmendmentNo
            // 
            this.colAmendmentNo.Caption = "Amendment No";
            this.colAmendmentNo.FieldName = "AmendmentNo";
            this.colAmendmentNo.Name = "colAmendmentNo";
            this.colAmendmentNo.OptionsColumn.AllowEdit = false;
            this.colAmendmentNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colAmendmentNo.OptionsColumn.ReadOnly = true;
            this.colAmendmentNo.Width = 109;
            // 
            // bandSuppRef
            // 
            this.bandSuppRef.Caption = "Supp Info";
            this.bandSuppRef.Columns.Add(this.colSupplier);
            this.bandSuppRef.Columns.Add(this.colSupplierReference);
            this.bandSuppRef.Columns.Add(this.colCustStyleNo);
            this.bandSuppRef.Columns.Add(this.colVersion);
            this.bandSuppRef.Columns.Add(this.colSupplierLocation);
            this.bandSuppRef.MinWidth = 20;
            this.bandSuppRef.Name = "bandSuppRef";
            this.bandSuppRef.Tag = 2;
            this.bandSuppRef.Width = 445;
            // 
            // colSupplier
            // 
            this.colSupplier.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplier.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplier.Caption = "Supp Code";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.OptionsColumn.AllowEdit = false;
            this.colSupplier.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplier.OptionsColumn.ReadOnly = true;
            this.colSupplier.SummaryItem.DisplayFormat = "{0}";
            this.colSupplier.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplier.SummaryItem.Tag = "Supplier";
            this.colSupplier.Visible = true;
            this.colSupplier.Width = 83;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp Item Ref.\r\n(if any)";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplierReference.SummaryItem.DisplayFormat = "{0}";
            this.colSupplierReference.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplierReference.SummaryItem.Tag = "SupplierReference";
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.Width = 115;
            // 
            // colCustStyleNo
            // 
            this.colCustStyleNo.Caption = "It\'s Style No.\r\nRelated to this item\r\n(if necessary)";
            this.colCustStyleNo.FieldName = "CustStyleNo";
            this.colCustStyleNo.Name = "colCustStyleNo";
            this.colCustStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustStyleNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCustStyleNo.Visible = true;
            this.colCustStyleNo.Width = 131;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            this.colVersion.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colVersion.OptionsColumn.ReadOnly = true;
            // 
            // colSupplierLocation
            // 
            this.colSupplierLocation.Caption = "Loc. of Supp Fty";
            this.colSupplierLocation.FieldName = "SupplierLocation";
            this.colSupplierLocation.Name = "colSupplierLocation";
            this.colSupplierLocation.OptionsColumn.AllowEdit = false;
            this.colSupplierLocation.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplierLocation.Visible = true;
            this.colSupplierLocation.Width = 116;
            // 
            // bandPage2Key
            // 
            this.bandPage2Key.Caption = "PO Summary Key Info";
            this.bandPage2Key.Columns.Add(this.bandedGridColumn2);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn3);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn4);
            this.bandPage2Key.MinWidth = 20;
            this.bandPage2Key.Name = "bandPage2Key";
            this.bandPage2Key.Tag = 1;
            this.bandPage2Key.Visible = false;
            this.bandPage2Key.Width = 375;
            // 
            // bandedGridColumn2
            // 
            this.bandedGridColumn2.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.bandedGridColumn2.Caption = "Bal Qty";
            this.bandedGridColumn2.DisplayFormat.FormatString = "#,0.###";
            this.bandedGridColumn2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.bandedGridColumn2.FieldName = "SupplierOutstandingQty";
            this.bandedGridColumn2.Name = "bandedGridColumn2";
            this.bandedGridColumn2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // bandedGridColumn3
            // 
            this.bandedGridColumn3.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn3.Caption = "Unit";
            this.bandedGridColumn3.FieldName = "SupplierUOM";
            this.bandedGridColumn3.Name = "bandedGridColumn3";
            this.bandedGridColumn3.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // bandedGridColumn4
            // 
            this.bandedGridColumn4.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn4.Caption = "Del dd";
            this.bandedGridColumn4.ColumnEdit = this.riPHDate;
            this.bandedGridColumn4.FieldName = "PODeliveryDate";
            this.bandedGridColumn4.Name = "bandedGridColumn4";
            this.bandedGridColumn4.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // bandQty
            // 
            this.bandQty.Caption = "PO Quantity\r\n(By PO Line/Clr)";
            this.bandQty.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand12,
            this.gridBand13,
            this.gridBand15});
            this.bandQty.MinWidth = 20;
            this.bandQty.Name = "bandQty";
            this.bandQty.RowCount = 2;
            this.bandQty.Tag = 1;
            this.bandQty.Width = 320;
            // 
            // gridBand12
            // 
            this.gridBand12.Caption = "Qty";
            this.gridBand12.Columns.Add(this.colPOQty);
            this.gridBand12.Columns.Add(this.colTtlDiffRev);
            this.gridBand12.MinWidth = 20;
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.Tag = 1;
            this.gridBand12.Width = 132;
            // 
            // colPOQty
            // 
            this.colPOQty.AppearanceCell.Options.UseTextOptions = true;
            this.colPOQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPOQty.Caption = "Final Ttl";
            this.colPOQty.DisplayFormat.FormatString = "#,0.##";
            this.colPOQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOQty.FieldName = "SupplierPOQty";
            this.colPOQty.Name = "colPOQty";
            this.colPOQty.OptionsColumn.AllowEdit = false;
            this.colPOQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOQty.Visible = true;
            // 
            // colTtlDiffRev
            // 
            this.colTtlDiffRev.Caption = "Ttl Diff\r\nRev.";
            this.colTtlDiffRev.Name = "colTtlDiffRev";
            this.colTtlDiffRev.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTtlDiffRev.Visible = true;
            this.colTtlDiffRev.Width = 57;
            // 
            // gridBand13
            // 
            this.gridBand13.Caption = "Bal";
            this.gridBand13.Columns.Add(this.colPHBalanceQty);
            this.gridBand13.Columns.Add(this.colPOBalancePercent);
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Tag = 1;
            this.gridBand13.Width = 147;
            // 
            // colPHBalanceQty
            // 
            this.colPHBalanceQty.AppearanceCell.Options.UseTextOptions = true;
            this.colPHBalanceQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPHBalanceQty.Caption = "Qty";
            this.colPHBalanceQty.DisplayFormat.FormatString = "#,0.##";
            this.colPHBalanceQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHBalanceQty.FieldName = "SupplierOutstandingQty";
            this.colPHBalanceQty.Name = "colPHBalanceQty";
            this.colPHBalanceQty.OptionsColumn.AllowEdit = false;
            this.colPHBalanceQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHBalanceQty.Visible = true;
            // 
            // colPOBalancePercent
            // 
            this.colPOBalancePercent.AppearanceCell.Options.UseTextOptions = true;
            this.colPOBalancePercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPOBalancePercent.Caption = "%";
            this.colPOBalancePercent.DisplayFormat.FormatString = "p0";
            this.colPOBalancePercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOBalancePercent.FieldName = "POBalancePercent";
            this.colPOBalancePercent.Name = "colPOBalancePercent";
            this.colPOBalancePercent.OptionsColumn.AllowEdit = false;
            this.colPOBalancePercent.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOBalancePercent.Visible = true;
            this.colPOBalancePercent.Width = 72;
            // 
            // gridBand15
            // 
            this.gridBand15.Caption = "PO";
            this.gridBand15.Columns.Add(this.colSupplierUOM);
            this.gridBand15.MinWidth = 20;
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Tag = 1;
            this.gridBand15.Width = 41;
            // 
            // colSupplierUOM
            // 
            this.colSupplierUOM.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplierUOM.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplierUOM.Caption = "Unit";
            this.colSupplierUOM.FieldName = "SupplierUOM";
            this.colSupplierUOM.Name = "colSupplierUOM";
            this.colSupplierUOM.OptionsColumn.AllowEdit = false;
            this.colSupplierUOM.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplierUOM.Visible = true;
            this.colSupplierUOM.Width = 41;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Item Size Matrix";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand8,
            this.gridBand10});
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.RowCount = 2;
            this.gridBand2.Tag = 2;
            this.gridBand2.Width = 316;
            // 
            // gridBand8
            // 
            this.gridBand8.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand8.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand8.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand8.Caption = "Our";
            this.gridBand8.Columns.Add(this.colOurSizeDesc);
            this.gridBand8.Columns.Add(this.colOurFitDesc);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Tag = 2;
            this.gridBand8.Width = 158;
            // 
            // colOurSizeDesc
            // 
            this.colOurSizeDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colOurSizeDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colOurSizeDesc.Caption = "Sz\r\nTtl";
            this.colOurSizeDesc.FieldName = "SizeCode";
            this.colOurSizeDesc.Name = "colOurSizeDesc";
            this.colOurSizeDesc.OptionsColumn.AllowEdit = false;
            this.colOurSizeDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOurSizeDesc.Visible = true;
            // 
            // colOurFitDesc
            // 
            this.colOurFitDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colOurFitDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colOurFitDesc.Caption = "Cup\r\nTtl";
            this.colOurFitDesc.FieldName = "FitCode";
            this.colOurFitDesc.Name = "colOurFitDesc";
            this.colOurFitDesc.OptionsColumn.AllowEdit = false;
            this.colOurFitDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOurFitDesc.Visible = true;
            this.colOurFitDesc.Width = 83;
            // 
            // gridBand10
            // 
            this.gridBand10.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand10.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand10.Caption = "Supp";
            this.gridBand10.Columns.Add(this.colSizeDesc);
            this.gridBand10.Columns.Add(this.colFitDesc);
            this.gridBand10.MinWidth = 20;
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Tag = 2;
            this.gridBand10.Width = 158;
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeDesc.Caption = "Sz\r\nTtl";
            this.colSizeDesc.FieldName = "SizeDesc";
            this.colSizeDesc.Name = "colSizeDesc";
            this.colSizeDesc.OptionsColumn.AllowEdit = false;
            this.colSizeDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSizeDesc.OptionsColumn.ReadOnly = true;
            this.colSizeDesc.Visible = true;
            // 
            // colFitDesc
            // 
            this.colFitDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colFitDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFitDesc.Caption = "Cup\r\nTtl";
            this.colFitDesc.FieldName = "FitDesc";
            this.colFitDesc.Name = "colFitDesc";
            this.colFitDesc.OptionsColumn.AllowEdit = false;
            this.colFitDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFitDesc.OptionsColumn.ReadOnly = true;
            this.colFitDesc.Visible = true;
            this.colFitDesc.Width = 83;
            // 
            // bandCust
            // 
            this.bandCust.Caption = "PO\'s Color Info";
            this.bandCust.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand16,
            this.gridBand17});
            this.bandCust.MinWidth = 20;
            this.bandCust.Name = "bandCust";
            this.bandCust.Tag = 1;
            this.bandCust.Width = 351;
            // 
            // gridBand16
            // 
            this.gridBand16.Caption = "Item Color";
            this.gridBand16.Columns.Add(this.colEndCustColor);
            this.gridBand16.Columns.Add(this.colColorCode);
            this.gridBand16.Columns.Add(this.colItemColorName);
            this.gridBand16.Columns.Add(this.colColorShade);
            this.gridBand16.Columns.Add(this.colEndCustCode);
            this.gridBand16.Columns.Add(this.colBrandName);
            this.gridBand16.Columns.Add(this.colCustOrderNo);
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Tag = 1;
            this.gridBand16.Width = 248;
            // 
            // colEndCustColor
            // 
            this.colEndCustColor.Caption = "Gmt Clr Code\r\n(if any)";
            this.colEndCustColor.FieldName = "GarmentColor";
            this.colEndCustColor.Name = "colEndCustColor";
            this.colEndCustColor.OptionsColumn.AllowEdit = false;
            this.colEndCustColor.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colEndCustColor.Width = 97;
            // 
            // colColorCode
            // 
            this.colColorCode.AppearanceCell.Options.UseTextOptions = true;
            this.colColorCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColorCode.Caption = "Our Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorCode.OptionsColumn.ReadOnly = true;
            this.colColorCode.SummaryItem.DisplayFormat = "{0}";
            this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCode.SummaryItem.Tag = "ColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 64;
            // 
            // colItemColorName
            // 
            this.colItemColorName.Caption = "Our Name\r\n(if any)";
            this.colItemColorName.FieldName = "ItemColorName";
            this.colItemColorName.Name = "colItemColorName";
            this.colItemColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colItemColorName.Visible = true;
            this.colItemColorName.Width = 102;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "Clr Shade from Supp\r\n(if any)";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.OptionsColumn.AllowEdit = false;
            this.colColorShade.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorShade.SummaryItem.DisplayFormat = "{0}";
            this.colColorShade.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorShade.SummaryItem.Tag = "ColorShade";
            this.colColorShade.Visible = true;
            this.colColorShade.Width = 82;
            // 
            // colEndCustCode
            // 
            this.colEndCustCode.AppearanceCell.Options.UseTextOptions = true;
            this.colEndCustCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndCustCode.Caption = "IT\'s Code";
            this.colEndCustCode.FieldName = "EndCustCode";
            this.colEndCustCode.Name = "colEndCustCode";
            this.colEndCustCode.OptionsColumn.AllowEdit = false;
            this.colEndCustCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colEndCustCode.SummaryItem.DisplayFormat = "{0}";
            this.colEndCustCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colEndCustCode.SummaryItem.Tag = "EndCustCode";
            this.colEndCustCode.Width = 72;
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "Brand Name\r\n(if any)";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            this.colBrandName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBrandName.Width = 91;
            // 
            // colCustOrderNo
            // 
            this.colCustOrderNo.Caption = "Order No.\r\n(if any)";
            this.colCustOrderNo.FieldName = "CustOrderNo";
            this.colCustOrderNo.Name = "colCustOrderNo";
            this.colCustOrderNo.OptionsColumn.AllowEdit = false;
            this.colCustOrderNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCustOrderNo.Width = 78;
            // 
            // gridBand17
            // 
            this.gridBand17.Caption = "Gmt Color\r\n(if any)";
            this.gridBand17.Columns.Add(this.colGmtColorName);
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Tag = 1;
            this.gridBand17.Width = 103;
            // 
            // colGmtColorName
            // 
            this.colGmtColorName.Caption = "Name";
            this.colGmtColorName.FieldName = "GmtColorName";
            this.colGmtColorName.Name = "colGmtColorName";
            this.colGmtColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorName.Visible = true;
            this.colGmtColorName.Width = 103;
            // 
            // bandTime
            // 
            this.bandTime.Caption = "Time Element";
            this.bandTime.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand18,
            this.gridBand19,
            this.gridBand20,
            this.gridBand21});
            this.bandTime.MinWidth = 20;
            this.bandTime.Name = "bandTime";
            this.bandTime.Tag = 2;
            this.bandTime.Width = 502;
            // 
            // gridBand18
            // 
            this.gridBand18.Caption = "--";
            this.gridBand18.Columns.Add(this.colIncoterms);
            this.gridBand18.Columns.Add(this.colDeliveryRouting);
            this.gridBand18.Columns.Add(this.colOrderClassDesc);
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Tag = 2;
            this.gridBand18.Width = 114;
            // 
            // colIncoterms
            // 
            this.colIncoterms.AppearanceCell.Options.UseTextOptions = true;
            this.colIncoterms.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colIncoterms.Caption = "Inco-\r\nterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.OptionsColumn.AllowEdit = false;
            this.colIncoterms.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colIncoterms.OptionsColumn.ReadOnly = true;
            this.colIncoterms.Visible = true;
            this.colIncoterms.Width = 54;
            // 
            // colDeliveryRouting
            // 
            this.colDeliveryRouting.Caption = "Del\r\nRout\'g";
            this.colDeliveryRouting.FieldName = "DeliveryRouting";
            this.colDeliveryRouting.Name = "colDeliveryRouting";
            this.colDeliveryRouting.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDeliveryRouting.Visible = true;
            this.colDeliveryRouting.Width = 60;
            // 
            // colOrderClassDesc
            // 
            this.colOrderClassDesc.Caption = "ERP\'s PO Class";
            this.colOrderClassDesc.FieldName = "OrderClassDesc";
            this.colOrderClassDesc.Name = "colOrderClassDesc";
            this.colOrderClassDesc.OptionsColumn.AllowEdit = false;
            this.colOrderClassDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOrderClassDesc.Width = 105;
            // 
            // gridBand19
            // 
            this.gridBand19.Caption = "Time Frame I";
            this.gridBand19.Columns.Add(this.colTransitPointCode);
            this.gridBand19.Columns.Add(this.colEndPoint);
            this.gridBand19.Name = "gridBand19";
            this.gridBand19.Tag = 2;
            this.gridBand19.Width = 135;
            // 
            // colTransitPointCode
            // 
            this.colTransitPointCode.Caption = "Transit Pt. Cde";
            this.colTransitPointCode.FieldName = "TransitPointCode";
            this.colTransitPointCode.Name = "colTransitPointCode";
            this.colTransitPointCode.OptionsColumn.AllowEdit = false;
            this.colTransitPointCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitPointCode.Visible = true;
            this.colTransitPointCode.Width = 65;
            // 
            // colEndPoint
            // 
            this.colEndPoint.AppearanceCell.Options.UseTextOptions = true;
            this.colEndPoint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndPoint.Caption = "Recv\'g End Pt. Cde";
            this.colEndPoint.FieldName = "EndPoint";
            this.colEndPoint.Name = "colEndPoint";
            this.colEndPoint.OptionsColumn.AllowEdit = false;
            this.colEndPoint.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colEndPoint.OptionsColumn.ReadOnly = true;
            this.colEndPoint.Visible = true;
            this.colEndPoint.Width = 70;
            // 
            // gridBand20
            // 
            this.gridBand20.Caption = "Our 1st WO";
            this.gridBand20.Columns.Add(this.colWOFWStartDate);
            this.gridBand20.Columns.Add(this.colWOExftyDate);
            this.gridBand20.Name = "gridBand20";
            this.gridBand20.Tag = 2;
            this.gridBand20.Width = 177;
            // 
            // colWOFWStartDate
            // 
            this.colWOFWStartDate.Caption = "FW Start dd";
            this.colWOFWStartDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colWOFWStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colWOFWStartDate.FieldName = "WOFWStartDate";
            this.colWOFWStartDate.Name = "colWOFWStartDate";
            this.colWOFWStartDate.Visible = true;
            this.colWOFWStartDate.Width = 87;
            // 
            // colWOExftyDate
            // 
            this.colWOExftyDate.Caption = "Ex-fty dd";
            this.colWOExftyDate.ColumnEdit = this.riPHDate;
            this.colWOExftyDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colWOExftyDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colWOExftyDate.FieldName = "WOExftyDate";
            this.colWOExftyDate.Name = "colWOExftyDate";
            this.colWOExftyDate.OptionsColumn.AllowEdit = false;
            this.colWOExftyDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colWOExftyDate.Visible = true;
            this.colWOExftyDate.Width = 90;
            // 
            // gridBand21
            // 
            this.gridBand21.Caption = "PO Delivery dd";
            this.gridBand21.Columns.Add(this.colPOReqDeliveryDate);
            this.gridBand21.Columns.Add(this.colPODeliveryDate);
            this.gridBand21.Name = "gridBand21";
            this.gridBand21.Tag = 2;
            this.gridBand21.Width = 76;
            // 
            // colPOReqDeliveryDate
            // 
            this.colPOReqDeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPOReqDeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPOReqDeliveryDate.Caption = "Req";
            this.colPOReqDeliveryDate.ColumnEdit = this.riPHDate;
            this.colPOReqDeliveryDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colPOReqDeliveryDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPOReqDeliveryDate.FieldName = "POReqDeliveryDate";
            this.colPOReqDeliveryDate.Name = "colPOReqDeliveryDate";
            this.colPOReqDeliveryDate.OptionsColumn.AllowEdit = false;
            this.colPOReqDeliveryDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOReqDeliveryDate.Width = 80;
            // 
            // colPODeliveryDate
            // 
            this.colPODeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPODeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPODeliveryDate.Caption = "Latest";
            this.colPODeliveryDate.ColumnEdit = this.riPHDate;
            this.colPODeliveryDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colPODeliveryDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPODeliveryDate.FieldName = "PODeliveryDateShow";
            this.colPODeliveryDate.Name = "colPODeliveryDate";
            this.colPODeliveryDate.OptionsColumn.AllowEdit = false;
            this.colPODeliveryDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPODeliveryDate.OptionsColumn.ReadOnly = true;
            this.colPODeliveryDate.Visible = true;
            this.colPODeliveryDate.Width = 76;
            // 
            // gridBand22
            // 
            this.gridBand22.Caption = "Transit Mode";
            this.gridBand22.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand23,
            this.gridBand24,
            this.gridBand25,
            this.gridBand26,
            this.gridBand27,
            this.gridBand28});
            this.gridBand22.Name = "gridBand22";
            this.gridBand22.Tag = 1;
            this.gridBand22.Width = 415;
            // 
            // gridBand23
            // 
            this.gridBand23.Caption = "Transit Mode 1";
            this.gridBand23.Columns.Add(this.colTransitModePO);
            this.gridBand23.Name = "gridBand23";
            this.gridBand23.Tag = 1;
            this.gridBand23.Width = 67;
            // 
            // colTransitModePO
            // 
            this.colTransitModePO.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitModePO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitModePO.Caption = "Latest";
            this.colTransitModePO.FieldName = "TransitMode1Show";
            this.colTransitModePO.Name = "colTransitModePO";
            this.colTransitModePO.OptionsColumn.AllowEdit = false;
            this.colTransitModePO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitModePO.OptionsColumn.ReadOnly = true;
            this.colTransitModePO.Visible = true;
            this.colTransitModePO.Width = 67;
            // 
            // gridBand24
            // 
            this.gridBand24.Caption = "Transit Mode 2";
            this.gridBand24.Columns.Add(this.colTransitMode2Show);
            this.gridBand24.Columns.Add(this.bandedGridColumn5);
            this.gridBand24.Name = "gridBand24";
            this.gridBand24.Tag = 1;
            this.gridBand24.Width = 63;
            // 
            // colTransitMode2Show
            // 
            this.colTransitMode2Show.Caption = "Latest";
            this.colTransitMode2Show.FieldName = "TransitMode2Show";
            this.colTransitMode2Show.Name = "colTransitMode2Show";
            this.colTransitMode2Show.Visible = true;
            this.colTransitMode2Show.Width = 63;
            // 
            // bandedGridColumn5
            // 
            this.bandedGridColumn5.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn5.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn5.Caption = "Transit Mode";
            this.bandedGridColumn5.FieldName = "TransitModePO";
            this.bandedGridColumn5.Name = "bandedGridColumn5";
            this.bandedGridColumn5.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn5.Width = 95;
            // 
            // gridBand25
            // 
            this.gridBand25.Caption = "Time Frame I";
            this.gridBand25.Columns.Add(this.colTimeFrame1);
            this.gridBand25.Name = "gridBand25";
            this.gridBand25.Tag = 1;
            this.gridBand25.Width = 64;
            // 
            // colTimeFrame1
            // 
            this.colTimeFrame1.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame1.Caption = "Latest\r\n(days)";
            this.colTimeFrame1.FieldName = "TimeFrame1";
            this.colTimeFrame1.Name = "colTimeFrame1";
            this.colTimeFrame1.OptionsColumn.AllowEdit = false;
            this.colTimeFrame1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame1.OptionsColumn.ReadOnly = true;
            this.colTimeFrame1.Visible = true;
            this.colTimeFrame1.Width = 64;
            // 
            // gridBand26
            // 
            this.gridBand26.Caption = "Time Frame II";
            this.gridBand26.Columns.Add(this.colTimeFrame2);
            this.gridBand26.Name = "gridBand26";
            this.gridBand26.Tag = 1;
            this.gridBand26.Width = 64;
            // 
            // colTimeFrame2
            // 
            this.colTimeFrame2.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame2.Caption = "Latest\r\n(days)";
            this.colTimeFrame2.FieldName = "TimeFrame2";
            this.colTimeFrame2.Name = "colTimeFrame2";
            this.colTimeFrame2.OptionsColumn.AllowEdit = false;
            this.colTimeFrame2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame2.OptionsColumn.ReadOnly = true;
            this.colTimeFrame2.Visible = true;
            this.colTimeFrame2.Width = 64;
            // 
            // gridBand27
            // 
            this.gridBand27.Caption = "TF2\'s Recv\'g Start Pt.";
            this.gridBand27.Columns.Add(this.colTimeFramIIStartPointDateShow);
            this.gridBand27.Name = "gridBand27";
            this.gridBand27.Tag = 1;
            this.gridBand27.Width = 82;
            // 
            // colTimeFramIIStartPointDateShow
            // 
            this.colTimeFramIIStartPointDateShow.Caption = "Latest\r\n(dd)";
            this.colTimeFramIIStartPointDateShow.ColumnEdit = this.riPHDate;
            this.colTimeFramIIStartPointDateShow.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTimeFramIIStartPointDateShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTimeFramIIStartPointDateShow.FieldName = "TimeFramIIStartPointDateShow";
            this.colTimeFramIIStartPointDateShow.Name = "colTimeFramIIStartPointDateShow";
            this.colTimeFramIIStartPointDateShow.OptionsColumn.AllowEdit = false;
            this.colTimeFramIIStartPointDateShow.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFramIIStartPointDateShow.Visible = true;
            this.colTimeFramIIStartPointDateShow.Width = 82;
            // 
            // gridBand28
            // 
            this.gridBand28.Caption = "TF2\'s Recv\'g End Pt.";
            this.gridBand28.Columns.Add(this.colTimeFramIIEndPointDateShow);
            this.gridBand28.Name = "gridBand28";
            this.gridBand28.Tag = 1;
            this.gridBand28.Width = 75;
            // 
            // colTimeFramIIEndPointDateShow
            // 
            this.colTimeFramIIEndPointDateShow.Caption = "Latest\r\n(dd)";
            this.colTimeFramIIEndPointDateShow.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTimeFramIIEndPointDateShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTimeFramIIEndPointDateShow.FieldName = "TimeFramIIEndPointDateShow";
            this.colTimeFramIIEndPointDateShow.Name = "colTimeFramIIEndPointDateShow";
            this.colTimeFramIIEndPointDateShow.Visible = true;
            // 
            // bandDelRef
            // 
            this.bandDelRef.Caption = "Goods Inward STAGE\r\n(Qty by PO line/Clr)";
            this.bandDelRef.Columns.Add(this.colGRNQty);
            this.bandDelRef.Columns.Add(this.colGoodsReceivingDate);
            this.bandDelRef.Columns.Add(this.colTransitPoint);
            this.bandDelRef.MinWidth = 20;
            this.bandDelRef.Name = "bandDelRef";
            this.bandDelRef.Tag = 2;
            this.bandDelRef.Width = 156;
            // 
            // colGRNQty
            // 
            this.colGRNQty.Caption = "GRN Qty";
            this.colGRNQty.Name = "colGRNQty";
            this.colGRNQty.Visible = true;
            // 
            // colGoodsReceivingDate
            // 
            this.colGoodsReceivingDate.Caption = "Created HDO dd";
            this.colGoodsReceivingDate.ColumnEdit = this.riPHDate;
            this.colGoodsReceivingDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colGoodsReceivingDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colGoodsReceivingDate.FieldName = "GoodsReceivingDate";
            this.colGoodsReceivingDate.Name = "colGoodsReceivingDate";
            this.colGoodsReceivingDate.OptionsColumn.AllowEdit = false;
            this.colGoodsReceivingDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGoodsReceivingDate.Visible = true;
            this.colGoodsReceivingDate.Width = 81;
            // 
            // colTransitPoint
            // 
            this.colTransitPoint.Caption = "Transit Point";
            this.colTransitPoint.FieldName = "TransitPoint";
            this.colTransitPoint.Name = "colTransitPoint";
            this.colTransitPoint.OptionsColumn.AllowEdit = false;
            this.colTransitPoint.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitPoint.OptionsColumn.ReadOnly = true;
            this.colTransitPoint.Width = 93;
            // 
            // bandRC
            // 
            this.bandRC.Caption = "Return Cargo Monitoring";
            this.bandRC.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand11,
            this.bandQtyReplace,
            this.gridBand1});
            this.bandRC.MinWidth = 20;
            this.bandRC.Name = "bandRC";
            this.bandRC.Tag = 0;
            this.bandRC.Width = 1105;
            // 
            // gridBand11
            // 
            this.gridBand11.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand11.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand11.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand11.Caption = "Return Cargo (RC) - Data capture from ERP";
            this.gridBand11.Columns.Add(this.colRCDate);
            this.gridBand11.Columns.Add(this.colRCNO);
            this.gridBand11.Columns.Add(this.colRCQty);
            this.gridBand11.Columns.Add(this.colPHUOM);
            this.gridBand11.Columns.Add(this.colSuppRCQty);
            this.gridBand11.Columns.Add(this.colSupplierUOM1);
            this.gridBand11.Columns.Add(this.colRCReplacement);
            this.gridBand11.MinWidth = 20;
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.RowCount = 2;
            this.gridBand11.Tag = 1;
            this.gridBand11.Width = 431;
            // 
            // colRCDate
            // 
            this.colRCDate.AppearanceCell.Options.UseTextOptions = true;
            this.colRCDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRCDate.Caption = "Date";
            this.colRCDate.ColumnEdit = this.riPHDate;
            this.colRCDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colRCDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colRCDate.FieldName = "RCCreateDate";
            this.colRCDate.Name = "colRCDate";
            this.colRCDate.OptionsColumn.AllowEdit = false;
            this.colRCDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCDate.Visible = true;
            // 
            // colRCNO
            // 
            this.colRCNO.Caption = "RC No.";
            this.colRCNO.FieldName = "RCNO";
            this.colRCNO.Name = "colRCNO";
            this.colRCNO.OptionsColumn.AllowEdit = false;
            this.colRCNO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCNO.Visible = true;
            this.colRCNO.Width = 66;
            // 
            // colRCQty
            // 
            this.colRCQty.AppearanceCell.Options.UseTextOptions = true;
            this.colRCQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colRCQty.Caption = "Our Qty";
            this.colRCQty.DisplayFormat.FormatString = "#,0.#";
            this.colRCQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colRCQty.FieldName = "RCQty";
            this.colRCQty.Name = "colRCQty";
            this.colRCQty.OptionsColumn.AllowEdit = false;
            this.colRCQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colRCQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCQty.Visible = true;
            this.colRCQty.Width = 67;
            // 
            // colPHUOM
            // 
            this.colPHUOM.AppearanceCell.Options.UseTextOptions = true;
            this.colPHUOM.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPHUOM.Caption = "ERP Unit";
            this.colPHUOM.FieldName = "PHUOM";
            this.colPHUOM.Name = "colPHUOM";
            this.colPHUOM.OptionsColumn.AllowEdit = false;
            this.colPHUOM.OptionsColumn.AllowIncrementalSearch = false;
            this.colPHUOM.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHUOM.Visible = true;
            this.colPHUOM.Width = 71;
            // 
            // colSuppRCQty
            // 
            this.colSuppRCQty.AppearanceCell.Options.UseTextOptions = true;
            this.colSuppRCQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colSuppRCQty.Caption = "Supp Qty";
            this.colSuppRCQty.FieldName = "SuppRCQty";
            this.colSuppRCQty.Name = "colSuppRCQty";
            this.colSuppRCQty.OptionsColumn.AllowEdit = false;
            this.colSuppRCQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colSuppRCQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppRCQty.Visible = true;
            this.colSuppRCQty.Width = 74;
            // 
            // colSupplierUOM1
            // 
            this.colSupplierUOM1.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplierUOM1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplierUOM1.Caption = "Supp Unit";
            this.colSupplierUOM1.FieldName = "SupplierUOM";
            this.colSupplierUOM1.Name = "colSupplierUOM1";
            this.colSupplierUOM1.OptionsColumn.AllowEdit = false;
            this.colSupplierUOM1.OptionsColumn.AllowIncrementalSearch = false;
            this.colSupplierUOM1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplierUOM1.OptionsColumn.ReadOnly = true;
            this.colSupplierUOM1.Width = 77;
            // 
            // colRCReplacement
            // 
            this.colRCReplacement.AppearanceCell.Options.UseTextOptions = true;
            this.colRCReplacement.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRCReplacement.Caption = "Qty Replace (Y/N)?";
            this.colRCReplacement.ColumnEdit = this.riicbDone;
            this.colRCReplacement.FieldName = "Replacement";
            this.colRCReplacement.Name = "colRCReplacement";
            this.colRCReplacement.OptionsColumn.AllowIncrementalSearch = false;
            this.colRCReplacement.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCReplacement.Visible = true;
            this.colRCReplacement.Width = 78;
            // 
            // riicbDone
            // 
            this.riicbDone.AutoHeight = false;
            this.riicbDone.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riicbDone.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("N", false, -1)});
            this.riicbDone.Name = "riicbDone";
            this.riicbDone.NullText = "--";
            // 
            // bandQtyReplace
            // 
            this.bandQtyReplace.Caption = "Qty Replacement";
            this.bandQtyReplace.Columns.Add(this.colRCRDate);
            this.bandQtyReplace.Columns.Add(this.colRCRNO);
            this.bandQtyReplace.Columns.Add(this.colRCRQty);
            this.bandQtyReplace.Columns.Add(this.colRCRFlag);
            this.bandQtyReplace.MinWidth = 20;
            this.bandQtyReplace.Name = "bandQtyReplace";
            this.bandQtyReplace.RowCount = 2;
            this.bandQtyReplace.Tag = 2;
            this.bandQtyReplace.Width = 280;
            // 
            // colRCRDate
            // 
            this.colRCRDate.AppearanceCell.Options.UseTextOptions = true;
            this.colRCRDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRCRDate.Caption = "Date";
            this.colRCRDate.ColumnEdit = this.riPHDate;
            this.colRCRDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colRCRDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colRCRDate.FieldName = "RCRDate";
            this.colRCRDate.Name = "colRCRDate";
            this.colRCRDate.OptionsColumn.AllowIncrementalSearch = false;
            this.colRCRDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCRDate.Visible = true;
            this.colRCRDate.Width = 76;
            // 
            // colRCRNO
            // 
            this.colRCRNO.Caption = "RCR No.";
            this.colRCRNO.FieldName = "RCRNO";
            this.colRCRNO.Name = "colRCRNO";
            this.colRCRNO.OptionsColumn.AllowIncrementalSearch = false;
            this.colRCRNO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCRNO.Visible = true;
            this.colRCRNO.Width = 73;
            // 
            // colRCRQty
            // 
            this.colRCRQty.AppearanceCell.Options.UseTextOptions = true;
            this.colRCRQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colRCRQty.Caption = "Qty";
            this.colRCRQty.FieldName = "RCRQty";
            this.colRCRQty.Name = "colRCRQty";
            this.colRCRQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colRCRQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCRQty.Visible = true;
            // 
            // colRCRFlag
            // 
            this.colRCRFlag.AppearanceCell.Options.UseTextOptions = true;
            this.colRCRFlag.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRCRFlag.Caption = "Done";
            this.colRCRFlag.ColumnEdit = this.riicbDone;
            this.colRCRFlag.FieldName = "RCRFlag";
            this.colRCRFlag.Name = "colRCRFlag";
            this.colRCRFlag.OptionsColumn.AllowIncrementalSearch = false;
            this.colRCRFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCRFlag.Visible = true;
            this.colRCRFlag.Width = 56;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Invoice Adjustment";
            this.gridBand1.Columns.Add(this.colInvoiceDate);
            this.gridBand1.Columns.Add(this.colCreditNoteNO);
            this.gridBand1.Columns.Add(this.colDebitNoteNO);
            this.gridBand1.Columns.Add(this.colCurrency);
            this.gridBand1.Columns.Add(this.colInvoiceAmount);
            this.gridBand1.Columns.Add(this.colInvoiceFlag);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.RowCount = 2;
            this.gridBand1.Tag = 1;
            this.gridBand1.Width = 394;
            // 
            // colInvoiceDate
            // 
            this.colInvoiceDate.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoiceDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colInvoiceDate.Caption = "Date";
            this.colInvoiceDate.ColumnEdit = this.riPHDate;
            this.colInvoiceDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colInvoiceDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colInvoiceDate.FieldName = "InvoiceDate";
            this.colInvoiceDate.Name = "colInvoiceDate";
            this.colInvoiceDate.OptionsColumn.AllowIncrementalSearch = false;
            this.colInvoiceDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colInvoiceDate.Visible = true;
            // 
            // colCreditNoteNO
            // 
            this.colCreditNoteNO.Caption = "CN No.";
            this.colCreditNoteNO.FieldName = "CreditNoteNO";
            this.colCreditNoteNO.Name = "colCreditNoteNO";
            this.colCreditNoteNO.OptionsColumn.AllowIncrementalSearch = false;
            this.colCreditNoteNO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCreditNoteNO.Visible = true;
            // 
            // colDebitNoteNO
            // 
            this.colDebitNoteNO.Caption = "DN No.";
            this.colDebitNoteNO.FieldName = "DebitNoteNO";
            this.colDebitNoteNO.Name = "colDebitNoteNO";
            this.colDebitNoteNO.OptionsColumn.AllowIncrementalSearch = false;
            this.colDebitNoteNO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDebitNoteNO.Visible = true;
            // 
            // colCurrency
            // 
            this.colCurrency.AppearanceCell.Options.UseTextOptions = true;
            this.colCurrency.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCurrency.Caption = "Curr";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.OptionsColumn.AllowEdit = false;
            this.colCurrency.OptionsColumn.AllowIncrementalSearch = false;
            this.colCurrency.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCurrency.Visible = true;
            this.colCurrency.Width = 48;
            // 
            // colInvoiceAmount
            // 
            this.colInvoiceAmount.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoiceAmount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colInvoiceAmount.Caption = "Amount";
            this.colInvoiceAmount.DisplayFormat.FormatString = "#,0.00";
            this.colInvoiceAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colInvoiceAmount.FieldName = "InvoiceAmount";
            this.colInvoiceAmount.Name = "colInvoiceAmount";
            this.colInvoiceAmount.OptionsColumn.AllowIncrementalSearch = false;
            this.colInvoiceAmount.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colInvoiceAmount.Visible = true;
            this.colInvoiceAmount.Width = 66;
            // 
            // colInvoiceFlag
            // 
            this.colInvoiceFlag.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoiceFlag.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colInvoiceFlag.Caption = "Done";
            this.colInvoiceFlag.ColumnEdit = this.riicbDone;
            this.colInvoiceFlag.FieldName = "InvoiceFlag";
            this.colInvoiceFlag.Name = "colInvoiceFlag";
            this.colInvoiceFlag.OptionsColumn.AllowIncrementalSearch = false;
            this.colInvoiceFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colInvoiceFlag.Visible = true;
            this.colInvoiceFlag.Width = 55;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Other Information\r\n(Same figure at level 1,2,3)";
            this.gridBand9.Columns.Add(this.colNumOfProject);
            this.gridBand9.Columns.Add(this.colReport);
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Tag = 1;
            this.gridBand9.Visible = false;
            this.gridBand9.Width = 200;
            // 
            // colNumOfProject
            // 
            this.colNumOfProject.AppearanceCell.Options.UseTextOptions = true;
            this.colNumOfProject.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colNumOfProject.Caption = "No. Of Project";
            this.colNumOfProject.FieldName = "NumOfProject";
            this.colNumOfProject.Name = "colNumOfProject";
            this.colNumOfProject.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colNumOfProject.Width = 101;
            // 
            // colReport
            // 
            this.colReport.Caption = "PO Form";
            this.colReport.ColumnEdit = this.ribeReport;
            this.colReport.FieldName = "CheckFlag";
            this.colReport.Name = "colReport";
            this.colReport.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colReport.Width = 71;
            // 
            // ribeReport
            // 
            this.ribeReport.AutoHeight = false;
            this.ribeReport.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribeReport.Name = "ribeReport";
            this.ribeReport.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.ribeReport.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeReport_ButtonClick);
            // 
            // colVersionFlag
            // 
            this.colVersionFlag.Caption = "Version Flag";
            this.colVersionFlag.FieldName = "VersionFlag";
            this.colVersionFlag.Name = "colVersionFlag";
            this.colVersionFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colVersionFlag.Width = 91;
            // 
            // colPrice
            // 
            this.colPrice.AppearanceCell.Options.UseTextOptions = true;
            this.colPrice.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPrice.Caption = "Unit Prix";
            this.colPrice.DisplayFormat.FormatString = "N4";
            this.colPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.OptionsColumn.AllowEdit = false;
            this.colPrice.OptionsColumn.AllowIncrementalSearch = false;
            this.colPrice.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPrice.Visible = true;
            this.colPrice.Width = 70;
            // 
            // colPHPOQty
            // 
            this.colPHPOQty.Caption = "Buery Qty";
            this.colPHPOQty.DisplayFormat.FormatString = "#,0.#";
            this.colPHPOQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHPOQty.FieldName = "PHPOQty";
            this.colPHPOQty.Name = "colPHPOQty";
            this.colPHPOQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHPOQty.Width = 78;
            // 
            // colReplacementDesc
            // 
            this.colReplacementDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colReplacementDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colReplacementDesc.Caption = "Qty Replace (Y/N)?";
            this.colReplacementDesc.FieldName = "ReplacementDesc";
            this.colReplacementDesc.Name = "colReplacementDesc";
            this.colReplacementDesc.OptionsColumn.AllowEdit = false;
            this.colReplacementDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colReplacementDesc.Width = 129;
            // 
            // colClassCode
            // 
            this.colClassCode.Caption = "Class Code";
            this.colClassCode.FieldName = "ClassCode";
            this.colClassCode.Name = "colClassCode";
            this.colClassCode.OptionsColumn.AllowEdit = false;
            this.colClassCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colClassCode.Width = 83;
            // 
            // colFlowupFlag
            // 
            this.colFlowupFlag.Caption = "Alert";
            this.colFlowupFlag.FieldName = "FlowupFlag";
            this.colFlowupFlag.Name = "colFlowupFlag";
            this.colFlowupFlag.OptionsColumn.AllowEdit = false;
            this.colFlowupFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colMaterialGroup
            // 
            this.colMaterialGroup.Caption = "Material Group";
            this.colMaterialGroup.FieldName = "MaterialGroup";
            this.colMaterialGroup.Name = "colMaterialGroup";
            this.colMaterialGroup.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMaterialGroup.Width = 104;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Invoice Adjustment - Qty replacement is not necessary";
            this.gridBand7.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandDNCN});
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 456;
            // 
            // bandDNCN
            // 
            this.bandDNCN.Caption = "( Choose either \"Debit Note Issued\" or \"Credit Note Received\" )";
            this.bandDNCN.Columns.Add(this.colPrice);
            this.bandDNCN.Name = "bandDNCN";
            this.bandDNCN.Width = 456;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Split shpt?";
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Visible = false;
            this.gridBand3.Width = 99;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Revised Delivery";
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Visible = false;
            this.gridBand4.Width = 183;
            // 
            // riCheck
            // 
            this.riCheck.AutoHeight = false;
            this.riCheck.Name = "riCheck";
            this.riCheck.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridBand14
            // 
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Width = 167;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Transit Mode Change?";
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Visible = false;
            this.gridBand5.Width = 233;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Mat\'l ETA Date at";
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Visible = false;
            this.gridBand6.Width = 156;
            // 
            // popupMenu1
            // 
            this.popupMenu1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintShipment),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintPO),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnWOReport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWOReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnClone, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopySingle)});
            this.popupMenu1.Manager = this.objbarManager;
            this.popupMenu1.Name = "popupMenu1";
            // 
            // btnPrintShipment
            // 
            this.btnPrintShipment.Caption = "Shipment Detail";
            this.btnPrintShipment.Id = 19;
            this.btnPrintShipment.ImageIndex = 0;
            this.btnPrintShipment.Name = "btnPrintShipment";
            this.btnPrintShipment.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrintShipment_ItemClick);
            // 
            // btnPrintPO
            // 
            this.btnPrintPO.Caption = "PO Form";
            this.btnPrintPO.Id = 20;
            this.btnPrintPO.ImageIndex = 0;
            this.btnPrintPO.Name = "btnPrintPO";
            this.btnPrintPO.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrintPO_ItemClick);
            // 
            // btnWOReport
            // 
            this.btnWOReport.Caption = "POPC - WO Review";
            this.btnWOReport.Id = 21;
            this.btnWOReport.ImageIndex = 3;
            this.btnWOReport.Name = "btnWOReport";
            this.btnWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnWOReport_ItemClick);
            // 
            // btnRWOReport
            // 
            this.btnRWOReport.Caption = "POPC - RWO Review";
            this.btnRWOReport.Id = 22;
            this.btnRWOReport.ImageIndex = 3;
            this.btnRWOReport.Name = "btnRWOReport";
            this.btnRWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRWOReport_ItemClick);
            // 
            // btnClone
            // 
            this.btnClone.Caption = "Clone";
            this.btnClone.Id = 23;
            this.btnClone.ImageIndex = 1;
            this.btnClone.Name = "btnClone";
            this.btnClone.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnClone_ItemClick);
            // 
            // btnCopySingle
            // 
            this.btnCopySingle.Caption = "Copy";
            this.btnCopySingle.Id = 24;
            this.btnCopySingle.ImageIndex = 2;
            this.btnCopySingle.Name = "btnCopySingle";
            this.btnCopySingle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopySingle_ItemClick);
            // 
            // btnShipmentYes
            // 
            this.btnShipmentYes.Caption = "Yes";
            this.btnShipmentYes.Id = 18;
            this.btnShipmentYes.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnAddLots)});
            this.btnShipmentYes.Name = "btnShipmentYes";
            // 
            // btnAddLots
            // 
            this.btnAddLots.Caption = "Add Shipments...";
            this.btnAddLots.Id = 16;
            this.btnAddLots.Name = "btnAddLots";
            // 
            // btnChangeTransitMode
            // 
            this.btnChangeTransitMode.Caption = "Change Transit Mode...";
            this.btnChangeTransitMode.Id = 17;
            this.btnChangeTransitMode.Name = "btnChangeTransitMode";
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Print.png");
            this.imageList1.Images.SetKeyName(1, "Clone.png");
            this.imageList1.Images.SetKeyName(2, "Copy.png");
            this.imageList1.Images.SetKeyName(3, "Preview.png");
            // 
            // btnPOPCForm
            // 
            this.btnPOPCForm.Caption = "PO Summary";
            this.btnPOPCForm.Id = 25;
            this.btnPOPCForm.Name = "btnPOPCForm";
            this.btnPOPCForm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPOPCForm_ItemClick);
            // 
            // btnLevel
            // 
            this.btnLevel.Caption = "Level 3";
            this.btnLevel.Id = 26;
            this.btnLevel.Name = "btnLevel";
            this.btnLevel.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel_ItemClick);
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "Print List";
            this.barSubItem2.Id = 27;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPOPCForm),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplementSheet),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel, true)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnSupplementSheet
            // 
            this.btnSupplementSheet.Caption = "PO Summary - Supplement Sheet";
            this.btnSupplementSheet.Id = 28;
            this.btnSupplementSheet.Name = "btnSupplementSheet";
            this.btnSupplementSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementSheet_ItemClick);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Export Layout";
            this.barButtonItem1.Id = 29;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // POPCLevel3Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POPCLevel3Form";
            this.Size = new System.Drawing.Size(4500, 400);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbDone)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            this.ResumeLayout(false);

        }
        public POPCLevel3Form()
        {
            InitializeComponent();

            POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader1);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader1);

            _sortby = POPCSortBy.ProjectItemCode;

            _PONOs = new List<string>();
            _Supps = new List<string>();
            _SuppRefs = new List<string>();
            _Custs = new List<string>();
            _Colors = new List<string>();
            _ColorShades = new List<string>();
        }

        #region Platform

        PH.POPC.BO.POPCDataContext context;
        public override void DataBind()
        {
            base.DataBind();

            //this.AlwaysShowDesignLayout = true;

            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PH.POPC.BO.PORC);

            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
            this.bandedGridView1.OptionsBehavior.Editable = true;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.POPC.BO.PORC);
            param.WarnRecord = -1;
            this.StartEnquiry(param);

            //foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn item in this.bandedGridView1.Columns)
            //{
            //    item.OptionsColumn.AllowEdit = true;
            //    item.OptionsColumn.ReadOnly = false;

            //}
        }


        #endregion

        #region WaitDialog
        private DevExpress.Utils.WaitDialogForm dlg = null;
        //public void CreateWaitDialog()
        //{
        //    dlg = new DevExpress.Utils.WaitDialogForm(string.Format("Loading {0}...", TutorialName));
        //}
        public void CreateWaitDialog(string caption, string title)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title);
        }
        public void CreateWaitDialog(string caption, string title, Size size)
        {
            dlg = new DevExpress.Utils.WaitDialogForm(caption, title, size);
        }
        public void SetWaitDialogCaption(string fCaption)
        {
            if (dlg != null)
                dlg.Caption = fCaption;
        }
        public void ReleaseWaitDialog()
        {
            if (dlg != null) dlg.Close();
        }
        #endregion

        #region Enquiry

        private POPCSortBy _sortby;

        protected override void OnClickFind()
        {
            using (POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(3))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    EnquiryPOPC(frm.Condition);
                }
            }
        }
        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {
            //this.CreateWaitDialog("Loading data...", "Please waiting");
            try
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                context.Connection.Open();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");
                this.DataContext = context;

                _sortby = condition.SortBy;
                string[] mats = condition.MaterialTypes;

                var cc = from c in context.PORCs
                         where c.Company == condition.Company
                             //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                         && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                         && (c.POColorSizeDetail.VersionFlag ?? false)
                         && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                         && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                         && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "") //&& (!(c.POColorSizeDetail.PODetail.Pending ?? false))
                             //&& (string.IsNullOrEmpty(condition.Supplier) || c.POColorSizeDetail.PODetail.POHeader.Supplier == condition.Supplier)
                         && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
                         && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))

                         // //改為由PO Status判斷，不用SKU的Outstanding Qty判斷，因為有一些PO沒有收完貨，就Cancel或Completed了, Cancel狀態的不顯示出來
                             // //由David修改以下代碼 2020-09-17
                             //&& ((condition.POStatus == 0 && (c.POColorSizeDetail.PODetail.POHeader.Status == "0" || c.POColorSizeDetail.PODetail.POHeader.Status == "1")) //All
                             //   || (condition.POStatus == 1 && c.POColorSizeDetail.PODetail.POHeader.Status == "1")  //Outstanding
                             //   || (condition.POStatus == 2 && c.POColorSizeDetail.PODetail.POHeader.Status == "0")  //Completed
                             //   )


                         && (condition.POStatus == 0 //All
                            || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                            || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                            )

                         //Cancel的PO不显示出来，由David加入 2020-09-18
                         && (c.POColorSizeDetail.PODetail.POHeader.Status != "-1")


                             //&& (!condition.OrderClass.HasValue || c.POColorSizeDetail.PODetail.POHeader.OrderClass == condition.OrderClass)
                         && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.POColorSizeDetail.PODetail.POHeader.OrderClass))
                             //&& (string.IsNullOrEmpty(condition.EndCustCode) || c.POColorSizeDetail.PODetail.POHeader.EndCustCode == condition.EndCustCode)
                         && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.POColorSizeDetail.PODetail.POHeader.EndCustCode))
                         && (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.POColorSizeDetail.PODetail.POHeader.Dept))
                             //&& (string.IsNullOrEmpty(condition.Team) || c.POColorSizeDetail.PODetail.POHeader.Dept == condition.Team)
                         && (string.IsNullOrEmpty(condition.Factory) || c.POColorSizeDetail.PODetail.POHeader.Factory == condition.Factory)
                             //&& (string.IsNullOrEmpty(condition.SuppRef) || c.POColorSizeDetail.SupplierReference == condition.SuppRef)
                         && (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.POColorSizeDetail.SupplierReference))
                             //&& (string.IsNullOrEmpty(condition.ColorCode) || c.POColorSizeDetail.ColorCode == condition.ColorCode)
                         && (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.POColorSizeDetail.ColorCode))
                         && (string.IsNullOrEmpty(condition.Coordinator) || c.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                         && (!condition.Flowup || (c.POColorSizeDetail.FlowupFlag != null && c.POColorSizeDetail.FlowupFlag != ""))
                         && (condition.IssueDateFrom == DateTime.MinValue ||
                               ((c.POColorSizeDetail.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.POColorSizeDetail.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                            )
                         && (condition.DeliveryDateFrom == DateTime.MinValue ||
                               ((c.POColorSizeDetail.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.POColorSizeDetail.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                            )
                         && (condition.ExftyDateFrom == DateTime.MinValue ||
                               ((c.POColorSizeDetail.WOExftyDate) >= condition.ExftyDateFrom && (c.POColorSizeDetail.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                            )

                         && (string.IsNullOrEmpty(condition.MaterialGroup) || mats.Contains(c.SKU.Substring(0, Math.Min(3, c.SKU.Length))))//iqc
                         && (condition.PointDestFrom == DateTime.MinValue ||
                               (c.POColorSizeDetail.PODetail.ConfirmETADate.HasValue && (c.POColorSizeDetail.PODetail.ConfirmETADate.Value.AddDays(c.POColorSizeDetail.PODetail.POHeader.TransitFrame ?? 0)) >= condition.PointDestFrom
                                  && (c.POColorSizeDetail.PODetail.ConfirmETADate.Value.AddDays(c.POColorSizeDetail.PODetail.POHeader.TransitFrame ?? 0)) < condition.PointDestTo.AddDays(1))
                            )//iqc
                         orderby c.PONO, c.OrderLine, c.SKU, c.RCNO
                         select c;

                //calc [InvoiceAmount] = Supp Qty * Unit Price
                foreach (var c in cc)
                {
                    if (!c.InvoiceAmount.HasValue)
                        c.InvoiceAmount = Convert.ToDouble(c.SuppRCQty * c.Price);

                    //由于计算WO FW Start Date和WO Ex-fty Date放在BO中太慢，所以改为在取数时直接计算出来，2022-06-08由David修改
                    c.WOFWStartDate = (DataContext as POPCDataContext).fn_GetOurWOFWStartDate(c.POColorSizeDetail.PODetail.ProjectNo, (c.POColorSizeDetail.WOSeqNo ?? 1));
                    c.WOExftyDate = (DataContext as POPCDataContext).fn_GetOurWOExFtyDate(c.POColorSizeDetail.PODetail.ProjectNo, (c.POColorSizeDetail.WOSeqNo ?? 1));

                }

                this.BindingSource.DataSource = cc;

                GridViewSort();
            }
            finally
            {
                //ReleaseWaitDialog();
            }

        }

        #endregion

        #region Grid Event

        protected override void ProcessGridView()
        {
            base.ProcessGridView();
            this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
        }
        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {
            //PH.POPC.BO.POSKUOperate ms1 = this.bandedGridView1.GetRow(e.RowHandle1) as PH.POPC.BO.POSKUOperate;
            //PH.POPC.BO.POSKUOperate ms2 = this.bandedGridView1.GetRow(e.RowHandle2) as PH.POPC.BO.POSKUOperate;

            //switch (e.Column.FieldName)
            //{
            //    //header
            //    case "Supplier":
            //    case "PONO":
            //    case "TimeFrame1":
            //    case "TimeFrame2":
            //    case "Incoterms":
            //    case "TransitModePO":
            //    case "TransitPoint":
            //    case "EndPoint":
            //    case "SupplierLocation":
            //    case "EndCustCode":
            //    case "PurchaseOfficer":
            //    case "Team":
            //    case "Factory":
            //    case "POStatus":
            //    case "CheckFlag":
            //        e.Merge = (ms1.PONO == ms2.PONO);
            //        e.Handled = true;
            //        break;
            //    //detail
            //    case "ItemCode":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.ItemCode == ms2.ItemCode);
            //        e.Handled = true;
            //        break;
            //    case "ProjectNo":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.ProjectNo == ms2.ProjectNo);
            //        e.Handled = true;
            //        break;
            //    case "PODeliveryDate":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.PODeliveryDate == ms2.PODeliveryDate);
            //        e.Handled = true;
            //        break;
            //    //sku
            //    case "ColorCode":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.ColorCode == ms2.ColorCode);
            //        e.Handled = true;
            //        break;
            //    case "ColorShade":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.ColorShade == ms2.ColorShade);
            //        e.Handled = true;
            //        break;
            //    case "CustStyleNo":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.CustStyleNo == ms2.CustStyleNo);
            //        e.Handled = true;
            //        break;
            //    case "SupplierUOM":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.SupplierUOM == ms2.SupplierUOM);
            //        e.Handled = true;
            //        break;
            //    case "SupplierReference":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.SupplierReference == ms2.SupplierReference);
            //        e.Handled = true;
            //        break;
            //    case "SizeDesc":
            //    case "FitDesc":
            //    case "PartialShipmentDesc":
            //    case "POQty":

            //    case "BulkSubmitSeq":
            //    case "BulkReceiptDate":
            //    case "BulkSubmitNo":
            //    case "BulkCompletedDate":
            //    case "BulkStatus":
            //    case "BulkQty":
            //    case "BulkDropDeadDate":

            //    case "RCQty":
            //    case "RCNO":
            //    case "RCDate":
            //    case "RCReplacement":
            //        //case "RevisedDeliveryDesc":
            //        //case "TransitModeHaveChangedDesc":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.OrderLine == ms2.OrderLine && ms1.SKU == ms2.SKU);
            //        e.Handled = true;
            //        break;
            //    default:
            //        break;

            //}
        }

        private void bandedGridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            //if (e.Column.FieldName == "DeliveryDiff")
            //{
            //    object obj = bandedGridView1.GetRowCellValue(e.RowHandle, "DeliveryDiff");
            //    if (obj == null) return;

            //    int diff = Convert.ToInt32(obj);

            //    //e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
            //    if (diff < 0) e.Appearance.ForeColor = Color.Red;
            //    else if (diff == 0) e.Appearance.ForeColor = Color.Blue;
            //}
        }

        private void bandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {
            //PH.POPC.BO.POSKUOperate currLot = this.BindingSource.Current as PH.POPC.BO.POSKUOperate;
            //if (currLot == null) return;

            //if (bandedGridView1.FocusedColumn.FieldName == "ReceiveDate" || bandedGridView1.FocusedColumn.FieldName == "Qty")
            //{
            //    //bool bReadOnly = (currLot.POColorSizeDetail.StockInConfirmed) && !currLot.IsOutStanding;
            //    //e.Cancel = bReadOnly;
            //}
        }
        private void objListGridControl_Load(object sender, EventArgs e)
        {
            this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            //this.bandedGridView1.OptionsSelection.MultiSelect = true;
            //this.bandedGridView1.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            InitCustomSummary();
        }

        private void GridViewSort()
        {
            this.bandedGridView1.BeginSort();
            try
            {
                this.bandedGridView1.ClearSorting();
                //Group
                //this.bandedGridView1.ClearGrouping();
                //this.colTeam.GroupIndex = 0;
                //this.colPurchaseOfficer.GroupIndex = 1;

                switch (_sortby)
                {
                    case POPCSortBy.ProjectItemCode:
                        this.colTeam.SortOrder = ColumnSortOrder.Ascending;
                        this.colPurchaseOfficer.SortOrder = ColumnSortOrder.Ascending;
                        this.colProjectNo.SortOrder = ColumnSortOrder.Ascending;
                        this.colSKU.SortOrder = ColumnSortOrder.Ascending;
                        this.colPONO.SortOrder = ColumnSortOrder.Ascending;
                        this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;

                        break;
                    case POPCSortBy.ItemCodeProject:
                        this.colTeam.SortOrder = ColumnSortOrder.Ascending;
                        this.colPurchaseOfficer.SortOrder = ColumnSortOrder.Ascending;
                        this.colSKU.SortOrder = ColumnSortOrder.Ascending;
                        this.colProjectNo.SortOrder = ColumnSortOrder.Ascending;
                        this.colPONO.SortOrder = ColumnSortOrder.Ascending;
                        this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;

                        break;
                    case POPCSortBy.SuppDeliveryDate:
                        this.colTeam.SortOrder = ColumnSortOrder.Ascending;
                        this.colPurchaseOfficer.SortOrder = ColumnSortOrder.Ascending;
                        this.colSupplier.SortOrder = ColumnSortOrder.Ascending;
                        this.colPODeliveryDate.SortOrder = ColumnSortOrder.Ascending;
                        this.colPONO.SortOrder = ColumnSortOrder.Ascending;
                        this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;
                        this.colSKU.SortOrder = ColumnSortOrder.Ascending;

                        break;
                    default:
                        break;
                }

            }
            finally
            {
                this.bandedGridView1.EndSort();
            }

        }



        #endregion

        #region Popup Menu

        private void bandedGridView1_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
            {
                DoShowMenu(this.bandedGridView1.CalcHitInfo(new Point(e.X, e.Y)));
            }
        }
        private void DoShowMenu(DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hi)
        {
            //DevExpress.XtraGrid.Menu.GridViewMenu menu = null;

            if (hi.HitTest == DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitTest.RowCell)
            {
                this.bandedGridView1.FocusedRowHandle = hi.RowHandle;
                this.bandedGridView1.FocusedColumn = hi.Column;

                PH.POPC.BO.PORC currLot = this.BindingSource.Current as PH.POPC.BO.PORC;
                if (currLot == null) return;

                #region Copy Menu

                btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
                if (focusCol != null)
                {

                    if (focusCol == colRCRDate || focusCol == colRCRNO || focusCol == colRCRQty || focusCol == colRCRFlag)
                        btnCopySingle.Caption = string.Format("Copy - Qty Replacement: {0}", focusCol.Caption);
                    else if (focusCol == colInvoiceDate || focusCol == colDebitNoteNO || focusCol == colCreditNoteNO || focusCol == colInvoiceFlag)
                        btnCopySingle.Caption = string.Format("Copy -  Debit/Credit Note: {0}", focusCol.Caption);
                    else
                        btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

                    if (focusCol.OwnerBand == bandQtyReplace)
                    {
                        btnClone.Caption = "Clone - Qty Replacement";
                    }
                    else if (focusCol.OwnerBand == bandDNCN)
                    {
                        btnClone.Caption = "Clone - Debit/Credit Note";
                    }
                    else
                        btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

                    if (bandedGridView1.SelectedRowsCount <= 1)
                        btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                }
                else
                {
                    btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                }


                #endregion

                popupMenu1.ShowPopup(Control.MousePosition);
            }
        }


        #endregion

        #region Print - PO Form & Shipment Detail

        private void btnPrintShipment_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ShowShipmentReport();
        }
        private void ShowShipmentReport()
        {
            PH.POPC.BO.PORC pur = this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle) as PH.POPC.BO.PORC;
            if (pur == null) return;
            PH.POPC.BackEnd.ReportHelper reportHelper = new PH.POPC.BackEnd.ReportHelper();
            DataTable dt = POPCReport.GetShipmentDetail(pur.POColorSizeDetail);
            DevExpress.XtraReports.UI.XtraReport report = reportHelper.DoShipmentDetailPrint(dt);
            report.ShowPreviewDialog();
        }


        private void btnPrintPO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ShowPOForm();
        }
        private void ribeReport_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            ShowPOForm();
        }
        private void ShowPOForm()
        {
            PH.POPC.BO.PORC currLot = this.BindingSource.Current as PH.POPC.BO.PORC;
            if (currLot == null) return;

            //Report.POFormatForm frm = new PH.POPC.UI.Report.POFormatForm(currLot.Company, currLot.PONO);
            Report.POFormatForm frm = new PH.POPC.UI.Report.POFormatForm(currLot.Company, currLot.POColorSizeDetail.PODetail.POHeader);
            frm.ShowDialog();
        }

        private void btnWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;
            POPCReport.ShowPOPCWOReport(currLot.ProjectNO);
        }
        private void btnRWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;
            POPCReport.ShowPOPCRWOReport(currLot.ProjectNO);
        }

        private void btnPOPCForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.None);
        }
        private void btnLevel_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Three);

        }
        private void btnSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.None);

        }


        #endregion

        #region Copy

        private void btnClone_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CloneData();
        }
        private void CloneData()
        {
            PH.POPC.BO.PORC currLot = this.BindingSource.Current as PH.POPC.BO.PORC;
            if (currLot == null) return;

            //string caption = "Copy Data";
            //if (bandedGridView1.SelectedRowsCount <= 1)
            //    caption = "Modify Data";

            string hint = this.bandedGridView1.FocusedColumn.Caption;
            //string defalutValue = "";

            //DevExpress.XtraGrid.Columns.GridColumn focusCol = this.bandedGridView1.FocusedColumn;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (focusCol.OwnerBand == bandQtyReplace)
            {
                CopyQtyReplace(currLot);
            }
            else if (focusCol.OwnerBand == bandDNCN)
            {
                CopyDNCN(currLot);
            }
        }
        private void CopyQtyReplace(PORC d)
        {
            if (MessageBox.Show("Do you want to Copy Qty Replacement?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Copy data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];
                    if (j >= 0)
                    {
                        PORC currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.PORC;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.Company == currLot.Company && d.PONO == currLot.PONO && d.Version == currLot.Version && d.AmendmentNo == currLot.AmendmentNo
                            && d.OrderLine == currLot.OrderLine && d.SKU == currLot.SKU && d.RCNO == currLot.RCNO)
                            continue;

                        #region Copy action

                        currLot.RCRNO = d.RCRNO;
                        currLot.RCRDate = d.RCRDate;
                        currLot.RCRQty = d.RCRQty;

                        #endregion

                        this.bandedGridView1.FocusedRowHandle = j;
                    }
                }
            }
            finally
            {
                ReleaseWaitDialog();
                this.bandedGridView1.FocusedRowHandle = currHandle;
                this.bandedGridView1.EndUpdate();
            }

            this.SaveData();

        }

        private void CopyDNCN(PORC d)
        {
            if (MessageBox.Show("Do you want to Copy Debit/Credit Note?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Copy data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];
                    if (j >= 0)
                    {
                        PORC currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.PORC;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.Company == currLot.Company && d.PONO == currLot.PONO && d.Version == currLot.Version && d.AmendmentNo == currLot.AmendmentNo
                            && d.OrderLine == currLot.OrderLine && d.SKU == currLot.SKU && d.RCNO == currLot.RCNO)
                            continue;

                        #region Copy action

                        currLot.CreditNoteNO = d.CreditNoteNO;
                        currLot.DebitNoteNO = d.DebitNoteNO;
                        currLot.InvoiceDate = d.InvoiceDate;

                        #endregion

                        this.bandedGridView1.FocusedRowHandle = j;
                    }
                }
            }
            finally
            {
                ReleaseWaitDialog();
                this.bandedGridView1.FocusedRowHandle = currHandle;
                this.bandedGridView1.EndUpdate();
            }

            this.SaveData();

        }

        private void btnCopySingle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CopySingleColumnData();
        }
        private void CopySingleColumnData()
        {
            int currHandle = bandedGridView1.FocusedRowHandle;

            PH.POPC.BO.PORC currLot = this.BindingSource.Current as PH.POPC.BO.PORC;
            if (currLot == null) return;

            string caption = "Copy Data";
            if (bandedGridView1.SelectedRowsCount <= 1)
                caption = "Modify Data";

            string hint = this.bandedGridView1.FocusedColumn.Caption;
            object defalutValue = "";

            //DevExpress.XtraGrid.Columns.GridColumn focusCol = this.bandedGridView1.FocusedColumn;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;

            TypeCode tc = TypeCode.String;

            #region 判斷當前選中的字段

            //RCR
            if (focusCol == colRCRFlag)
            {
                defalutValue = (currLot.RCRFlag ?? false) ? "Y" : "N";
                tc = TypeCode.Boolean;
            }
            else if (focusCol == colRCRDate)
            {
                defalutValue = currLot.RCRDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colRCRQty)
            {
                defalutValue = currLot.RCRQty;
                tc = TypeCode.Decimal;
            }
            else if (focusCol == colRCRNO)
                defalutValue = currLot.RCRNO;


            //Debit/Credit Note
            else if (focusCol == colInvoiceDate)
            {
                defalutValue = currLot.InvoiceDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colDebitNoteNO)
            {
                defalutValue = currLot.DebitNoteNO;
            }
            else if (focusCol == colCreditNoteNO)
            {
                defalutValue = currLot.CreditNoteNO;
            }
            else if (focusCol == colInvoiceFlag)
            {
                defalutValue = (currLot.InvoiceFlag ?? false) ? "Y" : "N";
                tc = TypeCode.Boolean;
            }

            #endregion

            #region InputBox

            if (InputBox.Show(focusCol.FieldName, caption, hint, null, false, tc, ref defalutValue))
            {
                DateTime? dt = null;
                string svalue = "";
                decimal? d = null;
                bool? b = null;

                if (tc == TypeCode.DateTime)
                {
                    if (defalutValue != null)
                        dt = Convert.ToDateTime(defalutValue);
                }
                else if (tc == TypeCode.Decimal)
                    d = Convert.ToDecimal(defalutValue);
                else if (tc == TypeCode.Boolean)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(defalutValue)))
                        b = Convert.ToString(defalutValue) == "Y";
                }
                else
                    svalue = Convert.ToString(defalutValue);

                this.CreateWaitDialog(caption + "...", "Please waiting");
                this.bandedGridView1.BeginUpdate();
                try
                {
                    for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                    {
                        int j = bandedGridView1.GetSelectedRows()[i];//selected handle
                        if (j >= 0)
                        {
                            #region 判斷選中的格子是否在列

                            DevExpress.XtraGrid.Columns.GridColumn[] cells = bandedGridView1.GetSelectedCells(j);
                            bool isIn = false;
                            foreach (DevExpress.XtraGrid.Columns.GridColumn cell in cells)
                            {
                                if (cell == focusCol)
                                {
                                    isIn = true;
                                    break;
                                }
                            }
                            if (!isIn) continue;

                            #endregion

                            currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.PORC;
                            if (currLot == null) continue;

                            #region Normal text

                            if (focusCol == colRCRFlag)
                            {
                                currLot.RCRFlag = b;
                            }
                            else if (focusCol == colRCRDate)
                            {
                                currLot.RCRDate = dt;
                            }
                            else if (focusCol == colRCRQty)
                            {
                                currLot.RCRQty = d;
                            }
                            else if (focusCol == colRCRNO)
                                currLot.RCRNO = svalue;


                            //Debit/Credit Note
                            else if (focusCol == colInvoiceDate)
                            {
                                currLot.InvoiceDate = dt;
                            }
                            else if (focusCol == colDebitNoteNO)
                            {
                                currLot.DebitNoteNO = svalue;
                            }
                            else if (focusCol == colCreditNoteNO)
                            {
                                currLot.CreditNoteNO = svalue;
                            }
                            else if (focusCol == colInvoiceFlag)
                            {
                                currLot.InvoiceFlag = b;
                            }

                            #endregion

                            this.bandedGridView1.FocusedRowHandle = j;

                        }
                    }
                }
                finally
                {
                    ReleaseWaitDialog();
                    this.bandedGridView1.FocusedRowHandle = currHandle;
                    this.bandedGridView1.EndUpdate();
                }

                this.SaveData();
            }

            #endregion
        }

        #endregion

        #region Summary

        private void InitCustomSummary()
        {
            SetColumnCustomSummary("PONO");
            SetColumnCustomSummary("Supplier");
            SetColumnCustomSummary("SupplierReference");
            SetColumnCustomSummary("EndCustCode");
            SetColumnCustomSummary("ColorCode");
            SetColumnCustomSummary("ColorShade");
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.CustomSummaryCalculate += new CustomSummaryEventHandler(bandedGridView1_CustomSummaryCalculate);
        }
        private void SetColumnCustomSummary(string fieldName)
        {
            DevExpress.XtraGrid.Columns.GridColumn col = this.bandedGridView1.Columns[fieldName];
            if (col == null) return;

            col.SummaryItem.SummaryType = SummaryItemType.Custom;
            col.SummaryItem.DisplayFormat = "{0}";
            //col.SummaryItem.DisplayFormat = "Nr. {0}";
            col.SummaryItem.Tag = fieldName;

        }

        List<string> _PONOs;
        List<string> _Supps;
        List<string> _SuppRefs;
        List<string> _Custs;
        List<string> _Colors;
        List<string> _ColorShades;

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            // Get the summary ID.
            string summaryID = Convert.ToString((e.Item as GridSummaryItem).Tag);
            if (string.IsNullOrEmpty(summaryID)) return;

            GridView view = sender as GridView;

            // Initialization
            if (e.SummaryProcess == CustomSummaryProcess.Start)
            {
                _PONOs.Clear();
                _Supps.Clear();
                _SuppRefs.Clear();
                _Custs.Clear();
                _Colors.Clear();
                _ColorShades.Clear();
            }
            // Calculation
            if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            {
                string pono = (string)view.GetRowCellValue(e.RowHandle, "PONO");
                string supp = (string)view.GetRowCellValue(e.RowHandle, "Supplier");
                string suppref = (string)view.GetRowCellValue(e.RowHandle, "SupplierReference");
                string cust = (string)view.GetRowCellValue(e.RowHandle, "EndCustCode");
                string color = (string)view.GetRowCellValue(e.RowHandle, "ColorCode");
                string colorShade = (string)view.GetRowCellValue(e.RowHandle, "ColorShade");

                switch (summaryID)
                {
                    case "PONO":
                        if (!string.IsNullOrEmpty(pono) && !_PONOs.Contains(pono))
                            _PONOs.Add(pono);
                        break;
                    case "Supplier":
                        if (!string.IsNullOrEmpty(supp) && !_Supps.Contains(supp))
                            _Supps.Add(supp);
                        break;
                    case "SupplierReference":
                        if (!string.IsNullOrEmpty(suppref) && !_SuppRefs.Contains(suppref))
                            _SuppRefs.Add(suppref);
                        break;

                    case "EndCustCode":
                        if (!string.IsNullOrEmpty(cust) && !_Custs.Contains(cust))
                            _Custs.Add(cust);
                        break;
                    case "ColorCode":
                        if (!string.IsNullOrEmpty(color) && !_Colors.Contains(color))
                            _Colors.Add(color);
                        break;
                    case "ColorShade":
                        if (!string.IsNullOrEmpty(colorShade) && !_ColorShades.Contains(colorShade))
                            _ColorShades.Add(colorShade);
                        break;
                }
            }
            // Finalization
            if (e.SummaryProcess == CustomSummaryProcess.Finalize)
            {
                switch (summaryID)
                {
                    case "PONO":
                        e.TotalValue = _PONOs.Count;
                        break;
                    case "Supplier":
                        e.TotalValue = _Supps.Count;
                        break;
                    case "SupplierReference":
                        e.TotalValue = _SuppRefs.Count;
                        break;

                    case "EndCustCode":
                        e.TotalValue = _Custs.Count;
                        break;
                    case "ColorCode":
                        e.TotalValue = _Colors.Count;
                        break;
                    case "ColorShade":
                        e.TotalValue = _ColorShades.Count;
                        break;
                }
            }

        }

        #endregion

        public override OptionsLayoutGrid SetOptionLayout()
        {
            //return base.SetOptionLayout();
            OptionsLayoutGrid opts = new OptionsLayoutGrid();
            opts.StoreAllOptions = false; //default is false;
            opts.StoreAppearance = false; //default is false;
            opts.StoreVisualOptions = true; //default is true;
            opts.StoreDataSettings = true; //default is true;
            opts.Columns.StoreAllOptions = false; //default is false;
            opts.Columns.StoreAppearance = false; //default is false;
            opts.Columns.StoreLayout = true; //defautl value is true

            opts.Columns.AddNewColumns = true; //default is true
            opts.Columns.RemoveOldColumns = true; //default is true
            return opts;
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.SaveLayoutToXml(this.bandedGridView1);
        }

    }
}
