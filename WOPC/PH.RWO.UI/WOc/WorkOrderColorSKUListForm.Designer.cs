namespace PH.RWO.UI
{
    partial class WorkOrderColorSKUListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.gvWorkOrderSamples = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSampleType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.cbSampleOrderType = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleDespatchDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleDespatchDate_Next = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAddressTo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbAddressTo = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSymbol = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colActualSampleDespatchDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colActualSampleDespatchDate_Next = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colApproveStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox_AppvStatus = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colApproveDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colApproveStatus_Next = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colApproveDate_Next = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKeepQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSLevel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemRadioGroup1 = new DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.colSizeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBulkQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustSize = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustCup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.itemSampleType = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.cbWorkShop = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.itemWorkShop = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.colDespatchQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnChooseSampleType = new DevExpress.XtraBars.BarButtonItem();
            this.CupOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.SizeOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWorkOrderSamples)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSampleOrderType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbAddressTo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_AppvStatus)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemSampleType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkShop)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemWorkShop)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4,
            this.btnChooseSampleType});
            this.objbarManager.MaxItemId = 20;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnChooseSampleType, true)});
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            gridLevelNode2.LevelTemplate = this.gvWorkOrderSamples;
            gridLevelNode2.RelationName = "WorkOrderSamples";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1,
            gridLevelNode2});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.itemWorkShop,
            this.itemSampleType,
            this.cbSampleOrderType,
            this.cbWorkShop,
            this.repositoryItemRadioGroup1,
            this.ricbAddressTo,
            this.repositoryItemComboBox2,
            this.repositoryItemComboBox_AppvStatus});
            this.objListGridControl.ShowOnlyPredefinedDetails = true;
            this.objListGridControl.Size = new System.Drawing.Size(1866, 385);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvWorkOrderSamples});
            this.objListGridControl.FocusedViewChanged += new DevExpress.XtraGrid.ViewFocusEventHandler(this.objListGridControl_FocusedViewChanged);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ChildGridLevelName = "WorkOrderSamples";
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colColorCode,
            this.CupOrder,
            this.SizeOrder,
            this.colSizeDesc,
            this.colCup,
            this.colSize,
            this.colCustSize,
            this.colCustCup,
            this.colBulkQty,
            this.colDespatchQty});
            this.objListGridView.GroupFooterShowMode = DevExpress.XtraGrid.Views.Grid.GroupFooterShowMode.VisibleAlways;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.AllowExpandEmptyDetails = true;
            this.objListGridView.OptionsDetail.AllowZoomDetail = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.CupOrder, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.SizeOrder, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.InitNewRow += new DevExpress.XtraGrid.Views.Grid.InitNewRowEventHandler(this.gvWorkOrderSamples_InitNewRow);
            // 
            // gvWorkOrderSamples
            // 
            this.gvWorkOrderSamples.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gvWorkOrderSamples.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gvWorkOrderSamples.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gvWorkOrderSamples.ColumnPanelRowHeight = 50;
            this.gvWorkOrderSamples.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSampleType,
            this.colWorkShop,
            this.colSampleDespatchDate,
            this.colSampleDespatchDate_Next,
            this.colSampleQty,
            this.colAddressTo,
            this.colSymbol,
            this.colActualSampleDespatchDate,
            this.colActualSampleDespatchDate_Next,
            this.colApproveStatus,
            this.colApproveDate,
            this.colApproveStatus_Next,
            this.colApproveDate_Next,
            this.colKeepQty,
            this.colSLevel});
            this.gvWorkOrderSamples.GridControl = this.objListGridControl;
            this.gvWorkOrderSamples.Name = "gvWorkOrderSamples";
            this.gvWorkOrderSamples.OptionsBehavior.AutoExpandAllGroups = true;
            this.gvWorkOrderSamples.OptionsDetail.ShowDetailTabs = false;
            this.gvWorkOrderSamples.OptionsView.ColumnAutoWidth = false;
            this.gvWorkOrderSamples.ViewCaption = "WO Sample";
            this.gvWorkOrderSamples.InitNewRow += new DevExpress.XtraGrid.Views.Grid.InitNewRowEventHandler(this.gvWorkOrderSamples_InitNewRow);
            // 
            // colSampleType
            // 
            this.colSampleType.Caption = "Sample Type";
            this.colSampleType.ColumnEdit = this.cbSampleOrderType;
            this.colSampleType.FieldName = "SampleType";
            this.colSampleType.Name = "colSampleType";
            this.colSampleType.Visible = true;
            this.colSampleType.VisibleIndex = 1;
            this.colSampleType.Width = 112;
            // 
            // cbSampleOrderType
            // 
            this.cbSampleOrderType.AutoHeight = false;
            this.cbSampleOrderType.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbSampleOrderType.DropDownRows = 12;
            this.cbSampleOrderType.Name = "cbSampleOrderType";
            this.cbSampleOrderType.Sorted = true;
            this.cbSampleOrderType.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            this.cbSampleOrderType.EditValueChanged += new System.EventHandler(this.cbSampleOrderType_EditValueChanged);
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "Work Shop";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 3;
            this.colWorkShop.Width = 81;
            // 
            // colSampleDespatchDate
            // 
            this.colSampleDespatchDate.Caption = "Prime\r\nDespatch dd";
            this.colSampleDespatchDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colSampleDespatchDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colSampleDespatchDate.FieldName = "SampleDespatchDate";
            this.colSampleDespatchDate.Name = "colSampleDespatchDate";
            this.colSampleDespatchDate.Visible = true;
            this.colSampleDespatchDate.VisibleIndex = 4;
            this.colSampleDespatchDate.Width = 94;
            // 
            // colSampleDespatchDate_Next
            // 
            this.colSampleDespatchDate_Next.Caption = "Redo\r\nDespatch dd";
            this.colSampleDespatchDate_Next.FieldName = "SampleDespatchDate_Next";
            this.colSampleDespatchDate_Next.Name = "colSampleDespatchDate_Next";
            this.colSampleDespatchDate_Next.Visible = true;
            this.colSampleDespatchDate_Next.VisibleIndex = 5;
            this.colSampleDespatchDate_Next.Width = 92;
            // 
            // colSampleQty
            // 
            this.colSampleQty.Caption = "Sample Qty";
            this.colSampleQty.FieldName = "SampleQty";
            this.colSampleQty.Name = "colSampleQty";
            this.colSampleQty.Visible = true;
            this.colSampleQty.VisibleIndex = 12;
            this.colSampleQty.Width = 83;
            // 
            // colAddressTo
            // 
            this.colAddressTo.Caption = "Address To";
            this.colAddressTo.ColumnEdit = this.ricbAddressTo;
            this.colAddressTo.FieldName = "AddressTo";
            this.colAddressTo.Name = "colAddressTo";
            this.colAddressTo.Visible = true;
            this.colAddressTo.VisibleIndex = 14;
            this.colAddressTo.Width = 475;
            // 
            // ricbAddressTo
            // 
            this.ricbAddressTo.AutoHeight = false;
            this.ricbAddressTo.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbAddressTo.Name = "ricbAddressTo";
            // 
            // colSymbol
            // 
            this.colSymbol.Caption = "Symbol";
            this.colSymbol.ColumnEdit = this.repositoryItemComboBox2;
            this.colSymbol.FieldName = "Symbol";
            this.colSymbol.Name = "colSymbol";
            this.colSymbol.Visible = true;
            this.colSymbol.VisibleIndex = 0;
            this.colSymbol.Width = 70;
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "*",
            "**"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // colActualSampleDespatchDate
            // 
            this.colActualSampleDespatchDate.Caption = "Prime\r\nActual\r\nDespatch dd";
            this.colActualSampleDespatchDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colActualSampleDespatchDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActualSampleDespatchDate.FieldName = "ActualSampleDespatchDate";
            this.colActualSampleDespatchDate.Name = "colActualSampleDespatchDate";
            this.colActualSampleDespatchDate.Visible = true;
            this.colActualSampleDespatchDate.VisibleIndex = 6;
            this.colActualSampleDespatchDate.Width = 91;
            // 
            // colActualSampleDespatchDate_Next
            // 
            this.colActualSampleDespatchDate_Next.Caption = "Redo\r\nActual\r\nDespatch dd";
            this.colActualSampleDespatchDate_Next.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colActualSampleDespatchDate_Next.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActualSampleDespatchDate_Next.FieldName = "ActualSampleDespatchDate_Next";
            this.colActualSampleDespatchDate_Next.Name = "colActualSampleDespatchDate_Next";
            this.colActualSampleDespatchDate_Next.Visible = true;
            this.colActualSampleDespatchDate_Next.VisibleIndex = 7;
            this.colActualSampleDespatchDate_Next.Width = 93;
            // 
            // colApproveStatus
            // 
            this.colApproveStatus.Caption = "Prime\r\nAppv.\r\nResult";
            this.colApproveStatus.ColumnEdit = this.repositoryItemComboBox_AppvStatus;
            this.colApproveStatus.FieldName = "ApproveStatus";
            this.colApproveStatus.Name = "colApproveStatus";
            this.colApproveStatus.Visible = true;
            this.colApproveStatus.VisibleIndex = 8;
            this.colApproveStatus.Width = 56;
            // 
            // repositoryItemComboBox_AppvStatus
            // 
            this.repositoryItemComboBox_AppvStatus.AutoHeight = false;
            this.repositoryItemComboBox_AppvStatus.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox_AppvStatus.Items.AddRange(new object[] {
            "",
            "Apv1",
            "Rej2",
            "Partly3"});
            this.repositoryItemComboBox_AppvStatus.Name = "repositoryItemComboBox_AppvStatus";
            this.repositoryItemComboBox_AppvStatus.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colApproveDate
            // 
            this.colApproveDate.Caption = "Prime\r\nAppv. dd";
            this.colApproveDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colApproveDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colApproveDate.FieldName = "ApproveDate";
            this.colApproveDate.Name = "colApproveDate";
            this.colApproveDate.Visible = true;
            this.colApproveDate.VisibleIndex = 9;
            this.colApproveDate.Width = 83;
            // 
            // colApproveStatus_Next
            // 
            this.colApproveStatus_Next.Caption = "Redo\r\nAppv.\r\nResult";
            this.colApproveStatus_Next.ColumnEdit = this.repositoryItemComboBox_AppvStatus;
            this.colApproveStatus_Next.FieldName = "ApproveStatus_Next";
            this.colApproveStatus_Next.Name = "colApproveStatus_Next";
            this.colApproveStatus_Next.Visible = true;
            this.colApproveStatus_Next.VisibleIndex = 10;
            this.colApproveStatus_Next.Width = 54;
            // 
            // colApproveDate_Next
            // 
            this.colApproveDate_Next.Caption = "Redo\r\nAppv. dd";
            this.colApproveDate_Next.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colApproveDate_Next.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colApproveDate_Next.FieldName = "ApproveDate_Next";
            this.colApproveDate_Next.Name = "colApproveDate_Next";
            this.colApproveDate_Next.Visible = true;
            this.colApproveDate_Next.VisibleIndex = 11;
            this.colApproveDate_Next.Width = 69;
            // 
            // colKeepQty
            // 
            this.colKeepQty.Caption = "Keep Qty";
            this.colKeepQty.FieldName = "KeepQty";
            this.colKeepQty.Name = "colKeepQty";
            this.colKeepQty.Visible = true;
            this.colKeepQty.VisibleIndex = 13;
            // 
            // colSLevel
            // 
            this.colSLevel.Caption = "Level";
            this.colSLevel.FieldName = "SLevel";
            this.colSLevel.Name = "colSLevel";
            this.colSLevel.Visible = true;
            this.colSLevel.VisibleIndex = 2;
            this.colSLevel.Width = 70;
            // 
            // repositoryItemRadioGroup1
            // 
            this.repositoryItemRadioGroup1.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem(true, "Customer"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem(false, "Internal Use")});
            this.repositoryItemRadioGroup1.Name = "repositoryItemRadioGroup1";
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Id = 15;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Id = 16;
            this.barButtonItem2.Name = "barButtonItem2";
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Id = 17;
            this.barButtonItem3.Name = "barButtonItem3";
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Id = 18;
            this.barButtonItem4.Name = "barButtonItem4";
            // 
            // colSizeDesc
            // 
            this.colSizeDesc.Caption = "Size";
            this.colSizeDesc.FieldName = "SizeDesc";
            this.colSizeDesc.Name = "colSizeDesc";
            this.colSizeDesc.OptionsColumn.ReadOnly = true;
            this.colSizeDesc.Width = 61;
            // 
            // colBulkQty
            // 
            this.colBulkQty.Caption = "Bulk Qty";
            this.colBulkQty.FieldName = "BulkQty";
            this.colBulkQty.Name = "colBulkQty";
            this.colBulkQty.OptionsColumn.ReadOnly = true;
            this.colBulkQty.Visible = true;
            this.colBulkQty.VisibleIndex = 5;
            this.colBulkQty.Width = 92;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "ERP Color Code";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 0;
            this.colColorCode.Width = 106;
            // 
            // colCup
            // 
            this.colCup.Caption = "Cup";
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.OptionsColumn.ReadOnly = true;
            this.colCup.Visible = true;
            this.colCup.VisibleIndex = 1;
            this.colCup.Width = 85;
            // 
            // colSize
            // 
            this.colSize.Caption = "Size";
            this.colSize.FieldName = "Size";
            this.colSize.Name = "colSize";
            this.colSize.Visible = true;
            this.colSize.VisibleIndex = 3;
            // 
            // colCustSize
            // 
            this.colCustSize.Caption = "Cust Size";
            this.colCustSize.FieldName = "CustSize";
            this.colCustSize.Name = "colCustSize";
            this.colCustSize.OptionsColumn.ReadOnly = true;
            this.colCustSize.Visible = true;
            this.colCustSize.VisibleIndex = 4;
            this.colCustSize.Width = 91;
            // 
            // colCustCup
            // 
            this.colCustCup.Caption = "Cust Cup";
            this.colCustCup.FieldName = "CustCup";
            this.colCustCup.Name = "colCustCup";
            this.colCustCup.OptionsColumn.ReadOnly = true;
            this.colCustCup.Visible = true;
            this.colCustCup.VisibleIndex = 2;
            this.colCustCup.Width = 98;
            // 
            // itemSampleType
            // 
            this.itemSampleType.AutoHeight = false;
            this.itemSampleType.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.itemSampleType.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataName", "DataName", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.itemSampleType.DisplayMember = "SampleOrderType";
            this.itemSampleType.HideSelection = false;
            this.itemSampleType.Name = "itemSampleType";
            this.itemSampleType.NullText = "";
            this.itemSampleType.ShowHeader = false;
            this.itemSampleType.ValueMember = "SampleOrderType";
            // 
            // cbWorkShop
            // 
            this.cbWorkShop.AutoHeight = false;
            this.cbWorkShop.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbWorkShop.DropDownRows = 12;
            this.cbWorkShop.Name = "cbWorkShop";
            this.cbWorkShop.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // itemWorkShop
            // 
            this.itemWorkShop.AutoHeight = false;
            this.itemWorkShop.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.itemWorkShop.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("DataName", "DataName", 20, DevExpress.Utils.FormatType.None, "", true, DevExpress.Utils.HorzAlignment.Default, DevExpress.Data.ColumnSortOrder.None)});
            this.itemWorkShop.DisplayMember = "DataName";
            this.itemWorkShop.Name = "itemWorkShop";
            this.itemWorkShop.NullText = "";
            this.itemWorkShop.ShowHeader = false;
            this.itemWorkShop.ValueMember = "DataCode";
            // 
            // colDespatchQty
            // 
            this.colDespatchQty.Caption = "DespatchQty";
            this.colDespatchQty.FieldName = "DespatchQty";
            this.colDespatchQty.Name = "colDespatchQty";
            // 
            // btnChooseSampleType
            // 
            this.btnChooseSampleType.Caption = "Choose Sample Type";
            this.btnChooseSampleType.Id = 19;
            this.btnChooseSampleType.Name = "btnChooseSampleType";
            this.btnChooseSampleType.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnChooseSampleType_ItemClick);
            // 
            // CupOrder
            // 
            this.CupOrder.Caption = "CupOrder";
            this.CupOrder.FieldName = "CupOrder";
            this.CupOrder.Name = "CupOrder";
            this.CupOrder.SortMode = DevExpress.XtraGrid.ColumnSortMode.Value;
            // 
            // SizeOrder
            // 
            this.SizeOrder.Caption = "SizeOrder";
            this.SizeOrder.FieldName = "SizeOrder";
            this.SizeOrder.Name = "SizeOrder";
            this.SizeOrder.SortMode = DevExpress.XtraGrid.ColumnSortMode.Value;
            // 
            // WorkOrderColorSKUListForm
            // 
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WorkOrderColorSKUListForm";
            this.Size = new System.Drawing.Size(1866, 412);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvWorkOrderSamples)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbSampleOrderType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbAddressTo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox_AppvStatus)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemSampleType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkShop)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.itemWorkShop)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraGrid.Columns.GridColumn colSizeDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colCup;
        private DevExpress.XtraGrid.Columns.GridColumn colSize;
        private DevExpress.XtraGrid.Columns.GridColumn colCustSize;
        private DevExpress.XtraGrid.Columns.GridColumn colCustCup;
        private DevExpress.XtraGrid.Columns.GridColumn colBulkQty;
        private DevExpress.XtraGrid.Columns.GridColumn colDespatchQty;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit itemWorkShop;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit itemSampleType;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox cbSampleOrderType;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox cbWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleType;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleDespatchDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleQty;
        private DevExpress.XtraBars.BarButtonItem btnChooseSampleType;
        public DevExpress.XtraGrid.Views.Grid.GridView gvWorkOrderSamples;
        private DevExpress.XtraGrid.Columns.GridColumn colAddressTo;
        private DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup repositoryItemRadioGroup1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbAddressTo;
        private DevExpress.XtraGrid.Columns.GridColumn CupOrder;
        private DevExpress.XtraGrid.Columns.GridColumn SizeOrder;
        private DevExpress.XtraGrid.Columns.GridColumn colSymbol;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraGrid.Columns.GridColumn colActualSampleDespatchDate;
        private DevExpress.XtraGrid.Columns.GridColumn colApproveDate;
        private DevExpress.XtraGrid.Columns.GridColumn colKeepQty;
        private DevExpress.XtraGrid.Columns.GridColumn colSLevel;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleDespatchDate_Next;
        private DevExpress.XtraGrid.Columns.GridColumn colActualSampleDespatchDate_Next;
        private DevExpress.XtraGrid.Columns.GridColumn colApproveDate_Next;
        private DevExpress.XtraGrid.Columns.GridColumn colApproveStatus;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox_AppvStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colApproveStatus_Next;

    }
}
