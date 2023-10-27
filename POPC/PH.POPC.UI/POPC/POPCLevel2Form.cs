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
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using DevExpress.Data;
using DevExpress.Utils.Drawing;
using DevExpress.XtraBars;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.Platform.ExtendLibrary;
using PH.Platform.Misc.BO;
using PH.Platform.UI.CS.DataQuery;
using PH.POPC.BO;
using PH.POPC.UI.ActionLog;
using PH.POPC.UI.POPC;

namespace PH.POPC.UI
{
    public partial class POPCLevel2Form : PH.Platform.UI.CS.UI2.ListForm
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
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHandleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOperateDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChangedTimeFrame1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGrossQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStockInDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStockInQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStockInOperator;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDeliveryDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsOutStanding;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandChangeMonitor;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPartialShipment;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHowManyLot;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRevisedDelivery;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReceiveDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitModeHaveChanged;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitMode1Change;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitModeChangeT1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitModeChangeT2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialETADate1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialETADate2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCummQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit riCheck;
        private DevExpress.XtraBars.BarButtonItem btnAddLots;
        private DevExpress.XtraBars.PopupMenu popupMenu1;
        private IContainer components;
        private DevExpress.XtraBars.BarButtonItem btnChangeTransitMode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVersionFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHandleType;
        private DevExpress.XtraBars.BarSubItem btnShipmentYes;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGoodsInwardDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGoodsInwardQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFactory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierLocation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOReqDeliveryDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierReference;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorShade;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierUOM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseOfficer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTeam;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReport;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeReport;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActualStockInDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCNO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCReplacement;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOIssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOExftyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustOrderNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOurSizeDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOurFitDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHBalanceQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOBalancePercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNumOfProject;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riPHDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClassCode;
        private DevExpress.XtraBars.BarButtonItem btnPrintShipment;
        private DevExpress.XtraBars.BarButtonItem btnPrintPO;
        private DevExpress.XtraBars.BarButtonItem btnWOReport;
        private DevExpress.XtraBars.BarButtonItem btnRWOReport;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHUOM;
        private ImageList imageList1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCurrency;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeNotify;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderClassDesc;
        private DevExpress.XtraBars.BarButtonItem btnPOPCNotify;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colETAPointOfDestDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandSuppRef;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTime;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandCust;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandDelRef;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPointCode;
        private DevExpress.XtraBars.BarButtonItem btnFrontPage;
        private DevExpress.XtraBars.BarButtonItem btnLevel2b;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandPage2Key;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn5;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnSupplementSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBrandName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDODate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRWO_FWStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRWO_ExftyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRWO_QTY;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRWO_DaysDiff;
        private DevExpress.XtraBars.BarButtonItem btnLevel2a;
        private DevExpress.XtraBars.BarButtonItem btnL2Supplement;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRoundNo;
        private DevExpress.XtraBars.BarButtonItem btnLevel2aC;
        private DevExpress.XtraBars.BarButtonItem btnLevel2bC;
        private DevExpress.XtraBars.BarButtonItem btnL2SupplementC;
        private DevExpress.XtraBars.BarButtonItem btnItemChanged;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFlowupFlag;
        private DevExpress.XtraBars.BarSubItem barSubItem3;
        private DevExpress.XtraBars.BarSubItem barSubItem4;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAdviceNote;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActualETA;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActualETD;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBuyerCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDeliveryRouting;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand BandItemSizeMatrix;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand14;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colArrivalPointofdestinationShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitMode2Show;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOFWStartDate;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand15;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand16;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand17;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand18;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand19;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand20;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand21;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand22;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand23;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand24;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand25;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitMode2Change;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_TransitMode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTimeFrame1Change;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTimeFrame2Change;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand26;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand27;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand28;
        //private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand29;
        //private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand30;
        //private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand31;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand32;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand33;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand34;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand35;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand36;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand37;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPORevFigure;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand29;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand30;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand31;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand GBandDedRes;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand39;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand40;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand41;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand42;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand43;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand44;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSplitMode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colExftyWindows;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand45;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogTaking;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogTargetDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogRevisedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogCmplDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_YN;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_ActionLog;
        private BarButtonItem barButtonItemActionLogGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChosenWO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalWO;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand46;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand47;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand48;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_WOSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOActualTransitDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand49;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialStandBy;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_MaterialStandby;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStartWindows;
        private BarButtonItem barButtonItemActionLogSingle;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFillUpDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogCategory;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand50;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAffectPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAffectDays;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand51;
        private BarButtonItem barButtonItemMaterialStandby_Y;
        private BarButtonItem barButtonItemMaterialStandby_N;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRCCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStockInUseful;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNetQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand52;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand53;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRelatedShptPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDRQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNonPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNonProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand GBandDedResNew;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand55;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand56;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDRQPOSuffix;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repDRQPOSuffix;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand62;
        private BarButtonItem btnExport;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riDate;
        #endregion

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(POPCLevel2Form));
            this.colOddEvenRowFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.bandPO = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCompany = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderClassDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBuyerCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsOutStanding = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOIssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riPHDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSKU = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHandleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOperateDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStockInOperator = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandSuppRef = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplier = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierLocation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandQty = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand29 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPOQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPORevFigure = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand51 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand30 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHBalanceQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOBalancePercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand31 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplierUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOurSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOurFitDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFitDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandCust = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colEndCustCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBrandName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustOrderNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGmtColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandTime = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTotalWO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemButtonEdit_WOSeqNo = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colClassCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChosenWO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOFWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPOReqDeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPODeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReceiveDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOActualTransitDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDeliveryDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colIncoterms = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDeliveryRouting = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitPointCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandDelRef = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandPage2Key = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandChangeMonitor = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPartialShipment = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHowManyLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSplitMode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCummQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRevisedDelivery = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitModeHaveChanged = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand22 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitModePO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitMode1Change = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_TransitMode = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gridBand23 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitMode2Show = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitMode2Change = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand24 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTimeFrame1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrame1Change = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitModeChangeT1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand25 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTimeFrame2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrame2Change = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitModeChangeT2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand62 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand26 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colEndCustColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colETAPointOfDestDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialETADate1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand27 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colArrivalPointofdestinationShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialETADate2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActualStockInDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.GBandDedRes = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand39 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand40 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGoodsInwardDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGoodsInwardQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHDODate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHandleType = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand41 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand42 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStockInQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStockInDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand43 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRCCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFillUpDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand44 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colChangedTimeFrame1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand52 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGrossQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colNetQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStockInUseful = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.GBandDedResNew = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand55 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDRQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDRQPOSuffix = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repDRQPOSuffix = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gridBand56 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colNonPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colNonProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand53 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRWO_DaysDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand50 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colAffectPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAffectDays = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colNumOfProject = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReport = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ribeReport = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.gridBand45 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStartWindows = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colExftyWindows = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand46 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand47 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogTaking = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_YN = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colActionLogSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemButtonEdit_ActionLog = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colActionLogCategory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRelatedShptPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand48 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogTargetDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogRevisedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogCmplDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand49 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMaterialStandBy = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_MaterialStandby = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colVersionFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCNO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRCReplacement = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riCheck = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRWO_FWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRWO_ExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRWO_QTY = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRoundNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFlowupFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAdviceNote = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActualETA = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActualETD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand32 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand33 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand34 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand35 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand36 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand37 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand28 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.ribeNotify = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.btnAddLots = new DevExpress.XtraBars.BarButtonItem();
            this.btnChangeTransitMode = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintShipment = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintPO = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnPOPCNotify = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemActionLogGroup = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemActionLogSingle = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemMaterialStandby_Y = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemMaterialStandby_N = new DevExpress.XtraBars.BarButtonItem();
            this.btnShipmentYes = new DevExpress.XtraBars.BarSubItem();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btnFrontPage = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel2b = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.barSubItem3 = new DevExpress.XtraBars.BarSubItem();
            this.btnSupplementSheet = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel2a = new DevExpress.XtraBars.BarButtonItem();
            this.btnL2Supplement = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem4 = new DevExpress.XtraBars.BarSubItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel2aC = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel2bC = new DevExpress.XtraBars.BarButtonItem();
            this.btnL2SupplementC = new DevExpress.XtraBars.BarButtonItem();
            this.btnItemChanged = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.btnExport = new DevExpress.XtraBars.BarButtonItem();
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
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_WOSeqNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_TransitMode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repDRQPOSuffix)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_YN)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_MaterialStandby)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeNotify)).BeginInit();
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
            this.btnPOPCNotify,
            this.btnFrontPage,
            this.btnLevel2b,
            this.barSubItem2,
            this.btnSupplementSheet,
            this.btnLevel2a,
            this.btnL2Supplement,
            this.btnLevel2aC,
            this.btnLevel2bC,
            this.btnL2SupplementC,
            this.btnItemChanged,
            this.barSubItem3,
            this.barSubItem4,
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItemActionLogGroup,
            this.barButtonItemActionLogSingle,
            this.barButtonItemMaterialStandby_Y,
            this.barButtonItemMaterialStandby_N,
            this.btnExport});
            this.objbarManager.MaxItemId = 44;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem2, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barButtonItem3, false),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnExport, true)});
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
            this.repositoryItemMemoExEdit1,
            this.ribeNotify,
            this.repositoryItemComboBox_TransitMode,
            this.repositoryItemButtonEdit_ActionLog,
            this.repositoryItemComboBox_YN,
            this.repositoryItemButtonEdit_WOSeqNo,
            this.repositoryItemComboBox_MaterialStandby,
            this.repDRQPOSuffix});
            this.objListGridControl.Size = new System.Drawing.Size(6200, 373);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            this.objListGridControl.Paint += new System.Windows.Forms.PaintEventHandler(this.objListGridControl_Paint);
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POChangesMonitor);
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
            this.colOddEvenRowFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOddEvenRowFlag.Width = 119;
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
            this.gridBand2,
            this.gridBand1,
            this.bandSuppRef,
            this.bandQty,
            this.gridBand10,
            this.bandCust,
            this.bandTime,
            this.bandDelRef,
            this.bandPage2Key,
            this.bandChangeMonitor,
            this.GBandDedRes,
            this.GBandDedResNew,
            this.gridBand8,
            this.gridBand9,
            this.gridBand45,
            this.gridBand46,
            this.gridBand49});
            this.bandedGridView1.ColumnPanelRowHeight = 50;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colCompany,
            this.colPONO,
            this.colVersion,
            this.colAmendmentNo,
            this.colOrderLine,
            this.colSKU,
            this.colHandleNo,
            this.colRemark,
            this.colOperateDate,
            this.colReceiveDate,
            this.colQty,
            this.colTransitMode1Change,
            this.colChangedTimeFrame1,
            this.colGrossQty,
            this.colStockInDate,
            this.colStockInQty,
            this.colStockInOperator,
            this.colPercent,
            this.colPHQty,
            this.colPartialShipment,
            this.colRevisedDelivery,
            this.colTransitModeHaveChanged,
            this.colTransitModeChangeT1,
            this.colTransitModeChangeT2,
            this.colMaterialETADate1,
            this.colMaterialETADate2,
            this.colCummQty,
            this.colDeliveryDiff,
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
            this.colHowManyLot,
            this.colItemCode,
            this.colColorCode,
            this.colSizeDesc,
            this.colFitDesc,
            this.colVersionFlag,
            this.colHandleType,
            this.colGoodsInwardDate,
            this.colGoodsInwardQty,
            this.colFactory,
            this.colSupplierLocation,
            this.colEndCustCode,
            this.colPOReqDeliveryDate,
            this.colCustStyleNo,
            this.colPOQty,
            this.colSupplierReference,
            this.colColorShade,
            this.colSupplierUOM,
            this.colPurchaseOfficer,
            this.colTeam,
            this.colReport,
            this.colActualStockInDate,
            this.colRCQty,
            this.colRCNO,
            this.colRCDate,
            this.colRCReplacement,
            this.colPOIssueDate,
            this.colWOExftyDate,
            this.colCustOrderNo,
            this.colOurSizeDesc,
            this.colOurFitDesc,
            this.colPHBalanceQty,
            this.colPOBalancePercent,
            this.colNumOfProject,
            this.colEndCustColor,
            this.colClassCode,
            this.colPHUOM,
            this.colPrice,
            this.colCurrency,
            this.colOrderClassDesc,
            this.colETAPointOfDestDate,
            this.colTransitPointCode,
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.bandedGridColumn3,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.colBrandName,
            this.colGmtColorName,
            this.colItemColorName,
            this.colHDODate,
            this.colRWO_FWStartDate,
            this.colRWO_ExftyDate,
            this.colRWO_QTY,
            this.colRWO_DaysDiff,
            this.colRoundNo,
            this.colFlowupFlag,
            this.colAdviceNote,
            this.colMaterialGroup,
            this.colActualETA,
            this.colActualETD,
            this.colBuyerCode,
            this.colDeliveryRouting,
            this.colArrivalPointofdestinationShow,
            this.colTransitMode2Show,
            this.colWOFWStartDate,
            this.colTransitMode2Change,
            this.colTimeFrame1Change,
            this.colTimeFrame2Change,
            this.colOddEvenRowFlag,
            this.colPORevFigure,
            this.colSplitMode,
            this.colExftyWindows,
            this.colWOSeqNo,
            this.colActionLogTaking,
            this.colActionLogGroup,
            this.colActionLogSeqNo,
            this.colActionLogTargetDate,
            this.colActionLogRevisedDate,
            this.colActionLogCmplDate,
            this.colTotalWO,
            this.colChosenWO,
            this.colPOActualTransitDate,
            this.colMaterialStandBy,
            this.colStartWindows,
            this.colFillUpDate,
            this.colActionLogCategory,
            this.colAffectPercent,
            this.colAffectDays,
            this.colRCCode,
            this.colStockInUseful,
            this.colNetQty,
            this.colRelatedShptPercent,
            this.colDRQty,
            this.colNonPONO,
            this.colNonProjectNo,
            this.colDRQPOSuffix});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(470, 290, 274, 405);
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Lavender;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.colOddEvenRowFlag;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "1";
            this.bandedGridView1.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
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
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSKU, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.bandedGridView1.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.bandedGridView1_CellValueChanged);
            this.bandedGridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.bandedGridView1_CellMerge);
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate_1);
            this.bandedGridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.bandedGridView1_CustomDrawCell);
            this.bandedGridView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.bandedGridView1_MouseDown);
            this.bandedGridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bandedGridView1_RowCellStyle);
            this.bandedGridView1.ShowingEditor += new System.ComponentModel.CancelEventHandler(this.bandedGridView1_ShowingEditor);
            this.bandedGridView1.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.bandedGridView1_ValidateRow);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawBandHeader);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawColumnHeader);
            // 
            // bandPO
            // 
            this.bandPO.Caption = "General PO\'s Information";
            this.bandPO.Columns.Add(this.colCompany);
            this.bandPO.Columns.Add(this.colOrderClassDesc);
            this.bandPO.Columns.Add(this.colBuyerCode);
            this.bandPO.Columns.Add(this.colIsOutStanding);
            this.bandPO.Columns.Add(this.colPOIssueDate);
            this.bandPO.Columns.Add(this.colPONO);
            this.bandPO.Columns.Add(this.colFactory);
            this.bandPO.Columns.Add(this.colProjectNo);
            this.bandPO.Columns.Add(this.colSKU);
            this.bandPO.Columns.Add(this.colItemCode);
            this.bandPO.Columns.Add(this.colOrderLine);
            this.bandPO.Columns.Add(this.colTeam);
            this.bandPO.Columns.Add(this.colPurchaseOfficer);
            this.bandPO.Columns.Add(this.colVersion);
            this.bandPO.Columns.Add(this.colAmendmentNo);
            this.bandPO.Columns.Add(this.colHandleNo);
            this.bandPO.Columns.Add(this.colOperateDate);
            this.bandPO.Columns.Add(this.colStockInOperator);
            this.bandPO.Columns.Add(this.colPercent);
            this.bandPO.MinWidth = 20;
            this.bandPO.Name = "bandPO";
            this.bandPO.Tag = 1;
            this.bandPO.Width = 747;
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
            // colOrderClassDesc
            // 
            this.colOrderClassDesc.Caption = "ERP\'s PO Class";
            this.colOrderClassDesc.FieldName = "OrderClassDesc";
            this.colOrderClassDesc.Name = "colOrderClassDesc";
            this.colOrderClassDesc.OptionsColumn.AllowEdit = false;
            this.colOrderClassDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOrderClassDesc.Width = 105;
            // 
            // colBuyerCode
            // 
            this.colBuyerCode.Caption = "Buyer Cde";
            this.colBuyerCode.FieldName = "BuyerCode";
            this.colBuyerCode.Name = "colBuyerCode";
            this.colBuyerCode.OptionsColumn.AllowEdit = false;
            this.colBuyerCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBuyerCode.Visible = true;
            this.colBuyerCode.Width = 61;
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
            this.colPONO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPONO.Visible = true;
            this.colPONO.Width = 62;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceCell.Options.UseTextOptions = true;
            this.colFactory.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Our\r\nPrdn\r\nSite";
            this.colFactory.ColumnEdit = this.riPHDate;
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFactory.Visible = true;
            this.colFactory.Width = 49;
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
            this.colItemCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemCode.Visible = true;
            this.colItemCode.Width = 105;
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
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            this.colVersion.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colVersion.OptionsColumn.ReadOnly = true;
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
            // colHandleNo
            // 
            this.colHandleNo.Caption = "Lot No.";
            this.colHandleNo.FieldName = "HandleNo";
            this.colHandleNo.Name = "colHandleNo";
            this.colHandleNo.OptionsColumn.AllowEdit = false;
            this.colHandleNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHandleNo.OptionsColumn.ReadOnly = true;
            // 
            // colOperateDate
            // 
            this.colOperateDate.Caption = "Confirmed Date";
            this.colOperateDate.FieldName = "OperateDate";
            this.colOperateDate.Name = "colOperateDate";
            this.colOperateDate.OptionsColumn.AllowEdit = false;
            this.colOperateDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOperateDate.Width = 109;
            // 
            // colStockInOperator
            // 
            this.colStockInOperator.Caption = "Stock In Operator";
            this.colStockInOperator.FieldName = "StockInOperator";
            this.colStockInOperator.Name = "colStockInOperator";
            this.colStockInOperator.OptionsColumn.AllowEdit = false;
            this.colStockInOperator.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStockInOperator.OptionsColumn.ReadOnly = true;
            this.colStockInOperator.Width = 121;
            // 
            // colPercent
            // 
            this.colPercent.Caption = "Percent";
            this.colPercent.FieldName = "Percent";
            this.colPercent.Name = "colPercent";
            this.colPercent.OptionsColumn.AllowEdit = false;
            this.colPercent.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPercent.OptionsColumn.ReadOnly = true;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Data capture from RWO";
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 2;
            this.gridBand2.Visible = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Add\'l Info from PO Summary (Time) ";
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Tag = 2;
            this.gridBand1.Visible = false;
            // 
            // bandSuppRef
            // 
            this.bandSuppRef.Caption = "Supp Info";
            this.bandSuppRef.Columns.Add(this.colSupplier);
            this.bandSuppRef.Columns.Add(this.colSupplierReference);
            this.bandSuppRef.Columns.Add(this.colCustStyleNo);
            this.bandSuppRef.Columns.Add(this.colSupplierLocation);
            this.bandSuppRef.MinWidth = 20;
            this.bandSuppRef.Name = "bandSuppRef";
            this.bandSuppRef.RowCount = 5;
            this.bandSuppRef.Tag = 2;
            this.bandSuppRef.Width = 488;
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
            this.colSupplierReference.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplierReference.SummaryItem.Tag = "SupplierReference";
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.Width = 107;
            // 
            // colCustStyleNo
            // 
            this.colCustStyleNo.Caption = "It\'s Style No.\r\nRelated to this item\r\n(if necessary)";
            this.colCustStyleNo.FieldName = "CustStyleNo";
            this.colCustStyleNo.Name = "colCustStyleNo";
            this.colCustStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustStyleNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCustStyleNo.Visible = true;
            this.colCustStyleNo.Width = 132;
            // 
            // colSupplierLocation
            // 
            this.colSupplierLocation.Caption = "Loc. of Supp Fty";
            this.colSupplierLocation.FieldName = "SupplierLocation";
            this.colSupplierLocation.Name = "colSupplierLocation";
            this.colSupplierLocation.OptionsColumn.AllowEdit = false;
            this.colSupplierLocation.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplierLocation.Visible = true;
            this.colSupplierLocation.Width = 166;
            // 
            // bandQty
            // 
            this.bandQty.Caption = "PO Quantity\r\n(By PO Line/Clr)";
            this.bandQty.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand29,
            this.gridBand51,
            this.gridBand30,
            this.gridBand31});
            this.bandQty.MinWidth = 20;
            this.bandQty.Name = "bandQty";
            this.bandQty.RowCount = 2;
            this.bandQty.Tag = 1;
            this.bandQty.Width = 243;
            // 
            // gridBand29
            // 
            this.gridBand29.Caption = "Final\r\nTtl";
            this.gridBand29.Columns.Add(this.colPOQty);
            this.gridBand29.Columns.Add(this.colPORevFigure);
            this.gridBand29.MinWidth = 20;
            this.gridBand29.Name = "gridBand29";
            this.gridBand29.Tag = 1;
            this.gridBand29.Width = 79;
            // 
            // colPOQty
            // 
            this.colPOQty.AppearanceCell.Options.UseTextOptions = true;
            this.colPOQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPOQty.DisplayFormat.FormatString = "#,0.##";
            this.colPOQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOQty.FieldName = "SupplierPOQty";
            this.colPOQty.Name = "colPOQty";
            this.colPOQty.OptionsColumn.AllowEdit = false;
            this.colPOQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOQty.Visible = true;
            this.colPOQty.Width = 79;
            // 
            // colPORevFigure
            // 
            this.colPORevFigure.Caption = "Ttl Diff Rev.";
            this.colPORevFigure.FieldName = "PORevFigure";
            this.colPORevFigure.Name = "colPORevFigure";
            this.colPORevFigure.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPORevFigure.Width = 89;
            // 
            // gridBand51
            // 
            this.gridBand51.Caption = "Add\r\nQty";
            this.gridBand51.Name = "gridBand51";
            this.gridBand51.Tag = 1;
            this.gridBand51.Visible = false;
            this.gridBand51.Width = 61;
            // 
            // gridBand30
            // 
            this.gridBand30.Caption = "O/S";
            this.gridBand30.Columns.Add(this.colPHBalanceQty);
            this.gridBand30.Columns.Add(this.colPOBalancePercent);
            this.gridBand30.MinWidth = 20;
            this.gridBand30.Name = "gridBand30";
            this.gridBand30.Tag = 1;
            this.gridBand30.Width = 118;
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
            this.colPHBalanceQty.Width = 52;
            // 
            // colPOBalancePercent
            // 
            this.colPOBalancePercent.AppearanceCell.Options.UseTextOptions = true;
            this.colPOBalancePercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPOBalancePercent.Caption = "%";
            this.colPOBalancePercent.DisplayFormat.FormatString = "p2";
            this.colPOBalancePercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOBalancePercent.FieldName = "POBalancePercent";
            this.colPOBalancePercent.Name = "colPOBalancePercent";
            this.colPOBalancePercent.OptionsColumn.AllowEdit = false;
            this.colPOBalancePercent.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOBalancePercent.Visible = true;
            this.colPOBalancePercent.Width = 66;
            // 
            // gridBand31
            // 
            this.gridBand31.Caption = "PO";
            this.gridBand31.Columns.Add(this.colSupplierUOM);
            this.gridBand31.MinWidth = 20;
            this.gridBand31.Name = "gridBand31";
            this.gridBand31.Tag = 1;
            this.gridBand31.Width = 46;
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
            this.colSupplierUOM.Width = 46;
            // 
            // gridBand10
            // 
            this.gridBand10.Caption = "Item Size Matrix";
            this.gridBand10.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand13,
            this.gridBand14});
            this.gridBand10.MinWidth = 20;
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.RowCount = 2;
            this.gridBand10.Tag = "2";
            this.gridBand10.Width = 174;
            // 
            // gridBand13
            // 
            this.gridBand13.Caption = "Our";
            this.gridBand13.Columns.Add(this.colOurSizeDesc);
            this.gridBand13.Columns.Add(this.colOurFitDesc);
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Tag = 2;
            this.gridBand13.Width = 87;
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
            this.colOurSizeDesc.Width = 42;
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
            this.colOurFitDesc.Width = 45;
            // 
            // gridBand14
            // 
            this.gridBand14.Caption = "Supp";
            this.gridBand14.Columns.Add(this.colSizeDesc);
            this.gridBand14.Columns.Add(this.colFitDesc);
            this.gridBand14.MinWidth = 20;
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Tag = 2;
            this.gridBand14.Width = 87;
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
            this.colSizeDesc.Width = 42;
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
            this.colFitDesc.Width = 45;
            // 
            // bandCust
            // 
            this.bandCust.Caption = "PO\'s Color Info";
            this.bandCust.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand15,
            this.gridBand16});
            this.bandCust.MinWidth = 20;
            this.bandCust.Name = "bandCust";
            this.bandCust.RowCount = 2;
            this.bandCust.Tag = 1;
            this.bandCust.Width = 415;
            // 
            // gridBand15
            // 
            this.gridBand15.Caption = "Item Color";
            this.gridBand15.Columns.Add(this.colEndCustCode);
            this.gridBand15.Columns.Add(this.colBrandName);
            this.gridBand15.Columns.Add(this.colPHQty);
            this.gridBand15.Columns.Add(this.colCustOrderNo);
            this.gridBand15.Columns.Add(this.colColorCode);
            this.gridBand15.Columns.Add(this.colItemColorName);
            this.gridBand15.Columns.Add(this.colColorShade);
            this.gridBand15.MinWidth = 20;
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Tag = 1;
            this.gridBand15.Width = 351;
            // 
            // colEndCustCode
            // 
            this.colEndCustCode.AppearanceCell.Options.UseTextOptions = true;
            this.colEndCustCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndCustCode.Caption = "It\'s Code";
            this.colEndCustCode.FieldName = "EndCustCode";
            this.colEndCustCode.Name = "colEndCustCode";
            this.colEndCustCode.OptionsColumn.AllowEdit = false;
            this.colEndCustCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
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
            // colPHQty
            // 
            this.colPHQty.Caption = "Our Qty";
            this.colPHQty.DisplayFormat.FormatString = "#,0.#";
            this.colPHQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHQty.FieldName = "PHPOQty";
            this.colPHQty.Name = "colPHQty";
            this.colPHQty.OptionsColumn.AllowEdit = false;
            this.colPHQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHQty.OptionsColumn.ReadOnly = true;
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
            this.colColorCode.Visible = true;
            // 
            // colItemColorName
            // 
            this.colItemColorName.Caption = "Our Name\r\n(if any)";
            this.colItemColorName.FieldName = "ItemColorName";
            this.colItemColorName.Name = "colItemColorName";
            this.colItemColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colItemColorName.Visible = true;
            this.colItemColorName.Width = 139;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "Clr Shade from Supp\r\n(if any)";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.OptionsColumn.AllowEdit = false;
            this.colColorShade.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorShade.Visible = true;
            this.colColorShade.Width = 137;
            // 
            // gridBand16
            // 
            this.gridBand16.Caption = "Gmt Color\r\n(if any)";
            this.gridBand16.Columns.Add(this.colGmtColorName);
            this.gridBand16.MinWidth = 20;
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Tag = "1";
            this.gridBand16.Width = 64;
            // 
            // colGmtColorName
            // 
            this.colGmtColorName.Caption = "Name";
            this.colGmtColorName.FieldName = "GmtColorName";
            this.colGmtColorName.Name = "colGmtColorName";
            this.colGmtColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorName.Visible = true;
            this.colGmtColorName.Width = 64;
            // 
            // bandTime
            // 
            this.bandTime.Caption = "Time Element";
            this.bandTime.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand17,
            this.gridBand18,
            this.gridBand19,
            this.gridBand20});
            this.bandTime.MinWidth = 20;
            this.bandTime.Name = "bandTime";
            this.bandTime.RowCount = 2;
            this.bandTime.Tag = 2;
            this.bandTime.Width = 805;
            // 
            // gridBand17
            // 
            this.gridBand17.Caption = "Our WO\'s";
            this.gridBand17.Columns.Add(this.colTotalWO);
            this.gridBand17.Columns.Add(this.colWOSeqNo);
            this.gridBand17.Columns.Add(this.colClassCode);
            this.gridBand17.Columns.Add(this.colChosenWO);
            this.gridBand17.Columns.Add(this.colWOFWStartDate);
            this.gridBand17.Columns.Add(this.colWOExftyDate);
            this.gridBand17.MinWidth = 20;
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Tag = 2;
            this.gridBand17.Width = 256;
            // 
            // colTotalWO
            // 
            this.colTotalWO.Caption = "WO Ttl";
            this.colTotalWO.FieldName = "TotalWO";
            this.colTotalWO.Name = "colTotalWO";
            this.colTotalWO.OptionsColumn.AllowEdit = false;
            this.colTotalWO.Visible = true;
            this.colTotalWO.Width = 42;
            // 
            // colWOSeqNo
            // 
            this.colWOSeqNo.AppearanceCell.Options.UseTextOptions = true;
            this.colWOSeqNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOSeqNo.Caption = "Seq\r\n#";
            this.colWOSeqNo.ColumnEdit = this.repositoryItemButtonEdit_WOSeqNo;
            this.colWOSeqNo.FieldName = "WOSeqNo";
            this.colWOSeqNo.Name = "colWOSeqNo";
            this.colWOSeqNo.Visible = true;
            this.colWOSeqNo.Width = 50;
            // 
            // repositoryItemButtonEdit_WOSeqNo
            // 
            this.repositoryItemButtonEdit_WOSeqNo.AutoHeight = false;
            this.repositoryItemButtonEdit_WOSeqNo.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_WOSeqNo.Name = "repositoryItemButtonEdit_WOSeqNo";
            this.repositoryItemButtonEdit_WOSeqNo.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_WOSeqNo_ButtonClick);
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
            // colChosenWO
            // 
            this.colChosenWO.Caption = "Chosen WO#";
            this.colChosenWO.FieldName = "ChosenWO";
            this.colChosenWO.Name = "colChosenWO";
            this.colChosenWO.OptionsColumn.AllowEdit = false;
            this.colChosenWO.Visible = true;
            // 
            // colWOFWStartDate
            // 
            this.colWOFWStartDate.Caption = "FW Start dd";
            this.colWOFWStartDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colWOFWStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colWOFWStartDate.FieldName = "WOFWStartDate";
            this.colWOFWStartDate.Name = "colWOFWStartDate";
            this.colWOFWStartDate.OptionsColumn.AllowEdit = false;
            this.colWOFWStartDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colWOFWStartDate.Visible = true;
            this.colWOFWStartDate.Width = 89;
            // 
            // colWOExftyDate
            // 
            this.colWOExftyDate.Caption = "Our WO Ex-fty dd";
            this.colWOExftyDate.ColumnEdit = this.riPHDate;
            this.colWOExftyDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colWOExftyDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colWOExftyDate.FieldName = "WOExftyDate";
            this.colWOExftyDate.Name = "colWOExftyDate";
            this.colWOExftyDate.OptionsColumn.AllowEdit = false;
            this.colWOExftyDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colWOExftyDate.Width = 121;
            // 
            // gridBand18
            // 
            this.gridBand18.Caption = "Del. dd";
            this.gridBand18.Columns.Add(this.colPOReqDeliveryDate);
            this.gridBand18.Columns.Add(this.colPODeliveryDate);
            this.gridBand18.Columns.Add(this.colReceiveDate);
            this.gridBand18.Columns.Add(this.colPOActualTransitDate);
            this.gridBand18.Columns.Add(this.colDeliveryDiff);
            this.gridBand18.MinWidth = 20;
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Tag = 2;
            this.gridBand18.Width = 278;
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
            this.colPOReqDeliveryDate.Width = 71;
            // 
            // colPODeliveryDate
            // 
            this.colPODeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPODeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPODeliveryDate.Caption = "Cfmd";
            this.colPODeliveryDate.ColumnEdit = this.riPHDate;
            this.colPODeliveryDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colPODeliveryDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPODeliveryDate.FieldName = "PODeliveryDate";
            this.colPODeliveryDate.Name = "colPODeliveryDate";
            this.colPODeliveryDate.OptionsColumn.AllowEdit = false;
            this.colPODeliveryDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPODeliveryDate.OptionsColumn.ReadOnly = true;
            this.colPODeliveryDate.Visible = true;
            this.colPODeliveryDate.Width = 71;
            // 
            // colReceiveDate
            // 
            this.colReceiveDate.AppearanceCell.Options.UseTextOptions = true;
            this.colReceiveDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colReceiveDate.Caption = "Rev.";
            this.colReceiveDate.ColumnEdit = this.riPHDate;
            this.colReceiveDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colReceiveDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colReceiveDate.FieldName = "RevisedDeliveryDateShow";
            this.colReceiveDate.Name = "colReceiveDate";
            this.colReceiveDate.OptionsColumn.AllowEdit = false;
            this.colReceiveDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colReceiveDate.Visible = true;
            this.colReceiveDate.Width = 74;
            // 
            // colPOActualTransitDate
            // 
            this.colPOActualTransitDate.Caption = "Act.";
            this.colPOActualTransitDate.ColumnEdit = this.riPHDate;
            this.colPOActualTransitDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colPOActualTransitDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPOActualTransitDate.FieldName = "POActualTransitDate";
            this.colPOActualTransitDate.Name = "colPOActualTransitDate";
            this.colPOActualTransitDate.OptionsColumn.AllowEdit = false;
            this.colPOActualTransitDate.Visible = true;
            this.colPOActualTransitDate.Width = 74;
            // 
            // colDeliveryDiff
            // 
            this.colDeliveryDiff.AppearanceCell.Options.UseTextOptions = true;
            this.colDeliveryDiff.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDeliveryDiff.Caption = "Days Diff";
            this.colDeliveryDiff.FieldName = "DeliveryDiff";
            this.colDeliveryDiff.Name = "colDeliveryDiff";
            this.colDeliveryDiff.OptionsColumn.AllowEdit = false;
            this.colDeliveryDiff.OptionsColumn.AllowIncrementalSearch = false;
            this.colDeliveryDiff.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDeliveryDiff.OptionsColumn.ReadOnly = true;
            this.colDeliveryDiff.Visible = true;
            this.colDeliveryDiff.Width = 59;
            // 
            // gridBand19
            // 
            this.gridBand19.Caption = "- -";
            this.gridBand19.Columns.Add(this.colIncoterms);
            this.gridBand19.Columns.Add(this.colDeliveryRouting);
            this.gridBand19.MinWidth = 20;
            this.gridBand19.Name = "gridBand19";
            this.gridBand19.Tag = 2;
            this.gridBand19.Width = 114;
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
            this.colIncoterms.Width = 55;
            // 
            // colDeliveryRouting
            // 
            this.colDeliveryRouting.Caption = "Del\r\nRout\'g";
            this.colDeliveryRouting.FieldName = "DeliveryRouting";
            this.colDeliveryRouting.Name = "colDeliveryRouting";
            this.colDeliveryRouting.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDeliveryRouting.Visible = true;
            this.colDeliveryRouting.Width = 59;
            // 
            // gridBand20
            // 
            this.gridBand20.Caption = "Time Frame 1";
            this.gridBand20.Columns.Add(this.colTransitPointCode);
            this.gridBand20.Columns.Add(this.colEndPoint);
            this.gridBand20.MinWidth = 20;
            this.gridBand20.Name = "gridBand20";
            this.gridBand20.Tag = 2;
            this.gridBand20.Width = 157;
            // 
            // colTransitPointCode
            // 
            this.colTransitPointCode.Caption = "Transit Pt.\r\nCde";
            this.colTransitPointCode.FieldName = "TransitPointCode";
            this.colTransitPointCode.Name = "colTransitPointCode";
            this.colTransitPointCode.OptionsColumn.AllowEdit = false;
            this.colTransitPointCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitPointCode.Visible = true;
            this.colTransitPointCode.Width = 80;
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
            this.colEndPoint.Width = 77;
            // 
            // bandDelRef
            // 
            this.bandDelRef.Caption = "Del Ref.";
            this.bandDelRef.Columns.Add(this.colTransitPoint);
            this.bandDelRef.MinWidth = 20;
            this.bandDelRef.Name = "bandDelRef";
            this.bandDelRef.Tag = 2;
            this.bandDelRef.Visible = false;
            this.bandDelRef.Width = 58;
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
            // bandPage2Key
            // 
            this.bandPage2Key.Caption = "PO Summary Key Info";
            this.bandPage2Key.Columns.Add(this.bandedGridColumn1);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn2);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn3);
            this.bandPage2Key.MinWidth = 20;
            this.bandPage2Key.Name = "bandPage2Key";
            this.bandPage2Key.Tag = 1;
            this.bandPage2Key.Visible = false;
            this.bandPage2Key.Width = 395;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "PO No.";
            this.bandedGridColumn1.FieldName = "PONO";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn1.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandedGridColumn1.SummaryItem.Tag = "PONO";
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
            // bandChangeMonitor
            // 
            this.bandChangeMonitor.Caption = "Delivery Monitoring (Time, Qty and Transit mode)";
            this.bandChangeMonitor.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand12});
            this.bandChangeMonitor.MinWidth = 20;
            this.bandChangeMonitor.Name = "bandChangeMonitor";
            this.bandChangeMonitor.RowCount = 2;
            this.bandChangeMonitor.Tag = 0;
            this.bandChangeMonitor.Width = 1300;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Split shpt?";
            this.gridBand3.Columns.Add(this.colPartialShipment);
            this.gridBand3.Columns.Add(this.colHowManyLot);
            this.gridBand3.Columns.Add(this.colSplitMode);
            this.gridBand3.Columns.Add(this.colPHUOM);
            this.gridBand3.Columns.Add(this.colQty);
            this.gridBand3.Columns.Add(this.colCummQty);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Tag = 1;
            this.gridBand3.Width = 350;
            // 
            // colPartialShipment
            // 
            this.colPartialShipment.AppearanceCell.Options.UseTextOptions = true;
            this.colPartialShipment.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPartialShipment.Caption = "Y/N";
            this.colPartialShipment.FieldName = "PartialShipmentDesc";
            this.colPartialShipment.Name = "colPartialShipment";
            this.colPartialShipment.OptionsColumn.AllowEdit = false;
            this.colPartialShipment.OptionsColumn.AllowIncrementalSearch = false;
            this.colPartialShipment.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPartialShipment.OptionsColumn.ReadOnly = true;
            this.colPartialShipment.Visible = true;
            this.colPartialShipment.Width = 44;
            // 
            // colHowManyLot
            // 
            this.colHowManyLot.AppearanceCell.Options.UseTextOptions = true;
            this.colHowManyLot.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHowManyLot.Caption = "# of split";
            this.colHowManyLot.FieldName = "HowManyLot";
            this.colHowManyLot.Name = "colHowManyLot";
            this.colHowManyLot.OptionsColumn.AllowEdit = false;
            this.colHowManyLot.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHowManyLot.OptionsColumn.ReadOnly = true;
            this.colHowManyLot.Visible = true;
            this.colHowManyLot.Width = 52;
            // 
            // colSplitMode
            // 
            this.colSplitMode.Caption = "Split\r\nReason";
            this.colSplitMode.FieldName = "SplitMode";
            this.colSplitMode.Name = "colSplitMode";
            this.colSplitMode.OptionsColumn.AllowEdit = false;
            this.colSplitMode.Visible = true;
            this.colSplitMode.Width = 61;
            // 
            // colPHUOM
            // 
            this.colPHUOM.Caption = "ERP Unit";
            this.colPHUOM.FieldName = "PHUOM";
            this.colPHUOM.Name = "colPHUOM";
            this.colPHUOM.OptionsColumn.AllowEdit = false;
            this.colPHUOM.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHUOM.Visible = true;
            this.colPHUOM.Width = 55;
            // 
            // colQty
            // 
            this.colQty.AppearanceCell.Options.UseTextOptions = true;
            this.colQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colQty.Caption = "Qty";
            this.colQty.DisplayFormat.FormatString = "#,0.#";
            this.colQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colQty.FieldName = "SplitQty";
            this.colQty.Name = "colQty";
            this.colQty.OptionsColumn.AllowEdit = false;
            this.colQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colQty.Visible = true;
            this.colQty.Width = 56;
            // 
            // colCummQty
            // 
            this.colCummQty.AppearanceCell.Options.UseTextOptions = true;
            this.colCummQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colCummQty.Caption = "Cumm Qty";
            this.colCummQty.DisplayFormat.FormatString = "#,0.#";
            this.colCummQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colCummQty.FieldName = "CummQty";
            this.colCummQty.Name = "colCummQty";
            this.colCummQty.OptionsColumn.AllowEdit = false;
            this.colCummQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colCummQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCummQty.OptionsColumn.ReadOnly = true;
            this.colCummQty.Visible = true;
            this.colCummQty.Width = 82;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Del dd revision?";
            this.gridBand4.Columns.Add(this.colRevisedDelivery);
            this.gridBand4.Columns.Add(this.colRemark);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Tag = 2;
            this.gridBand4.Visible = false;
            this.gridBand4.Width = 73;
            // 
            // colRevisedDelivery
            // 
            this.colRevisedDelivery.AppearanceCell.Options.UseTextOptions = true;
            this.colRevisedDelivery.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRevisedDelivery.Caption = "Y/N";
            this.colRevisedDelivery.FieldName = "RevisedDeliveryDesc";
            this.colRevisedDelivery.Name = "colRevisedDelivery";
            this.colRevisedDelivery.OptionsColumn.AllowEdit = false;
            this.colRevisedDelivery.OptionsColumn.AllowIncrementalSearch = false;
            this.colRevisedDelivery.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRevisedDelivery.OptionsColumn.ReadOnly = true;
            this.colRevisedDelivery.Width = 44;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.OptionsColumn.AllowGroup = DevExpress.Utils.DefaultBoolean.False;
            this.colRemark.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRemark.OptionsColumn.AllowSort = DevExpress.Utils.DefaultBoolean.False;
            this.colRemark.OptionsFilter.AllowFilter = false;
            this.colRemark.Width = 70;
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Transit Mode Change?";
            this.gridBand5.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand21,
            this.gridBand22,
            this.gridBand23,
            this.gridBand24,
            this.gridBand25,
            this.gridBand62});
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Tag = 2;
            this.gridBand5.Width = 950;
            // 
            // gridBand21
            // 
            this.gridBand21.Caption = "- -";
            this.gridBand21.Columns.Add(this.colTransitModeHaveChanged);
            this.gridBand21.MinWidth = 20;
            this.gridBand21.Name = "gridBand21";
            this.gridBand21.Tag = 2;
            this.gridBand21.Width = 44;
            // 
            // colTransitModeHaveChanged
            // 
            this.colTransitModeHaveChanged.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitModeHaveChanged.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitModeHaveChanged.Caption = "Y/N";
            this.colTransitModeHaveChanged.FieldName = "TransitModeHaveChangedDesc";
            this.colTransitModeHaveChanged.Name = "colTransitModeHaveChanged";
            this.colTransitModeHaveChanged.OptionsColumn.AllowEdit = false;
            this.colTransitModeHaveChanged.OptionsColumn.AllowIncrementalSearch = false;
            this.colTransitModeHaveChanged.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitModeHaveChanged.OptionsColumn.ReadOnly = true;
            this.colTransitModeHaveChanged.Visible = true;
            this.colTransitModeHaveChanged.Width = 44;
            // 
            // gridBand22
            // 
            this.gridBand22.Caption = "Transit Mode 1";
            this.gridBand22.Columns.Add(this.colTransitModePO);
            this.gridBand22.Columns.Add(this.colTransitMode1Change);
            this.gridBand22.MinWidth = 20;
            this.gridBand22.Name = "gridBand22";
            this.gridBand22.Tag = 2;
            this.gridBand22.Width = 116;
            // 
            // colTransitModePO
            // 
            this.colTransitModePO.Caption = "Orig.";
            this.colTransitModePO.FieldName = "TransitModePO";
            this.colTransitModePO.Name = "colTransitModePO";
            this.colTransitModePO.OptionsColumn.AllowEdit = false;
            this.colTransitModePO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitModePO.OptionsColumn.ReadOnly = true;
            this.colTransitModePO.Visible = true;
            this.colTransitModePO.Width = 51;
            // 
            // colTransitMode1Change
            // 
            this.colTransitMode1Change.Caption = "Change";
            this.colTransitMode1Change.ColumnEdit = this.repositoryItemComboBox_TransitMode;
            this.colTransitMode1Change.FieldName = "TransitMode1Change";
            this.colTransitMode1Change.Name = "colTransitMode1Change";
            this.colTransitMode1Change.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitMode1Change.Visible = true;
            this.colTransitMode1Change.Width = 65;
            // 
            // repositoryItemComboBox_TransitMode
            // 
            this.repositoryItemComboBox_TransitMode.AutoHeight = false;
            this.repositoryItemComboBox_TransitMode.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_TransitMode.Name = "repositoryItemComboBox_TransitMode";
            // 
            // gridBand23
            // 
            this.gridBand23.Caption = "Transit Mode 2";
            this.gridBand23.Columns.Add(this.bandedGridColumn5);
            this.gridBand23.Columns.Add(this.colTransitMode2Show);
            this.gridBand23.Columns.Add(this.colTransitMode2Change);
            this.gridBand23.MinWidth = 20;
            this.gridBand23.Name = "gridBand23";
            this.gridBand23.Tag = 2;
            this.gridBand23.Width = 116;
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
            // colTransitMode2Show
            // 
            this.colTransitMode2Show.Caption = "Orig.";
            this.colTransitMode2Show.FieldName = "TransitMode2Show";
            this.colTransitMode2Show.Name = "colTransitMode2Show";
            this.colTransitMode2Show.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitMode2Show.Visible = true;
            this.colTransitMode2Show.Width = 51;
            // 
            // colTransitMode2Change
            // 
            this.colTransitMode2Change.Caption = "Change";
            this.colTransitMode2Change.ColumnEdit = this.repositoryItemComboBox_TransitMode;
            this.colTransitMode2Change.FieldName = "TransitMode2Change";
            this.colTransitMode2Change.Name = "colTransitMode2Change";
            this.colTransitMode2Change.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitMode2Change.Visible = true;
            this.colTransitMode2Change.Width = 65;
            // 
            // gridBand24
            // 
            this.gridBand24.Caption = "Time Frame 1";
            this.gridBand24.Columns.Add(this.colTimeFrame1);
            this.gridBand24.Columns.Add(this.colTimeFrame1Change);
            this.gridBand24.Columns.Add(this.colTransitModeChangeT1);
            this.gridBand24.MinWidth = 20;
            this.gridBand24.Name = "gridBand24";
            this.gridBand24.Tag = 2;
            this.gridBand24.Width = 192;
            // 
            // colTimeFrame1
            // 
            this.colTimeFrame1.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame1.Caption = "Orig. (days)";
            this.colTimeFrame1.FieldName = "TimeFrame1";
            this.colTimeFrame1.Name = "colTimeFrame1";
            this.colTimeFrame1.OptionsColumn.AllowEdit = false;
            this.colTimeFrame1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame1.OptionsColumn.ReadOnly = true;
            this.colTimeFrame1.Visible = true;
            this.colTimeFrame1.Width = 89;
            // 
            // colTimeFrame1Change
            // 
            this.colTimeFrame1Change.Caption = "Change (days)";
            this.colTimeFrame1Change.FieldName = "TimeFrame1Change";
            this.colTimeFrame1Change.Name = "colTimeFrame1Change";
            this.colTimeFrame1Change.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame1Change.Visible = true;
            this.colTimeFrame1Change.Width = 103;
            // 
            // colTransitModeChangeT1
            // 
            this.colTransitModeChangeT1.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitModeChangeT1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitModeChangeT1.Caption = "Time Frame 1\r\n(day)";
            this.colTransitModeChangeT1.FieldName = "TransitModeChangeT1Desc";
            this.colTransitModeChangeT1.Name = "colTransitModeChangeT1";
            this.colTransitModeChangeT1.OptionsColumn.AllowEdit = false;
            this.colTransitModeChangeT1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitModeChangeT1.OptionsColumn.ReadOnly = true;
            this.colTransitModeChangeT1.Width = 100;
            // 
            // gridBand25
            // 
            this.gridBand25.Caption = "Time Frame 2";
            this.gridBand25.Columns.Add(this.colTimeFrame2);
            this.gridBand25.Columns.Add(this.colTimeFrame2Change);
            this.gridBand25.Columns.Add(this.colTransitModeChangeT2);
            this.gridBand25.MinWidth = 20;
            this.gridBand25.Name = "gridBand25";
            this.gridBand25.Tag = 2;
            this.gridBand25.Width = 192;
            // 
            // colTimeFrame2
            // 
            this.colTimeFrame2.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame2.Caption = "Orig. (days)";
            this.colTimeFrame2.FieldName = "TimeFrame2";
            this.colTimeFrame2.Name = "colTimeFrame2";
            this.colTimeFrame2.OptionsColumn.AllowEdit = false;
            this.colTimeFrame2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame2.OptionsColumn.ReadOnly = true;
            this.colTimeFrame2.Visible = true;
            this.colTimeFrame2.Width = 89;
            // 
            // colTimeFrame2Change
            // 
            this.colTimeFrame2Change.Caption = "Change (days)";
            this.colTimeFrame2Change.FieldName = "TimeFrame2Change";
            this.colTimeFrame2Change.Name = "colTimeFrame2Change";
            this.colTimeFrame2Change.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame2Change.Visible = true;
            this.colTimeFrame2Change.Width = 103;
            // 
            // colTransitModeChangeT2
            // 
            this.colTransitModeChangeT2.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitModeChangeT2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitModeChangeT2.Caption = "Time Frame 2\r\n(day)";
            this.colTransitModeChangeT2.FieldName = "TransitModeChangeT2Desc";
            this.colTransitModeChangeT2.Name = "colTransitModeChangeT2";
            this.colTransitModeChangeT2.OptionsColumn.AllowEdit = false;
            this.colTransitModeChangeT2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitModeChangeT2.OptionsColumn.ReadOnly = true;
            this.colTransitModeChangeT2.Width = 100;
            // 
            // gridBand62
            // 
            this.gridBand62.Caption = "Time Frame II";
            this.gridBand62.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand26,
            this.gridBand27});
            this.gridBand62.Name = "gridBand62";
            this.gridBand62.Tag = 2;
            this.gridBand62.Width = 290;
            // 
            // gridBand26
            // 
            this.gridBand26.Caption = "TF2\'s Recv\'g Start Pt.";
            this.gridBand26.Columns.Add(this.colEndCustColor);
            this.gridBand26.Columns.Add(this.colETAPointOfDestDate);
            this.gridBand26.Columns.Add(this.colMaterialETADate1);
            this.gridBand26.MinWidth = 20;
            this.gridBand26.Name = "gridBand26";
            this.gridBand26.Tag = 2;
            this.gridBand26.Width = 146;
            // 
            // colEndCustColor
            // 
            this.colEndCustColor.AppearanceCell.Options.UseTextOptions = true;
            this.colEndCustColor.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndCustColor.Caption = "Gmt Clr Code\r\n(if any)";
            this.colEndCustColor.FieldName = "GarmentColor";
            this.colEndCustColor.Name = "colEndCustColor";
            this.colEndCustColor.OptionsColumn.AllowEdit = false;
            this.colEndCustColor.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colEndCustColor.Width = 97;
            // 
            // colETAPointOfDestDate
            // 
            this.colETAPointOfDestDate.Caption = "Orig.\r\n(dd)\r\n";
            this.colETAPointOfDestDate.ColumnEdit = this.riPHDate;
            this.colETAPointOfDestDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colETAPointOfDestDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colETAPointOfDestDate.FieldName = "ETAPointOfDestDate";
            this.colETAPointOfDestDate.Name = "colETAPointOfDestDate";
            this.colETAPointOfDestDate.OptionsColumn.AllowEdit = false;
            this.colETAPointOfDestDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colETAPointOfDestDate.Visible = true;
            this.colETAPointOfDestDate.Width = 71;
            // 
            // colMaterialETADate1
            // 
            this.colMaterialETADate1.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialETADate1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialETADate1.Caption = "Change\r\n(dd)";
            this.colMaterialETADate1.ColumnEdit = this.riPHDate;
            this.colMaterialETADate1.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colMaterialETADate1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colMaterialETADate1.FieldName = "TimeFrameIIReceiveGoodStartPointDateShow";
            this.colMaterialETADate1.Name = "colMaterialETADate1";
            this.colMaterialETADate1.OptionsColumn.AllowEdit = false;
            this.colMaterialETADate1.OptionsColumn.AllowIncrementalSearch = false;
            this.colMaterialETADate1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMaterialETADate1.OptionsColumn.ReadOnly = true;
            this.colMaterialETADate1.Visible = true;
            // 
            // gridBand27
            // 
            this.gridBand27.Caption = "TF2\'s Recv\'g End Pt.";
            this.gridBand27.Columns.Add(this.colArrivalPointofdestinationShow);
            this.gridBand27.Columns.Add(this.colMaterialETADate2);
            this.gridBand27.MinWidth = 20;
            this.gridBand27.Name = "gridBand27";
            this.gridBand27.Tag = 2;
            this.gridBand27.Width = 144;
            // 
            // colArrivalPointofdestinationShow
            // 
            this.colArrivalPointofdestinationShow.Caption = "Orig.\r\n(dd)\r\n";
            this.colArrivalPointofdestinationShow.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colArrivalPointofdestinationShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colArrivalPointofdestinationShow.FieldName = "ArrivalPointofdestinationShow";
            this.colArrivalPointofdestinationShow.Name = "colArrivalPointofdestinationShow";
            this.colArrivalPointofdestinationShow.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colArrivalPointofdestinationShow.Visible = true;
            this.colArrivalPointofdestinationShow.Width = 72;
            // 
            // colMaterialETADate2
            // 
            this.colMaterialETADate2.AppearanceCell.Options.UseTextOptions = true;
            this.colMaterialETADate2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMaterialETADate2.Caption = "Change\r\n(dd)";
            this.colMaterialETADate2.ColumnEdit = this.riPHDate;
            this.colMaterialETADate2.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colMaterialETADate2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colMaterialETADate2.FieldName = "TimeFrameIIReceiveGoodEndPointDateShow";
            this.colMaterialETADate2.Name = "colMaterialETADate2";
            this.colMaterialETADate2.OptionsColumn.AllowEdit = false;
            this.colMaterialETADate2.OptionsColumn.AllowIncrementalSearch = false;
            this.colMaterialETADate2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMaterialETADate2.OptionsColumn.ReadOnly = true;
            this.colMaterialETADate2.Visible = true;
            this.colMaterialETADate2.Width = 72;
            // 
            // gridBand12
            // 
            this.gridBand12.Caption = "Goods Receiving (ERP Unit)";
            this.gridBand12.Columns.Add(this.colActualStockInDate);
            this.gridBand12.MinWidth = 20;
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.Tag = 2;
            this.gridBand12.Visible = false;
            this.gridBand12.Width = 120;
            // 
            // colActualStockInDate
            // 
            this.colActualStockInDate.AppearanceCell.Options.UseTextOptions = true;
            this.colActualStockInDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActualStockInDate.Caption = "Goods Receiving dd\r\n(Fty)";
            this.colActualStockInDate.ColumnEdit = this.riPHDate;
            this.colActualStockInDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colActualStockInDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActualStockInDate.FieldName = "GoodsReceivingDate";
            this.colActualStockInDate.Name = "colActualStockInDate";
            this.colActualStockInDate.OptionsColumn.AllowEdit = false;
            this.colActualStockInDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colActualStockInDate.Width = 131;
            // 
            // GBandDedRes
            // 
            this.GBandDedRes.Caption = "Goods Receiving STAGE";
            this.GBandDedRes.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand39,
            this.gridBand41});
            this.GBandDedRes.MinWidth = 20;
            this.GBandDedRes.Name = "GBandDedRes";
            this.GBandDedRes.RowCount = 2;
            this.GBandDedRes.Tag = 0;
            this.GBandDedRes.Width = 700;
            // 
            // gridBand39
            // 
            this.gridBand39.Caption = "Goods Inward STAGE (Qty by PO Line/Clr)";
            this.gridBand39.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand40});
            this.gridBand39.MinWidth = 20;
            this.gridBand39.Name = "gridBand39";
            this.gridBand39.RowCount = 2;
            this.gridBand39.Tag = 1;
            this.gridBand39.Width = 257;
            // 
            // gridBand40
            // 
            this.gridBand40.Caption = "TF1 Rcv\'g End Pt.";
            this.gridBand40.Columns.Add(this.colGoodsInwardDate);
            this.gridBand40.Columns.Add(this.colGoodsInwardQty);
            this.gridBand40.Columns.Add(this.colHDODate);
            this.gridBand40.Columns.Add(this.colHandleType);
            this.gridBand40.MinWidth = 20;
            this.gridBand40.Name = "gridBand40";
            this.gridBand40.Tag = 1;
            this.gridBand40.Width = 257;
            // 
            // colGoodsInwardDate
            // 
            this.colGoodsInwardDate.AppearanceCell.Options.UseTextOptions = true;
            this.colGoodsInwardDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colGoodsInwardDate.Caption = "GRN dd";
            this.colGoodsInwardDate.ColumnEdit = this.riPHDate;
            this.colGoodsInwardDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colGoodsInwardDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colGoodsInwardDate.FieldName = "GRNDate";
            this.colGoodsInwardDate.Name = "colGoodsInwardDate";
            this.colGoodsInwardDate.OptionsColumn.AllowEdit = false;
            this.colGoodsInwardDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGoodsInwardDate.Visible = true;
            this.colGoodsInwardDate.Width = 73;
            // 
            // colGoodsInwardQty
            // 
            this.colGoodsInwardQty.AppearanceCell.Options.UseTextOptions = true;
            this.colGoodsInwardQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGoodsInwardQty.Caption = "GRN Qty";
            this.colGoodsInwardQty.DisplayFormat.FormatString = "n2";
            this.colGoodsInwardQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colGoodsInwardQty.FieldName = "GRNQty";
            this.colGoodsInwardQty.Name = "colGoodsInwardQty";
            this.colGoodsInwardQty.OptionsColumn.AllowEdit = false;
            this.colGoodsInwardQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colGoodsInwardQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGoodsInwardQty.Visible = true;
            this.colGoodsInwardQty.Width = 71;
            // 
            // colHDODate
            // 
            this.colHDODate.Caption = "Created HDO dd";
            this.colHDODate.ColumnEdit = this.riPHDate;
            this.colHDODate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colHDODate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colHDODate.FieldName = "HDOReleasedDate";
            this.colHDODate.Name = "colHDODate";
            this.colHDODate.OptionsColumn.AllowEdit = false;
            this.colHDODate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHDODate.Visible = true;
            this.colHDODate.Width = 113;
            // 
            // colHandleType
            // 
            this.colHandleType.Caption = "Handle Type";
            this.colHandleType.FieldName = "HandleType";
            this.colHandleType.Name = "colHandleType";
            this.colHandleType.OptionsColumn.AllowEdit = false;
            this.colHandleType.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHandleType.Width = 92;
            // 
            // gridBand41
            // 
            this.gridBand41.Caption = "Goods Stock-in STAGE (ERP Unit)";
            this.gridBand41.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand42,
            this.gridBand43,
            this.gridBand44,
            this.gridBand52});
            this.gridBand41.MinWidth = 20;
            this.gridBand41.Name = "gridBand41";
            this.gridBand41.RowCount = 2;
            this.gridBand41.Tag = 2;
            this.gridBand41.Width = 443;
            // 
            // gridBand42
            // 
            this.gridBand42.Caption = "ID label";
            this.gridBand42.Columns.Add(this.colStockInQty);
            this.gridBand42.Columns.Add(this.colStockInDate);
            this.gridBand42.MinWidth = 20;
            this.gridBand42.Name = "gridBand42";
            this.gridBand42.Tag = 2;
            this.gridBand42.Width = 80;
            // 
            // colStockInQty
            // 
            this.colStockInQty.AppearanceCell.Options.UseTextOptions = true;
            this.colStockInQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colStockInQty.Caption = "Qty";
            this.colStockInQty.DisplayFormat.FormatString = "#,0.#";
            this.colStockInQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStockInQty.FieldName = "ReceivedQty";
            this.colStockInQty.Name = "colStockInQty";
            this.colStockInQty.OptionsColumn.AllowEdit = false;
            this.colStockInQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colStockInQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStockInQty.OptionsColumn.ReadOnly = true;
            this.colStockInQty.Width = 58;
            // 
            // colStockInDate
            // 
            this.colStockInDate.AppearanceCell.Options.UseTextOptions = true;
            this.colStockInDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStockInDate.Caption = "Create dd";
            this.colStockInDate.ColumnEdit = this.riPHDate;
            this.colStockInDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colStockInDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStockInDate.FieldName = "IssueDate";
            this.colStockInDate.Name = "colStockInDate";
            this.colStockInDate.OptionsColumn.AllowEdit = false;
            this.colStockInDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStockInDate.OptionsColumn.ReadOnly = true;
            this.colStockInDate.Visible = true;
            this.colStockInDate.Width = 80;
            // 
            // gridBand43
            // 
            this.gridBand43.Caption = "RC";
            this.gridBand43.Columns.Add(this.colRCCode);
            this.gridBand43.Columns.Add(this.colRCQty);
            this.gridBand43.Columns.Add(this.colFillUpDate);
            this.gridBand43.MinWidth = 20;
            this.gridBand43.Name = "gridBand43";
            this.gridBand43.Tag = 2;
            this.gridBand43.Width = 178;
            // 
            // colRCCode
            // 
            this.colRCCode.Caption = "Cde";
            this.colRCCode.FieldName = "RCCode";
            this.colRCCode.Name = "colRCCode";
            this.colRCCode.OptionsColumn.AllowEdit = false;
            this.colRCCode.Visible = true;
            this.colRCCode.Width = 43;
            // 
            // colRCQty
            // 
            this.colRCQty.AppearanceCell.Options.UseTextOptions = true;
            this.colRCQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colRCQty.Caption = "Qty";
            this.colRCQty.DisplayFormat.FormatString = "n2";
            this.colRCQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colRCQty.FieldName = "RCQty";
            this.colRCQty.Name = "colRCQty";
            this.colRCQty.OptionsColumn.AllowEdit = false;
            this.colRCQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colRCQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCQty.Visible = true;
            this.colRCQty.Width = 60;
            // 
            // colFillUpDate
            // 
            this.colFillUpDate.Caption = "Replace/\r\nReplenish\r\nCfmd dd";
            this.colFillUpDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colFillUpDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFillUpDate.FieldName = "FillUpDate";
            this.colFillUpDate.Name = "colFillUpDate";
            this.colFillUpDate.Visible = true;
            // 
            // gridBand44
            // 
            this.gridBand44.Caption = "Stock-in";
            this.gridBand44.Columns.Add(this.colChangedTimeFrame1);
            this.gridBand44.MinWidth = 20;
            this.gridBand44.Name = "gridBand44";
            this.gridBand44.Tag = 2;
            this.gridBand44.Visible = false;
            this.gridBand44.Width = 71;
            // 
            // colChangedTimeFrame1
            // 
            this.colChangedTimeFrame1.Caption = "Time Frame 1";
            this.colChangedTimeFrame1.FieldName = "ChangedTimeFrame1";
            this.colChangedTimeFrame1.Name = "colChangedTimeFrame1";
            this.colChangedTimeFrame1.OptionsColumn.AllowEdit = false;
            this.colChangedTimeFrame1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colChangedTimeFrame1.OptionsColumn.ReadOnly = true;
            this.colChangedTimeFrame1.Width = 100;
            // 
            // gridBand52
            // 
            this.gridBand52.Caption = "Stk-in Qty";
            this.gridBand52.Columns.Add(this.colGrossQty);
            this.gridBand52.Columns.Add(this.colNetQty);
            this.gridBand52.Columns.Add(this.colStockInUseful);
            this.gridBand52.Name = "gridBand52";
            this.gridBand52.Tag = 2;
            this.gridBand52.Width = 185;
            // 
            // colGrossQty
            // 
            this.colGrossQty.AppearanceCell.Options.UseTextOptions = true;
            this.colGrossQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colGrossQty.Caption = "Gr.";
            this.colGrossQty.DisplayFormat.FormatString = "n2";
            this.colGrossQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colGrossQty.FieldName = "GrossQty";
            this.colGrossQty.Name = "colGrossQty";
            this.colGrossQty.OptionsColumn.AllowEdit = false;
            this.colGrossQty.OptionsColumn.AllowIncrementalSearch = false;
            this.colGrossQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGrossQty.OptionsColumn.ReadOnly = true;
            this.colGrossQty.Visible = true;
            this.colGrossQty.Width = 71;
            // 
            // colNetQty
            // 
            this.colNetQty.AppearanceCell.Options.UseTextOptions = true;
            this.colNetQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colNetQty.Caption = "Net.";
            this.colNetQty.DisplayFormat.FormatString = "n2";
            this.colNetQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colNetQty.FieldName = "NetQty";
            this.colNetQty.Name = "colNetQty";
            this.colNetQty.OptionsColumn.AllowEdit = false;
            this.colNetQty.Visible = true;
            this.colNetQty.Width = 66;
            // 
            // colStockInUseful
            // 
            this.colStockInUseful.AppearanceCell.Options.UseTextOptions = true;
            this.colStockInUseful.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colStockInUseful.Caption = "Use\r\n-ful\r\n%";
            this.colStockInUseful.DisplayFormat.FormatString = "n2";
            this.colStockInUseful.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStockInUseful.FieldName = "StockInUseful";
            this.colStockInUseful.Name = "colStockInUseful";
            this.colStockInUseful.OptionsColumn.AllowEdit = false;
            this.colStockInUseful.Visible = true;
            this.colStockInUseful.Width = 48;
            // 
            // GBandDedResNew
            // 
            this.GBandDedResNew.Caption = "Deduct Reserved Qty\r\nSTAGE";
            this.GBandDedResNew.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand55,
            this.gridBand56});
            this.GBandDedResNew.MinWidth = 20;
            this.GBandDedResNew.Name = "GBandDedResNew";
            this.GBandDedResNew.RowCount = 2;
            this.GBandDedResNew.Tag = 0;
            this.GBandDedResNew.Width = 280;
            // 
            // gridBand55
            // 
            this.gridBand55.Caption = "DRQ";
            this.gridBand55.Columns.Add(this.colDRQty);
            this.gridBand55.Columns.Add(this.colDRQPOSuffix);
            this.gridBand55.Name = "gridBand55";
            this.gridBand55.Tag = 1;
            this.gridBand55.Width = 114;
            // 
            // colDRQty
            // 
            this.colDRQty.Caption = "Qty";
            this.colDRQty.FieldName = "DRQty";
            this.colDRQty.Name = "colDRQty";
            this.colDRQty.Visible = true;
            this.colDRQty.Width = 59;
            // 
            // colDRQPOSuffix
            // 
            this.colDRQPOSuffix.AppearanceCell.Options.UseTextOptions = true;
            this.colDRQPOSuffix.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDRQPOSuffix.Caption = "DRQ\nPO#\nsuffix";
            this.colDRQPOSuffix.ColumnEdit = this.repDRQPOSuffix;
            this.colDRQPOSuffix.FieldName = "DRQPOSuffix";
            this.colDRQPOSuffix.Name = "colDRQPOSuffix";
            this.colDRQPOSuffix.Visible = true;
            this.colDRQPOSuffix.Width = 55;
            // 
            // repDRQPOSuffix
            // 
            this.repDRQPOSuffix.AutoHeight = false;
            this.repDRQPOSuffix.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repDRQPOSuffix.Name = "repDRQPOSuffix";
            // 
            // gridBand56
            // 
            this.gridBand56.Caption = "Related Official \nPO/Cfmd Proj";
            this.gridBand56.Columns.Add(this.colNonPONO);
            this.gridBand56.Columns.Add(this.colNonProjectNo);
            this.gridBand56.Name = "gridBand56";
            this.gridBand56.Tag = 2;
            this.gridBand56.Width = 166;
            // 
            // colNonPONO
            // 
            this.colNonPONO.AppearanceCell.Options.UseTextOptions = true;
            this.colNonPONO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colNonPONO.Caption = "PO No.";
            this.colNonPONO.FieldName = "NonPONO";
            this.colNonPONO.Name = "colNonPONO";
            this.colNonPONO.Visible = true;
            this.colNonPONO.Width = 82;
            // 
            // colNonProjectNo
            // 
            this.colNonProjectNo.AppearanceCell.Options.UseTextOptions = true;
            this.colNonProjectNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colNonProjectNo.Caption = "Proj No.";
            this.colNonProjectNo.FieldName = "NonProjectNo";
            this.colNonProjectNo.Name = "colNonProjectNo";
            this.colNonProjectNo.Visible = true;
            this.colNonProjectNo.Width = 84;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "Mat\'l Standby dd\r\nBehind  Or Over Ahead\r\nFW Start dd\r\n";
            this.gridBand8.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand53,
            this.gridBand50});
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.RowCount = 3;
            this.gridBand8.Tag = 0;
            this.gridBand8.Width = 190;
            // 
            // gridBand53
            // 
            this.gridBand53.Caption = "Red data\r\nfor\r\n<=0 Or >28";
            this.gridBand53.Columns.Add(this.colRWO_DaysDiff);
            this.gridBand53.Name = "gridBand53";
            this.gridBand53.RowCount = 3;
            this.gridBand53.Tag = 1;
            this.gridBand53.Width = 80;
            // 
            // colRWO_DaysDiff
            // 
            this.colRWO_DaysDiff.AppearanceCell.Options.UseTextOptions = true;
            this.colRWO_DaysDiff.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRWO_DaysDiff.Caption = "d = a-c";
            this.colRWO_DaysDiff.FieldName = "RWO_DaysDiff";
            this.colRWO_DaysDiff.Name = "colRWO_DaysDiff";
            this.colRWO_DaysDiff.OptionsColumn.AllowEdit = false;
            this.colRWO_DaysDiff.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRWO_DaysDiff.Visible = true;
            this.colRWO_DaysDiff.Width = 80;
            // 
            // gridBand50
            // 
            this.gridBand50.Caption = "Minimized by\r\nQty involved";
            this.gridBand50.Columns.Add(this.colAffectPercent);
            this.gridBand50.Columns.Add(this.colAffectDays);
            this.gridBand50.Columns.Add(this.bandedGridColumn4);
            this.gridBand50.Name = "gridBand50";
            this.gridBand50.Tag = 2;
            this.gridBand50.Width = 110;
            // 
            // colAffectPercent
            // 
            this.colAffectPercent.AppearanceCell.Options.UseTextOptions = true;
            this.colAffectPercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAffectPercent.Caption = "%";
            this.colAffectPercent.FieldName = "AffectPercent";
            this.colAffectPercent.Name = "colAffectPercent";
            this.colAffectPercent.Visible = true;
            this.colAffectPercent.Width = 56;
            // 
            // colAffectDays
            // 
            this.colAffectDays.AppearanceCell.Options.UseTextOptions = true;
            this.colAffectDays.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAffectDays.Caption = "days";
            this.colAffectDays.FieldName = "AffectDays";
            this.colAffectDays.Name = "colAffectDays";
            this.colAffectDays.OptionsColumn.AllowEdit = false;
            this.colAffectDays.Visible = true;
            this.colAffectDays.Width = 54;
            // 
            // bandedGridColumn4
            // 
            this.bandedGridColumn4.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn4.Caption = "Del dd";
            this.bandedGridColumn4.ColumnEdit = this.riPHDate;
            this.bandedGridColumn4.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.bandedGridColumn4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.bandedGridColumn4.FieldName = "PODeliveryDate";
            this.bandedGridColumn4.Name = "bandedGridColumn4";
            this.bandedGridColumn4.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Coordinator";
            this.gridBand9.Columns.Add(this.colNumOfProject);
            this.gridBand9.Columns.Add(this.colReport);
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Tag = 1;
            this.gridBand9.Visible = false;
            this.gridBand9.Width = 88;
            // 
            // colNumOfProject
            // 
            this.colNumOfProject.AppearanceCell.Options.UseTextOptions = true;
            this.colNumOfProject.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colNumOfProject.Caption = "No. Of Project";
            this.colNumOfProject.FieldName = "NumOfProject";
            this.colNumOfProject.Name = "colNumOfProject";
            this.colNumOfProject.OptionsColumn.AllowEdit = false;
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
            // gridBand45
            // 
            this.gridBand45.Caption = "FW Window";
            this.gridBand45.Columns.Add(this.colStartWindows);
            this.gridBand45.Columns.Add(this.colExftyWindows);
            this.gridBand45.MinWidth = 20;
            this.gridBand45.Name = "gridBand45";
            this.gridBand45.Tag = 1;
            this.gridBand45.Width = 181;
            // 
            // colStartWindows
            // 
            this.colStartWindows.AppearanceCell.Options.UseTextOptions = true;
            this.colStartWindows.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStartWindows.Caption = "StartWindows";
            this.colStartWindows.FieldName = "StartWindows";
            this.colStartWindows.Name = "colStartWindows";
            this.colStartWindows.OptionsColumn.AllowEdit = false;
            this.colStartWindows.Visible = true;
            // 
            // colExftyWindows
            // 
            this.colExftyWindows.AppearanceCell.Options.UseTextOptions = true;
            this.colExftyWindows.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colExftyWindows.Caption = "(Our Ex-fty dd)\r\nminus\r\n(Mat\'l standby)";
            this.colExftyWindows.FieldName = "ExftyWindows";
            this.colExftyWindows.Name = "colExftyWindows";
            this.colExftyWindows.Visible = true;
            this.colExftyWindows.Width = 106;
            // 
            // gridBand46
            // 
            this.gridBand46.Caption = "Action Log";
            this.gridBand46.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand47,
            this.gridBand48});
            this.gridBand46.MinWidth = 20;
            this.gridBand46.Name = "gridBand46";
            this.gridBand46.RowCount = 2;
            this.gridBand46.Tag = 0;
            this.gridBand46.Width = 490;
            // 
            // gridBand47
            // 
            this.gridBand47.Caption = "Action";
            this.gridBand47.Columns.Add(this.colActionLogTaking);
            this.gridBand47.Columns.Add(this.colActionLogGroup);
            this.gridBand47.Columns.Add(this.colActionLogSeqNo);
            this.gridBand47.Columns.Add(this.colActionLogCategory);
            this.gridBand47.Columns.Add(this.colRelatedShptPercent);
            this.gridBand47.MinWidth = 20;
            this.gridBand47.Name = "gridBand47";
            this.gridBand47.Tag = 2;
            this.gridBand47.Width = 320;
            // 
            // colActionLogTaking
            // 
            this.colActionLogTaking.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogTaking.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogTaking.Caption = "Taking";
            this.colActionLogTaking.FieldName = "ActionLogTaking";
            this.colActionLogTaking.Name = "colActionLogTaking";
            this.colActionLogTaking.OptionsColumn.AllowEdit = false;
            this.colActionLogTaking.Visible = true;
            this.colActionLogTaking.Width = 58;
            // 
            // colActionLogGroup
            // 
            this.colActionLogGroup.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogGroup.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogGroup.Caption = "Grpg\r\n(Y/N)";
            this.colActionLogGroup.ColumnEdit = this.repositoryItemComboBox_YN;
            this.colActionLogGroup.FieldName = "ActionLogGroup";
            this.colActionLogGroup.Name = "colActionLogGroup";
            this.colActionLogGroup.OptionsColumn.AllowEdit = false;
            this.colActionLogGroup.Visible = true;
            this.colActionLogGroup.Width = 53;
            // 
            // repositoryItemComboBox_YN
            // 
            this.repositoryItemComboBox_YN.AutoHeight = false;
            this.repositoryItemComboBox_YN.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_YN.Items.AddRange(new object[] {
            "",
            "Y",
            "N"});
            this.repositoryItemComboBox_YN.Name = "repositoryItemComboBox_YN";
            // 
            // colActionLogSeqNo
            // 
            this.colActionLogSeqNo.Caption = "Action Log\r\nSeq#";
            this.colActionLogSeqNo.ColumnEdit = this.repositoryItemButtonEdit_ActionLog;
            this.colActionLogSeqNo.FieldName = "ActionLogSeqNo";
            this.colActionLogSeqNo.Name = "colActionLogSeqNo";
            this.colActionLogSeqNo.OptionsColumn.AllowEdit = false;
            this.colActionLogSeqNo.Visible = true;
            this.colActionLogSeqNo.Width = 84;
            // 
            // repositoryItemButtonEdit_ActionLog
            // 
            this.repositoryItemButtonEdit_ActionLog.AutoHeight = false;
            this.repositoryItemButtonEdit_ActionLog.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_ActionLog.Name = "repositoryItemButtonEdit_ActionLog";
            this.repositoryItemButtonEdit_ActionLog.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_ActionLog_ButtonClick);
            // 
            // colActionLogCategory
            // 
            this.colActionLogCategory.Caption = "Cate\r\n-gory\r\n";
            this.colActionLogCategory.FieldName = "ActionLogCategory";
            this.colActionLogCategory.Name = "colActionLogCategory";
            this.colActionLogCategory.OptionsColumn.AllowEdit = false;
            this.colActionLogCategory.Visible = true;
            this.colActionLogCategory.Width = 50;
            // 
            // colRelatedShptPercent
            // 
            this.colRelatedShptPercent.Caption = "Related\r\nmax Gmts\r\nShpt%";
            this.colRelatedShptPercent.DisplayFormat.FormatString = "n2";
            this.colRelatedShptPercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colRelatedShptPercent.FieldName = "RelatedShptPercent";
            this.colRelatedShptPercent.Name = "colRelatedShptPercent";
            this.colRelatedShptPercent.OptionsColumn.AllowEdit = false;
            this.colRelatedShptPercent.Visible = true;
            // 
            // gridBand48
            // 
            this.gridBand48.Caption = "Completion Stage";
            this.gridBand48.Columns.Add(this.colActionLogTargetDate);
            this.gridBand48.Columns.Add(this.colActionLogRevisedDate);
            this.gridBand48.Columns.Add(this.colActionLogCmplDate);
            this.gridBand48.MinWidth = 20;
            this.gridBand48.Name = "gridBand48";
            this.gridBand48.Tag = 1;
            this.gridBand48.Width = 170;
            // 
            // colActionLogTargetDate
            // 
            this.colActionLogTargetDate.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogTargetDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogTargetDate.Caption = "Target";
            this.colActionLogTargetDate.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogTargetDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogTargetDate.FieldName = "ActionLogTargetDate";
            this.colActionLogTargetDate.Name = "colActionLogTargetDate";
            this.colActionLogTargetDate.OptionsColumn.AllowEdit = false;
            this.colActionLogTargetDate.Visible = true;
            this.colActionLogTargetDate.Width = 59;
            // 
            // colActionLogRevisedDate
            // 
            this.colActionLogRevisedDate.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogRevisedDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogRevisedDate.Caption = "Revised";
            this.colActionLogRevisedDate.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogRevisedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogRevisedDate.FieldName = "ActionLogRevisedDate";
            this.colActionLogRevisedDate.Name = "colActionLogRevisedDate";
            this.colActionLogRevisedDate.OptionsColumn.AllowEdit = false;
            this.colActionLogRevisedDate.Visible = true;
            this.colActionLogRevisedDate.Width = 63;
            // 
            // colActionLogCmplDate
            // 
            this.colActionLogCmplDate.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogCmplDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogCmplDate.Caption = "Cmpl";
            this.colActionLogCmplDate.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogCmplDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogCmplDate.FieldName = "ActionLogCmplDate";
            this.colActionLogCmplDate.Name = "colActionLogCmplDate";
            this.colActionLogCmplDate.OptionsColumn.AllowEdit = false;
            this.colActionLogCmplDate.Visible = true;
            this.colActionLogCmplDate.Width = 48;
            // 
            // gridBand49
            // 
            this.gridBand49.Caption = "Mat\'l\r\nStandBy\r\n(done)";
            this.gridBand49.Columns.Add(this.colMaterialStandBy);
            this.gridBand49.MinWidth = 20;
            this.gridBand49.Name = "gridBand49";
            this.gridBand49.Tag = 2;
            this.gridBand49.Width = 56;
            // 
            // colMaterialStandBy
            // 
            this.colMaterialStandBy.ColumnEdit = this.repositoryItemComboBox_MaterialStandby;
            this.colMaterialStandBy.FieldName = "MaterialStandBy";
            this.colMaterialStandBy.Name = "colMaterialStandBy";
            this.colMaterialStandBy.Tag = 1;
            this.colMaterialStandBy.Visible = true;
            this.colMaterialStandBy.Width = 56;
            // 
            // repositoryItemComboBox_MaterialStandby
            // 
            this.repositoryItemComboBox_MaterialStandby.AutoHeight = false;
            this.repositoryItemComboBox_MaterialStandby.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_MaterialStandby.Items.AddRange(new object[] {
            "Y",
            "N"});
            this.repositoryItemComboBox_MaterialStandby.Name = "repositoryItemComboBox_MaterialStandby";
            this.repositoryItemComboBox_MaterialStandby.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colVersionFlag
            // 
            this.colVersionFlag.Caption = "Version Flag";
            this.colVersionFlag.FieldName = "VersionFlag";
            this.colVersionFlag.Name = "colVersionFlag";
            this.colVersionFlag.OptionsColumn.AllowEdit = false;
            this.colVersionFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colVersionFlag.Width = 91;
            // 
            // colRCNO
            // 
            this.colRCNO.Caption = "No.";
            this.colRCNO.FieldName = "RCNO";
            this.colRCNO.Name = "colRCNO";
            this.colRCNO.OptionsColumn.AllowEdit = false;
            this.colRCNO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCNO.Width = 66;
            // 
            // colRCDate
            // 
            this.colRCDate.Caption = "Date";
            this.colRCDate.ColumnEdit = this.riDate;
            this.colRCDate.FieldName = "RCDate";
            this.colRCDate.Name = "colRCDate";
            this.colRCDate.OptionsColumn.AllowEdit = false;
            this.colRCDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colRCReplacement
            // 
            this.colRCReplacement.Caption = "Replacement";
            this.colRCReplacement.ColumnEdit = this.riCheck;
            this.colRCReplacement.FieldName = "RCReplacement";
            this.colRCReplacement.Name = "colRCReplacement";
            this.colRCReplacement.OptionsColumn.AllowEdit = false;
            this.colRCReplacement.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRCReplacement.Width = 94;
            // 
            // riCheck
            // 
            this.riCheck.AutoHeight = false;
            this.riCheck.Name = "riCheck";
            this.riCheck.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Currency";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colRWO_FWStartDate
            // 
            this.colRWO_FWStartDate.Caption = "RWO FW Start dd";
            this.colRWO_FWStartDate.ColumnEdit = this.riPHDate;
            this.colRWO_FWStartDate.FieldName = "RWO_FWStartDate";
            this.colRWO_FWStartDate.Name = "colRWO_FWStartDate";
            this.colRWO_FWStartDate.OptionsColumn.AllowEdit = false;
            this.colRWO_FWStartDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRWO_FWStartDate.Width = 120;
            // 
            // colRWO_ExftyDate
            // 
            this.colRWO_ExftyDate.Caption = "RWO Ex-fty dd";
            this.colRWO_ExftyDate.ColumnEdit = this.riPHDate;
            this.colRWO_ExftyDate.FieldName = "RWO_ExftyDate";
            this.colRWO_ExftyDate.Name = "colRWO_ExftyDate";
            this.colRWO_ExftyDate.OptionsColumn.AllowEdit = false;
            this.colRWO_ExftyDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRWO_ExftyDate.Width = 105;
            // 
            // colRWO_QTY
            // 
            this.colRWO_QTY.Caption = "RWO QTY";
            this.colRWO_QTY.FieldName = "RWO_QTY";
            this.colRWO_QTY.Name = "colRWO_QTY";
            this.colRWO_QTY.OptionsColumn.AllowEdit = false;
            this.colRWO_QTY.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRWO_QTY.Width = 78;
            // 
            // colRoundNo
            // 
            this.colRoundNo.Caption = "RWO NO.";
            this.colRoundNo.FieldName = "RoundNo";
            this.colRoundNo.Name = "colRoundNo";
            this.colRoundNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRoundNo.Width = 76;
            // 
            // colFlowupFlag
            // 
            this.colFlowupFlag.Caption = "Alert";
            this.colFlowupFlag.FieldName = "FlowupFlag";
            this.colFlowupFlag.Name = "colFlowupFlag";
            this.colFlowupFlag.OptionsColumn.AllowEdit = false;
            this.colFlowupFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colAdviceNote
            // 
            this.colAdviceNote.Caption = "Delivery Note";
            this.colAdviceNote.FieldName = "AdviceNote";
            this.colAdviceNote.Name = "colAdviceNote";
            this.colAdviceNote.OptionsColumn.AllowEdit = false;
            this.colAdviceNote.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colAdviceNote.Width = 97;
            // 
            // colMaterialGroup
            // 
            this.colMaterialGroup.Caption = "Material Group";
            this.colMaterialGroup.FieldName = "MaterialGroup";
            this.colMaterialGroup.Name = "colMaterialGroup";
            this.colMaterialGroup.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMaterialGroup.Width = 104;
            // 
            // colActualETA
            // 
            this.colActualETA.Caption = "Actual ETA";
            this.colActualETA.ColumnEdit = this.riPHDate;
            this.colActualETA.FieldName = "ActualETA";
            this.colActualETA.Name = "colActualETA";
            this.colActualETA.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colActualETA.Width = 83;
            // 
            // colActualETD
            // 
            this.colActualETD.Caption = "Actual ETD";
            this.colActualETD.ColumnEdit = this.riPHDate;
            this.colActualETD.FieldName = "ActualETD";
            this.colActualETD.Name = "colActualETD";
            this.colActualETD.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colActualETD.Width = 84;
            // 
            // gridBand32
            // 
            this.gridBand32.Caption = "(Formula)";
            this.gridBand32.MinWidth = 20;
            this.gridBand32.Name = "gridBand32";
            this.gridBand32.Tag = 2;
            this.gridBand32.Visible = false;
            this.gridBand32.Width = 179;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Goods Inward STAGE (Qty by PO Line)";
            this.gridBand7.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand33});
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Tag = 2;
            this.gridBand7.Width = 230;
            // 
            // gridBand33
            // 
            this.gridBand33.Caption = "Time Frame 1 - Recv\'g End Pt.";
            this.gridBand33.MinWidth = 20;
            this.gridBand33.Name = "gridBand33";
            this.gridBand33.Tag = 2;
            this.gridBand33.Width = 230;
            // 
            // gridBand34
            // 
            this.gridBand34.Caption = "Goods Stock-in STAGE (ERP Unit)";
            this.gridBand34.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand35,
            this.gridBand36,
            this.gridBand37});
            this.gridBand34.MinWidth = 20;
            this.gridBand34.Name = "gridBand34";
            this.gridBand34.Tag = 1;
            this.gridBand34.Width = 266;
            // 
            // gridBand35
            // 
            this.gridBand35.Caption = "ID label";
            this.gridBand35.MinWidth = 20;
            this.gridBand35.Name = "gridBand35";
            this.gridBand35.Tag = 1;
            this.gridBand35.Width = 127;
            // 
            // gridBand36
            // 
            this.gridBand36.Caption = "(-)";
            this.gridBand36.MinWidth = 20;
            this.gridBand36.Name = "gridBand36";
            this.gridBand36.Tag = 1;
            this.gridBand36.Width = 62;
            // 
            // gridBand37
            // 
            this.gridBand37.Caption = "--";
            this.gridBand37.MinWidth = 20;
            this.gridBand37.Name = "gridBand37";
            this.gridBand37.Tag = 1;
            this.gridBand37.Width = 77;
            // 
            // gridBand28
            // 
            this.gridBand28.Caption = "Time Frame 1 - Recv\'g End Pt.";
            this.gridBand28.Name = "gridBand28";
            this.gridBand28.Width = 243;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Mat\'l ETA Date at";
            this.gridBand6.Columns.Add(this.colActualETA);
            this.gridBand6.Columns.Add(this.colActualETD);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Tag = 2;
            this.gridBand6.Width = 167;
            // 
            // gridBand11
            // 
            this.gridBand11.Caption = "RC";
            this.gridBand11.Columns.Add(this.colRCNO);
            this.gridBand11.Columns.Add(this.colRCDate);
            this.gridBand11.Columns.Add(this.colRCReplacement);
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Visible = false;
            this.gridBand11.Width = 52;
            // 
            // ribeNotify
            // 
            this.ribeNotify.AutoHeight = false;
            this.ribeNotify.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "Notify...", -1, true, true, false, DevExpress.XtraEditors.ImageLocation.MiddleCenter, null, new DevExpress.Utils.KeyShortcut(System.Windows.Forms.Keys.None), "Notify...")});
            this.ribeNotify.Name = "ribeNotify";
            this.ribeNotify.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.ribeNotify.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeNotify_ButtonClick);
            // 
            // popupMenu1
            // 
            this.popupMenu1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnAddLots, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnChangeTransitMode),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintShipment, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintPO),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnWOReport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWOReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPOPCNotify, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barButtonItemActionLogGroup, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barButtonItemActionLogSingle, false),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItemMaterialStandby_Y, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItemMaterialStandby_N)});
            this.popupMenu1.Manager = this.objbarManager;
            this.popupMenu1.Name = "popupMenu1";
            // 
            // btnAddLots
            // 
            this.btnAddLots.Caption = "Level 2 - Entrance Key...";
            this.btnAddLots.Id = 16;
            this.btnAddLots.ImageIndexDisabled = 4;
            this.btnAddLots.Name = "btnAddLots";
            this.btnAddLots.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnAddLots_ItemClick);
            // 
            // btnChangeTransitMode
            // 
            this.btnChangeTransitMode.Caption = "Change Transit Mode...";
            this.btnChangeTransitMode.Id = 17;
            this.btnChangeTransitMode.ImageIndex = 5;
            this.btnChangeTransitMode.Name = "btnChangeTransitMode";
            this.btnChangeTransitMode.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnChangeTransitMode_ItemClick);
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
            // btnPOPCNotify
            // 
            this.btnPOPCNotify.Caption = "POPC Notepad...";
            this.btnPOPCNotify.Id = 23;
            this.btnPOPCNotify.ImageIndex = 6;
            this.btnPOPCNotify.Name = "btnPOPCNotify";
            this.btnPOPCNotify.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPOPCNotify_ItemClick);
            // 
            // barButtonItemActionLogGroup
            // 
            this.barButtonItemActionLogGroup.Caption = "Add Action Log (Grpg)";
            this.barButtonItemActionLogGroup.Id = 39;
            this.barButtonItemActionLogGroup.Name = "barButtonItemActionLogGroup";
            this.barButtonItemActionLogGroup.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemActionLogGroup_ItemClick);
            // 
            // barButtonItemActionLogSingle
            // 
            this.barButtonItemActionLogSingle.Caption = "Add Action Log(Single)";
            this.barButtonItemActionLogSingle.Id = 40;
            this.barButtonItemActionLogSingle.Name = "barButtonItemActionLogSingle";
            this.barButtonItemActionLogSingle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemActionLogSingle_ItemClick);
            // 
            // barButtonItemMaterialStandby_Y
            // 
            this.barButtonItemMaterialStandby_Y.Caption = "Set Mat\'l Standby (Y)";
            this.barButtonItemMaterialStandby_Y.Id = 41;
            this.barButtonItemMaterialStandby_Y.Name = "barButtonItemMaterialStandby_Y";
            this.barButtonItemMaterialStandby_Y.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemMaterialStandby_Y_ItemClick);
            // 
            // barButtonItemMaterialStandby_N
            // 
            this.barButtonItemMaterialStandby_N.Caption = "Set Mat\'l Standby (N)";
            this.barButtonItemMaterialStandby_N.Id = 42;
            this.barButtonItemMaterialStandby_N.Name = "barButtonItemMaterialStandby_N";
            this.barButtonItemMaterialStandby_N.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemMaterialStandby_N_ItemClick);
            // 
            // btnShipmentYes
            // 
            this.btnShipmentYes.Caption = "Split shipment --> Yes";
            this.btnShipmentYes.Id = 18;
            this.btnShipmentYes.Name = "btnShipmentYes";
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Print.png");
            this.imageList1.Images.SetKeyName(1, "Clone.png");
            this.imageList1.Images.SetKeyName(2, "Copy.png");
            this.imageList1.Images.SetKeyName(3, "Preview.png");
            this.imageList1.Images.SetKeyName(4, "ModelEditor.png");
            this.imageList1.Images.SetKeyName(5, "Change.png");
            this.imageList1.Images.SetKeyName(6, "Mail.png");
            // 
            // btnFrontPage
            // 
            this.btnFrontPage.Caption = "PO Summary";
            this.btnFrontPage.Id = 24;
            this.btnFrontPage.Name = "btnFrontPage";
            this.btnFrontPage.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnFrontPage_ItemClick);
            // 
            // btnLevel2b
            // 
            this.btnLevel2b.Caption = "Level 2b";
            this.btnLevel2b.Id = 25;
            this.btnLevel2b.Name = "btnLevel2b";
            this.btnLevel2b.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel2b_ItemClick);
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "Print List";
            this.barSubItem2.Id = 26;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem3, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem4)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // barSubItem3
            // 
            this.barSubItem3.Caption = "Part I";
            this.barSubItem3.Id = 34;
            this.barSubItem3.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnFrontPage),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplementSheet),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel2a, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel2b),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnL2Supplement)});
            this.barSubItem3.Name = "barSubItem3";
            // 
            // btnSupplementSheet
            // 
            this.btnSupplementSheet.Caption = "PO Summary - Supplement Sheet";
            this.btnSupplementSheet.Id = 27;
            this.btnSupplementSheet.Name = "btnSupplementSheet";
            this.btnSupplementSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementSheet_ItemClick);
            // 
            // btnLevel2a
            // 
            this.btnLevel2a.Caption = "Level 2a";
            this.btnLevel2a.Id = 28;
            this.btnLevel2a.Name = "btnLevel2a";
            this.btnLevel2a.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel2a_ItemClick);
            // 
            // btnL2Supplement
            // 
            this.btnL2Supplement.Caption = "Level 2b Supplement Sheet";
            this.btnL2Supplement.Id = 29;
            this.btnL2Supplement.Name = "btnL2Supplement";
            this.btnL2Supplement.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnL2Supplement_ItemClick);
            // 
            // barSubItem4
            // 
            this.barSubItem4.Caption = "Part II - Changed";
            this.barSubItem4.Id = 35;
            this.barSubItem4.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem2),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel2aC),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel2bC, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnL2SupplementC)});
            this.barSubItem4.Name = "barSubItem4";
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "PO Summary";
            this.barButtonItem1.Id = 36;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "PO Summary - Supplement Sheet";
            this.barButtonItem2.Id = 37;
            this.barButtonItem2.Name = "barButtonItem2";
            this.barButtonItem2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem2_ItemClick);
            // 
            // btnLevel2aC
            // 
            this.btnLevel2aC.Caption = "Level 2a - change";
            this.btnLevel2aC.Id = 30;
            this.btnLevel2aC.Name = "btnLevel2aC";
            this.btnLevel2aC.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnLevel2aC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel2aC_ItemClick);
            // 
            // btnLevel2bC
            // 
            this.btnLevel2bC.Caption = "Level 2c";
            this.btnLevel2bC.Id = 31;
            this.btnLevel2bC.Name = "btnLevel2bC";
            this.btnLevel2bC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel2bC_ItemClick);
            // 
            // btnL2SupplementC
            // 
            this.btnL2SupplementC.Caption = "Level 2c Supplement Sheet";
            this.btnL2SupplementC.Id = 32;
            this.btnL2SupplementC.Name = "btnL2SupplementC";
            this.btnL2SupplementC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnL2SupplementC_ItemClick);
            // 
            // btnItemChanged
            // 
            this.btnItemChanged.Caption = "Item Changed Percentage";
            this.btnItemChanged.Id = 33;
            this.btnItemChanged.Name = "btnItemChanged";
            this.btnItemChanged.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnItemChanged_ItemClick);
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "Test";
            this.barButtonItem3.Id = 38;
            this.barButtonItem3.Name = "barButtonItem3";
            this.barButtonItem3.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem3_ItemClick);
            // 
            // btnExport
            // 
            this.btnExport.Caption = "Export";
            this.btnExport.Id = 43;
            this.btnExport.Name = "btnExport";
            this.btnExport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnExport_ItemClick);
            // 
            // POPCLevel2Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POPCLevel2Form";
            this.Size = new System.Drawing.Size(6200, 400);
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
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_WOSeqNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_TransitMode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repDRQPOSuffix)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_YN)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_MaterialStandby)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeNotify)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            this.ResumeLayout(false);

        }
        public POPCLevel2Form()
        {
            InitializeComponent();

            POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            //this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader1);
            //this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader1);

            _sortby = POPCSortBy.ProjectItemCode;

            //_PONOs = new List<string>();
            //_Supps = new List<string>();
            //_SuppRefs = new List<string>();
            //_Custs = new List<string>();
            //_Colors = new List<string>();
            //_ColorShades = new List<string>();
        }

        //object _DataSource = null;
        //POPCDataContext _POPCDataContext = null;
        //public POPCLevel2Form(POPCDataContext ADataContext, object ADataSource)
        //    : this()
        //{
        //    _POPCDataContext = ADataContext;
        //    _DataSource = ADataSource;
        //}

        //string _PONO;
        //int _OrderLine;
        //string _ColorCode;

        ////public POPCLevel2Form(PH.POPC.BO.POPCEnquiryCondition ACondition, string APONO, int AOrderLine, string AColorCode)

        ////public POPCLevel2Form(PH.POPC.BO.POPCEnquiryCondition ACondition, List<PH.POPC.BO.POChangesMonitorSummary> ASummarySelectedList)
        //public POPCLevel2Form(PH.POPC.BO.POPCEnquiryCondition ACondition, string APONO, int AOrderLine, string AColorCode)
        //    : this()
        //{
        //    _Condition = ACondition;
        //    //_SummarySelectedList = ASummarySelectedList;
        //    _PONO = APONO;
        //    _OrderLine = AOrderLine;
        //    _ColorCode = AColorCode;
        //}
        public bool ProjectType = false;

        PH.POPC.BO.POPCEnquiryCondition _Condition = null;
        List<PH.POPC.BO.POChangesMonitorSummary> _SummarySelectedList;
        public POPCLevel2Form(PH.POPC.BO.POPCEnquiryCondition ACondition, List<PH.POPC.BO.POChangesMonitorSummary> ASummarySelectedList, bool AProjectType)
            : this()
        {
            _Condition = ACondition;
            _SummarySelectedList = ASummarySelectedList;
            ProjectType = AProjectType;
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POChangesMonitor);

            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
            this.bandedGridView1.OptionsBehavior.Editable = true;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            //准备Transit Mode 1、Transit Mode 2 修改 选择下拉框的数据 2022-05-20由David增加
            repositoryItemComboBox_TransitMode.Items.Clear();
            repositoryItemComboBox_TransitMode.Properties.Items.AddRange(ContextBuilder.CreateContext<PHPlatformMiscDataContext>().Misc_DataDictionaries.Where(P => P.DataType == "PH.BasicInfo.TransitMode").Select(S => S.DataCode).ToArray());


            string sql = string.Format("select DataCode from [PH.Platform.Misc]..Misc_DataDictionary where DataType='PH.POPC.DRQPONoSuffix'");
            List<string> DRQPONoSuffixList = context.ExecuteQuery<string>(sql).ToList();


            repDRQPOSuffix.Items.Clear();
            repDRQPOSuffix.Items.Add("");
            repDRQPOSuffix.Properties.Items.AddRange(DRQPONoSuffixList);



            //if (_DataSource == null)
            //{
            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.POPC.BO.POChangesMonitor);
            param.WarnRecord = -1;
            this.StartEnquiry(param);
            //}
            //else
            //{
            //    this.BindingSource.DataSource = _DataSource;
            //}

            if (_Condition != null)
            {
                EnquiryPOPC(_Condition);
            }
            //else 
            //{
            //    this.BindingSource.DataSource = _SummarySelectedList; add by shulin 
            //}


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

        protected override void OnClickFind()
        {
            using (POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(2))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    _SummarySelectedList = null; //清掉Summary传过来的条件，让用户可以在Detail画面自己用条件查询，避开老板设置的，只打开选中行的恶心功能
                    EnquiryPOPC(frm.Condition);
                }
            }
        }
        private POPCSortBy _sortby;

        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {
            //if (string.IsNullOrEmpty(Supplier) && string.IsNullOrEmpty(ProjectNo) && string.IsNullOrEmpty(PONO))
            //{
            //    MessageBox.Show("Must input a value for Supplier, Project No. or PO No.");
            //    return;
            //}

            //this.CreateWaitDialog("Loading data...", "Please waiting");
            this.Cursor = Cursors.WaitCursor;
            try
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                context.Connection.Open();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");
                this.DataContext = context;

                _sortby = condition.SortBy;
                string[] mats = condition.MaterialTypes;

                var cc = from c in context.POChangesMonitors
                         where c.Company == condition.Company
                             //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                         && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                         && (c.POColorSizeDetail.VersionFlag ?? false)
                         && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                         && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                         && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "") //&& (!(c.POColorSizeDetail.Pending ?? false))
                             //&& (string.IsNullOrEmpty(condition.Supplier) || c.POColorSizeDetail.PODetail.POHeader.Supplier == condition.Supplier)
                         && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
                         && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))

                        ////改為由PO Status判斷，不用SKU的Outstanding Qty判斷，因為有一些PO沒有收完貨，就Cancel或Completed了, Cancel狀態的不顯示出來
                             //     //由David修改以下代碼 2020-09-17
                             // && ((condition.POStatus == 0 && (c.POColorSizeDetail.PODetail.POHeader.Status == "0" || c.POColorSizeDetail.PODetail.POHeader.Status == "1")) //All
                             //    || (condition.POStatus == 1 && c.POColorSizeDetail.PODetail.POHeader.Status == "1" && c.POColorSizeDetail.PHOutstandingQty > 0)  //Outstanding
                             //    || (condition.POStatus == 2 && c.POColorSizeDetail.PODetail.POHeader.Status == "0" && c.POColorSizeDetail.PHOutstandingQty <= 0)  //Completed
                             //    )

                         && (condition.POStatus == 0 //All
                                || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                                || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                                )

                         && (condition.MaterialStandby == "All"                                                      //All
                                || (condition.MaterialStandby == "N" && c.POColorSizeDetail.MaterialStandBy == "N")  //N
                                || (condition.MaterialStandby == "Y" && c.POColorSizeDetail.MaterialStandBy == "Y")  //Y
                                )

                         //&& (condition.MaterialStandby == "All"                                                                                                         //All
                             //       || (condition.MaterialStandby == "Blank" && (c.POColorSizeDetail.MaterialStandBy == null || c.POColorSizeDetail.MaterialStandBy == "")) //Blank
                             //       || (condition.MaterialStandby == "Y" && c.POColorSizeDetail.MaterialStandBy == "Y")                                                     //Y
                             //       )


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
                         //&& (condition.PointDestFrom == DateTime.MinValue ||
                         //      (c.POColorSizeDetail.PODetail.ConfirmETADate.HasValue && (c.POColorSizeDetail.PODetail.ConfirmETADate.Value.AddDays(c.POColorSizeDetail.PODetail.POHeader.TransitFrame ?? 0)) >= condition.PointDestFrom
                         //         && (c.POColorSizeDetail.PODetail.ConfirmETADate.Value.AddDays(c.POColorSizeDetail.PODetail.POHeader.TransitFrame ?? 0)) < condition.PointDestTo.AddDays(1))
                         //   )//iqc



                         //orderby c.PONO, c.OrderLine, c.SKU, c.SplitNo
                         select c;

                ////由David加入以下条件 2022-05-18
                //if (_Condition != null)
                //{
                //    cc = cc.Where(p => p.PONO == _PONO && p.OrderLine == _OrderLine && p.POColorSizeDetail.ColorCode == _ColorCode);
                //}

                //只显示Summary Layout中选择中行的明细数据, 由David加入 2022-07-04
                if (_SummarySelectedList != null)
                {
                    List<string> PONOList = _SummarySelectedList.Select(p => p.PONO).Distinct().ToList();
                    List<int> OrderLineList = _SummarySelectedList.Select(p => p.OrderLine).Distinct().ToList();
                    List<string> ColorCodeList = _SummarySelectedList.Select(p => p.ColorCode).Distinct().ToList();
                    List<DateTime> GRNDateList = _SummarySelectedList.Select(p => (p.GRNDate ?? DateTime.MaxValue)).Distinct().ToList();
                    //List<int> SplitNoList = _SummarySelectedList.Select(p => p.SplitNo).Distinct().ToList();

                    cc = cc.Where(p => PONOList.Contains(p.PONO) && OrderLineList.Contains(p.OrderLine) && ColorCodeList.Contains(p.POColorSizeDetail.ColorCode) && GRNDateList.Contains(p.GRNDate ?? DateTime.MaxValue));
                    //cc = cc.Where(p => PONOList.Contains(p.PONO) && OrderLineList.Contains(p.OrderLine) && ColorCodeList.Contains(p.POColorSizeDetail.ColorCode) && SplitNoList.Contains(p.SplitNo));

                    //cc = from a in cc
                    //     from b in _SummarySelectedList
                    //     where a.PONO == b.PONO && a.OrderLine == b.OrderLine && a.ColorCode == b.ColorCode && a.GRNDate == b.GRNDate
                    //     select a;
                }
                // cc = cc.OrderBy(p => p.PONO).ThenBy(p => p.OrderLine).ThenBy(p => p.SKU).ThenBy(p => p.SplitNo);


                //由于计算WO FW Start Date和WO Ex-fty Date放在BO中太慢，所以改为在取数时直接计算出来，2022-05-23由David修改
                foreach (var obj in cc)
                {
                    if (!obj.WOSeqNo.HasValue)
                    {
                        obj.WOSeqNo = 1;
                    }

                    string SqlStr = string.Format("exec sp_GetOurWOInfo '{0}', {1}", obj.POColorSizeDetail.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                    DataTable dt = (DataContext as POPCDataContext).ExecuteDataTable(SqlStr, "dt");
                    if (dt.Rows.Count > 0)
                    {
                        obj.WOFWStartDate = dt.Rows[0]["WOFWStartDate"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOFWStartDate"]);
                        obj.WOExftyDate = dt.Rows[0]["WOExftyDate"] == DBNull.Value ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOExftyDate"]);
                        obj.TotalWO = Convert.ToInt32(dt.Rows[0]["TotalWO"]);
                        obj.ChosenWO = dt.Rows[0]["ChosenWO"].ToString();
                    }

                    //if (obj.GRNDate != null)
                    //{
                    //    string SqlStrActDate = string.Format("exec sp_GetPOActualTransitDateInfo '{0}' , '{1}' ", obj.PONO, obj.GRNDate);
                    //    DataTable dtActDate = (DataContext as POPCDataContext).ExecuteDataTable(SqlStrActDate, "dt");
                    //    if (dtActDate.Rows.Count > 0)
                    //    {
                    //        obj.POActualTransitDate = string.IsNullOrEmpty(dtActDate.Rows[0]["ActualTransitDate"].ToString()) ? (DateTime?)null : Convert.ToDateTime(dtActDate.Rows[0]["ActualTransitDate"].ToString());
                    //        obj.HDOReleasedDate = string.IsNullOrEmpty(dtActDate.Rows[0]["HDOReleasedDate"].ToString()) ? (DateTime?)null : Convert.ToDateTime(dtActDate.Rows[0]["HDOReleasedDate"].ToString());

                    //    }
                    //}

                    if (obj.HDOReleasedDate.HasValue) //如果有HDO Release date时，Time Frame II Change Date要减掉 Handing HKCSS的天数
                    {
                        TimeFrameII TF2 = obj.TimeFrameIIObject;
                        obj.TimeFrame2Change = TF2 == null ? obj.TimeFrame2Change : TF2.LeadTimeDay - TF2.HandlingHKCCS;
                    }

                    //计算 Useful
                    obj.Useful = (DataContext as POPCDataContext).fn_GetUseful(obj.SupplierReference, obj.AdviceNote);

                    //obj.WOFWStartDate = (DataContext as POPCDataContext).fn_GetOurWOFWStartDate(obj.POColorSizeDetail.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                    //obj.WOExftyDate = (DataContext as POPCDataContext).fn_GetOurWOExFtyDate(obj.POColorSizeDetail.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                }

                List<POChangesMonitor> AllDataList = cc.ToList();


                //由david修改 2022-06-06
                if (condition.PointDestFrom != DateTime.MinValue)
                {
                    AllDataList = AllDataList.Where(p =>
                        (p.TimeFrameIIReceiveGoodEndPointDateShow.HasValue ? p.TimeFrameIIReceiveGoodEndPointDateShow : p.ArrivalPointofdestinationShow) <= condition.PointDestFrom).ToList();
                }


                //this.BindingSource.DataSource = AllDataList;
                if (ProjectType)
                {
                    this.BindingSource.DataSource = AllDataList
                         .OrderBy(dr => dr.Factory).ThenBy(dr => dr.ProjectNo).
                        ThenBy(dr => dr.PONO).ThenBy(dr => dr.OrderLine).ThenBy(dr => dr.SKU).ThenBy(dr => dr.SplitNo);
                }
                else
                {
                    this.BindingSource.DataSource = AllDataList;// ResultList.Where(dr => ProjectType && dr.POColorSizeDetail.ProjectNO.ToUpper().Contains("NO"));
                }

                //this.BindingSource.DataSource = cc;
                //GridViewSort();
                //CalOddEvenRowFlag();
            }
            finally
            {
                this.Cursor = Cursors.Default;
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
            //PH.POPC.BO.POChangesMonitor ms1 = this.bandedGridView1.GetRow(e.RowHandle1) as PH.POPC.BO.POChangesMonitor;
            //PH.POPC.BO.POChangesMonitor ms2 = this.bandedGridView1.GetRow(e.RowHandle2) as PH.POPC.BO.POChangesMonitor;

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
            if (e.Column == colDeliveryDiff)
            {
                object obj = bandedGridView1.GetRowCellValue(e.RowHandle, colDeliveryDiff);
                if (obj == null) return;

                int diff = Convert.ToInt32(obj);

                if (diff < 0) e.Appearance.ForeColor = Color.Red;
                else if (diff == 0) e.Appearance.ForeColor = Color.Blue;
            }
            else if (e.Column.FieldName == "RWO_DaysDiff" || e.Column.FieldName == "ExftyWindows")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff") == null) return;
                object RWO_DaysDiff = bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff");
                object ChosenWO = bandedGridView1.GetRowCellValue(e.RowHandle, "ChosenWO");

                if (RWO_DaysDiff == null) return;

                int iRWO_DaysDiff = Convert.ToInt32(RWO_DaysDiff);
                string sChosenWO = ChosenWO == null ? "" : ChosenWO.ToString();

                //if (sChosenWO.StartsWith("W") && iRWO_DaysDiff < 1)
                if (iRWO_DaysDiff < 1 || iRWO_DaysDiff > 28) //王生要求，沒有確認的WO，也要顯示紅色
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "RCQty") //RC Qty
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, "RCQty") == null) return;
                object RCQty = bandedGridView1.GetRowCellValue(e.RowHandle, "RCQty");
                if (RCQty == null) return;

                if (Convert.ToDouble(RCQty) > 0)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "RevisedDeliveryDateShow") //PO Delivery Date有修改日期
            {
                object POStatusObj = bandedGridView1.GetRowCellValue(e.RowHandle, "POStatus");
                if (POStatusObj != null && POStatusObj.ToString().ToUpper() == "CMPL") return;

                object POActualTransitDate = bandedGridView1.GetRowCellValue(e.RowHandle, "POActualTransitDate");
                object RevisedDeliveryDateShow = bandedGridView1.GetRowCellValue(e.RowHandle, "RevisedDeliveryDateShow");
                object PODeliveryDate = bandedGridView1.GetRowCellValue(e.RowHandle, "PODeliveryDate");
                object CompareDate = RevisedDeliveryDateShow != null ? RevisedDeliveryDateShow : PODeliveryDate;

                if (POActualTransitDate != null && Convert.ToDateTime(POActualTransitDate) > Convert.ToDateTime(CompareDate))
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
                else if (RevisedDeliveryDateShow != null && Convert.ToDateTime(RevisedDeliveryDateShow).Date <= DateTime.Now.Date) //Delivery Date 在修改日期，过期则显示红色
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
            else if (e.Column.FieldName == "PODeliveryDate") //PO Delivery Date
            {
                object POStatusObj = bandedGridView1.GetRowCellValue(e.RowHandle, "POStatus");
                if (POStatusObj != null && POStatusObj.ToString().ToUpper() == "CMPL") return;

                object POActualTransitDate = bandedGridView1.GetRowCellValue(e.RowHandle, "POActualTransitDate");
                if (POActualTransitDate != null) //如果有Act. Delivery Date，则不显示红色
                {
                    return;
                }

                object RevisedDeliveryDateShow = bandedGridView1.GetRowCellValue(e.RowHandle, "RevisedDeliveryDateShow");
                if (RevisedDeliveryDateShow != null) //如果有Rev. Delivery Date，则不显示红色
                {
                    return;
                }

                object PODeliveryDate = bandedGridView1.GetRowCellValue(e.RowHandle, "PODeliveryDate");
                if (PODeliveryDate != null)
                {
                    if (Convert.ToDateTime(PODeliveryDate).Date <= DateTime.Now.Date)
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }

        }

        private void bandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;

            if (bandedGridView1.FocusedColumn == colReceiveDate || bandedGridView1.FocusedColumn == colQty)
            {
                //bool bReadOnly = (currLot.inv.POColorSizeDetail.StockInConfirmed) && !currLot.IsOutStanding;
                bool bReadOnly = !currLot.IsOutStanding;
                e.Cancel = bReadOnly;
            }
        }
        private void objListGridControl_Load(object sender, EventArgs e)
        {
            this.GBandDedResNew.Visible = ProjectType;
            this.GBandDedRes.Visible = !ProjectType;
            this.colMaterialETADate2.Visible = Visible;

            gridBand13.Visible = gridBand49.Visible = colRelatedShptPercent.Visible =
            gridBand16.Visible = colItemColorName.Visible = gridBand17.Visible = colDeliveryDiff.Visible =

          colPOActualTransitDate.Visible = colTransitMode1Change.Visible = colTransitMode2Change.Visible =
          colTimeFrame1Change.Visible =
          colTimeFrame2Change.Visible = gridBand26.Visible = gridBand8.Visible =
          gridBand45.Visible = !ProjectType;
            //this.bandedGridView1.OptionsSelection.MultiSelect = true;
            //this.bandedGridView1.OptionsSelection.MultiSelectMode =  GridMultiSelectMode.CellSelect;
            //this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            //InitCustomSummary();
            //CalOddEvenRowFlag();

            //colPONO.SummaryItem.SummaryType = SummaryItemType.Custom;
            //colItemCode.SummaryItem.SummaryType = SummaryItemType.Custom;

            //colColorCode.SummaryItem.SummaryType = SummaryItemType.None;
            //colColorShade.SummaryItem.SummaryType = SummaryItemType.None;

            //this.gridBand8.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            //this.gridBand53,
            //this.gridBand50});

            //gridBand62.Children.Add(gridBand26);
            //gridBand62.Children.Add(gridBand27);
            //gridBand5.Children.Add(gridBand62);


            GridViewSort(); //排序一定要放在这里，让平台先加载Layout，再排序，否则layout会乱掉 David 2022-05-26
            BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);
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

                        if (!ProjectType)
                        {
                            //由David加入以下两个栏位排序 2022-05-23
                            this.colPONO.SortOrder = ColumnSortOrder.Ascending;
                            this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;

                            this.colTeam.SortOrder = ColumnSortOrder.Ascending;
                            this.colPurchaseOfficer.SortOrder = ColumnSortOrder.Ascending;
                            this.colProjectNo.SortOrder = ColumnSortOrder.Ascending;
                            this.colSKU.SortOrder = ColumnSortOrder.Ascending;
                            this.colPONO.SortOrder = ColumnSortOrder.Ascending;
                            this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;
                        }



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

                    //By Buyer Cde (then by Proj. No.) 由David增加 2022-06-02                    
                    case POPCSortBy.BuyerCode:

                        this.colBuyerCode.SortOrder = ColumnSortOrder.Ascending;
                        this.colPONO.SortOrder = ColumnSortOrder.Ascending;
                        this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;
                        this.colProjectNo.SortOrder = ColumnSortOrder.Ascending;
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

                PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
                if (currLot == null) return;

                this.btnChangeTransitMode.Visibility = BarItemVisibility.Never;
                if (currLot.IsOutStanding)
                {
                    //this.btnChangeTransitMode.Visibility = BarItemVisibility.Always;
                    this.btnAddLots.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

                    //PH.BasicInfo.BO.IncontermsTransit incontermsTransit = currLot.POColorSizeDetail.PODetail.POHeader.IncontermsTransit;
                    //if (incontermsTransit != null)
                    //{
                    //    var aa = from a in incontermsTransit.SupplierProfile.TransitModeTransitPointChanges
                    //             where a.PHFactories == incontermsTransit.PHFactories
                    //             && a.LocationofSuppFactory == incontermsTransit.LocationofSuppFactory
                    //             && a.TransitMode != currLot.TransitModePO
                    //             select a;

                    //    this.btnChangeTransitMode.Enabled = aa.Count() > 0;
                    //}
                    //else
                    //    this.btnChangeTransitMode.Enabled = false;


                    this.btnChangeTransitMode.Caption = this.btnChangeTransitMode.Enabled ? "Change Transit Mode..." : "No Transit Mode to Change.";
                }
                else
                {
                    this.btnAddLots.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    this.btnChangeTransitMode.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                }

                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
                //this.btnPOPCNotify.Visibility = (focusCol == colHowManyLot) ?
                //    DevExpress.XtraBars.BarItemVisibility.Always : DevExpress.XtraBars.BarItemVisibility.Never;

                barButtonItemActionLogGroup.Enabled = this.bandedGridView1.GetSelectedRows().Count() > 1;
                barButtonItemActionLogSingle.Enabled = !barButtonItemActionLogGroup.Enabled;

                popupMenu1.ShowPopup(Control.MousePosition);

                #region focus


                //if (this.bandedGridView1.FocusedColumn == colPartialShipment || this.bandedGridView1.FocusedColumn.FieldName == "HowManyLot")
                //{
                //    //currLot.POColorSizeDetail.Qty

                //    this.btnShipmentYes.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                //    this.btnChangeTransitMode.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                //    //menu = new GridViewColumnButtonMenu(gridView1);
                //    //menu.Init(hi);
                //    popupMenu1.ShowPopup(Control.MousePosition);
                //}
                //else if (this.bandedGridView1.FocusedColumn == colTransitModeHaveChanged
                //    || this.bandedGridView1.FocusedColumn == colTransitModeChanged)
                //{
                //    this.btnShipmentYes.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                //    //this.btnChangeTransitMode.Visibility = (currLot.StockInConfirmed ?? false) ? DevExpress.XtraBars.BarItemVisibility.Never : DevExpress.XtraBars.BarItemVisibility.Always;

                //    PH.BasicInfo.BO.IncontermsTransit incontermsTransit = currLot.POColorSizeDetail.PODetail.POHeader.IncontermsTransit;
                //    if (incontermsTransit != null)
                //    {
                //        var aa = from a in incontermsTransit.SupplierProfile.TransitModeTransitPointChanges
                //                 where a.PHFactories == incontermsTransit.PHFactories
                //                 && a.LocationofSuppFactory == incontermsTransit.LocationofSuppFactory
                //                 select a;

                //        this.btnChangeTransitMode.Enabled = aa.Count() > 0;
                //    }
                //    else
                //        this.btnChangeTransitMode.Enabled = false;

                //    this.btnChangeTransitMode.Caption = this.btnChangeTransitMode.Enabled ? "Change Transit Mode..." : "No Transit Mode to Change.";
                //    popupMenu1.ShowPopup(Control.MousePosition);
                //}
                #endregion
            }
        }

        private void btnAddLots_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;

            using (PH.POPC.UI.POPC.POPCLevel2EntranceKeyForm frm = new PH.POPC.UI.POPC.POPCLevel2EntranceKeyForm(currLot))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    int newLots = frm.NewLots;

                    //this.bandedGridView1.BeginDataUpdate();
                    try
                    {
                        AddLots(currLot, frm.POPCLevel2s);
                    }
                    finally
                    {
                        //this.bandedGridView1.EndDataUpdate();
                    }
                }
            }
        }
        private void AddLots(PH.POPC.BO.POChangesMonitor currLot, List<POPCLevel2> lvs)
        {
            currLot.CurrentDataContext = this.DataContext;
            currLot.CurrentBindingSource = this.BindingSource;
            currLot.POColorSizeDetail.CurrentDataContext = this.DataContext;
            currLot.POColorSizeDetail.CurrentBindingSource = this.BindingSource;

            foreach (POPCLevel2 lv in lvs)
            {
                if (lv.HaveSplited)
                {
                    var lot = (from a in currLot.POColorSizeDetail.POChangesMonitors
                               where a.SplitNo == lv.SplitNo
                               select a).FirstOrDefault<POChangesMonitor>();
                    if (lot != null)
                    {
                        lot.RevisedDeliveryDate = lv.RevisedDeliveryDate;
                        lot.TransitModeChanged = lv.TransitModeChanged;
                        lot.ChangedTimeFrame1 = lv.ChangedTimeFrame1;
                        lot.SplitQty = lv.SplitQty;
                    }

                }
                else
                {
                    object obj = this.BindingSource.AddNew();
                    PH.POPC.BO.POChangesMonitor lot = obj as PH.POPC.BO.POChangesMonitor;

                    //PH.POPC.BO.POChangesMonitor lot = new PH.POPC.BO.POChangesMonitor();
                    lot.POColorSizeDetail = currLot.POColorSizeDetail;
                    lot.CurrentDataContext = this.DataContext;
                    lot.CurrentBindingSource = this.BindingSource;

                    lot.BOWorkMode = PH.Platform.BO.Interface.WorkMode.New;
                    lot.Company = currLot.Company;
                    lot.PONO = currLot.PONO;
                    lot.Version = currLot.Version;
                    lot.AmendmentNo = currLot.AmendmentNo;
                    lot.OrderLine = currLot.OrderLine;
                    lot.SKU = currLot.SKU;
                    //lot.HandleType = currLot.HandleType;
                    lot.SplitNo = lv.SplitNo;// i + 1;
                    //P065322
                    lot.RevisedDeliveryDate = lv.RevisedDeliveryDate;
                    lot.TransitModeChanged = lv.TransitModeChanged;
                    lot.ChangedTimeFrame1 = lv.ChangedTimeFrame1;
                    lot.SplitQty = lv.SplitQty;

                    lot.VersionFlag = currLot.VersionFlag;
                }
                // currLot.POColorSizeDetail.POSKUOperates.Add(lot);
                this.BindingSource.EndEdit();//非常重要
                this.context.SubmitChanges();

            }

        }

        private void btnChangeTransitMode_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;

            ChangeTransitMode(currLot);
        }
        private void ChangeTransitMode(PH.POPC.BO.POChangesMonitor lot)
        {
            using (PH.POPC.UI.POPC.ChangeTransitModeForm frm = new PH.POPC.UI.POPC.ChangeTransitModeForm(lot.POColorSizeDetail.PODetail.POHeader.IncontermsTransit, lot.TransitModePO))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    lot.TransitModeChanged = (frm.NewModeChanged == null) ? null : frm.NewModeChanged.TransitMode;
                    lot.ChangedTimeFrame1 = (frm.NewModeChanged == null) ? (int?)null : frm.NewModeChanged.TimeFrame;
                }
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
            PH.POPC.BO.POChangesMonitor pur = this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle) as PH.POPC.BO.POChangesMonitor;
            if (pur == null) return;
            PH.POPC.BackEnd.ReportHelper reportHelper = new PH.POPC.BackEnd.ReportHelper();
            DataTable dt = POPCReport.GetShipmentDetail(pur.POColorSizeDetail);
            DevExpress.XtraReports.UI.XtraReport report = reportHelper.DoShipmentDetailPrint(dt);

#if Platform2014
            PH.Platform.UI.CS.ReportHelper.Show(report);
#else
            report.ShowPreviewDialog();
#endif
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
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
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

        private void btnFrontPage_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.TwoA);
        }
        private void btnSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoA);
        }
        private void btnL2Supplement_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoB);

        }
        private void btnLevel2a_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoA);

        }
        private void btnLevel2b_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoB);
        }

        //---------------Change-----------------------
        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.TwoAChange);
        }

        private void barButtonItem2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoAChange);

        }

        private void btnLevel2aC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoAChange);
        }
        private void btnLevel2bC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.TwoBChange);
        }
        private void btnL2SupplementC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.TwoBChange);
        }
        private void btnItemChanged_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.ItemChanged, POPCPrintLevel.None);

        }

        #endregion

        //#region Summary

        //private void InitCustomSummary()
        //{
        //    SetColumnCustomSummary("PONO");
        //    SetColumnCustomSummary("Supplier");
        //    SetColumnCustomSummary("SupplierReference");
        //    SetColumnCustomSummary("EndCustCode");
        //    SetColumnCustomSummary("ColorCode");
        //    SetColumnCustomSummary("ColorShade");
        //    this.bandedGridView1.OptionsView.ShowFooter = true;
        //    this.bandedGridView1.CustomSummaryCalculate += new CustomSummaryEventHandler(bandedGridView1_CustomSummaryCalculate);
        //}
        //private void SetColumnCustomSummary(string fieldName)
        //{
        //    DevExpress.XtraGrid.Columns.GridColumn col = this.bandedGridView1.Columns[fieldName];
        //    if (col == null) return;

        //    col.SummaryItem.SummaryType = SummaryItemType.Custom;
        //    col.SummaryItem.DisplayFormat = "";
        //    //col.SummaryItem.DisplayFormat = "Nr. {0}";
        //    col.SummaryItem.Tag = fieldName;

        //}

        //List<string> _PONOs;
        //List<string> _Supps;
        //List<string> _SuppRefs;
        //List<string> _Custs;
        //List<string> _Colors;
        //List<string> _ColorShades;

        //private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        //{
        //    // Get the summary ID.
        //    string summaryID = Convert.ToString((e.Item as GridSummaryItem).Tag);
        //    if (string.IsNullOrEmpty(summaryID)) return;

        //    GridView view = sender as GridView;

        //    // Initialization
        //    if (e.SummaryProcess == CustomSummaryProcess.Start)
        //    {
        //        _PONOs.Clear();
        //        _Supps.Clear();
        //        _SuppRefs.Clear();
        //        _Custs.Clear();
        //        _Colors.Clear();
        //        _ColorShades.Clear();
        //    }
        //    // Calculation
        //    if (e.SummaryProcess == CustomSummaryProcess.Calculate)
        //    {
        //        string pono = (string)view.GetRowCellValue(e.RowHandle, "PONO");
        //        string supp = (string)view.GetRowCellValue(e.RowHandle, "Supplier");
        //        string suppref = (string)view.GetRowCellValue(e.RowHandle, "SupplierReference");
        //        string cust = (string)view.GetRowCellValue(e.RowHandle, "EndCustCode");
        //        string color = (string)view.GetRowCellValue(e.RowHandle, "ColorCode");
        //        string colorShade = (string)view.GetRowCellValue(e.RowHandle, "ColorShade");

        //        switch (summaryID)
        //        {
        //            case "PONO":
        //                if (!string.IsNullOrEmpty(pono) && !_PONOs.Contains(pono))
        //                    _PONOs.Add(pono);
        //                break;
        //            case "Supplier":
        //                if (!string.IsNullOrEmpty(supp) && !_Supps.Contains(supp))
        //                    _Supps.Add(supp);
        //                break;
        //            case "SupplierReference":
        //                if (!string.IsNullOrEmpty(suppref) && !_SuppRefs.Contains(suppref))
        //                    _SuppRefs.Add(suppref);
        //                break;

        //            case "EndCustCode":
        //                if (!string.IsNullOrEmpty(cust) && !_Custs.Contains(cust))
        //                    _Custs.Add(cust);
        //                break;
        //            case "ColorCode":
        //                if (!string.IsNullOrEmpty(color) && !_Colors.Contains(color))
        //                    _Colors.Add(color);
        //                break;
        //            case "ColorShade":
        //                if (!string.IsNullOrEmpty(colorShade) && !_ColorShades.Contains(colorShade))
        //                    _ColorShades.Add(colorShade);
        //                break;
        //        }
        //    }
        //    // Finalization
        //    if (e.SummaryProcess == CustomSummaryProcess.Finalize)
        //    {
        //        switch (summaryID)
        //        {
        //            case "PONO":
        //                e.TotalValue = _PONOs.Count;
        //                break;
        //            case "Supplier":
        //                e.TotalValue = _Supps.Count;
        //                break;
        //            case "SupplierReference":
        //                e.TotalValue = _SuppRefs.Count;
        //                break;

        //            case "EndCustCode":
        //                e.TotalValue = _Custs.Count;
        //                break;
        //            case "ColorCode":
        //                e.TotalValue = _Colors.Count;
        //                break;
        //            case "ColorShade":
        //                e.TotalValue = _ColorShades.Count;
        //                break;
        //        }
        //    }

        //}

        //#endregion

        #region Notify
        private string GetConfigValue()
        {
            System.Reflection.Assembly assembly = System.Reflection.Assembly.GetCallingAssembly();
            System.Configuration.Configuration configuration;
            ExeConfigurationFileMap map = new ExeConfigurationFileMap();

            //Uri uri = new Uri(Path.GetDirectoryName(assembly.CodeBase));
            map.ExeConfigFilename = System.IO.Path.Combine(Application.StartupPath, assembly.GetName().Name + ".dll.config");
            string str = ConfigurationManager.OpenMappedExeConfiguration(map, 0).AppSettings.Settings["NotifyPath"].Value;
            return str;
        }
        private void ribeNotify_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            //NotifyMail();
            OpenNotify();
        }
        private void NotifyMail()
        {
            //PH.POPC.BO.POChangesMonitor pur = this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle) as PH.POPC.BO.POChangesMonitor;
            //if (pur == null) return;

            //if (string.IsNullOrEmpty(pur.Remark))
            //{
            //    MessageBox.Show("Notepad cannote be empty!", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //    return;
            //}

            List<PH.POPC.BO.POChangesMonitor> list = new List<POChangesMonitor>();
            for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
            {
                int j = bandedGridView1.GetSelectedRows()[i];//selected handle
                if (j >= 0)
                {
                    POChangesMonitor currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POChangesMonitor;
                    if (currLot == null) continue;

                    list.Add(currLot);
                }
            }

            //string fileName = GetConfigValue();// @"D:\Project-ORM2\PH.POPC\Release\POPCNotify.exe";
            //string param = string.Format(" \"{0}\" \"{1}\" \"{2}\" \"{3}\" \"{4}\" \"{5}\" \"{6}\" \"{7}\" ", pur.Company, pur.PONO, pur.Version, pur.AmendmentNo, pur.OrderLine, pur.SKU, pur.SplitNo
            //    , PH.Platform.AuthMgr.BO.Environment.Instance.CurrentUser.UserName);
            //Process process = new Process();
            //try
            //{
            //    process.StartInfo.FileName = fileName;
            //    process.StartInfo.Arguments = param;
            //    process.Start();
            //}
            //catch
            //{
            //}


            //Notify.NotifyForm frm = new Notify.NotifyForm(list);
            //frm.ShowDialog();
        }

        private void btnPOPCNotify_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //NotifyMail();
            OpenNotify();
        }

        private void OpenNotify()
        {
            List<PH.POPC.BO.POColorSizeDetail> list = new List<POColorSizeDetail>();
            for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
            {
                int j = bandedGridView1.GetSelectedRows()[i];//selected handle
                if (j >= 0)
                {
                    POChangesMonitor currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POChangesMonitor;
                    if (currLot == null) continue;

                    POColorSizeDetail t1 = list.Find(delegate(POColorSizeDetail t2)
                    {
                        return currLot.Company == t2.Company && currLot.PONO == t2.PONO && currLot.Version == t2.Version && currLot.AmendmentNo == t2.AmendmentNo
                           && currLot.OrderLine == t2.OrderLine && currLot.SKU == t2.SKU;
                    });
                    if (t1 != null) continue;
                    if (currLot.POColorSizeDetail == null) continue;
                    list.Add(currLot.POColorSizeDetail);
                }
            }
            if (list.Count == 0) return;

            List<string> supps = new List<string>();
            foreach (var s in list)
            {
                if (supps.Contains(s.Supplier)) continue;

                supps.Add(s.Supplier);
            }

            if (supps.Count > 1)
            {
                MessageBox.Show("Cannot select more than 1 supplier!", "Wanring", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            //p.CurrentDataContext = this.DataContext;

            PH.POPC.UI.POInfo poinfo = new POInfo();
            poinfo.POPCPage = this.TabControls.SelectedTabPage;
            poinfo.POPCView = this.BindingSource;
            poinfo.Pur = null;
            poinfo.Grid = this.objListGridControl;
            poinfo.GridView = this.bandedGridView1;

            CreateProgramForm(typeof(PH.POPC.UI.PONotifyListForm), "POPC-Notepad", true, new object[] { list, this.TabControls.SelectedTabPage, poinfo }, null);

        }

        #endregion

        //public override OptionsLayoutGrid SetOptionLayout()
        //{
        //    //return base.SetOptionLayout();
        //    OptionsLayoutGrid opts = new OptionsLayoutGrid();
        //    opts.StoreAllOptions = false; //default is false;
        //    opts.StoreAppearance = false; //default is false;
        //    opts.StoreVisualOptions = true; //default is true;
        //    opts.StoreDataSettings = true; //default is true;
        //    opts.Columns.StoreAllOptions = false; //default is false;
        //    opts.Columns.StoreAppearance = false; //default is false;
        //    opts.Columns.StoreLayout = true; //defautl value is true

        //    opts.Columns.AddNewColumns = true; //default is true
        //    opts.Columns.RemoveOldColumns = true; //default is true
        //    return opts;
        //}

        private void bandedGridView1_CustomDrawCell(object sender, RowCellCustomDrawEventArgs e)
        {
            //  object NeedSkewnessAndBow = bandedGridView1.GetRowCellValue(e.RowHandle, "NeedSkewnessAndBow");
            //if (NeedSkewnessAndBow != null && NeedSkewnessAndBow.ToString() == "N" && ShowNAFields.Contains(e.Column.FieldName))
            //{
            //    e.DisplayText = "n.a.";
            //}

            if (e.Column.FieldName == "RWO_DaysDiff" || e.Column.FieldName == "ExftyWindows")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff") == null) return;
                object RWO_DaysDiff = bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff");
                object ChosenWO = bandedGridView1.GetRowCellValue(e.RowHandle, "ChosenWO");

                if (RWO_DaysDiff == null) return;

                int iRWO_DaysDiff = Convert.ToInt32(RWO_DaysDiff);
                string sChosenWO = ChosenWO == null ? "" : ChosenWO.ToString();
                if (sChosenWO.StartsWith("W") && iRWO_DaysDiff < 1)
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }


                //if (bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff") == null) return;
                //object RWO_DaysDiff = bandedGridView1.GetRowCellValue(e.RowHandle, "RWO_DaysDiff");
                //object ChosenWO = bandedGridView1.GetRowCellValue(e.RowHandle, "ChosenWO");
                //if (RWO_DaysDiff == null || string.IsNullOrEmpty(RWO_DaysDiff.ToString())) return;

                //int iRWO_DaysDiff = Convert.ToInt32(RWO_DaysDiff);
                //string sChosenWO = ChosenWO == null ? "" : ChosenWO.ToString();
                //if (sChosenWO.StartsWith("W") && iRWO_DaysDiff < 1)
                //{
                //    e.Appearance.ForeColor = System.Drawing.Color.Red;
                //}

                //if (string.IsNullOrEmpty(sRWO_DaysDiff)) return;


                //if (sRWO_DaysDiff.Contains("-"))
                //{
                //    e.Appearance.ForeColor = System.Drawing.Color.Red;
                //}
                //else if (sRWO_DaysDiff.Contains("+"))
                //{
                //    int RWO_DaysDiff = Convert.ToInt32(sRWO_DaysDiff.Replace("+", ""));
                //    if (RWO_DaysDiff < 2)
                //    {
                //        //e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                //        e.Appearance.ForeColor = System.Drawing.Color.Red;
                //    }
                //}

            }

        }

        private void barButtonItem3_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //this.SaveLayoutToXml(bandedGridView1);
            //this.bandQty.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            //this.gridBand29,
            //this.gridBand30,
            //this.gridBand31});

            //gridBand39.RowCount = 2;
            //gridBand41.RowCount = 2;
            //gridBand10.RowCount = 2;

            //this.gridBand46.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            //this.gridBand47,
            //this.gridBand48});

            //this.gridBand46.Tag = 0;

        }

        private void bandedGridView1_ValidateRow(object sender, ValidateRowEventArgs e)
        {
            POChangesMonitor obj = this.BindingSource.Current as POChangesMonitor;
            if (obj == null) return;

            BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();

            //修改了Transit Mode 1时，重新计算 Time Frame 1 Chnage (days)
            if (!string.IsNullOrEmpty(obj.TransitMode1Change) && obj.TransitMode1Change != obj.TransitModePO)
            {
                var TimeFrame1Obj = db.IncontermsTransits.FirstOrDefault(p => p.ERPSupplier == obj.Supplier && p.PHFactories == obj.Factory &&
                    p.TransitMode == obj.TransitMode1Change && p.Incoterms == obj.Incoterms);

                if (TimeFrame1Obj == null)
                {
                    string Str = string.Format("The transit mode 1 {0} is not find of the supplier {1} in the Supplier Profile System, Pls check!", obj.TransitMode1Change, obj.Supplier);
                    this.BindingSource.CancelEdit();
                    e.Valid = false;
                    MessageBox.Show(Str, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                obj.TimeFrame1Change = TimeFrame1Obj.TimeFrame;
            }

            //修改了Transit Mode 2 时，重新计算 Time Frame 2 Chnage (days)
            if (!string.IsNullOrEmpty(obj.TransitMode2Change) && obj.TransitMode2Change != obj.TransitMode2Show)
            {
                string StartPoint = obj.POColorSizeDetail.PODetail.POHeader.TimeFrameIIStartPoint;
                string EndPoint = obj.POColorSizeDetail.PODetail.POHeader.TimeFrameIIEndPoint;
                var TimeFrameIIObj = db.TimeFrameIIs.FirstOrDefault(p => p.TransitMode == obj.TransitMode2Change && p.StartPoint == StartPoint && p.EndPoint == EndPoint);

                if (TimeFrameIIObj == null)
                {
                    string Str = string.Format("The transit mode 2 {0} is not find in the Supplier Profile System, Pls check!", obj.TransitMode2Change);
                    MessageBox.Show(Str, "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    this.BindingSource.CancelEdit();
                    e.Valid = false;
                    return;
                }

                obj.TimeFrame2Change = TimeFrameIIObj.LeadTimeDay;
            }
        }

        //void CalOddEvenRowFlag()
        //{
        //    string SaveOddEventRowFlag = "";
        //    string SavePONO = "0";
        //    int SaveOrderLine = 0;
        //    for (int i = 0; i < bandedGridView1.RowCount; i++)
        //    {
        //        POChangesMonitor obj = bandedGridView1.GetRow(i) as POChangesMonitor;
        //        if (obj == null) continue;
        //        if (i == 0)
        //        {
        //            SaveOddEventRowFlag = "1";
        //            obj.OddEvenRowFlag = SaveOddEventRowFlag;
        //            SavePONO = obj.PONO;
        //            SaveOrderLine = obj.OrderLine;
        //        }
        //        else
        //        {
        //            if (obj.PONO == SavePONO && obj.OrderLine == SaveOrderLine)
        //            {
        //                obj.OddEvenRowFlag = SaveOddEventRowFlag;
        //            }
        //            else
        //            {
        //                SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
        //                obj.OddEvenRowFlag = SaveOddEventRowFlag;
        //                SavePONO = obj.PONO;
        //                SaveOrderLine = obj.OrderLine;
        //            }
        //        }
        //    }
        //}

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            //CalOddEvenRowFlag();
        }

        private void bandedGridView1_CustomSummaryCalculate_1(object sender, CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<POChangesMonitor> lists = bandedGridView1.FilteredList().Cast<POChangesMonitor>();

                switch (item.FieldName)
                {
                    case "PONO":
                        e.TotalValue = lists.Select(p => p.PONO).Distinct().Count();
                        break;

                    case "ItemCode":
                        e.TotalValue = lists.Select(p => p.ItemCode).Distinct().Count();
                        break;

                    case "Supplier":
                        e.TotalValue = lists.Select(p => p.Supplier).Distinct().Count();
                        break;

                    case "SupplierReference":
                        e.TotalValue = lists.Select(p => p.SupplierReference).Distinct().Count();
                        break;
                }

            }
        }



        #region Action Log

        private void repositoryItemButtonEdit_ActionLog_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            //POPCDataContext db = DataContext as POPCDataContext;
            //POChangesMonitor obj = this.BindingSource.Current as POChangesMonitor;

            ////PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(db, obj, this);
            //PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(db, obj, this);
            //frmAlertLog.ShowDialog();
        }

        //int GetNewActionLogReqNo()
        //{
        //    POPCDataContext db = DataContext as POPCDataContext;
        //    int? iActionLogSeqNo = db.POChangesMonitors.Where(p => Convert.ToString(p.ActionLogSeqNo).Substring(0, 6) == DateTime.Today.ToString("yyyyMM")).Max(p => p.ActionLogSeqNo);
        //    if (iActionLogSeqNo == null)
        //    {
        //        iActionLogSeqNo = Convert.ToInt32(DateTime.Today.ToString("yyyyMM") + "01");
        //    }
        //    else
        //    {
        //        iActionLogSeqNo += 1;
        //    }
        //    return iActionLogSeqNo ?? 0;
        //}

        public void SaveActionLogInfo(string AActionLogSeqNo, long? AActionLogOID)
        {
            POPCDataContext db = this.DataContext as POPCDataContext;

            //先计算Action Log Group
            List<POChangesMonitor> POChangesMonitorList = new List<POChangesMonitor>();
            foreach (var i in bandedGridView1.GetSelectedRows())
            {
                POChangesMonitor row = bandedGridView1.GetRow(i) as POChangesMonitor;
                POChangesMonitorList.Add(row);
            }
            string ActionLogGroupFlag = POChangesMonitorList.GroupBy(p => new { p.PONO, p.OrderLine, p.ColorCode, p.SplitNo }).Count() > 1 ? "Y" : "N";

            //int? NewActionLogReqNo = GetNewActionLogReqNo();
            foreach (var i in bandedGridView1.GetSelectedRows())
            {
                POChangesMonitor row = bandedGridView1.GetRow(i) as POChangesMonitor;

                row.ActionLogHeader = db.ActionLogHeaders.FirstOrDefault(p => p.OID == AActionLogOID);
                row.ActionLogSeqNo = AActionLogSeqNo;
                row.ActionLogOID = AActionLogOID;

                if (string.IsNullOrEmpty(row.ActionLogGroup))
                {
                    row.ActionLogGroup = ActionLogGroupFlag;
                }

                //if (!row.ActionLogSeqNo.HasValue)
                //{
                //    row.ActionLogSeqNo = NewActionLogReqNo;

                //    //將Level 3中的Action Log Seq#回寫到Action Log Header表
                //    ActionLogHeader ActionLogHeaderObj = db.ActionLogHeaders.FirstOrDefault(p => p.OID == AActionLogOID);
                //    if (ActionLogHeaderObj != null)
                //    {
                //        ActionLogHeaderObj.ActionLogSeqNo = row.ActionLogSeqNo.ToString();
                //    }
                //}
            }

            this.BindingSource.EndEdit();
            this.bandedGridView1.HideEditor();
            db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
            this.bandedGridView1.RefreshData();
        }

        private void barButtonItemActionLogGroup_ItemClick(object sender, ItemClickEventArgs e)
        {
            //foreach (var i in bandedGridView1.GetSelectedRows())
            //{
            //    POChangesMonitor row = bandedGridView1.GetRow(i) as POChangesMonitor;
            //    if (!string.IsNullOrEmpty(row.ActionLogSeqNo))
            //    {
            //        MessageBox.Show("When adding a new group action log, the column Log Seq# of selection line must be all blank", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //        return;
            //    }
            //}

            //POPCDataContext db = DataContext as POPCDataContext;
            //POChangesMonitor obj = this.BindingSource.Current as POChangesMonitor;

            //PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(db, bandedGridView1, this);
            //frmAlertLog.ShowDialog();
        }

        private void barButtonItemActionLogSingle_ItemClick(object sender, ItemClickEventArgs e)
        {
            //POPCDataContext db = DataContext as POPCDataContext;
            //POChangesMonitor obj = this.BindingSource.Current as POChangesMonitor;

            ////PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(db, obj, this);
            //PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(db, obj, this);
            //frmAlertLog.ShowDialog();
        }

        //批量设置Mat'l Standby
        private void barButtonItemMaterialStandby_Y_ItemClick(object sender, ItemClickEventArgs e)
        {
            SetMaterialStandby("Y");
        }

        private void barButtonItemMaterialStandby_N_ItemClick(object sender, ItemClickEventArgs e)
        {
            SetMaterialStandby("N");
        }

        void SetMaterialStandby(string AFlag)
        {
            string Str = string.Format("Set the Mat'l Standby to {0} for all displayed rows in the grid", AFlag);
            if (MessageBox.Show(Str, "Confirm", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                IEnumerable<POChangesMonitor> lists = bandedGridView1.FilteredList().Cast<POChangesMonitor>();
                foreach (var obj in lists)
                {
                    obj.MaterialStandBy = AFlag;
                }
                context.SubmitChanges();
                bandedGridView1.PostEditor();
                bandedGridView1.RefreshData();
            }
        }


        #endregion

        private void bandedGridView1_CellValueChanged(object sender, CellValueChangedEventArgs e)
        {
            //修改 WO Seq#時，即時刷新 WO FW Start Date、WO Exfty Date
            if (e.Column.FieldName == "WOSeqNo")
            {
                //POChangesMonitor obj = this.BindingSource.Current as POChangesMonitor;

                //string SqlStr = string.Format("exec sp_GetOurWOInfo '{0}', {1}", obj.POColorSizeDetail.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                //DataTable dt = (DataContext as POPCDataContext).ExecuteDataTable(SqlStr, "dt");
                //if (dt.Rows.Count > 0)
                //{
                //    int WOSeqNo = obj.WOSeqNo ?? 1;
                //    DateTime? WOFWStartDate = dt.Rows[0]["WOFWStartDate"] == null ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOFWStartDate"]);
                //    DateTime? WOExftyDate = dt.Rows[0]["WOExftyDate"] == null ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOExftyDate"]);
                //    int TotalWO = Convert.ToInt32(dt.Rows[0]["TotalWO"]);
                //    string ChosenWO = dt.Rows[0]["ChosenWO"].ToString();

                //    string PONO = obj.PONO;
                //    int OrderLine = obj.OrderLine;
                //    string ColorCode = obj.ColorCode;
                //    int SplitNo = obj.SplitNo;

                //    IEnumerable<POChangesMonitor> AllDataList = this.BindingSource.List as IEnumerable<POChangesMonitor>;
                //    var lists = AllDataList.Where(p => p.PONO == PONO && p.OrderLine == OrderLine && p.ColorCode == ColorCode && p.SplitNo == SplitNo);
                //    foreach (var o in lists)
                //    {
                //        o.WOSeqNo = WOSeqNo;
                //        o.WOFWStartDate = WOFWStartDate;
                //        o.WOExftyDate = WOExftyDate;
                //        o.TotalWO = TotalWO;
                //        o.ChosenWO = ChosenWO;
                //    }
                //}


                POChangesMonitor obj = this.BindingSource.Current as POChangesMonitor;

                string SqlStr = string.Format("exec sp_GetOurWOInfo '{0}', {1}", obj.POColorSizeDetail.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                DataTable dt = (DataContext as POPCDataContext).ExecuteDataTable(SqlStr, "dt");
                if (dt.Rows.Count > 0)
                {
                    obj.WOFWStartDate = dt.Rows[0]["WOFWStartDate"] == null ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOFWStartDate"]);
                    obj.WOExftyDate = dt.Rows[0]["WOExftyDate"] == null ? (DateTime?)null : Convert.ToDateTime(dt.Rows[0]["WOExftyDate"]);
                    obj.TotalWO = Convert.ToInt32(dt.Rows[0]["TotalWO"]);
                    obj.ChosenWO = dt.Rows[0]["ChosenWO"].ToString();
                }
            }
        }

        #region 选择WO Seq No.
        private void repositoryItemButtonEdit_WOSeqNo_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            POChangesMonitor obj = this.BindingSource.Current as POChangesMonitor;
            if (obj == null) return;

            SelectWOSeqNoForm frmSelectWOSeqNo = new SelectWOSeqNoForm(obj.POColorSizeDetail.PODetail.ProjectNo);
            if (frmSelectWOSeqNo.ShowDialog() == DialogResult.OK)
            {
                if (frmSelectWOSeqNo.CurrentChoiceObj == null) return;

                bandedGridView1.SetFocusedRowCellValue(colWOSeqNo, Convert.ToInt32(frmSelectWOSeqNo.CurrentChoiceObj.SeqNo));
                bandedGridView1.PostEditor();

            }
        }
        #endregion

        #region 网格表头加背景颜色
        private void bandedGridView1_CustomDrawColumnHeader(object sender, ColumnHeaderCustomDrawEventArgs e)
        {

            //if (e.Column == null) return;

            //DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            //if (col.OwnerBand == null) return;

            //string sTag = col.OwnerBand.Tag.ToString();

            ////object obj = GetParentBandTag(col.OwnerBand);

            ////object objCol = col.Tag;
            ////if (obj == null && objCol == null) return;

            //////由David修改以下這句代碼 2022-03-14
            //////string sTag = objCol != null ? Convert.ToString(objCol) : Convert.ToString(obj); 

            ////string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            //if (sTag == "") return;



            if (e.Column == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn col = e.Column as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (col.OwnerBand == null) return;

            object obj = GetParentBandTag(col.OwnerBand);

            object objCol = col.Tag;
            if (obj == null && objCol == null) return;

            ////由David修改以下這句代碼 2022-03-14
            ////string sTag = objCol != null ? Convert.ToString(objCol) : Convert.ToString(obj); 

            string sTag = obj == null ? Convert.ToString(objCol) : Convert.ToString(obj);

            if (sTag == "") return;

            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Brush brushPressed = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.WhiteSmoke, Color.Gray, 90);
            Rectangle r = e.Bounds;

            DevExpress.Utils.Drawing.ObjectInfoArgs filterInfo = null;
            Rectangle filterBounds, sortBounds;
            filterBounds = sortBounds = Rectangle.Empty;
            try
            {
                UpdateInnerElements(e, false, ref sortBounds, ref filterBounds, ref filterInfo);
                e.Painter.DrawObject(e.Info);
            }
            finally
            {
                UpdateInnerElements(e, true, ref sortBounds, ref filterBounds, ref filterInfo);
            }

            Brush brush;
            switch (sTag)
            {
                case "1":
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    //e.Appearance.BackColor = colorBlue;
                    break;
                default:
                    brush = brushYellow;
                    //e.Appearance.BackColor = colorYellow;
                    break;
            }

            //e.Column.AppearanceHeader.BackColor = e.Appearance.BackColor;

            if (e.Column.FieldName == "WOFWStartDate" || e.Column.FieldName == "WOExftyDate") //設置特別的顏色
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            }

            BorderObjectInfoArgs border = new BorderObjectInfoArgs(null, r, null);
            BorderPainter borderPainter = (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? (BorderPainter)new Border3DSunkenPainter() : (BorderPainter)new Border3DRaisedPainter());
            ObjectPainter.DrawObject(e.Cache, borderPainter, border);
            r.Inflate(-1, -1);

            e.Graphics.FillRectangle((e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? brushPressed : brush), r);
            r.Inflate(-2, 0);

            e.Appearance.DrawString(e.Cache, e.Column.Caption, r);

            //if (_fieldNames.IndexOf(col.FieldName) > 0)
            //    RemoveSortGlyphIfNeccessary(e);
            //if (!sortBounds.IsEmpty)
            //    DrawCustomSortedShape(e.Graphics, sortBounds, e.Column.SortOrder, null);
            //if (!filterBounds.IsEmpty && filterInfo != null)

            //    DrawCustomFilterButton(e.Graphics, e.Column, filterInfo, null);

            e.Info.InnerElements.DrawObjects(e.Info, e.Info.Cache, Point.Empty);
            e.Handled = true;
        }

        void UpdateInnerElements(DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventArgs e, bool restore, ref Rectangle sortBounds, ref Rectangle filterBounds, ref ObjectInfoArgs filterInfo)
        {
            foreach (DevExpress.Utils.Drawing.DrawElementInfo item in e.Info.InnerElements)
            {
                if (item.ElementPainter is DevExpress.Utils.Drawing.SortedShapeObjectPainter)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = sortBounds;
                    }
                    else
                    {
                        sortBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
                if (item.ElementInfo is DevExpress.XtraEditors.Drawing.GridFilterButtonInfoArgs)
                {
                    if (restore)
                    {
                        item.ElementInfo.Bounds = filterBounds;
                    }
                    else
                    {
                        filterInfo = item.ElementInfo;
                        filterBounds = item.ElementInfo.Bounds;
                        item.ElementInfo.Bounds = Rectangle.Empty;
                    }
                }
            }
        }

        private object GetParentBandTag(DevExpress.XtraGrid.Views.BandedGrid.GridBand subBand)
        {
            object obj = subBand.Tag;
            if (obj != null) return obj;

            if (subBand.ParentBand != null)
                return GetParentBandTag(subBand.ParentBand);

            return obj;
        }

        private void bandedGridView1_CustomDrawBandHeader(object sender, DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventArgs e)
        {
            if (e.Band == null || e.Band.Tag == null) return;

            string sTag = e.Band.Tag.ToString();
            if (string.IsNullOrEmpty(sTag)) return;


            Color colorGray = Color.FromArgb(217, 217, 217);
            Color colorYellow = Color.FromArgb(235, 241, 222);
            Color colorBlue = Color.FromArgb(220, 230, 241);

            Brush brushGray = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorGray, colorGray, 90);
            Brush brushYellow = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorYellow, colorYellow, 90);
            Brush brushBlue = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), colorBlue, colorBlue, 90);

            Rectangle r = e.Bounds;
            ControlPaint.DrawBorder3D(e.Graphics, r, (e.Info.State == DevExpress.Utils.Drawing.ObjectState.Pressed ? Border3DStyle.SunkenOuter : Border3DStyle.RaisedInner));
            r.Inflate(-1, -1);

            Brush brush;
            switch (sTag)
            {
                case "0":
                    brush = brushGray;
                    break;
                case "1":
                    brush = brushYellow;
                    break;
                case "2":
                    brush = brushBlue;
                    break;
                default:
                    brush = brushYellow;
                    break;
            }

            if (e.Band.Name == "gridBand27")
            {
                brush = new System.Drawing.Drawing2D.LinearGradientBrush(Rectangle.Inflate(e.Bounds, 1, 1), Color.Moccasin, Color.Moccasin, 90);
            }

            e.Graphics.FillRectangle(brush, r);
            r.Inflate(-2, 0);
            e.Appearance.DrawString(e.Cache, e.Band.Caption, r);
            e.Handled = true;
        }

        #endregion

        private void btnExport_ItemClick(object sender, ItemClickEventArgs e)
        {
            if (MessageBox.Show("是否將當前顯示的所有PO資料導出到Outstanding PO?", "確認", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.No)
            {
                return;
            }

            try
            {
                POPCDataContext db = ContextBuilder.CreateContext<POPCDataContext>();
                IEnumerable<POChangesMonitor> lists = bandedGridView1.FilteredList().Cast<POChangesMonitor>();
                foreach (var o in lists)
                {
                    Z_OutstandingPO obj = new Z_OutstandingPO();
                    obj.BuyerCode = o.BuyerCode;
                    obj.PONO = o.PONO;
                    obj.OrderLine = o.OrderLine;
                    obj.SplitNo = o.SplitNo;
                    obj.Whse = o.Factory;
                    obj.ProjectNo = o.ProjectNo;
                    obj.OurItemCode = o.ItemCode;
                    obj.Currency = o.Currency;
                    obj.Coordinator = o.PurchaseOfficer;
                    obj.SuppCode = o.Supplier;
                    obj.SuppItemCode = o.SupplierReference;
                    obj.SupplierPOQty = o.SupplierPOQty;
                    obj.SupplierOutstandingQty = o.SupplierOutstandingQty;
                    obj.POBalancePercent = o.POBalancePercent;
                    obj.Unit = o.SupplierUOM;
                    obj.Size = o.SizeCode;
                    obj.Cup = o.FitCode;
                    obj.OurColorCode = o.ColorCode;

                    obj.Price = o.Price;//add by shulin 2023-10-24 "Alice Li邮件 2023/10/24 14:03"

                    db.Z_OutstandingPOs.InsertOnSubmit(obj);

                }
                db.SubmitChanges();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "導出失敗!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            MessageBox.Show("導出成功!", "提示", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
        }

    }
}
