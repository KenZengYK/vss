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
using DevExpress.XtraEditors;
namespace PH.POPC.UI
{
    public partial class POHeaderListFormMIDc : PH.Platform.UI.CS.UI2.ListForm
    {

        #region//auto code
        //private System.ComponentModel.IContainer components = null;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Version;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PONO;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Dept;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_OrderDate;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_Supplier;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PurchaseOfficerCode;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_PurchaseOfficer;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_ReceivingAddress;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_AddtionalTermsAndConditions;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_DeliveryAddress;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_OrderClass;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_NewVersion;

        private DevExpress.XtraBars.BarButtonItem barBtnRefresh;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        //private DevExpress.XtraBars.BarButtonItem barButtonItem1;//;=new DevExpress.XtraBars.BarButtonItem();
        public DevExpress.XtraBars.BarButtonItem barBtnPoList;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_POTYPE;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_WorkOrders;
        private DevExpress.XtraBars.BarButtonItem barButtonItemReport;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn_ShipmentDate;
        private DevExpress.XtraGrid.Views.Grid.GridView gvPODetail;
        private DevExpress.XtraGrid.Views.Grid.GridView gvPOColorSizeDetail;
        private DevExpress.XtraGrid.Columns.GridColumn colOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierReference;
        private DevExpress.XtraGrid.Columns.GridColumn colPHUom;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierUom;
        private DevExpress.XtraGrid.Columns.GridColumn colCommodity;
        private DevExpress.XtraGrid.Columns.GridColumn colConversionFactor;
        private DevExpress.XtraGrid.Columns.GridColumn colBuyerQtyDimension;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppQtyDimension;
        private DevExpress.XtraGrid.Columns.GridColumn colHaveSupplementSheet;
        private DevExpress.XtraGrid.Columns.GridColumn colReadyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colReceivedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colFitCode;
        private DevExpress.XtraGrid.Columns.GridColumn colPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemTextEdit repositoryItemTextEditUpper;
        private DevExpress.XtraBars.BarButtonItem btnCompletePO;
        private DevExpress.XtraBars.BarButtonItem btnFOC;
        private DevExpress.XtraGrid.Columns.GridColumn colFOC;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colShipMode;
        private DevExpress.XtraGrid.Columns.GridColumn colIncoterms;
        private DevExpress.XtraGrid.Columns.GridColumn colPaymentTerms;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierPOQty;
        private DevExpress.XtraBars.BarSubItem btnAction;
        private DevExpress.XtraBars.BarButtonItem btnCancel;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
        private DevExpress.XtraGrid.Columns.GridColumn colIsOutStanding;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraGrid.Columns.GridColumn Columns_IsOutStanding;
        #endregion

        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode3 = new DevExpress.XtraGrid.GridLevelNode();
            this.gvPODetail = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierUom = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCommodity = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConversionFactor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBuyerQtyDimension = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppQtyDimension = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHaveSupplementSheet = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReadyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colReceivedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsOutStanding = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.gvPOColorSizeDetail = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemTextEditUpper = new DevExpress.XtraEditors.Repository.RepositoryItemTextEdit();
            this.colSizeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFitCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierPOQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.Columns_Version = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Dept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Supplier = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PurchaseOfficerCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PurchaseOfficer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ReceivingAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AddtionalTermsAndConditions = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_DeliveryAddress = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_NewVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnRefresh = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnPoList = new DevExpress.XtraBars.BarButtonItem();
            this.Columns_IsOutStanding = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_POTYPE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_WorkOrders = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItemReport = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn_ShipmentDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnCompletePO = new DevExpress.XtraBars.BarButtonItem();
            this.btnFOC = new DevExpress.XtraBars.BarButtonItem();
            this.colFOC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colShipMode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIncoterms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPaymentTerms = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnAction = new DevExpress.XtraBars.BarSubItem();
            this.btnCancel = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPODetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPOColorSizeDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEditUpper)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnRefresh,
            this.barSubItem1,
            this.barBtnPoList,
            this.barButtonItemReport,
            this.btnCompletePO,
            this.btnFOC,
            this.btnAction,
            this.btnCancel});
            this.objbarManager.MaxItemId = 21;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnAction, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnFOC, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItemReport, true)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POHeader);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            gridLevelNode2.LevelTemplate = this.gvPODetail;
            gridLevelNode3.LevelTemplate = this.gvPOColorSizeDetail;
            gridLevelNode3.RelationName = "POColorSizeDetails";
            gridLevelNode2.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode3});
            gridLevelNode2.RelationName = "PODetails";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1,
            gridLevelNode2});
            this.objListGridControl.Location = new System.Drawing.Point(0, 26);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1,
            this.repositoryItemTextEditUpper,
            this.repositoryItemCheckEdit1,
            this.repositoryItemImageComboBox1,
            this.repositoryItemButtonEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1048, 474);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvPODetail,
            this.gvPOColorSizeDetail});
            // 
            // objListGridView
            // 
            this.objListGridView.ChildGridLevelName = "PODetails";
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Version,
            this.Columns_Company,
            this.Columns_PONO,
            this.Columns_Dept,
            this.Columns_OrderDate,
            this.Columns_Supplier,
            this.Columns_PurchaseOfficerCode,
            this.Columns_PurchaseOfficer,
            this.Columns_ReceivingAddress,
            this.Columns_AddtionalTermsAndConditions,
            this.Columns_DeliveryAddress,
            this.Columns_OrderClass,
            this.Columns_NewVersion,
            this.Columns_IsOutStanding,
            this.Columns_POTYPE,
            this.Columns_WorkOrders,
            this.gridColumn_ShipmentDate,
            this.colFOC,
            this.colShipMode,
            this.colIncoterms,
            this.colPaymentTerms});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(714, 281, 208, 191);
            this.objListGridView.GroupFormat = "[#image]{1} {2}";
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.AllowOnlyOneMasterRowExpanded = true;
            this.objListGridView.OptionsDetail.AllowZoomDetail = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Columns_PONO, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gvPODetail
            // 
            this.gvPODetail.ChildGridLevelName = "POColorSizeDetails";
            this.gvPODetail.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOrderLine,
            this.colSupplierReference,
            this.colPHUom,
            this.colSupplierUom,
            this.colCommodity,
            this.colConversionFactor,
            this.colBuyerQtyDimension,
            this.colSuppQtyDimension,
            this.colHaveSupplementSheet,
            this.colReadyDate,
            this.colReceivedDate,
            this.colIsOutStanding,
            this.colFlag});
            this.gvPODetail.GridControl = this.objListGridControl;
            this.gvPODetail.Name = "gvPODetail";
            this.gvPODetail.OptionsView.ColumnAutoWidth = false;
            this.gvPODetail.ViewCaption = "PO Detail";
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "Line#";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.Visible = true;
            this.colOrderLine.VisibleIndex = 2;
            this.colOrderLine.Width = 62;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp. Ref#";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.VisibleIndex = 3;
            this.colSupplierReference.Width = 131;
            // 
            // colPHUom
            // 
            this.colPHUom.Caption = "PH Unit";
            this.colPHUom.FieldName = "PHUom";
            this.colPHUom.Name = "colPHUom";
            this.colPHUom.OptionsColumn.AllowEdit = false;
            this.colPHUom.Visible = true;
            this.colPHUom.VisibleIndex = 6;
            this.colPHUom.Width = 64;
            // 
            // colSupplierUom
            // 
            this.colSupplierUom.Caption = "Supp. Unit";
            this.colSupplierUom.FieldName = "SupplierUom";
            this.colSupplierUom.Name = "colSupplierUom";
            this.colSupplierUom.OptionsColumn.AllowEdit = false;
            this.colSupplierUom.Visible = true;
            this.colSupplierUom.VisibleIndex = 7;
            this.colSupplierUom.Width = 86;
            // 
            // colCommodity
            // 
            this.colCommodity.Caption = "Commodity";
            this.colCommodity.FieldName = "Commodity";
            this.colCommodity.Name = "colCommodity";
            this.colCommodity.Width = 92;
            // 
            // colConversionFactor
            // 
            this.colConversionFactor.Caption = "Conv. Factor";
            this.colConversionFactor.FieldName = "ConversionFactor";
            this.colConversionFactor.Name = "colConversionFactor";
            this.colConversionFactor.OptionsColumn.AllowEdit = false;
            this.colConversionFactor.Visible = true;
            this.colConversionFactor.VisibleIndex = 8;
            this.colConversionFactor.Width = 98;
            // 
            // colBuyerQtyDimension
            // 
            this.colBuyerQtyDimension.Caption = "Our Dimension";
            this.colBuyerQtyDimension.FieldName = "BuyerQtyDimension";
            this.colBuyerQtyDimension.Name = "colBuyerQtyDimension";
            this.colBuyerQtyDimension.OptionsColumn.AllowEdit = false;
            this.colBuyerQtyDimension.Visible = true;
            this.colBuyerQtyDimension.VisibleIndex = 9;
            this.colBuyerQtyDimension.Width = 117;
            // 
            // colSuppQtyDimension
            // 
            this.colSuppQtyDimension.Caption = "Supp Dimension";
            this.colSuppQtyDimension.FieldName = "SuppQtyDimension";
            this.colSuppQtyDimension.Name = "colSuppQtyDimension";
            this.colSuppQtyDimension.OptionsColumn.AllowEdit = false;
            this.colSuppQtyDimension.Visible = true;
            this.colSuppQtyDimension.VisibleIndex = 10;
            this.colSuppQtyDimension.Width = 112;
            // 
            // colHaveSupplementSheet
            // 
            this.colHaveSupplementSheet.Caption = "Supplement Sheet";
            this.colHaveSupplementSheet.FieldName = "HaveSupplementSheet";
            this.colHaveSupplementSheet.Name = "colHaveSupplementSheet";
            this.colHaveSupplementSheet.Visible = true;
            this.colHaveSupplementSheet.VisibleIndex = 11;
            this.colHaveSupplementSheet.Width = 135;
            // 
            // colReadyDate
            // 
            this.colReadyDate.Caption = "Ready Date";
            this.colReadyDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colReadyDate.FieldName = "ReadyDate";
            this.colReadyDate.Name = "colReadyDate";
            this.colReadyDate.Visible = true;
            this.colReadyDate.VisibleIndex = 4;
            this.colReadyDate.Width = 102;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // colReceivedDate
            // 
            this.colReceivedDate.Caption = "Received Date";
            this.colReceivedDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.colReceivedDate.FieldName = "ReceivedDate";
            this.colReceivedDate.Name = "colReceivedDate";
            this.colReceivedDate.Visible = true;
            this.colReceivedDate.VisibleIndex = 5;
            this.colReceivedDate.Width = 111;
            // 
            // colIsOutStanding
            // 
            this.colIsOutStanding.Caption = "Status";
            this.colIsOutStanding.FieldName = "IsOutStanding";
            this.colIsOutStanding.Name = "colIsOutStanding";
            this.colIsOutStanding.OptionsColumn.AllowEdit = false;
            this.colIsOutStanding.Visible = true;
            this.colIsOutStanding.VisibleIndex = 0;
            this.colIsOutStanding.Width = 104;
            // 
            // colFlag
            // 
            this.colFlag.ColumnEdit = this.repositoryItemButtonEdit1;
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 1;
            this.colFlag.Width = 43;
            // 
            // repositoryItemButtonEdit1
            // 
            this.repositoryItemButtonEdit1.AutoHeight = false;
            this.repositoryItemButtonEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Ellipsis, "Cancel Material")});
            this.repositoryItemButtonEdit1.Name = "repositoryItemButtonEdit1";
            this.repositoryItemButtonEdit1.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.repositoryItemButtonEdit1.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit1_ButtonClick);
            // 
            // gvPOColorSizeDetail
            // 
            this.gvPOColorSizeDetail.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colColorCode,
            this.colSizeCode,
            this.colFitCode,
            this.colPrice,
            this.colQty,
            this.colSupplierPOQty});
            this.gvPOColorSizeDetail.GridControl = this.objListGridControl;
            this.gvPOColorSizeDetail.Name = "gvPOColorSizeDetail";
            this.gvPOColorSizeDetail.OptionsDetail.EnableMasterViewMode = false;
            this.gvPOColorSizeDetail.OptionsView.ColumnAutoWidth = false;
            this.gvPOColorSizeDetail.ViewCaption = "PO Size Matrix";
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Color Code";
            this.colColorCode.ColumnEdit = this.repositoryItemTextEditUpper;
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 0;
            this.colColorCode.Width = 105;
            // 
            // repositoryItemTextEditUpper
            // 
            this.repositoryItemTextEditUpper.AutoHeight = false;
            this.repositoryItemTextEditUpper.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemTextEditUpper.Name = "repositoryItemTextEditUpper";
            // 
            // colSizeCode
            // 
            this.colSizeCode.Caption = "Size Code";
            this.colSizeCode.ColumnEdit = this.repositoryItemTextEditUpper;
            this.colSizeCode.FieldName = "SizeCode";
            this.colSizeCode.Name = "colSizeCode";
            this.colSizeCode.Visible = true;
            this.colSizeCode.VisibleIndex = 1;
            this.colSizeCode.Width = 89;
            // 
            // colFitCode
            // 
            this.colFitCode.Caption = "Cup";
            this.colFitCode.ColumnEdit = this.repositoryItemTextEditUpper;
            this.colFitCode.FieldName = "FitCode";
            this.colFitCode.Name = "colFitCode";
            this.colFitCode.Visible = true;
            this.colFitCode.VisibleIndex = 2;
            this.colFitCode.Width = 73;
            // 
            // colPrice
            // 
            this.colPrice.Caption = "Price";
            this.colPrice.FieldName = "Price";
            this.colPrice.Name = "colPrice";
            this.colPrice.Visible = true;
            this.colPrice.VisibleIndex = 3;
            this.colPrice.Width = 104;
            // 
            // colQty
            // 
            this.colQty.Caption = "PH Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 4;
            this.colQty.Width = 112;
            // 
            // colSupplierPOQty
            // 
            this.colSupplierPOQty.AppearanceCell.BackColor = System.Drawing.Color.GhostWhite;
            this.colSupplierPOQty.AppearanceCell.Options.UseBackColor = true;
            this.colSupplierPOQty.Caption = "Supplier Qty";
            this.colSupplierPOQty.FieldName = "SupplierPOQty";
            this.colSupplierPOQty.Name = "colSupplierPOQty";
            this.colSupplierPOQty.Visible = true;
            this.colSupplierPOQty.VisibleIndex = 5;
            this.colSupplierPOQty.Width = 107;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("OutStanding", "1", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Completed", "0", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Cancelled", "-1", -1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            // 
            // Columns_Version
            // 
            this.Columns_Version.Caption = "Version";
            this.Columns_Version.FieldName = "POVersion";
            this.Columns_Version.Name = "Columns_Version";
            this.Columns_Version.OptionsColumn.AllowEdit = false;
            this.Columns_Version.OptionsColumn.ReadOnly = true;
            this.Columns_Version.Width = 88;
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            this.Columns_Company.OptionsColumn.AllowEdit = false;
            this.Columns_Company.OptionsColumn.ReadOnly = true;
            this.Columns_Company.Width = 88;
            // 
            // Columns_PONO
            // 
            this.Columns_PONO.Caption = "PO NO.";
            this.Columns_PONO.FieldName = "PONO";
            this.Columns_PONO.Name = "Columns_PONO";
            this.Columns_PONO.OptionsColumn.AllowEdit = false;
            this.Columns_PONO.OptionsColumn.ReadOnly = true;
            this.Columns_PONO.Visible = true;
            this.Columns_PONO.VisibleIndex = 0;
            this.Columns_PONO.Width = 78;
            // 
            // Columns_Dept
            // 
            this.Columns_Dept.Caption = "Dept";
            this.Columns_Dept.FieldName = "Dept";
            this.Columns_Dept.Name = "Columns_Dept";
            this.Columns_Dept.OptionsColumn.AllowEdit = false;
            this.Columns_Dept.OptionsColumn.ReadOnly = true;
            this.Columns_Dept.Width = 107;
            // 
            // Columns_OrderDate
            // 
            this.Columns_OrderDate.Caption = "Issue Date";
            this.Columns_OrderDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.Columns_OrderDate.FieldName = "OrderDate";
            this.Columns_OrderDate.Name = "Columns_OrderDate";
            this.Columns_OrderDate.OptionsColumn.AllowEdit = false;
            this.Columns_OrderDate.OptionsColumn.ReadOnly = true;
            this.Columns_OrderDate.Visible = true;
            this.Columns_OrderDate.VisibleIndex = 4;
            this.Columns_OrderDate.Width = 109;
            // 
            // Columns_Supplier
            // 
            this.Columns_Supplier.Caption = "Supplier";
            this.Columns_Supplier.FieldName = "Supplier";
            this.Columns_Supplier.Name = "Columns_Supplier";
            this.Columns_Supplier.OptionsColumn.AllowEdit = false;
            this.Columns_Supplier.OptionsColumn.ReadOnly = true;
            this.Columns_Supplier.Visible = true;
            this.Columns_Supplier.VisibleIndex = 1;
            this.Columns_Supplier.Width = 93;
            // 
            // Columns_PurchaseOfficerCode
            // 
            this.Columns_PurchaseOfficerCode.Caption = "Purchase Officer Code";
            this.Columns_PurchaseOfficerCode.FieldName = "PurchaseOfficerCode";
            this.Columns_PurchaseOfficerCode.Name = "Columns_PurchaseOfficerCode";
            this.Columns_PurchaseOfficerCode.OptionsColumn.AllowEdit = false;
            this.Columns_PurchaseOfficerCode.OptionsColumn.ReadOnly = true;
            // 
            // Columns_PurchaseOfficer
            // 
            this.Columns_PurchaseOfficer.Caption = "Coordinator";
            this.Columns_PurchaseOfficer.FieldName = "PurchaseOfficer";
            this.Columns_PurchaseOfficer.Name = "Columns_PurchaseOfficer";
            this.Columns_PurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.Columns_PurchaseOfficer.OptionsColumn.ReadOnly = true;
            this.Columns_PurchaseOfficer.Visible = true;
            this.Columns_PurchaseOfficer.VisibleIndex = 3;
            this.Columns_PurchaseOfficer.Width = 126;
            // 
            // Columns_ReceivingAddress
            // 
            this.Columns_ReceivingAddress.Caption = "Receiving Address";
            this.Columns_ReceivingAddress.FieldName = "ReceivingAddress";
            this.Columns_ReceivingAddress.Name = "Columns_ReceivingAddress";
            this.Columns_ReceivingAddress.OptionsColumn.AllowEdit = false;
            this.Columns_ReceivingAddress.OptionsColumn.ReadOnly = true;
            // 
            // Columns_AddtionalTermsAndConditions
            // 
            this.Columns_AddtionalTermsAndConditions.Caption = "Addtional Terms And Conditions";
            this.Columns_AddtionalTermsAndConditions.FieldName = "AddtionalTermsAndConditions";
            this.Columns_AddtionalTermsAndConditions.Name = "Columns_AddtionalTermsAndConditions";
            this.Columns_AddtionalTermsAndConditions.OptionsColumn.AllowEdit = false;
            this.Columns_AddtionalTermsAndConditions.OptionsColumn.ReadOnly = true;
            // 
            // Columns_DeliveryAddress
            // 
            this.Columns_DeliveryAddress.Caption = "Delivery Address";
            this.Columns_DeliveryAddress.FieldName = "DeliveryAddress";
            this.Columns_DeliveryAddress.Name = "Columns_DeliveryAddress";
            this.Columns_DeliveryAddress.OptionsColumn.AllowEdit = false;
            this.Columns_DeliveryAddress.OptionsColumn.ReadOnly = true;
            // 
            // Columns_OrderClass
            // 
            this.Columns_OrderClass.Caption = "Order Class";
            this.Columns_OrderClass.FieldName = "OrderClass";
            this.Columns_OrderClass.Name = "Columns_OrderClass";
            this.Columns_OrderClass.OptionsColumn.AllowEdit = false;
            this.Columns_OrderClass.OptionsColumn.ReadOnly = true;
            // 
            // Columns_NewVersion
            // 
            this.Columns_NewVersion.Caption = "PO Version";
            this.Columns_NewVersion.FieldName = "Version";
            this.Columns_NewVersion.Name = "Columns_NewVersion";
            this.Columns_NewVersion.OptionsColumn.AllowEdit = false;
            this.Columns_NewVersion.OptionsColumn.ReadOnly = true;
            // 
            // barBtnRefresh
            // 
            this.barBtnRefresh.Caption = "Refresh";
            this.barBtnRefresh.Id = 11;
            this.barBtnRefresh.Name = "barBtnRefresh";
            this.barBtnRefresh.PaintStyle = DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph;
            this.barBtnRefresh.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnRefresh.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnRefresh_ItemClick);
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
            this.barBtnPoList.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnPoList.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPoList_ItemClick);
            // 
            // Columns_IsOutStanding
            // 
            this.Columns_IsOutStanding.Caption = "Status";
            this.Columns_IsOutStanding.FieldName = "IsOutStanding";
            this.Columns_IsOutStanding.Name = "Columns_IsOutStanding";
            this.Columns_IsOutStanding.OptionsColumn.AllowEdit = false;
            this.Columns_IsOutStanding.OptionsColumn.ReadOnly = true;
            this.Columns_IsOutStanding.Visible = true;
            this.Columns_IsOutStanding.VisibleIndex = 2;
            this.Columns_IsOutStanding.Width = 88;
            // 
            // Columns_POTYPE
            // 
            this.Columns_POTYPE.Caption = "PO Type";
            this.Columns_POTYPE.FieldName = "POTypeDesc";
            this.Columns_POTYPE.Name = "Columns_POTYPE";
            this.Columns_POTYPE.OptionsColumn.AllowEdit = false;
            this.Columns_POTYPE.OptionsColumn.ReadOnly = true;
            // 
            // Columns_WorkOrders
            // 
            this.Columns_WorkOrders.Caption = "End Cust Code";
            this.Columns_WorkOrders.FieldName = "EndCustCode";
            this.Columns_WorkOrders.Name = "Columns_WorkOrders";
            this.Columns_WorkOrders.OptionsColumn.AllowEdit = false;
            this.Columns_WorkOrders.OptionsColumn.ReadOnly = true;
            this.Columns_WorkOrders.Visible = true;
            this.Columns_WorkOrders.VisibleIndex = 6;
            this.Columns_WorkOrders.Width = 124;
            // 
            // barButtonItemReport
            // 
            this.barButtonItemReport.Caption = "Reports";
            this.barButtonItemReport.Id = 16;
            this.barButtonItemReport.Name = "barButtonItemReport";
            this.barButtonItemReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemReport_ItemClick);
            // 
            // gridColumn_ShipmentDate
            // 
            this.gridColumn_ShipmentDate.Caption = "Delivery Date";
            this.gridColumn_ShipmentDate.FieldName = "ShipmentDate";
            this.gridColumn_ShipmentDate.Name = "gridColumn_ShipmentDate";
            this.gridColumn_ShipmentDate.OptionsColumn.AllowEdit = false;
            this.gridColumn_ShipmentDate.OptionsColumn.ReadOnly = true;
            this.gridColumn_ShipmentDate.Visible = true;
            this.gridColumn_ShipmentDate.VisibleIndex = 5;
            this.gridColumn_ShipmentDate.Width = 111;
            // 
            // btnCompletePO
            // 
            this.btnCompletePO.Caption = "Complete PO";
            this.btnCompletePO.Id = 17;
            this.btnCompletePO.Name = "btnCompletePO";
            this.btnCompletePO.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCompletePO_ItemClick);
            // 
            // btnFOC
            // 
            this.btnFOC.Caption = "FOC";
            this.btnFOC.Id = 18;
            this.btnFOC.Name = "btnFOC";
            this.btnFOC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnFOC_ItemClick);
            // 
            // colFOC
            // 
            this.colFOC.Caption = "F.O.C";
            this.colFOC.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colFOC.FieldName = "FOC";
            this.colFOC.Name = "colFOC";
            this.colFOC.OptionsColumn.AllowEdit = false;
            this.colFOC.OptionsColumn.ReadOnly = true;
            this.colFOC.Visible = true;
            this.colFOC.VisibleIndex = 7;
            this.colFOC.Width = 78;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colShipMode
            // 
            this.colShipMode.Caption = "Transit Mode";
            this.colShipMode.FieldName = "ShipMode";
            this.colShipMode.Name = "colShipMode";
            this.colShipMode.OptionsColumn.AllowEdit = false;
            this.colShipMode.OptionsColumn.ReadOnly = true;
            this.colShipMode.Visible = true;
            this.colShipMode.VisibleIndex = 8;
            this.colShipMode.Width = 96;
            // 
            // colIncoterms
            // 
            this.colIncoterms.Caption = "Incoterms";
            this.colIncoterms.FieldName = "Incoterms";
            this.colIncoterms.Name = "colIncoterms";
            this.colIncoterms.OptionsColumn.AllowEdit = false;
            this.colIncoterms.OptionsColumn.ReadOnly = true;
            this.colIncoterms.Visible = true;
            this.colIncoterms.VisibleIndex = 9;
            this.colIncoterms.Width = 83;
            // 
            // colPaymentTerms
            // 
            this.colPaymentTerms.Caption = "Payment Terms";
            this.colPaymentTerms.FieldName = "PaymentTerms";
            this.colPaymentTerms.Name = "colPaymentTerms";
            this.colPaymentTerms.OptionsColumn.AllowEdit = false;
            this.colPaymentTerms.OptionsColumn.ReadOnly = true;
            // 
            // btnAction
            // 
            this.btnAction.Caption = "Action";
            this.btnAction.Id = 19;
            this.btnAction.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCompletePO),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnCancel, true)});
            this.btnAction.Name = "btnAction";
            // 
            // btnCancel
            // 
            this.btnCancel.Caption = "Cancel PO";
            this.btnCancel.Id = 20;
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnCancel_ItemClick);
            // 
            // POHeaderListFormMIDc
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POHeaderListFormMIDc";
            this.Size = new System.Drawing.Size(1048, 500);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPODetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPOColorSizeDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemTextEditUpper)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }


        public POInfo _poInfo = new POInfo();
        private string _poStatus;

        private bool _isOutStanding;
        public bool IsOutStanding
        {
            get { return _isOutStanding; }
            set
            {
                _isOutStanding = value;
                if (!_isOutStanding)
                {
                    this.barBtnAddNew.Visibility = this.barBtnSave.Visibility = this.btnAction.Visibility = this.btnFOC.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                }
            }
        }
        public POHeaderListFormMIDc()
        {
            InitializeComponent();
            this._poInfo.Poversion = POVersion.CurVersion;
        }
        public POHeaderListFormMIDc(string poversion, string potype, string poStatus)
            : this()
        {
            this._poStatus = poStatus;// Convert.ToBoolean(isOutStanding);
            IsOutStanding = (this._poStatus == "OutStanding");

            if (poversion.ToUpper() == "ALL")
            {
                this._poInfo.Poversion = POVersion.AllVersion;
            }
            else
            {
                this._poInfo.Poversion = POVersion.CurVersion;
            }

            if (potype.ToUpper() == "PO")
            {
                this._poInfo.PoType = POType.PO;
            }
            else if (potype.ToUpper() == "POSTICKER")
            {
                this._poInfo.PoType = POType.POSticker;
            }
            else if (potype.ToUpper() == "MIDCPO")
            {
                this._poInfo.PoType = POType.MIDcPO;
            }

        }
        public POHeaderListFormMIDc(PH.POPC.BO.View_POPC_PUR pur, DevExpress.XtraTab.XtraTabPage parentPage)
        {
            InitializeComponent();
            this._poInfo.Pur = pur;
            this._poInfo.POPCPage = parentPage;
            this._poInfo.PoType = POType.PO;
        }
        public override void DataBind()
        {
            this.EditorTypeName = typeof(POHeaderDetailFormMIDc).FullName;
            Tools.DateTimeFormatterControls(this, "yyyy'/'MM'/'dd");
            if (this._poInfo.Poversion == POVersion.AllVersion)
            {
                this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
                this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            }
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POHeader);
            this.objListGridView.OptionsDetail.EnableMasterViewMode = true;
            this.AllowAddRow = false;
            if (IsOutStanding)
            {
                this.AllowGridEdit = true;
                this.RowChangeAutoSave = true;
                this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            }
            this.objListGridView.OptionsBehavior.Editable = false;
            DataInit();
        }
        private void DataInit()
        {
            PH.POPC.BO.POPCDataContext context = PH.Platform.BO.ContextBuilder.CreateContext<PH.POPC.BO.POPCDataContext>();
            context.CommandTimeout = 1000;
            this.DataContext = context;

            if (this._poInfo.Pur != null && this._poInfo.POPCPage != null)
            {
                #region
                //var aa = from c in context.POHeaders
                //         where (c.POType == (int)this._poInfo.PoType) && c.PONO == this._poInfo.Pur.PONO && c.Company == this._poInfo.Pur.Company
                //         group c by new { c.PONO, c.Company } into newGroup
                //         select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

                //var bb = (from xx in context.POHeaders
                //          from yy in aa
                //          where (xx.POType == (int)this._poInfo.PoType) && xx.Company == yy.Key.Company && xx.PONO == yy.Key.PONO && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                //          select xx);
                //this.DataContext = context;
                //this.BindingSource.DataSource = bb;
                //this.Tag = "Edit";
                //this.IsAutoEidtStatus = true;
                //this.OnClickOpen();

                //Xsj110216:注釋掉上面的代碼,啟用通用查詢
                //string sqlStr = "Select xx.* from POHeader xx Inner join (Select PONO,Company,Max(Version * 10000 + AmendmentNo)  as NewVersion " +
                //              "  from POHeader Where POType=" + (int)this._poInfo.PoType + " and PONO='" + this._poInfo.Pur.PONO.Replace("'", "''") + "' and Company='" + this._poInfo.Pur.Company + "'" +
                //              "  group by PONO,Company) yy on  xx.POType =" + (int)this._poInfo.PoType +
                //              "  and xx.Company =yy.Company " +
                //              "  and xx.PONO = yy.PONO  " +
                //              "  and (xx.Version * 10000 + xx.AmendmentNo) = yy.NewVersion ";
                //PH.Platform.UI.CS.DataQuery.DataQueryParameter result = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
                //result.IsCustQuery = true;
                //result.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.CommandText;
                //result.CustQuerySQL = sqlStr;
                //result.BoType = typeof(PH.POPC.BO.POHeader);
                //result.View = this.objListGridView;
                //result.WarnRecord = 2000;
                //this.StartEnquiry(result);
                //this.Tag = "Edit";
                //this.IsAutoEidtStatus = true;
                //this.OnClickOpen();
                #endregion
            }
            else
            {
                #region
                if (this._poInfo.Poversion == POVersion.AllVersion)
                {
                    //this.BindingSource.DataSource = from c in context.POHeaders
                    //                                where c.POType == (int)this._poInfo.PoType && (c.Flag == null || c.Flag == string.Empty)
                    //                                select c;
                    //Xsj110216:注釋掉上面的代碼,啟用通用查詢
                    string sqlStr = "Select * from POHeader Where POType=" + (int)this._poInfo.PoType + " and RTrim(IsNull(Flag,''))='' ";
                    PH.Platform.UI.CS.DataQuery.DataQueryParameter result = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
                    result.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.CommandText;
                    result.IsCustQuery = true;
                    result.CustQuerySQL = sqlStr;
                    result.BoType = typeof(PH.POPC.BO.POHeader);
                    result.View = this.objListGridView;
                    result.WarnRecord = 2000;
                    this.StartEnquiry(result);
                }
                else if (this._poInfo.Poversion == POVersion.CurVersion)
                {
                    //var aa = from c in context.POHeaders
                    //         where c.POType == (int)this._poInfo.PoType && (c.Flag == null || c.Flag == string.Empty)
                    //         group c by new { c.PONO, c.Company } into newGroup
                    //         select new { newGroup.Key, NewVersion = newGroup.Max(P => P.Version * 10000 + P.AmendmentNo) };

                    //var bb = from xx in context.POHeaders
                    //         from yy in aa
                    //         where xx.POType == (int)this._poInfo.PoType && (xx.Flag == null || xx.Flag == string.Empty)
                    //         && xx.Company == yy.Key.Company
                    //         && xx.PONO == yy.Key.PONO
                    //         && (xx.Version * 10000 + xx.AmendmentNo) == yy.NewVersion
                    //         select xx;
                    //this.DataContext = context;
                    //this.BindingSource.DataSource = bb;
                    string statusSQL = "";
                    switch (this._poStatus)
                    {
                        case "OutStanding":
                            statusSQL = " and Status='1' and RTrim(IsNull(Flag,''))='' ";
                            break;
                        case "Completed":
                            statusSQL = " and Status='0' and RTrim(IsNull(Flag,''))='' ";
                            break;
                        case "Cancelled":
                            statusSQL = " and RTrim(IsNull(Flag,''))='1' ";//and Status='-1' 
                            break;
                    }
                    //Xsj110216:注釋掉上面的代碼,啟用通用查詢
                    string sqlStr = "Select xx.* from POHeader xx Inner join (Select PONO,Company,Max(Version * 10000 + AmendmentNo)  as NewVersion " +
                                  "  from POHeader Where POType=" + (int)this._poInfo.PoType + statusSQL +
                                  "  group by PONO,Company) yy on  xx.POType =" + (int)this._poInfo.PoType +
                                  "  and xx.Company =yy.Company " +
                                  "  and xx.PONO = yy.PONO  " +
                                  "  and (xx.Version * 10000 + xx.AmendmentNo) = yy.NewVersion ";
                    // +"  and RTrim(IsNull(Flag,''))=''";
                    PH.Platform.UI.CS.DataQuery.DataQueryParameter result = new PH.Platform.UI.CS.DataQuery.DataQueryParameter();
                    result.QueryType = PH.Platform.UI.CS.DataQuery.QueryType.CommandText;
                    result.IsCustQuery = true;
                    result.CustQuerySQL = sqlStr;
                    result.BoType = typeof(PH.POPC.BO.POHeader);
                    result.View = this.objListGridView;
                    result.WarnRecord = 2000;
                    this.StartEnquiry(result);
                }
                #endregion
            }


            if (dlg != null) dlg.Close();
        }
        private bool IsAutoEidtStatus;
        private void barBtnPoList_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PoListForm frm = new PoListForm();
            frm.ShowDialog();
        }
        private void barBtnRefresh_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DataInit();
        }
        #region WaitDialog
        private DevExpress.Utils.WaitDialogForm dlg = null;
        //public void CreateWaitDialog()
        //{
        //    dlg = new DevExpress.Utils.WaitDialogForm(string.Format("Loading {0}...", TutorialName));
        //}
        public void CreateWaitDialog(string caption, string title)
        {
            // dlg = new DevExpress.Utils.WaitDialogForm(caption, title);
        }
        public void CreateWaitDialog(string caption, string title, Size size)
        {
            // dlg = new DevExpress.Utils.WaitDialogForm(caption, title, size);
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

        //Xsj20110328:打印报表
        private void barButtonItemReport_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POHeader currPOHeader = this.BindingSource.Current as PH.POPC.BO.POHeader;
            if (currPOHeader == null) return;
            using (PrintMIDcPOReportsDialog PrintMIDcPODialog = new PrintMIDcPOReportsDialog(currPOHeader.Company, currPOHeader.PONO))
            {
                PrintMIDcPODialog.ShowDialog();
            }
        }

        private void btnCompletePO_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POHeader currPOHeader = this.BindingSource.Current as PH.POPC.BO.POHeader;
            if (currPOHeader == null) return;

            if (DialogResult.Yes == MessageBox.Show("確定要 Complete 當前訂單嗎?", "提問", MessageBoxButtons.YesNo, MessageBoxIcon.Warning))
            {
                currPOHeader.Status = "0";
                this.DataContext.SubmitChanges();
                MessageBox.Show("Completed 當前訂單成功!", "信息");
            }
        }

        private void btnFOC_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POHeader currPOHeader = this.BindingSource.Current as PH.POPC.BO.POHeader;
            if (currPOHeader == null) return;

            string tips = (currPOHeader.FOC ?? false) ? "取消" : "";
            if (DialogResult.Yes == MessageBox.Show(string.Format("確定要{0} FOC 當前訂單嗎?", tips), "提問", MessageBoxButtons.YesNo, MessageBoxIcon.Warning))
            {

                currPOHeader.FOC = !(currPOHeader.FOC ?? false);
                currPOHeader.PaymentTerms = (currPOHeader.FOC ?? false) ? "FOC"
                    : (currPOHeader.SupplierProfile == null ? "" : currPOHeader.SupplierProfile.PaymentTerms);
                this.DataContext.SubmitChanges();
                MessageBox.Show(string.Format("{0} FOC 當前訂單成功!", tips), "信息");
            }
        }

        private void btnCancel_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            PH.POPC.BO.POHeader currPOHeader = this.BindingSource.Current as PH.POPC.BO.POHeader;
            if (currPOHeader == null) return;

            if (DialogResult.Yes == MessageBox.Show("確定要 Cancel 當前訂單嗎?", "提問", MessageBoxButtons.YesNo, MessageBoxIcon.Warning))
            {
                //參考 IsOutStanding 
                currPOHeader.Flag = "1"; //=1 Cancel
                currPOHeader.Status = "-1"; //=1 Cancel
                foreach (var item in currPOHeader.PODetails)
                {
                    item.Flag = "1";
                }
                this.DataContext.SubmitChanges();
                MessageBox.Show("Cancelled 當前訂單成功!", "信息");
            }
        }

        private void repositoryItemButtonEdit1_ButtonClick(object sender, DevExpress.XtraEditors.Controls.ButtonPressedEventArgs e)
        {
            DevExpress.XtraGrid.Views.Grid.GridView view = (this.objListGridControl.FocusedView as DevExpress.XtraGrid.Views.Grid.GridView);
            if (view == null) return;

            PH.POPC.BO.PODetail d = view.GetRow(view.FocusedRowHandle) as PH.POPC.BO.PODetail;
            if (d == null) return;

            if (DialogResult.Yes == MessageBox.Show("確定要 Cancel 當前物料嗎?", "提問", MessageBoxButtons.YesNo, MessageBoxIcon.Warning))
            {
                d.Flag = "1";
                this.DataContext.SubmitChanges();
                MessageBox.Show("Cancelled 當前物料成功!", "信息");
            }

        }



    }
}
