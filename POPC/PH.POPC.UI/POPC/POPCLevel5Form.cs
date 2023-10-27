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
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using DevExpress.Data;
using DevExpress.Utils;
using DevExpress.XtraEditors.Controls;
using DevExpress.XtraGrid;
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using PH.Platform.ExtendLibrary;
using PH.POPC.BO;
using PH.POPC.UI.POPC;


namespace PH.POPC.UI
{
    public partial class POPCLevel5Form : PH.Platform.UI.CS.UI2.ListForm
    {

        #region//auto code
        //private System.ComponentModel.IContainer components = null;

        private DevExpress.XtraBars.BarButtonItem barBtnRefresh;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        //private DevExpress.XtraBars.BarButtonItem barButtonItem1;//;=new DevExpress.XtraBars.BarButtonItem();
        public DevExpress.XtraBars.BarButtonItem barBtnPoList;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
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
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandColorStandard;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandLadDip;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceQty2;
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
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeReport;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandOurItem;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOExftyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOIssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOBalancePercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHOutstandingQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustOrderNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFitCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSizeCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riPHDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustColor;
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
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCurrency;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderClassDesc;
        private DevExpress.XtraBars.BarSubItem btnClone;
        private DevExpress.XtraBars.BarButtonItem btnCloneAsNew;
        private DevExpress.XtraBars.BarButtonItem btnPOPCDependentForm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colETAPointOfDestDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTime;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandPage2Key;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPointCode;
        private DevExpress.XtraBars.BarButtonItem btnLeve5A1;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnSupplementDependentSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colClassCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBrandName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGmtColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemColorName;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraBars.BarButtonItem btnLeve5B1;
        private DevExpress.XtraBars.BarButtonItem btnLevel1aSupplementSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHDODate;
        private DevExpress.XtraBars.BarButtonItem btnRWO;
        private DevExpress.XtraBars.BarButtonItem btnSupplement2;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbSwatch;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceNotMatching;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvUOM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colConvertFactor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvConvertFactor;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStockInQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDiffStkInv;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvAmount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHStockInvQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSizeCupDesc;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPaymentTerms;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierUOM1;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHStockInvQty1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHUom1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCurrencyFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPaymentTermFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIncotermFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUnitFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceNoFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceDateFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGRNQtyFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBDownFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPriceFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceAmountFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand14;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand15;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand16;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand17;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand18;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand19;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand20;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand21;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riicbConfirm;
        private DevExpress.XtraBars.BarButtonItem btnLeve5A2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHowManyLot;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceQtyFlag;
        private DevExpress.XtraBars.BarButtonItem btnLeve5B2;
        private DevExpress.XtraBars.BarSubItem barSubItem3;
        private DevExpress.XtraBars.BarButtonItem btnPOPCInDependentForm;
        private DevExpress.XtraBars.BarSubItem barSubItem4;
        private DevExpress.XtraBars.BarSubItem barSubItem5;
        private DevExpress.XtraBars.BarButtonItem btnSupplementIndependentSheet;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFlowupFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAdviceNote;
        private DevExpress.XtraBars.BarButtonItem btnCompareSingleInvoice;
        private DevExpress.XtraBars.BarButtonItem btnCompareByItem;
        private DevExpress.XtraBars.BarButtonItem btnComparePO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceQty2Flag;
        private DevExpress.XtraBars.BarButtonItem btnInv2DN;
        private DevExpress.XtraBars.BarButtonItem btnInv2DNs;
        private DevExpress.XtraBars.BarButtonItem btnInvs2DN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMaterialGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand22;
        private DevExpress.XtraBars.BarButtonItem barButtonItemOutstandingAdviceNote;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceMatchingDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand23;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand24;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand25;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand26;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand27;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand28;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand29;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand30;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierPOQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoicePrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInvoiceAmount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUsefulStockInQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUsefulStockInAmount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDiffAmount;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.LabelControl lbInvoiceNo;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riDate;
        #endregion

        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(POPCLevel5Form));
            this.riDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand25 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplier = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAdviceNote = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand26 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand27 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand28 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplierUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUsefulStockInQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierPOQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand29 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoicePrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand30 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colUsefulStockInAmount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceAmount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDiffAmount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandPage2Key = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand23 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOBalancePercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn4 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riPHDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colItemColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn5 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandQty = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand24 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHowManyLot = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierLocation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHStockInvQty1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHUom1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFitDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHOutstandingQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStockInQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand22 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colConvertFactor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHStockInvQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHUom = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colInvConvertFactor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDiffStkInv = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandTime = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colInvoiceNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceNoFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riicbConfirm = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colInvoiceDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceMatchingDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceDateFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceQty2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceQty2Flag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPODeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHDODate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitModePO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colETAPointOfDestDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrame1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrame2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeCupDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBDownFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOReqDeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitPointCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCompany = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderClassDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsOutStanding = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOIssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSKU = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colEndCustCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colBrandName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustOrderNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGmtColorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSupplierUOM1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUnitFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPriceFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCurrency = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCurrencyFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colInvAmount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInvoiceAmountFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPaymentTerms = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPaymentTermFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colIncoterms = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIncotermFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReport = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.ribeReport = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.bandOurItem = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colInvoiceNotMatching = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.colFitCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersionFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colClassCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFlowupFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMaterialGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn6 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riCheck = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.rigluBulk = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.rigluLadDip = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbSwatch = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.bandColorStandard = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandLadDip = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.rilueLadDip = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.rilueBulk = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.ricbOption = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.popupMenu1 = new DevExpress.XtraBars.PopupMenu(this.components);
            this.btnPrintShip = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintPO = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWO = new DevExpress.XtraBars.BarButtonItem();
            this.btnCompareByItem = new DevExpress.XtraBars.BarButtonItem();
            this.btnClone = new DevExpress.XtraBars.BarSubItem();
            this.btnCloneAsReplace = new DevExpress.XtraBars.BarButtonItem();
            this.btnCloneAsNew = new DevExpress.XtraBars.BarButtonItem();
            this.btnCopySingle = new DevExpress.XtraBars.BarButtonItem();
            this.btnInv2DN = new DevExpress.XtraBars.BarButtonItem();
            this.btnInv2DNs = new DevExpress.XtraBars.BarButtonItem();
            this.btnInvs2DN = new DevExpress.XtraBars.BarButtonItem();
            this.btnCompareSingleInvoice = new DevExpress.XtraBars.BarButtonItem();
            this.btnComparePO = new DevExpress.XtraBars.BarButtonItem();
            this.btnShipmentYes = new DevExpress.XtraBars.BarSubItem();
            this.btnAddLots = new DevExpress.XtraBars.BarButtonItem();
            this.btnShip = new DevExpress.XtraBars.BarButtonItem();
            this.toolTipController1 = new DevExpress.Utils.ToolTipController(this.components);
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.lbInvoiceNo = new DevExpress.XtraEditors.LabelControl();
            this.imageList1 = new System.Windows.Forms.ImageList(this.components);
            this.btnPOPCDependentForm = new DevExpress.XtraBars.BarButtonItem();
            this.btnLeve5A1 = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnSupplementDependentSheet = new DevExpress.XtraBars.BarButtonItem();
            this.btnLeve5B1 = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem4 = new DevExpress.XtraBars.BarSubItem();
            this.btnLeve5A2 = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem5 = new DevExpress.XtraBars.BarSubItem();
            this.btnPOPCInDependentForm = new DevExpress.XtraBars.BarButtonItem();
            this.btnSupplementIndependentSheet = new DevExpress.XtraBars.BarButtonItem();
            this.btnLeve5B2 = new DevExpress.XtraBars.BarButtonItem();
            this.btnLevel1aSupplementSheet = new DevExpress.XtraBars.BarButtonItem();
            this.btnSupplement2 = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem3 = new DevExpress.XtraBars.BarSubItem();
            this.barButtonItemOutstandingAdviceNote = new DevExpress.XtraBars.BarButtonItem();
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
            ((System.ComponentModel.ISupportInitialize)(this.riicbConfirm)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluBulk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatch)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueLadDip)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueBulk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbOption)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
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
            this.btnPOPCDependentForm,
            this.btnLeve5A1,
            this.barSubItem2,
            this.btnSupplementDependentSheet,
            this.btnLeve5B1,
            this.btnLevel1aSupplementSheet,
            this.btnRWO,
            this.btnSupplement2,
            this.btnLeve5A2,
            this.btnLeve5B2,
            this.barSubItem3,
            this.btnPOPCInDependentForm,
            this.barSubItem4,
            this.barSubItem5,
            this.btnSupplementIndependentSheet,
            this.btnCompareSingleInvoice,
            this.btnCompareByItem,
            this.btnComparePO,
            this.btnInv2DN,
            this.btnInv2DNs,
            this.btnInvs2DN,
            this.barButtonItemOutstandingAdviceNote});
            this.objbarManager.MaxItemId = 52;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItemOutstandingAdviceNote, "", true, true, false, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.barSubItem2, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 55);
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.riDate,
            this.riCheck,
            this.ribeReport,
            this.riPHDate,
            this.ricbOption,
            this.rilueLadDip,
            this.rilueBulk,
            this.rigluLadDip,
            this.rigluBulk,
            this.repositoryItemSpinEdit1,
            this.ricbSwatch,
            this.repositoryItemMemoExEdit1,
            this.riicbConfirm});
            this.objListGridControl.Size = new System.Drawing.Size(1301, 549);
            this.objListGridControl.ToolTipController = this.toolTipController1;
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
            this.gridBand25,
            this.gridBand26,
            this.gridBand27,
            this.gridBand28,
            this.gridBand29,
            this.gridBand30,
            this.bandPage2Key,
            this.bandQty,
            this.gridBand1,
            this.bandTime,
            this.gridBand9,
            this.bandOurItem});
            this.bandedGridView1.ColumnPanelRowHeight = 38;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colCompany,
            this.colPONO,
            this.colVersion,
            this.colAmendmentNo,
            this.colOrderLine,
            this.colSKU,
            this.colInvoiceQty2,
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
            this.colWOExftyDate,
            this.colPOIssueDate,
            this.colPOBalancePercent,
            this.colPHOutstandingQty,
            this.colEndCustOrderNo,
            this.colFitCode,
            this.colSizeCode,
            this.colEndCustColor,
            this.colRemark,
            this.colPHQty,
            this.colPHUom,
            this.colPrice,
            this.colCurrency,
            this.colOrderClassDesc,
            this.colETAPointOfDestDate,
            this.bandedGridColumn1,
            this.bandedGridColumn2,
            this.bandedGridColumn3,
            this.bandedGridColumn4,
            this.bandedGridColumn5,
            this.colTransitPointCode,
            this.colClassCode,
            this.colBrandName,
            this.colGmtColorName,
            this.colItemColorName,
            this.colHDODate,
            this.colInvoiceQty,
            this.colInvoiceNo,
            this.colInvoiceDate,
            this.colInvoiceNotMatching,
            this.colInvUOM,
            this.colConvertFactor,
            this.colInvConvertFactor,
            this.colStockInQty,
            this.colDiffStkInv,
            this.colInvAmount,
            this.colPHStockInvQty,
            this.colSizeCupDesc,
            this.colPaymentTerms,
            this.colSupplierUOM1,
            this.colPHStockInvQty1,
            this.colPHUom1,
            this.colCurrencyFlag,
            this.colPaymentTermFlag,
            this.colIncotermFlag,
            this.colUnitFlag,
            this.colInvoiceNoFlag,
            this.colInvoiceDateFlag,
            this.colInvoiceQty2Flag,
            this.colBDownFlag,
            this.colPriceFlag,
            this.colInvoiceAmountFlag,
            this.colHowManyLot,
            this.colFlowupFlag,
            this.colAdviceNote,
            this.colMaterialGroup,
            this.colInvoiceMatchingDate,
            this.colSupplierPOQty,
            this.bandedGridColumn6,
            this.colInvoicePrice,
            this.colInvoiceAmount,
            this.colUsefulStockInQty,
            this.colUsefulStockInAmount,
            this.colDiffAmount});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(607, 372, 274, 405);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.GroupFormat = "[#image]{1} {2}";
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.AllowIncrementalSearch = true;
            this.bandedGridView1.OptionsBehavior.EditorShowMode = DevExpress.Utils.EditorShowMode.MouseDown;
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsSelection.MultiSelect = true;
            this.bandedGridView1.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.DoubleClick += new System.EventHandler(this.bandedGridView1_DoubleClick);
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate);
            this.bandedGridView1.MouseDown += new System.Windows.Forms.MouseEventHandler(this.bandedGridView1_MouseDown);
            this.bandedGridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bandedGridView1_RowCellStyle);
            // 
            // gridBand25
            // 
            this.gridBand25.Caption = "Key Info";
            this.gridBand25.Columns.Add(this.colSupplier);
            this.gridBand25.Columns.Add(this.colAdviceNote);
            this.gridBand25.Columns.Add(this.bandedGridColumn1);
            this.gridBand25.Columns.Add(this.colItemCode);
            this.gridBand25.Columns.Add(this.colSupplierReference);
            this.gridBand25.MinWidth = 20;
            this.gridBand25.Name = "gridBand25";
            this.gridBand25.Tag = 1;
            this.gridBand25.Width = 462;
            // 
            // colSupplier
            // 
            this.colSupplier.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplier.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplier.Caption = "Supp\r\nCode";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.OptionsColumn.AllowEdit = false;
            this.colSupplier.OptionsColumn.ReadOnly = true;
            this.colSupplier.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplier.SummaryItem.Tag = "";
            this.colSupplier.Visible = true;
            this.colSupplier.Width = 50;
            // 
            // colAdviceNote
            // 
            this.colAdviceNote.Caption = "Advice\r\nNote";
            this.colAdviceNote.FieldName = "AdviceNote";
            this.colAdviceNote.Name = "colAdviceNote";
            this.colAdviceNote.OptionsColumn.AllowEdit = false;
            this.colAdviceNote.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colAdviceNote.Visible = true;
            this.colAdviceNote.Width = 125;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "PO No.";
            this.bandedGridColumn1.FieldName = "PONO";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn1.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.bandedGridColumn1.Visible = true;
            this.bandedGridColumn1.Width = 82;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.OptionsColumn.ReadOnly = true;
            this.colItemCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemCode.Visible = true;
            this.colItemCode.Width = 87;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp Item\r\nCode";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.Width = 118;
            // 
            // gridBand26
            // 
            this.gridBand26.Caption = "Clr\r\nDpd";
            this.gridBand26.Columns.Add(this.colColorCode);
            this.gridBand26.MinWidth = 20;
            this.gridBand26.Name = "gridBand26";
            this.gridBand26.RowCount = 2;
            this.gridBand26.Tag = 2;
            this.gridBand26.Width = 43;
            // 
            // colColorCode
            // 
            this.colColorCode.AppearanceCell.Options.UseTextOptions = true;
            this.colColorCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColorCode.Caption = "Cde";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.OptionsColumn.ReadOnly = true;
            this.colColorCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 43;
            // 
            // gridBand27
            // 
            this.gridBand27.Caption = "Size\r\nDpd";
            this.gridBand27.Columns.Add(this.colSizeCode);
            this.gridBand27.MinWidth = 20;
            this.gridBand27.Name = "gridBand27";
            this.gridBand27.Tag = 2;
            this.gridBand27.Width = 40;
            // 
            // colSizeCode
            // 
            this.colSizeCode.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeCode.Caption = "Sz";
            this.colSizeCode.FieldName = "SizeCupDesc";
            this.colSizeCode.Name = "colSizeCode";
            this.colSizeCode.OptionsColumn.AllowEdit = false;
            this.colSizeCode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSizeCode.Visible = true;
            this.colSizeCode.Width = 40;
            // 
            // gridBand28
            // 
            this.gridBand28.Caption = "Useful Stk-in\r\n(Convert back PO UoM)";
            this.gridBand28.Columns.Add(this.colSupplierUOM);
            this.gridBand28.Columns.Add(this.colUsefulStockInQty);
            this.gridBand28.Columns.Add(this.colSupplierPOQty);
            this.gridBand28.Columns.Add(this.colSizeDesc);
            this.gridBand28.Columns.Add(this.colInvUOM);
            this.gridBand28.MinWidth = 20;
            this.gridBand28.Name = "gridBand28";
            this.gridBand28.Tag = 1;
            this.gridBand28.Width = 153;
            // 
            // colSupplierUOM
            // 
            this.colSupplierUOM.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplierUOM.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplierUOM.Caption = "UoM";
            this.colSupplierUOM.FieldName = "SupplierUOM";
            this.colSupplierUOM.Name = "colSupplierUOM";
            this.colSupplierUOM.OptionsColumn.AllowEdit = false;
            this.colSupplierUOM.Visible = true;
            this.colSupplierUOM.Width = 46;
            // 
            // colUsefulStockInQty
            // 
            this.colUsefulStockInQty.AppearanceCell.Options.UseTextOptions = true;
            this.colUsefulStockInQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colUsefulStockInQty.Caption = "Qty";
            this.colUsefulStockInQty.DisplayFormat.FormatString = "N2";
            this.colUsefulStockInQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colUsefulStockInQty.FieldName = "UsefulStockInQty";
            this.colUsefulStockInQty.Name = "colUsefulStockInQty";
            this.colUsefulStockInQty.OptionsColumn.AllowEdit = false;
            this.colUsefulStockInQty.SummaryItem.DisplayFormat = "{0:N2}";
            this.colUsefulStockInQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colUsefulStockInQty.Visible = true;
            this.colUsefulStockInQty.Width = 107;
            // 
            // colSupplierPOQty
            // 
            this.colSupplierPOQty.Caption = "Qty";
            this.colSupplierPOQty.DisplayFormat.FormatString = "N2";
            this.colSupplierPOQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colSupplierPOQty.FieldName = "SupplierPOQty";
            this.colSupplierPOQty.Name = "colSupplierPOQty";
            this.colSupplierPOQty.Width = 110;
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeDesc.Caption = "Sz Range";
            this.colSizeDesc.FieldName = "SizeDesc";
            this.colSizeDesc.Name = "colSizeDesc";
            this.colSizeDesc.OptionsColumn.AllowEdit = false;
            this.colSizeDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSizeDesc.OptionsColumn.ReadOnly = true;
            this.colSizeDesc.Width = 51;
            // 
            // colInvUOM
            // 
            this.colInvUOM.AppearanceCell.Options.UseTextOptions = true;
            this.colInvUOM.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colInvUOM.Caption = "Supp \r\nUoM";
            this.colInvUOM.FieldName = "InvUOM";
            this.colInvUOM.Name = "colInvUOM";
            this.colInvUOM.OptionsColumn.AllowEdit = false;
            // 
            // gridBand29
            // 
            this.gridBand29.Caption = "U/Px";
            this.gridBand29.Columns.Add(this.colPrice);
            this.gridBand29.Columns.Add(this.colInvoicePrice);
            this.gridBand29.MinWidth = 20;
            this.gridBand29.Name = "gridBand29";
            this.gridBand29.Tag = 2;
            this.gridBand29.Width = 174;
            // 
            // colPrice
            // 
            this.colPrice.AppearanceCell.Options.UseTextOptions = true;
            this.colPrice.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPrice.Caption = "PO";
            this.colPrice.DisplayFormat.FormatString = "N4";
            this.colPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPrice.FieldName = "PriceVAT";
            this.colPrice.Name = "colPrice";
            this.colPrice.OptionsColumn.AllowEdit = false;
            this.colPrice.Visible = true;
            this.colPrice.Width = 88;
            // 
            // colInvoicePrice
            // 
            this.colInvoicePrice.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoicePrice.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colInvoicePrice.Caption = "Inv.";
            this.colInvoicePrice.DisplayFormat.FormatString = "N4";
            this.colInvoicePrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colInvoicePrice.FieldName = "InvoicePrice";
            this.colInvoicePrice.Name = "colInvoicePrice";
            this.colInvoicePrice.Visible = true;
            this.colInvoicePrice.Width = 86;
            // 
            // gridBand30
            // 
            this.gridBand30.Caption = "Amount";
            this.gridBand30.Columns.Add(this.colUsefulStockInAmount);
            this.gridBand30.Columns.Add(this.colInvoiceAmount);
            this.gridBand30.Columns.Add(this.colDiffAmount);
            this.gridBand30.MinWidth = 20;
            this.gridBand30.Name = "gridBand30";
            this.gridBand30.Tag = 1;
            this.gridBand30.Width = 291;
            // 
            // colUsefulStockInAmount
            // 
            this.colUsefulStockInAmount.AppearanceCell.Options.UseTextOptions = true;
            this.colUsefulStockInAmount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colUsefulStockInAmount.Caption = "Useful Stk-in";
            this.colUsefulStockInAmount.DisplayFormat.FormatString = "N2";
            this.colUsefulStockInAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colUsefulStockInAmount.FieldName = "UsefulStockInAmount";
            this.colUsefulStockInAmount.Name = "colUsefulStockInAmount";
            this.colUsefulStockInAmount.OptionsColumn.AllowEdit = false;
            this.colUsefulStockInAmount.SummaryItem.DisplayFormat = "{0:N2}";
            this.colUsefulStockInAmount.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colUsefulStockInAmount.Visible = true;
            this.colUsefulStockInAmount.Width = 114;
            // 
            // colInvoiceAmount
            // 
            this.colInvoiceAmount.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoiceAmount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colInvoiceAmount.Caption = "Inv.";
            this.colInvoiceAmount.DisplayFormat.FormatString = "N2";
            this.colInvoiceAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colInvoiceAmount.FieldName = "InvoiceAmount";
            this.colInvoiceAmount.Name = "colInvoiceAmount";
            this.colInvoiceAmount.OptionsColumn.AllowEdit = false;
            this.colInvoiceAmount.SummaryItem.DisplayFormat = "{0:N2}";
            this.colInvoiceAmount.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colInvoiceAmount.Visible = true;
            this.colInvoiceAmount.Width = 96;
            // 
            // colDiffAmount
            // 
            this.colDiffAmount.AppearanceCell.Options.UseTextOptions = true;
            this.colDiffAmount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colDiffAmount.Caption = "Diff.";
            this.colDiffAmount.DisplayFormat.FormatString = "N2";
            this.colDiffAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colDiffAmount.FieldName = "DiffAmount";
            this.colDiffAmount.Name = "colDiffAmount";
            this.colDiffAmount.OptionsColumn.AllowEdit = false;
            this.colDiffAmount.SummaryItem.DisplayFormat = "{0:N2}";
            this.colDiffAmount.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colDiffAmount.Visible = true;
            this.colDiffAmount.Width = 81;
            // 
            // bandPage2Key
            // 
            this.bandPage2Key.Caption = "PO Summary";
            this.bandPage2Key.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand23});
            this.bandPage2Key.MinWidth = 20;
            this.bandPage2Key.Name = "bandPage2Key";
            this.bandPage2Key.RowCount = 2;
            this.bandPage2Key.Tag = 0;
            this.bandPage2Key.Visible = false;
            this.bandPage2Key.Width = 60;
            // 
            // gridBand23
            // 
            this.gridBand23.Caption = "Key Info";
            this.gridBand23.Columns.Add(this.colProjectNo);
            this.gridBand23.Columns.Add(this.bandedGridColumn2);
            this.gridBand23.Columns.Add(this.colPOBalancePercent);
            this.gridBand23.Columns.Add(this.bandedGridColumn3);
            this.gridBand23.Columns.Add(this.bandedGridColumn4);
            this.gridBand23.Columns.Add(this.colItemColorName);
            this.gridBand23.Columns.Add(this.bandedGridColumn5);
            this.gridBand23.Name = "gridBand23";
            this.gridBand23.Tag = 1;
            this.gridBand23.Visible = false;
            this.gridBand23.Width = 60;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj. No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.OptionsColumn.ReadOnly = true;
            this.colProjectNo.Width = 87;
            // 
            // bandedGridColumn2
            // 
            this.bandedGridColumn2.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.bandedGridColumn2.Caption = "PO Bal Qty";
            this.bandedGridColumn2.DisplayFormat.FormatString = "#,0.###";
            this.bandedGridColumn2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.bandedGridColumn2.FieldName = "SupplierOutstandingQty";
            this.bandedGridColumn2.Name = "bandedGridColumn2";
            this.bandedGridColumn2.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn2.Width = 63;
            // 
            // colPOBalancePercent
            // 
            this.colPOBalancePercent.AppearanceCell.Options.UseTextOptions = true;
            this.colPOBalancePercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPOBalancePercent.Caption = "Bal %";
            this.colPOBalancePercent.DisplayFormat.FormatString = "p0";
            this.colPOBalancePercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOBalancePercent.FieldName = "POBalancePercent";
            this.colPOBalancePercent.Name = "colPOBalancePercent";
            this.colPOBalancePercent.OptionsColumn.AllowEdit = false;
            this.colPOBalancePercent.Width = 64;
            // 
            // bandedGridColumn3
            // 
            this.bandedGridColumn3.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn3.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn3.Caption = "Supp\r\nUoM";
            this.bandedGridColumn3.FieldName = "SupplierUOM";
            this.bandedGridColumn3.Name = "bandedGridColumn3";
            this.bandedGridColumn3.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn3.Width = 50;
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
            this.bandedGridColumn4.Width = 63;
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
            // colItemColorName
            // 
            this.colItemColorName.Caption = "Our Item Clr Name\r\n(if any)";
            this.colItemColorName.FieldName = "ItemColorName";
            this.colItemColorName.Name = "colItemColorName";
            this.colItemColorName.Width = 80;
            // 
            // bandedGridColumn5
            // 
            this.bandedGridColumn5.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn5.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn5.Caption = "Transit Mode";
            this.bandedGridColumn5.FieldName = "TransitModePO";
            this.bandedGridColumn5.Name = "bandedGridColumn5";
            this.bandedGridColumn5.OptionsColumn.AllowEdit = false;
            this.bandedGridColumn5.Width = 60;
            // 
            // bandQty
            // 
            this.bandQty.Caption = "UoM Dpdt\r\n(on us)";
            this.bandQty.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand24,
            this.gridBand13});
            this.bandQty.MinWidth = 20;
            this.bandQty.Name = "bandQty";
            this.bandQty.RowCount = 2;
            this.bandQty.Tag = 1;
            this.bandQty.Visible = false;
            this.bandQty.Width = 154;
            // 
            // gridBand24
            // 
            this.gridBand24.Caption = "Add\'l Info";
            this.gridBand24.Columns.Add(this.colHowManyLot);
            this.gridBand24.Columns.Add(this.colColorShade);
            this.gridBand24.Columns.Add(this.colSupplierLocation);
            this.gridBand24.MinWidth = 20;
            this.gridBand24.Name = "gridBand24";
            this.gridBand24.Tag = 2;
            this.gridBand24.Width = 45;
            // 
            // colHowManyLot
            // 
            this.colHowManyLot.AppearanceCell.Options.UseTextOptions = true;
            this.colHowManyLot.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHowManyLot.Caption = "Split shpt";
            this.colHowManyLot.FieldName = "HowManyLot";
            this.colHowManyLot.Name = "colHowManyLot";
            this.colHowManyLot.OptionsColumn.AllowEdit = false;
            this.colHowManyLot.Width = 45;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "Supp Item Clr Shade";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.OptionsColumn.AllowEdit = false;
            this.colColorShade.Tag = 1;
            this.colColorShade.Width = 80;
            // 
            // colSupplierLocation
            // 
            this.colSupplierLocation.Caption = "Loc. of Supp Fty";
            this.colSupplierLocation.FieldName = "SupplierLocation";
            this.colSupplierLocation.Name = "colSupplierLocation";
            this.colSupplierLocation.OptionsColumn.AllowEdit = false;
            // 
            // gridBand13
            // 
            this.gridBand13.Caption = "Actual\r\nStk-in Qty";
            this.gridBand13.Columns.Add(this.colPHStockInvQty1);
            this.gridBand13.Columns.Add(this.colPHUom1);
            this.gridBand13.Columns.Add(this.colFitDesc);
            this.gridBand13.Columns.Add(this.colPHOutstandingQty);
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.RowCount = 2;
            this.gridBand13.Tag = 1;
            this.gridBand13.Width = 109;
            // 
            // colPHStockInvQty1
            // 
            this.colPHStockInvQty1.AppearanceCell.Options.UseTextOptions = true;
            this.colPHStockInvQty1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPHStockInvQty1.Caption = "Qty";
            this.colPHStockInvQty1.DisplayFormat.FormatString = "N1";
            this.colPHStockInvQty1.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHStockInvQty1.FieldName = "StockInQty";
            this.colPHStockInvQty1.Name = "colPHStockInvQty1";
            this.colPHStockInvQty1.Width = 63;
            // 
            // colPHUom1
            // 
            this.colPHUom1.AppearanceCell.Options.UseTextOptions = true;
            this.colPHUom1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPHUom1.Caption = "Our\r\nUoM";
            this.colPHUom1.FieldName = "PHUOM";
            this.colPHUom1.Name = "colPHUom1";
            this.colPHUom1.Width = 46;
            // 
            // colFitDesc
            // 
            this.colFitDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colFitDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFitDesc.Caption = "Cup Range";
            this.colFitDesc.FieldName = "FitDesc";
            this.colFitDesc.Name = "colFitDesc";
            this.colFitDesc.OptionsColumn.AllowEdit = false;
            this.colFitDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFitDesc.OptionsColumn.ReadOnly = true;
            this.colFitDesc.Width = 53;
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
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "UoM In-dpdt (on us)";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand4,
            this.gridBand22,
            this.gridBand10});
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.RowCount = 2;
            this.gridBand1.Tag = 0;
            this.gridBand1.Visible = false;
            this.gridBand1.Width = 452;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Stk-in Qty as\r\n(A)";
            this.gridBand4.Columns.Add(this.colStockInQty);
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Tag = 2;
            this.gridBand4.Width = 92;
            // 
            // colStockInQty
            // 
            this.colStockInQty.AppearanceCell.Options.UseTextOptions = true;
            this.colStockInQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colStockInQty.Caption = "Stk-in Qty as\r\n(A)";
            this.colStockInQty.DisplayFormat.FormatString = "N1";
            this.colStockInQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colStockInQty.FieldName = "SuppStockInQty";
            this.colStockInQty.Name = "colStockInQty";
            this.colStockInQty.OptionsColumn.AllowEdit = false;
            this.colStockInQty.Width = 92;
            // 
            // gridBand22
            // 
            this.gridBand22.Caption = "Convert to our UoM\r\n(if necessary)";
            this.gridBand22.Columns.Add(this.colConvertFactor);
            this.gridBand22.Columns.Add(this.colPHStockInvQty);
            this.gridBand22.Columns.Add(this.colPHUom);
            this.gridBand22.Name = "gridBand22";
            this.gridBand22.Tag = 1;
            this.gridBand22.Width = 194;
            // 
            // colConvertFactor
            // 
            this.colConvertFactor.AppearanceCell.Options.UseTextOptions = true;
            this.colConvertFactor.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colConvertFactor.Caption = "Convert\'n factor";
            this.colConvertFactor.DisplayFormat.FormatString = "#,0.####";
            this.colConvertFactor.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colConvertFactor.FieldName = "ConvertFactor";
            this.colConvertFactor.Name = "colConvertFactor";
            this.colConvertFactor.OptionsColumn.AllowEdit = false;
            this.colConvertFactor.Width = 73;
            // 
            // colPHStockInvQty
            // 
            this.colPHStockInvQty.AppearanceCell.Options.UseTextOptions = true;
            this.colPHStockInvQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPHStockInvQty.Caption = "Stk-in Qty as";
            this.colPHStockInvQty.DisplayFormat.FormatString = "N1";
            this.colPHStockInvQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHStockInvQty.FieldName = "StockInQty";
            this.colPHStockInvQty.Name = "colPHStockInvQty";
            this.colPHStockInvQty.OptionsColumn.AllowEdit = false;
            // 
            // colPHUom
            // 
            this.colPHUom.AppearanceCell.Options.UseTextOptions = true;
            this.colPHUom.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPHUom.Caption = "Our\r\nUoM";
            this.colPHUom.FieldName = "PHUOM";
            this.colPHUom.Name = "colPHUom";
            this.colPHUom.Width = 46;
            // 
            // gridBand10
            // 
            this.gridBand10.Caption = "Convert back to Supp UoM\r\n(if necessary)";
            this.gridBand10.Columns.Add(this.colInvConvertFactor);
            this.gridBand10.Columns.Add(this.colInvoiceQty);
            this.gridBand10.Columns.Add(this.colDiffStkInv);
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Tag = 2;
            this.gridBand10.Width = 332;
            // 
            // colInvConvertFactor
            // 
            this.colInvConvertFactor.AppearanceCell.Options.UseTextOptions = true;
            this.colInvConvertFactor.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colInvConvertFactor.Caption = "Convert\'n factor";
            this.colInvConvertFactor.DisplayFormat.FormatString = "#,0.####";
            this.colInvConvertFactor.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colInvConvertFactor.FieldName = "InvConvertFactor";
            this.colInvConvertFactor.Name = "colInvConvertFactor";
            this.colInvConvertFactor.OptionsColumn.AllowEdit = false;
            // 
            // colInvoiceQty
            // 
            this.colInvoiceQty.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoiceQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colInvoiceQty.Caption = "Invoice Qty as\r\n(B)";
            this.colInvoiceQty.DisplayFormat.FormatString = "#,0.##";
            this.colInvoiceQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colInvoiceQty.FieldName = "InvoiceQty";
            this.colInvoiceQty.Name = "colInvoiceQty";
            this.colInvoiceQty.Width = 98;
            // 
            // colDiffStkInv
            // 
            this.colDiffStkInv.AppearanceCell.Options.UseTextOptions = true;
            this.colDiffStkInv.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colDiffStkInv.Caption = "Diff %\r\n(1-B/A)";
            this.colDiffStkInv.DisplayFormat.FormatString = "p2";
            this.colDiffStkInv.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colDiffStkInv.FieldName = "DiffStkInv";
            this.colDiffStkInv.Name = "colDiffStkInv";
            this.colDiffStkInv.OptionsColumn.AllowEdit = false;
            this.colDiffStkInv.Width = 68;
            // 
            // bandTime
            // 
            this.bandTime.Caption = "Invoice Matching ?";
            this.bandTime.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand15,
            this.gridBand8,
            this.gridBand14,
            this.gridBand16,
            this.gridBand17,
            this.gridBand18,
            this.gridBand19,
            this.gridBand20,
            this.gridBand21});
            this.bandTime.MinWidth = 20;
            this.bandTime.Name = "bandTime";
            this.bandTime.RowCount = 2;
            this.bandTime.Tag = 1;
            this.bandTime.Visible = false;
            this.bandTime.Width = 1029;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Invoice";
            this.gridBand5.Columns.Add(this.colInvoiceNo);
            this.gridBand5.Columns.Add(this.colInvoiceNoFlag);
            this.gridBand5.Columns.Add(this.colInvoiceDate);
            this.gridBand5.Columns.Add(this.colInvoiceMatchingDate);
            this.gridBand5.Columns.Add(this.colInvoiceDateFlag);
            this.gridBand5.Columns.Add(this.colInvoiceQty2);
            this.gridBand5.Columns.Add(this.colInvoiceQty2Flag);
            this.gridBand5.Columns.Add(this.colPODeliveryDate);
            this.gridBand5.Columns.Add(this.colHDODate);
            this.gridBand5.Columns.Add(this.colTransitModePO);
            this.gridBand5.Columns.Add(this.colETAPointOfDestDate);
            this.gridBand5.Columns.Add(this.colTimeFrame1);
            this.gridBand5.Columns.Add(this.colTimeFrame2);
            this.gridBand5.Columns.Add(this.colWOExftyDate);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Tag = 1;
            this.gridBand5.Width = 387;
            // 
            // colInvoiceNo
            // 
            this.colInvoiceNo.Caption = "No.";
            this.colInvoiceNo.FieldName = "InvoiceNo";
            this.colInvoiceNo.Name = "colInvoiceNo";
            this.colInvoiceNo.Width = 64;
            // 
            // colInvoiceNoFlag
            // 
            this.colInvoiceNoFlag.Caption = "Cfm ?";
            this.colInvoiceNoFlag.ColumnEdit = this.riicbConfirm;
            this.colInvoiceNoFlag.FieldName = "InvoiceNoFlag";
            this.colInvoiceNoFlag.Name = "colInvoiceNoFlag";
            this.colInvoiceNoFlag.Width = 44;
            // 
            // riicbConfirm
            // 
            this.riicbConfirm.Appearance.Options.UseTextOptions = true;
            this.riicbConfirm.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.riicbConfirm.AutoHeight = false;
            this.riicbConfirm.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riicbConfirm.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("N", false, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("--", null, -1)});
            this.riicbConfirm.Name = "riicbConfirm";
            this.riicbConfirm.NullText = "--";
            // 
            // colInvoiceDate
            // 
            this.colInvoiceDate.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoiceDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colInvoiceDate.Caption = "dd";
            this.colInvoiceDate.ColumnEdit = this.riPHDate;
            this.colInvoiceDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colInvoiceDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colInvoiceDate.FieldName = "InvoiceDate";
            this.colInvoiceDate.Name = "colInvoiceDate";
            this.colInvoiceDate.Width = 73;
            // 
            // colInvoiceMatchingDate
            // 
            this.colInvoiceMatchingDate.Caption = "Matching dd";
            this.colInvoiceMatchingDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colInvoiceMatchingDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colInvoiceMatchingDate.FieldName = "InvoiceMatchingDate";
            this.colInvoiceMatchingDate.Name = "colInvoiceMatchingDate";
            // 
            // colInvoiceDateFlag
            // 
            this.colInvoiceDateFlag.Caption = "Cfm ?";
            this.colInvoiceDateFlag.ColumnEdit = this.riicbConfirm;
            this.colInvoiceDateFlag.FieldName = "InvoiceDateFlag";
            this.colInvoiceDateFlag.Name = "colInvoiceDateFlag";
            this.colInvoiceDateFlag.Width = 42;
            // 
            // colInvoiceQty2
            // 
            this.colInvoiceQty2.AppearanceCell.Options.UseTextOptions = true;
            this.colInvoiceQty2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colInvoiceQty2.Caption = "Qty";
            this.colInvoiceQty2.DisplayFormat.FormatString = "#,0.#";
            this.colInvoiceQty2.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colInvoiceQty2.FieldName = "InvoiceQty";
            this.colInvoiceQty2.Name = "colInvoiceQty2";
            this.colInvoiceQty2.OptionsColumn.AllowEdit = false;
            this.colInvoiceQty2.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colInvoiceQty2.Width = 47;
            // 
            // colInvoiceQty2Flag
            // 
            this.colInvoiceQty2Flag.Caption = "Cfm ?";
            this.colInvoiceQty2Flag.ColumnEdit = this.riicbConfirm;
            this.colInvoiceQty2Flag.FieldName = "GRNQtyFlag";
            this.colInvoiceQty2Flag.Name = "colInvoiceQty2Flag";
            this.colInvoiceQty2Flag.Width = 42;
            // 
            // colPODeliveryDate
            // 
            this.colPODeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPODeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPODeliveryDate.Caption = "Del dd";
            this.colPODeliveryDate.ColumnEdit = this.riPHDate;
            this.colPODeliveryDate.FieldName = "PODeliveryDate";
            this.colPODeliveryDate.Name = "colPODeliveryDate";
            this.colPODeliveryDate.OptionsColumn.AllowEdit = false;
            this.colPODeliveryDate.OptionsColumn.ReadOnly = true;
            this.colPODeliveryDate.Width = 82;
            // 
            // colHDODate
            // 
            this.colHDODate.Caption = "HDO dd";
            this.colHDODate.ColumnEdit = this.riPHDate;
            this.colHDODate.FieldName = "HDODate";
            this.colHDODate.Name = "colHDODate";
            this.colHDODate.OptionsColumn.AllowEdit = false;
            this.colHDODate.Width = 73;
            // 
            // colTransitModePO
            // 
            this.colTransitModePO.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitModePO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitModePO.Caption = "Transit Mode";
            this.colTransitModePO.FieldName = "TransitModePO";
            this.colTransitModePO.Name = "colTransitModePO";
            this.colTransitModePO.OptionsColumn.AllowEdit = false;
            this.colTransitModePO.OptionsColumn.ReadOnly = true;
            this.colTransitModePO.Width = 59;
            // 
            // colETAPointOfDestDate
            // 
            this.colETAPointOfDestDate.AppearanceCell.Options.UseTextOptions = true;
            this.colETAPointOfDestDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colETAPointOfDestDate.Caption = "ETA Pt. of Dest";
            this.colETAPointOfDestDate.ColumnEdit = this.riPHDate;
            this.colETAPointOfDestDate.FieldName = "ETAPointOfDestDate";
            this.colETAPointOfDestDate.Name = "colETAPointOfDestDate";
            this.colETAPointOfDestDate.OptionsColumn.AllowEdit = false;
            // 
            // colTimeFrame1
            // 
            this.colTimeFrame1.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame1.Caption = "Time Frame 1\r\n(day)";
            this.colTimeFrame1.FieldName = "TimeFrame1";
            this.colTimeFrame1.Name = "colTimeFrame1";
            this.colTimeFrame1.OptionsColumn.AllowEdit = false;
            this.colTimeFrame1.OptionsColumn.ReadOnly = true;
            this.colTimeFrame1.Width = 64;
            // 
            // colTimeFrame2
            // 
            this.colTimeFrame2.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrame2.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrame2.Caption = "Time Frame 2\r\n(day)";
            this.colTimeFrame2.FieldName = "TimeFrame2";
            this.colTimeFrame2.Name = "colTimeFrame2";
            this.colTimeFrame2.OptionsColumn.AllowEdit = false;
            this.colTimeFrame2.OptionsColumn.ReadOnly = true;
            this.colTimeFrame2.Width = 64;
            // 
            // colWOExftyDate
            // 
            this.colWOExftyDate.AppearanceCell.Options.UseTextOptions = true;
            this.colWOExftyDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOExftyDate.Caption = "Our WO Ex-fty dd";
            this.colWOExftyDate.ColumnEdit = this.riPHDate;
            this.colWOExftyDate.FieldName = "WOExftyDate";
            this.colWOExftyDate.Name = "colWOExftyDate";
            this.colWOExftyDate.OptionsColumn.AllowEdit = false;
            // 
            // gridBand15
            // 
            this.gridBand15.Caption = "Size/Cup\r\nB/down";
            this.gridBand15.Columns.Add(this.colSizeCupDesc);
            this.gridBand15.Columns.Add(this.colBDownFlag);
            this.gridBand15.Columns.Add(this.colPOReqDeliveryDate);
            this.gridBand15.Columns.Add(this.colTransitPoint);
            this.gridBand15.Columns.Add(this.colTransitPointCode);
            this.gridBand15.Columns.Add(this.colEndPoint);
            this.gridBand15.MinWidth = 20;
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Tag = 1;
            this.gridBand15.Width = 109;
            // 
            // colSizeCupDesc
            // 
            this.colSizeCupDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeCupDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeCupDesc.Caption = "B/down";
            this.colSizeCupDesc.FieldName = "SizeCupDesc";
            this.colSizeCupDesc.Name = "colSizeCupDesc";
            this.colSizeCupDesc.OptionsColumn.AllowEdit = false;
            this.colSizeCupDesc.Width = 63;
            // 
            // colBDownFlag
            // 
            this.colBDownFlag.Caption = "Cfm ?";
            this.colBDownFlag.ColumnEdit = this.riicbConfirm;
            this.colBDownFlag.FieldName = "BDownFlag";
            this.colBDownFlag.Name = "colBDownFlag";
            this.colBDownFlag.Width = 46;
            // 
            // colPOReqDeliveryDate
            // 
            this.colPOReqDeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPOReqDeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPOReqDeliveryDate.Caption = "Initial Req Del. dd\r\n";
            this.colPOReqDeliveryDate.ColumnEdit = this.riPHDate;
            this.colPOReqDeliveryDate.FieldName = "POReqDeliveryDate";
            this.colPOReqDeliveryDate.Name = "colPOReqDeliveryDate";
            this.colPOReqDeliveryDate.OptionsColumn.AllowEdit = false;
            // 
            // colTransitPoint
            // 
            this.colTransitPoint.Caption = "Transit Point";
            this.colTransitPoint.FieldName = "TransitPoint";
            this.colTransitPoint.Name = "colTransitPoint";
            this.colTransitPoint.OptionsColumn.AllowEdit = false;
            this.colTransitPoint.OptionsColumn.ReadOnly = true;
            this.colTransitPoint.Width = 72;
            // 
            // colTransitPointCode
            // 
            this.colTransitPointCode.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitPointCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitPointCode.Caption = "Transit Pt. Code";
            this.colTransitPointCode.FieldName = "TransitPointCode";
            this.colTransitPointCode.Name = "colTransitPointCode";
            this.colTransitPointCode.OptionsColumn.AllowEdit = false;
            this.colTransitPointCode.Width = 58;
            // 
            // colEndPoint
            // 
            this.colEndPoint.AppearanceCell.Options.UseTextOptions = true;
            this.colEndPoint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndPoint.Caption = "Pt. of Dest Code\r\n";
            this.colEndPoint.FieldName = "EndPoint";
            this.colEndPoint.Name = "colEndPoint";
            this.colEndPoint.OptionsColumn.AllowEdit = false;
            this.colEndPoint.OptionsColumn.ReadOnly = true;
            this.colEndPoint.Width = 85;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "Invoice dd";
            this.gridBand8.Columns.Add(this.colCompany);
            this.gridBand8.Columns.Add(this.colOrderClassDesc);
            this.gridBand8.Columns.Add(this.colIsOutStanding);
            this.gridBand8.Columns.Add(this.colPOIssueDate);
            this.gridBand8.Columns.Add(this.colPONO);
            this.gridBand8.Columns.Add(this.colFactory);
            this.gridBand8.Columns.Add(this.colSKU);
            this.gridBand8.Columns.Add(this.colVersion);
            this.gridBand8.Columns.Add(this.colAmendmentNo);
            this.gridBand8.Columns.Add(this.colOrderLine);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Tag = 2;
            this.gridBand8.Visible = false;
            this.gridBand8.Width = 42;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.OptionsColumn.AllowEdit = false;
            this.colCompany.OptionsColumn.ReadOnly = true;
            // 
            // colOrderClassDesc
            // 
            this.colOrderClassDesc.Caption = "ERP\'s PO Class";
            this.colOrderClassDesc.FieldName = "OrderClassDesc";
            this.colOrderClassDesc.Name = "colOrderClassDesc";
            this.colOrderClassDesc.OptionsColumn.AllowEdit = false;
            this.colOrderClassDesc.Width = 70;
            // 
            // colIsOutStanding
            // 
            this.colIsOutStanding.AppearanceCell.Options.UseTextOptions = true;
            this.colIsOutStanding.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colIsOutStanding.Caption = "PO Status";
            this.colIsOutStanding.FieldName = "POStatus";
            this.colIsOutStanding.Name = "colIsOutStanding";
            this.colIsOutStanding.OptionsColumn.AllowEdit = false;
            this.colIsOutStanding.OptionsColumn.ReadOnly = true;
            this.colIsOutStanding.Width = 67;
            // 
            // colPOIssueDate
            // 
            this.colPOIssueDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPOIssueDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPOIssueDate.Caption = "Issued dd";
            this.colPOIssueDate.ColumnEdit = this.riPHDate;
            this.colPOIssueDate.FieldName = "POIssueDate";
            this.colPOIssueDate.Name = "colPOIssueDate";
            this.colPOIssueDate.OptionsColumn.AllowEdit = false;
            this.colPOIssueDate.Width = 77;
            // 
            // colPONO
            // 
            this.colPONO.AppearanceCell.Options.UseTextOptions = true;
            this.colPONO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.OptionsColumn.ReadOnly = true;
            this.colPONO.SummaryItem.DisplayFormat = "Nr. {0}";
            this.colPONO.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colPONO.SummaryItem.Tag = "PONO";
            this.colPONO.Width = 82;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceCell.Options.UseTextOptions = true;
            this.colFactory.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Our Prod\'n Site";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Width = 59;
            // 
            // colSKU
            // 
            this.colSKU.Caption = "SKU";
            this.colSKU.FieldName = "SKU";
            this.colSKU.Name = "colSKU";
            this.colSKU.OptionsColumn.AllowEdit = false;
            this.colSKU.OptionsColumn.ReadOnly = true;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            this.colVersion.OptionsColumn.ReadOnly = true;
            // 
            // colAmendmentNo
            // 
            this.colAmendmentNo.Caption = "Amendment No";
            this.colAmendmentNo.FieldName = "AmendmentNo";
            this.colAmendmentNo.Name = "colAmendmentNo";
            this.colAmendmentNo.OptionsColumn.AllowEdit = false;
            this.colAmendmentNo.OptionsColumn.ReadOnly = true;
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "PO Line";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.OptionsColumn.ReadOnly = true;
            // 
            // gridBand14
            // 
            this.gridBand14.Caption = "Invoice Qty";
            this.gridBand14.Columns.Add(this.colEndCustCode);
            this.gridBand14.Columns.Add(this.colBrandName);
            this.gridBand14.Columns.Add(this.colCustStyleNo);
            this.gridBand14.Columns.Add(this.colEndCustOrderNo);
            this.gridBand14.Columns.Add(this.colEndCustColor);
            this.gridBand14.Columns.Add(this.colGmtColorName);
            this.gridBand14.MinWidth = 20;
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Tag = 2;
            this.gridBand14.Visible = false;
            this.gridBand14.Width = 43;
            // 
            // colEndCustCode
            // 
            this.colEndCustCode.AppearanceCell.Options.UseTextOptions = true;
            this.colEndCustCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndCustCode.Caption = "It\'s Code";
            this.colEndCustCode.FieldName = "EndCustCode";
            this.colEndCustCode.Name = "colEndCustCode";
            this.colEndCustCode.OptionsColumn.AllowEdit = false;
            this.colEndCustCode.Tag = 1;
            this.colEndCustCode.Width = 55;
            // 
            // colBrandName
            // 
            this.colBrandName.Caption = "Brand Name\r\n(if any)";
            this.colBrandName.FieldName = "BrandName";
            this.colBrandName.Name = "colBrandName";
            // 
            // colCustStyleNo
            // 
            this.colCustStyleNo.Caption = "It\'s Style No.";
            this.colCustStyleNo.FieldName = "CustStyleNo";
            this.colCustStyleNo.Name = "colCustStyleNo";
            this.colCustStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustStyleNo.Tag = 1;
            // 
            // colEndCustOrderNo
            // 
            this.colEndCustOrderNo.Caption = "Order No\r\n(if any)";
            this.colEndCustOrderNo.FieldName = "EndCustOrderNo";
            this.colEndCustOrderNo.Name = "colEndCustOrderNo";
            this.colEndCustOrderNo.OptionsColumn.AllowEdit = false;
            this.colEndCustOrderNo.Tag = 1;
            // 
            // colEndCustColor
            // 
            this.colEndCustColor.Caption = "Gmt Clr Code\r\n(if any)";
            this.colEndCustColor.FieldName = "GarmentColor";
            this.colEndCustColor.Name = "colEndCustColor";
            this.colEndCustColor.OptionsColumn.AllowEdit = false;
            this.colEndCustColor.Tag = 1;
            // 
            // colGmtColorName
            // 
            this.colGmtColorName.Caption = "Gmt Color Name\r\n(if any)";
            this.colGmtColorName.FieldName = "GmtColorName";
            this.colGmtColorName.Name = "colGmtColorName";
            // 
            // gridBand16
            // 
            this.gridBand16.Caption = "PO";
            this.gridBand16.Columns.Add(this.colSupplierUOM1);
            this.gridBand16.Columns.Add(this.colUnitFlag);
            this.gridBand16.Columns.Add(this.colPriceFlag);
            this.gridBand16.MinWidth = 20;
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Tag = 1;
            this.gridBand16.Width = 140;
            // 
            // colSupplierUOM1
            // 
            this.colSupplierUOM1.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplierUOM1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplierUOM1.Caption = "Supp\r\nUoM";
            this.colSupplierUOM1.FieldName = "SupplierUOM";
            this.colSupplierUOM1.Name = "colSupplierUOM1";
            this.colSupplierUOM1.Width = 50;
            // 
            // colUnitFlag
            // 
            this.colUnitFlag.Caption = "Cfm ?";
            this.colUnitFlag.ColumnEdit = this.riicbConfirm;
            this.colUnitFlag.FieldName = "UnitFlag";
            this.colUnitFlag.Name = "colUnitFlag";
            this.colUnitFlag.Width = 42;
            // 
            // colPriceFlag
            // 
            this.colPriceFlag.Caption = "Cfm ?";
            this.colPriceFlag.ColumnEdit = this.riicbConfirm;
            this.colPriceFlag.FieldName = "PriceFlag";
            this.colPriceFlag.Name = "colPriceFlag";
            this.colPriceFlag.Width = 48;
            // 
            // gridBand17
            // 
            this.gridBand17.Caption = "Unit Prix";
            this.gridBand17.MinWidth = 20;
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Tag = 2;
            this.gridBand17.Visible = false;
            this.gridBand17.Width = 48;
            // 
            // gridBand18
            // 
            this.gridBand18.Caption = "Curr";
            this.gridBand18.Columns.Add(this.colCurrency);
            this.gridBand18.Columns.Add(this.colCurrencyFlag);
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Tag = 1;
            this.gridBand18.Width = 94;
            // 
            // colCurrency
            // 
            this.colCurrency.AppearanceCell.Options.UseTextOptions = true;
            this.colCurrency.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCurrency.Caption = "Curr";
            this.colCurrency.FieldName = "Currency";
            this.colCurrency.Name = "colCurrency";
            this.colCurrency.Width = 49;
            // 
            // colCurrencyFlag
            // 
            this.colCurrencyFlag.Caption = "Cfm ?";
            this.colCurrencyFlag.ColumnEdit = this.riicbConfirm;
            this.colCurrencyFlag.FieldName = "CurrencyFlag";
            this.colCurrencyFlag.Name = "colCurrencyFlag";
            this.colCurrencyFlag.Width = 45;
            // 
            // gridBand19
            // 
            this.gridBand19.Caption = "Amount";
            this.gridBand19.Columns.Add(this.colInvAmount);
            this.gridBand19.Columns.Add(this.colInvoiceAmountFlag);
            this.gridBand19.Name = "gridBand19";
            this.gridBand19.Tag = 1;
            this.gridBand19.Width = 101;
            // 
            // colInvAmount
            // 
            this.colInvAmount.AppearanceCell.Options.UseTextOptions = true;
            this.colInvAmount.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colInvAmount.Caption = "Ttl";
            this.colInvAmount.DisplayFormat.FormatString = "N2";
            this.colInvAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colInvAmount.FieldName = "InvAmount";
            this.colInvAmount.Name = "colInvAmount";
            this.colInvAmount.OptionsColumn.AllowEdit = false;
            this.colInvAmount.Width = 54;
            // 
            // colInvoiceAmountFlag
            // 
            this.colInvoiceAmountFlag.Caption = "Cfm ?";
            this.colInvoiceAmountFlag.ColumnEdit = this.riicbConfirm;
            this.colInvoiceAmountFlag.FieldName = "InvoiceAmountFlag";
            this.colInvoiceAmountFlag.Name = "colInvoiceAmountFlag";
            this.colInvoiceAmountFlag.Width = 47;
            // 
            // gridBand20
            // 
            this.gridBand20.Caption = "Payment Term";
            this.gridBand20.Columns.Add(this.colPaymentTerms);
            this.gridBand20.Columns.Add(this.colPaymentTermFlag);
            this.gridBand20.Name = "gridBand20";
            this.gridBand20.Tag = 1;
            this.gridBand20.Width = 103;
            // 
            // colPaymentTerms
            // 
            this.colPaymentTerms.Caption = "Code";
            this.colPaymentTerms.FieldName = "PaymentTerms";
            this.colPaymentTerms.Name = "colPaymentTerms";
            this.colPaymentTerms.OptionsColumn.AllowEdit = false;
            this.colPaymentTerms.Width = 59;
            // 
            // colPaymentTermFlag
            // 
            this.colPaymentTermFlag.Caption = "Cfm ?";
            this.colPaymentTermFlag.ColumnEdit = this.riicbConfirm;
            this.colPaymentTermFlag.FieldName = "PaymentTermFlag";
            this.colPaymentTermFlag.Name = "colPaymentTermFlag";
            this.colPaymentTermFlag.Width = 44;
            // 
            // gridBand21
            // 
            this.gridBand21.Caption = "Incoterms";
            this.gridBand21.Columns.Add(this.colIncoterms);
            this.gridBand21.Columns.Add(this.colIncotermFlag);
            this.gridBand21.Name = "gridBand21";
            this.gridBand21.Tag = 1;
            this.gridBand21.Width = 95;
            // 
            // colIncoterms
            // 
            this.colIncoterms.AppearanceCell.Options.UseTextOptions = true;
            this.colIncoterms.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colIncoterms.Caption = "Inco-\r\nterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.OptionsColumn.AllowEdit = false;
            this.colIncoterms.OptionsColumn.ReadOnly = true;
            this.colIncoterms.Width = 51;
            // 
            // colIncotermFlag
            // 
            this.colIncotermFlag.Caption = "Cfm ?";
            this.colIncotermFlag.ColumnEdit = this.riicbConfirm;
            this.colIncotermFlag.FieldName = "IncotermFlag";
            this.colIncotermFlag.Name = "colIncotermFlag";
            this.colIncotermFlag.Width = 44;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Other Information\r\n(Same figure at level 1,2,3)";
            this.gridBand9.Columns.Add(this.colTeam);
            this.gridBand9.Columns.Add(this.colPurchaseOfficer);
            this.gridBand9.Columns.Add(this.colReport);
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Tag = 1;
            this.gridBand9.Visible = false;
            this.gridBand9.Width = 145;
            // 
            // colTeam
            // 
            this.colTeam.AppearanceCell.Options.UseTextOptions = true;
            this.colTeam.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTeam.Caption = "Division";
            this.colTeam.FieldName = "Team";
            this.colTeam.Name = "colTeam";
            this.colTeam.OptionsColumn.AllowEdit = false;
            this.colTeam.Width = 60;
            // 
            // colPurchaseOfficer
            // 
            this.colPurchaseOfficer.Caption = "Coordinator";
            this.colPurchaseOfficer.FieldName = "PurchaseOfficer";
            this.colPurchaseOfficer.Name = "colPurchaseOfficer";
            this.colPurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.colPurchaseOfficer.Width = 85;
            // 
            // colReport
            // 
            this.colReport.Caption = "PO Form";
            this.colReport.ColumnEdit = this.ribeReport;
            this.colReport.FieldName = "CheckFlag";
            this.colReport.Name = "colReport";
            this.colReport.Width = 55;
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
            // bandOurItem
            // 
            this.bandOurItem.AppearanceHeader.Options.UseTextOptions = true;
            this.bandOurItem.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandOurItem.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandOurItem.Caption = "If not matching\r\n(WHY?)";
            this.bandOurItem.Columns.Add(this.colInvoiceNotMatching);
            this.bandOurItem.Columns.Add(this.colFitCode);
            this.bandOurItem.MinWidth = 20;
            this.bandOurItem.Name = "bandOurItem";
            this.bandOurItem.Tag = 2;
            this.bandOurItem.Visible = false;
            this.bandOurItem.Width = 75;
            // 
            // colInvoiceNotMatching
            // 
            this.colInvoiceNotMatching.Caption = "Details";
            this.colInvoiceNotMatching.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.colInvoiceNotMatching.FieldName = "InvoiceNotMatching";
            this.colInvoiceNotMatching.Name = "colInvoiceNotMatching";
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            // 
            // colFitCode
            // 
            this.colFitCode.AppearanceCell.Options.UseTextOptions = true;
            this.colFitCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFitCode.Caption = "Cup Range";
            this.colFitCode.FieldName = "FitCode";
            this.colFitCode.Name = "colFitCode";
            this.colFitCode.OptionsColumn.AllowEdit = false;
            this.colFitCode.Width = 44;
            // 
            // colVersionFlag
            // 
            this.colVersionFlag.Caption = "Version Flag";
            this.colVersionFlag.FieldName = "VersionFlag";
            this.colVersionFlag.Name = "colVersionFlag";
            this.colVersionFlag.OptionsColumn.AllowEdit = false;
            // 
            // colRemark
            // 
            this.colRemark.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.colRemark.AppearanceHeader.Options.UseForeColor = true;
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.OptionsColumn.AllowEdit = false;
            this.colRemark.Tag = 1;
            // 
            // colPHQty
            // 
            this.colPHQty.Caption = "Our Qty";
            this.colPHQty.DisplayFormat.FormatString = "#,0.#";
            this.colPHQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHQty.FieldName = "Qty";
            this.colPHQty.Name = "colPHQty";
            // 
            // colClassCode
            // 
            this.colClassCode.Caption = "Class Code";
            this.colClassCode.FieldName = "ClassCode";
            this.colClassCode.Name = "colClassCode";
            this.colClassCode.OptionsColumn.AllowEdit = false;
            // 
            // colFlowupFlag
            // 
            this.colFlowupFlag.Caption = "Alert";
            this.colFlowupFlag.FieldName = "FlowupFlag";
            this.colFlowupFlag.Name = "colFlowupFlag";
            this.colFlowupFlag.OptionsColumn.AllowEdit = false;
            // 
            // colMaterialGroup
            // 
            this.colMaterialGroup.Caption = "Material Group";
            this.colMaterialGroup.FieldName = "MaterialGroup";
            this.colMaterialGroup.Name = "colMaterialGroup";
            // 
            // bandedGridColumn6
            // 
            this.bandedGridColumn6.Caption = "bandedGridColumn6";
            this.bandedGridColumn6.Name = "bandedGridColumn6";
            // 
            // riCheck
            // 
            this.riCheck.AutoHeight = false;
            this.riCheck.Name = "riCheck";
            this.riCheck.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.riCheck.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.riCheck_EditValueChanging);
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
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            this.repositoryItemSpinEdit1.NullText = "--";
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
            // bandColorStandard
            // 
            this.bandColorStandard.Caption = "Color Standard Processing";
            this.bandColorStandard.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand3});
            this.bandColorStandard.Name = "bandColorStandard";
            this.bandColorStandard.Tag = 2;
            this.bandColorStandard.Width = 389;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Color Swatches / Swatch Card";
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 2;
            this.gridBand2.Width = 248;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Color info to Supp";
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Tag = 2;
            this.gridBand3.Width = 141;
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
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintShip),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrintPO),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnWOReport, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWOReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRWO),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCompareByItem),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnClone, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCopySingle, true)});
            this.popupMenu1.Manager = this.objbarManager;
            this.popupMenu1.Name = "popupMenu1";
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
            // 
            // btnCompareByItem
            // 
            this.btnCompareByItem.Caption = "Part 2: by Item";
            this.btnCompareByItem.Id = 44;
            this.btnCompareByItem.Name = "btnCompareByItem";
            this.btnCompareByItem.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCompareItem_ItemClick);
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
            // btnInv2DN
            // 
            this.btnInv2DN.Caption = "1.1A Invoice Dependent - Single Del Note";
            this.btnInv2DN.Id = 46;
            this.btnInv2DN.Name = "btnInv2DN";
            this.btnInv2DN.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnInv2DN_ItemClick);
            // 
            // btnInv2DNs
            // 
            this.btnInv2DNs.Caption = "1.2A Invoice Dependent - Multiple Del Note";
            this.btnInv2DNs.Id = 47;
            this.btnInv2DNs.Name = "btnInv2DNs";
            this.btnInv2DNs.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnInv2DNs_ItemClick);
            // 
            // btnInvs2DN
            // 
            this.btnInvs2DN.Caption = "2.0 Delivery Note Dependent - Multiple Invoice";
            this.btnInvs2DN.Id = 49;
            this.btnInvs2DN.Name = "btnInvs2DN";
            this.btnInvs2DN.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnInvs2DN_ItemClick);
            // 
            // btnCompareSingleInvoice
            // 
            this.btnCompareSingleInvoice.Caption = "by Delivery Note";
            this.btnCompareSingleInvoice.Id = 42;
            this.btnCompareSingleInvoice.Name = "btnCompareSingleInvoice";
            this.btnCompareSingleInvoice.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCompareDeliveryNote_ItemClick);
            // 
            // btnComparePO
            // 
            this.btnComparePO.Caption = "by PO";
            this.btnComparePO.Id = 45;
            this.btnComparePO.Name = "btnComparePO";
            this.btnComparePO.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnComparePO_ItemClick);
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
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.lbInvoiceNo);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 27);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1301, 28);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.toolTipController1.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 6;
            // 
            // lbInvoiceNo
            // 
            this.lbInvoiceNo.Location = new System.Drawing.Point(15, 6);
            this.lbInvoiceNo.Name = "lbInvoiceNo";
            this.lbInvoiceNo.Size = new System.Drawing.Size(66, 14);
            this.lbInvoiceNo.TabIndex = 0;
            this.lbInvoiceNo.Text = "Invoice No.:";
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
            // btnPOPCDependentForm
            // 
            this.btnPOPCDependentForm.Caption = "PO Summary";
            this.btnPOPCDependentForm.Id = 27;
            this.btnPOPCDependentForm.Name = "btnPOPCDependentForm";
            this.btnPOPCDependentForm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPOPCDependentForm_ItemClick);
            // 
            // btnLeve5A1
            // 
            this.btnLeve5A1.Caption = "Level 5a.1/2";
            this.btnLeve5A1.Id = 28;
            this.btnLeve5A1.Name = "btnLeve5A1";
            this.btnLeve5A1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLeve41A_ItemClick);
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "Print List";
            this.barSubItem2.Id = 29;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPOPCDependentForm, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplementDependentSheet),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnLeve5B1, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnSupplementDependentSheet
            // 
            this.btnSupplementDependentSheet.Caption = "PO Summary - Supplement Sheet";
            this.btnSupplementDependentSheet.Id = 30;
            this.btnSupplementDependentSheet.Name = "btnSupplementDependentSheet";
            this.btnSupplementDependentSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementDependentSheet_ItemClick);
            // 
            // btnLeve5B1
            // 
            this.btnLeve5B1.Caption = "Level 5 - Invoice Matching";
            this.btnLeve5B1.Glyph = global::PH.POPC.UI.Properties.Resources.Print;
            this.btnLeve5B1.Id = 31;
            this.btnLeve5B1.Name = "btnLeve5B1";
            this.btnLeve5B1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLeve5B1_ItemClick);
            // 
            // barSubItem4
            // 
            this.barSubItem4.Caption = "Unit Dependent";
            this.barSubItem4.Id = 39;
            this.barSubItem4.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPOPCDependentForm),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplementDependentSheet),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLeve5A1, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLeve5A2)});
            this.barSubItem4.Name = "barSubItem4";
            // 
            // btnLeve5A2
            // 
            this.btnLeve5A2.Caption = "Level 5a.2/2";
            this.btnLeve5A2.Id = 35;
            this.btnLeve5A2.Name = "btnLeve5A2";
            this.btnLeve5A2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLeve41B_ItemClick);
            // 
            // barSubItem5
            // 
            this.barSubItem5.Caption = "Unit Independent";
            this.barSubItem5.Id = 40;
            this.barSubItem5.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPOPCInDependentForm),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSupplementIndependentSheet),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLeve5B1, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnLeve5B2)});
            this.barSubItem5.Name = "barSubItem5";
            // 
            // btnPOPCInDependentForm
            // 
            this.btnPOPCInDependentForm.Caption = "PO Summary";
            this.btnPOPCInDependentForm.Id = 38;
            this.btnPOPCInDependentForm.Name = "btnPOPCInDependentForm";
            this.btnPOPCInDependentForm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPOPCInDependentForm_ItemClick);
            // 
            // btnSupplementIndependentSheet
            // 
            this.btnSupplementIndependentSheet.Caption = "PO Summary - Supplement Sheet";
            this.btnSupplementIndependentSheet.Id = 41;
            this.btnSupplementIndependentSheet.Name = "btnSupplementIndependentSheet";
            this.btnSupplementIndependentSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplementIndependentSheet_ItemClick);
            // 
            // btnLeve5B2
            // 
            this.btnLeve5B2.Caption = "Level 5b.2/2";
            this.btnLeve5B2.Id = 36;
            this.btnLeve5B2.Name = "btnLeve5B2";
            this.btnLeve5B2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLeve42B_ItemClick);
            // 
            // btnLevel1aSupplementSheet
            // 
            this.btnLevel1aSupplementSheet.Caption = "Level 1a - Supplement Sheet";
            this.btnLevel1aSupplementSheet.Id = 32;
            this.btnLevel1aSupplementSheet.Name = "btnLevel1aSupplementSheet";
            this.btnLevel1aSupplementSheet.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnLevel1aSupplementSheet_ItemClick);
            // 
            // btnSupplement2
            // 
            this.btnSupplement2.Caption = "Level 1a - Supplement Sheet 2";
            this.btnSupplement2.Id = 34;
            this.btnSupplement2.Name = "btnSupplement2";
            this.btnSupplement2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSupplement2_ItemClick);
            // 
            // barSubItem3
            // 
            this.barSubItem3.Caption = "PO Summary";
            this.barSubItem3.Id = 37;
            this.barSubItem3.Name = "barSubItem3";
            // 
            // barButtonItemOutstandingAdviceNote
            // 
            this.barButtonItemOutstandingAdviceNote.Caption = "Outstanding Advice Note";
            this.barButtonItemOutstandingAdviceNote.Id = 50;
            this.barButtonItemOutstandingAdviceNote.Name = "barButtonItemOutstandingAdviceNote";
            this.barButtonItemOutstandingAdviceNote.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemOutstandingAdviceNote_ItemClick);
            // 
            // POPCLevel5Form
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "POPCLevel5Form";
            this.Size = new System.Drawing.Size(1301, 604);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.toolTipController1.SetSuperTip(this, null);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
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
            ((System.ComponentModel.ISupportInitialize)(this.riicbConfirm)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluBulk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatch)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueLadDip)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueBulk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbOption)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.popupMenu1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            this.ResumeLayout(false);

        }

        public POPCLevel5Form()
        {
            InitializeComponent();

            POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader1);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader1);
            //_sortby = POPCSortBy.ProjectItemCode;

            //_PONOs = new List<string>();
            //_Supps = new List<string>();
            //_SuppRefs = new List<string>();
            //_Custs = new List<string>();
            //_Colors = new List<string>();
            //_ColorShades = new List<string>();
        }

        PH.POPC.BO.POPCEnquiryCondition _condition;
        public POPCLevel5Form(PH.POPC.BO.POPCEnquiryCondition ACondition, string AInvoiceNo)
            : this()
        {
            _condition = ACondition;
            this.EnquiryPOPC(ACondition);
            barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

            lbInvoiceNo.Text = "Invoice No.: " + AInvoiceNo;

            //EnquiryPOPC(frm.Condition);
        }

        public override void ProcessBORight()
        {
            //base.ProcessBORight();
        }



        #region Platform

        PH.POPC.BO.POPCDataContext context;
        public override void DataBind()
        {
            base.DataBind();

            //context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POChangesMonitor);

            this.AllowGridEdit = true;
            this.AllowAddRow = false;
            this.RowChangeAutoSave = false;

            this.bandedGridView1.OptionsBehavior.Editable = true;
            //this.bandedGridView1.OptionsBehavior.EditorShowMode = EditorShowMode.Click;
            //this.bandedGridView1.ShowButtonMode = ShowButtonModeEnum.ShowAlways;

            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            //DataQueryParameter param = new DataQueryParameter();
            //param.BoType = typeof(PH.POPC.BO.POChangesMonitor);
            //param.WarnRecord = -1;
            //this.StartEnquiry(param);
            //AssignDataToLookupEdit();

            //this.BindingSource.DataSource = _changeMonitors;
            this.BindingSource.DataSource = _NonMatchings;
            //GridViewSort();
            //UpdateAfterMatching();


            //foreach (DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn item in this.bandedGridView1.Columns)
            //{
            //    item.OptionsColumn.AllowEdit = true;
            //    item.OptionsColumn.ReadOnly = false;

            //}
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
        public IEnumerable<POChangesMonitor> _changeMonitors;
        public IEnumerable<InvoiceNonMatching> _NonMatchings;

        //protected override void OnClickFind()
        //{
        //    using (POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(5, this))
        //    {
        //        this.BindingSource.DataSource = null;
        //        DialogResult dr = frm.ShowDialog();
        //        if (dr == DialogResult.OK || dr == DialogResult.Ignore)
        //        {

        //            //var a = _changeMonitors.Count();

        //            _condition = frm.Condition;
        //            //EnquiryPOPC(frm.Condition);
        //            this.BindingSource.DataSource = _changeMonitors;
        //            GridViewSort();
        //            if (dr == DialogResult.OK)
        //                UpdateAfterMatching();
        //        }
        //    }
        //}

        public void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {
            _condition = condition;

            //this.CreateWaitDialog("Loading data...", "Please waiting");
            //try
            //{
            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            context.Connection.Open();
            context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

            this.DataContext = context;

            _sortby = condition.SortBy;
            //if (string.IsNullOrEmpty(condition.AdviceNote))
            //{
            //    var cc = from c in context.POChangesMonitors
            //             where c.Company == condition.Company
            //                 //&& (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
            //             && (string.IsNullOrEmpty(condition.PONO) || condition.PONOs.Contains(c.PONO))
            //             && (c.POColorSizeDetail.VersionFlag ?? false)
            //             && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
            //             && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
            //             && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "") //&& (!(c.POColorSizeDetail.Pending ?? false))
            //                 //&& (string.IsNullOrEmpty(condition.Supplier) || c.POColorSizeDetail.PODetail.POHeader.Supplier == condition.Supplier)
            //             && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))
            //             && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
            //             && (condition.POStatus == 0 //All
            //                || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
            //                || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
            //                )
            //                 //&& (!condition.OrderClass.HasValue || c.POColorSizeDetail.PODetail.POHeader.OrderClass == condition.OrderClass)
            //             && (string.IsNullOrEmpty(condition.OrderClass) || condition.OrderClasses.Contains(c.POColorSizeDetail.PODetail.POHeader.OrderClass))
            //                 //&& (string.IsNullOrEmpty(condition.EndCustCode) || c.POColorSizeDetail.PODetail.POHeader.EndCustCode == condition.EndCustCode)
            //             && (string.IsNullOrEmpty(condition.EndCustCode) || condition.EndCustCodes.Contains(c.POColorSizeDetail.PODetail.POHeader.EndCustCode))
            //             && (string.IsNullOrEmpty(condition.Team) || condition.Teams.Contains(c.POColorSizeDetail.PODetail.POHeader.Dept))
            //                 //&& (string.IsNullOrEmpty(condition.Team) || c.POColorSizeDetail.PODetail.POHeader.Dept == condition.Team)
            //             && (string.IsNullOrEmpty(condition.Factory) || c.POColorSizeDetail.PODetail.POHeader.Factory == condition.Factory)
            //                 //&& (string.IsNullOrEmpty(condition.SuppRef) || c.POColorSizeDetail.SupplierReference == condition.SuppRef)
            //             && (string.IsNullOrEmpty(condition.SuppRef) || condition.SuppRefs.Contains(c.POColorSizeDetail.SupplierReference))
            //                 //&& (string.IsNullOrEmpty(condition.ColorCode) || c.POColorSizeDetail.ColorCode == condition.ColorCode)
            //             && (string.IsNullOrEmpty(condition.ColorCode) || condition.ColorCodes.Contains(c.POColorSizeDetail.ColorCode))
            //             && (string.IsNullOrEmpty(condition.Coordinator) || c.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
            //             && (!condition.Flowup || (c.POColorSizeDetail.FlowupFlag != null && c.POColorSizeDetail.FlowupFlag != ""))
            //             && (condition.IssueDateFrom == DateTime.MinValue ||
            //                   ((c.POColorSizeDetail.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.POColorSizeDetail.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
            //                )
            //             && (condition.DeliveryDateFrom == DateTime.MinValue ||
            //                   ((c.POColorSizeDetail.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.POColorSizeDetail.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
            //                )
            //             && (condition.ExftyDateFrom == DateTime.MinValue ||
            //                   ((c.POColorSizeDetail.WOExftyDate) >= condition.ExftyDateFrom && (c.POColorSizeDetail.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
            //                )

            //             orderby c.PONO, c.OrderLine, c.SKU, c.SplitNo
            //             select c;

            //    this.BindingSource.DataSource = cc;
            //}
            //else
            //{
            var _changeMonitors = from c in context.POChangesMonitors
                                  where c.Company == condition.Company
                                  && (c.POColorSizeDetail.VersionFlag ?? false)
                                  && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                                  && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                                  && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "") //&& (!(c.POColorSizeDetail.Pending ?? false))

                                  && (string.IsNullOrEmpty(condition.Supplier) || condition.Suppliers.Contains(c.POColorSizeDetail.PODetail.POHeader.Supplier))

                                  //Cancel 的PO不顯示出來 由David修改以下代碼 2020-09-17
                                  && c.POColorSizeDetail.PODetail.POHeader.Status != "-1"

                                      //&& (condition.POStatus == 0 //All
                                      //   || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                                      //   || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                                      //   )
                                  && (string.IsNullOrEmpty(condition.AdviceNote) || condition.AdviceNotes.Contains(c.AdviceNote))

                                  orderby c.AdviceNote, c.PONO, c.OrderLine, c.SKU, c.SplitNo
                                  select c;

            //因为用计算字段太慢，将Useful计算放在这里计算, 由David增加 2022-08-31
            foreach (var obj in _changeMonitors)
            {
                obj.Useful = context.fn_GetUseful(obj.SupplierReference, obj.AdviceNote);
            }

            _NonMatchings = _changeMonitors.ToList().GroupBy(p => new
            {
                Supplier = p.Supplier,
                AdviceNote = p.AdviceNote,
                PONO = p.PONO,
                ItemCode = p.ItemCode,
                SupplierReference = p.SupplierReference,
                ColorCode = p.ColorCode,
                SizeCupDesc = p.SizeCupDesc,
                SupplierUOM = p.SupplierUOM,
                PriceVAT = p.PriceVAT
            })
           .Select(g => new InvoiceNonMatching
           {
               Supplier = g.Key.Supplier,
               AdviceNote = g.Key.AdviceNote,
               PONO = g.Key.PONO,
               ItemCode = g.Key.ItemCode,
               SupplierReference = g.Key.SupplierReference,
               ColorCode = g.Key.ColorCode,
               SizeCupDesc = g.Key.SizeCupDesc,
               SupplierUOM = g.Key.SupplierUOM,
               PriceVAT = g.Key.PriceVAT,

               UsefulStockInQty = g.Sum(q => (Convert.ToDecimal((q.StockInQty ?? 0)) * (q.Useful ?? 100.00M) / 100.00M))
           });

            //var aaa = _NonMatchings.Count();

            // this.objListGridControl.DataSource = null;
            //this.BindingSource.DataSource = cc;
            //}
            //GridViewSort();

            //Comparetion(condition.ComTypeI);

            //}
            //finally
            //{
            //    //ReleaseWaitDialog();
            //}

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
            if (e.Column.FieldName == "DiffAmount" || e.Column.FieldName == "InvoiceAmount" || e.Column.FieldName == "InvoicePrice")
            {
                object DiffAmount = bandedGridView1.GetRowCellValue(e.RowHandle, "DiffAmount");
                if (DiffAmount != null && Convert.ToDecimal(DiffAmount) != 0)
                {
                    e.Appearance.ForeColor = Color.Red;
                }
            }

            //string fieldName = e.Column.FieldName;
            ////string tag = e.Column.Tag == null ? "" : Convert.ToString(e.Column.Tag);

            //if (fieldName == "DeliveryDiff")
            //{
            //    object obj = bandedGridView1.GetRowCellValue(e.RowHandle, "DeliveryDiff");
            //    if (obj == null) return;

            //    int diff = Convert.ToInt32(obj);

            //    //e.Appearance.Font = new Font(AppearanceObject.DefaultFont, FontStyle.Bold);
            //    if (diff < 0) e.Appearance.ForeColor = Color.Red;
            //    else if (diff == 0) e.Appearance.ForeColor = Color.Blue;
            //}
            ////else if (tag == "1")
            ////{
            ////    bool isIn = false;
            ////    //e.Appearance.ForeColor = Color.Black;
            ////    GridCell[] cells = bandedGridView1.GetSelectedCells();
            ////    foreach (GridCell cell in cells)
            ////    {
            ////        if (cell.Column == e.Column)
            ////        {
            ////            isIn = true;
            ////            break;
            ////        }                    
            ////    }
            ////    if (isIn)
            ////        e.Appearance.ForeColor = SystemColors.b;
            ////    else
            ////        e.Appearance.ForeColor = Color.FloralWhite;
            ////}
        }

        private void bandedGridView1_ShowingEditor(object sender, CancelEventArgs e)
        {

        }
        private void objListGridControl_Load(object sender, EventArgs e)
        {
            this.bandedGridView1.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.None;
            //InitCustomSummary();
        }

        //private void GridViewSort()
        //{
        //    this.bandedGridView1.BeginSort();
        //    try
        //    {
        //        this.bandedGridView1.ClearSorting();
        //        //Group
        //        //this.bandedGridView1.ClearGrouping();
        //        //this.colTeam.GroupIndex = 0;
        //        //this.colPurchaseOfficer.GroupIndex = 1;

        //        switch (_sortby)
        //        {
        //            case POPCSortBy.ProjectItemCode:
        //                this.colTeam.SortOrder = ColumnSortOrder.Ascending;
        //                this.colPurchaseOfficer.SortOrder = ColumnSortOrder.Ascending;
        //                this.colProjectNo.SortOrder = ColumnSortOrder.Ascending;
        //                this.colSKU.SortOrder = ColumnSortOrder.Ascending;
        //                this.colPONO.SortOrder = ColumnSortOrder.Ascending;
        //                this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;

        //                break;
        //            case POPCSortBy.ItemCodeProject:
        //                this.colTeam.SortOrder = ColumnSortOrder.Ascending;
        //                this.colPurchaseOfficer.SortOrder = ColumnSortOrder.Ascending;
        //                this.colSKU.SortOrder = ColumnSortOrder.Ascending;
        //                this.colProjectNo.SortOrder = ColumnSortOrder.Ascending;
        //                this.colPONO.SortOrder = ColumnSortOrder.Ascending;
        //                this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;

        //                break;
        //            case POPCSortBy.SuppDeliveryDate:
        //                this.colTeam.SortOrder = ColumnSortOrder.Ascending;
        //                this.colPurchaseOfficer.SortOrder = ColumnSortOrder.Ascending;
        //                this.colSupplier.SortOrder = ColumnSortOrder.Ascending;
        //                this.colPODeliveryDate.SortOrder = ColumnSortOrder.Ascending;
        //                this.colPONO.SortOrder = ColumnSortOrder.Ascending;
        //                this.colOrderLine.SortOrder = ColumnSortOrder.Ascending;
        //                this.colSKU.SortOrder = ColumnSortOrder.Ascending;

        //                break;
        //            default:
        //                break;
        //        }

        //    }
        //    finally
        //    {
        //        this.bandedGridView1.EndSort();
        //    }

        //}


        #endregion

        #region Popup Menu

        private void bandedGridView1_MouseDown(object sender, MouseEventArgs e)
        {
            //if (e.Button == MouseButtons.Right)
            //{
            //    DoShowMenu(this.bandedGridView1.CalcHitInfo(new Point(e.X, e.Y)));
            //}
        }
        //private void DoShowMenu(DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitInfo hi)
        //{
        //    //DevExpress.XtraGrid.Menu.GridViewMenu menu = null;

        //    if (hi.HitTest == DevExpress.XtraGrid.Views.Grid.ViewInfo.GridHitTest.RowCell)
        //    {
        //        this.bandedGridView1.FocusedRowHandle = hi.RowHandle;
        //        this.bandedGridView1.FocusedColumn = hi.Column;

        //        PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
        //        if (currLot == null) return;

        //        #region Copy Menu

        //        btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
        //        btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

        //        DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
        //        if (focusCol != null)
        //        {
        //            #region Copy

        //            if (focusCol == colCustStyleNo)
        //                btnCopySingle.Caption = "Copy - End Cust Style";
        //            else if (focusCol == colEndCustOrderNo)
        //                btnCopySingle.Caption = "Copy - End Cust Order";
        //            else if (focusCol == colEndCustColor)
        //                btnCopySingle.Caption = "Copy - End Cust Color";
        //            else if (focusCol == colColorShade)
        //                btnCopySingle.Caption = "Copy - Color Shade";
        //            else if (focusCol == colRemark)
        //                btnCopySingle.Caption = "Copy - Remark";
        //            else if (focusCol == colClassCode)
        //                btnCopySingle.Caption = "Copy - Class Code";

        //            else if (string.IsNullOrEmpty(focusCol.FieldName) && focusCol.FieldName.EndsWith("Flag"))
        //            {
        //                string sc = focusCol.OwnerBand != null ? focusCol.OwnerBand.Caption : "";
        //                btnCopySingle.Caption = string.Format("Copy - {0} - Confirm", sc);
        //            }

        //            else
        //                btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        //            #endregion

        //            #region Clone

        //            //if (focusCol.OwnerBand == bandBulk)
        //            //{
        //            //    btnClone.Caption = "Clone - Bulk Color";
        //            //}
        //            //else if (focusCol.OwnerBand == bandLabDip || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandLabDip))
        //            //{
        //            //    btnClone.Caption = "Clone - Lab Dip";
        //            //}
        //            //else if (focusCol.OwnerBand == bandSample)
        //            //{
        //            //    btnClone.Caption = "Clone - Sample Approval";
        //            //}
        //            //else if (focusCol.OwnerBand == bandColorStandard || (focusCol.OwnerBand != null && focusCol.OwnerBand.ParentBand == bandColorStandard))
        //            //{
        //            //    btnClone.Caption = "Clone - Color Standard";
        //            //}
        //            //else if (focusCol.OwnerBand == bandTest)
        //            //{
        //            //    btnClone.Caption = "Clone - Lab Test";
        //            //}
        //            //else
        //            btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

        //            if (bandedGridView1.SelectedRowsCount <= 1)
        //            {
        //                //btnClone.Caption = btnClone.Caption.Replace("Copy", "Modify");
        //                btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        //            }
        //            #endregion
        //        }
        //        else
        //        {
        //            btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        //            btnCopySingle.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
        //        }

        //        //this.btnCompareSingleInvoice.Visibility = (focusCol == this.colAdviceNote) ? DevExpress.XtraBars.BarItemVisibility.Always : DevExpress.XtraBars.BarItemVisibility.Never;
        //        //if (bandedGridView1.SelectedRowsCount <= 1)
        //        //    btnClone.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;

        //        #region Advice Note

        //        //this.btnInv2DN.Enabled = this._condition != null && this._condition.ComTypeI == CompareTypeI.INV2DN;
        //        //this.btnInv2DNs.Enabled = this._condition != null && this._condition.ComTypeI == CompareTypeI.INV2DNs;
        //        //this.btnInvs2DN.Enabled = this._condition != null && this._condition.ComTypeI == CompareTypeI.INVs2DN;
        //        this.btnCompareByItem.Enabled = this._condition != null && this._condition.ComTypeII == CompareTypeII.Item;

        //        #endregion

        //        #endregion

        //        popupMenu1.ShowPopup(Control.MousePosition);
        //    }
        //}

        #endregion

        //#region Open Edit Form
        //private void EditPOPC(string FieldName)
        //{
        //    //PH.POPC.BO.POChangesMonitor p = (PH.POPC.BO.POChangesMonitor)this.bandedGridView1.GetRow(this.bandedGridView1.FocusedRowHandle);
        //    //if (p == null) return;
        //    //p.CurrentDataContext = this.DataContext;

        //    //PH.POPC.UI.POInfo poinfo = new POInfo();
        //    //poinfo.POPCPage = this.TabControls.SelectedTabPage;
        //    //poinfo.POPCView = this.BindingSource;
        //    //poinfo.Pur = p;
        //    //poinfo.Grid = this.objListGridControl;
        //    //poinfo.GridView = this.bandedGridView1;


        //    ////this.objListGridControl.ge
        //    ////if (p == null) return;
        //    //switch (FieldName)
        //    //{
        //    //    //case "LocationOfSuppFactory":
        //    //    //case "ClassCode":
        //    //    //case "EndCustCode":
        //    //    //    CreateProgramForm(typeof(PH.POPC.UI.NewPO.POHeaderListForm), p.PONO + "-Header", true, new object[] { poinfo }, null);
        //    //    //    break;

        //    //    //case "OpenToProject":
        //    //    //case "WorkOrderNo":
        //    //    //    CreateProgramForm(typeof(PH.POPC.UI.NewPO.PODetailListForm), p.PONO + "-Detail", true, new object[] { poinfo }, null);
        //    //    //    break;
        //    //    //case "LC":
        //    //    //case "CustStyleNo":
        //    //    //case "CustOrderNo":
        //    //    //case "ColorShade":
        //    //    //case "Remark":
        //    //    //case "GarmentColor":
        //    //    //    CreateProgramForm(typeof(PH.POPC.UI.NewPO.POColorSizeDetailListForm), p.PONO + "-SKU", true, new object[] { poinfo }, null);
        //    //    //    break;

        //    //    //case "Con_Recount":
        //    //    //case "Con_ConfirmDate":
        //    //    //    CreateProgramForm(typeof(PH.POPC.UI.POConfirmListForm), p.PONO + "-POConfirm", true, new object[] { p, this.TabControls.SelectedTabPage }, null);
        //    //    //    break;

        //    //    case "BulkSubmitSeq":
        //    //    case "BulkReceiptDate":
        //    //    case "BulkSubmitNo":
        //    //    case "BulkCompletedDate":
        //    //    case "BulkStatus":
        //    //    case "BulkQty":
        //    //    case "BulkDropDeadDate":
        //    //    case "BulkPHToCustDate":
        //    //    case "BulkPHStatus":
        //    //    case "BulkSuppToCustDate":
        //    //        if (string.IsNullOrEmpty(p.BulkOption))
        //    //        {
        //    //            MessageBox.Show("Please select B/S Option at first.");
        //    //            return;
        //    //        }
        //    //        CreateProgramForm(typeof(PH.POPC.UI.POSKUBulkSubmissionListForm), p.PONO + "-Bulk", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
        //    //        break;

        //    //    case "SampleApproval":
        //    //    case "SampleSeq":
        //    //    case "SampleReceiptDate":
        //    //    case "SampleCompletedDate":
        //    //    case "SampleStatus":
        //    //        CreateProgramForm(typeof(PH.POPC.UI.POSKUSampleListForm), p.PONO + "-Sample", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
        //    //        break;

        //    //    case "ColorStdSeq":
        //    //    case "ColorStdReceiptDate":
        //    //        CreateProgramForm(typeof(PH.POPC.UI.POSKUColorStdListForm), p.PONO + "-ColorStd", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
        //    //        break;

        //    //    case "DipSeq":
        //    //    case "DipReceiptDate":
        //    //    case "DipCompletedDate":
        //    //    case "DipStatus":
        //    //    case "DipDropDeadDate":
        //    //    case "DipPHToCustDate":
        //    //    case "DipPHStatus":
        //    //    case "DipSuppToCustDate":
        //    //        if (string.IsNullOrEmpty(p.LadDipOption))
        //    //        {
        //    //            MessageBox.Show("Please select L/D Option at first.");
        //    //            return;
        //    //        }
        //    //        CreateProgramForm(typeof(PH.POPC.UI.POSKUDipSubmitListForm), p.PONO + "-Dip", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
        //    //        break;

        //    //    case "TestSeq":
        //    //    case "TestReceiptDate":
        //    //    case "TestCompletedDate":
        //    //    case "TestStatus":
        //    //    case "TestApproval":

        //    //        CreateProgramForm(typeof(PH.POPC.UI.POSKUTestStatusListForm), p.PONO + "-Test", true, new object[] { p, this.TabControls.SelectedTabPage, poinfo }, null);
        //    //        break;


        //    //    //case "Qty1":
        //    //    //case "Percent1":
        //    //    //case "FtyDate1":

        //    //    //case "Qty2":
        //    //    //case "Percent2":
        //    //    //case "FtyDate2":

        //    //    //case "Qty3":
        //    //    //case "Percent3":
        //    //    //case "FtyDate3":

        //    //    //case "Qty4":
        //    //    //case "Percent4":
        //    //    //case "FtyDate4":

        //    //    //case "Title1":
        //    //    //case "Title2":
        //    //    //case "Title3":
        //    //    //case "Title4":

        //    //    //    CreateProgramForm(typeof(PH.POPC.UI.POSKULotListForm), p.PONO, true, new object[] { p, this.TabControls.SelectedTabPage }, null);
        //    //    //    break;
        //    //}

        //}

        private void bandedGridView1_DoubleClick(object sender, EventArgs e)
        {
            // EditPOPC(this.bandedGridView1.FocusedColumn.FieldName);

        }
        //#endregion

        #region Print - PO Form & Shipment Detail

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
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;
            POPCReport.ShowPOPCWOReport(currLot.ProjectNo);
        }
        private void btnRWOReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;
            POPCReport.ShowPOPCRWOReport(currLot.ProjectNo);
        }

        private void btnPOPCDependentForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.Five1);
        }
        private void btnPOPCInDependentForm_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.FrontPage, POPCPrintLevel.Five2);
        }
        private void btnSupplementDependentSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.Five1);
        }
        private void btnSupplementIndependentSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.Five2);
        }
        private void btnLevel1aSupplementSheet_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneA);

        }
        private void btnSupplement2_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.SupplementSheet, POPCPrintLevel.OneB);
        }

        private void btnLeve41A_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Five1);
        }
        private void btnLeve42A_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Five2);
        }
        private void btnLeve41B_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.InvoiceMatching, POPCPrintLevel.Five1);
        }
        private void btnLeve42B_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.InvoiceMatching, POPCPrintLevel.Five2);

        }

        private void btnLeve5B1_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Common.PrintPOPC(this.bandedGridView1, POPCPrintType.Level, POPCPrintLevel.Five1);
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
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;

            //string caption = "Copy Data";
            //if (bandedGridView1.SelectedRowsCount <= 1)
            //    caption = "Modify Data";

            string hint = this.bandedGridView1.FocusedColumn.Caption;
            //string defalutValue = "";

            //DevExpress.XtraGrid.Columns.GridColumn focusCol = this.bandedGridView1.FocusedColumn;
            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            //if (focusCol.OwnerBand == bandLadDip)
            //{
            //    CopyLadDip(currLot, isNew);
            //}
            //else if (focusCol.OwnerBand == bandBulk)
            //{
            //    CopyBulk(currLot, isNew);
            //}
            //else if (focusCol.OwnerBand == bandSample)
            //{
            //    CopySample(currLot, isNew);
            //}
            //else if (focusCol.OwnerBand == bandColorStandard)
            //{
            //    CopyColorStandard(currLot, isNew);
            //}
            //else if (focusCol.OwnerBand == bandTest)
            //{
            //    CopyTest(currLot, isNew);
            //}

        }


        #region Copy

        //Copy Single column
        private void btnCopySingle_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            CopySingleColumnData();
        }
        private void CopySingleColumnData()
        {
            int currHandle = bandedGridView1.FocusedRowHandle;

            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;

            PH.POPC.BO.POChangesMonitor currLot1 = currLot;

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


            if (focusCol == colEndCustColor)
                defalutValue = currLot.GarmentColor;
            else if (focusCol == colColorShade)
            {
                defalutValue = currLot.ColorShade;
                isColorShade = true;
            }
            else if (focusCol == colRemark)
                defalutValue = currLot.Remark;
            else if (focusCol == colClassCode)
                defalutValue = currLot.ClassCode;


            #endregion

            #region Invoice Matching

            else if (focusCol == colInvoiceNoFlag)
            { defalutValue = currLot.InvoiceNoFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colInvoiceDateFlag)
            { defalutValue = currLot.InvoiceDateFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colGRNQtyFlag)
            { defalutValue = currLot.GRNQtyFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colBDownFlag)
            { defalutValue = currLot.BDownFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colUnitFlag)
            { defalutValue = currLot.UnitFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colPriceFlag)
            { defalutValue = currLot.PriceFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colCurrencyFlag)
            { defalutValue = currLot.CurrencyFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colInvoiceAmountFlag)
            { defalutValue = currLot.InvoiceAmountFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colPaymentTermFlag)
            { defalutValue = currLot.PaymentTermFlag; tc = TypeCode.Boolean; }
            else if (focusCol == colIncotermFlag)
            { defalutValue = currLot.IncotermFlag; tc = TypeCode.Boolean; }

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

                            currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POChangesMonitor;
                            if (currLot == null) continue;
                            POSKUOperate op = null;

                            #region Normal text

                            if (focusCol == colRemark)
                                currLot.Remark = svalue;

                            #endregion

                            #region Invoice Matching

                            else if (focusCol == colInvoiceNoFlag)
                            { currLot.InvoiceNoFlag = (b ?? false); }
                            else if (focusCol == colInvoiceDateFlag)
                            { currLot.InvoiceDateFlag = (b ?? false); }
                            else if (focusCol == colGRNQtyFlag)
                            { currLot.GRNQtyFlag = (b ?? false); }
                            else if (focusCol == colBDownFlag)
                            { currLot.BDownFlag = (b ?? false); }
                            else if (focusCol == colUnitFlag)
                            { currLot.UnitFlag = (b ?? false); }
                            else if (focusCol == colPriceFlag)
                            { currLot.PriceFlag = (b ?? false); }
                            else if (focusCol == colCurrencyFlag)
                            { currLot.CurrencyFlag = (b ?? false); }
                            else if (focusCol == colInvoiceAmountFlag)
                            { currLot.InvoiceAmountFlag = (b ?? false); }
                            else if (focusCol == colPaymentTermFlag)
                            { currLot.PaymentTermFlag = (b ?? false); }
                            else if (focusCol == colIncotermFlag)
                            { currLot.IncotermFlag = (b ?? false); }

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


        #endregion

        #endregion

        #region Tool Tips

        private void toolTipController1_GetActiveObjectInfo(object sender, ToolTipControllerGetActiveObjectInfoEventArgs e)
        {

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
        //IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> _bulks;
        //IEnumerable<PH.Platform.Misc.BO.Misc_DataDictionary> _dips;

        //private void AssignDataToLookupEdit()
        //{
        //    DicList list = new DicList();

        //    #region Bulk

        //    _bulks = list.GetDataDictionary(PH.POPC.BO.Common.BulkDictionary);
        //    this.rigluBulk.DataSource = _bulks;
        //    this.rigluBulk.DisplayMember = "DataCode";
        //    this.rigluBulk.ValueMember = "DataCode";

        //    //DevExpress.XtraGrid.Columns.GridColumn col1 = rigluBulk.View.Columns.AddField("DataCode");
        //    //col1.VisibleIndex = 0;
        //    //col1.Caption = "Code";
        //    //col1.Width = 30;
        //    //DevExpress.XtraGrid.Columns.GridColumn col2 = rigluBulk.View.Columns.AddField("Description");
        //    //col2.VisibleIndex = 1;
        //    //col2.Caption = "Description";
        //    //col2.Width = 150;
        //    ////rigluBulk.View.BestFitColumns();
        //    rigluBulk.PopupFormWidth = 470;
        //    #endregion

        //    #region Lab Dip

        //    _dips = list.GetDataDictionary(PH.POPC.BO.Common.LadDipDictionary);
        //    this.rigluLadDip.DataSource = _dips;
        //    this.rigluLadDip.DisplayMember = "DataCode";
        //    this.rigluLadDip.ValueMember = "DataCode";

        //    //DevExpress.XtraGrid.Columns.GridColumn col3 = rigluLadDip.View.Columns.AddField("DataCode");
        //    //col3.VisibleIndex = 0;
        //    //col3.Caption = "Code";
        //    ////col3.Width = 30;
        //    //DevExpress.XtraGrid.Columns.GridColumn col4 = rigluLadDip.View.Columns.AddField("Description");
        //    //col4.VisibleIndex = 1;
        //    //col4.Caption = "Description";
        //    ////col4.Width = 150;
        //    //rigluLadDip.View.BestFitColumns();
        //    rigluLadDip.PopupFormWidth = 470;

        //    #endregion

        //    //LookUpColumnInfoCollection cols;
        //    //_bulks = list.GetDataDictionary(PH.POPC.BO.Common.BulkDictionary);
        //    //this.rilueBulk.DataSource = _bulks;
        //    //this.rilueBulk.DisplayMember = "DataCode";
        //    //this.rilueBulk.ValueMember = "DataCode";
        //    //cols = this.rilueBulk.Columns;
        //    //cols.Add(new LookUpColumnInfo("DataCode", "Code", 30));
        //    //cols.Add(new LookUpColumnInfo("Description", "Description", 120));

        //    //_dips = list.GetDataDictionary(PH.POPC.BO.Common.LadDipDictionary);
        //    //this.rilueLadDip.DataSource = _dips;
        //    //this.rilueLadDip.DisplayMember = "DataCode";
        //    //this.rilueLadDip.ValueMember = "DataCode";
        //    //cols = this.rilueLadDip.Columns;
        //    //cols.Add(new LookUpColumnInfo("DataCode", "Code", 30));
        //    //cols.Add(new LookUpColumnInfo("Description", "Description", 120));
        //}
        #endregion

        #region Summary

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
        //    col.SummaryItem.DisplayFormat = "Nr. {0}";
        //    col.SummaryItem.Tag = fieldName;

        //}

        //List<string> _PONOs;
        //List<string> _Supps;
        //List<string> _SuppRefs;
        //List<string> _Custs;
        //List<string> _Colors;
        //List<string> _ColorShades;

        private void bandedGridView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
        {
            GridColumnSummaryItem item = e.Item as GridColumnSummaryItem;
            if (e.SummaryProcess == DevExpress.Data.CustomSummaryProcess.Finalize)
            {
                IEnumerable<InvoiceNonMatching> lists = bandedGridView1.FilteredList().Cast<InvoiceNonMatching>();

                switch (item.FieldName)
                {
                    case "Supplier":
                        e.TotalValue = lists.Select(p => p.Supplier).Distinct().Count();
                        break;

                    case "AdviceNote":
                        e.TotalValue = lists.Select(p => p.AdviceNote).Distinct().Count();
                        break;

                    case "ItemCode":
                        e.TotalValue = lists.Select(p => p.ItemCode).Distinct().Count();
                        break;

                    case "PONO":
                        e.TotalValue = lists.Select(p => p.PONO).Distinct().Count();
                        break;

                    case "SupplierReference":
                        e.TotalValue = lists.Select(p => p.SupplierReference).Distinct().Count();
                        break;

                    case "ColorCode":
                        e.TotalValue = lists.Select(p => p.ColorCode).Distinct().Count();
                        break;

                    case "SizeCupDesc":
                        e.TotalValue = lists.Select(p => p.SizeCupDesc).Distinct().Count();
                        break;
                }
            }

            //// Get the summary ID.
            //string summaryID = Convert.ToString((e.Item as GridSummaryItem).Tag);
            //if (string.IsNullOrEmpty(summaryID)) return;

            //GridView view = sender as GridView;

            //// Initialization
            //if (e.SummaryProcess == CustomSummaryProcess.Start)
            //{
            //    _PONOs.Clear();
            //    _Supps.Clear();
            //    _SuppRefs.Clear();
            //    _Custs.Clear();
            //    _Colors.Clear();
            //    _ColorShades.Clear();
            //}
            //// Calculation
            //if (e.SummaryProcess == CustomSummaryProcess.Calculate)
            //{
            //    string pono = (string)view.GetRowCellValue(e.RowHandle, "PONO");
            //    string supp = (string)view.GetRowCellValue(e.RowHandle, "Supplier");
            //    string suppref = (string)view.GetRowCellValue(e.RowHandle, "SupplierReference");
            //    string cust = (string)view.GetRowCellValue(e.RowHandle, "EndCustCode");
            //    string color = (string)view.GetRowCellValue(e.RowHandle, "ColorCode");
            //    string colorShade = (string)view.GetRowCellValue(e.RowHandle, "ColorShade");

            //    switch (summaryID)
            //    {
            //        case "PONO":
            //            if (!string.IsNullOrEmpty(pono) && !_PONOs.Contains(pono))
            //                _PONOs.Add(pono);
            //            break;
            //        case "Supplier":
            //            if (!string.IsNullOrEmpty(supp) && !_Supps.Contains(supp))
            //                _Supps.Add(supp);
            //            break;
            //        case "SupplierReference":
            //            if (!string.IsNullOrEmpty(suppref) && !_SuppRefs.Contains(suppref))
            //                _SuppRefs.Add(suppref);
            //            break;

            //        case "EndCustCode":
            //            if (!string.IsNullOrEmpty(cust) && !_Custs.Contains(cust))
            //                _Custs.Add(cust);
            //            break;
            //        case "ColorCode":
            //            if (!string.IsNullOrEmpty(color) && !_Colors.Contains(color))
            //                _Colors.Add(color);
            //            break;
            //        case "ColorShade":
            //            if (!string.IsNullOrEmpty(colorShade) && !_ColorShades.Contains(colorShade))
            //                _ColorShades.Add(colorShade);
            //            break;
            //    }
            //}
            //// Finalization
            //if (e.SummaryProcess == CustomSummaryProcess.Finalize)
            //{
            //    switch (summaryID)
            //    {
            //        case "PONO":
            //            e.TotalValue = _PONOs.Count;
            //            break;
            //        case "Supplier":
            //            e.TotalValue = _Supps.Count;
            //            break;
            //        case "SupplierReference":
            //            e.TotalValue = _SuppRefs.Count;
            //            break;

            //        case "EndCustCode":
            //            e.TotalValue = _Custs.Count;
            //            break;
            //        case "ColorCode":
            //            e.TotalValue = _Colors.Count;
            //            break;
            //        case "ColorShade":
            //            e.TotalValue = _ColorShades.Count;
            //            break;
            //    }
            //}

        }

        #endregion


        private void riCheck_EditValueChanging(object sender, ChangingEventArgs e)
        {
            PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
            if (currLot == null) return;

            DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn focusCol = this.bandedGridView1.FocusedColumn as DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn;
            if (focusCol == null) return;

            string fieldName = focusCol.FieldName;
            if (!(fieldName == "CurrencyFlag" || fieldName == "PaymentTermFlag" || fieldName == "IncotermFlag" || fieldName == "UnitFlag" || fieldName == "PriceFlag" || fieldName == "BDownFlag"))
                return;

            bool b = (sender as DevExpress.XtraEditors.CheckEdit).Checked;
            switch (fieldName)
            {
                case "CurrencyFlag"://poheader
                    currLot.CurrencyFlag = !b;
                    break;
                case "PaymentTermFlag"://poheader
                    currLot.PaymentTermFlag = !b;
                    break;
                case "IncotermFlag"://poheader
                    currLot.IncotermFlag = !b;
                    break;
                case "UnitFlag"://podetail
                    currLot.UnitFlag = !b;
                    break;
                case "PriceFlag"://poColorSizeDetail
                    currLot.PriceFlag = !b;
                    break;
                case "BDownFlag"://poColorSizeDetail
                    currLot.BDownFlag = !b;
                    break;
                default:
                    break;
            }

            if (this.bandedGridView1.UpdateCurrentRow())
                this.bandedGridView1.PostEditor();


            int currHandle = bandedGridView1.FocusedRowHandle;
            this.bandedGridView1.BeginUpdate();
            try
            {
                //int i = 0;
                LocateRowByMultipleValues(bandedGridView1, fieldName, currLot, 0);
                //if (currLot == null) continue;

                //this.bandedGridView1.FocusedRowHandle = i;

            }
            finally
            {
                this.bandedGridView1.FocusedRowHandle = currHandle;
                this.bandedGridView1.EndUpdate();
            }

        }

        public void LocateRowByMultipleValues(ColumnView view, string fieldName, PH.POPC.BO.POChangesMonitor lot, int startRowHandle)
        {
            // checking whether the arrays have the same length 
            //if (columns.Length != values.Length)
            //    return DevExpress.XtraGrid.GridControl.InvalidRowHandle;
            // obtaining the number of data rows within the view 
            int dataRowCount;
            //if (view is CardView)
            //    dataRowCount = (view as CardView).RowCount;
            //else
            dataRowCount = (view as GridView).DataRowCount;
            // traversing the data rows to find a match 
            bool match;
            //object currValue;
            for (int currentRowHandle = startRowHandle; currentRowHandle < dataRowCount; currentRowHandle++)
            {
                PH.POPC.BO.POChangesMonitor currLot = bandedGridView1.GetRow(currentRowHandle) as PH.POPC.BO.POChangesMonitor;
                if (currLot == null) continue;

                match = false;
                switch (fieldName)
                {
                    case "CurrencyFlag"://poheader
                    case "PaymentTermFlag"://poheader
                    case "IncotermFlag"://poheader
                        match = (lot.PONO == currLot.PONO);
                        break;
                    case "UnitFlag"://podetail
                        match = (lot.PONO == currLot.PONO && lot.OrderLine == currLot.OrderLine);
                        break;
                    case "PriceFlag"://poColorSizeDetail
                    case "BDownFlag"://poColorSizeDetail
                        match = (lot.PONO == currLot.PONO && lot.OrderLine == currLot.OrderLine && lot.SKU == currLot.SKU);
                        break;
                    default:
                        break;
                }

                if (match)
                {
                    view.FocusedRowHandle = currentRowHandle;
                    //return currentRowHandle;
                }
            }
            // returning the invalid row handle if no matches found 
            //return DevExpress.XtraGrid.GridControl.InvalidRowHandle;
        }



        #region Advice Note

        //Compare I
        private void btnInv2DN_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Comparetion(CompareTypeI.INV2DN);
        }
        private void btnInv2DNs_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Comparetion(CompareTypeI.INV2DNs);

        }
        private void btnInvs2DN_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Comparetion(CompareTypeI.INVs2DN);
        }

        //Compare II
        private void btnCompareDeliveryNote_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Comparetion(CompareTypeII.DeliveryNote);
        }
        private void btnCompareItem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)// by item
        {
            //Comparetion(CompareTypeII.Item);
        }
        private void btnComparePO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            //Comparetion(CompareTypeII.PO);
        }



        //public void GetTotalValueOfInvoiceByAdviceNote(string supp, string[] adviceNote, ref decimal qty, ref decimal amount)//single invoice
        //{
        //    //var ans = this.BindingSource.DataSource as IEnumerable<PH.POPC.BO.POChangesMonitor>;
        //    //List<PH.POPC.BO.POChangesMonitor> list = ans.ToList<PH.POPC.BO.POChangesMonitor>();

        //    var qty1 = (from a in _changeMonitors
        //                where a.Supplier == supp && adviceNote.Contains(a.AdviceNote)
        //                select a).Sum(p => p.InvoiceQty);

        //    var amount1 = (from a in _changeMonitors
        //                   where a.Supplier == supp && adviceNote.Contains(a.AdviceNote)
        //                   select a).Sum(p => Math.Round((p.InvoiceQty ?? 0) * (p.Price ?? 0), 2));


        //    qty = qty1 ?? 0;
        //    amount = amount1;
        //}
        //public void GetTotalValueOfInvoiceByPO(string supp, string[] pos, ref decimal qty, ref decimal amount)//PO
        //{
        //    var ans = this.BindingSource.DataSource as IEnumerable<PH.POPC.BO.POChangesMonitor>;
        //    //List<PH.POPC.BO.POChangesMonitor> list = ans.ToList<PH.POPC.BO.POChangesMonitor>();

        //    var qty1 = (from a in ans
        //                where a.Supplier == supp && pos.Contains(a.PONO)
        //                select a).Sum(p => p.InvoiceQty);

        //    var amount1 = (from a in ans
        //                   where a.Supplier == supp && pos.Contains(a.PONO)
        //                   select a).Sum(p => Math.Round((p.InvoiceQty ?? 0) * (p.Price ?? 0), 2));


        //    qty = qty1 ?? 0;
        //    amount = amount1;
        //}
        //public void GetTotalValueOfInvoiceByMaterial(ref decimal qty, ref decimal amount) //multi invoice
        //{
        //    qty = 0;
        //    amount = 0;

        //    this.bandedGridView1.BeginUpdate();
        //    try
        //    {
        //        for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
        //        {
        //            int j = bandedGridView1.GetSelectedRows()[i];//selected handle
        //            if (j >= 0)
        //            {
        //                #region 判斷選中的格子是否在列

        //                //DevExpress.XtraGrid.Columns.GridColumn[] cells = bandedGridView1.GetSelectedCells(j);
        //                //bool isIn = false;
        //                //foreach (DevExpress.XtraGrid.Columns.GridColumn cell in cells)
        //                //{
        //                //    if (cell == colAdviceNote)
        //                //    {
        //                //        isIn = true;
        //                //        break;
        //                //    }
        //                //}
        //                //if (!isIn) continue;

        //                #endregion

        //                PH.POPC.BO.POChangesMonitor currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POChangesMonitor;
        //                if (currLot == null) continue;


        //                qty += currLot.InvoiceQty ?? 0;
        //                amount += Math.Round((currLot.InvoiceQty ?? 0) * (currLot.Price ?? 0), 2);

        //                //this.bandedGridView1.FocusedRowHandle = j;

        //            }
        //        }
        //    }
        //    finally
        //    {
        //        //ReleaseWaitDialog();
        //        //this.bandedGridView1.FocusedRowHandle = currHandle;
        //        this.bandedGridView1.EndUpdate();
        //    }


        //}

        public List<InvoiceUnitQty> GetSumQtyByUnit1()
        {
            var lists = _changeMonitors.GroupBy(p => new { p.SupplierReference, p.AdviceNote, p.PHUOM, p.ConvertFactor, p.SupplierUOM, p.Currency, p.Price, p.POColorSizeDetail.VATPrice, }).Select(g => new InvoiceUnitQty
            {
                SuppRef = g.Key.SupplierReference,
                AdviceNote = g.Key.AdviceNote,
                PHUom = g.Key.PHUOM,

                InvoiceQty = g.Sum(s => Convert.ToDecimal(s.InvoiceQty)),
                GRNQty = g.Sum(s => Convert.ToDecimal(s.GRNQty ?? 0)),
                RCQty = g.Sum(s => Convert.ToDecimal(s.RCQty ?? 0)),
                StockInQty = g.Sum(s => Convert.ToDecimal(s.StockInQty ?? 0)),

                ConvertFactor = Convert.ToDecimal(g.Key.ConvertFactor),
                SupplierUOM = g.Key.SupplierUOM,
                SuppStockInQty = g.Sum(s => Convert.ToDecimal(s.StockInQty)),
                PackingListQtyOnSuppUom = g.Sum(s => Convert.ToDecimal(s.SuppStockInQty)),

                Currency = g.Key.Currency,
                UnitPrice = g.Key.Price,
                UnitPriceVAT = g.Key.VATPrice
            }).ToList();

            FabricInspectionDataContext IMQE_DB = ContextBuilder.CreateContext<FabricInspectionDataContext>();
            foreach (var obj in lists)
            {
                obj.Useful = context.fn_GetUseful(obj.SuppRef, obj.AdviceNote);
                obj.TotalAmount = lists.Select(p => p.SubTotalAmount).Sum();
                obj.ClaimDiffBy_RCQtyFlag = ((obj.RCQty ?? 0) > 0) ? "√" : "--";
                obj.ClaimDiffBy_MoneyFlag = IMQE_DB.DebitNotes.FirstOrDefault(p => p.InvoiceNo == obj.AdviceNote) != null ? "√" : "--";

                obj.AmountDiff_ReviseInvoice = "--";
                obj.AmountDiff_DN = obj.ClaimDiffBy_MoneyFlag;
                obj.AmountDiff_CN = "--";
            }
            return lists;

        }


        public List<InvoiceUnitQty> GetSumQtyByUnit()
        {
            List<InvoiceUnitQty> list = new List<InvoiceUnitQty>();

            var list1 = from a in _changeMonitors
                        group a by a.SupplierUOM into g
                        select new
                        {
                            SuppUnit = g.Key,
                            POPCQty = g.Sum(p => p.InvoiceQty),
                            POPCAmount = g.Sum(p => Math.Round((p.InvoiceQty ?? 0) * (p.Price ?? 0), 2)),
                            POPCVATAmount = g.Sum(p => Math.Round((p.InvoiceQty ?? 0) * (p.POColorSizeDetail.VATPrice ?? 0), 2)) //由David加入 2022-06-21
                        };
            foreach (var a in list1)
            {
                InvoiceUnitQty iuq = new InvoiceUnitQty();
                string sQty = string.Format("{0:#,##0.#####}", a.POPCQty);
                string sAmount = string.Format("{0:#,##0.#####}", a.POPCAmount);
                string sVATAmount = string.Format("{0:#,##0.#####}", a.POPCVATAmount); //由David加入 2022-06-21

                iuq.SuppUnit = a.SuppUnit;
                iuq.POPCQty = Convert.ToDecimal(sQty);
                iuq.POPCAmount = Convert.ToDecimal(sAmount);
                iuq.POPCVATAmount = Convert.ToDecimal(sVATAmount);//由David加入 2022-06-21
                list.Add(iuq);
            }
            return list;
        }



        //public List<InvoiceUnitQty> GetSumQtyByUnit()
        //{
        //    List<InvoiceUnitQty> list = new List<InvoiceUnitQty>();
        //    // var ans = this.BindingSource.DataSource as IEnumerable<PH.POPC.BO.POChangesMonitor>;

        //    var list1 = from a in _changeMonitors
        //                group a by a.SupplierUOM into g
        //                select new
        //                {
        //                    SuppUnit = g.Key,
        //                    POPCQty = g.Sum(p => p.InvoiceQty),
        //                    POPCAmount = g.Sum(p => Math.Round((p.InvoiceQty ?? 0) * (p.Price ?? 0), 2)),
        //                    POPCVATAmount = g.Sum(p => Math.Round((p.InvoiceQty ?? 0) * (p.POColorSizeDetail.VATPrice ?? 0), 2)) //由David加入 2022-06-21
        //                };
        //    foreach (var a in list1)
        //    {
        //        InvoiceUnitQty iuq = new InvoiceUnitQty();
        //        string sQty = string.Format("{0:#,##0.#####}", a.POPCQty);
        //        string sAmount = string.Format("{0:#,##0.#####}", a.POPCAmount);
        //        string sVATAmount = string.Format("{0:#,##0.#####}", a.POPCVATAmount); //由David加入 2022-06-21

        //        iuq.SuppUnit = a.SuppUnit;
        //        iuq.POPCQty = Convert.ToDecimal(sQty);
        //        iuq.POPCAmount = Convert.ToDecimal(sAmount);
        //        iuq.POPCVATAmount = Convert.ToDecimal(sVATAmount);//由David加入 2022-06-21
        //        list.Add(iuq);
        //    }
        //    return list;
        //}



        //private void Comparetion(CompareTypeI comType)
        //{
        //    int invNum = 1;
        //    if (comType == CompareTypeI.INVs2DN)
        //    {
        //        POPC.InvoiceNumberForm numFrm = new PH.POPC.UI.POPC.InvoiceNumberForm();
        //        if (numFrm.ShowDialog() == DialogResult.Cancel) return;

        //        invNum = numFrm.InvNumber;
        //    }

        //    string adviceNotes = "";
        //    string curr = "";
        //    string uom = "";
        //    string supp = "";
        //    string pos = "";

        //    int currHandle = bandedGridView1.FocusedRowHandle;

        //    PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
        //    if (currLot == null) return;

        //    curr = currLot.Currency;
        //    uom = currLot.SupplierUOM;
        //    supp = currLot.Supplier;

        //    //Hashtable htNote = new Hashtable();
        //    //Hashtable htPO = new Hashtable();

        //    #region Get Select multi Advice notes



        //    //this.bandedGridView1.BeginUpdate();
        //    //try
        //    //{
        //    //    for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
        //    //    {
        //    //        int j = bandedGridView1.GetSelectedRows()[i];//selected handle
        //    //        if (j >= 0)
        //    //        {
        //    //            #region 判斷選中的格子是否在列

        //    //            //DevExpress.XtraGrid.Columns.GridColumn[] cells = bandedGridView1.GetSelectedCells(j);
        //    //            //bool isIn = false;
        //    //            //foreach (DevExpress.XtraGrid.Columns.GridColumn cell in cells)
        //    //            //{
        //    //            //    if (cell == colAdviceNote)
        //    //            //    {
        //    //            //        isIn = true;
        //    //            //        break;
        //    //            //    }
        //    //            //}
        //    //            //if (!isIn) continue;

        //    //            #endregion

        //    //            currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POChangesMonitor;
        //    //            if (currLot == null) continue;

        //    //            if (!htNote.Contains(currLot.AdviceNote))
        //    //            {
        //    //                htNote.Add(currLot.AdviceNote, currLot.AdviceNote);
        //    //                adviceNotes += currLot.AdviceNote + "\r\n";
        //    //            }
        //    //            if (!htPO.Contains(currLot.PONO))
        //    //            {
        //    //                htPO.Add(currLot.PONO, currLot.PONO);
        //    //                pos += currLot.PONO + "\r\n";
        //    //            }

        //    //            //this.bandedGridView1.FocusedRowHandle = j;

        //    //        }
        //    //    }
        //    //}
        //    //finally
        //    //{
        //    //    //ReleaseWaitDialog();
        //    //    this.bandedGridView1.FocusedRowHandle = currHandle;
        //    //    this.bandedGridView1.EndUpdate();
        //    //}
        //    #endregion

        //    adviceNotes = adviceNotes.Trim();
        //    pos = pos.Trim();

        //    decimal invoiceQty = 0;
        //    decimal invoiceAmount = 0;

        //    string[] ssNotes = _condition.AdviceNotes;// Common.ConvertToArray(adviceNotes);
        //    //string[] ssPOs = Common.ConvertToArray(pos);


        //    //---get selected ttl qty and amount
        //    this.GetTotalValueOfInvoiceByAdviceNote(supp, ssNotes, ref invoiceQty, ref invoiceAmount);

        //    POPC.InvoiceMatchingIForm frm = new PH.POPC.UI.POPC.InvoiceMatchingIForm(comType, _condition.AdviceNote, pos, curr, uom, supp, invoiceQty, invoiceAmount, invNum);
        //    DialogResult dr = frm.ShowDialog();
        //    bool isStep1 = dr == DialogResult.OK;
        //    bool isStep2 = dr == DialogResult.Ignore;

        //    if (isStep1 || isStep2)
        //    {
        //        #region Matching

        //        string invoiceNo = frm.InvoiceNo;
        //        DateTime? invoiceDate = frm.InvoiceDate;
        //        decimal qty = frm.InvoiceQty;
        //        decimal amount = frm.InvoiceAmount;
        //        //bool applytoAdviceNote = frm.ApplytoAdviceNote;


        //        //-- to do update
        //        #region apply to by Advice Note(s)

        //        this.bandedGridView1.BeginSort();
        //        try
        //        {
        //            // Obtain the number of data rows. 
        //            int dataRowCount = this.bandedGridView1.DataRowCount;
        //            // Traverse data rows and change the Price field values. 
        //            for (int i = 0; i < dataRowCount; i++)
        //            {
        //                PH.POPC.BO.POChangesMonitor cm = this.bandedGridView1.GetRow(i) as PH.POPC.BO.POChangesMonitor;
        //                if (cm == null) continue;

        //                //if (!ssNotes.Contains(cm.AdviceNote)) continue;

        //                SetRowValueOfMatching(isStep2, i, invoiceNo, invoiceDate);

        //            }
        //        }
        //        finally { this.bandedGridView1.EndSort(); }


        //        #endregion


        //        #endregion

        //        this.SaveData();

        //        string tips = isStep2 ? "please go to Step 2 to matching invoice Qty & Amount! " : "All Matching success!";
        //        MessageBox.Show(tips, "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //    }
        //}
        //private void Comparetion(CompareTypeII comType)
        //{
        //    string adviceNotes = "";
        //    string curr = "";
        //    string uom = "";
        //    string supp = "";
        //    string pos = "";

        //    #region Get Select multi Advice notes

        //    int currHandle = bandedGridView1.FocusedRowHandle;

        //    PH.POPC.BO.POChangesMonitor currLot = this.BindingSource.Current as PH.POPC.BO.POChangesMonitor;
        //    if (currLot == null) return;

        //    curr = currLot.Currency;
        //    uom = currLot.SupplierUOM;
        //    supp = currLot.Supplier;

        //    Hashtable htNote = new Hashtable();
        //    Hashtable htPO = new Hashtable();

        //    this.bandedGridView1.BeginUpdate();
        //    try
        //    {
        //        for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
        //        {
        //            int j = bandedGridView1.GetSelectedRows()[i];//selected handle
        //            if (j >= 0)
        //            {
        //                #region 判斷選中的格子是否在列

        //                //DevExpress.XtraGrid.Columns.GridColumn[] cells = bandedGridView1.GetSelectedCells(j);
        //                //bool isIn = false;
        //                //foreach (DevExpress.XtraGrid.Columns.GridColumn cell in cells)
        //                //{
        //                //    if (cell == colAdviceNote)
        //                //    {
        //                //        isIn = true;
        //                //        break;
        //                //    }
        //                //}
        //                //if (!isIn) continue;

        //                #endregion

        //                currLot = bandedGridView1.GetRow(j) as PH.POPC.BO.POChangesMonitor;
        //                if (currLot == null) continue;

        //                if (!htNote.Contains(currLot.AdviceNote))
        //                {
        //                    htNote.Add(currLot.AdviceNote, currLot.AdviceNote);
        //                    adviceNotes += currLot.AdviceNote + "\r\n";
        //                }
        //                if (!htPO.Contains(currLot.PONO))
        //                {
        //                    htPO.Add(currLot.PONO, currLot.PONO);
        //                    pos += currLot.PONO + "\r\n";
        //                }

        //                //this.bandedGridView1.FocusedRowHandle = j;

        //            }
        //        }
        //    }
        //    finally
        //    {
        //        //ReleaseWaitDialog();
        //        this.bandedGridView1.FocusedRowHandle = currHandle;
        //        this.bandedGridView1.EndUpdate();
        //    }
        //    #endregion

        //    adviceNotes = adviceNotes.Trim();
        //    pos = pos.Trim();

        //    decimal invoiceQty = 0;
        //    decimal invoiceAmount = 0;

        //    string[] ssNotes = Common.ConvertToArray(adviceNotes);
        //    string[] ssPOs = Common.ConvertToArray(pos);


        //    //---get selected ttl qty and amount
        //    switch (comType)
        //    {
        //        case PH.POPC.BO.CompareTypeII.DeliveryNote:
        //            this.GetTotalValueOfInvoiceByAdviceNote(supp, ssNotes, ref invoiceQty, ref invoiceAmount);
        //            break;
        //        case PH.POPC.BO.CompareTypeII.Item:
        //            this.GetTotalValueOfInvoiceByMaterial(ref invoiceQty, ref invoiceAmount);
        //            break;
        //        case PH.POPC.BO.CompareTypeII.PO:
        //            this.GetTotalValueOfInvoiceByPO(supp, ssPOs, ref invoiceQty, ref invoiceAmount);
        //            break;
        //        default:
        //            break;
        //    }

        //    POPC.InvoiceMatchingIForm frm = new PH.POPC.UI.POPC.InvoiceMatchingIForm(comType, adviceNotes, pos, curr, uom, supp, invoiceQty, invoiceAmount);
        //    DialogResult dr = frm.ShowDialog();
        //    bool isStep1 = dr == DialogResult.OK;
        //    bool isStep2 = dr == DialogResult.Ignore;

        //    if (isStep1 || isStep2)
        //    {
        //        #region Matching

        //        string invoiceNo = frm.InvoiceNo;
        //        DateTime? invoiceDate = frm.InvoiceDate;
        //        decimal qty = frm.InvoiceQty;
        //        decimal amount = frm.InvoiceAmount;
        //        //bool applytoAdviceNote = frm.ApplytoAdviceNote;


        //        #region Judge whether matching : qty & amount

        //        //decimal qty1 = 0;
        //        //decimal amount1 = 0;
        //        //if (applytoAdviceNote)
        //        //{
        //        //    GetTotalValueOfInvoiceByAdviceNote(supp, ssNotes, ref qty1, ref amount1);
        //        //}
        //        //else
        //        //{
        //        //    GetTotalValueOfInvoiceByMaterial(ref qty1, ref amount1);
        //        //}


        //        //if (qty1 != qty)
        //        //{
        //        //    MessageBox.Show("Invoice Qty not match, please chech again!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //        //    return;
        //        //}
        //        //if (amount1 != amount)
        //        //{
        //        //    MessageBox.Show("Invoice Amount not match, please chech again!", "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //        //    return;
        //        //}
        //        #endregion

        //        //-- to do update

        //        #region if matching, Update to ...

        //        switch (comType)
        //        {
        //            case CompareTypeII.DeliveryNote://Single Delivery Note
        //                #region apply to by Advice Note

        //                this.bandedGridView1.BeginSort();
        //                try
        //                {
        //                    // Obtain the number of data rows. 
        //                    int dataRowCount = this.bandedGridView1.DataRowCount;
        //                    // Traverse data rows and change the Price field values. 
        //                    for (int i = 0; i < dataRowCount; i++)
        //                    {
        //                        PH.POPC.BO.POChangesMonitor cm = this.bandedGridView1.GetRow(i) as PH.POPC.BO.POChangesMonitor;
        //                        if (cm == null) continue;

        //                        if (!ssNotes.Contains(cm.AdviceNote)) continue;

        //                        SetRowValueOfMatching(isStep2, i, invoiceNo, invoiceDate);

        //                    }

        //                }
        //                finally { this.bandedGridView1.EndSort(); }


        //                #endregion
        //                break;
        //            case CompareTypeII.Item: //Multi Items
        //                #region apply to by selected material

        //                this.bandedGridView1.BeginUpdate();
        //                try
        //                {
        //                    for (int i = 0; i < bandedGridView1.SelectedRowsCount; i++)
        //                    {
        //                        int j = bandedGridView1.GetSelectedRows()[i];//selected handle
        //                        if (j >= 0)
        //                        {
        //                            #region 判斷選中的格子是否在列

        //                            //DevExpress.XtraGrid.Columns.GridColumn[] cells = bandedGridView1.GetSelectedCells(j);
        //                            //bool isIn = false;
        //                            //foreach (DevExpress.XtraGrid.Columns.GridColumn cell in cells)
        //                            //{
        //                            //    if (cell == colAdviceNote)
        //                            //    {
        //                            //        isIn = true;
        //                            //        break;
        //                            //    }
        //                            //}
        //                            //if (!isIn) continue;

        //                            #endregion

        //                            PH.POPC.BO.POChangesMonitor cm = this.bandedGridView1.GetRow(j) as PH.POPC.BO.POChangesMonitor;
        //                            if (cm == null) continue;

        //                            //if (!ssNotes.Contains(cm.AdviceNote)) continue;

        //                            SetRowValueOfMatching(isStep2, j, invoiceNo, invoiceDate);


        //                            //this.bandedGridView1.FocusedRowHandle = j;

        //                        }
        //                    }
        //                }
        //                finally
        //                {
        //                    //ReleaseWaitDialog();
        //                    this.bandedGridView1.FocusedRowHandle = currHandle;
        //                    this.bandedGridView1.EndUpdate();
        //                }
        //                #endregion
        //                break;
        //            case CompareTypeII.PO:
        //                #region apply to by PO

        //                this.bandedGridView1.BeginSort();
        //                try
        //                {
        //                    // Obtain the number of data rows. 
        //                    int dataRowCount = this.bandedGridView1.DataRowCount;
        //                    // Traverse data rows and change the Price field values. 
        //                    for (int i = 0; i < dataRowCount; i++)
        //                    {
        //                        PH.POPC.BO.POChangesMonitor cm = this.bandedGridView1.GetRow(i) as PH.POPC.BO.POChangesMonitor;
        //                        if (cm == null) continue;

        //                        if (!ssPOs.Contains(cm.PONO)) continue;

        //                        SetRowValueOfMatching(isStep2, i, invoiceNo, invoiceDate);

        //                    }

        //                }
        //                finally { this.bandedGridView1.EndSort(); }


        //                #endregion
        //                break;
        //            default:
        //                break;
        //        }


        //        //this.DataContext.ExecuteCommand("sp_POPC_SetAdviceNoteComplete '{0}','{1}',{2}",supp,

        //        #endregion

        //        #endregion

        //        this.SaveData();

        //        string tips = isStep2 ? "please go to Step 2 to matching invoice Qty & Amount! " : "Matching success!";
        //        MessageBox.Show(tips, "Tips", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //    }
        //}

        //private void SetRowValueOfMatching(bool isStep2, int iRow, string invoiceNo, DateTime? invoiceDate)
        //{
        //    this.bandedGridView1.SetRowCellValue(iRow, colInvoiceNo, invoiceNo);
        //    this.bandedGridView1.SetRowCellValue(iRow, colInvoiceDate, invoiceDate);
        //    this.bandedGridView1.SetRowCellValue(iRow, colInvoiceMatchingDate, DateTime.Now);

        //    this.bandedGridView1.SetRowCellValue(iRow, colInvoiceNoFlag, true);
        //    this.bandedGridView1.SetRowCellValue(iRow, colInvoiceDateFlag, true);

        //    if (!isStep2)//step 2 要手工处理
        //    {
        //        this.bandedGridView1.SetRowCellValue(iRow, colInvoiceQty2Flag, true);
        //        this.bandedGridView1.SetRowCellValue(iRow, colInvoiceAmountFlag, true);
        //    }

        //    this.bandedGridView1.SetRowCellValue(iRow, colUnitFlag, true);
        //    this.bandedGridView1.SetRowCellValue(iRow, colBDownFlag, true);
        //    this.bandedGridView1.SetRowCellValue(iRow, colPriceFlag, true);
        //    this.bandedGridView1.SetRowCellValue(iRow, colCurrencyFlag, true);
        //    this.bandedGridView1.SetRowCellValue(iRow, colPaymentTermFlag, true);
        //    this.bandedGridView1.SetRowCellValue(iRow, colIncotermFlag, true);

        //    this.bandedGridView1.PostEditor(); //由David加入 2022-08-08

        //}

        //private void UpdateAfterMatching()
        //{
        //    #region apply to by Advice Note(s)

        //    this.bandedGridView1.BeginSort();
        //    try
        //    {
        //        // Obtain the number of data rows. 
        //        int dataRowCount = this.bandedGridView1.DataRowCount;
        //        // Traverse data rows and change the Price field values. 
        //        for (int i = 0; i < dataRowCount; i++)
        //        {
        //            PH.POPC.BO.POChangesMonitor cm = this.bandedGridView1.GetRow(i) as PH.POPC.BO.POChangesMonitor;
        //            if (cm == null) continue;
        //            //if (!ssNotes.Contains(cm.AdviceNote)) continue;

        //            SetRowValueOfMatching(false, i, this._condition.InvoiceNo, this._condition.InvoiceDate);
        //        }
        //        bandedGridView1.PostEditor(); //由David加入 2022-08-08

        //    }
        //    finally
        //    {
        //        this.bandedGridView1.EndSort();
        //    }

        //    #endregion

        //    this.SaveData();
        //}

        #endregion

        private void barButtonItemOutstandingAdviceNote_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            try
            {
                PH.Platform.UI.WaitingForm.Show("", "");
                CreateProgramForm(typeof(POAdviceNotePOListForm), "Outstanding Advice Note", true, null, null);
            }
            finally
            {
                PH.Platform.UI.WaitingForm.Close();
            }

        }


    }
}
