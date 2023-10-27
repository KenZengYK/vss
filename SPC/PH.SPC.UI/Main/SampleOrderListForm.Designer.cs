namespace PH.SPC.UI
{
    partial class SampleOrderListForm
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
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn12 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnComplete = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnUnComplete = new DevExpress.XtraBars.BarButtonItem();
            this.colSeason = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalSampleOrderQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProductGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomerGroup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnTest = new DevExpress.XtraBars.BarButtonItem();
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.barEditItemStage = new DevExpress.XtraBars.BarEditItem();
            this.repositoryItemComboBoxStage = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSuffixNoShow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSampleType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSamplePurpose = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStageCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colApprover = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colApprovalDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnConfirm = new DevExpress.XtraBars.BarButtonItem();
            this.btnApproval = new DevExpress.XtraBars.BarButtonItem();
            this.colRequestDespatchDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDespatchDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMaterialReady = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnViewWIPStyle = new DevExpress.XtraBars.BarButtonItem();
            this.colPatternSource = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPatternReadyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBoxStage)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar1});
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnComplete,
            this.barBtnUnComplete,
            this.btnTest,
            this.barEditItemStage,
            this.btnPrint,
            this.btnConfirm,
            this.btnApproval,
            this.btnViewWIPStyle});
            this.objbarManager.MaxItemId = 62;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBoxStage});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnComplete, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnUnComplete, true),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.None, false, this.btnTest, false),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnConfirm, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnApproval, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnViewWIPStyle, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 52);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1471, 439);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.gridColumn1,
            this.colSuffixNoShow,
            this.colTotalStyle,
            this.colTotalSampleOrderQty,
            this.gridColumn2,
            this.gridColumn3,
            this.gridColumn10,
            this.colStageCode,
            this.gridColumn11,
            this.gridColumn12,
            this.gridColumn4,
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn5,
            this.colSeason,
            this.colProductGroup,
            this.colCustomerGroup,
            this.colSampleType,
            this.colSamplePurpose,
            this.colConfirmer,
            this.colConfirmDate,
            this.colApprover,
            this.colApprovalDate,
            this.colRemark,
            this.colProjectNo,
            this.colRequestDespatchDate,
            this.colDespatchDate,
            this.colMaterialReady,
            this.colPatternSource,
            this.colPatternReadyDate});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(518, 376, 216, 320);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            this.objListGridView.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.objListGridView_CustomDrawCell);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "SplO#";
            this.gridColumn1.FieldName = "SampleOrderID";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 1;
            this.gridColumn1.Width = 90;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Project Nr.";
            this.gridColumn2.FieldName = "ProjectNo";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Width = 122;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Customer";
            this.gridColumn3.FieldName = "CustomerID";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 6;
            this.gridColumn3.Width = 74;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Ex-fty Date";
            this.gridColumn4.ColumnEdit = this.repositoryItemDateEdit1;
            this.gridColumn4.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.gridColumn4.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gridColumn4.FieldName = "DueDate";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Width = 114;
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
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Auditing";
            this.gridColumn7.FieldName = "Confirm";
            this.gridColumn7.Name = "gridColumn7";
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Creator";
            this.gridColumn8.FieldName = "Table";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 16;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "Cust. Dept.";
            this.gridColumn10.FieldName = "CustDept";
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.Width = 110;
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "Factory Start Date";
            this.gridColumn11.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gridColumn11.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gridColumn11.FieldName = "FactoryStartDate";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.Width = 117;
            // 
            // gridColumn12
            // 
            this.gridColumn12.Caption = "Delivery Date";
            this.gridColumn12.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.gridColumn12.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gridColumn12.FieldName = "ShipmentDate";
            this.gridColumn12.Name = "gridColumn12";
            this.gridColumn12.Width = 96;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Create Date";
            this.gridColumn5.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.gridColumn5.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gridColumn5.FieldName = "CreateDate";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 17;
            this.gridColumn5.Width = 88;
            // 
            // barBtnComplete
            // 
            this.barBtnComplete.Caption = "Complete";
            this.barBtnComplete.Id = 54;
            this.barBtnComplete.Name = "barBtnComplete";
            this.barBtnComplete.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnComplete_ItemClick);
            // 
            // barBtnUnComplete
            // 
            this.barBtnUnComplete.Caption = "Restart";
            this.barBtnUnComplete.Id = 55;
            this.barBtnUnComplete.Name = "barBtnUnComplete";
            this.barBtnUnComplete.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnUnComplete_ItemClick);
            // 
            // colSeason
            // 
            this.colSeason.Caption = "Season";
            this.colSeason.FieldName = "Season";
            this.colSeason.Name = "colSeason";
            this.colSeason.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSeason.Visible = true;
            this.colSeason.VisibleIndex = 7;
            this.colSeason.Width = 61;
            // 
            // colTotalStyle
            // 
            this.colTotalStyle.Caption = "No. of\r\nStyle";
            this.colTotalStyle.FieldName = "TotalStyle";
            this.colTotalStyle.Name = "colTotalStyle";
            this.colTotalStyle.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colTotalStyle.Visible = true;
            this.colTotalStyle.VisibleIndex = 4;
            this.colTotalStyle.Width = 56;
            // 
            // colTotalSampleOrderQty
            // 
            this.colTotalSampleOrderQty.Caption = "Smpl\r\nOrder Qty";
            this.colTotalSampleOrderQty.FieldName = "TotalSampleOrderQty";
            this.colTotalSampleOrderQty.Name = "colTotalSampleOrderQty";
            this.colTotalSampleOrderQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colTotalSampleOrderQty.Visible = true;
            this.colTotalSampleOrderQty.VisibleIndex = 5;
            this.colTotalSampleOrderQty.Width = 77;
            // 
            // colProductGroup
            // 
            this.colProductGroup.Caption = "Product Group";
            this.colProductGroup.FieldName = "ProductGroup";
            this.colProductGroup.Name = "colProductGroup";
            this.colProductGroup.Visible = true;
            this.colProductGroup.VisibleIndex = 8;
            this.colProductGroup.Width = 139;
            // 
            // colCustomerGroup
            // 
            this.colCustomerGroup.Caption = "Cust. Group";
            this.colCustomerGroup.FieldName = "CustomerGroup";
            this.colCustomerGroup.Name = "colCustomerGroup";
            this.colCustomerGroup.Visible = true;
            this.colCustomerGroup.VisibleIndex = 9;
            this.colCustomerGroup.Width = 87;
            // 
            // btnTest
            // 
            this.btnTest.Caption = "Test";
            this.btnTest.Id = 56;
            this.btnTest.Name = "btnTest";
            this.btnTest.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnTest_ItemClick);
            // 
            // bar1
            // 
            this.bar1.BarName = "Toobar2";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 1;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.Text = "Toobar2";
            this.bar1.Visible = false;
            // 
            // barEditItemStage
            // 
            this.barEditItemStage.Caption = "Stage:";
            this.barEditItemStage.Edit = this.repositoryItemComboBoxStage;
            this.barEditItemStage.EditValue = "";
            this.barEditItemStage.Id = 57;
            this.barEditItemStage.Name = "barEditItemStage";
            this.barEditItemStage.Width = 160;
            this.barEditItemStage.EditValueChanged += new System.EventHandler(this.barEditItemStage_EditValueChanged);
            // 
            // repositoryItemComboBoxStage
            // 
            this.repositoryItemComboBoxStage.AutoHeight = false;
            this.repositoryItemComboBoxStage.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBoxStage.Items.AddRange(new object[] {
            "",
            "Development",
            "Pre-Production",
            "Production"});
            this.repositoryItemComboBoxStage.Name = "repositoryItemComboBoxStage";
            this.repositoryItemComboBoxStage.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colSuffixNoShow
            // 
            this.colSuffixNoShow.Caption = "Suffix#";
            this.colSuffixNoShow.FieldName = "SuffixNoShow";
            this.colSuffixNoShow.Name = "colSuffixNoShow";
            this.colSuffixNoShow.OptionsColumn.AllowEdit = false;
            this.colSuffixNoShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSuffixNoShow.Visible = true;
            this.colSuffixNoShow.VisibleIndex = 2;
            // 
            // colSampleType
            // 
            this.colSampleType.Caption = "Smpl Type";
            this.colSampleType.FieldName = "SampleType";
            this.colSampleType.Name = "colSampleType";
            this.colSampleType.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSampleType.Visible = true;
            this.colSampleType.VisibleIndex = 11;
            this.colSampleType.Width = 66;
            // 
            // colSamplePurpose
            // 
            this.colSamplePurpose.Caption = "Smpl Purpose";
            this.colSamplePurpose.FieldName = "SamplePurpose";
            this.colSamplePurpose.Name = "colSamplePurpose";
            this.colSamplePurpose.Visible = true;
            this.colSamplePurpose.VisibleIndex = 12;
            this.colSamplePurpose.Width = 144;
            // 
            // colStageCode
            // 
            this.colStageCode.Caption = "Stage";
            this.colStageCode.FieldName = "StageCode";
            this.colStageCode.Name = "colStageCode";
            this.colStageCode.Visible = true;
            this.colStageCode.VisibleIndex = 10;
            this.colStageCode.Width = 54;
            // 
            // colConfirmer
            // 
            this.colConfirmer.Caption = "Confirmer";
            this.colConfirmer.FieldName = "Confirmer";
            this.colConfirmer.Name = "colConfirmer";
            this.colConfirmer.Visible = true;
            this.colConfirmer.VisibleIndex = 19;
            // 
            // colConfirmDate
            // 
            this.colConfirmDate.Caption = "Confirm Date";
            this.colConfirmDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colConfirmDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colConfirmDate.FieldName = "ConfirmDate";
            this.colConfirmDate.Name = "colConfirmDate";
            this.colConfirmDate.Visible = true;
            this.colConfirmDate.VisibleIndex = 20;
            // 
            // colApprover
            // 
            this.colApprover.Caption = "Approver";
            this.colApprover.FieldName = "Approver";
            this.colApprover.Name = "colApprover";
            this.colApprover.Visible = true;
            this.colApprover.VisibleIndex = 21;
            // 
            // colApprovalDate
            // 
            this.colApprovalDate.Caption = "Approval Date";
            this.colApprovalDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colApprovalDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colApprovalDate.FieldName = "ApprovalDate";
            this.colApprovalDate.Name = "colApprovalDate";
            this.colApprovalDate.Visible = true;
            this.colApprovalDate.VisibleIndex = 22;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 23;
            this.colRemark.Width = 145;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 58;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Proj#";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 3;
            // 
            // btnConfirm
            // 
            this.btnConfirm.Caption = "Confirm";
            this.btnConfirm.Id = 59;
            this.btnConfirm.Name = "btnConfirm";
            this.btnConfirm.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnConfirm_ItemClick);
            // 
            // btnApproval
            // 
            this.btnApproval.Caption = "Approval";
            this.btnApproval.Id = 60;
            this.btnApproval.Name = "btnApproval";
            this.btnApproval.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnApproval_ItemClick);
            // 
            // colRequestDespatchDate
            // 
            this.colRequestDespatchDate.Caption = "Despatch dd";
            this.colRequestDespatchDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colRequestDespatchDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colRequestDespatchDate.FieldName = "RequestDespatchDate";
            this.colRequestDespatchDate.Name = "colRequestDespatchDate";
            this.colRequestDespatchDate.Visible = true;
            this.colRequestDespatchDate.VisibleIndex = 18;
            this.colRequestDespatchDate.Width = 91;
            // 
            // colDespatchDate
            // 
            this.colDespatchDate.Caption = "Despatch dd";
            this.colDespatchDate.FieldName = "DespatchDate";
            this.colDespatchDate.Name = "colDespatchDate";
            // 
            // colMaterialReady
            // 
            this.colMaterialReady.Caption = "Mat\'l Status";
            this.colMaterialReady.FieldName = "MaterialReady";
            this.colMaterialReady.Name = "colMaterialReady";
            this.colMaterialReady.Visible = true;
            this.colMaterialReady.VisibleIndex = 15;
            this.colMaterialReady.Width = 74;
            // 
            // btnViewWIPStyle
            // 
            this.btnViewWIPStyle.Caption = "View Style";
            this.btnViewWIPStyle.Id = 61;
            this.btnViewWIPStyle.Name = "btnViewWIPStyle";
            this.btnViewWIPStyle.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnViewWIPStyle_ItemClick);
            // 
            // colPatternSource
            // 
            this.colPatternSource.Caption = "Pattern Source";
            this.colPatternSource.FieldName = "PatternSource";
            this.colPatternSource.Name = "colPatternSource";
            this.colPatternSource.Visible = true;
            this.colPatternSource.VisibleIndex = 13;
            this.colPatternSource.Width = 85;
            // 
            // colPatternReadyDate
            // 
            this.colPatternReadyDate.Caption = "Pattern Ready Date";
            this.colPatternReadyDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colPatternReadyDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colPatternReadyDate.FieldName = "PatternReadyDate";
            this.colPatternReadyDate.Name = "colPatternReadyDate";
            this.colPatternReadyDate.Visible = true;
            this.colPatternReadyDate.VisibleIndex = 14;
            this.colPatternReadyDate.Width = 88;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceCell.Options.UseTextOptions = true;
            this.colFactory.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 0;
            this.colFactory.Width = 39;
            // 
            // SampleOrderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SampleOrderListForm";
            this.Size = new System.Drawing.Size(1471, 491);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.SampleOrderListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBoxStage)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn11;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn12;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraBars.BarButtonItem barBtnComplete;
        private DevExpress.XtraBars.BarButtonItem barBtnUnComplete;
        private DevExpress.XtraGrid.Columns.GridColumn colSeason;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalSampleOrderQty;
        private DevExpress.XtraGrid.Columns.GridColumn colProductGroup;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomerGroup;
        private DevExpress.XtraBars.BarButtonItem btnTest;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.BarEditItem barEditItemStage;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBoxStage;
        private DevExpress.XtraGrid.Columns.GridColumn colSuffixNoShow;
        private DevExpress.XtraGrid.Columns.GridColumn colSampleType;
        private DevExpress.XtraGrid.Columns.GridColumn colSamplePurpose;
        private DevExpress.XtraGrid.Columns.GridColumn colStageCode;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmer;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmDate;
        private DevExpress.XtraGrid.Columns.GridColumn colApprover;
        private DevExpress.XtraGrid.Columns.GridColumn colApprovalDate;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraBars.BarButtonItem btnConfirm;
        private DevExpress.XtraBars.BarButtonItem btnApproval;
        private DevExpress.XtraGrid.Columns.GridColumn colRequestDespatchDate;
        private DevExpress.XtraGrid.Columns.GridColumn colDespatchDate;
        private DevExpress.XtraGrid.Columns.GridColumn colMaterialReady;
        private DevExpress.XtraBars.BarButtonItem btnViewWIPStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colPatternSource;
        private DevExpress.XtraGrid.Columns.GridColumn colPatternReadyDate;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
    }
}
