namespace PH.RWO.UI.Setting
{
    partial class RWOIIConfirmListForm
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerStyleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWOCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOReviseDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWorkStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineWorkStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colT3Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAjustT3Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAjustT3DateConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFCLExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLCLExFtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOAConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOAConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHeaderConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHeaderConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTopConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTopConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPPCConfirm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPPCConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUsers = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNext = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCurrent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnAction = new DevExpress.XtraBars.BarButtonItem();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnReport = new DevExpress.XtraBars.BarButtonItem();
            this.colConfirmFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colRejectFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHoldFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnOutstandingConfirmlist = new DevExpress.XtraBars.BarButtonItem();
            this.colSubFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.colCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnAction,
            this.btnReport,
            this.btnOutstandingConfirmlist,
            this.barSubItem1});
            this.objbarManager.MaxItemId = 40;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnAction, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItem1, true)});
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnSave
            // 
            this.barBtnSave.Visibility = DevExpress.XtraBars.BarItemVisibility.OnlyInCustomizing;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(973, 313);
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colProjectNo,
            this.colWorkOrderNo,
            this.colColorCode,
            this.colRWO,
            this.colFactory,
            this.colSubFactory,
            this.colCustomer,
            this.colStyleNo,
            this.colCustomerStyleNo,
            this.colSalesOrderLine,
            this.colRWOCreateDate,
            this.colWOReviseDate,
            this.colAmendDate,
            this.colVersion,
            this.colFactoryWorkStartDate,
            this.colLineWorkStartDate,
            this.colT3Date,
            this.colAjustT3Date,
            this.colAjustT3DateConfirm,
            this.colFCLExFtyDate,
            this.colLCLExFtyDate,
            this.colOAConfirm,
            this.colOAConfirmDate,
            this.colHeaderConfirm,
            this.colHeaderConfirmDate,
            this.colTopConfirm,
            this.colTopConfirmDate,
            this.colPPCConfirm,
            this.colPPCConfirmDate,
            this.colUsers,
            this.colNext,
            this.colCurrent,
            this.colConfirmFlag,
            this.colRejectFlag,
            this.colHoldFlag,
            this.colQty,
            this.colCategory});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(396, 352, 236, 353);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colHeaderConfirmDate, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.View_RWOConfirm);
            // 
            // colProjectNo
            // 
            this.colProjectNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colProjectNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colProjectNo.Caption = "Project No";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 3;
            this.colProjectNo.Width = 85;
            // 
            // colCustomer
            // 
            this.colCustomer.AppearanceHeader.Options.UseTextOptions = true;
            this.colCustomer.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.OptionsColumn.AllowEdit = false;
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 4;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceHeader.Options.UseTextOptions = true;
            this.colFactory.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 5;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colWorkOrderNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWorkOrderNo.Caption = "WO#";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 7;
            this.colWorkOrderNo.Width = 99;
            // 
            // colStyleNo
            // 
            this.colStyleNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colStyleNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colStyleNo.Caption = "PH Style No";
            this.colStyleNo.FieldName = "StyleNo";
            this.colStyleNo.Name = "colStyleNo";
            this.colStyleNo.OptionsColumn.AllowEdit = false;
            this.colStyleNo.Visible = true;
            this.colStyleNo.VisibleIndex = 11;
            this.colStyleNo.Width = 88;
            // 
            // colCustomerStyleNo
            // 
            this.colCustomerStyleNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colCustomerStyleNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCustomerStyleNo.Caption = "Cust Style No";
            this.colCustomerStyleNo.FieldName = "CustomerStyleNo";
            this.colCustomerStyleNo.Name = "colCustomerStyleNo";
            this.colCustomerStyleNo.OptionsColumn.AllowEdit = false;
            this.colCustomerStyleNo.Visible = true;
            this.colCustomerStyleNo.VisibleIndex = 12;
            this.colCustomerStyleNo.Width = 101;
            // 
            // colSalesOrderLine
            // 
            this.colSalesOrderLine.AppearanceHeader.Options.UseTextOptions = true;
            this.colSalesOrderLine.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSalesOrderLine.Caption = "SalesOrderLine";
            this.colSalesOrderLine.FieldName = "SalesOrderLine";
            this.colSalesOrderLine.Name = "colSalesOrderLine";
            this.colSalesOrderLine.OptionsColumn.AllowEdit = false;
            // 
            // colRWOCreateDate
            // 
            this.colRWOCreateDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colRWOCreateDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRWOCreateDate.Caption = "Cop WO Create Date";
            this.colRWOCreateDate.FieldName = "RWOCreateDate";
            this.colRWOCreateDate.Name = "colRWOCreateDate";
            this.colRWOCreateDate.OptionsColumn.AllowEdit = false;
            this.colRWOCreateDate.Visible = true;
            this.colRWOCreateDate.VisibleIndex = 14;
            this.colRWOCreateDate.Width = 122;
            // 
            // colAmendDate
            // 
            this.colAmendDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colAmendDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAmendDate.Caption = "Amend Date";
            this.colAmendDate.FieldName = "AmendDate";
            this.colAmendDate.Name = "colAmendDate";
            this.colAmendDate.OptionsColumn.AllowEdit = false;
            this.colAmendDate.Width = 91;
            // 
            // colWOReviseDate
            // 
            this.colWOReviseDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colWOReviseDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWOReviseDate.Caption = "Cop WO Revise Date";
            this.colWOReviseDate.FieldName = "WOReviseDate";
            this.colWOReviseDate.Name = "colWOReviseDate";
            this.colWOReviseDate.OptionsColumn.AllowEdit = false;
            this.colWOReviseDate.Visible = true;
            this.colWOReviseDate.VisibleIndex = 15;
            this.colWOReviseDate.Width = 121;
            // 
            // colVersion
            // 
            this.colVersion.AppearanceHeader.Options.UseTextOptions = true;
            this.colVersion.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            // 
            // colFactoryWorkStartDate
            // 
            this.colFactoryWorkStartDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colFactoryWorkStartDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colFactoryWorkStartDate.Caption = "FW Start Date";
            this.colFactoryWorkStartDate.FieldName = "FactoryWorkStartDate";
            this.colFactoryWorkStartDate.Name = "colFactoryWorkStartDate";
            this.colFactoryWorkStartDate.OptionsColumn.AllowEdit = false;
            this.colFactoryWorkStartDate.Visible = true;
            this.colFactoryWorkStartDate.VisibleIndex = 16;
            this.colFactoryWorkStartDate.Width = 107;
            // 
            // colLineWorkStartDate
            // 
            this.colLineWorkStartDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colLineWorkStartDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colLineWorkStartDate.Caption = "SW Start Date";
            this.colLineWorkStartDate.FieldName = "LineWorkStartDate";
            this.colLineWorkStartDate.Name = "colLineWorkStartDate";
            this.colLineWorkStartDate.OptionsColumn.AllowEdit = false;
            this.colLineWorkStartDate.Visible = true;
            this.colLineWorkStartDate.VisibleIndex = 17;
            this.colLineWorkStartDate.Width = 105;
            // 
            // colT3Date
            // 
            this.colT3Date.AppearanceHeader.Options.UseTextOptions = true;
            this.colT3Date.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colT3Date.Caption = "T3 Date";
            this.colT3Date.FieldName = "T3Date";
            this.colT3Date.Name = "colT3Date";
            this.colT3Date.OptionsColumn.AllowEdit = false;
            this.colT3Date.Visible = true;
            this.colT3Date.VisibleIndex = 18;
            // 
            // colAjustT3Date
            // 
            this.colAjustT3Date.AppearanceHeader.Options.UseTextOptions = true;
            this.colAjustT3Date.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAjustT3Date.Caption = "Adjust T3 Date";
            this.colAjustT3Date.FieldName = "AdjustT3Date";
            this.colAjustT3Date.Name = "colAjustT3Date";
            this.colAjustT3Date.OptionsColumn.AllowEdit = false;
            this.colAjustT3Date.Visible = true;
            this.colAjustT3Date.VisibleIndex = 19;
            this.colAjustT3Date.Width = 103;
            // 
            // colAjustT3DateConfirm
            // 
            this.colAjustT3DateConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colAjustT3DateConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colAjustT3DateConfirm.Caption = "Adjust T3 Date Confirm";
            this.colAjustT3DateConfirm.FieldName = "AjustT3DateConfirm";
            this.colAjustT3DateConfirm.Name = "colAjustT3DateConfirm";
            this.colAjustT3DateConfirm.OptionsColumn.AllowEdit = false;
            this.colAjustT3DateConfirm.Visible = true;
            this.colAjustT3DateConfirm.VisibleIndex = 20;
            this.colAjustT3DateConfirm.Width = 146;
            // 
            // colFCLExFtyDate
            // 
            this.colFCLExFtyDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colFCLExFtyDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colFCLExFtyDate.Caption = "FCL ExFty Date";
            this.colFCLExFtyDate.FieldName = "FCLExFtyDate";
            this.colFCLExFtyDate.Name = "colFCLExFtyDate";
            this.colFCLExFtyDate.OptionsColumn.AllowEdit = false;
            this.colFCLExFtyDate.Visible = true;
            this.colFCLExFtyDate.VisibleIndex = 21;
            this.colFCLExFtyDate.Width = 111;
            // 
            // colLCLExFtyDate
            // 
            this.colLCLExFtyDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colLCLExFtyDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colLCLExFtyDate.Caption = "LCL ExFty Date";
            this.colLCLExFtyDate.FieldName = "LCLExFtyDate";
            this.colLCLExFtyDate.Name = "colLCLExFtyDate";
            this.colLCLExFtyDate.OptionsColumn.AllowEdit = false;
            this.colLCLExFtyDate.Visible = true;
            this.colLCLExFtyDate.VisibleIndex = 22;
            this.colLCLExFtyDate.Width = 110;
            // 
            // colOAConfirm
            // 
            this.colOAConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colOAConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOAConfirm.Caption = "OA";
            this.colOAConfirm.FieldName = "OAConfirm";
            this.colOAConfirm.Name = "colOAConfirm";
            this.colOAConfirm.OptionsColumn.AllowEdit = false;
            this.colOAConfirm.Visible = true;
            this.colOAConfirm.VisibleIndex = 23;
            this.colOAConfirm.Width = 128;
            // 
            // colOAConfirmDate
            // 
            this.colOAConfirmDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colOAConfirmDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colOAConfirmDate.Caption = "Date(OA)";
            this.colOAConfirmDate.FieldName = "OAConfirmDate";
            this.colOAConfirmDate.Name = "colOAConfirmDate";
            this.colOAConfirmDate.OptionsColumn.AllowEdit = false;
            this.colOAConfirmDate.Visible = true;
            this.colOAConfirmDate.VisibleIndex = 24;
            this.colOAConfirmDate.Width = 114;
            // 
            // colHeaderConfirm
            // 
            this.colHeaderConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colHeaderConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colHeaderConfirm.Caption = "Mer Mgr";
            this.colHeaderConfirm.FieldName = "HeaderConfirm";
            this.colHeaderConfirm.Name = "colHeaderConfirm";
            this.colHeaderConfirm.OptionsColumn.AllowEdit = false;
            this.colHeaderConfirm.Visible = true;
            this.colHeaderConfirm.VisibleIndex = 29;
            this.colHeaderConfirm.Width = 110;
            // 
            // colHeaderConfirmDate
            // 
            this.colHeaderConfirmDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colHeaderConfirmDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colHeaderConfirmDate.Caption = "Date(Mer.Mgr)";
            this.colHeaderConfirmDate.FieldName = "HeaderConfirmDate";
            this.colHeaderConfirmDate.Name = "colHeaderConfirmDate";
            this.colHeaderConfirmDate.OptionsColumn.AllowEdit = false;
            this.colHeaderConfirmDate.Visible = true;
            this.colHeaderConfirmDate.VisibleIndex = 30;
            this.colHeaderConfirmDate.Width = 136;
            // 
            // colTopConfirm
            // 
            this.colTopConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colTopConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTopConfirm.Caption = "Fty Sr Mgr";
            this.colTopConfirm.FieldName = "TopConfirm";
            this.colTopConfirm.Name = "colTopConfirm";
            this.colTopConfirm.OptionsColumn.AllowEdit = false;
            this.colTopConfirm.Visible = true;
            this.colTopConfirm.VisibleIndex = 27;
            this.colTopConfirm.Width = 154;
            // 
            // colTopConfirmDate
            // 
            this.colTopConfirmDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colTopConfirmDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTopConfirmDate.Caption = "Date(Sr Mgr)";
            this.colTopConfirmDate.FieldName = "TopConfirmDate";
            this.colTopConfirmDate.Name = "colTopConfirmDate";
            this.colTopConfirmDate.OptionsColumn.AllowEdit = false;
            this.colTopConfirmDate.Visible = true;
            this.colTopConfirmDate.VisibleIndex = 28;
            this.colTopConfirmDate.Width = 103;
            // 
            // colPPCConfirm
            // 
            this.colPPCConfirm.AppearanceHeader.Options.UseTextOptions = true;
            this.colPPCConfirm.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPPCConfirm.Caption = "Fty PPC";
            this.colPPCConfirm.FieldName = "PPCConfirm";
            this.colPPCConfirm.Name = "colPPCConfirm";
            this.colPPCConfirm.OptionsColumn.AllowEdit = false;
            this.colPPCConfirm.Visible = true;
            this.colPPCConfirm.VisibleIndex = 25;
            this.colPPCConfirm.Width = 139;
            // 
            // colPPCConfirmDate
            // 
            this.colPPCConfirmDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colPPCConfirmDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPPCConfirmDate.Caption = "Date(PPC)";
            this.colPPCConfirmDate.FieldName = "PPCConfirmDate";
            this.colPPCConfirmDate.Name = "colPPCConfirmDate";
            this.colPPCConfirmDate.OptionsColumn.AllowEdit = false;
            this.colPPCConfirmDate.Visible = true;
            this.colPPCConfirmDate.VisibleIndex = 26;
            this.colPPCConfirmDate.Width = 129;
            // 
            // colUsers
            // 
            this.colUsers.AppearanceHeader.Options.UseTextOptions = true;
            this.colUsers.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colUsers.Caption = "Users";
            this.colUsers.FieldName = "Users";
            this.colUsers.Name = "colUsers";
            this.colUsers.OptionsColumn.AllowEdit = false;
            // 
            // colNext
            // 
            this.colNext.AppearanceHeader.Options.UseTextOptions = true;
            this.colNext.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colNext.Caption = "Next";
            this.colNext.FieldName = "Next";
            this.colNext.Name = "colNext";
            this.colNext.OptionsColumn.AllowEdit = false;
            // 
            // colCurrent
            // 
            this.colCurrent.AppearanceHeader.Options.UseTextOptions = true;
            this.colCurrent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCurrent.Caption = "Current";
            this.colCurrent.FieldName = "Current";
            this.colCurrent.Name = "colCurrent";
            this.colCurrent.OptionsColumn.AllowEdit = false;
            // 
            // btnAction
            // 
            this.btnAction.Caption = "Action";
            this.btnAction.Id = 36;
            this.btnAction.Name = "btnAction";
            this.btnAction.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnAction_ItemClick);
            // 
            // colColorCode
            // 
            this.colColorCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colColorCode.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colColorCode.Caption = "Clr#";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 8;
            // 
            // colRWO
            // 
            this.colRWO.AppearanceHeader.Options.UseTextOptions = true;
            this.colRWO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRWO.Caption = "Cop WO#";
            this.colRWO.FieldName = "RWO";
            this.colRWO.Name = "colRWO";
            this.colRWO.OptionsColumn.AllowEdit = false;
            this.colRWO.Visible = true;
            this.colRWO.VisibleIndex = 9;
            // 
            // btnReport
            // 
            this.btnReport.Caption = "RWO PII-View or Print";
            this.btnReport.Id = 37;
            this.btnReport.Name = "btnReport";
            this.btnReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnReport_ItemClick);
            // 
            // colConfirmFlag
            // 
            this.colConfirmFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.colConfirmFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colConfirmFlag.Caption = "Confirm";
            this.colConfirmFlag.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colConfirmFlag.FieldName = "ConfirmFlag";
            this.colConfirmFlag.Name = "colConfirmFlag";
            this.colConfirmFlag.Visible = true;
            this.colConfirmFlag.VisibleIndex = 0;
            this.colConfirmFlag.Width = 63;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit1.EditValueChanging += new DevExpress.XtraEditors.Controls.ChangingEventHandler(this.repositoryItemCheckEdit1_EditValueChanging);
            // 
            // colRejectFlag
            // 
            this.colRejectFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.colRejectFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRejectFlag.Caption = "Reject";
            this.colRejectFlag.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colRejectFlag.FieldName = "RejectFlag";
            this.colRejectFlag.Name = "colRejectFlag";
            this.colRejectFlag.Visible = true;
            this.colRejectFlag.VisibleIndex = 2;
            this.colRejectFlag.Width = 60;
            // 
            // colHoldFlag
            // 
            this.colHoldFlag.AppearanceHeader.Options.UseTextOptions = true;
            this.colHoldFlag.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colHoldFlag.Caption = "Hold";
            this.colHoldFlag.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colHoldFlag.FieldName = "HoldFlag";
            this.colHoldFlag.Name = "colHoldFlag";
            this.colHoldFlag.Visible = true;
            this.colHoldFlag.VisibleIndex = 1;
            this.colHoldFlag.Width = 51;
            // 
            // colQty
            // 
            this.colQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colQty.Caption = "Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 10;
            // 
            // btnOutstandingConfirmlist
            // 
            this.btnOutstandingConfirmlist.Caption = "Outstanding Confirm list";
            this.btnOutstandingConfirmlist.Id = 38;
            this.btnOutstandingConfirmlist.Name = "btnOutstandingConfirmlist";
            this.btnOutstandingConfirmlist.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnOutstandingConfirmlist_ItemClick);
            // 
            // colSubFactory
            // 
            this.colSubFactory.Caption = "SC Factory";
            this.colSubFactory.FieldName = "SubFactory";
            this.colSubFactory.Name = "colSubFactory";
            this.colSubFactory.OptionsColumn.AllowEdit = false;
            this.colSubFactory.Visible = true;
            this.colSubFactory.VisibleIndex = 6;
            this.colSubFactory.Width = 83;
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Report && List";
            this.barSubItem1.Id = 39;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnOutstandingConfirmlist)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Visible = true;
            this.colCategory.VisibleIndex = 13;
            this.colCategory.Width = 72;
            // 
            // RWOIIConfirmListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "RWOIIConfirmListForm";
            this.Size = new System.Drawing.Size(973, 340);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerStyleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colRWOCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendDate;
        private DevExpress.XtraGrid.Columns.GridColumn colWOReviseDate;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWorkStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colLineWorkStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colT3Date;
        private DevExpress.XtraGrid.Columns.GridColumn colAjustT3Date;
        private DevExpress.XtraGrid.Columns.GridColumn colAjustT3DateConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colFCLExFtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colLCLExFtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colOAConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colOAConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colHeaderConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colHeaderConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colTopConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colTopConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPPCConfirm;
        private DevExpress.XtraGrid.Columns.GridColumn colPPCConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colUsers;
        private DevExpress.XtraGrid.Columns.GridColumn colNext;
        private DevExpress.XtraGrid.Columns.GridColumn colCurrent;
        private DevExpress.XtraBars.BarButtonItem btnAction;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colRWO;
        private DevExpress.XtraBars.BarButtonItem btnReport;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colRejectFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colHoldFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraBars.BarButtonItem btnOutstandingConfirmlist;
        private DevExpress.XtraGrid.Columns.GridColumn colSubFactory;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraGrid.Columns.GridColumn colCategory;
    }
}
