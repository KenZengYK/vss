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
using PH.Platform.ExtendLibrary;
using PH.Platform.BO;
using PH.BasicInfo.BO;
using PH.POPC.UI.ActionLog;


namespace PH.POPC.UI
{
    public partial class POPCLevel1Form : PH.Platform.UI.CS.UI2.ListForm
    {
        string[] AppvAndNils = new string[] { "APP.", "NIL" };

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
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsOutStanding;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQA;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandSample;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandColorStandard;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandLadDip;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit riCheck;
        private DevExpress.XtraBars.BarButtonItem btnAddLots;
        private DevExpress.XtraBars.PopupMenu popupMenu1;
        private IContainer components;
        private DevExpress.XtraBars.BarButtonItem btnPrintShip;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVersionFlag;
        private DevExpress.XtraBars.BarSubItem btnShipmentYes;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFactory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierLocation;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOReqDeliveryDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierReference;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorShade;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierUOM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseOfficer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTeam;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReport;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeTransit;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorStdSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorStdReceiptDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipReceiptDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipDropDeadDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTestSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTestCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTestStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOExftyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkSubmitSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkReceiptDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkSubmitNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkDropDeadDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTestApproval;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTestReceiptDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleApproval;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleReceiptDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOIssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOBalancePercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHOutstandingQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustOrderNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFitCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSizeCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQAProcess;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandBulk;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTest;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNumOfProject;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riPHDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLadDipOption;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkOption;
        private DevExpress.XtraBars.BarButtonItem btnShip;
        private DevExpress.XtraBars.BarButtonItem btnPrintPO;
        private DevExpress.XtraBars.BarButtonItem btnCloneAsReplace;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox ricbOption;
        private DevExpress.Utils.ToolTipController toolTipController1;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit rilueLadDip;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit rilueBulk;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit rigluLadDip;
        private GridView repositoryItemGridLookUpEdit1View;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit rigluBulk;
        private GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraBars.BarButtonItem btnWOReport;
        private DevExpress.XtraBars.BarButtonItem btnRWOReport;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHUom;
        private DevExpress.XtraBars.BarButtonItem btnCopySingle;
        private ImageList imageList1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCurrency;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkNumOfBatch;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkTotalAppQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderClassDesc;
        private DevExpress.XtraBars.BarSubItem btnClone;
        private DevExpress.XtraBars.BarButtonItem btnCloneAsNew;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipPHToCustDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipPHStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipSuppToCustDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkPHToCustDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkPHStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkSuppToCustDate;
        private DevExpress.XtraBars.BarButtonItem btnPOPCForm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colETAPointOfDestDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandSuppRef;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTime;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandCust;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandDelRef;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandPage2Key;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPointCode;
        private DevExpress.XtraBars.BarButtonItem btnLevel1Awith;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnSupplementSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClassCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleTtlLeftItem;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleFollowby;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorStdSwatch3D;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorStdSwatchCard;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorStdSwatchColorNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorStdPHCust;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorStdToSuppDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipColoristComment;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBrandName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransferCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransferDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandLabDip;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTransfer;
        private DevExpress.XtraBars.BarButtonItem btnLevelB;
        private DevExpress.XtraBars.BarButtonItem btnLevel1aSupplementSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDODate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRoundNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRWO_FWStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRWO_ExftyDate;
        private DevExpress.XtraBars.BarButtonItem btnRWO;
        private DevExpress.XtraBars.BarButtonItem btnSupplement2;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbSwatch;
        private DevExpress.XtraBars.BarButtonItem btnNotify;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleNewItem;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riicbYN;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeProject;
        private DevExpress.XtraBars.BarSubItem barSubItem3;
        private DevExpress.XtraBars.BarButtonItem btnLevel1Awithout;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleAuditedby;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riNullDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFlowupFlag;
        private DevExpress.XtraBars.BarButtonItem btnPending;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPending;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWeek;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colExRate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHBALAMount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHAmount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRevDeliveryDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderOption;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit rigluOrder;
        private GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDeliveryDaysDiff;
        private DevExpress.XtraBars.BarButtonItem btnCopyToClipboard;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTradeMethod;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit repositoryItemGridLookUpEdit_TradeMethod;
        private GridView gridView3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHSName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHSCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitMode2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colArrivalPointofdestinationBD;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox CboBoxTransitMode2Show;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox CboBoxTransitMode1Show;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riPHDate1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBuyerCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_BuyerCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDeliveryRouting;
        //private DevExpress.XtraGrid.Views.BandedGrid.GridBand BandItemSizeMatrix;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFollowUpBy;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand BandFirstWO;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand BandDeliveryDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand14;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand15;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand16;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand17;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBiColor;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_BiColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit_MultiRow;
        private DevExpress.XtraBars.BarEditItem barEditItem_Dashboard;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDropDeadDateDiffDay;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogTaking;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogSeqNoShow;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_ActionLog;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogCompletionStage_Target;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogCompletionStage_Cmpl;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogCompletionStage_Revised;
        private DevExpress.XtraBars.BarButtonItem barButtonItemActionLogGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand18;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand19;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand20;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialStandBy;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand21;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_MaterialStandby;
        private DevExpress.XtraBars.BarButtonItem barAppvSeq;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riDate;
        #endregion

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(POPCLevel1Form));
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
            this.repositoryItemComboBox_BuyerCode = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colIsOutStanding = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOIssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riPHDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colOrderOption = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSKU = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCurrency = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandSuppRef = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplier = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHSCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHSName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierLocation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandQty = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHOutstandingQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOBalancePercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFitCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFitDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandTime = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colWOSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRWO_FWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRWO_ExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDeliveryDaysDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHDODate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitModePO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.CboBoxTransitMode1Show = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colDeliveryRouting = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colETAPointOfDestDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrame1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitMode2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.CboBoxTransitMode2Show = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colTimeFrame2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colArrivalPointofdestinationBD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRoundNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFlowupFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPOReqDeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPODeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRevDeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riPHDate1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.bandCust = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colEndCustCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBrandName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustOrderNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGmtColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGmtColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandDelRef = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitPointCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandPage2Key = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTradeMethod = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemGridLookUpEdit_TradeMethod = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.gridView3 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.bandQA = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandSample = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSampleApproval = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleFollowby = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleTtlLeftItem = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riNullDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colSampleStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleAuditedby = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandColorStandard = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colColorStdSwatch3D = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorStdSwatchCard = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ricbSwatch = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colBiColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_BiColor = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colColorStdSwatchColorNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorStdSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.colColorStdReceiptDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colColorStdPHCust = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorStdToSuppDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandLabDip = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLadDipOption = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.rigluLadDip = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDipNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipReceiptDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleReceiptDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipDropDeadDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDipColoristComment = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoEdit_MultiRow = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.colFollowUpBy = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandQAProcess = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandBulk = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBulkOption = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.rigluBulk = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBulkSubmitSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkReceiptDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkNumOfBatch = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkSubmitNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkTotalAppQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkDropDeadDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDropDeadDateDiffDay = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandTest = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTestApproval = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTestSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTestReceiptDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTestCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTestStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandTransfer = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransferCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ribeTransit = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colTransferDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colNumOfProject = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReport = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogTaking = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogSeqNoShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemButtonEdit_ActionLog = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogCompletionStage_Target = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogCompletionStage_Revised = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogCompletionStage_Cmpl = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colMaterialStandBy = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_MaterialStandby = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSampleNewItem = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riicbYN = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colVersionFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHUom = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipPHToCustDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipPHStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipSuppToCustDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkPHToCustDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkPHStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBulkSuppToCustDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colClassCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPending = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWeek = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colExRate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHBALAMount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHAmount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.BandFirstWO = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.BandDeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.rigluOrder = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit3 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ribeProject = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.bandLadDip = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.rilueLadDip = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.rilueBulk = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.ricbOption = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.riCheck = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.btnPrintShip = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintPO = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWO = new DevExpress.XtraBars.BarButtonItem();
            this.btnClone = new DevExpress.XtraBars.BarSubItem();
            this.btnCloneAsReplace = new DevExpress.XtraBars.BarButtonItem();
            this.btnCloneAsNew = new DevExpress.XtraBars.BarButtonItem();
            this.btnCopySingle = new DevExpress.XtraBars.BarButtonItem();
            this.barAppvSeq = new DevExpress.XtraBars.BarButtonItem();
            this.btnNotify = new DevExpress.XtraBars.BarButtonItem();
            this.btnPending = new DevExpress.XtraBars.BarButtonItem();
            this.btnCopyToClipboard = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemActionLogGroup = new DevExpress.XtraBars.BarButtonItem();
            this.btnShipmentYes = new DevExpress.XtraBars.BarSubItem();
            this.btnAddLots = new DevExpress.XtraBars.BarButtonItem();
            this.btnShip = new DevExpress.XtraBars.BarButtonItem();
            this.toolTipController1 = new DevExpress.Utils.ToolTipController(this.components);
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btnPOPCForm = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel1Awith = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnSupplementSheet = new DevExpress.XtraBars.BarButtonItem();
            this.btnSupplement2 = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel1Awithout = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel1aSupplementSheet = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevelB = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem3 = new DevExpress.XtraBars.BarSubItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barEditItem_Dashboard = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_BuyerCode)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CboBoxTransitMode1Show)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.CboBoxTransitMode2Show)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit_TradeMethod)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riNullDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riNullDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatch)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_BiColor)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultiRow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluBulk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeTransit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_MaterialStandby)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbYN)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluOrder)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeProject)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueLadDip)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueBulk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbOption)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
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
            this.btnPrintShip,
            this.btnShipmentYes,
            this.btnShip,
            this.btnPrintPO,
            this.btnCloneAsReplace,
            this.btnWOReport,
            this.btnRWOReport,
            this.btnCopySingle,
            this.btnClone,
            this.btnCloneAsNew,
            this.btnPOPCForm,
            this.btnLevel1Awith,
            this.barSubItem2,
            this.btnSupplementSheet,
            this.btnLevelB,
            this.btnLevel1aSupplementSheet,
            this.btnRWO,
            this.btnSupplement2,
            this.btnNotify,
            this.barSubItem3,
            this.btnLevel1Awithout,
            this.btnPending,
            this.btnCopyToClipboard,
            this.barButtonItem1,
            this.barEditItem_Dashboard,
            this.barButtonItemActionLogGroup,
            this.barAppvSeq});
            this.objbarManager.MaxItemId = 46;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBox2});
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
            this.ribeTransit,
            this.riPHDate,
            this.ricbOption,
            this.rilueLadDip,
            this.rilueBulk,
            this.rigluLadDip,
            this.rigluBulk,
            this.repositoryItemSpinEdit1,
            this.ricbSwatch,
            this.riicbYN,
            this.ribeProject,
            this.riNullDate,
            this.rigluOrder,
            this.repositoryItemGridLookUpEdit_TradeMethod,
            this.CboBoxTransitMode2Show,
            this.CboBoxTransitMode1Show,
            this.riPHDate1,
            this.repositoryItemComboBox_BuyerCode,
            this.repositoryItemComboBox_BiColor,
            this.repositoryItemMemoEdit_MultiRow,
            this.repositoryItemButtonEdit_ActionLog,
            this.repositoryItemComboBox_MaterialStandby});
            this.objListGridControl.Size = new System.Drawing.Size(5000, 369);
            this.objListGridControl.ToolTipController = this.toolTipController1;
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
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
            this.bandQty,
            this.gridBand4,
            this.bandTime,
            this.bandCust,
            this.bandDelRef,
            this.bandPage2Key,
            this.gridBand1,
            this.bandQA,
            this.bandQAProcess,
            this.bandTransfer,
            this.gridBand9,
            this.gridBand18,
            this.gridBand21});
            this.bandedGridView1.ColumnPanelRowHeight = 50;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colCompany,
            this.colPONO,
            this.colVersion,
            this.colAmendmentNo,
            this.colOrderLine,
            this.colSKU,
            this.colQty,
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
            this.colFactory,
            this.colSupplierLocation,
            this.colEndCustCode,
            this.colPOReqDeliveryDate,
            this.colCustStyleNo,
            this.colSupplierReference,
            this.colColorShade,
            this.colSupplierUOM,
            this.colPurchaseOfficer,
            this.colTeam,
            this.colReport,
            this.colSampleSeq,
            this.colSampleCompletedDate,
            this.colSampleStatus,
            this.colColorStdSeq,
            this.colColorStdReceiptDate,
            this.colDipSeq,
            this.colDipReceiptDate,
            this.colDipCompletedDate,
            this.colDipStatus,
            this.colDipDropDeadDate,
            this.colTestSeq,
            this.colTestCompletedDate,
            this.colTestStatus,
            this.colWOExftyDate,
            this.colBulkSubmitSeq,
            this.colBulkReceiptDate,
            this.colBulkSubmitNo,
            this.colBulkCompletedDate,
            this.colBulkStatus,
            this.colBulkQty,
            this.colBulkDropDeadDate,
            this.colTestApproval,
            this.colTestReceiptDate,
            this.colSampleApproval,
            this.colSampleReceiptDate,
            this.colPOIssueDate,
            this.colPOBalancePercent,
            this.colPHOutstandingQty,
            this.colEndCustOrderNo,
            this.colFitCode,
            this.colSizeCode,
            this.colNumOfProject,
            this.colGmtColorCode,
            this.colLadDipOption,
            this.colBulkOption,
            this.colRemark,
            this.colPHQty,
            this.colPHUom,
            this.colBulkRemark,
            this.colDipRemark,
            this.colPrice,
            this.colCurrency,
            this.colBulkNumOfBatch,
            this.colBulkTotalAppQty,
            this.colOrderClassDesc,
            this.colDipPHToCustDate,
            this.colDipPHStatus,
            this.colDipSuppToCustDate,
            this.colBulkPHToCustDate,
            this.colBulkPHStatus,
            this.colBulkSuppToCustDate,
            this.colETAPointOfDestDate,
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.bandedGridColumn3,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.colTransitPointCode,
            this.colClassCode,
            this.colSampleTtlLeftItem,
            this.colSampleFollowby,
            this.colColorStdSwatch3D,
            this.colColorStdSwatchCard,
            this.colColorStdSwatchColorNo,
            this.colColorStdPHCust,
            this.colColorStdToSuppDate,
            this.colDipNo,
            this.colDipColoristComment,
            this.colBrandName,
            this.colGmtColorName,
            this.colItemColorName,
            this.colTransferCode,
            this.colTransferDate,
            this.colHDODate,
            this.colRWO_FWStartDate,
            this.colRWO_ExftyDate,
            this.colRoundNo,
            this.colSampleNewItem,
            this.colSampleAuditedby,
            this.colFlowupFlag,
            this.colPending,
            this.colWeek,
            this.colExRate,
            this.colPHBALAMount,
            this.colPHAmount,
            this.colMaterialGroup,
            this.colRevDeliveryDate,
            this.colOrderOption,
            this.colTradeMethod,
            this.colDeliveryDaysDiff,
            this.colHSName,
            this.colHSCode,
            this.colTransitMode2,
            this.colArrivalPointofdestinationBD,
            this.colBuyerCode,
            this.colDeliveryRouting,
            this.colFollowUpBy,
            this.colBiColor,
            this.colOddEvenRowFlag,
            this.colDropDeadDateDiffDay,
            this.colWOSeqNo,
            this.colActionLogTaking,
            this.colActionLogGroup,
            this.colActionLogSeqNoShow,
            this.colActionLogCompletionStage_Target,
            this.colActionLogCompletionStage_Revised,
            this.colActionLogCompletionStage_Cmpl,
            this.colMaterialStandBy});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(756, 293, 390, 405);
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
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsNavigation.EnterMoveNextColumn = true;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsSelection.MultiSelect = true;
            this.bandedGridView1.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.RowAutoHeight = true;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSKU, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.bandedGridView1.DoubleClick += new System.EventHandler(this.bandedGridView1_DoubleClick);
            this.bandedGridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.bandedGridView1_CellMerge);
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate);
            this.bandedGridView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.bandedGridView1_MouseDown);
            this.bandedGridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bandedGridView1_RowCellStyle);
            this.bandedGridView1.ShowingEditor += new System.ComponentModel.CancelEventHandler(this.bandedGridView1_ShowingEditor);
            this.bandedGridView1.RowStyle += new DevExpress.XtraGrid.Views.Grid.RowStyleEventHandler(this.bandedGridView1_RowStyle);
            // 
            // bandPO
            // 
            this.bandPO.Caption = "General PO\'s Information";
            this.bandPO.Columns.Add(this.colCompany);
            this.bandPO.Columns.Add(this.colOrderClassDesc);
            this.bandPO.Columns.Add(this.colBuyerCode);
            this.bandPO.Columns.Add(this.colIsOutStanding);
            this.bandPO.Columns.Add(this.colPOIssueDate);
            this.bandPO.Columns.Add(this.colOrderOption);
            this.bandPO.Columns.Add(this.colPONO);
            this.bandPO.Columns.Add(this.colFactory);
            this.bandPO.Columns.Add(this.colProjectNo);
            this.bandPO.Columns.Add(this.colSKU);
            this.bandPO.Columns.Add(this.colItemCode);
            this.bandPO.Columns.Add(this.colOrderLine);
            this.bandPO.Columns.Add(this.colCurrency);
            this.bandPO.Columns.Add(this.colTeam);
            this.bandPO.Columns.Add(this.colPurchaseOfficer);
            this.bandPO.Columns.Add(this.colVersion);
            this.bandPO.Columns.Add(this.colAmendmentNo);
            this.bandPO.MinWidth = 20;
            this.bandPO.Name = "bandPO";
            this.bandPO.Tag = 1;
            this.bandPO.Width = 794;
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
            this.colOrderClassDesc.Width = 98;
            // 
            // colBuyerCode
            // 
            this.colBuyerCode.Caption = "Buyer Cde";
            this.colBuyerCode.ColumnEdit = this.repositoryItemComboBox_BuyerCode;
            this.colBuyerCode.FieldName = "BuyerCode";
            this.colBuyerCode.Name = "colBuyerCode";
            this.colBuyerCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBuyerCode.Tag = "2";
            this.colBuyerCode.Visible = true;
            this.colBuyerCode.Width = 52;
            // 
            // repositoryItemComboBox_BuyerCode
            // 
            this.repositoryItemComboBox_BuyerCode.AutoHeight = false;
            this.repositoryItemComboBox_BuyerCode.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_BuyerCode.Items.AddRange(new object[] {
            "PHDG",
            "PHHK",
            "PYHK"});
            this.repositoryItemComboBox_BuyerCode.Name = "repositoryItemComboBox_BuyerCode";
            this.repositoryItemComboBox_BuyerCode.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
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
            this.colIsOutStanding.Width = 66;
            // 
            // colPOIssueDate
            // 
            this.colPOIssueDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPOIssueDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
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
            this.riPHDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.riPHDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.riPHDate.Name = "riPHDate";
            this.riPHDate.VistaDisplayMode = DevExpress.Utils.DefaultBoolean.False;
            this.riPHDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // colOrderOption
            // 
            this.colOrderOption.Caption = "Prt";
            this.colOrderOption.FieldName = "ReplenishmentShow";
            this.colOrderOption.Name = "colOrderOption";
            this.colOrderOption.OptionsColumn.AllowEdit = false;
            this.colOrderOption.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOrderOption.Visible = true;
            this.colOrderOption.Width = 38;
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
            this.colPONO.SummaryItem.Tag = "PONO";
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
            this.colFactory.Width = 61;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj. No.";
            this.colProjectNo.FieldName = "ProjectNO";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colProjectNo.OptionsColumn.ReadOnly = true;
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 89;
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
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colItemCode.OptionsColumn.ReadOnly = true;
            this.colItemCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemCode.Visible = true;
            this.colItemCode.Width = 106;
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "PO Line";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOrderLine.OptionsColumn.ReadOnly = true;
            this.colOrderLine.Visible = true;
            this.colOrderLine.Width = 44;
            // 
            // colCurrency
            // 
            this.colCurrency.Caption = "Curr.";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCurrency.Visible = true;
            this.colCurrency.Width = 58;
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
            this.colTeam.Width = 60;
            // 
            // colPurchaseOfficer
            // 
            this.colPurchaseOfficer.Caption = "Coordinator";
            this.colPurchaseOfficer.FieldName = "PurchaseOfficer";
            this.colPurchaseOfficer.Name = "colPurchaseOfficer";
            this.colPurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.colPurchaseOfficer.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPurchaseOfficer.Visible = true;
            this.colPurchaseOfficer.Width = 81;
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
            // bandSuppRef
            // 
            this.bandSuppRef.Caption = "Supp Info";
            this.bandSuppRef.Columns.Add(this.colSupplier);
            this.bandSuppRef.Columns.Add(this.colSupplierReference);
            this.bandSuppRef.Columns.Add(this.colHSCode);
            this.bandSuppRef.Columns.Add(this.colHSName);
            this.bandSuppRef.Columns.Add(this.colCustStyleNo);
            this.bandSuppRef.Columns.Add(this.colSupplierLocation);
            this.bandSuppRef.MinWidth = 20;
            this.bandSuppRef.Name = "bandSuppRef";
            this.bandSuppRef.Tag = 2;
            this.bandSuppRef.Width = 393;
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
            this.colSupplier.Width = 56;
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
            // colHSCode
            // 
            this.colHSCode.Caption = "HS Code";
            this.colHSCode.FieldName = "HSCode";
            this.colHSCode.Name = "colHSCode";
            this.colHSCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHSCode.Width = 98;
            // 
            // colHSName
            // 
            this.colHSName.Caption = "HS Name";
            this.colHSName.FieldName = "HSName";
            this.colHSName.Name = "colHSName";
            this.colHSName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHSName.Width = 123;
            // 
            // colCustStyleNo
            // 
            this.colCustStyleNo.Caption = "It\'s Style No.\r\nRelated to this Item";
            this.colCustStyleNo.FieldName = "CustStyleNo";
            this.colCustStyleNo.Name = "colCustStyleNo";
            this.colCustStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustStyleNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCustStyleNo.Tag = 1;
            this.colCustStyleNo.Visible = true;
            this.colCustStyleNo.Width = 117;
            // 
            // colSupplierLocation
            // 
            this.colSupplierLocation.Caption = "Loc. of Supp Fty";
            this.colSupplierLocation.FieldName = "SupplierLocation";
            this.colSupplierLocation.Name = "colSupplierLocation";
            this.colSupplierLocation.OptionsColumn.AllowEdit = false;
            this.colSupplierLocation.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplierLocation.Visible = true;
            this.colSupplierLocation.Width = 113;
            // 
            // bandQty
            // 
            this.bandQty.Caption = "PO Quantity";
            this.bandQty.Columns.Add(this.colQty);
            this.bandQty.Columns.Add(this.colPHOutstandingQty);
            this.bandQty.Columns.Add(this.colPOBalancePercent);
            this.bandQty.Columns.Add(this.colSupplierUOM);
            this.bandQty.MinWidth = 20;
            this.bandQty.Name = "bandQty";
            this.bandQty.Tag = 1;
            this.bandQty.Width = 200;
            // 
            // colQty
            // 
            this.colQty.AppearanceCell.Options.UseTextOptions = true;
            this.colQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colQty.Caption = "Qty";
            this.colQty.DisplayFormat.FormatString = "#,0.#";
            this.colQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colQty.FieldName = "SupplierPOQty";
            this.colQty.Name = "colQty";
            this.colQty.OptionsColumn.AllowEdit = false;
            this.colQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colQty.Visible = true;
            this.colQty.Width = 42;
            // 
            // colPHOutstandingQty
            // 
            this.colPHOutstandingQty.AppearanceCell.Options.UseTextOptions = true;
            this.colPHOutstandingQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPHOutstandingQty.Caption = "Bal Qty";
            this.colPHOutstandingQty.DisplayFormat.FormatString = "#,0.###";
            this.colPHOutstandingQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHOutstandingQty.FieldName = "SupplierOutstandingQty";
            this.colPHOutstandingQty.Name = "colPHOutstandingQty";
            this.colPHOutstandingQty.OptionsColumn.AllowEdit = false;
            this.colPHOutstandingQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHOutstandingQty.Visible = true;
            this.colPHOutstandingQty.Width = 61;
            // 
            // colPOBalancePercent
            // 
            this.colPOBalancePercent.AppearanceCell.Options.UseTextOptions = true;
            this.colPOBalancePercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPOBalancePercent.Caption = "Bal %";
            this.colPOBalancePercent.DisplayFormat.FormatString = "p2";
            this.colPOBalancePercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOBalancePercent.FieldName = "POBalancePercent";
            this.colPOBalancePercent.Name = "colPOBalancePercent";
            this.colPOBalancePercent.OptionsColumn.AllowEdit = false;
            this.colPOBalancePercent.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOBalancePercent.Visible = true;
            this.colPOBalancePercent.Width = 53;
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
            this.colSupplierUOM.Width = 44;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Item Size Matrix";
            this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand10,
            this.gridBand13});
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.RowCount = 2;
            this.gridBand4.Tag = "2";
            this.gridBand4.Width = 162;
            // 
            // gridBand10
            // 
            this.gridBand10.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand10.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand10.Caption = "Our";
            this.gridBand10.Columns.Add(this.colSizeCode);
            this.gridBand10.Columns.Add(this.colFitCode);
            this.gridBand10.MinWidth = 20;
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Tag = 2;
            this.gridBand10.Width = 77;
            // 
            // colSizeCode
            // 
            this.colSizeCode.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeCode.Caption = "Sz";
            this.colSizeCode.FieldName = "SizeCode";
            this.colSizeCode.Name = "colSizeCode";
            this.colSizeCode.OptionsColumn.AllowEdit = false;
            this.colSizeCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSizeCode.Visible = true;
            this.colSizeCode.Width = 34;
            // 
            // colFitCode
            // 
            this.colFitCode.AppearanceCell.Options.UseTextOptions = true;
            this.colFitCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFitCode.Caption = "Cup";
            this.colFitCode.FieldName = "FitCode";
            this.colFitCode.Name = "colFitCode";
            this.colFitCode.OptionsColumn.AllowEdit = false;
            this.colFitCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFitCode.Visible = true;
            this.colFitCode.Width = 43;
            // 
            // gridBand13
            // 
            this.gridBand13.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand13.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand13.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand13.Caption = "Supp";
            this.gridBand13.Columns.Add(this.colSizeDesc);
            this.gridBand13.Columns.Add(this.colFitDesc);
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Tag = 2;
            this.gridBand13.Width = 85;
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeDesc.Caption = "Sz";
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
            this.colFitDesc.Caption = "Cup";
            this.colFitDesc.FieldName = "FitDesc";
            this.colFitDesc.Name = "colFitDesc";
            this.colFitDesc.OptionsColumn.AllowEdit = false;
            this.colFitDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFitDesc.OptionsColumn.ReadOnly = true;
            this.colFitDesc.Visible = true;
            this.colFitDesc.Width = 43;
            // 
            // bandTime
            // 
            this.bandTime.Caption = "Time Element";
            this.bandTime.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand14,
            this.gridBand15});
            this.bandTime.MinWidth = 20;
            this.bandTime.Name = "bandTime";
            this.bandTime.Tag = 1;
            this.bandTime.Width = 399;
            // 
            // gridBand14
            // 
            this.gridBand14.Caption = "1st WO\'s";
            this.gridBand14.Columns.Add(this.colWOSeqNo);
            this.gridBand14.Columns.Add(this.colRWO_FWStartDate);
            this.gridBand14.Columns.Add(this.colRWO_ExftyDate);
            this.gridBand14.Columns.Add(this.colDeliveryDaysDiff);
            this.gridBand14.Columns.Add(this.colHDODate);
            this.gridBand14.Columns.Add(this.colIncoterms);
            this.gridBand14.Columns.Add(this.colTransitModePO);
            this.gridBand14.Columns.Add(this.colDeliveryRouting);
            this.gridBand14.Columns.Add(this.colETAPointOfDestDate);
            this.gridBand14.Columns.Add(this.colTimeFrame1);
            this.gridBand14.Columns.Add(this.colTransitMode2);
            this.gridBand14.Columns.Add(this.colTimeFrame2);
            this.gridBand14.Columns.Add(this.colArrivalPointofdestinationBD);
            this.gridBand14.Columns.Add(this.colRoundNo);
            this.gridBand14.Columns.Add(this.colFlowupFlag);
            this.gridBand14.Columns.Add(this.colWOExftyDate);
            this.gridBand14.MinWidth = 20;
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Tag = 1;
            this.gridBand14.Width = 188;
            // 
            // colWOSeqNo
            // 
            this.colWOSeqNo.AppearanceCell.Options.UseTextOptions = true;
            this.colWOSeqNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOSeqNo.Caption = "Seq\r\n#";
            this.colWOSeqNo.FieldName = "WOSeqNo";
            this.colWOSeqNo.Name = "colWOSeqNo";
            this.colWOSeqNo.Visible = true;
            this.colWOSeqNo.Width = 43;
            // 
            // colRWO_FWStartDate
            // 
            this.colRWO_FWStartDate.Caption = "FW Start dd";
            this.colRWO_FWStartDate.ColumnEdit = this.riPHDate;
            this.colRWO_FWStartDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colRWO_FWStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colRWO_FWStartDate.FieldName = "WOFWStartDate";
            this.colRWO_FWStartDate.Name = "colRWO_FWStartDate";
            this.colRWO_FWStartDate.OptionsColumn.AllowEdit = false;
            this.colRWO_FWStartDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRWO_FWStartDate.Visible = true;
            this.colRWO_FWStartDate.Width = 73;
            // 
            // colRWO_ExftyDate
            // 
            this.colRWO_ExftyDate.Caption = "Ex-fty dd";
            this.colRWO_ExftyDate.ColumnEdit = this.riPHDate;
            this.colRWO_ExftyDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colRWO_ExftyDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colRWO_ExftyDate.FieldName = "WOExftyDate";
            this.colRWO_ExftyDate.Name = "colRWO_ExftyDate";
            this.colRWO_ExftyDate.OptionsColumn.AllowEdit = false;
            this.colRWO_ExftyDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRWO_ExftyDate.Visible = true;
            this.colRWO_ExftyDate.Width = 72;
            // 
            // colDeliveryDaysDiff
            // 
            this.colDeliveryDaysDiff.AppearanceCell.Options.UseTextOptions = true;
            this.colDeliveryDaysDiff.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDeliveryDaysDiff.Caption = "Del Days Diff";
            this.colDeliveryDaysDiff.FieldName = "DeliveryDaysDiff";
            this.colDeliveryDaysDiff.Name = "colDeliveryDaysDiff";
            this.colDeliveryDaysDiff.OptionsColumn.AllowEdit = false;
            this.colDeliveryDaysDiff.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDeliveryDaysDiff.Width = 40;
            // 
            // colHDODate
            // 
            this.colHDODate.Caption = "Created HDO dd";
            this.colHDODate.ColumnEdit = this.riPHDate;
            this.colHDODate.FieldName = "HDODate";
            this.colHDODate.Name = "colHDODate";
            this.colHDODate.OptionsColumn.AllowEdit = false;
            this.colHDODate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHDODate.Width = 73;
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
            this.colIncoterms.Width = 49;
            // 
            // colTransitModePO
            // 
            this.colTransitModePO.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitModePO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitModePO.Caption = "Transit Mode";
            this.colTransitModePO.ColumnEdit = this.CboBoxTransitMode1Show;
            this.colTransitModePO.FieldName = "TransitModePO";
            this.colTransitModePO.Name = "colTransitModePO";
            this.colTransitModePO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitModePO.Width = 49;
            // 
            // CboBoxTransitMode1Show
            // 
            this.CboBoxTransitMode1Show.AutoHeight = false;
            this.CboBoxTransitMode1Show.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.CboBoxTransitMode1Show.Name = "CboBoxTransitMode1Show";
            this.CboBoxTransitMode1Show.EditValueChanged += new System.EventHandler(this.CboBoxTransitMode1Show_EditValueChanged);
            // 
            // colDeliveryRouting
            // 
            this.colDeliveryRouting.Caption = "Del\r\nRout\'g";
            this.colDeliveryRouting.FieldName = "DeliveryRouting";
            this.colDeliveryRouting.Name = "colDeliveryRouting";
            this.colDeliveryRouting.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDeliveryRouting.Width = 48;
            // 
            // colETAPointOfDestDate
            // 
            this.colETAPointOfDestDate.AppearanceCell.Options.UseTextOptions = true;
            this.colETAPointOfDestDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colETAPointOfDestDate.Caption = "ETA Recv\'g Pt.";
            this.colETAPointOfDestDate.ColumnEdit = this.riPHDate;
            this.colETAPointOfDestDate.FieldName = "ETAPointOfDestDate";
            this.colETAPointOfDestDate.Name = "colETAPointOfDestDate";
            this.colETAPointOfDestDate.OptionsColumn.AllowEdit = false;
            this.colETAPointOfDestDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colETAPointOfDestDate.Width = 72;
            // 
            // colTimeFrame1
            // 
            this.colTimeFrame1.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame1.Caption = "Time Frame 1\r\n(day)";
            this.colTimeFrame1.FieldName = "TimeFrame1";
            this.colTimeFrame1.Name = "colTimeFrame1";
            this.colTimeFrame1.OptionsColumn.AllowEdit = false;
            this.colTimeFrame1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame1.OptionsColumn.ReadOnly = true;
            this.colTimeFrame1.Width = 50;
            // 
            // colTransitMode2
            // 
            this.colTransitMode2.Caption = "Transit Mode2";
            this.colTransitMode2.ColumnEdit = this.CboBoxTransitMode2Show;
            this.colTransitMode2.FieldName = "TransitMode2Show";
            this.colTransitMode2.Name = "colTransitMode2";
            this.colTransitMode2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitMode2.Width = 72;
            // 
            // CboBoxTransitMode2Show
            // 
            this.CboBoxTransitMode2Show.AutoHeight = false;
            this.CboBoxTransitMode2Show.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.CboBoxTransitMode2Show.Name = "CboBoxTransitMode2Show";
            this.CboBoxTransitMode2Show.EditValueChanged += new System.EventHandler(this.CboBoxTransitMode2Show_EditValueChanged);
            // 
            // colTimeFrame2
            // 
            this.colTimeFrame2.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame2.Caption = "Time Frame 2\r\n(day)";
            this.colTimeFrame2.FieldName = "TimeFrame2";
            this.colTimeFrame2.Name = "colTimeFrame2";
            this.colTimeFrame2.OptionsColumn.AllowEdit = false;
            this.colTimeFrame2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTimeFrame2.OptionsColumn.ReadOnly = true;
            this.colTimeFrame2.Width = 59;
            // 
            // colArrivalPointofdestinationBD
            // 
            this.colArrivalPointofdestinationBD.Caption = "Arrival Our Prod\'n Site";
            this.colArrivalPointofdestinationBD.FieldName = "ArrivalPointofdestinationShow";
            this.colArrivalPointofdestinationBD.Name = "colArrivalPointofdestinationBD";
            this.colArrivalPointofdestinationBD.OptionsColumn.AllowEdit = false;
            this.colArrivalPointofdestinationBD.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colArrivalPointofdestinationBD.Width = 79;
            // 
            // colRoundNo
            // 
            this.colRoundNo.Caption = "CWO#";
            this.colRoundNo.FieldName = "RoundNo";
            this.colRoundNo.Name = "colRoundNo";
            this.colRoundNo.OptionsColumn.AllowEdit = false;
            this.colRoundNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRoundNo.Width = 73;
            // 
            // colFlowupFlag
            // 
            this.colFlowupFlag.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.colFlowupFlag.AppearanceHeader.Options.UseForeColor = true;
            this.colFlowupFlag.Caption = "Alert";
            this.colFlowupFlag.FieldName = "FlowupFlag";
            this.colFlowupFlag.Name = "colFlowupFlag";
            this.colFlowupFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFlowupFlag.Width = 48;
            // 
            // colWOExftyDate
            // 
            this.colWOExftyDate.AppearanceCell.Options.UseTextOptions = true;
            this.colWOExftyDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
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
            // gridBand15
            // 
            this.gridBand15.Caption = "Delivery dd";
            this.gridBand15.Columns.Add(this.colPOReqDeliveryDate);
            this.gridBand15.Columns.Add(this.colPODeliveryDate);
            this.gridBand15.Columns.Add(this.colRevDeliveryDate);
            this.gridBand15.MinWidth = 20;
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Tag = 1;
            this.gridBand15.Width = 211;
            // 
            // colPOReqDeliveryDate
            // 
            this.colPOReqDeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPOReqDeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPOReqDeliveryDate.Caption = "Req.";
            this.colPOReqDeliveryDate.ColumnEdit = this.riPHDate;
            this.colPOReqDeliveryDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colPOReqDeliveryDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPOReqDeliveryDate.FieldName = "POReqDeliveryDate";
            this.colPOReqDeliveryDate.Name = "colPOReqDeliveryDate";
            this.colPOReqDeliveryDate.OptionsColumn.AllowEdit = false;
            this.colPOReqDeliveryDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPOReqDeliveryDate.Visible = true;
            this.colPOReqDeliveryDate.Width = 70;
            // 
            // colPODeliveryDate
            // 
            this.colPODeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPODeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPODeliveryDate.Caption = "Cfmd.";
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
            // colRevDeliveryDate
            // 
            this.colRevDeliveryDate.Caption = "Rev.";
            this.colRevDeliveryDate.ColumnEdit = this.riPHDate1;
            this.colRevDeliveryDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colRevDeliveryDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colRevDeliveryDate.FieldName = "RevDeliveryDate";
            this.colRevDeliveryDate.Name = "colRevDeliveryDate";
            this.colRevDeliveryDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRevDeliveryDate.Visible = true;
            this.colRevDeliveryDate.Width = 70;
            // 
            // riPHDate1
            // 
            this.riPHDate1.AutoHeight = false;
            this.riPHDate1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riPHDate1.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.riPHDate1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.riPHDate1.Name = "riPHDate1";
            this.riPHDate1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.riPHDate1.EditValueChanged += new System.EventHandler(this.riPHDate1_EditValueChanged);
            // 
            // bandCust
            // 
            this.bandCust.Caption = "PO\'s Color Info";
            this.bandCust.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand16,
            this.gridBand17});
            this.bandCust.MinWidth = 20;
            this.bandCust.Name = "bandCust";
            this.bandCust.Tag = 2;
            this.bandCust.Width = 447;
            // 
            // gridBand16
            // 
            this.gridBand16.Caption = "Item Color";
            this.gridBand16.Columns.Add(this.colEndCustCode);
            this.gridBand16.Columns.Add(this.colBrandName);
            this.gridBand16.Columns.Add(this.colEndCustOrderNo);
            this.gridBand16.Columns.Add(this.colColorCode);
            this.gridBand16.Columns.Add(this.colItemColorName);
            this.gridBand16.Columns.Add(this.colColorShade);
            this.gridBand16.MinWidth = 20;
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Tag = 2;
            this.gridBand16.Width = 309;
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
            this.colEndCustCode.Tag = 1;
            this.colEndCustCode.Width = 59;
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "Brand Name\r\n(if any)";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            this.colBrandName.OptionsColumn.AllowEdit = false;
            this.colBrandName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBrandName.Width = 88;
            // 
            // colEndCustOrderNo
            // 
            this.colEndCustOrderNo.Caption = "Order No\r\n(if any)";
            this.colEndCustOrderNo.FieldName = "EndCustOrderNo";
            this.colEndCustOrderNo.Name = "colEndCustOrderNo";
            this.colEndCustOrderNo.OptionsColumn.AllowEdit = false;
            this.colEndCustOrderNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colEndCustOrderNo.Tag = 1;
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
            this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCode.SummaryItem.Tag = "ColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 55;
            // 
            // colItemColorName
            // 
            this.colItemColorName.Caption = "Our Name\r\n(if any)";
            this.colItemColorName.FieldName = "ItemColorName";
            this.colItemColorName.Name = "colItemColorName";
            this.colItemColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colItemColorName.Visible = true;
            this.colItemColorName.Width = 126;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "Clr Shade from Supp\r\n(if any)";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.OptionsColumn.AllowEdit = false;
            this.colColorShade.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorShade.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorShade.SummaryItem.Tag = "ColorShade";
            this.colColorShade.Tag = 1;
            this.colColorShade.Visible = true;
            this.colColorShade.Width = 128;
            // 
            // gridBand17
            // 
            this.gridBand17.Caption = "Gmt Color (if any)";
            this.gridBand17.Columns.Add(this.colGmtColorCode);
            this.gridBand17.Columns.Add(this.colGmtColorName);
            this.gridBand17.MinWidth = 20;
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Tag = 2;
            this.gridBand17.Width = 138;
            // 
            // colGmtColorCode
            // 
            this.colGmtColorCode.Caption = "Gmt Clr Code\r\n(if any)";
            this.colGmtColorCode.FieldName = "GarmentColor";
            this.colGmtColorCode.Name = "colGmtColorCode";
            this.colGmtColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorCode.Tag = 1;
            this.colGmtColorCode.Width = 57;
            // 
            // colGmtColorName
            // 
            this.colGmtColorName.Caption = "Name";
            this.colGmtColorName.FieldName = "GmtColorName";
            this.colGmtColorName.Name = "colGmtColorName";
            this.colGmtColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorName.Visible = true;
            this.colGmtColorName.Width = 138;
            // 
            // bandDelRef
            // 
            this.bandDelRef.Caption = "Del Ref.";
            this.bandDelRef.Columns.Add(this.colTransitPoint);
            this.bandDelRef.Columns.Add(this.colTransitPointCode);
            this.bandDelRef.Columns.Add(this.colEndPoint);
            this.bandDelRef.MinWidth = 20;
            this.bandDelRef.Name = "bandDelRef";
            this.bandDelRef.Tag = 1;
            this.bandDelRef.Visible = false;
            this.bandDelRef.Width = 260;
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
            // colTransitPointCode
            // 
            this.colTransitPointCode.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitPointCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitPointCode.Caption = "Transit Pt. Code";
            this.colTransitPointCode.FieldName = "TransitPointCode";
            this.colTransitPointCode.Name = "colTransitPointCode";
            this.colTransitPointCode.OptionsColumn.AllowEdit = false;
            this.colTransitPointCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitPointCode.Width = 66;
            // 
            // colEndPoint
            // 
            this.colEndPoint.AppearanceCell.Options.UseTextOptions = true;
            this.colEndPoint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndPoint.Caption = "Pt. of Dest Code\r\n";
            this.colEndPoint.FieldName = "EndPoint";
            this.colEndPoint.Name = "colEndPoint";
            this.colEndPoint.OptionsColumn.AllowEdit = false;
            this.colEndPoint.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colEndPoint.OptionsColumn.ReadOnly = true;
            this.colEndPoint.Width = 64;
            // 
            // bandPage2Key
            // 
            this.bandPage2Key.Caption = "PO Summary Key Info";
            this.bandPage2Key.Columns.Add(this.bandedGridColumn1);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn2);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn3);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn4);
            this.bandPage2Key.Columns.Add(this.bandedGridColumn5);
            this.bandPage2Key.MinWidth = 20;
            this.bandPage2Key.Name = "bandPage2Key";
            this.bandPage2Key.Tag = 1;
            this.bandPage2Key.Visible = false;
            this.bandPage2Key.Width = 302;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "PO No.";
            this.bandedGridColumn1.FieldName = "PONO";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn1.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn1.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandedGridColumn1.SummaryItem.Tag = "PONO";
            this.bandedGridColumn1.Width = 61;
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
            this.bandedGridColumn2.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn2.Width = 61;
            // 
            // bandedGridColumn3
            // 
            this.bandedGridColumn3.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn3.Caption = "Unit";
            this.bandedGridColumn3.FieldName = "SupplierUOM";
            this.bandedGridColumn3.Name = "bandedGridColumn3";
            this.bandedGridColumn3.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn3.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn3.Width = 44;
            // 
            // bandedGridColumn4
            // 
            this.bandedGridColumn4.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn4.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn4.Caption = "Del dd";
            this.bandedGridColumn4.ColumnEdit = this.riPHDate;
            this.bandedGridColumn4.FieldName = "PODeliveryDate";
            this.bandedGridColumn4.Name = "bandedGridColumn4";
            this.bandedGridColumn4.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn4.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn4.Width = 71;
            // 
            // bandedGridColumn5
            // 
            this.bandedGridColumn5.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn5.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn5.Caption = "Transit Mode";
            this.bandedGridColumn5.FieldName = "TransitModePO";
            this.bandedGridColumn5.Name = "bandedGridColumn5";
            this.bandedGridColumn5.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.bandedGridColumn5.Width = 65;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Trade Method";
            this.gridBand1.Columns.Add(this.colTradeMethod);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Tag = "2";
            this.gridBand1.Visible = false;
            this.gridBand1.Width = 56;
            // 
            // colTradeMethod
            // 
            this.colTradeMethod.Caption = "Trade Method";
            this.colTradeMethod.ColumnEdit = this.repositoryItemGridLookUpEdit_TradeMethod;
            this.colTradeMethod.FieldName = "TradeMethod";
            this.colTradeMethod.Name = "colTradeMethod";
            this.colTradeMethod.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTradeMethod.Tag = "2";
            this.colTradeMethod.Width = 56;
            // 
            // repositoryItemGridLookUpEdit_TradeMethod
            // 
            this.repositoryItemGridLookUpEdit_TradeMethod.AutoHeight = false;
            this.repositoryItemGridLookUpEdit_TradeMethod.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemGridLookUpEdit_TradeMethod.DisplayMember = "DataCode";
            this.repositoryItemGridLookUpEdit_TradeMethod.Name = "repositoryItemGridLookUpEdit_TradeMethod";
            this.repositoryItemGridLookUpEdit_TradeMethod.NullText = "";
            this.repositoryItemGridLookUpEdit_TradeMethod.ValueMember = "DataCode";
            this.repositoryItemGridLookUpEdit_TradeMethod.View = this.gridView3;
            // 
            // gridView3
            // 
            this.gridView3.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gridView3.Name = "gridView3";
            this.gridView3.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView3.OptionsView.ShowGroupPanel = false;
            // 
            // bandQA
            // 
            this.bandQA.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(224)))), ((int)(((byte)(224)))), ((int)(((byte)(224)))));
            this.bandQA.AppearanceHeader.Options.UseBackColor = true;
            this.bandQA.Caption = "Color Control at 1st 2 steps process for Production Release";
            this.bandQA.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandSample,
            this.bandColorStandard,
            this.bandLabDip});
            this.bandQA.MinWidth = 20;
            this.bandQA.Name = "bandQA";
            this.bandQA.Tag = 0;
            this.bandQA.Width = 965;
            // 
            // bandSample
            // 
            this.bandSample.Caption = "Item\'s spec in BOM - approval (Y/N)?";
            this.bandSample.Columns.Add(this.colSampleApproval);
            this.bandSample.Columns.Add(this.colSampleFollowby);
            this.bandSample.Columns.Add(this.colSampleTtlLeftItem);
            this.bandSample.Columns.Add(this.colSampleCompletedDate);
            this.bandSample.Columns.Add(this.colSampleStatus);
            this.bandSample.Columns.Add(this.colSampleAuditedby);
            this.bandSample.MinWidth = 20;
            this.bandSample.Name = "bandSample";
            this.bandSample.Tag = 1;
            this.bandSample.Visible = false;
            this.bandSample.Width = 486;
            // 
            // colSampleApproval
            // 
            this.colSampleApproval.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleApproval.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleApproval.Caption = "Y/N ?";
            this.colSampleApproval.FieldName = "SampleApproval";
            this.colSampleApproval.Name = "colSampleApproval";
            this.colSampleApproval.OptionsColumn.AllowEdit = false;
            this.colSampleApproval.OptionsColumn.AllowIncrementalSearch = false;
            this.colSampleApproval.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleApproval.Width = 54;
            // 
            // colSampleFollowby
            // 
            this.colSampleFollowby.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleFollowby.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleFollowby.Caption = "This item follow up by?";
            this.colSampleFollowby.FieldName = "SampleFollowby";
            this.colSampleFollowby.Name = "colSampleFollowby";
            this.colSampleFollowby.OptionsColumn.AllowEdit = false;
            this.colSampleFollowby.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleFollowby.Width = 150;
            // 
            // colSampleTtlLeftItem
            // 
            this.colSampleTtlLeftItem.Caption = "Ttl Left Item(s) by  Proj";
            this.colSampleTtlLeftItem.FieldName = "SampleTtlLeftItem";
            this.colSampleTtlLeftItem.Name = "colSampleTtlLeftItem";
            this.colSampleTtlLeftItem.OptionsColumn.AllowEdit = false;
            this.colSampleTtlLeftItem.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleTtlLeftItem.Width = 153;
            // 
            // colSampleCompletedDate
            // 
            this.colSampleCompletedDate.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleCompletedDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleCompletedDate.Caption = "App/Rej dd";
            this.colSampleCompletedDate.ColumnEdit = this.riNullDate;
            this.colSampleCompletedDate.FieldName = "SampleCompletedDate";
            this.colSampleCompletedDate.Name = "colSampleCompletedDate";
            this.colSampleCompletedDate.OptionsColumn.AllowEdit = false;
            this.colSampleCompletedDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleCompletedDate.Width = 85;
            // 
            // riNullDate
            // 
            this.riNullDate.AutoHeight = false;
            this.riNullDate.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riNullDate.DisplayFormat.FormatString = "dd/MM/yy";
            this.riNullDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.riNullDate.Name = "riNullDate";
            this.riNullDate.NullText = "--";
            this.riNullDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // colSampleStatus
            // 
            this.colSampleStatus.Caption = "App/Rej Status";
            this.colSampleStatus.FieldName = "SampleStatus";
            this.colSampleStatus.Name = "colSampleStatus";
            this.colSampleStatus.OptionsColumn.AllowEdit = false;
            this.colSampleStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleStatus.Width = 95;
            // 
            // colSampleAuditedby
            // 
            this.colSampleAuditedby.Caption = "Audited by";
            this.colSampleAuditedby.FieldName = "SampleAuditedby";
            this.colSampleAuditedby.Name = "colSampleAuditedby";
            this.colSampleAuditedby.OptionsColumn.AllowEdit = false;
            this.colSampleAuditedby.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleAuditedby.Width = 73;
            // 
            // bandColorStandard
            // 
            this.bandColorStandard.Caption = "Color Standard";
            this.bandColorStandard.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand3});
            this.bandColorStandard.MinWidth = 20;
            this.bandColorStandard.Name = "bandColorStandard";
            this.bandColorStandard.Tag = 1;
            this.bandColorStandard.Width = 332;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Color Swatches / Swatch Card";
            this.gridBand2.Columns.Add(this.colColorStdSwatch3D);
            this.gridBand2.Columns.Add(this.colColorStdSwatchCard);
            this.gridBand2.Columns.Add(this.colBiColor);
            this.gridBand2.Columns.Add(this.colColorStdSwatchColorNo);
            this.gridBand2.Columns.Add(this.colColorStdSeq);
            this.gridBand2.Columns.Add(this.colColorStdReceiptDate);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 1;
            this.gridBand2.Width = 332;
            // 
            // colColorStdSwatch3D
            // 
            this.colColorStdSwatch3D.Caption = "3D Swatch";
            this.colColorStdSwatch3D.FieldName = "ColorStdSwatch3D";
            this.colColorStdSwatch3D.Name = "colColorStdSwatch3D";
            this.colColorStdSwatch3D.OptionsColumn.AllowEdit = false;
            this.colColorStdSwatch3D.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorStdSwatch3D.Width = 82;
            // 
            // colColorStdSwatchCard
            // 
            this.colColorStdSwatchCard.Caption = "Clr Swatches\r\nor\r\nSwatch Card";
            this.colColorStdSwatchCard.ColumnEdit = this.ricbSwatch;
            this.colColorStdSwatchCard.FieldName = "ColorStdSwatchCard";
            this.colColorStdSwatchCard.Name = "colColorStdSwatchCard";
            this.colColorStdSwatchCard.OptionsColumn.AllowEdit = false;
            this.colColorStdSwatchCard.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorStdSwatchCard.Visible = true;
            this.colColorStdSwatchCard.Width = 94;
            // 
            // ricbSwatch
            // 
            this.ricbSwatch.AutoHeight = false;
            this.ricbSwatch.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbSwatch.Items.AddRange(new object[] {
            "Swatch",
            "Card"});
            this.ricbSwatch.Name = "ricbSwatch";
            // 
            // colBiColor
            // 
            this.colBiColor.AppearanceCell.Options.UseTextOptions = true;
            this.colBiColor.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBiColor.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colBiColor.Caption = "Bi-color (Y)?";
            this.colBiColor.ColumnEdit = this.repositoryItemComboBox_BiColor;
            this.colBiColor.FieldName = "BiColor";
            this.colBiColor.Name = "colBiColor";
            this.colBiColor.Visible = true;
            this.colBiColor.Width = 60;
            // 
            // repositoryItemComboBox_BiColor
            // 
            this.repositoryItemComboBox_BiColor.AutoHeight = false;
            this.repositoryItemComboBox_BiColor.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_BiColor.Items.AddRange(new object[] {
            "",
            "Y",
            "N"});
            this.repositoryItemComboBox_BiColor.Name = "repositoryItemComboBox_BiColor";
            // 
            // colColorStdSwatchColorNo
            // 
            this.colColorStdSwatchColorNo.Caption = "No.";
            this.colColorStdSwatchColorNo.FieldName = "ColorStdSwatchColorNo";
            this.colColorStdSwatchColorNo.Name = "colColorStdSwatchColorNo";
            this.colColorStdSwatchColorNo.OptionsColumn.AllowEdit = false;
            this.colColorStdSwatchColorNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorStdSwatchColorNo.Visible = true;
            this.colColorStdSwatchColorNo.Width = 104;
            // 
            // colColorStdSeq
            // 
            this.colColorStdSeq.AppearanceCell.Options.UseTextOptions = true;
            this.colColorStdSeq.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColorStdSeq.Caption = "Submit Seq No.";
            this.colColorStdSeq.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colColorStdSeq.FieldName = "ColorStdSeq";
            this.colColorStdSeq.Name = "colColorStdSeq";
            this.colColorStdSeq.OptionsColumn.AllowEdit = false;
            this.colColorStdSeq.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorStdSeq.Width = 109;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            this.repositoryItemSpinEdit1.NullText = "--";
            // 
            // colColorStdReceiptDate
            // 
            this.colColorStdReceiptDate.AppearanceCell.Options.UseTextOptions = true;
            this.colColorStdReceiptDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColorStdReceiptDate.Caption = "Our Rcvd dd";
            this.colColorStdReceiptDate.ColumnEdit = this.riPHDate;
            this.colColorStdReceiptDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colColorStdReceiptDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colColorStdReceiptDate.FieldName = "ColorStdReceiptDate";
            this.colColorStdReceiptDate.Name = "colColorStdReceiptDate";
            this.colColorStdReceiptDate.OptionsColumn.AllowEdit = false;
            this.colColorStdReceiptDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorStdReceiptDate.Visible = true;
            this.colColorStdReceiptDate.Width = 74;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Color info to Supp";
            this.gridBand3.Columns.Add(this.colColorStdPHCust);
            this.gridBand3.Columns.Add(this.colColorStdToSuppDate);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Tag = 1;
            this.gridBand3.Visible = false;
            this.gridBand3.Width = 160;
            // 
            // colColorStdPHCust
            // 
            this.colColorStdPHCust.Caption = "PH / Cust ?";
            this.colColorStdPHCust.FieldName = "ColorStdPHCust";
            this.colColorStdPHCust.Name = "colColorStdPHCust";
            this.colColorStdPHCust.OptionsColumn.AllowEdit = false;
            this.colColorStdPHCust.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorStdPHCust.Width = 85;
            // 
            // colColorStdToSuppDate
            // 
            this.colColorStdToSuppDate.Caption = "dd";
            this.colColorStdToSuppDate.ColumnEdit = this.riPHDate;
            this.colColorStdToSuppDate.FieldName = "ColorStdToSuppDate";
            this.colColorStdToSuppDate.Name = "colColorStdToSuppDate";
            this.colColorStdToSuppDate.OptionsColumn.AllowEdit = false;
            this.colColorStdToSuppDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // bandLabDip
            // 
            this.bandLabDip.Caption = "Lab Dip Processing";
            this.bandLabDip.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand8});
            this.bandLabDip.MinWidth = 20;
            this.bandLabDip.Name = "bandLabDip";
            this.bandLabDip.Tag = 2;
            this.bandLabDip.Width = 633;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "L/D Approval Status";
            this.gridBand5.Columns.Add(this.colLadDipOption);
            this.gridBand5.Columns.Add(this.colDipNo);
            this.gridBand5.Columns.Add(this.colSampleSeq);
            this.gridBand5.Columns.Add(this.colDipSeq);
            this.gridBand5.Columns.Add(this.colDipReceiptDate);
            this.gridBand5.Columns.Add(this.colSampleReceiptDate);
            this.gridBand5.Columns.Add(this.colDipCompletedDate);
            this.gridBand5.Columns.Add(this.colDipStatus);
            this.gridBand5.Columns.Add(this.colDipDropDeadDate);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Tag = 2;
            this.gridBand5.Width = 445;
            // 
            // colLadDipOption
            // 
            this.colLadDipOption.AppearanceCell.Options.UseTextOptions = true;
            this.colLadDipOption.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLadDipOption.Caption = "Handling Option Cde";
            this.colLadDipOption.ColumnEdit = this.rigluLadDip;
            this.colLadDipOption.FieldName = "LadDipOption";
            this.colLadDipOption.Name = "colLadDipOption";
            this.colLadDipOption.OptionsColumn.AllowIncrementalSearch = false;
            this.colLadDipOption.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLadDipOption.Tag = 1;
            this.colLadDipOption.Visible = true;
            this.colLadDipOption.Width = 59;
            // 
            // rigluLadDip
            // 
            this.rigluLadDip.AutoHeight = false;
            this.rigluLadDip.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rigluLadDip.Name = "rigluLadDip";
            this.rigluLadDip.NullText = "";
            this.rigluLadDip.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit1});
            this.rigluLadDip.View = this.repositoryItemGridLookUpEdit1View;
            this.rigluLadDip.EditValueChanged += new System.EventHandler(this.rigluLadDip_EditValueChanged);
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // repositoryItemGridLookUpEdit1View
            // 
            this.repositoryItemGridLookUpEdit1View.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn1,
            this.gridColumn2});
            this.repositoryItemGridLookUpEdit1View.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.repositoryItemGridLookUpEdit1View.Name = "repositoryItemGridLookUpEdit1View";
            this.repositoryItemGridLookUpEdit1View.OptionsBehavior.AutoPopulateColumns = false;
            this.repositoryItemGridLookUpEdit1View.OptionsBehavior.Editable = false;
            this.repositoryItemGridLookUpEdit1View.OptionsCustomization.AllowFilter = false;
            this.repositoryItemGridLookUpEdit1View.OptionsCustomization.AllowGroup = false;
            this.repositoryItemGridLookUpEdit1View.OptionsCustomization.AllowSort = false;
            this.repositoryItemGridLookUpEdit1View.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ColumnAutoWidth = false;
            this.repositoryItemGridLookUpEdit1View.OptionsView.RowAutoHeight = true;
            this.repositoryItemGridLookUpEdit1View.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.Caption = "Code";
            this.gridColumn1.FieldName = "DataCode";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 0;
            this.gridColumn1.Width = 50;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Description";
            this.gridColumn2.ColumnEdit = this.repositoryItemMemoEdit1;
            this.gridColumn2.FieldName = "Description";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 1;
            this.gridColumn2.Width = 400;
            // 
            // colDipNo
            // 
            this.colDipNo.Caption = "L/D\'s Ref.";
            this.colDipNo.FieldName = "DipNo";
            this.colDipNo.Name = "colDipNo";
            this.colDipNo.OptionsColumn.AllowEdit = false;
            this.colDipNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipNo.Visible = true;
            this.colDipNo.Width = 64;
            // 
            // colSampleSeq
            // 
            this.colSampleSeq.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleSeq.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleSeq.Caption = "Rcpt Seq No.";
            this.colSampleSeq.FieldName = "SampleSeq";
            this.colSampleSeq.Name = "colSampleSeq";
            this.colSampleSeq.OptionsColumn.AllowEdit = false;
            this.colSampleSeq.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleSeq.Width = 95;
            // 
            // colDipSeq
            // 
            this.colDipSeq.AppearanceCell.Options.UseTextOptions = true;
            this.colDipSeq.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDipSeq.Caption = "Rcpt Seq No.";
            this.colDipSeq.FieldName = "DipSeq";
            this.colDipSeq.Name = "colDipSeq";
            this.colDipSeq.OptionsColumn.AllowEdit = false;
            this.colDipSeq.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipSeq.Width = 47;
            // 
            // colDipReceiptDate
            // 
            this.colDipReceiptDate.AppearanceCell.Options.UseTextOptions = true;
            this.colDipReceiptDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDipReceiptDate.Caption = "Rcvd dd";
            this.colDipReceiptDate.ColumnEdit = this.riPHDate;
            this.colDipReceiptDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDipReceiptDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDipReceiptDate.FieldName = "DipReceiptDate";
            this.colDipReceiptDate.Name = "colDipReceiptDate";
            this.colDipReceiptDate.OptionsColumn.AllowEdit = false;
            this.colDipReceiptDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipReceiptDate.Visible = true;
            // 
            // colSampleReceiptDate
            // 
            this.colSampleReceiptDate.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleReceiptDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleReceiptDate.Caption = "Rcvd dd";
            this.colSampleReceiptDate.ColumnEdit = this.riPHDate;
            this.colSampleReceiptDate.FieldName = "SampleReceiptDate";
            this.colSampleReceiptDate.Name = "colSampleReceiptDate";
            this.colSampleReceiptDate.OptionsColumn.AllowEdit = false;
            this.colSampleReceiptDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colDipCompletedDate
            // 
            this.colDipCompletedDate.AppearanceCell.Options.UseTextOptions = true;
            this.colDipCompletedDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDipCompletedDate.Caption = "App/Rej dd";
            this.colDipCompletedDate.ColumnEdit = this.riPHDate;
            this.colDipCompletedDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDipCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDipCompletedDate.FieldName = "DipCompletedDate";
            this.colDipCompletedDate.Name = "colDipCompletedDate";
            this.colDipCompletedDate.OptionsColumn.AllowEdit = false;
            this.colDipCompletedDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipCompletedDate.Visible = true;
            this.colDipCompletedDate.Width = 74;
            // 
            // colDipStatus
            // 
            this.colDipStatus.Caption = "App/Rej Status";
            this.colDipStatus.FieldName = "DipStatus";
            this.colDipStatus.Name = "colDipStatus";
            this.colDipStatus.OptionsColumn.AllowEdit = false;
            this.colDipStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipStatus.Visible = true;
            this.colDipStatus.Width = 64;
            // 
            // colDipDropDeadDate
            // 
            this.colDipDropDeadDate.AppearanceCell.Options.UseTextOptions = true;
            this.colDipDropDeadDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDipDropDeadDate.Caption = "Drop Dead dd of L/D\r\n(for ref.)";
            this.colDipDropDeadDate.ColumnEdit = this.riPHDate;
            this.colDipDropDeadDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDipDropDeadDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDipDropDeadDate.FieldName = "DipDropDeadDate";
            this.colDipDropDeadDate.Name = "colDipDropDeadDate";
            this.colDipDropDeadDate.OptionsColumn.AllowEdit = false;
            this.colDipDropDeadDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipDropDeadDate.Visible = true;
            this.colDipDropDeadDate.Width = 109;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "L/D Comment";
            this.gridBand8.Columns.Add(this.colDipColoristComment);
            this.gridBand8.Columns.Add(this.colFollowUpBy);
            this.gridBand8.Columns.Add(this.colDipRemark);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Tag = 2;
            this.gridBand8.Width = 188;
            // 
            // colDipColoristComment
            // 
            this.colDipColoristComment.Caption = "Comment for status";
            this.colDipColoristComment.ColumnEdit = this.repositoryItemMemoEdit_MultiRow;
            this.colDipColoristComment.FieldName = "DipColoristComment";
            this.colDipColoristComment.Name = "colDipColoristComment";
            this.colDipColoristComment.OptionsColumn.AllowEdit = false;
            this.colDipColoristComment.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipColoristComment.Visible = true;
            this.colDipColoristComment.Width = 139;
            // 
            // repositoryItemMemoEdit_MultiRow
            // 
            this.repositoryItemMemoEdit_MultiRow.Name = "repositoryItemMemoEdit_MultiRow";
            // 
            // colFollowUpBy
            // 
            this.colFollowUpBy.Caption = "Follow up by?";
            this.colFollowUpBy.FieldName = "FollowUpBy";
            this.colFollowUpBy.Name = "colFollowUpBy";
            this.colFollowUpBy.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFollowUpBy.Visible = true;
            this.colFollowUpBy.Width = 49;
            // 
            // colDipRemark
            // 
            this.colDipRemark.Caption = "End Cust/Supp Comment";
            this.colDipRemark.FieldName = "DipCustComment";
            this.colDipRemark.Name = "colDipRemark";
            this.colDipRemark.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipRemark.Width = 161;
            // 
            // bandQAProcess
            // 
            this.bandQAProcess.Caption = "Color Cotrol at last 2 steps process for Shipment Release";
            this.bandQAProcess.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandBulk,
            this.bandTest});
            this.bandQAProcess.MinWidth = 20;
            this.bandQAProcess.Name = "bandQAProcess";
            this.bandQAProcess.Tag = 0;
            this.bandQAProcess.Width = 994;
            // 
            // bandBulk
            // 
            this.bandBulk.Caption = "Bulk Color Approval Status ";
            this.bandBulk.Columns.Add(this.colBulkOption);
            this.bandBulk.Columns.Add(this.colBulkSubmitSeq);
            this.bandBulk.Columns.Add(this.colBulkReceiptDate);
            this.bandBulk.Columns.Add(this.colBulkNumOfBatch);
            this.bandBulk.Columns.Add(this.colBulkSubmitNo);
            this.bandBulk.Columns.Add(this.colBulkCompletedDate);
            this.bandBulk.Columns.Add(this.colBulkStatus);
            this.bandBulk.Columns.Add(this.colBulkQty);
            this.bandBulk.Columns.Add(this.colBulkTotalAppQty);
            this.bandBulk.Columns.Add(this.colBulkDropDeadDate);
            this.bandBulk.Columns.Add(this.colDropDeadDateDiffDay);
            this.bandBulk.Columns.Add(this.colBulkRemark);
            this.bandBulk.MinWidth = 20;
            this.bandBulk.Name = "bandBulk";
            this.bandBulk.Tag = 1;
            this.bandBulk.Width = 675;
            // 
            // colBulkOption
            // 
            this.colBulkOption.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkOption.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBulkOption.Caption = "Handling Option Cde";
            this.colBulkOption.ColumnEdit = this.rigluBulk;
            this.colBulkOption.FieldName = "BulkOption";
            this.colBulkOption.Name = "colBulkOption";
            this.colBulkOption.OptionsColumn.AllowIncrementalSearch = false;
            this.colBulkOption.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkOption.Tag = 1;
            this.colBulkOption.Visible = true;
            this.colBulkOption.Width = 71;
            // 
            // rigluBulk
            // 
            this.rigluBulk.AutoHeight = false;
            this.rigluBulk.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rigluBulk.Name = "rigluBulk";
            this.rigluBulk.NullText = "";
            this.rigluBulk.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit2});
            this.rigluBulk.View = this.gridView1;
            // 
            // repositoryItemMemoEdit2
            // 
            this.repositoryItemMemoEdit2.Name = "repositoryItemMemoEdit2";
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn3,
            this.gridColumn4});
            this.gridView1.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.AutoPopulateColumns = false;
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsCustomization.AllowFilter = false;
            this.gridView1.OptionsCustomization.AllowGroup = false;
            this.gridView1.OptionsCustomization.AllowSort = false;
            this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView1.OptionsView.RowAutoHeight = true;
            this.gridView1.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn3
            // 
            this.gridColumn3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn3.Caption = "Code";
            this.gridColumn3.FieldName = "DataCode";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 0;
            this.gridColumn3.Width = 63;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Description";
            this.gridColumn4.ColumnEdit = this.repositoryItemMemoEdit2;
            this.gridColumn4.FieldName = "Description";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 1;
            this.gridColumn4.Width = 400;
            // 
            // colBulkSubmitSeq
            // 
            this.colBulkSubmitSeq.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkSubmitSeq.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBulkSubmitSeq.Caption = "Rcpt Seq No.";
            this.colBulkSubmitSeq.FieldName = "BulkSubmitSeq";
            this.colBulkSubmitSeq.Name = "colBulkSubmitSeq";
            this.colBulkSubmitSeq.OptionsColumn.AllowEdit = false;
            this.colBulkSubmitSeq.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkSubmitSeq.Width = 40;
            // 
            // colBulkReceiptDate
            // 
            this.colBulkReceiptDate.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkReceiptDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBulkReceiptDate.Caption = "Rcvd dd";
            this.colBulkReceiptDate.ColumnEdit = this.riPHDate;
            this.colBulkReceiptDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colBulkReceiptDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colBulkReceiptDate.FieldName = "BulkReceiptDate";
            this.colBulkReceiptDate.Name = "colBulkReceiptDate";
            this.colBulkReceiptDate.OptionsColumn.AllowEdit = false;
            this.colBulkReceiptDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkReceiptDate.Visible = true;
            this.colBulkReceiptDate.Width = 71;
            // 
            // colBulkNumOfBatch
            // 
            this.colBulkNumOfBatch.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkNumOfBatch.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBulkNumOfBatch.Caption = "Nr. Of Batch";
            this.colBulkNumOfBatch.FieldName = "BulkNumOfBatch";
            this.colBulkNumOfBatch.Name = "colBulkNumOfBatch";
            this.colBulkNumOfBatch.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkNumOfBatch.Width = 91;
            // 
            // colBulkSubmitNo
            // 
            this.colBulkSubmitNo.Caption = "Batch No.";
            this.colBulkSubmitNo.FieldName = "BulkSubmitNo";
            this.colBulkSubmitNo.Name = "colBulkSubmitNo";
            this.colBulkSubmitNo.OptionsColumn.AllowEdit = false;
            this.colBulkSubmitNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkSubmitNo.Visible = true;
            this.colBulkSubmitNo.Width = 76;
            // 
            // colBulkCompletedDate
            // 
            this.colBulkCompletedDate.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkCompletedDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBulkCompletedDate.Caption = "App/Rej dd";
            this.colBulkCompletedDate.ColumnEdit = this.riPHDate;
            this.colBulkCompletedDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colBulkCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colBulkCompletedDate.FieldName = "BulkCompletedDate";
            this.colBulkCompletedDate.Name = "colBulkCompletedDate";
            this.colBulkCompletedDate.OptionsColumn.AllowEdit = false;
            this.colBulkCompletedDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkCompletedDate.Visible = true;
            this.colBulkCompletedDate.Width = 84;
            // 
            // colBulkStatus
            // 
            this.colBulkStatus.Caption = "App/Rej Status";
            this.colBulkStatus.FieldName = "BulkStatus";
            this.colBulkStatus.Name = "colBulkStatus";
            this.colBulkStatus.OptionsColumn.AllowEdit = false;
            this.colBulkStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkStatus.Visible = true;
            this.colBulkStatus.Width = 66;
            // 
            // colBulkQty
            // 
            this.colBulkQty.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colBulkQty.Caption = "Release Qty";
            this.colBulkQty.FieldName = "BulkQty";
            this.colBulkQty.Name = "colBulkQty";
            this.colBulkQty.OptionsColumn.AllowEdit = false;
            this.colBulkQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkQty.Width = 60;
            // 
            // colBulkTotalAppQty
            // 
            this.colBulkTotalAppQty.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkTotalAppQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colBulkTotalAppQty.Caption = "App. Ttl Qty";
            this.colBulkTotalAppQty.FieldName = "BulkTotalAppQty";
            this.colBulkTotalAppQty.Name = "colBulkTotalAppQty";
            this.colBulkTotalAppQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkTotalAppQty.Width = 90;
            // 
            // colBulkDropDeadDate
            // 
            this.colBulkDropDeadDate.AppearanceCell.Options.UseTextOptions = true;
            this.colBulkDropDeadDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBulkDropDeadDate.Caption = "Drop Dead dd (for ref.)";
            this.colBulkDropDeadDate.ColumnEdit = this.riPHDate;
            this.colBulkDropDeadDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colBulkDropDeadDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colBulkDropDeadDate.FieldName = "BulkDropDeadDate";
            this.colBulkDropDeadDate.Name = "colBulkDropDeadDate";
            this.colBulkDropDeadDate.OptionsColumn.AllowEdit = false;
            this.colBulkDropDeadDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkDropDeadDate.Visible = true;
            this.colBulkDropDeadDate.Width = 81;
            // 
            // colDropDeadDateDiffDay
            // 
            this.colDropDeadDateDiffDay.AppearanceCell.Options.UseTextOptions = true;
            this.colDropDeadDateDiffDay.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDropDeadDateDiffDay.Caption = "Days Behind\r\nAppv Target\r\n(Curr.)";
            this.colDropDeadDateDiffDay.FieldName = "DropDeadDateDiffDay";
            this.colDropDeadDateDiffDay.Name = "colDropDeadDateDiffDay";
            this.colDropDeadDateDiffDay.OptionsColumn.AllowEdit = false;
            this.colDropDeadDateDiffDay.Visible = true;
            this.colDropDeadDateDiffDay.Width = 94;
            // 
            // colBulkRemark
            // 
            this.colBulkRemark.Caption = "Comment for status\r\n(Option A, if any)";
            this.colBulkRemark.ColumnEdit = this.repositoryItemMemoEdit_MultiRow;
            this.colBulkRemark.FieldName = "BulkRemark";
            this.colBulkRemark.Name = "colBulkRemark";
            this.colBulkRemark.OptionsColumn.AllowEdit = false;
            this.colBulkRemark.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkRemark.Visible = true;
            this.colBulkRemark.Width = 132;
            // 
            // bandTest
            // 
            this.bandTest.Caption = "Others Lab Test Approval Status\r\n(cust dependent)";
            this.bandTest.Columns.Add(this.colTestApproval);
            this.bandTest.Columns.Add(this.colTestSeq);
            this.bandTest.Columns.Add(this.colTestReceiptDate);
            this.bandTest.Columns.Add(this.colTestCompletedDate);
            this.bandTest.Columns.Add(this.colTestStatus);
            this.bandTest.MinWidth = 20;
            this.bandTest.Name = "bandTest";
            this.bandTest.Tag = 2;
            this.bandTest.Width = 319;
            // 
            // colTestApproval
            // 
            this.colTestApproval.AppearanceCell.Options.UseTextOptions = true;
            this.colTestApproval.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestApproval.Caption = "Y/N ?";
            this.colTestApproval.FieldName = "TestApproval";
            this.colTestApproval.Name = "colTestApproval";
            this.colTestApproval.OptionsColumn.AllowEdit = false;
            this.colTestApproval.OptionsColumn.AllowIncrementalSearch = false;
            this.colTestApproval.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTestApproval.Visible = true;
            this.colTestApproval.Width = 34;
            // 
            // colTestSeq
            // 
            this.colTestSeq.AppearanceCell.Options.UseTextOptions = true;
            this.colTestSeq.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestSeq.Caption = "Appv. Seq.";
            this.colTestSeq.FieldName = "TestSeq";
            this.colTestSeq.Name = "colTestSeq";
            this.colTestSeq.OptionsColumn.AllowEdit = false;
            this.colTestSeq.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTestSeq.Visible = true;
            this.colTestSeq.Width = 52;
            // 
            // colTestReceiptDate
            // 
            this.colTestReceiptDate.AppearanceCell.Options.UseTextOptions = true;
            this.colTestReceiptDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestReceiptDate.Caption = "Rcvd dd";
            this.colTestReceiptDate.ColumnEdit = this.riPHDate;
            this.colTestReceiptDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTestReceiptDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTestReceiptDate.FieldName = "TestReceiptDate";
            this.colTestReceiptDate.Name = "colTestReceiptDate";
            this.colTestReceiptDate.OptionsColumn.AllowEdit = false;
            this.colTestReceiptDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTestReceiptDate.Visible = true;
            this.colTestReceiptDate.Width = 79;
            // 
            // colTestCompletedDate
            // 
            this.colTestCompletedDate.AppearanceCell.Options.UseTextOptions = true;
            this.colTestCompletedDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTestCompletedDate.Caption = "App/Rej dd";
            this.colTestCompletedDate.ColumnEdit = this.riPHDate;
            this.colTestCompletedDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTestCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTestCompletedDate.FieldName = "TestCompletedDate";
            this.colTestCompletedDate.Name = "colTestCompletedDate";
            this.colTestCompletedDate.OptionsColumn.AllowEdit = false;
            this.colTestCompletedDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTestCompletedDate.Visible = true;
            this.colTestCompletedDate.Width = 82;
            // 
            // colTestStatus
            // 
            this.colTestStatus.Caption = "App/Rej Status";
            this.colTestStatus.FieldName = "TestStatus";
            this.colTestStatus.Name = "colTestStatus";
            this.colTestStatus.OptionsColumn.AllowEdit = false;
            this.colTestStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTestStatus.Visible = true;
            this.colTestStatus.Width = 72;
            // 
            // bandTransfer
            // 
            this.bandTransfer.Caption = "Data Transfer from L.1";
            this.bandTransfer.Columns.Add(this.colTransferCode);
            this.bandTransfer.Columns.Add(this.colTransferDate);
            this.bandTransfer.MinWidth = 20;
            this.bandTransfer.Name = "bandTransfer";
            this.bandTransfer.Tag = 1;
            this.bandTransfer.Width = 206;
            // 
            // colTransferCode
            // 
            this.colTransferCode.Caption = "Cde";
            this.colTransferCode.ColumnEdit = this.ribeTransit;
            this.colTransferCode.FieldName = "TransferCode";
            this.colTransferCode.Name = "colTransferCode";
            this.colTransferCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransferCode.Visible = true;
            this.colTransferCode.Width = 105;
            // 
            // ribeTransit
            // 
            this.ribeTransit.AutoHeight = false;
            this.ribeTransit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribeTransit.Name = "ribeTransit";
            this.ribeTransit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeTranst_ButtonClick);
            // 
            // colTransferDate
            // 
            this.colTransferDate.Caption = "dd";
            this.colTransferDate.ColumnEdit = this.riPHDate;
            this.colTransferDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTransferDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTransferDate.FieldName = "TransferDate";
            this.colTransferDate.Name = "colTransferDate";
            this.colTransferDate.OptionsColumn.AllowEdit = false;
            this.colTransferDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransferDate.Visible = true;
            this.colTransferDate.Width = 101;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Coordinator";
            this.gridBand9.Columns.Add(this.colNumOfProject);
            this.gridBand9.Columns.Add(this.colReport);
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Tag = 2;
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
            this.colReport.ColumnEdit = this.ribeTransit;
            this.colReport.FieldName = "CheckFlag";
            this.colReport.Name = "colReport";
            this.colReport.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colReport.Width = 71;
            // 
            // gridBand18
            // 
            this.gridBand18.Caption = "Action Log";
            this.gridBand18.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand19,
            this.gridBand20});
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Tag = 0;
            this.gridBand18.Visible = false;
            this.gridBand18.Width = 357;
            // 
            // gridBand19
            // 
            this.gridBand19.Caption = "Action";
            this.gridBand19.Columns.Add(this.colActionLogTaking);
            this.gridBand19.Columns.Add(this.colActionLogGroup);
            this.gridBand19.Columns.Add(this.colActionLogSeqNoShow);
            this.gridBand19.MinWidth = 20;
            this.gridBand19.Name = "gridBand19";
            this.gridBand19.Tag = 2;
            this.gridBand19.Width = 187;
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
            this.colActionLogGroup.FieldName = "ActionLogGroup";
            this.colActionLogGroup.Name = "colActionLogGroup";
            this.colActionLogGroup.OptionsColumn.AllowEdit = false;
            this.colActionLogGroup.Visible = true;
            this.colActionLogGroup.Width = 53;
            // 
            // colActionLogSeqNoShow
            // 
            this.colActionLogSeqNoShow.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogSeqNoShow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogSeqNoShow.Caption = "Log Seq#";
            this.colActionLogSeqNoShow.ColumnEdit = this.repositoryItemButtonEdit_ActionLog;
            this.colActionLogSeqNoShow.FieldName = "ActionLogSeqNoShow";
            this.colActionLogSeqNoShow.Name = "colActionLogSeqNoShow";
            this.colActionLogSeqNoShow.Visible = true;
            this.colActionLogSeqNoShow.Width = 76;
            // 
            // repositoryItemButtonEdit_ActionLog
            // 
            this.repositoryItemButtonEdit_ActionLog.AutoHeight = false;
            this.repositoryItemButtonEdit_ActionLog.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_ActionLog.Name = "repositoryItemButtonEdit_ActionLog";
            this.repositoryItemButtonEdit_ActionLog.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_ActionLog_ButtonClick);
            // 
            // gridBand20
            // 
            this.gridBand20.Caption = "Completion Stage";
            this.gridBand20.Columns.Add(this.colActionLogCompletionStage_Target);
            this.gridBand20.Columns.Add(this.colActionLogCompletionStage_Revised);
            this.gridBand20.Columns.Add(this.colActionLogCompletionStage_Cmpl);
            this.gridBand20.MinWidth = 20;
            this.gridBand20.Name = "gridBand20";
            this.gridBand20.Tag = 1;
            this.gridBand20.Width = 170;
            // 
            // colActionLogCompletionStage_Target
            // 
            this.colActionLogCompletionStage_Target.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogCompletionStage_Target.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogCompletionStage_Target.Caption = "Target";
            this.colActionLogCompletionStage_Target.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogCompletionStage_Target.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogCompletionStage_Target.FieldName = "ActionLogCompletionStage_Target";
            this.colActionLogCompletionStage_Target.Name = "colActionLogCompletionStage_Target";
            this.colActionLogCompletionStage_Target.OptionsColumn.AllowEdit = false;
            this.colActionLogCompletionStage_Target.Visible = true;
            this.colActionLogCompletionStage_Target.Width = 59;
            // 
            // colActionLogCompletionStage_Revised
            // 
            this.colActionLogCompletionStage_Revised.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogCompletionStage_Revised.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogCompletionStage_Revised.Caption = "Revised";
            this.colActionLogCompletionStage_Revised.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogCompletionStage_Revised.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogCompletionStage_Revised.FieldName = "ActionLogCompletionStage_Revised";
            this.colActionLogCompletionStage_Revised.Name = "colActionLogCompletionStage_Revised";
            this.colActionLogCompletionStage_Revised.OptionsColumn.AllowEdit = false;
            this.colActionLogCompletionStage_Revised.Visible = true;
            this.colActionLogCompletionStage_Revised.Width = 63;
            // 
            // colActionLogCompletionStage_Cmpl
            // 
            this.colActionLogCompletionStage_Cmpl.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogCompletionStage_Cmpl.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogCompletionStage_Cmpl.Caption = "Cmpl";
            this.colActionLogCompletionStage_Cmpl.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogCompletionStage_Cmpl.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogCompletionStage_Cmpl.FieldName = "ActionLogCompletionStage_Cmpl";
            this.colActionLogCompletionStage_Cmpl.Name = "colActionLogCompletionStage_Cmpl";
            this.colActionLogCompletionStage_Cmpl.OptionsColumn.AllowEdit = false;
            this.colActionLogCompletionStage_Cmpl.Visible = true;
            this.colActionLogCompletionStage_Cmpl.Width = 48;
            // 
            // gridBand21
            // 
            this.gridBand21.Caption = "Mat\'l\r\nStandBy\r\n(done)";
            this.gridBand21.Columns.Add(this.colMaterialStandBy);
            this.gridBand21.Columns.Add(this.colSampleNewItem);
            this.gridBand21.Name = "gridBand21";
            this.gridBand21.Tag = 2;
            this.gridBand21.Width = 58;
            // 
            // colMaterialStandBy
            // 
            this.colMaterialStandBy.ColumnEdit = this.repositoryItemComboBox_MaterialStandby;
            this.colMaterialStandBy.FieldName = "MaterialStandBy";
            this.colMaterialStandBy.Name = "colMaterialStandBy";
            this.colMaterialStandBy.Visible = true;
            this.colMaterialStandBy.Width = 58;
            // 
            // repositoryItemComboBox_MaterialStandby
            // 
            this.repositoryItemComboBox_MaterialStandby.AutoHeight = false;
            this.repositoryItemComboBox_MaterialStandby.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_MaterialStandby.Items.AddRange(new object[] {
            "",
            "Y"});
            this.repositoryItemComboBox_MaterialStandby.Name = "repositoryItemComboBox_MaterialStandby";
            this.repositoryItemComboBox_MaterialStandby.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colSampleNewItem
            // 
            this.colSampleNewItem.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleNewItem.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleNewItem.Caption = "New Item?";
            this.colSampleNewItem.ColumnEdit = this.riicbYN;
            this.colSampleNewItem.FieldName = "NewItem";
            this.colSampleNewItem.Name = "colSampleNewItem";
            this.colSampleNewItem.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSampleNewItem.Width = 83;
            // 
            // riicbYN
            // 
            this.riicbYN.AutoHeight = false;
            this.riicbYN.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riicbYN.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("N", false, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem(" ", null, -1)});
            this.riicbYN.Name = "riicbYN";
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
            // colRemark
            // 
            this.colRemark.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.colRemark.AppearanceHeader.Options.UseForeColor = true;
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.OptionsColumn.AllowEdit = false;
            this.colRemark.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colRemark.Tag = 1;
            // 
            // colPHQty
            // 
            this.colPHQty.Caption = "Our Qty";
            this.colPHQty.DisplayFormat.FormatString = "#,0.#";
            this.colPHQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHQty.FieldName = "Qty";
            this.colPHQty.Name = "colPHQty";
            this.colPHQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colPHUom
            // 
            this.colPHUom.Caption = "Our Unit";
            this.colPHUom.FieldName = "PHUom";
            this.colPHUom.Name = "colPHUom";
            this.colPHUom.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colDipPHToCustDate
            // 
            this.colDipPHToCustDate.Caption = "Send L/D to Cust date (PH)";
            this.colDipPHToCustDate.FieldName = "DipPHToCustDate";
            this.colDipPHToCustDate.Name = "colDipPHToCustDate";
            this.colDipPHToCustDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipPHToCustDate.Width = 173;
            // 
            // colDipPHStatus
            // 
            this.colDipPHStatus.Caption = "PH App/Rej Status (L/D)";
            this.colDipPHStatus.FieldName = "DipPHStatus";
            this.colDipPHStatus.Name = "colDipPHStatus";
            this.colDipPHStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipPHStatus.Width = 157;
            // 
            // colDipSuppToCustDate
            // 
            this.colDipSuppToCustDate.Caption = "Send L/D to Cust date (Supp)";
            this.colDipSuppToCustDate.FieldName = "DipSuppToCustDate";
            this.colDipSuppToCustDate.Name = "colDipSuppToCustDate";
            this.colDipSuppToCustDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colDipSuppToCustDate.Width = 185;
            // 
            // colBulkPHToCustDate
            // 
            this.colBulkPHToCustDate.Caption = "Send B/S to Cust date (PH)";
            this.colBulkPHToCustDate.FieldName = "BulkPHToCustDate";
            this.colBulkPHToCustDate.Name = "colBulkPHToCustDate";
            this.colBulkPHToCustDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkPHToCustDate.Width = 173;
            // 
            // colBulkPHStatus
            // 
            this.colBulkPHStatus.Caption = "PH App/Rej Status (B/S)";
            this.colBulkPHStatus.FieldName = "BulkPHStatus";
            this.colBulkPHStatus.Name = "colBulkPHStatus";
            this.colBulkPHStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkPHStatus.Width = 157;
            // 
            // colBulkSuppToCustDate
            // 
            this.colBulkSuppToCustDate.Caption = "Send B/S to Cust date (Supp)";
            this.colBulkSuppToCustDate.FieldName = "BulkSuppToCustDate";
            this.colBulkSuppToCustDate.Name = "colBulkSuppToCustDate";
            this.colBulkSuppToCustDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBulkSuppToCustDate.Width = 185;
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
            // colPending
            // 
            this.colPending.Caption = "Pending";
            this.colPending.FieldName = "Pending";
            this.colPending.Name = "colPending";
            this.colPending.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colWeek
            // 
            this.colWeek.Caption = "Week";
            this.colWeek.FieldName = "Week";
            this.colWeek.Name = "colWeek";
            this.colWeek.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colExRate
            // 
            this.colExRate.Caption = "ExRate";
            this.colExRate.FieldName = "ExRate";
            this.colExRate.Name = "colExRate";
            this.colExRate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colPHBALAMount
            // 
            this.colPHBALAMount.Caption = "PHBALAMount";
            this.colPHBALAMount.FieldName = "PHBALAMount";
            this.colPHBALAMount.Name = "colPHBALAMount";
            this.colPHBALAMount.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHBALAMount.Width = 102;
            // 
            // colPHAmount
            // 
            this.colPHAmount.Caption = "PHAmount";
            this.colPHAmount.FieldName = "PHAmount";
            this.colPHAmount.Name = "colPHAmount";
            this.colPHAmount.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPHAmount.Width = 82;
            // 
            // colMaterialGroup
            // 
            this.colMaterialGroup.Caption = "Material Group";
            this.colMaterialGroup.FieldName = "MaterialGroup";
            this.colMaterialGroup.Name = "colMaterialGroup";
            this.colMaterialGroup.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colMaterialGroup.Width = 104;
            // 
            // BandFirstWO
            // 
            this.BandFirstWO.Caption = "1st WO\'s";
            this.BandFirstWO.Name = "BandFirstWO";
            this.BandFirstWO.Width = 166;
            // 
            // BandDeliveryDate
            // 
            this.BandDeliveryDate.Caption = "Delivery dd";
            this.BandDeliveryDate.Name = "BandDeliveryDate";
            this.BandDeliveryDate.Width = 142;
            // 
            // rigluOrder
            // 
            this.rigluOrder.AutoHeight = false;
            this.rigluOrder.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rigluOrder.Name = "rigluOrder";
            this.rigluOrder.NullText = "";
            this.rigluOrder.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit3});
            this.rigluOrder.View = this.gridView2;
            // 
            // repositoryItemMemoEdit3
            // 
            this.repositoryItemMemoEdit3.Name = "repositoryItemMemoEdit3";
            // 
            // gridView2
            // 
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gridColumn5,
            this.gridColumn6});
            this.gridView2.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsBehavior.AutoPopulateColumns = false;
            this.gridView2.OptionsBehavior.Editable = false;
            this.gridView2.OptionsCustomization.AllowFilter = false;
            this.gridView2.OptionsCustomization.AllowGroup = false;
            this.gridView2.OptionsCustomization.AllowSort = false;
            this.gridView2.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView2.OptionsView.ColumnAutoWidth = false;
            this.gridView2.OptionsView.RowAutoHeight = true;
            this.gridView2.OptionsView.ShowGroupPanel = false;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Code";
            this.gridColumn5.FieldName = "DataCode";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 0;
            this.gridColumn5.Width = 50;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Description";
            this.gridColumn6.ColumnEdit = this.repositoryItemMemoEdit3;
            this.gridColumn6.FieldName = "Description";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 1;
            this.gridColumn6.Width = 400;
            // 
            // ribeProject
            // 
            this.ribeProject.AutoHeight = false;
            this.ribeProject.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "Calc \"Ttl Left Item(s) by this Proj\"")});
            this.ribeProject.Name = "ribeProject";
            this.ribeProject.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeProject_ButtonClick);
            // 
            // bandLadDip
            // 
            this.bandLadDip.Caption = "Lab Dip Approval Status";
            this.bandLadDip.Name = "bandLadDip";
            this.bandLadDip.Width = 409;
            // 
            // rilueLadDip
            // 
            this.rilueLadDip.AutoHeight = false;
            this.rilueLadDip.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rilueLadDip.Name = "rilueLadDip";
            this.rilueLadDip.NullText = "";
            this.rilueLadDip.PopupWidth = 200;
            // 
            // rilueBulk
            // 
            this.rilueBulk.AutoHeight = false;
            this.rilueBulk.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rilueBulk.Name = "rilueBulk";
            this.rilueBulk.NullText = "";
            this.rilueBulk.PopupWidth = 200;
            // 
            // ricbOption
            // 
            this.ricbOption.AutoHeight = false;
            this.ricbOption.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbOption.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("A", 0, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("B", 1, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("C", 2, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("D", 3, -1)});
            this.ricbOption.Name = "ricbOption";
            this.ricbOption.SelectedIndexChanged += new System.EventHandler(this.ricbOption_SelectedIndexChanged);
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Lab Specification";
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 225;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Goods Inward";
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 60;
            // 
            // gridBand12
            // 
            this.gridBand12.Caption = "Stock In";
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.Width = 75;
            // 
            // riCheck
            // 
            this.riCheck.AutoHeight = false;
            this.riCheck.Name = "riCheck";
            this.riCheck.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // gridBand11
            // 
            this.gridBand11.Caption = "RC";
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Width = 65;
            // 
            // popupMenu1
            // 
            this.popupMenu1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintShip),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintPO),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnWOReport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWOReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWO),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnClone, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopySingle, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barAppvSeq),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnNotify),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPending, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyToClipboard),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItemActionLogGroup, true)});
            this.popupMenu1.Manager = this.objbarManager;
            this.popupMenu1.Name = "popupMenu1";
            // 
            // btnPrintShip
            // 
            this.btnPrintShip.Caption = "Shipment Detail";
            this.btnPrintShip.Id = 17;
            this.btnPrintShip.ImageIndex = 0;
            this.btnPrintShip.Name = "btnPrintShip";
            this.btnPrintShip.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrintShip_ItemClick);
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
            this.btnWOReport.Id = 22;
            this.btnWOReport.ImageIndex = 3;
            this.btnWOReport.Name = "btnWOReport";
            this.btnWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnWOReport_ItemClick);
            // 
            // btnRWOReport
            // 
            this.btnRWOReport.Caption = "POPC - RWO Review";
            this.btnRWOReport.Id = 23;
            this.btnRWOReport.ImageIndex = 3;
            this.btnRWOReport.Name = "btnRWOReport";
            this.btnRWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRWOReport_ItemClick);
            // 
            // btnRWO
            // 
            this.btnRWO.Caption = "Choose RWO No.";
            this.btnRWO.Id = 33;
            this.btnRWO.Name = "btnRWO";
            this.btnRWO.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnRWO_ItemClick);
            // 
            // btnClone
            // 
            this.btnClone.Caption = "Clone";
            this.btnClone.Id = 25;
            this.btnClone.ImageIndex = 1;
            this.btnClone.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCloneAsReplace),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCloneAsNew)});
            this.btnClone.Name = "btnClone";
            // 
            // btnCloneAsReplace
            // 
            this.btnCloneAsReplace.Caption = "Replace";
            this.btnCloneAsReplace.Id = 21;
            this.btnCloneAsReplace.ImageIndex = 4;
            this.btnCloneAsReplace.Name = "btnCloneAsReplace";
            this.btnCloneAsReplace.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCloneAsReplace_ItemClick);
            // 
            // btnCloneAsNew
            // 
            this.btnCloneAsNew.Caption = "As New Line";
            this.btnCloneAsNew.Id = 26;
            this.btnCloneAsNew.ImageIndex = 5;
            this.btnCloneAsNew.Name = "btnCloneAsNew";
            this.btnCloneAsNew.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCloneAsNew_ItemClick);
            // 
            // btnCopySingle
            // 
            this.btnCopySingle.Caption = "Copy";
            this.btnCopySingle.Id = 24;
            this.btnCopySingle.ImageIndex = 2;
            this.btnCopySingle.Name = "btnCopySingle";
            this.btnCopySingle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopySingle_ItemClick);
            // 
            // barAppvSeq
            // 
            this.barAppvSeq.Caption = "Copy -Lab Test: Appv. Seq.";
            this.barAppvSeq.Id = 45;
            this.barAppvSeq.ImageIndex = 2;
            this.barAppvSeq.Name = "barAppvSeq";
            this.barAppvSeq.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barAppvSeq_ItemClick);
            // 
            // btnNotify
            // 
            this.btnNotify.Caption = "POPC Notepad...";
            this.btnNotify.Id = 35;
            this.btnNotify.Name = "btnNotify";
            this.btnNotify.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnNotify_ItemClick);
            // 
            // btnPending
            // 
            this.btnPending.Caption = "Transfer to Level 4 (Liability)";
            this.btnPending.Id = 38;
            this.btnPending.Name = "btnPending";
            this.btnPending.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPending_ItemClick);
            // 
            // btnCopyToClipboard
            // 
            this.btnCopyToClipboard.Caption = "Copy To Clipboard";
            this.btnCopyToClipboard.Id = 39;
            this.btnCopyToClipboard.Name = "btnCopyToClipboard";
            this.btnCopyToClipboard.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopyToClipboard_ItemClick);
            // 
            // barButtonItemActionLogGroup
            // 
            this.barButtonItemActionLogGroup.Caption = "Add Action Log (Grpg)";
            this.barButtonItemActionLogGroup.Id = 44;
            this.barButtonItemActionLogGroup.Name = "barButtonItemActionLogGroup";
            this.barButtonItemActionLogGroup.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemActionLogGroup_ItemClick);
            // 
            // btnShipmentYes
            // 
            this.btnShipmentYes.Caption = "Yes";
            this.btnShipmentYes.Id = 18;
            this.btnShipmentYes.Name = "btnShipmentYes";
            // 
            // btnAddLots
            // 
            this.btnAddLots.Caption = "Add Shipments...";
            this.btnAddLots.Id = 16;
            this.btnAddLots.Name = "btnAddLots";
            // 
            // btnShip
            // 
            this.btnShip.Caption = "Shipment Detail";
            this.btnShip.Id = 19;
            this.btnShip.Name = "btnShip";
            this.btnShip.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnShip_ItemClick);
            // 
            // toolTipController1
            // 
            this.toolTipController1.Rounded = true;
            this.toolTipController1.ShowBeak = true;
            this.toolTipController1.GetActiveObjectInfo += new DevExpress.Utils.ToolTipControllerGetActiveObjectInfoEventHandler(this.toolTipController1_GetActiveObjectInfo);
            // 
            // imageList1
            // 
            this.imageList1.ImageStream = ((System.Windows.Forms.ImageListStreamer)(resources.GetObject("imageList1.ImageStream")));
            this.imageList1.TransparentColor = System.Drawing.Color.Transparent;
            this.imageList1.Images.SetKeyName(0, "Print.png");
            this.imageList1.Images.SetKeyName(1, "Clone.png");
            this.imageList1.Images.SetKeyName(2, "Copy.png");
            this.imageList1.Images.SetKeyName(3, "Preview.png");
            this.imageList1.Images.SetKeyName(4, "Replace.png");
            this.imageList1.Images.SetKeyName(5, "Save_New.png");
            // 
            // btnPOPCForm
            // 
            this.btnPOPCForm.Caption = "PO Summary";
            this.btnPOPCForm.Id = 27;
            this.btnPOPCForm.Name = "btnPOPCForm";
            this.btnPOPCForm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPOPCForm_ItemClick);
            // 
            // btnLevel1Awith
            // 
            this.btnLevel1Awith.Caption = "with Ttl Left Item(s) by Proj";
            this.btnLevel1Awith.Id = 28;
            this.btnLevel1Awith.Name = "btnLevel1Awith";
            this.btnLevel1Awith.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel1Awith_ItemClick);
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "Print List";
            this.barSubItem2.Id = 29;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPOPCForm),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplementSheet),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplement2, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel1Awithout),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel1aSupplementSheet),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevelB)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnSupplementSheet
            // 
            this.btnSupplementSheet.Caption = "PO Summary - Supplement Sheet";
            this.btnSupplementSheet.Id = 30;
            this.btnSupplementSheet.Name = "btnSupplementSheet";
            this.btnSupplementSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementSheet_ItemClick);
            // 
            // btnSupplement2
            // 
            this.btnSupplement2.Caption = "Level 1a - Supplement Sheet 2";
            this.btnSupplement2.Id = 34;
            this.btnSupplement2.Name = "btnSupplement2";
            this.btnSupplement2.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnSupplement2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplement2_ItemClick);
            // 
            // btnLevel1Awithout
            // 
            this.btnLevel1Awithout.Caption = "Level 1a";
            this.btnLevel1Awithout.Id = 37;
            this.btnLevel1Awithout.Name = "btnLevel1Awithout";
            this.btnLevel1Awithout.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel1Awithout_ItemClick);
            // 
            // btnLevel1aSupplementSheet
            // 
            this.btnLevel1aSupplementSheet.Caption = "Level 1a - Supplement Sheet";
            this.btnLevel1aSupplementSheet.Id = 32;
            this.btnLevel1aSupplementSheet.Name = "btnLevel1aSupplementSheet";
            this.btnLevel1aSupplementSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel1aSupplementSheet_ItemClick);
            // 
            // btnLevelB
            // 
            this.btnLevelB.Caption = "Level 1b";
            this.btnLevelB.Id = 31;
            this.btnLevelB.Name = "btnLevelB";
            this.btnLevelB.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevelB_ItemClick);
            // 
            // barSubItem3
            // 
            this.barSubItem3.Caption = "Level 1a";
            this.barSubItem3.Id = 36;
            this.barSubItem3.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLevel1Awith)});
            this.barSubItem3.Name = "barSubItem3";
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Test";
            this.barButtonItem1.Id = 42;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // barEditItem_Dashboard
            // 
            this.barEditItem_Dashboard.Caption = "Dashboard";
            this.barEditItem_Dashboard.Edit = this.repositoryItemComboBox2;
            this.barEditItem_Dashboard.Id = 43;
            this.barEditItem_Dashboard.Name = "barEditItem_Dashboard";
            this.barEditItem_Dashboard.EditValueChanged += new System.EventHandler(this.barEditItem_Dashboard_EditValueChanged);
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "",
            "Bulk Color Not yet Appv.",
            "Others Lab Test Not yet Appv."});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // POPCLevel1Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POPCLevel1Form";
            this.Size = new System.Drawing.Size(5000, 396);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.toolTipController1.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_BuyerCode)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CboBoxTransitMode1Show)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.CboBoxTransitMode2Show)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit_TradeMethod)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riNullDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riNullDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatch)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_BiColor)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultiRow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluBulk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeTransit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ActionLog)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_MaterialStandby)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbYN)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluOrder)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeProject)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueLadDip)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueBulk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbOption)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        public POPCLevel1Form()
        {
            InitializeComponent();

            POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader1);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader1);
            _sortby = POPCSortBy.ProjectItemCode;

            //_PONOs = new List<string>();
            //_Supps = new List<string>();
            //_SuppRefs = new List<string>();
            //_Custs = new List<string>();
            //_Colors = new List<string>();
            //_ColorShades = new List<string>();


            //Xsj20151009:Add Trade Method LookupEdit
            AssignDataToLookupEdit_TradeMethod();
            //---------------------------
        }

        //IEnumerable<POColorSizeDetail> _DataSource = null;
        //POPCDataContext _POPCDataContext = null;
        //public POPCLevel1Form(POPCDataContext ADataContext, IEnumerable<POColorSizeDetail> ADataSource)
        //    : this()
        //{
        //    _POPCDataContext = ADataContext;
        //    _DataSource = ADataSource;
        //}

        //PH.POPC.BO.POPCEnquiryCondition _Condition = null;
        //string _PONO;
        //int _OrderLine;
        //string _ColorCode;

        //public POPCLevel1Form(PH.POPC.BO.POPCEnquiryCondition ACondition, string APONO, int AOrderLine, string AColorCode)
        //    : this()
        //{
        //    _Condition = ACondition;
        //    _PONO = APONO;
        //    _OrderLine = AOrderLine;
        //    _ColorCode = AColorCode;
        //}

        PH.POPC.BO.POPCEnquiryCondition _Condition = null;
        List<POColorSizeDetailSummary> _SummarySelectedList;
        public POPCLevel1Form(PH.POPC.BO.POPCEnquiryCondition ACondition, List<POColorSizeDetailSummary> ASummarySelectedList)
            : this()
        {
            _Condition = ACondition;
            _SummarySelectedList = ASummarySelectedList;
        }



        //Xsj20151009:Add Trade Method LookupEdit
        private List<PH.Platform.Misc.BO.Misc_DataDictionary> tradeMethodList = new List<PH.Platform.Misc.BO.Misc_DataDictionary>();
        private void AssignDataToLookupEdit_TradeMethod()
        {
            if (tradeMethodList.Count == 0)
            {
                PH.Platform.Misc.BO.PHPlatformMiscDataContext dcont = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
                tradeMethodList = dcont.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TradeMethod").OrderBy(p => p.SortID).ToList();
                //tradeMethodList = dcont.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.TradeMethod").ToList();


            }
            this.repositoryItemGridLookUpEdit_TradeMethod.DataSource = tradeMethodList.Select(p => new { DataCode = p.DataCode, DataName = p.DataName }).ToList();
            //this.repositoryItemGridLookUpEdit_TradeMethod.DataSource = tradeMethodList.Select(p => new { DataCode = p.DataCode, DataName = p.DataNameCN }).ToList();

        }


        #region Platform

        PH.POPC.BO.POPCDataContext context;
        public override void DataBind()
        {
            base.DataBind();

            //this.AlwaysShowDesignLayout = true;

            //if (_POPCDataContext == null)
            //{
            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            //}
            //else
            //{
            //    context = _POPCDataContext;
            //}

            context.CommandTimeout = 1000;

            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POColorSizeDetail);

            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;
            this.bandedGridView1.OptionsBehavior.Editable = true;
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            //if (_DataSource == null)
            //{
            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.POPC.BO.POColorSizeDetail);
            param.WarnRecord = -1;
            this.StartEnquiry(param);
            //}
            //else
            //{
            //    this.BindingSource.DataSource = _DataSource;
            //}

            AssignDataToLookupEdit();

            PH.Platform.Misc.BO.PHPlatformMiscDataContext dcont = PH.Platform.BO.ContextBuilder.CreateContext<PH.Platform.Misc.BO.PHPlatformMiscDataContext>();
            var TransitModeItems = dcont.Misc_DataDictionaries.Where(p => p.DataType == "PH.BasicInfo.TransitMode").Select(dr => dr.DataName).Distinct().ToList();

            this.CboBoxTransitMode1Show.Items.AddRange(TransitModeItems);

            //由David修改 2022-05-05
            BasicInfoDataContext db = ContextBuilder.CreateContext<BasicInfoDataContext>();
            var TimeFrameIITransitModeList = db.TimeFrameIIs.Select(p => p.TransitMode).Distinct().ToList();
            this.CboBoxTransitMode2Show.Items.AddRange(TimeFrameIITransitModeList);


            if (_Condition != null)
            {
                EnquiryPOPC(_Condition);
            }

            //this.CboBoxTransitMode2Show.Items.AddRange(TransitModeItems);

            ////foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn item in this.bandedGridView1.Columns)
            ////{
            ////    item.OptionsColumn.AllowEdit = true;
            ////    item.OptionsColumn.ReadOnly = false;

            ////}
        }


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
            using (POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(1))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    _SummarySelectedList = null; //清掉Summary传过来的条件，让用户可以在Detail画面自己用条件查询，避开老板设置的，只打开选中行的恶心功能
                    EnquiryPOPC(frm.Condition);
                    //SaveBindingSource = null;
                }
            }
        }
        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {

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

                var cc = from c in context.POColorSizeDetails
                         where c.Company == condition.Company
                             //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                         && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
                         && (c.VersionFlag ?? false)
                         && c.PODetail.POHeader.POType == (int)POType.PO
                         && (c.PODetail.POHeader.Flag == null || c.PODetail.POHeader.Flag == "") //&& (!(c.Pending ?? false))
                         && (c.PODetail.Flag == null || c.PODetail.Flag == "")
                             //&& (string.IsNullOrEmpty(condition.Supplier) || c.PODetail.POHeader.Supplier == condition.Supplier)
                         && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.PODetail.POHeader.Supplier))
                         && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))

                         ////改為由PO Status判斷，不用SKU的Outstanding Qty判斷，因為有一些PO沒有收完貨，就Cancel或Completed了, Cancel狀態的不顯示出來
                             ////由David修改以下代碼 2020-09-17
                             //&& ((condition.POStatus == 0 && (c.PODetail.POHeader.Status == "0" || c.PODetail.POHeader.Status == "1")) //All
                             //   || (condition.POStatus == 1 && c.PODetail.POHeader.Status == "1")  //Outstanding
                             //   || (condition.POStatus == 2 && c.PODetail.POHeader.Status == "0")  //Completed
                             //   )

                          && (condition.POStatus == 0 //All
                             || (condition.POStatus == 1 && c.PHOutstandingQty > 0) //Outstanding
                             || (condition.POStatus == 2 && c.PHOutstandingQty <= 0) //Completed
                             )

                          //由David加入 2022-07-22
                          && (condition.MaterialStandby == "All"                                //All
                             || (condition.MaterialStandby == "N" && c.MaterialStandBy == "N")  //N
                             || (condition.MaterialStandby == "Y" && c.MaterialStandBy == "Y")  //Y
                             )
                             //&& (condition.MaterialStandby == "All"                                                                 //All
                             //   || (condition.MaterialStandby == "Blank" && (c.MaterialStandBy == null || c.MaterialStandBy == "")) //Blank
                             //   || (condition.MaterialStandby == "Y" && c.MaterialStandBy == "Y")                                   //Y
                             //   )


                          //Cancel的PO不显示出来，由David加入 2020-09-18
                          && (c.PODetail.POHeader.Status != "-1")


                             //&& (!condition.OrderClass.HasValue || c.PODetail.POHeader.OrderClass == condition.OrderClass)
                         && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.PODetail.POHeader.OrderClass))
                             //&& (string.IsNullOrEmpty(condition.EndCustCode) || c.PODetail.POHeader.EndCustCode == condition.EndCustCode)
                         && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.PODetail.POHeader.EndCustCode))
                         && (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.PODetail.POHeader.Dept))
                             //&& (string.IsNullOrEmpty(condition.Team) || c.PODetail.POHeader.Dept == condition.Team)
                         && (string.IsNullOrEmpty(condition.Factory) || c.PODetail.POHeader.Factory == condition.Factory)
                             //&& (string.IsNullOrEmpty(condition.SuppRef) || c.SupplierReference == condition.SuppRef)
                         && (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.SupplierReference))
                             //&& (string.IsNullOrEmpty(condition.ColorCode) || c.ColorCode == condition.ColorCode)
                         && (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.ColorCode))
                         && (!condition.Flowup || (c.FlowupFlag != null && c.FlowupFlag != ""))
                         && (string.IsNullOrEmpty(condition.Coordinator) || c.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                         && (condition.IssueDateFrom == DateTime.MinValue ||
                               ((c.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                            )
                         && (condition.DeliveryDateFrom == DateTime.MinValue ||
                               ((c.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                            )
                         && (condition.ExftyDateFrom == DateTime.MinValue ||
                               ((c.WOExftyDate) >= condition.ExftyDateFrom && (c.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                            )

                         && (string.IsNullOrEmpty(condition.MaterialGroup) || mats.Contains(c.SKU.Substring(0, Math.Min(3, c.SKU.Length))))//iqc
                         //&& (condition.PointDestFrom == DateTime.MinValue ||
                         //      (c.PODetail.ConfirmETADate.HasValue && (c.PODetail.ConfirmETADate.Value.AddDays(c.PODetail.POHeader.TransitFrame ?? 0)) >= condition.PointDestFrom
                         //         && (c.PODetail.ConfirmETADate.Value.AddDays(c.PODetail.POHeader.TransitFrame ?? 0)) < condition.PointDestTo.AddDays(1))
                         //   )//iqc

                         //orderby c.PONO, c.OrderLine, c.SKU
                         select c;

                ////由David加入以下条件 2022-05-18
                //if (_Condition != null)
                //{
                //    cc = cc.Where(p => p.PODetail.POHeader.PONO == _PONO && p.PODetail.OrderLine == _OrderLine && p.ColorCode == _ColorCode);
                //}

                //只显示Summary Layout中选择中行的明细数据, 由David加入 2022-07-04
                if (_SummarySelectedList != null)
                {
                    List<string> PONOList = _SummarySelectedList.Select(p => p.PONO).Distinct().ToList();
                    List<int> OrderLineList = _SummarySelectedList.Select(p => p.OrderLine).Distinct().ToList();
                    List<string> ColorCodeList = _SummarySelectedList.Select(p => p.ColorCode).Distinct().ToList();
                    cc = cc.Where(p => PONOList.Contains(p.PONO) && OrderLineList.Contains(p.OrderLine) && ColorCodeList.Contains(p.ColorCode));
                }
                cc = cc.OrderBy(p => p.PONO).ThenBy(p => p.OrderLine).ThenBy(p => p.SKU);

                List<POColorSizeDetail> AllDataList = cc.ToList();

                //由david修改 2022-06-15
                if (condition.PointDestFrom != DateTime.MinValue)
                {
                    AllDataList = AllDataList.Where(p =>
                        (p.RevDeliveryDate.HasValue ? p.RevDeliveryDate : p.PODeliveryDate).Value.AddDays((p.TimeFrame1 ?? 0) + (p.TimeFrame2 ?? 0)) <= condition.PointDestFrom).ToList();
                }


                AllDataList = AllDataList.Where(p =>
                    (condition.Level2LabDipRejStatus == false || (!string.IsNullOrEmpty(p.DipStatus) && !AppvAndNils.Contains(p.DipStatus.ToUpper()))) &&
                    (condition.Level2BulkColorRejStatus == false || (!string.IsNullOrEmpty(p.BulkStatus) && !AppvAndNils.Contains(p.BulkStatus.ToUpper()))) &&
                    (condition.Level2OtherLabTestRejStatus == false || (!string.IsNullOrEmpty(p.TestStatus) && !AppvAndNils.Contains(p.TestStatus.ToUpper())))).ToList();


                //由于计算WO FW Start Date和WO Ex-fty Date放在BO中太慢，所以改为在取数时直接计算出来，2022-06-06由David修改
                foreach (var obj in AllDataList)
                {
                    if (!obj.WOSeqNo.HasValue)
                    {
                        obj.WOSeqNo = 1;
                    }
                    obj.WOFWStartDate = (DataContext as POPCDataContext).fn_GetOurWOFWStartDate(obj.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                    obj.WOExftyDate = (DataContext as POPCDataContext).fn_GetOurWOExFtyDate(obj.PODetail.ProjectNo, (obj.WOSeqNo ?? 1));
                }

                this.BindingSource.DataSource = AllDataList;

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

        //protected override void ProcessGridView()
        //{
        //    base.ProcessGridView();
        //    this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
        //}
        private void bandedGridView1_CellMerge(object sender, DevExpress.XtraGrid.Views.Grid.CellMergeEventArgs e)
        {

            //PH.POPC.BO.POColorSizeDetail ms1 = this.bandedGridView1.GetRow(e.RowHandle1) as PH.POPC.BO.POColorSizeDetail;
            //PH.POPC.BO.POColorSizeDetail ms2 = this.bandedGridView1.GetRow(e.RowHandle2) as PH.POPC.BO.POColorSizeDetail;

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
            //    case "CheckFlag":
            //    case "POStatus":
            //    case "NumOfProject":
            //        e.Merge = (ms1.PONO == ms2.PONO);
            //        e.Handled = true;
            //        break;
            //    //detail
            //    case "ItemCode":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.ItemCode == ms2.ItemCode);
            //        e.Handled = true;
            //        break;
            //    case "ProjectNo":
            //        e.Merge = (ms1.PONO == ms2.PONO && ms1.ProjectNO == ms2.ProjectNO);
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
            //    //case "SizeDesc":
            //    //case "FitDesc":
            //    //case "PartialShipmentDesc":
            //    //case "POQty":

            //    //case "BulkSubmitSeq":
            //    //case "BulkReceiptDate":
            //    //case "BulkSubmitNo":
            //    //case "BulkCompletedDate":
            //    //case "BulkStatus":
            //    //case "BulkQty":
            //    //case "BulkDropDeadDate":

            //    //case "RCQty":
            //    //case "RCNO":
            //    //case "RCDate":
            //    //case "RCReplacement":
            //    //    //case "RevisedDeliveryDesc":
            //    //    //case "TransitModeHaveChangedDesc":
            //    //    e.Merge = (ms1.PONO == ms2.PONO && ms1.OrderLine == ms2.OrderLine && ms1.SKU == ms2.SKU);
            //    //    e.Handled = true;
            //    //    break;
            //    default:
            //        break;

            //}
        }

        private void bandedGridView1_RowCellStyle(object sender, DevExpress.XtraGrid.Views.Grid.RowCellStyleEventArgs e)
        {
            string fieldName = e.Column.FieldName;
            //string tag = e.Column.Tag == null ? "" : Convert.ToString(e.Column.Tag);

            if (fieldName == "DeliveryDiff")
            {
                object obj = bandedGridView1.GetRowCellValue(e.RowHandle, "DeliveryDiff");
                if (obj == null) return;

                int diff = Convert.ToInt32(obj);

                //e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
                if (diff < 0) e.Appearance.ForeColor = Color.Red;
                else if (diff == 0) e.Appearance.ForeColor = Color.Blue;
            }
            else if (fieldName == "RevDeliveryDate" || fieldName == "PODeliveryDate")
            {
                object POStatusObj = bandedGridView1.GetRowCellValue(e.RowHandle, "POStatus");

                if (POStatusObj == null || POStatusObj.ToString().ToUpper() == "WIP")
                {
                    object RevDeliveryDateObj = bandedGridView1.GetRowCellValue(e.RowHandle, "RevDeliveryDate");
                    object PODeliveryDateObj = bandedGridView1.GetRowCellValue(e.RowHandle, "PODeliveryDate");

                    DateTime? RevDeliveryDate = RevDeliveryDateObj == null ? (DateTime?)null : Convert.ToDateTime(RevDeliveryDateObj);
                    DateTime? PODeliveryDate = PODeliveryDateObj == null ? (DateTime?)null : Convert.ToDateTime(PODeliveryDateObj);

                    if (fieldName == "RevDeliveryDate" && RevDeliveryDate.HasValue && RevDeliveryDate.Value.Date <= DateTime.Today.Date)
                    {
                        e.Appearance.ForeColor = Color.Red;
                    }
                    else if (fieldName == "PODeliveryDate" && PODeliveryDate.HasValue && PODeliveryDate.Value.Date <= DateTime.Today.Date && !RevDeliveryDate.HasValue)
                    {
                        e.Appearance.ForeColor = Color.Red;
                    }
                }
            }
            else if (fieldName == "BulkDropDeadDate" || fieldName == "DropDeadDateDiffDay")
            {
                object POStatusObj = bandedGridView1.GetRowCellValue(e.RowHandle, "POStatus");
                object BulkStatusObj = bandedGridView1.GetRowCellValue(e.RowHandle, "BulkStatus");

                if (BulkStatusObj != null && AppvAndNils.Contains(BulkStatusObj.ToString().ToUpper()))
                {
                    return;
                }

                if (POStatusObj == null || POStatusObj.ToString().ToUpper() == "WIP")
                {
                    object BulkDropDeadDateObj = bandedGridView1.GetRowCellValue(e.RowHandle, "BulkDropDeadDate");
                    if (BulkDropDeadDateObj == null) return;
                    DateTime BulkDropDeadDate = Convert.ToDateTime(BulkDropDeadDateObj);
                    if (BulkDropDeadDate.Date <= DateTime.Today.Date)
                    {
                        e.Appearance.ForeColor = Color.Red;
                    }
                }
            }

            //else if (tag == "1")
            //{
            //    bool isIn = false;
            //    //e.Appearance.ForeColor = Color.Black;
            //    GridCell[] cells = bandedGridView1.GetSelectedCells();
            //    foreach (GridCell cell in cells)
            //    {
            //        if (cell.Column == e.Column)
            //        {
            //            isIn = true;
            //            break;
            //        }                    
            //    }
            //    if (isIn)
            //        e.Appearance.ForeColor = SystemColors.b;
            //    else
            //        e.Appearance.ForeColor = Color.FloralWhite;
            //}
        }
        private void bandedGridView1_RowStyle(object sender, RowStyleEventArgs e)
        {
            GridView View = sender as GridView;
            bool? pending = (bool?)View.GetRowCellValue(e.RowHandle, "Pending");

            e.Appearance.BackColor = (pending.HasValue) ? ((pending.Value) ? Color.SeaShell : Color.Yellow) : Color.Transparent;
            //e.Appearance.BackColor2 = Color.SeaShell;
        }
        private void bandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;

            //if (bandedGridView1.FocusedColumn.FieldName == "ReceiveDate" || bandedGridView1.FocusedColumn.FieldName == "Qty")
            //{
            //    bool bReadOnly = (currLot.StockInConfirmed ?? false) && !currLot.IsOutstanding;
            //    e.Cancel = bReadOnly;
            //}
        }
        private void objListGridControl_Load(object sender, EventArgs e)
        {
            //this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            //InitCustomSummary();
            //CalOddEvenRowFlag();

            colPONO.SummaryItem.SummaryType = SummaryItemType.Custom;
            colItemCode.SummaryItem.SummaryType = SummaryItemType.Custom;

            GridViewSort(); //排序一定要放在这里，让平台先加载Layout，再排序，否则layout会乱掉 David 2022-05-26
            BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);


            bandedGridView1.OptionsView.RowAutoHeight = true;
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

                        //由David加入以下两个栏位排序 2022-05-23
                        this.colPONO.SortOrder = ColumnSortOrder.Ascending;
                        this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;

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

                PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
                if (currLot == null) return;

                #region Copy Menu

                btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
                if (focusCol != null)
                {
                    #region Copy

                    if (focusCol == colCustStyleNo)
                        btnCopySingle.Caption = "Copy - End Cust Style";
                    else if (focusCol == colEndCustOrderNo)
                        btnCopySingle.Caption = "Copy - End Cust Order";
                    else if (focusCol == colGmtColorCode)
                        btnCopySingle.Caption = "Copy - End Cust Color";
                    else if (focusCol == colColorShade)
                        btnCopySingle.Caption = "Copy - Color Shade";
                    else if (focusCol == colRemark)
                        btnCopySingle.Caption = "Copy - Remark";
                    else if (focusCol == colBulkOption)
                        btnCopySingle.Caption = "Copy - Bulk Option";
                    else if (focusCol == colLadDipOption)
                        btnCopySingle.Caption = "Copy - Lab Dip Option";
                    //else if (focusCol == colOrderOption)
                    //    btnCopySingle.Caption = "Copy - Ord";
                    else if (focusCol == colRevDeliveryDate)
                        btnCopySingle.Caption = "Copy - Rev Del dd";
                    else if (focusCol == colClassCode)
                        btnCopySingle.Caption = "Copy - Class Code";
                    else if (focusCol == colRoundNo)
                        btnCopySingle.Caption = "Copy - RWO No.";
                    else if (focusCol == colBrandName)
                        btnCopySingle.Caption = "Copy - Brand Name";
                    else if (focusCol == colGmtColorName)
                        btnCopySingle.Caption = "Copy - Gmt Color Name";
                    else if (focusCol == colItemColorName)
                        btnCopySingle.Caption = "Copy - Item Color Name";
                    else if (focusCol == colSampleNewItem)
                        btnCopySingle.Caption = "Copy - New Item";
                    else if (focusCol == colClassCode)
                        btnCopySingle.Caption = "Copy - Class Code";
                    else if (focusCol == colFlowupFlag)
                        btnCopySingle.Caption = "Copy - Alert";

                    else if ((focusCol == colBulkReceiptDate)
                                            || (focusCol == colBulkSubmitNo)
                                            || (focusCol == colBulkCompletedDate)
                                            || (focusCol == colBulkStatus)
                                            || (focusCol == colBulkQty)
                                            || (focusCol == colBulkPHToCustDate)
                                            || (focusCol == colBulkPHStatus)
                                            || (focusCol == colBulkSuppToCustDate)
                                            || (focusCol == colBulkRemark)
                                            )
                        btnCopySingle.Caption = string.Format("Copy - Bulk Color: {0}", focusCol.Caption);
                    else if ((focusCol == colDipReceiptDate)
                        || (focusCol == colDipCompletedDate)
                        || (focusCol == colDipStatus)
                        || (focusCol == colDipPHToCustDate)
                        || (focusCol == colDipPHStatus)
                        || (focusCol == colDipSuppToCustDate)
                        || focusCol == colDipNo
                        || focusCol == colDipColoristComment
                        || focusCol == colDipRemark
                        )
                        btnCopySingle.Caption = string.Format("Copy - Lab Dip: {0}", focusCol.Caption);
                    else if ((focusCol == colSampleReceiptDate)
                        || (focusCol == colSampleApproval)
                        || (focusCol == colSampleAuditedby)
                        || (focusCol == colSampleCompletedDate)
                        || (focusCol == colSampleFollowby)
                        || (focusCol == colSampleStatus))
                        btnCopySingle.Caption = string.Format("Copy - Sample Approval: {0}", focusCol.Caption);
                    else if (focusCol == colColorStdReceiptDate
                        || focusCol == colColorStdSwatch3D
                        || focusCol == colColorStdSwatchCard
                        || focusCol == colColorStdSwatchColorNo
                        || focusCol == colColorStdPHCust
                        || focusCol == colDipRemark
                        || (focusCol == colColorStdToSuppDate)
                        )
                        btnCopySingle.Caption = string.Format("Copy - Color Standard: {0}", focusCol.Caption);
                    else if ((focusCol == colTestReceiptDate)
                        || (focusCol == colTestApproval)
                        || (focusCol == colTestCompletedDate)
                        || (focusCol == colTestStatus))
                        btnCopySingle.Caption = string.Format("Copy - Lab Test: {0}", focusCol.Caption);
                    else if (focusCol == colFollowUpBy) //由David 加入 2022-07-12
                        btnCopySingle.Caption = "Copy - Lab Dip: Follow up by";
                    else
                        btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    #endregion

                    #region Clone

                    if (focusCol.OwnerBand == bandBulk)
                    {
                        btnClone.Caption = "Clone - Bulk Color";
                    }
                    else if (focusCol.OwnerBand == bandLabDip || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandLabDip))
                    {
                        btnClone.Caption = "Clone - Lab Dip";
                    }
                    else if (focusCol.OwnerBand == bandSample)
                    {
                        btnClone.Caption = "Clone - Sample Approval";
                    }
                    else if (focusCol.OwnerBand == bandColorStandard || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandColorStandard))
                    {
                        btnClone.Caption = "Clone - Color Standard";
                    }
                    else if (focusCol.OwnerBand == bandTest)
                    {
                        btnClone.Caption = "Clone - Lab Test";
                    }
                    else
                        btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

                    if (bandedGridView1.SelectedRowsCount <= 1)
                    {
                        //btnClone.Caption = btnClone.Caption.Replace("Copy", "Modify");
                        btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    }
                    #endregion
                }
                else
                {
                    btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                }

                // add by shulin 2022-12-14
                if (bandedGridView1.SelectedRowsCount >= 1 && focusCol == colTestSeq)
                {
                    barAppvSeq.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                }
                else 
                {
                    barAppvSeq.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                }

                #endregion

                popupMenu1.ShowPopup(Control.MousePosition);
            }
        }

        #endregion

        #region Open Edit Form
        private void EditPOPC(string FieldName)
        {
            PH.POPC.BO.POColorSizeDetail p = (PH.POPC.BO.POColorSizeDetail)this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle);
            if (p == null) return;
            p.CurrentDataContext = this.DataContext;

            PH.POPC.UI.POInfo poinfo = new POInfo();
            poinfo.POPCPage = this.TabControls.SelectedTabPage;
            poinfo.POPCView = this.BindingSource;
            poinfo.Pur = p;
            poinfo.Grid = this.objListGridControl;
            poinfo.GridView = this.bandedGridView1;


            //this.objListGridControl.ge
            //if (p == null) return;
            switch (FieldName)
            {
                //case "LocationOfSuppFactory":
                //case "ClassCode":
                //case "EndCustCode":
                //    CreateProgramForm(typeof(PH.POPC.UI.NewPO.POHeaderListForm), p.PONO + "-Header", true, new object[] { poinfo }, null);
                //    break;

                //case "OpenToProject":
                //case "WorkOrderNo":
                //    CreateProgramForm(typeof(PH.POPC.UI.NewPO.PODetailListForm), p.PONO + "-Detail", true, new object[] { poinfo }, null);
                //    break;
                //case "LC":
                //case "CustStyleNo":
                //case "CustOrderNo":
                //case "ColorShade":
                //case "Remark":
                //case "GarmentColor":
                //    CreateProgramForm(typeof(PH.POPC.UI.NewPO.POColorSizeDetailListForm), p.PONO + "-SKU", true, new object[] { poinfo }, null);
                //    break;

                //case "Con_Recount":
                //case "Con_ConfirmDate":
                //    CreateProgramForm(typeof(PH.POPC.UI.POConfirmListForm), p.PONO + "-POConfirm", true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                //    break;

                case "BulkSubmitSeq":
                case "BulkReceiptDate":
                case "BulkSubmitNo":
                case "BulkCompletedDate":
                case "BulkStatus":
                case "BulkQty":
                case "BulkDropDeadDate":
                case "BulkPHToCustDate":
                case "BulkPHStatus":
                case "BulkSuppToCustDate":
                    if (string.IsNullOrEmpty(p.BulkOption))
                    {
                        MessageBox.Show("Please select B/S Option at first.");
                        return;
                    }
                    CreateProgramForm(typeof(PH.POPC.UI.POSKUBulkSubmissionListForm), p.PONO + "-Bulk", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
                    break;

                case "NewItem":
                case "SampleTtlLeftItem":
                case "SampleFollowby":
                case "SampleApproval":
                case "SampleAuditedby":
                case "SampleSeq":
                case "SampleReceiptDate":
                case "SampleCompletedDate":
                case "SampleStatus":
                    CreateProgramForm(typeof(PH.POPC.UI.POSKUSampleListForm), p.PONO + "-Sample", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
                    break;

                case "ColorStdSwatchCard":
                case "ColorStdSwatchColorNo":
                case "ColorStdPHCust":
                case "ColorStdToSuppDate":
                case "ColorStdSeq":
                case "ColorStdReceiptDate":
                    CreateProgramForm(typeof(PH.POPC.UI.POSKUColorStdListForm), p.PONO + "-ColorStd", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
                    break;

                case "DipNo":
                case "DipColoristComment":
                case "DipRemark":
                case "DipSeq":
                case "DipReceiptDate":
                case "DipCompletedDate":
                case "DipStatus":
                case "DipDropDeadDate":
                case "DipPHToCustDate":
                case "DipPHStatus":
                case "DipSuppToCustDate":
                    if (string.IsNullOrEmpty(p.LadDipOption))
                    {
                        MessageBox.Show("Please select L/D Option at first.");
                        return;
                    }
                    CreateProgramForm(typeof(PH.POPC.UI.POSKUDipSubmitListForm), p.PONO + "-Dip", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
                    break;

                case "TestSeq":
                case "TestReceiptDate":
                case "TestCompletedDate":
                case "TestStatus":
                case "TestApproval":

                    CreateProgramForm(typeof(PH.POPC.UI.POSKUTestStatusListForm), p.PONO + "-Test", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
                    break;


                //case "Qty1":
                //case "Percent1":
                //case "FtyDate1":

                //case "Qty2":
                //case "Percent2":
                //case "FtyDate2":

                //case "Qty3":
                //case "Percent3":
                //case "FtyDate3":

                //case "Qty4":
                //case "Percent4":
                //case "FtyDate4":

                //case "Title1":
                //case "Title2":
                //case "Title3":
                //case "Title4":

                //    CreateProgramForm(typeof(PH.POPC.UI.POSKULotListForm), p.PONO, true, new object[] { p, this.TabControls.SelectedTabPage }, null);
                //    break;


                ////Xsj20150912:Add for change TradeMethod
                //case "TradeMethod":
                //    CreateProgramForm(typeof(PH.POPC.UI.POTradeMethodListForm), p.PONO + "-Trade Method", true, new object[] { p, this.bandedGridView1, this.TabControls.SelectedTabPage, poinfo }, null);


                //    break;
            }

        }

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            EditPOPC(this.bandedGridView1.FocusedColumn.FieldName);

        }
        #endregion

        #region Print - PO Form & Shipment Detail

        private void btnPrintShip_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ShowShipmentReport();
        }
        private void btnShip_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ShowShipmentReport();
        }
        private void ShowShipmentReport()
        {
            PH.POPC.BO.POColorSizeDetail pur = this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle) as PH.POPC.BO.POColorSizeDetail;
            if (pur == null) return;
            PH.POPC.BackEnd.ReportHelper reportHelper = new PH.POPC.BackEnd.ReportHelper();
            DataTable dt = POPCReport.GetShipmentDetail(pur);
            DevExpress.XtraReports.UI.XtraReport report = reportHelper.DoShipmentDetailPrint(dt);
            report.ShowPreviewDialog();
        }

        private void btnPrintPO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ShowPOForm();
        }

        private void ShowPOForm()
        {
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;

            //Report.POFormatForm frm = new PH.POPC.UI.Report.POFormatForm(currLot.Company, currLot.PONO);
            Report.POFormatForm frm = new PH.POPC.UI.Report.POFormatForm(currLot.Company, currLot.PODetail.POHeader);
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
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.OneA);
        }
        private void btnSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneB);
        }
        private void btnLevel1aSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneA);

        }
        private void btnLevel1Awith_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //SetReportTtlLeftItem(true);
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.OneA);
        }
        private void btnLevel1Awithout_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //SetReportTtlLeftItem(false);
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.OneA);
        }
        private void btnLevelB_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.OneB);
        }
        private void btnSupplement2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneB);
        }
        #endregion

        #region Clone & Copy

        //clone
        private void btnCloneAsReplace_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CloneData(false);//replace
        }
        private void btnCloneAsNew_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CloneData(true);//as new
        }
        private void CloneData(bool isNew)
        {
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;

            //string caption = "Copy Data";
            //if (bandedGridView1.SelectedRowsCount <= 1)
            //    caption = "Modify Data";

            string hint = this.bandedGridView1.FocusedColumn.Caption;
            //string defalutValue = "";

            //DevExpress.XtraGrid.Columns.GridColumn focusCol = this.bandedGridView1.FocusedColumn;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (focusCol.OwnerBand == bandLadDip || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandLabDip))
            {
                CopyLadDip(currLot, isNew);
            }
            else if (focusCol.OwnerBand == bandBulk || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandBulk))
            {
                CopyBulk(currLot, isNew);
            }
            else if (focusCol.OwnerBand == bandSample || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandSample))
            {
                CopySample(currLot, isNew);
            }
            else if (focusCol.OwnerBand == bandColorStandard || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandColorStandard))
            {
                CopyColorStandard(currLot, isNew);
            }
            else if (focusCol.OwnerBand == bandTest || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandTest))
            {
                CopyTest(currLot, isNew);
            }

        }

        #region Clone action ,  relace or new

        private void CopyLadDip(POColorSizeDetail d, bool isNew)
        {
            POSKUOperate opT = d.LastDipSubmit;
            if (opT == null) return;

            if (string.IsNullOrEmpty(d.LadDipOption))
            {
                MessageBox.Show("Please select L/D Option at first?", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show(string.Format("Do you want to Clone Lab Dip as {0}?", isNew ? "New line" : "Replace"), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Clone data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];//selected handle
                    if (j >= 0)
                    {
                        POColorSizeDetail currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.Company == currLot.Company && d.PONO == currLot.PONO && d.Version == currLot.Version && d.AmendmentNo == currLot.AmendmentNo
                            && d.OrderLine == currLot.OrderLine && d.SKU == currLot.SKU)
                            continue;

                        currLot.LadDipOption = d.LadDipOption;

                        #region clone action

                        POSKUOperate op = currLot.LastDipSubmit;

                        if (op == null || isNew)
                        {
                            op = new POSKUOperate();
                            op.POColorSizeDetail = currLot;
                            op.CurrentDataContext = this.DataContext;

                            op.Company = currLot.Company;
                            op.PONO = currLot.PONO;
                            op.Version = currLot.Version;
                            op.AmendmentNo = currLot.AmendmentNo;
                            op.OrderLine = currLot.OrderLine;
                            op.SKU = currLot.SKU;
                            op.HandleType = PH.POPC.BO.Common.DipSubmit;
                            op.HandleNo = (currLot.DipSeq ?? 0) + 1;
                            currLot.POSKUOperates.Add(op);
                        }

                        op.Remark = opT.Remark;
                        op.OperateDate = opT.OperateDate;
                        op.ReceiveDate = opT.ReceiveDate;
                        op.ReceiveBulkSampleDate = opT.ReceiveBulkSampleDate;
                        op.Status = opT.Status;
                        op.SubmitNo = opT.SubmitNo;
                        op.Qty = opT.Qty;
                        op.VersionFlag = opT.VersionFlag;
                        op.Flag = opT.Flag;
                        //op.NewItem = opT.NewItem;
                        //op.DropDeadDate=opT.DropDeadDate;
                        op.PHToCustDate = opT.PHToCustDate;
                        op.SuppToCustDate = opT.SuppToCustDate;
                        op.CustOperateDate = opT.CustOperateDate;
                        op.CustStatus = opT.CustStatus;


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
        private void CopyBulk(POColorSizeDetail d, bool isNew)
        {
            POSKUOperate opT = d.LastBulkSubmission;
            if (opT == null) return;

            if (string.IsNullOrEmpty(d.BulkOption))
            {
                MessageBox.Show("Please select B/S Option at first?", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            if (MessageBox.Show(string.Format("Do you want to Clone Bulk color as {0}?", isNew ? "New line" : "Replace"), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Clone data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];
                    if (j >= 0)
                    {
                        POColorSizeDetail currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.Company == currLot.Company && d.PONO == currLot.PONO && d.Version == currLot.Version && d.AmendmentNo == currLot.AmendmentNo
                            && d.OrderLine == currLot.OrderLine && d.SKU == currLot.SKU)
                            continue;

                        #region Copy action

                        currLot.BulkOption = d.BulkOption;

                        POSKUOperate op = currLot.LastBulkSubmission;
                        if (op == null || isNew)
                        {
                            op = new POSKUOperate();
                            op.POColorSizeDetail = currLot;
                            op.CurrentDataContext = this.DataContext;

                            op.Company = currLot.Company;
                            op.PONO = currLot.PONO;
                            op.Version = currLot.Version;
                            op.AmendmentNo = currLot.AmendmentNo;
                            op.OrderLine = currLot.OrderLine;
                            op.SKU = currLot.SKU;
                            op.HandleType = PH.POPC.BO.Common.BulkSubmission;
                            op.HandleNo = (currLot.BulkSubmitSeq ?? 0) + 1;
                            currLot.POSKUOperates.Add(op);
                        }
                        op.Remark = opT.Remark;
                        op.OperateDate = opT.OperateDate;
                        op.ReceiveDate = opT.ReceiveDate;
                        op.ReceiveBulkSampleDate = opT.ReceiveBulkSampleDate;
                        op.Status = opT.Status;
                        op.SubmitNo = opT.SubmitNo;
                        //op.Qty = opT.Qty;
                        op.VersionFlag = opT.VersionFlag;
                        op.Flag = opT.Flag;
                        //op.NewItem = opT.NewItem;
                        //op.DropDeadDate = opT.DropDeadDate;
                        op.PHToCustDate = opT.PHToCustDate;
                        op.SuppToCustDate = opT.SuppToCustDate;
                        op.CustOperateDate = opT.CustOperateDate;
                        op.CustStatus = opT.CustStatus;


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
        private void CopySample(POColorSizeDetail d, bool isNew)
        {
            POSKUOperate opT = d.LastSampleApproval;
            if (opT == null) return;

            if (MessageBox.Show(string.Format("Do you want to Clone Sample Approval as {0}?", isNew ? "New line" : "Replace"), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Clone data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];
                    if (j >= 0)
                    {
                        POColorSizeDetail currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.Company == currLot.Company && d.PONO == currLot.PONO && d.Version == currLot.Version && d.AmendmentNo == currLot.AmendmentNo
                            && d.OrderLine == currLot.OrderLine && d.SKU == currLot.SKU)
                            continue;

                        #region Copy action

                        POSKUOperate op = currLot.LastSampleApproval;
                        if (op == null || isNew)
                        {
                            op = new POSKUOperate();
                            op.POColorSizeDetail = currLot;
                            op.CurrentDataContext = this.DataContext;

                            op.Company = currLot.Company;
                            op.PONO = currLot.PONO;
                            op.Version = currLot.Version;
                            op.AmendmentNo = currLot.AmendmentNo;
                            op.OrderLine = currLot.OrderLine;
                            op.SKU = currLot.SKU;
                            op.HandleType = PH.POPC.BO.Common.SampleApproval;
                            op.HandleNo = (currLot.SampleSeq ?? 0) + 1;
                            currLot.POSKUOperates.Add(op);
                        }
                        op.Remark = opT.Remark;
                        op.OperateDate = opT.OperateDate;
                        op.ReceiveDate = opT.ReceiveDate;
                        op.ReceiveBulkSampleDate = opT.ReceiveBulkSampleDate;
                        op.Status = opT.Status;
                        op.SubmitNo = opT.SubmitNo;
                        op.Qty = opT.Qty;
                        op.VersionFlag = opT.VersionFlag;
                        op.Flag = opT.Flag;
                        //op.NewItem = opT.NewItem;
                        //op.DropDeadDate = opT.DropDeadDate;
                        op.PHToCustDate = opT.PHToCustDate;
                        op.SuppToCustDate = opT.SuppToCustDate;
                        op.CustOperateDate = opT.CustOperateDate;
                        op.CustStatus = opT.CustStatus;


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
        private void CopyColorStandard(POColorSizeDetail d, bool isNew)
        {
            POSKUOperate opT = d.LastColorStd;
            if (opT == null) return;

            if (MessageBox.Show(string.Format("Do you want to Clone Color Standard as {0}?", isNew ? "New line" : "Replace"), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Clone data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];
                    if (j >= 0)
                    {
                        POColorSizeDetail currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.Company == currLot.Company && d.PONO == currLot.PONO && d.Version == currLot.Version && d.AmendmentNo == currLot.AmendmentNo
                            && d.OrderLine == currLot.OrderLine && d.SKU == currLot.SKU)
                            continue;

                        #region Copy action

                        POSKUOperate op = currLot.LastColorStd;
                        if (op == null || isNew)
                        {
                            op = new POSKUOperate();
                            op.POColorSizeDetail = currLot;
                            op.CurrentDataContext = this.DataContext;

                            op.Company = currLot.Company;
                            op.PONO = currLot.PONO;
                            op.Version = currLot.Version;
                            op.AmendmentNo = currLot.AmendmentNo;
                            op.OrderLine = currLot.OrderLine;
                            op.SKU = currLot.SKU;
                            op.HandleType = PH.POPC.BO.Common.ColorStd;
                            op.HandleNo = (currLot.ColorStdSeq ?? 0) + 1;
                            currLot.POSKUOperates.Add(op);
                        }
                        op.Remark = opT.Remark;
                        op.OperateDate = opT.OperateDate;
                        op.ReceiveDate = opT.ReceiveDate;
                        op.ReceiveBulkSampleDate = opT.ReceiveBulkSampleDate;
                        op.Status = opT.Status;
                        op.SubmitNo = opT.SubmitNo;
                        op.Qty = opT.Qty;
                        op.VersionFlag = opT.VersionFlag;
                        op.Flag = opT.Flag;
                        //op.NewItem = opT.NewItem;
                        //op.DropDeadDate = opT.DropDeadDate;
                        op.PHToCustDate = opT.PHToCustDate;
                        op.SuppToCustDate = opT.SuppToCustDate;
                        op.CustOperateDate = opT.CustOperateDate;
                        op.CustStatus = opT.CustStatus;


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
        private void CopyTest(POColorSizeDetail d, bool isNew)
        {
            POSKUOperate opT = d.LastTestStatus;
            if (opT == null) return;

            if (MessageBox.Show(string.Format("Do you want to Clone Lab Test as {0}?", isNew ? "New line" : "Replace"), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Clone data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];
                    if (j >= 0)
                    {
                        POColorSizeDetail currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.Company == currLot.Company && d.PONO == currLot.PONO && d.Version == currLot.Version && d.AmendmentNo == currLot.AmendmentNo
                            && d.OrderLine == currLot.OrderLine && d.SKU == currLot.SKU)
                            continue;

                        #region Copy action

                        POSKUOperate op = currLot.LastTestStatus;
                        if (op == null || isNew)
                        {
                            op = new POSKUOperate();
                            op.POColorSizeDetail = currLot;
                            op.CurrentDataContext = this.DataContext;

                            op.Company = currLot.Company;
                            op.PONO = currLot.PONO;
                            op.Version = currLot.Version;
                            op.AmendmentNo = currLot.AmendmentNo;
                            op.OrderLine = currLot.OrderLine;
                            op.SKU = currLot.SKU;
                            op.HandleType = PH.POPC.BO.Common.TestStatus;
                            op.HandleNo = (currLot.TestSeq ?? 0) + 1;
                            currLot.POSKUOperates.Add(op);
                        }
                        op.Remark = opT.Remark;
                        op.OperateDate = opT.OperateDate;
                        op.ReceiveDate = opT.ReceiveDate;
                        op.ReceiveBulkSampleDate = opT.ReceiveBulkSampleDate;
                        op.Status = opT.Status;
                        op.SubmitNo = opT.SubmitNo;
                        op.Qty = opT.Qty;
                        op.VersionFlag = opT.VersionFlag;
                        op.Flag = opT.Flag;
                        //op.NewItem = opT.NewItem;
                        //op.DropDeadDate = opT.DropDeadDate;
                        op.PHToCustDate = opT.PHToCustDate;
                        op.SuppToCustDate = opT.SuppToCustDate;
                        op.CustOperateDate = opT.CustOperateDate;
                        op.CustStatus = opT.CustStatus;


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

        #region x/x Option

        // repear--Default value
        private void ricbOption_SelectedIndexChanged(object sender, EventArgs e)
        {
            //LadDipChanged();
        }
        private void rilueLadDip_EditValueChanged(object sender, EventArgs e)
        {
            //LadDipChanged();
        }

        private void rigluLadDip_EditValueChanged(object sender, EventArgs e)
        {
            if (this.bandedGridView1.PostEditor())
            {
                this.bandedGridView1.UpdateCurrentRow();
            }
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;

            LadDipChanged(currLot);
        }
        private void LadDipChanged(PH.POPC.BO.POColorSizeDetail currLot)
        {
            //string s = ((ImageComboBoxEdit)sender).Text;//d).Repeat
            string s = currLot.LadDipOption;
            if (s != "D") return;
            if (currLot.LastDipSubmit != null) return;

            //supp code , end cust code , supp item ref. , our item coloer code, supp item col shade ,status,time frame
            //this.CreateWaitDialog("Flow data...", "Please waiting");
            try
            {
                var aa = from a in context.POSKUOperates
                         where a.Company == currLot.Company && (a.POColorSizeDetail.PODetail.POHeader.VersionFlag ?? false)
                         && a.POColorSizeDetail.PODetail.POHeader.Supplier == currLot.Supplier
                         && a.POColorSizeDetail.PODetail.POHeader.EndCustCode == currLot.EndCustCode
                         && a.POColorSizeDetail.ItemCode == currLot.ItemCode
                             //&& a.POColorSizeDetail.SupplierReference == currLot.SupplierReference
                         && a.POColorSizeDetail.ColorCode == currLot.ColorCode
                         && a.POColorSizeDetail.ColorShade == currLot.ColorShade
                         && a.HandleType == PH.POPC.BO.Common.DipSubmit
                         && (
                              ((a.POColorSizeDetail.LadDipOption == "B" || a.POColorSizeDetail.LadDipOption == "C") && a.CustStatus == "App.")
                              || a.Status == "App."
                             )
                         orderby a.OperateDate descending
                         select a;
                POSKUOperate opT = aa.FirstOrDefault<POSKUOperate>();
                if (opT == null)
                {
                    //ReleaseWaitDialog();
                    //MessageBox.Show("No Lab Dip to flow!");
                    return;
                }

                #region Copy
                //d:
                POSKUOperate op = new POSKUOperate();
                op.POColorSizeDetail = currLot;
                op.CurrentDataContext = this.DataContext;

                op.Company = currLot.Company;
                op.PONO = currLot.PONO;
                op.Version = currLot.Version;
                op.AmendmentNo = currLot.AmendmentNo;
                op.OrderLine = currLot.OrderLine;
                op.SKU = currLot.SKU;
                op.HandleType = PH.POPC.BO.Common.DipSubmit;
                op.HandleNo = (currLot.DipSeq ?? 0) + 1;
                currLot.POSKUOperates.Add(op);

                op.Remark = opT.Remark;
                op.OperateDate = opT.POColorSizeDetail.LastDipSubmit.DipCompletedDate;// opT.OperateDate;
                op.ReceiveDate = opT.ReceiveDate;
                //op.ReceiveBulkSampleDate = opT.ReceiveBulkSampleDate;
                op.Status = "App.";// opT.Status;
                op.SubmitNo = opT.SubmitNo;
                //op.Qty = opT.Qty;
                op.VersionFlag = opT.VersionFlag;
                //op.Flag = opT.Flag;
                //op.DropDeadDate=opT.DropDeadDate;
                //op.PHToCustDate = opT.PHToCustDate;
                //op.SuppToCustDate = opT.SuppToCustDate;
                //op.CustOperateDate = opT.CustOperateDate;
                //op.CustStatus = opT.CustStatus;

                #endregion

                this.SaveData();
            }
            finally
            {
                //ReleaseWaitDialog();
            }

        }


        private void BulkSSChanged()
        {
            if (this.bandedGridView1.PostEditor())
            {
                this.bandedGridView1.UpdateCurrentRow();
            }
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null || currLot.LastBulkSubmission == null) return;

            string s = currLot.BulkOption;
            switch (s)
            {
                case "C":
                case "D":
                    currLot.LastBulkSubmission.ReceiveDate = null;
                    break;
                default:
                    break;
            }
        }
        #endregion

        #region Copy

        //Copy Single column
        private void btnCopySingle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CopySingleColumnData();
        }
        private void CopySingleColumnData()
        {
            int currHandle = bandedGridView1.FocusedRowHandle;

            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;

            PH.POPC.BO.POColorSizeDetail currLot1 = currLot;

            string caption = "Copy Data";
            if (bandedGridView1.SelectedRowsCount <= 1)
                caption = "Modify Data";

            string hint = this.bandedGridView1.FocusedColumn.Caption;
            object defalutValue = "";

            //DevExpress.XtraGrid.Columns.GridColumn focusCol = this.bandedGridView1.FocusedColumn;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;

            bool isColorShade = false;
            TypeCode tc = TypeCode.String;


            #region 判斷當前選中的字段

            #region normal

            if (focusCol == colCustStyleNo)
                defalutValue = currLot.EndCustStyleNo;
            else if (focusCol == colEndCustOrderNo)
                defalutValue = currLot.EndCustOrderNo;
            else if (focusCol == colGmtColorCode)
                defalutValue = currLot.GarmentColor;
            else if (focusCol == colColorShade)
            {
                defalutValue = currLot.ColorShade;
                isColorShade = true;
            }
            else if (focusCol == colRemark)
                defalutValue = currLot.Remark;
            else if (focusCol == colBulkOption)
                defalutValue = currLot.BulkOption;
            else if (focusCol == colLadDipOption)
                defalutValue = currLot.LadDipOption;
            //else if (focusCol == colOrderOption)
            //    defalutValue = currLot.OrderOption;
            else if (focusCol == colRevDeliveryDate)
            {
                defalutValue = currLot.RevDeliveryDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colClassCode)
                defalutValue = currLot.ClassCode;
            else if (focusCol == colRoundNo)
                defalutValue = currLot.RoundNo;

            else if (focusCol == colBrandName)
                defalutValue = currLot.BrandName;
            else if (focusCol == colGmtColorName)
                defalutValue = currLot.GmtColorName;
            else if (focusCol == colItemColorName)
                defalutValue = currLot.ItemColorName;
            else if (focusCol == colClassCode)
                defalutValue = currLot.ClassCode;
            else if (focusCol == colFlowupFlag)
                defalutValue = currLot.FlowupFlag;

            #endregion

            #region sample

            else if (focusCol == colSampleApproval)
            {
                defalutValue = currLot.SampleApproval;
                tc = TypeCode.Boolean;
            }
            else if (focusCol == colSampleNewItem)
            {
                defalutValue = currLot.SampleNewItem;
                tc = TypeCode.Boolean;
            }
            else if (focusCol == colSampleReceiptDate)
            {
                defalutValue = currLot.SampleReceiptDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colSampleCompletedDate)
            {
                defalutValue = currLot.SampleCompletedDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colSampleStatus)
                defalutValue = currLot.SampleStatus;
            else if (focusCol == colSampleFollowby)
                defalutValue = currLot.SampleFollowby;
            else if (focusCol == colSampleAuditedby)
                defalutValue = currLot.SampleAuditedby;
            #endregion

            #region color standard

            else if (focusCol == colColorStdReceiptDate)
            {
                defalutValue = currLot.ColorStdReceiptDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colColorStdToSuppDate)
            {
                defalutValue = currLot.ColorStdToSuppDate;
                tc = TypeCode.DateTime;
            }
            //else if (focusCol == colColorStdSwatch3D)
            //    defalutValue = currLot.ColorStdSwatch3D;
            else if (focusCol == colColorStdSwatchCard)
                defalutValue = currLot.ColorStdSwatchCard;
            else if (focusCol == colColorStdSwatchColorNo)
                defalutValue = currLot.ColorStdSwatchColorNo;
            else if (focusCol == colColorStdPHCust)
            {
                defalutValue = currLot.ColorStdPHCust;
                tc = TypeCode.Boolean;
            }

            #endregion

            #region Lab dip

            else if (focusCol == colDipReceiptDate)
            {
                defalutValue = currLot.DipReceiptDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colDipCompletedDate)
            {
                defalutValue = currLot.DipCompletedDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colDipStatus)
                defalutValue = currLot.DipStatus;
            else if (focusCol == colDipPHToCustDate)
            {
                defalutValue = currLot.DipPHToCustDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colDipPHStatus)
            {
                defalutValue = currLot.DipPHStatus;
            }
            else if (focusCol == colDipSuppToCustDate)
            {
                defalutValue = currLot.DipSuppToCustDate;
                tc = TypeCode.DateTime;
            }

            else if (focusCol == colDipNo)
            {
                defalutValue = currLot.DipNo;
            }
            else if (focusCol == colDipColoristComment)
            {
                defalutValue = currLot.DipColoristComment;
            }
            else if (focusCol == colFollowUpBy) //由David增加 2022-07-12
            {
                defalutValue = currLot.FollowUpBy;
            }
            else if (focusCol == colDipRemark)
            {
                defalutValue = currLot.DipCustComment;
            }

            #endregion

            #region bulk

            else if (focusCol == colBulkReceiptDate)
            {
                defalutValue = currLot.BulkReceiptDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colBulkSubmitNo)
                defalutValue = currLot.BulkSubmitNo;
            else if (focusCol == colBulkCompletedDate)
            {
                defalutValue = currLot.BulkCompletedDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colBulkStatus)
                defalutValue = currLot.BulkStatus;
            else if (focusCol == colBulkQty)
            {
                defalutValue = currLot.BulkQty;
                tc = TypeCode.Double;
            }
            else if (focusCol == colBulkPHToCustDate)
            {
                defalutValue = currLot.BulkPHToCustDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colBulkPHStatus)
            {
                defalutValue = currLot.BulkPHStatus;
            }
            else if (focusCol == colBulkSuppToCustDate)
            {
                defalutValue = currLot.BulkSuppToCustDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colBulkRemark)
                defalutValue = currLot.BulkRemark;
            #endregion

            #region test

            else if (focusCol == colTestApproval)
            {
                defalutValue = currLot.TestApproval;
                tc = TypeCode.Boolean;
            }
            else if (focusCol == colTestReceiptDate)
            {
                defalutValue = currLot.TestReceiptDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colTestCompletedDate)
            {
                defalutValue = currLot.TestCompletedDate;
                tc = TypeCode.DateTime;
            }
            else if (focusCol == colTestStatus)
                defalutValue = currLot.TestStatus;

            /********add by shulin 2022-12-10**/
            else if (focusCol == colTestSeq)
            {
                defalutValue = currLot.TestSeq;
                tc = TypeCode.String;
            }
            /*************************/

            #endregion

            #endregion

            #region InputBox

            if (InputBox.Show(focusCol.FieldName, caption, hint, currLot, isColorShade, tc, ref defalutValue))
            {
                DateTime? dt = null;
                string svalue = "";
                double? d = null;
                bool? b = false;

                if (tc == TypeCode.DateTime)
                {
                    if (defalutValue != null)
                        dt = Convert.ToDateTime(defalutValue);
                }
                else if (tc == TypeCode.Double)
                    d = Convert.ToDouble(defalutValue);
                else if (tc == TypeCode.Boolean)
                {
                    if (!string.IsNullOrEmpty(Convert.ToString(defalutValue)))
                        b = Convert.ToString(defalutValue) == "Y" || Convert.ToString(defalutValue) == "Cust";
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

                            currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                            if (currLot == null) continue;
                            POSKUOperate op = null;

                            #region Normal text

                            if (focusCol == colCustStyleNo)
                                currLot.CustStyleNo = svalue;
                            else if (focusCol == colEndCustOrderNo)
                                currLot.CustOrderNo = svalue;
                            else if (focusCol == colGmtColorCode)
                                currLot.GarmentColor = svalue;
                            else if (focusCol == colRemark)
                                currLot.Remark = svalue;
                            else if (focusCol == colColorShade)
                            {
                                currLot.ColorShade = svalue;
                                UpdateColorShade(currLot);
                            }
                            else if (focusCol == colBulkOption)
                                currLot.BulkOption = svalue;
                            else if (focusCol == colLadDipOption)
                            {
                                currLot.LadDipOption = svalue;
                                LadDipChanged(currLot);
                            }
                            //else if (focusCol == colOrderOption)
                            //    currLot.OrderOption = svalue;
                            else if (focusCol == colRevDeliveryDate)
                                currLot.RevDeliveryDate = dt;
                            //else if (focusCol == colClassCode && currLot.PODetail != null)
                            //    currLot.PODetail.POHeader.ClassCode = svalue;
                            else if (focusCol == colRoundNo)
                            {
                                currLot.RoundNo = svalue;
                                currLot.RWO = currLot1.RWO;//import
                            }
                            else if (focusCol == colBrandName)
                                currLot.BrandName = svalue;
                            else if (focusCol == colGmtColorName)
                                currLot.GmtColorName = svalue;
                            else if (focusCol == colItemColorName)
                                currLot.ItemColorName = svalue;
                            else if (focusCol == colSampleNewItem)
                            {
                                currLot.NewItem = b;
                            }
                            else if (focusCol == colClassCode)
                            {
                                currLot.ClassCode = svalue;
                            }
                            else if (focusCol == colFlowupFlag)
                            {
                                currLot.FlowupFlag = svalue;
                            }
                            else if (focusCol == colFollowUpBy) //由David增加 2022-07-12
                            {
                                currLot.FollowUpBy = svalue;
                            }
                            #endregion

                            #region Sample
                            else if (focusCol == colSampleApproval)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.SampleApproval);
                                if (op != null)
                                {
                                    op.Flag = b;
                                }
                            }
                            //else if (focusCol == colSampleNewItem)
                            //{
                            //    op = CopySKUAction(currLot, PH.POPC.BO.Common.SampleApproval);
                            //    if (op != null)
                            //    {
                            //        op.NewItem = b;
                            //    }
                            //}
                            else if (focusCol == colSampleReceiptDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.SampleApproval);
                                if (op != null)
                                {
                                    op.ReceiveDate = dt;
                                    currLot.Remark = currLot.Remark;
                                }
                            }
                            else if (focusCol == colSampleCompletedDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.SampleApproval);
                                if (op != null)
                                    op.OperateDate = dt;
                            }
                            else if (focusCol == colSampleStatus)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.SampleApproval);
                                if (op != null)
                                    op.Status = svalue;
                            }
                            else if (focusCol == colSampleFollowby)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.SampleApproval);
                                if (op != null)
                                    op.SubmitNo = svalue;
                            }
                            else if (focusCol == colSampleAuditedby)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.SampleApproval);
                                if (op != null)
                                    op.BOMAuditedBy = svalue;
                            }
                            #endregion

                            #region Color Standard

                            else if (focusCol == colColorStdReceiptDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.ColorStd);
                                if (op != null)
                                    op.ReceiveDate = dt;
                            }
                            else if (focusCol == colColorStdToSuppDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.ColorStd);
                                if (op != null)
                                    op.OperateDate = dt;
                            }
                            //else if (focusCol == colColorStdSwatch3D)
                            //{
                            //    op = CopySKUAction(currLot, PH.POPC.BO.Common.ColorStd);
                            //    if (op != null)
                            //        op.Swatch3D = svalue;
                            //}
                            else if (focusCol == colColorStdSwatchCard)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.ColorStd);
                                if (op != null)
                                    op.SwatchCard = svalue;
                            }
                            else if (focusCol == colColorStdSwatchColorNo)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.ColorStd);
                                if (op != null)
                                    op.SubmitNo = svalue;
                            }
                            else if (focusCol == colColorStdPHCust)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.ColorStd);
                                if (op != null)
                                    op.Flag = b;
                            }

                            #endregion

                            #region Lab Dip

                            else if (focusCol == colDipReceiptDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    op.ReceiveDate = dt;
                            }
                            else if (focusCol == colDipCompletedDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    //currLot.DipCompletedDate = dt;
                                    switch (currLot.LadDipOption)
                                    {
                                        case "B"://b) . App by PH at first , then PH send to Cust. App
                                        case "C"://c) . Supp send to Cust. App
                                            op.CustOperateDate = dt;
                                            break;
                                        case "A"://a) . PH App
                                        case "D"://d) . Repeat 
                                        default:
                                            op.OperateDate = dt;
                                            break;
                                    }
                            }
                            else if (focusCol == colDipStatus)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    //currLot.DipStatus = svalue;
                                    switch (currLot.LadDipOption)
                                    {
                                        case "B"://b) . App by PH at first , then PH send to Cust. App
                                        case "C"://c) . Supp send to Cust. App
                                            op.CustStatus = svalue;
                                            break;
                                        case "A"://a) . PH App
                                        case "D"://d) . Repeat 
                                        default:
                                            op.Status = svalue;
                                            break;
                                    }
                            }
                            else if (focusCol == colDipPHToCustDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    op.PHToCustDate = dt;
                            }
                            else if (focusCol == colDipPHStatus)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    op.Status = svalue;
                            }
                            else if (focusCol == colDipSuppToCustDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    op.SuppToCustDate = dt;
                            }

                            else if (focusCol == colDipNo)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    op.SubmitNo = svalue;
                            }
                            else if (focusCol == colDipColoristComment)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    op.Remark = svalue;
                            }
                            else if (focusCol == colDipRemark)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.DipSubmit);
                                if (op != null)
                                    op.CustRemark = svalue;
                            }

                            #endregion

                            #region Bulk

                            else if (focusCol == colBulkReceiptDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    op.ReceiveDate = dt;
                            }
                            else if (focusCol == colBulkSubmitNo)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    op.SubmitNo = svalue;
                            }
                            else if (focusCol == colBulkCompletedDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    //currLot.BulkCompletedDate = dt;
                                    switch (currLot.BulkOption)
                                    {
                                        case "B"://b) . 1st B/S App by Cust , 2nd B/S App by PH
                                        case "C"://c) . Supp send to Cust. App
                                            op.CustOperateDate = dt;
                                            break;
                                        case "A"://a) . PH App
                                        case "D"://d) . Supp App 
                                        default:
                                            op.OperateDate = dt;
                                            break;
                                    }
                            }
                            else if (focusCol == colBulkStatus)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    //currLot.BulkStatus = svalue;
                                    switch (currLot.BulkOption)
                                    {
                                        case "B"://b) . 1st B/S App by Cust , 2nd B/S App by PH
                                        case "C"://c) . Supp send to Cust. App
                                            op.CustStatus = svalue;
                                            break;
                                        case "A"://a) . PH App
                                        case "D"://d) . Repeat 
                                        default:
                                            op.Status = svalue;
                                            break;
                                    }
                            }
                            else if (focusCol == colBulkQty)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    op.Qty = d;
                            }
                            else if (focusCol == colBulkPHToCustDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    op.PHToCustDate = dt;
                            }
                            else if (focusCol == colBulkPHStatus)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    op.Status = svalue;
                            }
                            else if (focusCol == colBulkSuppToCustDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    op.SuppToCustDate = dt;
                            }
                            else if (focusCol == colBulkRemark)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.BulkSubmission);
                                if (op != null)
                                    op.Remark = svalue;
                            }

                            #endregion

                            #region Test

                            else if (focusCol == colTestApproval)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.TestStatus);
                                if (op != null)
                                    op.Flag = b;
                            }
                            else if (focusCol == colTestReceiptDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.TestStatus);
                                if (op != null)
                                    op.ReceiveDate = dt;
                            }
                            else if (focusCol == colTestCompletedDate)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.TestStatus);
                                if (op != null)
                                    op.OperateDate = dt;
                            }
                            else if (focusCol == colTestStatus)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.TestStatus);
                                if (op != null)
                                    op.Status = svalue;
                            }


                            /**add by shulin 2022-12-10***/

                            else if (focusCol == colTestSeq)
                            {
                                op = CopySKUAction(currLot, PH.POPC.BO.Common.TestStatus);
                                if (op != null)
                                {
                                    op.HandleNo = int.Parse(svalue);
                                    op.Flag = true;
                                }
                            }

                            /******/

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
        private POSKUOperate CopySKUAction(POColorSizeDetail currLot, string handleType)
        {
            POSKUOperate op = null;
            int handleNo = -1;
            if (handleType == PH.POPC.BO.Common.DipSubmit)
            {
                op = currLot.LastDipSubmit;
                handleNo = (currLot.DipSeq ?? 0) + 1;
            }
            else if (handleType == PH.POPC.BO.Common.BulkSubmission)
            {
                op = currLot.LastBulkSubmission;
                handleNo = (currLot.BulkSubmitSeq ?? 0) + 1;
            }
            else if (handleType == PH.POPC.BO.Common.SampleApproval)
            {
                op = currLot.LastSampleApproval;
                handleNo = (currLot.SampleSeq ?? 0) + 1;
            }
            else if (handleType == PH.POPC.BO.Common.ColorStd)
            {
                op = currLot.LastColorStd;
                handleNo = (currLot.ColorStdSeq ?? 0) + 1;
            }
            else if (handleType == PH.POPC.BO.Common.TestStatus)
            {
                op = currLot.LastTestStatus;
                handleNo = (currLot.TestSeq ?? 0) + 1;
            }

            if (op == null)
            {
                op = new POSKUOperate();
                op.POColorSizeDetail = currLot;
                op.CurrentDataContext = this.DataContext;

                op.Company = currLot.Company;
                op.PONO = currLot.PONO;
                op.Version = currLot.Version;
                op.AmendmentNo = currLot.AmendmentNo;
                op.OrderLine = currLot.OrderLine;
                op.SKU = currLot.SKU;
                op.HandleType = handleType;
                op.HandleNo = handleNo;
                currLot.POSKUOperates.Add(op);
            }
            return op;
        }

        //Xsj:生成ColoreShape記錄
        private void UpdateColorShade(PH.POPC.BO.POColorSizeDetail detailD)
        {
            //detailD.ColorShade = this.Cobo_ColorShadeLable.Text;
            if (!string.IsNullOrEmpty(detailD.ColorShade))
            {
                PH.POPC.BO.ColorShade colorShade = new ColorShade(detailD);
                colorShade.Update();
            }
        }

        #endregion

        #endregion

        #region Tool Tips

        private void toolTipController1_GetActiveObjectInfo(object sender, ToolTipControllerGetActiveObjectInfoEventArgs e)
        {
            if (e.SelectedControl != objListGridControl) return;
            ToolTipControlInfo info = null;
            try
            {
                GridView view = objListGridControl.GetViewAt(e.ControlMousePosition) as GridView;
                if (view == null) return;
                GridHitInfo hi = view.CalcHitInfo(e.ControlMousePosition);
                if (hi.InRowCell)
                {
                    string s = GetCellHintText(view, hi.RowHandle, hi.Column);
                    if (!string.IsNullOrEmpty(s))
                        info = new ToolTipControlInfo(new CellToolTipInfo(hi.RowHandle, hi.Column, "cell"), s);
                    return;
                }
                //if (hi.Column != null)
                //{
                //    info = new ToolTipControlInfo(hi.Column, GetColumnHintText(hi.Column));
                //    return;
                //}
                //if (hi.HitTest == GridHitTest.GroupPanel)
                //{
                //    info = new ToolTipControlInfo(hi.HitTest, "Group panel");
                //    return;
                //}

                //if (hi.HitTest == GridHitTest.RowIndicator)
                //{
                //    info = new ToolTipControlInfo(GridHitTest.RowIndicator.ToString() + hi.RowHandle.ToString(), "Row Handle: " + hi.RowHandle.ToString());
                //    return;
                //}
            }
            finally
            {
                e.Info = info;
            }
        }
        private string GetCellHintText(GridView view, int rowHandle, DevExpress.XtraGrid.Columns.GridColumn column)
        {
            PH.POPC.BO.POColorSizeDetail currLot = view.GetRow(rowHandle) as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return "";
            if (column == colBulkOption)
            {
                var aa = (from a in _bulks
                          where a.DataCode == currLot.BulkOption
                          select a).FirstOrDefault<PH.Platform.Misc.BO.Misc_DataDictionary>();
                if (aa != null)
                    return string.Format("{0}). {1}", aa.DataCode, aa.Description);
            }
            else if (column == colLadDipOption)
            {
                var aa = (from a in _dips
                          where a.DataCode == currLot.LadDipOption
                          select a).FirstOrDefault<PH.Platform.Misc.BO.Misc_DataDictionary>();
                if (aa != null)
                    return string.Format("{0}). {1}", aa.DataCode, aa.Description);
            }
            //else if (column == colOrderOption)
            //{
            //    var aa = (from a in _ords
            //              where a.DataCode == currLot.OrderOption
            //              select a).FirstOrDefault<PH.Platform.Misc.BO.Misc_DataDictionary>();
            //    if (aa != null)
            //        return string.Format("{0}). {1}", aa.DataCode, aa.Description);
            //}
            else if (column == colSampleAuditedby)
            {
                var aa = (from a in _auds
                          where a.DataCode == currLot.SampleAuditedby
                          select a).FirstOrDefault<PH.Platform.Misc.BO.Misc_DataDictionary>();
                if (aa != null)
                    return string.Format("{0}) - {1}", aa.DataCode, aa.Description);
            }
            return "";
            //return (column == colBulkOption) ? (currLot.BulkOption.HasValue ? BulkSS[currLot.BulkOption.Value] : "")
            //    : (column == colLadDipOption ? (currLot.LadDipOption.HasValue ? LadDip[currLot.LadDipOption.Value] : "") : "");

        }
        //string[] LadDip = new string[]{"a). PH App",
        //                               "b). App by PH at first , then PH send to Cust. App",
        //                               "c). Supp send to Cust. App",
        //                               "d). Repeat"};
        //string[] BulkSS = new string[]{"a). PH App",
        //                               "b). 1st B/S App by Cust , 2nd B/S App by PH",
        //                               "c). Supp send to Cust. App",
        //                               "d). Supp App"};
        #endregion

        #region Lookup Combox
        IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> _bulks;
        IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> _dips;
        IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> _auds;
        IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> _ords;

        private void AssignDataToLookupEdit()
        {
            DicList list = new DicList();

            #region Bulk

            _bulks = list.GetDataDictionary(PH.POPC.BO.Common.BulkDictionary);
            this.rigluBulk.DataSource = _bulks;
            this.rigluBulk.DisplayMember = "DataCode";
            this.rigluBulk.ValueMember = "DataCode";

            //DevExpress.XtraGrid.Columns.GridColumn col1 = rigluBulk.View.Columns.AddField("DataCode");
            //col1.VisibleIndex = 0;
            //col1.Caption = "Code";
            //col1.Width = 30;
            //DevExpress.XtraGrid.Columns.GridColumn col2 = rigluBulk.View.Columns.AddField("Description");
            //col2.VisibleIndex = 1;
            //col2.Caption = "Description";
            //col2.Width = 150;
            ////rigluBulk.View.BestFitColumns();
            rigluBulk.PopupFormWidth = 470;
            #endregion

            #region Lab Dip

            _dips = list.GetDataDictionary(PH.POPC.BO.Common.LadDipDictionary);
            this.rigluLadDip.DataSource = _dips;
            this.rigluLadDip.DisplayMember = "DataCode";
            this.rigluLadDip.ValueMember = "DataCode";

            //DevExpress.XtraGrid.Columns.GridColumn col3 = rigluLadDip.View.Columns.AddField("DataCode");
            //col3.VisibleIndex = 0;
            //col3.Caption = "Code";
            ////col3.Width = 30;
            //DevExpress.XtraGrid.Columns.GridColumn col4 = rigluLadDip.View.Columns.AddField("Description");
            //col4.VisibleIndex = 1;
            //col4.Caption = "Description";
            ////col4.Width = 150;
            //rigluLadDip.View.BestFitColumns();
            rigluLadDip.PopupFormWidth = 470;

            #endregion

            #region Order Option

            _ords = list.GetDataDictionary(PH.POPC.BO.Common.OrderOptionDictionary);
            this.rigluOrder.DataSource = _ords;
            this.rigluOrder.DisplayMember = "DataCode";
            this.rigluOrder.ValueMember = "DataCode";

            //DevExpress.XtraGrid.Columns.GridColumn col3 = rigluOrder.View.Columns.AddField("DataCode");
            //col3.VisibleIndex = 0;
            //col3.Caption = "Code";
            ////col3.Width = 30;
            //DevExpress.XtraGrid.Columns.GridColumn col4 = rigluOrder.View.Columns.AddField("Description");
            //col4.VisibleIndex = 1;
            //col4.Caption = "Description";
            ////col4.Width = 150;
            //rigluOrder.View.BestFitColumns();
            rigluOrder.PopupFormWidth = 470;

            #endregion

            #region BOM Audited by

            _auds = list.GetDataDictionary("PH.POPC.BOMAuditedby");
            #endregion


            //LookUpColumnInfoCollection cols;
            //_bulks = list.GetDataDictionary(PH.POPC.BO.Common.BulkDictionary);
            //this.rilueBulk.DataSource = _bulks;
            //this.rilueBulk.DisplayMember = "DataCode";
            //this.rilueBulk.ValueMember = "DataCode";
            //cols = this.rilueBulk.Columns;
            //cols.Add(new LookUpColumnInfo("DataCode", "Code", 30));
            //cols.Add(new LookUpColumnInfo("Description", "Description", 120));

            //_dips = list.GetDataDictionary(PH.POPC.BO.Common.LadDipDictionary);
            //this.rilueLadDip.DataSource = _dips;
            //this.rilueLadDip.DisplayMember = "DataCode";
            //this.rilueLadDip.ValueMember = "DataCode";
            //cols = this.rilueLadDip.Columns;
            //cols.Add(new LookUpColumnInfo("DataCode", "Code", 30));
            //cols.Add(new LookUpColumnInfo("Description", "Description", 120));
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
        //    //col.SummaryItem.DisplayFormat = "Nr. {0}";
        //    col.SummaryItem.DisplayFormat = "";
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

        #region RWO

        private void btnRWO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            ChooseRWO();
        }
        private void ChooseRWO()
        {
            PH.POPC.BO.POColorSizeDetail currLot = this.BindingSource.Current as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;
            SelectRWOForm frm = new SelectRWOForm(currLot.ProjectNO);
            if (frm.ShowDialog() == DialogResult.OK)
            {
                currLot.RWO = frm.RWO;
            }
        }

        #endregion

        #region Notify

        private void btnNotify_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
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
                    POColorSizeDetail currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                    if (currLot == null) continue;

                    list.Add(currLot);
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

        #region Transit
        private void ribeTranst_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            TransitInCode();
        }
        private void TransitInCode()
        {
            if (this.bandedGridView1.PostEditor())
            {
                this.bandedGridView1.UpdateCurrentRow();
            }

            PH.POPC.BO.POColorSizeDetail currLot = this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle) as PH.POPC.BO.POColorSizeDetail;
            if (currLot == null) return;
            if (string.IsNullOrEmpty(currLot.TransferCode)) return;

            POSKUList list = new POSKUList();
            POInAdvance pi = list.GetPOInAdvance(currLot.TransferCode);
            if (pi == null)
            {
                MessageBox.Show(string.Format("Transit Code - {0} is not exists!", currLot.TransferCode), "Tips");
                return;
            }

            currLot.LadDipOption = pi.LDOption;
            currLot.TransferDate = DateTime.Now;
            pi.TransitDate = DateTime.Now;
            pi.Transited = true;
            if (currLot.PODetail != null)
                currLot.PODetail.BrandName = pi.BrandName;

            currLot.ColorShade = pi.ColorShade;

            #region Lab dip

            POSKUOperate op = currLot.LastDipSubmit;

            if (op == null)
            {
                op = new POSKUOperate();
                op.POColorSizeDetail = currLot;
                op.CurrentDataContext = this.DataContext;

                op.Company = currLot.Company;
                op.PONO = currLot.PONO;
                op.Version = currLot.Version;
                op.AmendmentNo = currLot.AmendmentNo;
                op.OrderLine = currLot.OrderLine;
                op.SKU = currLot.SKU;
                op.HandleType = PH.POPC.BO.Common.DipSubmit;
                op.HandleNo = (currLot.DipSeq ?? 0) + 1;
                currLot.POSKUOperates.Add(op);
            }

            op.Remark = pi.ColoristRemark;
            op.CustRemark = pi.CustRemark;
            op.ReceiveDate = pi.LDReceiveDate;
            op.SubmitNo = pi.LDNo;
            switch (currLot.LadDipOption)
            {
                case "B"://b) . App by PH at first , then PH send to Cust. App
                case "C"://c) . Supp send to Cust. App
                    op.CustOperateDate = pi.LDAppDate;
                    op.CustStatus = pi.LDAppStatus;
                    break;
                case "A"://a) . PH App
                case "D"://d) . Repeat 
                default:
                    op.OperateDate = pi.LDAppDate;
                    op.Status = pi.LDAppStatus;
                    break;
            }

            #endregion
            #region Color Standard

            POSKUOperate op1 = currLot.LastColorStd;

            if (op1 == null)
            {
                op1 = new POSKUOperate();
                op1.POColorSizeDetail = currLot;
                op1.CurrentDataContext = this.DataContext;

                op1.Company = currLot.Company;
                op1.PONO = currLot.PONO;
                op1.Version = currLot.Version;
                op1.AmendmentNo = currLot.AmendmentNo;
                op1.OrderLine = currLot.OrderLine;
                op1.SKU = currLot.SKU;
                op1.HandleType = PH.POPC.BO.Common.ColorStd;
                op1.HandleNo = (currLot.ColorStdSeq ?? 0) + 1;
                currLot.POSKUOperates.Add(op1);
            }

            op1.SwatchCard = pi.StdSwatchCard;
            op1.SubmitNo = pi.StdSwatchColorNo;
            op1.ReceiveDate = pi.StdReceiveDate;
            op1.OperateDate = pi.StdCompleteDate;
            op1.Flag = pi.StdPHCust;

            #endregion

            list.CurrentDataContext.SubmitChanges();
            this.SaveData();
        }
        #endregion

        #region New Item

        private void ribeProject_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            if (MessageBox.Show("Can you want to re-calculate Ttl Left Item(s) by this project?", "Question", MessageBoxButtons.YesNo) == DialogResult.No)
                return;

            PH.POPC.BO.POColorSizeDetail pur = this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle) as PH.POPC.BO.POColorSizeDetail;
            if (pur == null) return;

            //List<object> aa = this.bandedGridView1.DataSource as List<object>;
            IEnumerable<POColorSizeDetail> aa = this.BindingSource.DataSource as IEnumerable<POColorSizeDetail>;
            string proj = pur.ProjectNO;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.bandedGridView1.BeginUpdate();
            try
            {
                List<PODetail> bb = POColorSizeDetail.GetLevelaDataSource(aa, proj);
                foreach (var b in bb)
                {
                    b.CurrentDataContext = context;
                    b.SampleTtlLeftItem = b.GetSampleTtlLeftItem();
                }
                LocateRowByMultipleValues(bandedGridView1, pur, 0, proj);
            }
            finally
            {
                this.bandedGridView1.FocusedRowHandle = currHandle;
                this.bandedGridView1.EndUpdate();
            }
        }
        public void LocateRowByMultipleValues(ColumnView view, PH.POPC.BO.POColorSizeDetail lot, int startRowHandle, string proj)
        {
            int dataRowCount;
            dataRowCount = (view as GridView).DataRowCount;

            bool match;

            for (int currentRowHandle = startRowHandle; currentRowHandle < dataRowCount; currentRowHandle++)
            {
                PH.POPC.BO.POColorSizeDetail currLot = bandedGridView1.GetRow(currentRowHandle) as PH.POPC.BO.POColorSizeDetail;
                if (currLot == null) continue;

                match = (lot.ProjectNO == proj);

                if (match)
                {
                    view.FocusedRowHandle = currentRowHandle;
                }
            }
        }
        private void SetReportTtlLeftItem(bool with)
        {
            List<object> aa = bandedGridView1.FilteredList();

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.bandedGridView1.BeginUpdate();
            try
            {
                if (with)
                {
                    List<PODetail> bb = POColorSizeDetail.GetLevelDataSource(aa, "");
                    foreach (var b in bb)
                    {
                        b.CurrentDataContext = context;
                        b.SampleTtlLeftItem = b.GetSampleTtlLeftItem();
                    }
                }
                foreach (POColorSizeDetail item in aa)
                {
                    item.SampleTtlLeftItemReport = with ? item.SampleTtlLeftItem : "";
                }
                //LocateRowByMultipleValues(bandedGridView1, pur, 0, proj);
            }
            finally
            {
                this.bandedGridView1.FocusedRowHandle = currHandle;
                this.bandedGridView1.EndUpdate();
            }
        }
        #endregion

        #region Pending PO Line

        private void btnPending_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (MessageBox.Show("Do you want to transfer selected items to Level 4 ?", "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("transfer...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
                {
                    int j = bandedGridView1.GetSelectedRows()[i];//selected handle
                    if (j >= 0)
                    {
                        POColorSizeDetail c = bandedGridView1.GetRow(j) as PH.POPC.BO.POColorSizeDetail;
                        if (c == null) continue;
                        if (!c.IsOutStanding) continue;//只能是WIP
                        c.Pending = true;
                        c.PendingByCust = 100; //default customer 100%

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

        private void btnCopyToClipboard_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PHClipboard.CellsCopyToClipboard(this.bandedGridView1);
        }

        private void CboBoxTransitMode2Show_EditValueChanged(object sender, EventArgs e)
        {

            ComboBoxEdit cb = sender as ComboBoxEdit;
            string ATransitMode = cb.Text;
            POColorSizeDetail Obj = this.BindingSource.Current as POColorSizeDetail;
            POHeader po = Obj.PODetail.POHeader;

            PH.BasicInfo.BO.BasicInfoDataContext db = ContextBuilder.CreateContext<PH.BasicInfo.BO.BasicInfoDataContext>();
            var TimeFrameIIObj = db.TimeFrameIIs.FirstOrDefault(p => p.StartPoint == po.TimeFrameIIStartPoint && p.EndPoint == po.TimeFrameIIEndPoint && p.TransitMode == ATransitMode);

            //var AData = db.EndPointFactoryFrames.Where(P => P.EndPointCode == Obj.PODetail.POHeader.IncontermsTransit.PointofDestination && P.PHFactory == Obj.PODetail.POHeader.IncontermsTransit.PHFactories && P.TransitMode == ATransitMode).Select(S => S.TimeFrame).FirstOrDefault();

            //if (string.IsNullOrEmpty(AData.ToString()))
            //{
            //    MessageBox.Show("在Supplier profile中(Steup -> Buyer Cargo Receiving & Consolidation Station, with Time Frame 2)無法找到對應該TransitMode2的TimeFrame，請檢查Supplier profile的數據是否完整", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //}

            this.bandedGridView1.PostEditor();
            this.BindingSource.EndEdit();

            (context as POPCDataContext).SubmitChanges();

            this.bandedGridView1.RefreshData();

        }


        // add by shulin 20210611
        private void CboBoxTransitMode1Show_EditValueChanged(object sender, EventArgs e)
        {
            ComboBoxEdit cb = sender as ComboBoxEdit;
            string ATransitMode = cb.Text;
            POColorSizeDetail Obj = this.BindingSource.Current as POColorSizeDetail;
            SupplierInfo info = DataAccess.GetSupplierInfo(Obj.PODetail.POHeader.Supplier, Obj.PODetail.POHeader.Factory, Obj.PODetail.POHeader.LocationOfSuppFactory, Obj.PODetail.POHeader.OrderDate.Value, ATransitMode);
            if (info == null)
            {
                MessageBox.Show("在Supplier profile中(Transaction - > Supplier Profile for PO & PCN)無法找到對應該TransitMode的TimeFrame，請檢查Supplier profile的數據是否完整", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }


            this.bandedGridView1.PostEditor();
            this.BindingSource.EndEdit();
            (context as POPCDataContext).SubmitChanges();

            this.bandedGridView1.RefreshData();

        }

        private void riPHDate1_EditValueChanged(object sender, EventArgs e)
        {
            POColorSizeDetail Obj = this.BindingSource.Current as POColorSizeDetail;
            DateEdit DateEditRevDelivery = sender as DateEdit;
            DateTime? ADateTime = DateEditRevDelivery.DateTime != DateTime.MinValue ? (DateEditRevDelivery.DateTime) : (DateTime?)null;

            if (this.context == null)
            {
                this.context = ContextBuilder.CreateContext<POPCDataContext>();
            }

            var Alist = (context as POPCDataContext).POColorSizeDetails.Where(dr =>
                dr.Company == Obj.Company &&
                dr.PONO == Obj.PONO &&
                dr.Version == Obj.Version &&
                dr.AmendmentNo == Obj.AmendmentNo &&
                dr.OrderLine == Obj.OrderLine &&
                dr.ColorCode == Obj.ColorCode &&
                dr.SupplierReference == Obj.SupplierReference &&
                dr.VersionFlag == Obj.VersionFlag
                ).ToList();

            this.BindingSource.EndEdit();
            this.bandedGridView1.UpdateCurrentRow();

            foreach (POColorSizeDetail AObj in Alist)
            {
                AObj.RevDeliveryDate = ADateTime;
            }

            (this.context as POPCDataContext).SubmitChanges();

            this.bandedGridView1.RefreshData();
        }

        private void barButtonItem1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            this.SaveLayoutToXml(bandedGridView1);
        }

        //void CalOddEvenRowFlag()
        //{
        //    string SaveOddEventRowFlag = "";
        //    string SavePONO = "0";
        //    int SaveOrderLine = 0;
        //    for (int i = 0; i < bandedGridView1.RowCount; i++)
        //    {
        //        POColorSizeDetail obj = bandedGridView1.GetRow(i) as POColorSizeDetail;
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

        private void bandedGridView1_CustomSummaryCalculate(object sender, CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<POColorSizeDetail> lists = bandedGridView1.FilteredList().Cast<POColorSizeDetail>();

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

        //object SaveBindingSource = null;
        //string[] HandingOptions = new string[] { "A", "B", "C" };
        private void barEditItem_Dashboard_EditValueChanged(object sender, EventArgs e)
        {
            //    try
            //    {
            //        if (SaveBindingSource == null)
            //        {
            //            SaveBindingSource = this.BindingSource.DataSource;
            //        }

            //        this.Cursor = Cursors.WaitCursor;
            //        if (barEditItem_Dashboard.EditValue.ToString() == "Bulk Color Not yet Appv.")
            //        {
            //            IEnumerable<POColorSizeDetail> lists = bandedGridView1.FilteredList().Cast<POColorSizeDetail>()
            //                .Where(p => //(HandingOptions.Contains(p.LadDipOption.ToUpper()) && p.DipNo.ToUpper() != "N/A" && (string.IsNullOrEmpty(p.DipStatus) || p.DipStatus.ToUpper() != "APP.")) ||
            //                            (HandingOptions.Contains(p.BulkOption.ToUpper()) && (string.IsNullOrEmpty(p.BulkStatus) || !AppvAndNils.Contains(p.BulkStatus.ToUpper())))
            //                      );
            //            this.BindingSource.DataSource = lists;
            //        }
            //        else if (barEditItem_Dashboard.EditValue.ToString() == "Others Lab Test Not yet Appv.")
            //        {
            //            IEnumerable<POColorSizeDetail> lists = bandedGridView1.FilteredList().Cast<POColorSizeDetail>()
            //                .Where(p => p.TestApproval == "Y" && (string.IsNullOrEmpty(p.TestStatus) || !AppvAndNils.Contains(p.TestStatus.ToUpper())));
            //            this.BindingSource.DataSource = lists;
            //        }
            //        else
            //        {
            //            this.BindingSource.DataSource = SaveBindingSource;
            //        }
            //    }
            //    finally
            //    {
            //        this.Cursor = Cursors.Default;
            //    }

            //    this.InitFormNavigator();
        }

        private void barButtonItemActionLogGroup_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //foreach (var i in bandedGridView1.GetSelectedRows())
            //{
            //    POColorSizeDetail row = bandedGridView1.GetRow(i) as POColorSizeDetail;
            //    if (!string.IsNullOrEmpty(row.ActionLogSeqNo))
            //    {
            //        MessageBox.Show("When adding a new group action log, the column Log Seq# of selection line must be all blank", "Hint", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            //        return;
            //    }
            //}

            //POPCDataContext db = DataContext as POPCDataContext;
            //POColorSizeDetail obj = this.BindingSource.Current as POColorSizeDetail;

            //PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(db, bandedGridView1, this);
            //frmAlertLog.ShowDialog();

        }

        private void repositoryItemButtonEdit_ActionLog_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            //POPCDataContext db = DataContext as POPCDataContext;
            //POColorSizeDetail obj = this.BindingSource.Current as POColorSizeDetail;

            //PH.POPC.UI.ActionLog.AlertLogForm frmAlertLog = new PH.POPC.UI.ActionLog.AlertLogForm(db, obj, this);
            //frmAlertLog.ShowDialog();

        }

        private void barAppvSeq_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Add by shulin 2022-12-10
            CopySingleColumnData();

        }

        //int GetNewActionLogReqNo()
        //{
        //    POPCDataContext db = DataContext as POPCDataContext;
        //    int? iActionLogSeqNo = db.POColorSizeDetails.Where(p => Convert.ToString(p.ActionLogSeqNo).Substring(0, 6) == DateTime.Today.ToString("yyyyMM")).Max(p => p.ActionLogSeqNo);
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


        //public void SaveActionLogInfo(string AActionLogSeqNo, long? AActionLogOID)
        //{
        //    POPCDataContext db = this.DataContext as POPCDataContext;

        //    //先计算Action Log Group
        //    List<POColorSizeDetail> POColorSizeDetailList = new List<POColorSizeDetail>();
        //    foreach (var i in bandedGridView1.GetSelectedRows())
        //    {
        //        POColorSizeDetail row = bandedGridView1.GetRow(i) as POColorSizeDetail;
        //        POColorSizeDetailList.Add(row);
        //    }
        //    string ActionLogGroupFlag = POColorSizeDetailList.GroupBy(p => new { p.PONO, p.OrderLine, p.ColorCode }).Count() > 1 ? "Y" : "N";

        //    //int? NewActionLogReqNo = GetNewActionLogReqNo();
        //    bool IsGroup = bandedGridView1.GetSelectedRows().Count() > 1;
        //    foreach (var i in bandedGridView1.GetSelectedRows())
        //    {
        //        POColorSizeDetail row = bandedGridView1.GetRow(i) as POColorSizeDetail;
        //        row.ActionLogSeqNo = AActionLogSeqNo;
        //        row.ActionLogOID = AActionLogOID;

        //        if (string.IsNullOrEmpty(row.ActionLogGroup))
        //        {
        //            row.ActionLogGroup = ActionLogGroupFlag;
        //        }

        //        if (!row.ActionLogSeqNo.HasValue)
        //        {
        //            row.ActionLogSeqNo = AActionLogSeqNo;

        //            //將Level 3中的Action Log Seq#回寫到Action Log Header表
        //            ActionLogHeader ActionLogHeaderObj = db.ActionLogHeaders.FirstOrDefault(p => p.OID == AActionLogOID);
        //            if (ActionLogHeaderObj != null)
        //            {
        //                ActionLogHeaderObj.ActionLogSeqNo = row.ActionLogSeqNo.ToString();
        //            }
        //        }
        //    }

        //    this.BindingSource.EndEdit();
        //    this.bandedGridView1.HideEditor();
        //    db.SubmitChanges(System.Data.Linq.ConflictMode.ContinueOnConflict);
        //    this.bandedGridView1.RefreshData();
        //}

    }
}
