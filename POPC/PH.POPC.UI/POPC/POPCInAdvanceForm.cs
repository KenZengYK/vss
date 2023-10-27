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
using System.Linq;
using System.Windows.Forms;
using DevExpress.Utils;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid.Views.BandedGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.Platform.Misc.BO;
using PH.POPC.BO;
using PH.POPC.UI.POPC;


namespace PH.POPC.UI
{
    public partial class POPCInAdvanceForm : PH.Platform.UI.CS.UI2.ListForm
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
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQA;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandColorStandard2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandColorStandard1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandLadDip;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraBars.BarButtonItem btnAddLots;
        private DevExpress.XtraBars.PopupMenu popupMenu1;
        private IContainer components;
        private DevExpress.XtraBars.BarButtonItem btnPrintShip;
        private DevExpress.XtraBars.BarSubItem btnShipmentYes;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQAProcess;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riPHDate;
        private DevExpress.XtraBars.BarButtonItem btnShip;
        private DevExpress.XtraBars.BarButtonItem btnPrintPO;
        private DevExpress.XtraBars.BarButtonItem btnCloneAsReplace;
        private DevExpress.Utils.ToolTipController toolTipController1;
        private DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit rigluLadDip;
        private GridView repositoryItemGridLookUpEdit1View;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraBars.BarButtonItem btnWOReport;
        private DevExpress.XtraBars.BarButtonItem btnRWOReport;
        private DevExpress.XtraBars.BarButtonItem btnCopySingle;
        private ImageList imageList1;
        private DevExpress.XtraBars.BarSubItem btnClone;
        private DevExpress.XtraBars.BarButtonItem btnCloneAsNew;
        private DevExpress.XtraBars.BarButtonItem btnSupplement;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandSuppRef;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandCust;
        private DevExpress.XtraBars.BarButtonItem btnInAdvance;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnSupplementSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandLabdip1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTransfer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustomer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBrandName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtStyleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplier;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSuppRef;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorShade;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStdSwatch3D;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStdSwatchCard;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStdSwatchColorNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStdReceiveDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStdPHCust;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStdCompleteDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLDOption;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLDNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLDSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLDReceiveDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLDAppDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLDAppStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColoristRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransited;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseOfficer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCreateDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTeam;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLDDropDeadDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorName;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox ricbPHCust;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit riMemoEx;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit riteUpper;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbSwatch;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHaveColoristComm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHaveCustComm;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand BandOtherInfor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBOMNewItem;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBOMApproval;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBOMFollowby;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBOMStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBOMAuditedBy;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBOMCompletedDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riicbAudit;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraBars.BarButtonItem btnSpec;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeTransit;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit riMemo;
        private DevExpress.XtraBars.BarButtonItem btnCopyToClipboard;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandLabdip2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLogNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLineSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalStyle;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalSupp;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalItem;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTargetFinishDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLogIsFinished;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand BandLogInfo;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_LogFinished;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox__LogFinished;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBiColor;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_BiColor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEditOnlyShowRej;
        private DevExpress.XtraBars.BarEditItem barEditItem_OnlyShowRej;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_InAdvanceStage;
        private BandedGridColumn colStage;
        private BandedGridColumn colECRcvd;
        private BandedGridColumn colSORcvd;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riicbYN;
        #endregion

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(POPCInAdvanceForm));
            this.colOddEvenRowFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.BandLogInfo = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLogNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLineSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalStyle = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalSupp = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalItem = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTargetFinishDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStage = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_InAdvanceStage = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colECRcvd = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSORcvd = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLogIsFinished = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemImageComboBox__LogFinished = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.bandSuppRef = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplier = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSuppRef = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandCust = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustomer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBrandName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGmtStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGmtColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGmtColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandPO = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBOMNewItem = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riicbYN = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colBOMApproval = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBOMCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBOMStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBOMAuditedBy = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riicbAudit = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.bandQA = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandColorStandard1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStdSwatch3D = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStdSwatchCard = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ricbSwatch = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colBiColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemComboBox_BiColor = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colStdSwatchColorNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStdReceiveDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riPHDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.bandColorStandard2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStdPHCust = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ricbPHCust = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colStdCompleteDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandQAProcess = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandLabdip1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLDOption = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.rigluLadDip = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLDSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLDNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLDReceiveDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLDAppDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLDAppStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ricbStatus = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colLDDropDeadDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandLabdip2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHaveColoristComm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColoristRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riMemo = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.colBOMFollowby = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHaveCustComm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandTransfer = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ribeTransit = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colTransitDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.BandOtherInfor = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransited = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemCheckEdit_LogFinished = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.riMemoEx = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.riteUpper = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.bandLadDip = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.btnCloneAsReplace = new DevExpress.XtraBars.BarButtonItem();
            this.btnCloneAsNew = new DevExpress.XtraBars.BarButtonItem();
            this.btnCopySingle = new DevExpress.XtraBars.BarButtonItem();
            this.btnCopyToClipboard = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintShip = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintPO = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnClone = new DevExpress.XtraBars.BarSubItem();
            this.btnShipmentYes = new DevExpress.XtraBars.BarSubItem();
            this.btnAddLots = new DevExpress.XtraBars.BarButtonItem();
            this.btnShip = new DevExpress.XtraBars.BarButtonItem();
            this.toolTipController1 = new DevExpress.Utils.ToolTipController(this.components);
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btnSupplement = new DevExpress.XtraBars.BarButtonItem();
            this.btnInAdvance = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnSpec = new DevExpress.XtraBars.BarButtonItem();
            this.btnSupplementSheet = new DevExpress.XtraBars.BarButtonItem();
            this.repositoryItemCheckEditOnlyShowRej = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.barEditItem_OnlyShowRej = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_InAdvanceStage)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox__LogFinished)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbYN)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbAudit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatch)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_BiColor)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbPHCust)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbStatus)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeTransit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_LogFinished)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemoEx)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riteUpper)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEditOnlyShowRej)).BeginInit();
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
            this.btnSupplement,
            this.btnInAdvance,
            this.barSubItem2,
            this.btnSupplementSheet,
            this.btnSpec,
            this.btnCopyToClipboard,
            this.barEditItem_OnlyShowRej});
            this.objbarManager.MaxItemId = 37;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEditOnlyShowRej,
            this.repositoryItemComboBox2});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(((DevExpress.XtraBars.BarLinkUserDefines)((DevExpress.XtraBars.BarLinkUserDefines.PaintStyle | DevExpress.XtraBars.BarLinkUserDefines.Width))), this.barEditItem_OnlyShowRej, "", true, true, true, 151, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem2, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.riPHDate,
            this.rigluLadDip,
            this.ricbPHCust,
            this.riMemoEx,
            this.riteUpper,
            this.ricbSwatch,
            this.ricbStatus,
            this.riicbYN,
            this.riicbAudit,
            this.ribeTransit,
            this.riMemo,
            this.repositoryItemCheckEdit_LogFinished,
            this.repositoryItemImageComboBox__LogFinished,
            this.repositoryItemComboBox_BiColor,
            this.repositoryItemComboBox_InAdvanceStage});
            this.objListGridControl.Size = new System.Drawing.Size(2990, 373);
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
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POInAdvance);
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
            this.colOddEvenRowFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colOddEvenRowFlag.Width = 119;
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
            this.BandLogInfo,
            this.bandSuppRef,
            this.bandCust,
            this.bandPO,
            this.gridBand2,
            this.bandQA,
            this.bandQAProcess,
            this.bandTransfer,
            this.BandOtherInfor});
            this.bandedGridView1.ColumnPanelRowHeight = 50;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colEndCustomer,
            this.colBrandName,
            this.colGmtStyleNo,
            this.colSupplier,
            this.colSuppRef,
            this.colGmtColorCode,
            this.colGmtColorName,
            this.colColorCode,
            this.colColorShade,
            this.colStdSwatch3D,
            this.colStdSwatchCard,
            this.colStdSwatchColorNo,
            this.colStdReceiveDate,
            this.colStdPHCust,
            this.colStdCompleteDate,
            this.colLDOption,
            this.colLDNo,
            this.colLDSeq,
            this.colLDReceiveDate,
            this.colLDAppDate,
            this.colLDAppStatus,
            this.colColoristRemark,
            this.colCustRemark,
            this.colTransitCode,
            this.colTransitDate,
            this.colTransited,
            this.colPurchaseOfficer,
            this.colPONO,
            this.colItemCode,
            this.colProjectNo,
            this.colCreateDate,
            this.colTeam,
            this.colFlag,
            this.colLDDropDeadDate,
            this.colColorName,
            this.colHaveColoristComm,
            this.colHaveCustComm,
            this.colBOMNewItem,
            this.colBOMApproval,
            this.colBOMFollowby,
            this.colBOMStatus,
            this.colBOMAuditedBy,
            this.colBOMCompletedDate,
            this.colLogNo,
            this.colLineSeqNo,
            this.colTotalStyle,
            this.colTotalSupp,
            this.colTotalItem,
            this.colTargetFinishDate,
            this.colLogIsFinished,
            this.colBiColor,
            this.colOddEvenRowFlag,
            this.colStage,
            this.colECRcvd,
            this.colSORcvd});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(700, 218, 274, 469);
            this.bandedGridView1.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
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
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsSelection.MultiSelect = true;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.RowAutoHeight = true;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.bandedGridView1_MouseDown);
            this.bandedGridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bandedGridView1_RowCellStyle);
            this.bandedGridView1.ShowingEditor += new System.ComponentModel.CancelEventHandler(this.bandedGridView1_ShowingEditor);
            this.bandedGridView1.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.bandedGridView1_ValidateRow);
            // 
            // BandLogInfo
            // 
            this.BandLogInfo.Caption = "Log Info";
            this.BandLogInfo.Columns.Add(this.colOddEvenRowFlag);
            this.BandLogInfo.Columns.Add(this.colLogNo);
            this.BandLogInfo.Columns.Add(this.colLineSeqNo);
            this.BandLogInfo.Columns.Add(this.colCreateDate);
            this.BandLogInfo.Columns.Add(this.colTotalStyle);
            this.BandLogInfo.Columns.Add(this.colTotalSupp);
            this.BandLogInfo.Columns.Add(this.colTotalItem);
            this.BandLogInfo.Columns.Add(this.colTargetFinishDate);
            this.BandLogInfo.Columns.Add(this.colStage);
            this.BandLogInfo.Columns.Add(this.colECRcvd);
            this.BandLogInfo.Columns.Add(this.colSORcvd);
            this.BandLogInfo.Columns.Add(this.colLogIsFinished);
            this.BandLogInfo.MinWidth = 20;
            this.BandLogInfo.Name = "BandLogInfo";
            this.BandLogInfo.Tag = "1";
            this.BandLogInfo.Width = 670;
            // 
            // colLogNo
            // 
            this.colLogNo.Caption = "Log#";
            this.colLogNo.FieldName = "LogNo";
            this.colLogNo.Name = "colLogNo";
            this.colLogNo.OptionsColumn.AllowEdit = false;
            this.colLogNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLogNo.Visible = true;
            this.colLogNo.Width = 63;
            // 
            // colLineSeqNo
            // 
            this.colLineSeqNo.Caption = "Line Seq.";
            this.colLineSeqNo.FieldName = "LineSeqNo";
            this.colLineSeqNo.Name = "colLineSeqNo";
            this.colLineSeqNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLineSeqNo.Visible = true;
            this.colLineSeqNo.Width = 47;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "Create dd";
            this.colCreateDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colCreateDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.OptionsColumn.AllowEdit = false;
            this.colCreateDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCreateDate.Visible = true;
            this.colCreateDate.Width = 77;
            // 
            // colTotalStyle
            // 
            this.colTotalStyle.Caption = "Style\r\nTtl";
            this.colTotalStyle.FieldName = "TotalStyle";
            this.colTotalStyle.Name = "colTotalStyle";
            this.colTotalStyle.OptionsColumn.AllowEdit = false;
            this.colTotalStyle.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalStyle.Visible = true;
            this.colTotalStyle.Width = 50;
            // 
            // colTotalSupp
            // 
            this.colTotalSupp.Caption = "Supp\r\nTtl";
            this.colTotalSupp.FieldName = "TotalSupp";
            this.colTotalSupp.Name = "colTotalSupp";
            this.colTotalSupp.OptionsColumn.AllowEdit = false;
            this.colTotalSupp.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalSupp.Visible = true;
            this.colTotalSupp.Width = 54;
            // 
            // colTotalItem
            // 
            this.colTotalItem.Caption = "Item\r\nTtl";
            this.colTotalItem.FieldName = "TotalItem";
            this.colTotalItem.Name = "colTotalItem";
            this.colTotalItem.OptionsColumn.AllowEdit = false;
            this.colTotalItem.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTotalItem.Visible = true;
            this.colTotalItem.Width = 51;
            // 
            // colTargetFinishDate
            // 
            this.colTargetFinishDate.Caption = "Target\r\nFinish\r\ndd";
            this.colTargetFinishDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTargetFinishDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTargetFinishDate.FieldName = "TargetFinishDate";
            this.colTargetFinishDate.Name = "colTargetFinishDate";
            this.colTargetFinishDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTargetFinishDate.Visible = true;
            this.colTargetFinishDate.Width = 82;
            // 
            // colStage
            // 
            this.colStage.Caption = "Log\'s\r\nLine\r\nStatus";
            this.colStage.ColumnEdit = this.repositoryItemComboBox_InAdvanceStage;
            this.colStage.FieldName = "Stage";
            this.colStage.Name = "colStage";
            this.colStage.Visible = true;
            this.colStage.Width = 96;
            // 
            // repositoryItemComboBox_InAdvanceStage
            // 
            this.repositoryItemComboBox_InAdvanceStage.AutoHeight = false;
            this.repositoryItemComboBox_InAdvanceStage.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_InAdvanceStage.Name = "repositoryItemComboBox_InAdvanceStage";
            // 
            // colECRcvd
            // 
            this.colECRcvd.Caption = "EC\r\nRcvd\r\n(PvH)";
            this.colECRcvd.FieldName = "ECRcvd";
            this.colECRcvd.Name = "colECRcvd";
            this.colECRcvd.Visible = true;
            // 
            // colSORcvd
            // 
            this.colSORcvd.Caption = "SO\r\nRcvd\r\n(Y/N)";
            this.colSORcvd.FieldName = "SORcvd";
            this.colSORcvd.Name = "colSORcvd";
            this.colSORcvd.Visible = true;
            // 
            // colLogIsFinished
            // 
            this.colLogIsFinished.Caption = "Log Finished (Y/N)";
            this.colLogIsFinished.ColumnEdit = this.repositoryItemImageComboBox__LogFinished;
            this.colLogIsFinished.FieldName = "LogIsFinished";
            this.colLogIsFinished.Name = "colLogIsFinished";
            this.colLogIsFinished.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLogIsFinished.Width = 65;
            // 
            // repositoryItemImageComboBox__LogFinished
            // 
            this.repositoryItemImageComboBox__LogFinished.AutoHeight = false;
            this.repositoryItemImageComboBox__LogFinished.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox__LogFinished.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("N", false, -1)});
            this.repositoryItemImageComboBox__LogFinished.Name = "repositoryItemImageComboBox__LogFinished";
            // 
            // bandSuppRef
            // 
            this.bandSuppRef.Caption = "Supp Info";
            this.bandSuppRef.Columns.Add(this.colSupplier);
            this.bandSuppRef.Columns.Add(this.colSuppRef);
            this.bandSuppRef.Columns.Add(this.colColorShade);
            this.bandSuppRef.MinWidth = 20;
            this.bandSuppRef.Name = "bandSuppRef";
            this.bandSuppRef.Tag = "2";
            this.bandSuppRef.Width = 281;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supp Brief Name";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSupplier.Visible = true;
            this.colSupplier.Width = 70;
            // 
            // colSuppRef
            // 
            this.colSuppRef.Caption = "Supp Item Ref.\r\n(if any)";
            this.colSuppRef.FieldName = "SuppRef";
            this.colSuppRef.Name = "colSuppRef";
            this.colSuppRef.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSuppRef.Visible = true;
            this.colSuppRef.Width = 134;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "Item Clr Shade from Supp\r\n(if any)";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorShade.Visible = true;
            this.colColorShade.Width = 77;
            // 
            // bandCust
            // 
            this.bandCust.Caption = "End Customer Info";
            this.bandCust.Columns.Add(this.colFlag);
            this.bandCust.Columns.Add(this.colEndCustomer);
            this.bandCust.Columns.Add(this.colPONO);
            this.bandCust.Columns.Add(this.colBrandName);
            this.bandCust.Columns.Add(this.colGmtStyleNo);
            this.bandCust.Columns.Add(this.colColorName);
            this.bandCust.Columns.Add(this.colGmtColorName);
            this.bandCust.Columns.Add(this.colGmtColorCode);
            this.bandCust.Columns.Add(this.colItemCode);
            this.bandCust.MinWidth = 20;
            this.bandCust.Name = "bandCust";
            this.bandCust.Tag = "1";
            this.bandCust.Width = 700;
            // 
            // colFlag
            // 
            this.colFlag.Caption = "Flag";
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colEndCustomer
            // 
            this.colEndCustomer.Caption = "End Cust Code No.";
            this.colEndCustomer.FieldName = "EndCustomer";
            this.colEndCustomer.Name = "colEndCustomer";
            this.colEndCustomer.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colEndCustomer.Visible = true;
            this.colEndCustomer.Width = 63;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "Season";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPONO.Visible = true;
            this.colPONO.Width = 64;
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "Brand Name\r\n(if any)";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            this.colBrandName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBrandName.Visible = true;
            this.colBrandName.Width = 135;
            // 
            // colGmtStyleNo
            // 
            this.colGmtStyleNo.Caption = "It\'s Style No.\r\nRelated to this item\r\n(for HBI)";
            this.colGmtStyleNo.FieldName = "GmtStyleNo";
            this.colGmtStyleNo.Name = "colGmtStyleNo";
            this.colGmtStyleNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtStyleNo.Visible = true;
            this.colGmtStyleNo.Width = 198;
            // 
            // colColorName
            // 
            this.colColorName.Caption = "Our Item Clr Name\r\n(if any)";
            this.colColorName.FieldName = "ColorName";
            this.colColorName.Name = "colColorName";
            this.colColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorName.Visible = true;
            this.colColorName.Width = 139;
            // 
            // colGmtColorName
            // 
            this.colGmtColorName.Caption = "Gmt Clr Name\r\n(if any)";
            this.colGmtColorName.FieldName = "GmtColorName";
            this.colGmtColorName.Name = "colGmtColorName";
            this.colGmtColorName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorName.Visible = true;
            this.colGmtColorName.Width = 101;
            // 
            // colGmtColorCode
            // 
            this.colGmtColorCode.Caption = "Gmt Clr Code";
            this.colGmtColorCode.FieldName = "GmtColorCode";
            this.colGmtColorCode.Name = "colGmtColorCode";
            this.colGmtColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colGmtColorCode.Width = 97;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "ItemCode";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colItemCode.Width = 77;
            // 
            // bandPO
            // 
            this.bandPO.Caption = "Color Info";
            this.bandPO.Columns.Add(this.colColorCode);
            this.bandPO.MinWidth = 20;
            this.bandPO.Name = "bandPO";
            this.bandPO.Tag = "2";
            this.bandPO.Visible = false;
            this.bandPO.Width = 225;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Our Item Clr Code\r\n(if any)";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColorCode.Width = 123;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Item\'s spec Processing";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand3});
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = "6";
            this.gridBand2.Visible = false;
            this.gridBand2.Width = 344;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Item\'s spec in BOM - approval (Y/N)?";
            this.gridBand3.Columns.Add(this.colBOMNewItem);
            this.gridBand3.Columns.Add(this.colBOMApproval);
            this.gridBand3.Columns.Add(this.colBOMCompletedDate);
            this.gridBand3.Columns.Add(this.colBOMStatus);
            this.gridBand3.Columns.Add(this.colBOMAuditedBy);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Tag = "6";
            this.gridBand3.Width = 344;
            // 
            // colBOMNewItem
            // 
            this.colBOMNewItem.Caption = "New Item?";
            this.colBOMNewItem.ColumnEdit = this.riicbYN;
            this.colBOMNewItem.FieldName = "BOMNewItem";
            this.colBOMNewItem.Name = "colBOMNewItem";
            this.colBOMNewItem.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBOMNewItem.Width = 83;
            // 
            // riicbYN
            // 
            this.riicbYN.AutoHeight = false;
            this.riicbYN.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riicbYN.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("N", false, -1)});
            this.riicbYN.Name = "riicbYN";
            // 
            // colBOMApproval
            // 
            this.colBOMApproval.Caption = "Y/N?";
            this.colBOMApproval.ColumnEdit = this.riicbYN;
            this.colBOMApproval.FieldName = "BOMApproval";
            this.colBOMApproval.Name = "colBOMApproval";
            this.colBOMApproval.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBOMApproval.Width = 59;
            // 
            // colBOMCompletedDate
            // 
            this.colBOMCompletedDate.Caption = "App/Rej dd";
            this.colBOMCompletedDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colBOMCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colBOMCompletedDate.FieldName = "BOMCompletedDate";
            this.colBOMCompletedDate.Name = "colBOMCompletedDate";
            this.colBOMCompletedDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBOMCompletedDate.Width = 85;
            // 
            // colBOMStatus
            // 
            this.colBOMStatus.Caption = "App/Rej Status";
            this.colBOMStatus.FieldName = "BOMStatus";
            this.colBOMStatus.Name = "colBOMStatus";
            this.colBOMStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBOMStatus.Width = 105;
            // 
            // colBOMAuditedBy
            // 
            this.colBOMAuditedBy.Caption = "Audited by";
            this.colBOMAuditedBy.ColumnEdit = this.riicbAudit;
            this.colBOMAuditedBy.FieldName = "BOMAuditedBy";
            this.colBOMAuditedBy.Name = "colBOMAuditedBy";
            this.colBOMAuditedBy.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBOMAuditedBy.Width = 82;
            // 
            // riicbAudit
            // 
            this.riicbAudit.AutoHeight = false;
            this.riicbAudit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riicbAudit.Name = "riicbAudit";
            // 
            // bandQA
            // 
            this.bandQA.Caption = "Color Item Standard";
            this.bandQA.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandColorStandard1,
            this.bandColorStandard2});
            this.bandQA.MinWidth = 20;
            this.bandQA.Name = "bandQA";
            this.bandQA.Tag = "2";
            this.bandQA.Width = 379;
            // 
            // bandColorStandard1
            // 
            this.bandColorStandard1.Caption = "Swatch / Cutting";
            this.bandColorStandard1.Columns.Add(this.colStdSwatch3D);
            this.bandColorStandard1.Columns.Add(this.colStdSwatchCard);
            this.bandColorStandard1.Columns.Add(this.colBiColor);
            this.bandColorStandard1.Columns.Add(this.colStdSwatchColorNo);
            this.bandColorStandard1.Columns.Add(this.colStdReceiveDate);
            this.bandColorStandard1.MinWidth = 20;
            this.bandColorStandard1.Name = "bandColorStandard1";
            this.bandColorStandard1.Tag = "2";
            this.bandColorStandard1.Width = 379;
            // 
            // colStdSwatch3D
            // 
            this.colStdSwatch3D.Caption = "3D Swatch";
            this.colStdSwatch3D.FieldName = "StdSwatch3D";
            this.colStdSwatch3D.Name = "colStdSwatch3D";
            this.colStdSwatch3D.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStdSwatch3D.Width = 82;
            // 
            // colStdSwatchCard
            // 
            this.colStdSwatchCard.Caption = "Swatch\r\nor\r\nCutting";
            this.colStdSwatchCard.ColumnEdit = this.ricbSwatch;
            this.colStdSwatchCard.FieldName = "StdSwatchCard";
            this.colStdSwatchCard.Name = "colStdSwatchCard";
            this.colStdSwatchCard.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStdSwatchCard.Visible = true;
            this.colStdSwatchCard.Width = 74;
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
            this.colBiColor.Caption = "2+\r\nclr\r\n(Y)?";
            this.colBiColor.ColumnEdit = this.repositoryItemComboBox_BiColor;
            this.colBiColor.FieldName = "BiColor";
            this.colBiColor.Name = "colBiColor";
            this.colBiColor.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBiColor.Visible = true;
            this.colBiColor.Width = 43;
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
            // colStdSwatchColorNo
            // 
            this.colStdSwatchColorNo.Caption = "No.";
            this.colStdSwatchColorNo.FieldName = "StdSwatchColorNo";
            this.colStdSwatchColorNo.Name = "colStdSwatchColorNo";
            this.colStdSwatchColorNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStdSwatchColorNo.Visible = true;
            this.colStdSwatchColorNo.Width = 175;
            // 
            // colStdReceiveDate
            // 
            this.colStdReceiveDate.Caption = "Our Rcvd dd";
            this.colStdReceiveDate.ColumnEdit = this.riPHDate;
            this.colStdReceiveDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colStdReceiveDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStdReceiveDate.FieldName = "StdReceiveDate";
            this.colStdReceiveDate.Name = "colStdReceiveDate";
            this.colStdReceiveDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStdReceiveDate.Visible = true;
            this.colStdReceiveDate.Width = 87;
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
            // bandColorStandard2
            // 
            this.bandColorStandard2.Caption = "Color Info to Supp";
            this.bandColorStandard2.Columns.Add(this.colStdPHCust);
            this.bandColorStandard2.Columns.Add(this.colStdCompleteDate);
            this.bandColorStandard2.MinWidth = 20;
            this.bandColorStandard2.Name = "bandColorStandard2";
            this.bandColorStandard2.Tag = "6";
            this.bandColorStandard2.Visible = false;
            this.bandColorStandard2.Width = 117;
            // 
            // colStdPHCust
            // 
            this.colStdPHCust.Caption = "PH / Cust ?";
            this.colStdPHCust.ColumnEdit = this.ricbPHCust;
            this.colStdPHCust.FieldName = "StdPHCust";
            this.colStdPHCust.Name = "colStdPHCust";
            this.colStdPHCust.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStdPHCust.Width = 85;
            // 
            // ricbPHCust
            // 
            this.ricbPHCust.AutoHeight = false;
            this.ricbPHCust.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbPHCust.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("PH", false, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Cust", true, -1)});
            this.ricbPHCust.Name = "ricbPHCust";
            // 
            // colStdCompleteDate
            // 
            this.colStdCompleteDate.Caption = "dd";
            this.colStdCompleteDate.ColumnEdit = this.riPHDate;
            this.colStdCompleteDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colStdCompleteDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStdCompleteDate.FieldName = "StdCompleteDate";
            this.colStdCompleteDate.Name = "colStdCompleteDate";
            this.colStdCompleteDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colStdCompleteDate.Width = 66;
            // 
            // bandQAProcess
            // 
            this.bandQAProcess.Caption = "Lab Dip Processing";
            this.bandQAProcess.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandLabdip1,
            this.bandLabdip2});
            this.bandQAProcess.MinWidth = 20;
            this.bandQAProcess.Name = "bandQAProcess";
            this.bandQAProcess.Tag = "1";
            this.bandQAProcess.Width = 861;
            // 
            // bandLabdip1
            // 
            this.bandLabdip1.Caption = "Lab Dip Approval Status";
            this.bandLabdip1.Columns.Add(this.colLDOption);
            this.bandLabdip1.Columns.Add(this.colLDSeq);
            this.bandLabdip1.Columns.Add(this.colLDNo);
            this.bandLabdip1.Columns.Add(this.colLDReceiveDate);
            this.bandLabdip1.Columns.Add(this.colLDAppDate);
            this.bandLabdip1.Columns.Add(this.colLDAppStatus);
            this.bandLabdip1.Columns.Add(this.colLDDropDeadDate);
            this.bandLabdip1.MinWidth = 20;
            this.bandLabdip1.Name = "bandLabdip1";
            this.bandLabdip1.Tag = "1";
            this.bandLabdip1.Width = 556;
            // 
            // colLDOption
            // 
            this.colLDOption.Caption = "Handling Option Cde";
            this.colLDOption.ColumnEdit = this.rigluLadDip;
            this.colLDOption.FieldName = "LDOption";
            this.colLDOption.Name = "colLDOption";
            this.colLDOption.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLDOption.Visible = true;
            this.colLDOption.Width = 65;
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
            // colLDSeq
            // 
            this.colLDSeq.Caption = "Appv.\r\nSeq.";
            this.colLDSeq.FieldName = "LDSeq";
            this.colLDSeq.Name = "colLDSeq";
            this.colLDSeq.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLDSeq.Visible = true;
            this.colLDSeq.Width = 52;
            // 
            // colLDNo
            // 
            this.colLDNo.Caption = "L/D\'s Ref.";
            this.colLDNo.FieldName = "LDNo";
            this.colLDNo.Name = "colLDNo";
            this.colLDNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLDNo.Visible = true;
            this.colLDNo.Width = 112;
            // 
            // colLDReceiveDate
            // 
            this.colLDReceiveDate.Caption = "Rcvd dd";
            this.colLDReceiveDate.ColumnEdit = this.riPHDate;
            this.colLDReceiveDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colLDReceiveDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLDReceiveDate.FieldName = "LDReceiveDate";
            this.colLDReceiveDate.Name = "colLDReceiveDate";
            this.colLDReceiveDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLDReceiveDate.Visible = true;
            this.colLDReceiveDate.Width = 71;
            // 
            // colLDAppDate
            // 
            this.colLDAppDate.Caption = "App/Rej dd";
            this.colLDAppDate.ColumnEdit = this.riPHDate;
            this.colLDAppDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colLDAppDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLDAppDate.FieldName = "LDAppDate";
            this.colLDAppDate.Name = "colLDAppDate";
            this.colLDAppDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLDAppDate.Visible = true;
            this.colLDAppDate.Width = 74;
            // 
            // colLDAppStatus
            // 
            this.colLDAppStatus.Caption = "App/Rej Status";
            this.colLDAppStatus.ColumnEdit = this.ricbStatus;
            this.colLDAppStatus.FieldName = "LDAppStatus";
            this.colLDAppStatus.Name = "colLDAppStatus";
            this.colLDAppStatus.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLDAppStatus.Visible = true;
            this.colLDAppStatus.Width = 72;
            // 
            // ricbStatus
            // 
            this.ricbStatus.AutoHeight = false;
            this.ricbStatus.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbStatus.Items.AddRange(new object[] {
            "Hold",
            "Rej.",
            "App.",
            "Cxl"});
            this.ricbStatus.Name = "ricbStatus";
            // 
            // colLDDropDeadDate
            // 
            this.colLDDropDeadDate.Caption = "Drop Dead\r\ndd of L/D\r\n(for ref.)";
            this.colLDDropDeadDate.ColumnEdit = this.riPHDate;
            this.colLDDropDeadDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colLDDropDeadDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLDDropDeadDate.FieldName = "LDDropDeadDate";
            this.colLDDropDeadDate.Name = "colLDDropDeadDate";
            this.colLDDropDeadDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLDDropDeadDate.Visible = true;
            this.colLDDropDeadDate.Width = 110;
            // 
            // bandLabdip2
            // 
            this.bandLabdip2.Caption = "Lab Dip Comment";
            this.bandLabdip2.Columns.Add(this.colHaveColoristComm);
            this.bandLabdip2.Columns.Add(this.colColoristRemark);
            this.bandLabdip2.Columns.Add(this.colBOMFollowby);
            this.bandLabdip2.Columns.Add(this.colHaveCustComm);
            this.bandLabdip2.Columns.Add(this.colCustRemark);
            this.bandLabdip2.MinWidth = 20;
            this.bandLabdip2.Name = "bandLabdip2";
            this.bandLabdip2.Tag = 1;
            this.bandLabdip2.Width = 305;
            // 
            // colHaveColoristComm
            // 
            this.colHaveColoristComm.Caption = "Y/N";
            this.colHaveColoristComm.ColumnEdit = this.riicbYN;
            this.colHaveColoristComm.FieldName = "HaveColoristComm";
            this.colHaveColoristComm.Name = "colHaveColoristComm";
            this.colHaveColoristComm.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHaveColoristComm.Width = 44;
            // 
            // colColoristRemark
            // 
            this.colColoristRemark.Caption = "Comment for status";
            this.colColoristRemark.ColumnEdit = this.riMemo;
            this.colColoristRemark.FieldName = "ColoristRemark";
            this.colColoristRemark.Name = "colColoristRemark";
            this.colColoristRemark.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colColoristRemark.Visible = true;
            this.colColoristRemark.Width = 259;
            // 
            // riMemo
            // 
            this.riMemo.Name = "riMemo";
            // 
            // colBOMFollowby
            // 
            this.colBOMFollowby.Caption = "Follow\r\nup by\r\n?";
            this.colBOMFollowby.FieldName = "BOMFollowby";
            this.colBOMFollowby.Name = "colBOMFollowby";
            this.colBOMFollowby.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colBOMFollowby.Visible = true;
            this.colBOMFollowby.Width = 46;
            // 
            // colHaveCustComm
            // 
            this.colHaveCustComm.Caption = "Y/N?";
            this.colHaveCustComm.ColumnEdit = this.riicbYN;
            this.colHaveCustComm.FieldName = "HaveCustComm";
            this.colHaveCustComm.Name = "colHaveCustComm";
            this.colHaveCustComm.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colHaveCustComm.Width = 50;
            // 
            // colCustRemark
            // 
            this.colCustRemark.Caption = "End Cust/Supp Comment";
            this.colCustRemark.ColumnEdit = this.riMemo;
            this.colCustRemark.FieldName = "CustRemark";
            this.colCustRemark.Name = "colCustRemark";
            this.colCustRemark.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCustRemark.Width = 161;
            // 
            // bandTransfer
            // 
            this.bandTransfer.Caption = "Data Transfer to L.2\r\n(one take)";
            this.bandTransfer.Columns.Add(this.colTransitCode);
            this.bandTransfer.Columns.Add(this.colTransitDate);
            this.bandTransfer.MinWidth = 20;
            this.bandTransfer.Name = "bandTransfer";
            this.bandTransfer.Tag = 2;
            this.bandTransfer.Width = 150;
            // 
            // colTransitCode
            // 
            this.colTransitCode.Caption = "Cde";
            this.colTransitCode.ColumnEdit = this.ribeTransit;
            this.colTransitCode.FieldName = "TransitCode";
            this.colTransitCode.Name = "colTransitCode";
            this.colTransitCode.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitCode.Visible = true;
            // 
            // ribeTransit
            // 
            this.ribeTransit.AutoHeight = false;
            this.ribeTransit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribeTransit.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.ribeTransit.Name = "ribeTransit";
            this.ribeTransit.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeTransit_ButtonClick);
            // 
            // colTransitDate
            // 
            this.colTransitDate.Caption = "dd";
            this.colTransitDate.ColumnEdit = this.riPHDate;
            this.colTransitDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTransitDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTransitDate.FieldName = "TransitDate";
            this.colTransitDate.Name = "colTransitDate";
            this.colTransitDate.OptionsColumn.AllowEdit = false;
            this.colTransitDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colTransitDate.Visible = true;
            // 
            // BandOtherInfor
            // 
            this.BandOtherInfor.Caption = "Coordinator";
            this.BandOtherInfor.Columns.Add(this.colTeam);
            this.BandOtherInfor.Columns.Add(this.colPurchaseOfficer);
            this.BandOtherInfor.MinWidth = 20;
            this.BandOtherInfor.Name = "BandOtherInfor";
            this.BandOtherInfor.Tag = "1";
            this.BandOtherInfor.Width = 84;
            // 
            // colTeam
            // 
            this.colTeam.Caption = "Division";
            this.colTeam.FieldName = "Team";
            this.colTeam.Name = "colTeam";
            this.colTeam.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colPurchaseOfficer
            // 
            this.colPurchaseOfficer.Caption = " ";
            this.colPurchaseOfficer.FieldName = "PurchaseOfficer";
            this.colPurchaseOfficer.Name = "colPurchaseOfficer";
            this.colPurchaseOfficer.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colPurchaseOfficer.Visible = true;
            this.colPurchaseOfficer.Width = 84;
            // 
            // colTransited
            // 
            this.colTransited.Caption = "Transited";
            this.colTransited.FieldName = "Transited";
            this.colTransited.Name = "colTransited";
            this.colTransited.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "ProjectNo";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colProjectNo.Width = 77;
            // 
            // repositoryItemCheckEdit_LogFinished
            // 
            this.repositoryItemCheckEdit_LogFinished.AutoHeight = false;
            this.repositoryItemCheckEdit_LogFinished.Name = "repositoryItemCheckEdit_LogFinished";
            this.repositoryItemCheckEdit_LogFinished.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // riMemoEx
            // 
            this.riMemoEx.AutoHeight = false;
            this.riMemoEx.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riMemoEx.Name = "riMemoEx";
            // 
            // riteUpper
            // 
            this.riteUpper.AutoHeight = false;
            this.riteUpper.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.riteUpper.Name = "riteUpper";
            // 
            // bandLadDip
            // 
            this.bandLadDip.Caption = "Lab Dip Approval Status";
            this.bandLadDip.Name = "bandLadDip";
            this.bandLadDip.Width = 409;
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
            // gridBand11
            // 
            this.gridBand11.Caption = "RC";
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Width = 65;
            // 
            // popupMenu1
            // 
            this.popupMenu1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCloneAsReplace, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCloneAsNew),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopySingle, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopyToClipboard)});
            this.popupMenu1.Manager = this.objbarManager;
            this.popupMenu1.Name = "popupMenu1";
            // 
            // btnCloneAsReplace
            // 
            this.btnCloneAsReplace.Caption = "Clone";
            this.btnCloneAsReplace.Id = 21;
            this.btnCloneAsReplace.ImageIndex = 4;
            this.btnCloneAsReplace.Name = "btnCloneAsReplace";
            this.btnCloneAsReplace.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCloneAsReplace_ItemClick);
            // 
            // btnCloneAsNew
            // 
            this.btnCloneAsNew.Caption = "Clone to New line";
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
            // btnCopyToClipboard
            // 
            this.btnCopyToClipboard.Caption = "Copy To Clipboard";
            this.btnCopyToClipboard.Id = 32;
            this.btnCopyToClipboard.Name = "btnCopyToClipboard";
            this.btnCopyToClipboard.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCopyToClipboard_ItemClick);
            // 
            // btnPrintShip
            // 
            this.btnPrintShip.Caption = "Shipment Detail";
            this.btnPrintShip.Id = 17;
            this.btnPrintShip.ImageIndex = 0;
            this.btnPrintShip.Name = "btnPrintShip";
            // 
            // btnPrintPO
            // 
            this.btnPrintPO.Caption = "PO Form";
            this.btnPrintPO.Id = 20;
            this.btnPrintPO.ImageIndex = 0;
            this.btnPrintPO.Name = "btnPrintPO";
            // 
            // btnWOReport
            // 
            this.btnWOReport.Caption = "POPC - WO Review";
            this.btnWOReport.Id = 22;
            this.btnWOReport.ImageIndex = 3;
            this.btnWOReport.Name = "btnWOReport";
            // 
            // btnRWOReport
            // 
            this.btnRWOReport.Caption = "POPC - RWO Review";
            this.btnRWOReport.Id = 23;
            this.btnRWOReport.ImageIndex = 3;
            this.btnRWOReport.Name = "btnRWOReport";
            // 
            // btnClone
            // 
            this.btnClone.Caption = "Clone";
            this.btnClone.Id = 25;
            this.btnClone.ImageIndex = 1;
            this.btnClone.Name = "btnClone";
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
            // btnSupplement
            // 
            this.btnSupplement.Caption = "Supplement sheet";
            this.btnSupplement.Id = 27;
            this.btnSupplement.Name = "btnSupplement";
            this.btnSupplement.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementSheet_ItemClick);
            // 
            // btnInAdvance
            // 
            this.btnInAdvance.Caption = "Color Control";
            this.btnInAdvance.Id = 28;
            this.btnInAdvance.Name = "btnInAdvance";
            this.btnInAdvance.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel_ItemClick);
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "POPC Level 1";
            this.barSubItem2.Id = 29;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnInAdvance),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplement),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSpec)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnSpec
            // 
            this.btnSpec.Caption = "Item\'s Spec in BOM";
            this.btnSpec.Id = 31;
            this.btnSpec.Name = "btnSpec";
            this.btnSpec.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSpec_ItemClick);
            // 
            // btnSupplementSheet
            // 
            this.btnSupplementSheet.Caption = "Supplement Sheet";
            this.btnSupplementSheet.Id = 30;
            this.btnSupplementSheet.Name = "btnSupplementSheet";
            this.btnSupplementSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementSheet_ItemClick);
            // 
            // repositoryItemCheckEditOnlyShowRej
            // 
            this.repositoryItemCheckEditOnlyShowRej.AutoHeight = false;
            this.repositoryItemCheckEditOnlyShowRej.Name = "repositoryItemCheckEditOnlyShowRej";
            this.repositoryItemCheckEditOnlyShowRej.ValueGrayed = false;
            // 
            // barEditItem_OnlyShowRej
            // 
            this.barEditItem_OnlyShowRej.Caption = "Dashboard";
            this.barEditItem_OnlyShowRej.Edit = this.repositoryItemComboBox2;
            this.barEditItem_OnlyShowRej.Id = 36;
            this.barEditItem_OnlyShowRej.Name = "barEditItem_OnlyShowRej";
            this.barEditItem_OnlyShowRej.Width = 120;
            this.barEditItem_OnlyShowRej.EditValueChanged += new System.EventHandler(this.barEditItem_OnlyShowRej_EditValueChanged);
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "",
            "1# Red Data records"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // POPCInAdvanceForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POPCInAdvanceForm";
            this.Size = new System.Drawing.Size(2990, 400);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.toolTipController1.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_InAdvanceStage)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox__LogFinished)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbYN)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbAudit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatch)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_BiColor)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbPHCust)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbStatus)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeTransit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_LogFinished)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riMemoEx)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riteUpper)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEditOnlyShowRej)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            this.ResumeLayout(false);

        }

        public POPCInAdvanceForm()
        {
            InitializeComponent();

            POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader1);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader1);

            AssignDataToLookupEdit();
            //_firstLoad = false;

            ricbStatus.Items.Clear();
            PHPlatformMiscDataContext db = ContextBuilder.CreateContext<PHPlatformMiscDataContext>();
            var lists = db.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.Status").Select(p => p.DataName).ToList();
            ricbStatus.Items.AddRange(lists);

            repositoryItemComboBox_InAdvanceStage.Items.Clear();
            var InAdvanceStageList = db.Misc_DataDictionaries.Where(p => p.DataType == "PH.POPC.InAdvanceStage").Select(p => p.DataName).ToList();
            repositoryItemComboBox_InAdvanceStage.Items.AddRange(InAdvanceStageList);

        }

        string _Param;
        public POPCInAdvanceForm(string AParam)
            : this()
        {
            _Param = AParam;
        }


        //private bool _firstLoad;
        public override void DataBind()
        {
            base.DataBind();

            POPCDataContext context = ContextBuilder.CreateContext<POPCDataContext>();
            //context.CommandTimeout = 1000;
            this.DataContext = context;

            //WIP Complete
            IQueryable<POInAdvance> lists = context.POInAdvances.Where(p => p.CreateDate >= DateTime.Now.Date.AddYears(-1));
            //if (_Param == "WIP")
            //{
            //    lists = lists.Where(p => !(p.LogIsFinished ?? false));
            //}
            //else if (_Param == "Complete")
            //{
            //    lists = lists.Where(p => (p.LogIsFinished ?? false));
            //}

            //this.BindingSource.DataSource = lists.OrderByDescending(p => p.LogNo).ThenBy(p => p.LineSeqNo).ThenBy(p => p.StdReceiveDate).ThenBy(p => p.LDReceiveDate).ThenBy(p => p.LDSeq);
            this.BindingSource.DataSource = lists.OrderByDescending(p => p.LogNo).ThenBy(p => p.LineSeqNo).ThenBy(p => p.StdReceiveDate).ThenBy(p => p.LDSeq);


            //this.BindingSource.DataSource = typeof(PH.POPC.BO.POInAdvance);
            //this.AllowGridEdit = true;
            //this.AllowAddRow = false;
            //this.RowChangeAutoSave = true;
            this.bandedGridView1.OptionsBehavior.Editable = true;
            // this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;



            //DataQueryParameter param = new DataQueryParameter();
            //param.BoType = typeof(PH.POPC.BO.POInAdvance);

            //param.QueryType = QueryType.CommandText;
            //param.QueryText = "select * from POInAdvance order by LogNo desc, LineSeqNo";

            //param.WarnRecord = -1;
            //this.StartEnquiry(param);



            // Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");

            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();

            //context.CommandTimeout = 1000;
            //this.DataContext = context;

            //if (!_firstLoad)
            //{
            //    var aa = (from c in context.POInAdvances
            //              where c.ID == Guid.Empty
            //              select c);

            //    this.BindingSource.DataSource = aa;
            //    _firstLoad = true;
            //}
            //this.AllowAddRow = true;
            //this.AllowGridEdit = true;
            //this.RowChangeAutoSave = true;

            //AssignDataToLookupEdit();
            //_loadfinish = true;

            InputBox.InitImageComb(this.riicbAudit, "PH.POPC.BOMAuditedby");
        }


        protected override void OnClickAddNew()
        {
            //base.OnClickAddNew();

            POPCInAdvanceAddLogForm frmAddLog = new POPCInAdvanceAddLogForm();
            if (frmAddLog.ShowDialog() == DialogResult.OK)
            {
                string NewLogNo = frmAddLog.GetNewLogNo();
                for (int i = 1; i <= frmAddLog.LineCount; i++)
                {
                    POInAdvance obj = this.BindingSource.AddNew() as POInAdvance;
                    obj.LogNo = NewLogNo;
                    obj.LineSeqNo = i;
                    obj.PurchaseOfficer = frmAddLog.Coordinator;
                    obj.TargetFinishDate = frmAddLog.TargetFinishDate;
                    obj.LogIsFinished = false;
                    obj.Stage = frmAddLog.Stage;
                }
                this.BindingSource.EndEdit();
                MessageBox.Show(string.Format("Log#: {0} has been created!", NewLogNo), "Hint", MessageBoxButtons.OK, MessageBoxIcon.Information);
                DataContext.SubmitChanges();
                //this.DataBind();
            }

        }


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

        #region Grid Event

        //protected override void ProcessGridView()
        //{
        //    base.ProcessGridView();
        //    this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
        //}


        private void bandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {
            PH.POPC.BO.POInAdvance currLot = this.BindingSource.Current as PH.POPC.BO.POInAdvance;
            if (currLot == null) return;

            if (bandedGridView1.FocusedColumn.FieldName == "Stage")
            {
                e.Cancel = false;
            }
            else
            {
                e.Cancel = (currLot.Transited ?? false) && (bandedGridView1.FocusedColumn.FieldName != "LogIsFinished");
            }

            //if (bandedGridView1.FocusedColumn.FieldName == "ReceiveDate" || bandedGridView1.FocusedColumn.FieldName == "Qty")
            //{
            //    bool bReadOnly = (currLot.StockInConfirmed ?? false) && !currLot.IsOutstanding;
            //    e.Cancel = bReadOnly;
            //}
        }
        //private void objListGridControl_Load(object sender, EventArgs e)
        //{
        //    this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;

        //}


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

                PH.POPC.BO.POInAdvance currLot = this.BindingSource.Current as PH.POPC.BO.POInAdvance;
                if (currLot == null) return;

                #region Copy Menu

                btnCloneAsReplace.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                btnCloneAsNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
                btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

                DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
                if (focusCol != null)
                {
                    #region Copy
                    string s = focusCol.Caption;
                    s = s.Replace("\r\n", " ");
                    if (focusCol.OwnerBand != bandTransfer && focusCol != colLDSeq)
                        btnCopySingle.Caption = string.Format("Copy - {0}", s);
                    else
                        btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;


                    #endregion

                    #region Clone

                    if (focusCol.OwnerBand == bandLabdip2)
                    {
                        btnCloneAsReplace.Caption = "Clone - L/D Quality Comment";
                    }
                    else if (focusCol.OwnerBand == bandLabdip1)
                    {
                        btnCloneAsReplace.Caption = "Clone - Lab Dip Approval Status";
                    }
                    else if (focusCol.OwnerBand == bandColorStandard2)
                    {
                        btnCloneAsReplace.Caption = "Clone - Color Info to Supp";
                    }
                    else if (focusCol.OwnerBand == bandColorStandard1)
                    {
                        btnCloneAsReplace.Caption = "Clone - 3D Swatch / Std Swatch Card";
                    }
                    else
                        btnCloneAsReplace.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

                    if (bandedGridView1.SelectedRowsCount <= 1)
                    {
                        //btnClone.Caption = btnClone.Caption.Replace("Copy", "Modify");
                        btnCloneAsReplace.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    }
                    #endregion
                }
                else
                {
                    btnCloneAsReplace.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    this.btnCloneAsNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                    btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                }

                //if (bandedGridView1.SelectedRowsCount <= 1)
                //    btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

                #endregion

                popupMenu1.ShowPopup(Control.MousePosition);
            }
        }

        #endregion

        #region Print - PO Form & Shipment Detail

        private void btnLevel_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.InAdvance);
        }
        private void btnSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.InAdvance);
        }
        private void btnSpec_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.ItemSpec, POPCPrintLevel.InAdvance);
        }
        #endregion

        #region Clone & Copy

        bool _iscopy;
        bool _isclone;
        //clone
        private void btnCloneAsReplace_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            _isclone = true;
            CloneData();//replace
            _isclone = false;
        }
        private void btnCloneAsNew_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            _isclone = true;
            CloneAsNewData();
            _isclone = false;
        }
        private void CloneData()
        {
            PH.POPC.BO.POInAdvance currLot = this.BindingSource.Current as PH.POPC.BO.POInAdvance;
            if (currLot == null) return;

            //string caption = "Copy Data";
            //if (bandedGridView1.SelectedRowsCount <= 1)
            //    caption = "Modify Data";

            string hint = this.bandedGridView1.FocusedColumn.Caption;
            //string defalutValue = "";

            //DevExpress.XtraGrid.Columns.GridColumn focusCol = this.bandedGridView1.FocusedColumn;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;

            CopyData(currLot, focusCol);

        }
        private void CloneAsNewData()
        {
            PH.POPC.BO.POInAdvance d = this.BindingSource.Current as PH.POPC.BO.POInAdvance;
            if (d == null) return;



            if (MessageBox.Show(string.Format("Do you want to Clone as New line?"), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
                return;

            int currHandle = bandedGridView1.FocusedRowHandle;
            this.CreateWaitDialog("Clone data...", "Please waiting");
            this.bandedGridView1.BeginUpdate();
            try
            {
                PH.POPC.BO.POInAdvance currLot = this.BindingSource.AddNew() as PH.POPC.BO.POInAdvance;

                #region clone action

                // d.ID = Guid.NewGuid();
                currLot.ID = Guid.NewGuid();

                currLot.EndCustomer = d.EndCustomer;
                currLot.BrandName = d.BrandName;
                currLot.GmtStyleNo = d.GmtStyleNo;
                currLot.Supplier = d.Supplier;
                currLot.SuppRef = d.SuppRef;
                currLot.GmtColorCode = d.GmtColorCode;
                currLot.GmtColorName = d.GmtColorName;
                currLot.ColorCode = d.ColorCode;
                currLot.ColorName = d.ColorName;
                currLot.ColorShade = d.ColorShade;

                //currLot.StdSwatch3D = d.StdSwatch3D;
                currLot.StdSwatchCard = d.StdSwatchCard;
                currLot.StdSwatchColorNo = d.StdSwatchColorNo;
                currLot.StdReceiveDate = d.StdReceiveDate;

                currLot.StdPHCust = d.StdPHCust;
                currLot.StdCompleteDate = d.StdCompleteDate;

                currLot.LDOption = d.LDOption;
                currLot.LDNo = d.LDNo;
                //currLot.LDSeq = d.LDSeq;
                currLot.LDReceiveDate = d.LDReceiveDate;
                currLot.LDAppDate = d.LDAppDate;
                currLot.LDAppStatus = d.LDAppStatus;
                currLot.LDDropDeadDate = d.LDDropDeadDate;

                currLot.ColoristRemark = d.ColoristRemark;
                currLot.CustRemark = d.CustRemark;

                //由David增加以下字段 2022-05-11
                currLot.LogNo = d.LogNo;
                currLot.LineSeqNo = d.LineSeqNo;
                currLot.TotalStyle = d.TotalStyle;
                currLot.TotalSupp = d.TotalSupp;
                currLot.TotalItem = d.TotalItem;
                currLot.TargetFinishDate = d.TargetFinishDate;
                currLot.LogIsFinished = d.LogIsFinished;


                this.BindingSource.EndEdit();
                this.DataContext.SubmitChanges();

                //PH.POPC.BO.POPCDataContext _curcontext = this.DataContext as PH.POPC.BO.POPCDataContext;
                //_curcontext.GetTable<PH.POPC.BO.POInAdvance>().InsertOnSubmit(currLot);
                //_curcontext.SubmitChanges();

                #endregion

            }
            finally
            {
                ReleaseWaitDialog();
                //this.bandedGridView1.FocusedRowHandle = currHandle;
                this.bandedGridView1.EndUpdate();
            }

            //this.SaveData();

        }
        #region Clone action ,  relace

        private void CopyData(POInAdvance d, DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol)
        {
            if (MessageBox.Show(string.Format("Do you want to Clone {0}?", focusCol.OwnerBand.Caption), "Question", MessageBoxButtons.YesNo, MessageBoxIcon.Question) != DialogResult.Yes)
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
                        POInAdvance currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POInAdvance;
                        if (currLot == null) continue;

                        //當前這條不用Copy
                        if (d.ID == currLot.ID)
                            continue;

                        #region clone action
                        if (focusCol.OwnerBand == bandLabdip1)
                        {
                            //currLot.StdSwatch3D = d.StdSwatch3D;
                            currLot.StdSwatchCard = d.StdSwatchCard;
                            currLot.StdSwatchColorNo = d.StdSwatchColorNo;
                            currLot.StdReceiveDate = d.StdReceiveDate;
                        }
                        else if (focusCol.OwnerBand == bandLabdip2)
                        {
                            currLot.StdPHCust = d.StdPHCust;
                            currLot.StdCompleteDate = d.StdCompleteDate;
                        }
                        else if (focusCol.OwnerBand == bandColorStandard1)
                        {
                            currLot.LDOption = d.LDOption;
                            currLot.LDNo = d.LDNo;
                            //currLot.LDSeq = d.LDSeq;
                            currLot.LDReceiveDate = d.LDReceiveDate;
                            currLot.LDAppDate = d.LDAppDate;
                            currLot.LDAppStatus = d.LDAppStatus;
                            currLot.LDDropDeadDate = d.LDDropDeadDate;
                        }
                        else if (focusCol.OwnerBand == bandColorStandard2)
                        {
                            currLot.ColoristRemark = d.ColoristRemark;
                            currLot.CustRemark = d.CustRemark;
                        }
                        //currLot.EndCustomer = svalue;
                        //currLot.BrandName = svalue;
                        //currLot.GmtStyleNo = svalue;
                        //currLot.Supplier = svalue;
                        //currLot.SuppRef = svalue;
                        //currLot.GmtColorCode = svalue;
                        //currLot.GmtColorName = svalue;
                        //currLot.ColorCode = svalue;
                        //currLot.ColorName = svalue;
                        //currLot.ColorShade = svalue;                      
                        this.DataContext.SubmitChanges();

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

            // this.SaveData();

        }

        #endregion


        #region Copy

        //Copy Single column
        private void btnCopySingle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            _iscopy = true;
            CopySingleColumnData();
            _iscopy = false;
        }
        private void CopySingleColumnData()
        {
            int currHandle = bandedGridView1.FocusedRowHandle;

            PH.POPC.BO.POInAdvance currLot = this.BindingSource.Current as PH.POPC.BO.POInAdvance;
            if (currLot == null) return;

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

            if (focusCol == colEndCustomer) defalutValue = currLot.EndCustomer;
            else if (focusCol == colBrandName) defalutValue = currLot.BrandName;
            else if (focusCol == colGmtStyleNo) defalutValue = currLot.GmtStyleNo;
            else if (focusCol == colSupplier) defalutValue = currLot.Supplier;
            else if (focusCol == colSuppRef) defalutValue = currLot.SuppRef;
            else if (focusCol == colGmtColorCode) defalutValue = currLot.GmtColorCode;
            else if (focusCol == colGmtColorName) defalutValue = currLot.GmtColorName;
            else if (focusCol == colColorCode) defalutValue = currLot.ColorCode;
            else if (focusCol == colColorName) defalutValue = currLot.ColorName;
            else if (focusCol == colColorShade) defalutValue = currLot.ColorShade;
            //else if (focusCol == colStdSwatch3D) defalutValue = currLot.StdSwatch3D;
            else if (focusCol == colStdSwatchCard) defalutValue = currLot.StdSwatchCard;
            else if (focusCol == colStdSwatchColorNo) defalutValue = currLot.StdSwatchColorNo;
            else if (focusCol == colStdReceiveDate) { defalutValue = currLot.StdReceiveDate; tc = TypeCode.DateTime; }
            else if (focusCol == colStdPHCust) { defalutValue = currLot.StdPHCust; tc = TypeCode.Boolean; }
            else if (focusCol == colStdCompleteDate) { defalutValue = currLot.StdCompleteDate; tc = TypeCode.DateTime; }
            else if (focusCol == colLDOption) defalutValue = currLot.LDOption;
            else if (focusCol == colLDNo) defalutValue = currLot.LDNo;
            //else if (focusCol == colLDSeq) defalutValue = currLot.LDSeq;
            else if (focusCol == colLDReceiveDate) { defalutValue = currLot.LDReceiveDate; tc = TypeCode.DateTime; }
            else if (focusCol == colLDAppDate) { defalutValue = currLot.LDAppDate; tc = TypeCode.DateTime; }
            else if (focusCol == colLDAppStatus) defalutValue = currLot.LDAppStatus;
            else if (focusCol == colLDDropDeadDate) { defalutValue = currLot.LDDropDeadDate; tc = TypeCode.DateTime; }
            else if (focusCol == colColoristRemark) defalutValue = currLot.ColoristRemark;
            else if (focusCol == colCustRemark) defalutValue = currLot.CustRemark;

            #endregion



            #endregion

            #region InputBox

            if (InputBox.Show(focusCol.FieldName, caption, hint, null, isColorShade, tc, ref defalutValue))
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

                            currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POInAdvance;
                            if (currLot == null) continue;

                            #region Normal text

                            if (focusCol == colEndCustomer) currLot.EndCustomer = svalue;
                            else if (focusCol == colBrandName) currLot.BrandName = svalue;
                            else if (focusCol == colGmtStyleNo) currLot.GmtStyleNo = svalue;
                            else if (focusCol == colSupplier) currLot.Supplier = svalue;
                            else if (focusCol == colSuppRef) currLot.SuppRef = svalue;
                            else if (focusCol == colGmtColorCode) currLot.GmtColorCode = svalue;
                            else if (focusCol == colGmtColorName) currLot.GmtColorName = svalue;
                            else if (focusCol == colColorCode) currLot.ColorCode = svalue;
                            else if (focusCol == colColorName) currLot.ColorName = svalue;
                            else if (focusCol == colColorShade) currLot.ColorShade = svalue;
                            //else if (focusCol == colStdSwatch3D) currLot.StdSwatch3D = svalue;
                            else if (focusCol == colStdSwatchCard) currLot.StdSwatchCard = svalue;
                            else if (focusCol == colStdSwatchColorNo) currLot.StdSwatchColorNo = svalue;
                            else if (focusCol == colStdReceiveDate) { currLot.StdReceiveDate = dt; }
                            else if (focusCol == colStdPHCust) { currLot.StdPHCust = b; }
                            else if (focusCol == colStdCompleteDate) { currLot.StdCompleteDate = dt; }
                            else if (focusCol == colLDOption) currLot.LDOption = svalue;
                            else if (focusCol == colLDNo) currLot.LDNo = svalue;
                            //else if (focusCol == colLDSeq)   currLot.LDSeq =  svalue;
                            else if (focusCol == colLDReceiveDate) { currLot.LDReceiveDate = dt; }
                            else if (focusCol == colLDAppDate) { currLot.LDAppDate = dt; }
                            else if (focusCol == colLDAppStatus) currLot.LDAppStatus = svalue;
                            else if (focusCol == colLDDropDeadDate) { currLot.LDDropDeadDate = dt; }
                            else if (focusCol == colColoristRemark) currLot.ColoristRemark = svalue;
                            else if (focusCol == colCustRemark) currLot.CustRemark = svalue;

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
            if (column == colLDOption)
            {
                var aa = (from a in _dips
                          where a.DataCode == currLot.LadDipOption
                          select a).FirstOrDefault<PH.Platform.Misc.BO.Misc_DataDictionary>();
                if (aa != null)
                    return string.Format("{0}). {1}", aa.DataCode, aa.Description);
            }
            return "";
            //return (column == colBulkOption) ? (currLot.BulkOption.HasValue ? BulkSS[currLot.BulkOption.Value] : "")
            //    : (column == colLadDipOption ? (currLot.LadDipOption.HasValue ? LadDip[currLot.LadDipOption.Value] : "") : "");

        }
        #endregion

        #region Lookup Combox
        IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> _dips;

        private void AssignDataToLookupEdit()
        {
            DicList list = new DicList();


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

        //    opts.Columns.AddNewColumns = false; //default is true
        //    opts.Columns.RemoveOldColumns = true; //default is true
        //    return opts;
        //}

        //bool _loadfinish;
        //protected override void OnClickFind()
        //{

        //    base.OnClickFind();
        //    _loadfinish = true;
        //}

        //protected override void OnClickFind()
        //{

        //    base.OnClickFind();

        //    //由David加入以下代码，用于控制Layout的颜色
        //    BandLogInfo.Tag = 1;
        //    bandCust.Tag = 2;
        //    bandSuppRef.Tag = 1;
        //    bandPO.Tag = 2;
        //    bandQA.Tag = 2;
        //    bandQAProcess.Tag = 1;
        //    BandOtherInfor.Tag = 1;

        //    bandColorStandard1.Tag = 2;
        //    bandColorStandard2.Tag = 2;
        //    bandTransfer.Tag = 2;
        //}

        public override void SaveData()
        {

            ////if (_loadfinish && !_iscopy && !_isclone)
            if (!_iscopy && !_isclone)
            {
                PH.POPC.BO.POPCDataContext _curcontext = this.DataContext as PH.POPC.BO.POPCDataContext;
                PH.POPC.BO.POInAdvance objnew = this.BindingSource.Current as PH.POPC.BO.POInAdvance;

                if (!_curcontext.GetTable<PH.POPC.BO.POInAdvance>().Contains(objnew))
                {
                    _curcontext.GetTable<PH.POPC.BO.POInAdvance>().InsertOnSubmit(objnew);

                }
                _curcontext.SubmitChanges();
                if (_isclicksave)
                    this.ShowMessage(PLATFORMSIDEPROGRAMID, PLATFORMFILEID, PLATFORMNAME, "msgSavesucc", "msgSavesucc");
            }

        }

        bool _isclicksave;
        public override void OnClickSave()
        {
            _isclicksave = true;
            base.OnClickSave();
            _isclicksave = false;
        }

        private void ribeTransit_ButtonClick(object sender, ButtonPressedEventArgs e)
        {
            PH.POPC.BO.POInAdvance currLot = this.BindingSource.Current as PH.POPC.BO.POInAdvance;
            if (currLot == null) return;

            currLot.TransitCode = string.Format("L{0:yyyyMMdd-HHmmss}", DateTime.Now);
            base.OnClickSave();
        }

        private void btnCopyToClipboard_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PHClipboard.CellsCopyToClipboard(this.bandedGridView1);
        }



        private void bandedGridView1_ValidateRow(object sender, ValidateRowEventArgs e)
        {
            (this.BindingSource.Current as POInAdvance).Save(DataContext, BindingSource);
            DataContext.SubmitChanges();
        }

        private void objListGridControl_Load(object sender, EventArgs e)
        {
            CalOddEvenRowFlag();
            BandedGridViewHelper.SetGridViewBackColor(bandedGridView1);
            this.InitFormNavigator();
        }

        private void objListGridControl_Paint(object sender, PaintEventArgs e)
        {
            CalOddEvenRowFlag();
        }

        void CalOddEvenRowFlag()
        {
            string SaveOddEventRowFlag = "";
            string SaveLogNo = "0";
            int? SaveLineSeqNo = 0;
            for (int i = 0; i < bandedGridView1.RowCount; i++)
            {
                POInAdvance obj = bandedGridView1.GetRow(i) as POInAdvance;
                if (obj == null) continue;
                if (i == 0)
                {
                    SaveOddEventRowFlag = "1";
                    obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    SaveLogNo = obj.LogNo;
                    SaveLineSeqNo = obj.LineSeqNo;
                }
                else
                {
                    if (obj.LogNo == SaveLogNo && obj.LineSeqNo == SaveLineSeqNo)
                    {
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                    }
                    else
                    {
                        SaveOddEventRowFlag = SaveOddEventRowFlag == "1" ? "0" : "1";
                        obj.OddEvenRowFlag = SaveOddEventRowFlag;
                        SaveLogNo = obj.LogNo;
                        SaveLineSeqNo = obj.LineSeqNo;
                    }
                }
            }
        }

        object SaveBindingSource = null;
        private void barEditItem_OnlyShowRej_EditValueChanged(object sender, EventArgs e)
        {
            try
            {
                if (SaveBindingSource == null)
                {
                    SaveBindingSource = this.BindingSource.DataSource;
                }

                this.Cursor = Cursors.WaitCursor;

                //                Not yet Appv.
                //1.1# Red Data records b4 SO Issue
                //1.2# Red Data records b4 PO issue

                //B4 PO issue
                //B4 SO issue

                if (barEditItem_OnlyShowRej.EditValue.ToString() == "1# Red Data records")
                {
                    //IEnumerable<POInAdvance> lists = this.BindingSource.DataSource as IEnumerable<POInAdvance>;
                    IEnumerable<POInAdvance> lists = bandedGridView1.FilteredList().Cast<POInAdvance>().Where(p => p.Stage != "Log's line Cxl" && p.Stage != "Log Finished");

                    foreach (var obj in lists)
                    {
                        //var MaxObj = lists.Where(p => p.LogNo == obj.LogNo && p.LineSeqNo == obj.LineSeqNo && p.ColorShade == obj.ColorShade).OrderByDescending(p => p.LDSeq).FirstOrDefault();
                        //add by shulin 2022-06-02 "取消ColorShade"
                        var MaxObj = lists.Where(p => p.LogNo == obj.LogNo && p.LineSeqNo == obj.LineSeqNo).OrderByDescending(p => p.LDSeq).FirstOrDefault();
                        if (MaxObj != null)
                        {
                            var MaxLDSeqObjAppStatus = MaxObj.LDAppStatus;
                            obj.IsRejRecord = !string.IsNullOrEmpty(MaxObj.LDAppStatus) && !AppvAndNils.Contains(MaxLDSeqObjAppStatus.ToUpper());
                        }

                    }
                    //this.BindingSource.DataSource = lists.Where(p => p.IsRejRecord).OrderByDescending(p => p.LogNo).ThenBy(p => p.LineSeqNo).ThenBy(p => p.StdReceiveDate).ThenBy(p => p.LDReceiveDate).ThenBy(p => p.LDSeq);
                    this.BindingSource.DataSource = lists.Where(p => (p.IsRejRecord)).OrderByDescending(p => p.LogNo).ThenBy(p => p.LineSeqNo).ThenBy(p => p.StdReceiveDate).ThenBy(p => p.LDSeq);
                }
                else
                {
                    this.BindingSource.DataSource = SaveBindingSource;
                }
            }
            finally
            {
                this.Cursor = Cursors.Default;
            }

            this.InitFormNavigator();
        }

        List<TempFilterClass> lists = null;
        private void bandedGridView1_RowCellStyle(object sender, RowCellStyleEventArgs e)
        {
            if (lists == null)
            {
                lists = (this.BindingSource.DataSource as IEnumerable<POInAdvance>).Select(p => new TempFilterClass { LogNo = p.LogNo, LineSeqNo = p.LineSeqNo, LDSeq = p.LDSeq }).ToList();
            }

            if (e.Column.FieldName == "TargetFinishDate")
            {
                object TargetFinishDate = bandedGridView1.GetRowCellValue(e.RowHandle, "TargetFinishDate");
                if (TargetFinishDate == null) return;

                DateTime dtTargetFinishDate = Convert.ToDateTime(TargetFinishDate);
                if (dtTargetFinishDate <= DateTime.Now.Date)
                {

                    if (bandedGridView1.GetRowCellValue(e.RowHandle, "LogNo") == null ||
                        bandedGridView1.GetRowCellValue(e.RowHandle, "LineSeqNo") == null ||
                        bandedGridView1.GetRowCellValue(e.RowHandle, "LDSeq") == null ||
                        bandedGridView1.GetRowCellValue(e.RowHandle, "LDAppStatus") == null)
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                        return;
                    }

                    string LogNo = bandedGridView1.GetRowCellValue(e.RowHandle, "LogNo").ToString();
                    int LineSeqNo = Convert.ToInt32(bandedGridView1.GetRowCellValue(e.RowHandle, "LineSeqNo").ToString());
                    int ApprovalSeq = Convert.ToInt32(bandedGridView1.GetRowCellValue(e.RowHandle, "LDSeq").ToString());
                    string ApprovalStatus = bandedGridView1.GetRowCellValue(e.RowHandle, "LDAppStatus").ToString();

                    object ColorShadeObj = bandedGridView1.GetRowCellValue(e.RowHandle, "ColorShade");
                    string ColorShade = ColorShadeObj == null ? "" : ColorShadeObj.ToString();

                    //IEnumerable<POInAdvance> lists = this.BindingSource.DataSource as IEnumerable<POInAdvance>;
                    //var MaxApprovalSeq = listst.Where(p => p.LogNo == LogNo && p.LineSeqNo == LineSeqNo && p.ColorShade == ColorShade).Max(p => p.LDSeq);
                    //if (ApprovalSeq == MaxApprovalSeq && ApprovalStatus.ToUpper() != "APP.")
                    //{
                    //    e.Appearance.ForeColor = System.Drawing.Color.Red;
                    //}
                    //add by shulin 2022-06-02 "取消ColorShade"
                    var MaxApprovalSeq = lists.Where(p => p.LogNo == LogNo && p.LineSeqNo == LineSeqNo).Max(p => p.LDSeq);
                    if (ApprovalSeq == MaxApprovalSeq && !AppvAndNils.Contains(ApprovalStatus.ToUpper()))
                    {
                        e.Appearance.ForeColor = System.Drawing.Color.Red;
                    }

                }

            }
            else if (e.Column.FieldName == "LDAppStatus")
            {
                if (bandedGridView1.GetRowCellValue(e.RowHandle, "LogNo") == null ||
                    bandedGridView1.GetRowCellValue(e.RowHandle, "LineSeqNo") == null ||
                    bandedGridView1.GetRowCellValue(e.RowHandle, "LDSeq") == null ||
                    bandedGridView1.GetRowCellValue(e.RowHandle, "LDAppStatus") == null)
                {
                    return;
                }

                string LogNo = bandedGridView1.GetRowCellValue(e.RowHandle, "LogNo").ToString();
                int LineSeqNo = Convert.ToInt32(bandedGridView1.GetRowCellValue(e.RowHandle, "LineSeqNo").ToString());
                int ApprovalSeq = Convert.ToInt32(bandedGridView1.GetRowCellValue(e.RowHandle, "LDSeq").ToString());
                string ApprovalStatus = bandedGridView1.GetRowCellValue(e.RowHandle, "LDAppStatus").ToString();

                object ColorShadeObj = bandedGridView1.GetRowCellValue(e.RowHandle, "ColorShade");
                string ColorShade = ColorShadeObj == null ? "" : ColorShadeObj.ToString();

                //IEnumerable<POInAdvance> lists = this.BindingSource.DataSource as IEnumerable<POInAdvance>;
                //var MaxApprovalSeq = listst.Where(p => p.LogNo == LogNo && p.LineSeqNo == LineSeqNo && p.ColorShade == ColorShade).Max(p => p.LDSeq);
                //if (ApprovalSeq == MaxApprovalSeq && ApprovalStatus.ToUpper() != "APP.")
                //{
                //    e.Appearance.ForeColor = System.Drawing.Color.Red;
                //}
                //add by shulin 2022-06-02 "取消ColorShade"
                var MaxApprovalSeq = lists.Where(p => p.LogNo == LogNo && p.LineSeqNo == LineSeqNo).Max(p => p.LDSeq);
                if (ApprovalSeq == MaxApprovalSeq && !AppvAndNils.Contains(ApprovalStatus.ToUpper()))
                {
                    e.Appearance.ForeColor = System.Drawing.Color.Red;
                }
            }
        }

    }

    public class TempFilterClass
    {
        public string LogNo { get; set; }
        public int? LineSeqNo { get; set; }
        public int? LDSeq { get; set; }
    }
}
