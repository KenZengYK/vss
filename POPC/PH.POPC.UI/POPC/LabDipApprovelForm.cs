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
using DevExpress.XtraGrid.Views.Base;
using DevExpress.XtraGrid.Views.Grid;
using DevExpress.XtraGrid.Views.Grid.ViewInfo;
using DevExpress.XtraEditors.Controls;

namespace PH.POPC.UI
{
    public partial class LabDipApprovalForm : PH.Platform.UI.CS.UI2.ListForm
    {

        #region//auto code
        //private System.ComponentModel.IContainer components = null;

        private DevExpress.XtraBars.BarButtonItem barBtnRefresh;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        //private DevExpress.XtraBars.BarButtonItem barButtonItem1;//;=new DevExpress.XtraBars.BarButtonItem();
        public DevExpress.XtraBars.BarButtonItem barBtnPoList;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
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
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandSample;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandColorStandard;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandLadDip;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit riCheck;
        private DevExpress.XtraBars.BarButtonItem btnAddLots;
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
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeReport;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOExftyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOIssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOBalancePercent;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHOutstandingQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustOrderNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFitCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSizeCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandBulk;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand bandTest;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colNumOfProject;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riPHDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndCustColor;
        private DevExpress.XtraBars.BarButtonItem btnShip;
        private DevExpress.XtraBars.BarButtonItem btnPrintPO;
        private DevExpress.XtraBars.BarButtonItem btnClone;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox ricbOption;
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
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReceiveDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHandleNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDipDesc;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit riDate;
        #endregion

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.riDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCompany = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsOutStanding = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierLocation = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOIssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSKU = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustStyleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustOrderNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndCustColor = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorShade = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHOutstandingQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOBalancePercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierUOM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPHUom = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOReqDeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPODeliveryDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrame1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrame2 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitModePO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransitPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colEndPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFitCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFitDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandSample = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandColorStandard = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandBulk = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.bandTest = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDipDesc = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReceiveDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDipStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHandleNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colNumOfProject = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersionFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.riPHDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.bandLadDip = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.rigluLadDip = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.repositoryItemGridLookUpEdit1View = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rigluBulk = new DevExpress.XtraEditors.Repository.RepositoryItemGridLookUpEdit();
            this.repositoryItemMemoEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ribeReport = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.rilueLadDip = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.rilueBulk = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.ricbOption = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.riCheck = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.btnPrintShip = new DevExpress.XtraBars.BarButtonItem();
            this.btnPrintPO = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnClone = new DevExpress.XtraBars.BarButtonItem();
            this.btnCopySingle = new DevExpress.XtraBars.BarButtonItem();
            this.btnShipmentYes = new DevExpress.XtraBars.BarSubItem();
            this.btnAddLots = new DevExpress.XtraBars.BarButtonItem();
            this.btnShip = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluBulk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueLadDip)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueBulk)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbOption)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnRefresh,
            this.barSubItem1,
            this.barBtnPoList,
            this.btnAddLots,
            this.btnPrintShip,
            this.btnShipmentYes,
            this.btnShip,
            this.btnPrintPO,
            this.btnClone,
            this.btnWOReport,
            this.btnRWOReport,
            this.btnCopySingle});
            this.objbarManager.MaxItemId = 25;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POSKUOperate);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
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
            this.rigluBulk});
            this.objListGridControl.Size = new System.Drawing.Size(3144, 373);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
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
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand10,
            this.gridBand8,
            this.gridBand2,
            this.gridBand13,
            this.gridBand3,
            this.gridBand9});
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
            this.colWOExftyDate,
            this.colPOIssueDate,
            this.colPOBalancePercent,
            this.colPHOutstandingQty,
            this.colEndCustOrderNo,
            this.colFitCode,
            this.colSizeCode,
            this.colNumOfProject,
            this.colEndCustColor,
            this.colRemark,
            this.colPHQty,
            this.colPHUom,
            this.colReceiveDate,
            this.colDipCompletedDate,
            this.colDipStatus,
            this.colHandleNo,
            this.colDipDesc});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(607, 372, 274, 405);
            this.bandedGridView1.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.GroupFormat = "[#image]{1} {2}";
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsSelection.MultiSelect = true;
            this.bandedGridView1.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Data capture from PO(ERP) and Supplier Profile (Same figure at level 1,2,3)";
            this.gridBand1.Columns.Add(this.colCompany);
            this.gridBand1.Columns.Add(this.colIsOutStanding);
            this.gridBand1.Columns.Add(this.colFactory);
            this.gridBand1.Columns.Add(this.colSupplier);
            this.gridBand1.Columns.Add(this.colSupplierLocation);
            this.gridBand1.Columns.Add(this.colPONO);
            this.gridBand1.Columns.Add(this.colPOIssueDate);
            this.gridBand1.Columns.Add(this.colProjectNo);
            this.gridBand1.Columns.Add(this.colEndCustCode);
            this.gridBand1.Columns.Add(this.colSKU);
            this.gridBand1.Columns.Add(this.colCustStyleNo);
            this.gridBand1.Columns.Add(this.colEndCustOrderNo);
            this.gridBand1.Columns.Add(this.colEndCustColor);
            this.gridBand1.Columns.Add(this.colWOExftyDate);
            this.gridBand1.Columns.Add(this.colItemCode);
            this.gridBand1.Columns.Add(this.colSupplierReference);
            this.gridBand1.Columns.Add(this.colColorCode);
            this.gridBand1.Columns.Add(this.colColorShade);
            this.gridBand1.Columns.Add(this.colQty);
            this.gridBand1.Columns.Add(this.colPHOutstandingQty);
            this.gridBand1.Columns.Add(this.colPOBalancePercent);
            this.gridBand1.Columns.Add(this.colSupplierUOM);
            this.gridBand1.Columns.Add(this.colPHQty);
            this.gridBand1.Columns.Add(this.colPHUom);
            this.gridBand1.Columns.Add(this.colPOReqDeliveryDate);
            this.gridBand1.Columns.Add(this.colPODeliveryDate);
            this.gridBand1.Columns.Add(this.colTimeFrame1);
            this.gridBand1.Columns.Add(this.colTimeFrame2);
            this.gridBand1.Columns.Add(this.colIncoterms);
            this.gridBand1.Columns.Add(this.colTransitModePO);
            this.gridBand1.Columns.Add(this.colTransitPoint);
            this.gridBand1.Columns.Add(this.colEndPoint);
            this.gridBand1.Columns.Add(this.colVersion);
            this.gridBand1.Columns.Add(this.colAmendmentNo);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Tag = 1;
            this.gridBand1.Width = 2283;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.OptionsColumn.AllowEdit = false;
            this.colCompany.OptionsColumn.ReadOnly = true;
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
            this.colIsOutStanding.Visible = true;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceCell.Options.UseTextOptions = true;
            this.colFactory.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Our Prod\'n Site";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.Width = 59;
            // 
            // colSupplier
            // 
            this.colSupplier.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplier.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplier.Caption = "Supp Code";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.OptionsColumn.AllowEdit = false;
            this.colSupplier.OptionsColumn.ReadOnly = true;
            this.colSupplier.Visible = true;
            this.colSupplier.Width = 58;
            // 
            // colSupplierLocation
            // 
            this.colSupplierLocation.Caption = "Location of Supp Factory";
            this.colSupplierLocation.FieldName = "SupplierLocation";
            this.colSupplierLocation.Name = "colSupplierLocation";
            this.colSupplierLocation.OptionsColumn.AllowEdit = false;
            this.colSupplierLocation.Visible = true;
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
            this.colPONO.Visible = true;
            this.colPONO.Width = 82;
            // 
            // colPOIssueDate
            // 
            this.colPOIssueDate.Caption = "PO Issued Date";
            this.colPOIssueDate.FieldName = "POIssueDate";
            this.colPOIssueDate.Name = "colPOIssueDate";
            this.colPOIssueDate.OptionsColumn.AllowEdit = false;
            this.colPOIssueDate.Visible = true;
            this.colPOIssueDate.Width = 77;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Project Nr.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.OptionsColumn.ReadOnly = true;
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 87;
            // 
            // colEndCustCode
            // 
            this.colEndCustCode.AppearanceCell.Options.UseTextOptions = true;
            this.colEndCustCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndCustCode.Caption = "End Cust Code";
            this.colEndCustCode.FieldName = "EndCustCode";
            this.colEndCustCode.Name = "colEndCustCode";
            this.colEndCustCode.OptionsColumn.AllowEdit = false;
            this.colEndCustCode.Tag = 1;
            this.colEndCustCode.Visible = true;
            this.colEndCustCode.Width = 55;
            // 
            // colSKU
            // 
            this.colSKU.Caption = "SKU";
            this.colSKU.FieldName = "SKU";
            this.colSKU.Name = "colSKU";
            this.colSKU.OptionsColumn.AllowEdit = false;
            this.colSKU.OptionsColumn.ReadOnly = true;
            // 
            // colCustStyleNo
            // 
            this.colCustStyleNo.Caption = "End Cust Style";
            this.colCustStyleNo.FieldName = "CustStyleNo";
            this.colCustStyleNo.Name = "colCustStyleNo";
            this.colCustStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustStyleNo.Tag = 1;
            this.colCustStyleNo.Visible = true;
            // 
            // colEndCustOrderNo
            // 
            this.colEndCustOrderNo.Caption = "End Cust Order No\r\n(if any)";
            this.colEndCustOrderNo.FieldName = "CustOrderNo";
            this.colEndCustOrderNo.Name = "colEndCustOrderNo";
            this.colEndCustOrderNo.OptionsColumn.AllowEdit = false;
            this.colEndCustOrderNo.Tag = 1;
            this.colEndCustOrderNo.Visible = true;
            // 
            // colEndCustColor
            // 
            this.colEndCustColor.Caption = "End Cust Clr Code\r\n(if any)";
            this.colEndCustColor.FieldName = "GarmentColor";
            this.colEndCustColor.Name = "colEndCustColor";
            this.colEndCustColor.OptionsColumn.AllowEdit = false;
            this.colEndCustColor.Tag = 1;
            this.colEndCustColor.Visible = true;
            // 
            // colWOExftyDate
            // 
            this.colWOExftyDate.Caption = "WO Ex-fty Date";
            this.colWOExftyDate.FieldName = "WOExftyDate";
            this.colWOExftyDate.Name = "colWOExftyDate";
            this.colWOExftyDate.OptionsColumn.AllowEdit = false;
            this.colWOExftyDate.Visible = true;
            // 
            // colItemCode
            // 
            this.colItemCode.AppearanceCell.Options.UseTextOptions = true;
            this.colItemCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.OptionsColumn.ReadOnly = true;
            this.colItemCode.Visible = true;
            this.colItemCode.Width = 87;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp Item Ref.";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.Visible = true;
            // 
            // colColorCode
            // 
            this.colColorCode.AppearanceCell.Options.UseTextOptions = true;
            this.colColorCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColorCode.Caption = "Our Item Color Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.OptionsColumn.ReadOnly = true;
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 73;
            // 
            // colColorShade
            // 
            this.colColorShade.Caption = "Supp Item Color Shade";
            this.colColorShade.FieldName = "ColorShade";
            this.colColorShade.Name = "colColorShade";
            this.colColorShade.OptionsColumn.AllowEdit = false;
            this.colColorShade.Tag = 1;
            this.colColorShade.Visible = true;
            this.colColorShade.Width = 80;
            // 
            // colQty
            // 
            this.colQty.AppearanceCell.Options.UseTextOptions = true;
            this.colQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colQty.Caption = "PO Qty";
            this.colQty.DisplayFormat.FormatString = "#,0.#";
            this.colQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colQty.FieldName = "SupplierPOQty";
            this.colQty.Name = "colQty";
            this.colQty.OptionsColumn.AllowEdit = false;
            this.colQty.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colQty.Visible = true;
            this.colQty.Width = 60;
            // 
            // colPHOutstandingQty
            // 
            this.colPHOutstandingQty.AppearanceCell.Options.UseTextOptions = true;
            this.colPHOutstandingQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPHOutstandingQty.Caption = "PO Bal Qty";
            this.colPHOutstandingQty.DisplayFormat.FormatString = "#,0.###";
            this.colPHOutstandingQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHOutstandingQty.FieldName = "SupplierOutstandingQty";
            this.colPHOutstandingQty.Name = "colPHOutstandingQty";
            this.colPHOutstandingQty.OptionsColumn.AllowEdit = false;
            this.colPHOutstandingQty.Visible = true;
            // 
            // colPOBalancePercent
            // 
            this.colPOBalancePercent.AppearanceCell.Options.UseTextOptions = true;
            this.colPOBalancePercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colPOBalancePercent.Caption = "PO Bal %";
            this.colPOBalancePercent.DisplayFormat.FormatString = "p0";
            this.colPOBalancePercent.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPOBalancePercent.FieldName = "POBalancePercent";
            this.colPOBalancePercent.Name = "colPOBalancePercent";
            this.colPOBalancePercent.OptionsColumn.AllowEdit = false;
            this.colPOBalancePercent.Visible = true;
            // 
            // colSupplierUOM
            // 
            this.colSupplierUOM.AppearanceCell.Options.UseTextOptions = true;
            this.colSupplierUOM.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSupplierUOM.Caption = "PO Unit";
            this.colSupplierUOM.FieldName = "SupplierUOM";
            this.colSupplierUOM.Name = "colSupplierUOM";
            this.colSupplierUOM.OptionsColumn.AllowEdit = false;
            this.colSupplierUOM.Visible = true;
            this.colSupplierUOM.Width = 46;
            // 
            // colPHQty
            // 
            this.colPHQty.Caption = "Our Qty";
            this.colPHQty.DisplayFormat.FormatString = "#,0.#";
            this.colPHQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPHQty.FieldName = "Qty";
            this.colPHQty.Name = "colPHQty";
            this.colPHQty.Visible = true;
            // 
            // colPHUom
            // 
            this.colPHUom.Caption = "Our Unit";
            this.colPHUom.FieldName = "PHUom";
            this.colPHUom.Name = "colPHUom";
            this.colPHUom.Visible = true;
            // 
            // colPOReqDeliveryDate
            // 
            this.colPOReqDeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPOReqDeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPOReqDeliveryDate.Caption = "Initial Req Del. Date\r\n(for ref)";
            this.colPOReqDeliveryDate.FieldName = "POReqDeliveryDate";
            this.colPOReqDeliveryDate.Name = "colPOReqDeliveryDate";
            this.colPOReqDeliveryDate.OptionsColumn.AllowEdit = false;
            this.colPOReqDeliveryDate.Visible = true;
            // 
            // colPODeliveryDate
            // 
            this.colPODeliveryDate.AppearanceCell.Options.UseTextOptions = true;
            this.colPODeliveryDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPODeliveryDate.Caption = "PO Delivery Date";
            this.colPODeliveryDate.FieldName = "PODeliveryDate";
            this.colPODeliveryDate.Name = "colPODeliveryDate";
            this.colPODeliveryDate.OptionsColumn.AllowEdit = false;
            this.colPODeliveryDate.OptionsColumn.ReadOnly = true;
            this.colPODeliveryDate.Visible = true;
            this.colPODeliveryDate.Width = 82;
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
            this.colTimeFrame1.Visible = true;
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
            this.colTimeFrame2.Visible = true;
            this.colTimeFrame2.Width = 64;
            // 
            // colIncoterms
            // 
            this.colIncoterms.AppearanceCell.Options.UseTextOptions = true;
            this.colIncoterms.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.OptionsColumn.AllowEdit = false;
            this.colIncoterms.OptionsColumn.ReadOnly = true;
            this.colIncoterms.Visible = true;
            this.colIncoterms.Width = 77;
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
            this.colTransitModePO.Visible = true;
            this.colTransitModePO.Width = 57;
            // 
            // colTransitPoint
            // 
            this.colTransitPoint.Caption = "Transit Point";
            this.colTransitPoint.FieldName = "TransitPoint";
            this.colTransitPoint.Name = "colTransitPoint";
            this.colTransitPoint.OptionsColumn.AllowEdit = false;
            this.colTransitPoint.OptionsColumn.ReadOnly = true;
            this.colTransitPoint.Visible = true;
            this.colTransitPoint.Width = 190;
            // 
            // colEndPoint
            // 
            this.colEndPoint.AppearanceCell.Options.UseTextOptions = true;
            this.colEndPoint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndPoint.Caption = "Point of Dest. Code\r\n(for ref)";
            this.colEndPoint.FieldName = "EndPoint";
            this.colEndPoint.Name = "colEndPoint";
            this.colEndPoint.OptionsColumn.AllowEdit = false;
            this.colEndPoint.OptionsColumn.ReadOnly = true;
            this.colEndPoint.Visible = true;
            this.colEndPoint.Width = 85;
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
            // gridBand10
            // 
            this.gridBand10.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand10.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand10.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand10.Caption = "Our Item Size/Cup";
            this.gridBand10.Columns.Add(this.colSizeCode);
            this.gridBand10.Columns.Add(this.colFitCode);
            this.gridBand10.MinWidth = 20;
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Tag = 1;
            this.gridBand10.Width = 87;
            // 
            // colSizeCode
            // 
            this.colSizeCode.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeCode.Caption = "Size";
            this.colSizeCode.FieldName = "SizeCode";
            this.colSizeCode.Name = "colSizeCode";
            this.colSizeCode.OptionsColumn.AllowEdit = false;
            this.colSizeCode.Visible = true;
            this.colSizeCode.Width = 43;
            // 
            // colFitCode
            // 
            this.colFitCode.AppearanceCell.Options.UseTextOptions = true;
            this.colFitCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFitCode.Caption = "Cup";
            this.colFitCode.FieldName = "FitCode";
            this.colFitCode.Name = "colFitCode";
            this.colFitCode.OptionsColumn.AllowEdit = false;
            this.colFitCode.Visible = true;
            this.colFitCode.Width = 44;
            // 
            // gridBand8
            // 
            this.gridBand8.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand8.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand8.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand8.Caption = "Supplier Size/Cup Desc.\r\n(for ref)";
            this.gridBand8.Columns.Add(this.colSizeDesc);
            this.gridBand8.Columns.Add(this.colFitDesc);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Tag = 1;
            this.gridBand8.Width = 104;
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.AppearanceCell.Options.UseTextOptions = true;
            this.colSizeDesc.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeDesc.Caption = "Size";
            this.colSizeDesc.FieldName = "SizeDesc";
            this.colSizeDesc.Name = "colSizeDesc";
            this.colSizeDesc.OptionsColumn.AllowEdit = false;
            this.colSizeDesc.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSizeDesc.OptionsColumn.ReadOnly = true;
            this.colSizeDesc.Visible = true;
            this.colSizeDesc.Width = 51;
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
            this.colFitDesc.Width = 53;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "QA (Quality Assurance) Process for Production Release";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandSample,
            this.bandColorStandard});
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 2;
            this.gridBand2.Visible = false;
            this.gridBand2.Width = 75;
            // 
            // bandSample
            // 
            this.bandSample.Caption = "Mat\'l Smpl Approval Status ";
            this.bandSample.Name = "bandSample";
            this.bandSample.Visible = false;
            this.bandSample.Width = 75;
            // 
            // bandColorStandard
            // 
            this.bandColorStandard.Caption = "Color Standard\r\n(Provided by PH)";
            this.bandColorStandard.Name = "bandColorStandard";
            this.bandColorStandard.RowCount = 2;
            this.bandColorStandard.Visible = false;
            this.bandColorStandard.Width = 81;
            // 
            // gridBand13
            // 
            this.gridBand13.Caption = "QA Process for Shipment Release";
            this.gridBand13.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.bandBulk,
            this.bandTest});
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Tag = 2;
            this.gridBand13.Visible = false;
            this.gridBand13.Width = 41;
            // 
            // bandBulk
            // 
            this.bandBulk.Caption = "Bulk Color Approval Status ";
            this.bandBulk.Name = "bandBulk";
            this.bandBulk.Visible = false;
            this.bandBulk.Width = 41;
            // 
            // bandTest
            // 
            this.bandTest.Caption = "Others Lab Test Approval Status\r\n(cust dependent)";
            this.bandTest.Name = "bandTest";
            this.bandTest.Visible = false;
            this.bandTest.Width = 75;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Lab Dip Approval Status";
            this.gridBand3.Columns.Add(this.colDipDesc);
            this.gridBand3.Columns.Add(this.colReceiveDate);
            this.gridBand3.Columns.Add(this.colDipCompletedDate);
            this.gridBand3.Columns.Add(this.colDipStatus);
            this.gridBand3.Columns.Add(this.colHandleNo);
            this.gridBand3.Columns.Add(this.colRemark);
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 429;
            // 
            // colDipDesc
            // 
            this.colDipDesc.Caption = "Lab Dip";
            this.colDipDesc.FieldName = "DipDesc";
            this.colDipDesc.Name = "colDipDesc";
            this.colDipDesc.Visible = true;
            this.colDipDesc.Width = 54;
            // 
            // colReceiveDate
            // 
            this.colReceiveDate.Caption = "Received Date";
            this.colReceiveDate.FieldName = "ReceiveDate";
            this.colReceiveDate.Name = "colReceiveDate";
            this.colReceiveDate.Visible = true;
            // 
            // colDipCompletedDate
            // 
            this.colDipCompletedDate.Caption = "App/Rej Date";
            this.colDipCompletedDate.FieldName = "DipCompletedDate";
            this.colDipCompletedDate.Name = "colDipCompletedDate";
            this.colDipCompletedDate.Visible = true;
            // 
            // colDipStatus
            // 
            this.colDipStatus.Caption = "App/Rej Status";
            this.colDipStatus.FieldName = "DipStatus";
            this.colDipStatus.Name = "colDipStatus";
            this.colDipStatus.Visible = true;
            // 
            // colHandleNo
            // 
            this.colHandleNo.Caption = "Rept Seq No.";
            this.colHandleNo.FieldName = "HandleNo";
            this.colHandleNo.Name = "colHandleNo";
            this.colHandleNo.Visible = true;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.OptionsColumn.AllowEdit = false;
            this.colRemark.Tag = 1;
            this.colRemark.Visible = true;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Other Information\r\n(Same figure at level 1,2,3)";
            this.gridBand9.Columns.Add(this.colNumOfProject);
            this.gridBand9.Columns.Add(this.colTeam);
            this.gridBand9.Columns.Add(this.colOrderLine);
            this.gridBand9.Columns.Add(this.colPurchaseOfficer);
            this.gridBand9.MinWidth = 20;
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Tag = 1;
            this.gridBand9.Width = 220;
            // 
            // colNumOfProject
            // 
            this.colNumOfProject.AppearanceCell.Options.UseTextOptions = true;
            this.colNumOfProject.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colNumOfProject.Caption = "No. Of Project";
            this.colNumOfProject.FieldName = "NumOfProject";
            this.colNumOfProject.Name = "colNumOfProject";
            this.colNumOfProject.OptionsColumn.AllowEdit = false;
            this.colNumOfProject.Width = 63;
            // 
            // colTeam
            // 
            this.colTeam.AppearanceCell.Options.UseTextOptions = true;
            this.colTeam.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTeam.Caption = "Division";
            this.colTeam.FieldName = "Team";
            this.colTeam.Name = "colTeam";
            this.colTeam.OptionsColumn.AllowEdit = false;
            this.colTeam.Visible = true;
            this.colTeam.Width = 60;
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "PO Line";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.OptionsColumn.ReadOnly = true;
            this.colOrderLine.Visible = true;
            // 
            // colPurchaseOfficer
            // 
            this.colPurchaseOfficer.Caption = "Coordinator";
            this.colPurchaseOfficer.FieldName = "PurchaseOfficer";
            this.colPurchaseOfficer.Name = "colPurchaseOfficer";
            this.colPurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.colPurchaseOfficer.Visible = true;
            this.colPurchaseOfficer.Width = 85;
            // 
            // colVersionFlag
            // 
            this.colVersionFlag.Caption = "Version Flag";
            this.colVersionFlag.FieldName = "VersionFlag";
            this.colVersionFlag.Name = "colVersionFlag";
            this.colVersionFlag.OptionsColumn.AllowEdit = false;
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
            // bandLadDip
            // 
            this.bandLadDip.Caption = "Lab Dip Approval Status";
            this.bandLadDip.Name = "bandLadDip";
            this.bandLadDip.Visible = false;
            this.bandLadDip.Width = 43;
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
            // ribeReport
            // 
            this.ribeReport.AutoHeight = false;
            this.ribeReport.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribeReport.Name = "ribeReport";
            this.ribeReport.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
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
            this.btnClone.Id = 21;
            this.btnClone.ImageIndex = 1;
            this.btnClone.Name = "btnClone";
            // 
            // btnCopySingle
            // 
            this.btnCopySingle.Caption = "Copy";
            this.btnCopySingle.Id = 24;
            this.btnCopySingle.ImageIndex = 2;
            this.btnCopySingle.Name = "btnCopySingle";
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
            // LabDipApprovalForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LabDipApprovalForm";
            this.Size = new System.Drawing.Size(3144, 400);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riPHDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluLadDip)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemGridLookUpEdit1View)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rigluBulk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeReport)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueLadDip)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rilueBulk)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbOption)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riCheck)).EndInit();
            this.ResumeLayout(false);

        }
        public LabDipApprovalForm()
        {
            InitializeComponent();

            //POLevelDraw d = new POLevelDraw(this.bandedGridView1);
            //this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawBandHeader);
            //this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(d.BandedGridView_CustomDrawColumnHeader);
            _sortby = POPCSortBy.ProjectItemCode;
        }

        #region Platform

        PH.POPC.BO.POPCDataContext context;
        public override void DataBind()
        {
            base.DataBind();

            context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POSKUOperate);

            //this.AllowGridEdit = true;
            //this.AllowAddRow = false;
            //this.RowChangeAutoSave = false;
            //this.bandedGridView1.OptionsBehavior.Editable = true;
            //this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            DataQueryParameter param = new DataQueryParameter();
            param.BoType = typeof(PH.POPC.BO.POSKUOperate);
            param.WarnRecord = -1;
            this.StartEnquiry(param);

            //AssignDataToLookupEdit();
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
            using (POPC.POPCEnquiryForm frm = new PH.POPC.UI.POPC.POPCEnquiryForm(0))
            {
                if (frm.ShowDialog() == DialogResult.OK)
                {
                    EnquiryPOPC(frm.Condition);
                }
            }
        }
        private void EnquiryPOPC(PH.POPC.BO.POPCEnquiryCondition condition)
        {
            //if (string.IsNullOrEmpty(Supplier) && string.IsNullOrEmpty(ProjectNo) && string.IsNullOrEmpty(PONO))
            //{
            //    MessageBox.Show("Must input a value for Supplier, Project No. or PO No.");
            //    return;
            //}
            this.CreateWaitDialog("Loading data...", "Please waiting");
            try
            {
                context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
                context.CommandTimeout = 1000;
                context.Connection.Open();
                context.ExecuteCommand("SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;");

                this.DataContext = context;

                _sortby = condition.SortBy;


                var cc = from c in context.POSKUOperates
                         where c.Company == condition.Company
                         && c.HandleType == PH.POPC.BO.Common.DipSubmit
                         && (string.IsNullOrEmpty(condition.PONO) || c.PONO == condition.PONO)
                         && (c.POColorSizeDetail.VersionFlag ?? false)
                         && c.POColorSizeDetail.PODetail.POHeader.POType == (int)POType.PO
                         && (c.POColorSizeDetail.PODetail.POHeader.Flag == null || c.POColorSizeDetail.PODetail.POHeader.Flag == "")
                         && (c.POColorSizeDetail.PODetail.Flag == null || c.POColorSizeDetail.PODetail.Flag == "")
                         && (string.IsNullOrEmpty(condition.Supplier) || c.POColorSizeDetail.PODetail.POHeader.Supplier == condition.Supplier)
                         && (string.IsNullOrEmpty(condition.ProjectFrom) || (c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectFrom) >= 0 && c.POColorSizeDetail.PODetail.ProjectNo.CompareTo(condition.ProjectTo) <= 0))
                         && (condition.POStatus == 0 //All
                            || (condition.POStatus == 1 && c.POColorSizeDetail.PHOutstandingQty > 0) //Outstanding
                            || (condition.POStatus == 2 && c.POColorSizeDetail.PHOutstandingQty <= 0) //Completed
                            )
                             //&& (condition.POStatus == 0 //All
                             //   || (condition.POStatus == 1 && (!(c.POColorSizeDetail.PORCs.All(p => (p.InvoiceFlag ?? false))) && c.POColorSizeDetail.PODetail.POHeader.Status == "1")) //Outstanding
                             //   || (condition.POStatus == 2 && ((c.POColorSizeDetail.PORCs.All(p => (p.InvoiceFlag ?? false))) || c.POColorSizeDetail.PODetail.POHeader.Status == "0")) //Completed
                             //   )
                         && (string.IsNullOrEmpty(condition.EndCustCode) || c.POColorSizeDetail.PODetail.POHeader.EndCustCode == condition.EndCustCode)
                         && (string.IsNullOrEmpty(condition.Team) || c.POColorSizeDetail.PODetail.POHeader.Dept == condition.Team)
                         && (string.IsNullOrEmpty(condition.Factory) || c.POColorSizeDetail.PODetail.POHeader.Factory == condition.Factory)
                         && (string.IsNullOrEmpty(condition.SuppRef) || c.POColorSizeDetail.SupplierReference == condition.SuppRef)
                         && (string.IsNullOrEmpty(condition.ColorCode) || c.POColorSizeDetail.ColorCode == condition.ColorCode)
                         && (string.IsNullOrEmpty(condition.Coordinator) || c.POColorSizeDetail.PODetail.POHeader.PurchaseOfficer == condition.Coordinator)
                         && (condition.IssueDateFrom == DateTime.MinValue ||
                               ((c.POColorSizeDetail.PODetail.POHeader.OrderDate) >= condition.IssueDateFrom && (c.POColorSizeDetail.PODetail.POHeader.OrderDate) < condition.IssueDateTo.AddDays(1))
                            )
                         && (condition.DeliveryDateFrom == DateTime.MinValue ||
                               ((c.POColorSizeDetail.PODetail.ConfirmETADate) >= condition.DeliveryDateFrom && (c.POColorSizeDetail.PODetail.ConfirmETADate) < condition.DeliveryDateTo.AddDays(1))
                            )
                         && (condition.ExftyDateFrom == DateTime.MinValue ||
                               ((c.POColorSizeDetail.WOExftyDate) >= condition.ExftyDateFrom && (c.POColorSizeDetail.WOExftyDate) < condition.ExftyDateTo.AddDays(1))
                            )

                         orderby c.PONO, c.OrderLine, c.SKU, c.HandleNo
                         select c;

                this.BindingSource.DataSource = cc;
                GridViewSort();
            }
            finally
            {
                ReleaseWaitDialog();
            }

        }
        private void GridViewSort()
        {
            switch (_sortby)
            {
                case POPCSortBy.ProjectItemCode:
                    this.bandedGridView1.SortInfo.ClearAndAddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] { 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["ProjectNO"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["SKU"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["PONO"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["OrderLine"], DevExpress.Data.ColumnSortOrder.Ascending  )
               }
                   );

                    break;
                case POPCSortBy.ItemCodeProject:
                    this.bandedGridView1.SortInfo.ClearAndAddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] { 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["SKU"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["ProjectNO"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["PONO"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["OrderLine"], DevExpress.Data.ColumnSortOrder.Ascending  )
               }
                   );

                    break;
                case POPCSortBy.SuppDeliveryDate:
                    this.bandedGridView1.SortInfo.ClearAndAddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] { 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["Supplier"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["PODeliveryDate"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["PONO"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["OrderLine"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
                   new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.bandedGridView1.Columns["SKU"], DevExpress.Data.ColumnSortOrder.Ascending  ), 
               }
                   );
                    break;
                default:
                    break;
            }


            //view.BeginSort();
            //try
            //{
            //    View.ClearSorting();
            //    View.Columns["Country"].SortOrder = ColumnSortOrder.Ascending;
            //    View.Columns["City"].SortOrder = ColumnSortOrder.Descending;
            //}
            //finally
            //{
            //    View.EndSort();
            //}




        }
        

        #endregion
    }
}
