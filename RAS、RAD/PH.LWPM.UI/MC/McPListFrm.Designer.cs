namespace PH.LWPM.UI.MC
{
    partial class McPListFrm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode3 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode4 = new DevExpress.XtraGrid.GridLevelNode();
            this.colId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBdt = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVndr = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUYear = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colType2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.barBtnMcBrand = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnMachine = new DevExpress.XtraBars.BarButtonItem();
            this.barMachinePool = new DevExpress.XtraBars.BarButtonItem();
            this.barSummaryReport = new DevExpress.XtraBars.BarButtonItem();
            this.colMachineClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDepartment = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDepartmentCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSectionEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSectionCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTeamEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTeamCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMCPartEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMCPartCn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barSubItemConfirm = new DevExpress.XtraBars.BarSubItem();
            this.barButtonItemConfirm1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItemConfirm2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.colConfirmedImmHead = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colConfirmedDeptHead = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColPrepared = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSerialNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barScrap = new DevExpress.XtraBars.BarButtonItem();
            this.barRestore = new DevExpress.XtraBars.BarButtonItem();
            this.colProjectionDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKVA = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colKW = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRatio = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnWriteOff = new DevExpress.XtraBars.BarButtonItem();
            this.colDeliveryStage = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAssetNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsDeploymentShow = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barSubItem1,
            this.barBtnMcBrand,
            this.barBtnMachine,
            this.barMachinePool,
            this.barSummaryReport,
            this.barSubItemConfirm,
            this.barButtonItemConfirm1,
            this.barButtonItemConfirm2,
            this.barButtonItem3,
            this.barScrap,
            this.barRestore,
            this.barBtnWriteOff});
            this.objbarManager.MaxItemId = 53;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barSubItem1, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSubItemConfirm),
            new DevExpress.XtraBars.LinkPersistInfo(this.barScrap, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barRestore, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnWriteOff, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode3.RelationName = "Level1";
            gridLevelNode4.RelationName = "Level2";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode3,
            gridLevelNode4});
            this.objListGridControl.Size = new System.Drawing.Size(1248, 533);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colId,
            this.colMachineClass,
            this.colType1,
            this.colName,
            this.colType2,
            this.colType,
            this.ColFactory,
            this.colBdt,
            this.colUYear,
            this.colDepartment,
            this.colDepartmentCn,
            this.colSectionEn,
            this.colSectionCn,
            this.colTeamEn,
            this.colTeamCn,
            this.colLine,
            this.colMCPartEn,
            this.colMCPartCn,
            this.ColPrepared,
            this.colConfirmedImmHead,
            this.colConfirmedDeptHead,
            this.colVndr,
            this.colSerialNo,
            this.colProjectionDate,
            this.colKVA,
            this.colKW,
            this.gcRatio,
            this.colDeliveryStage,
            this.colAssetNO,
            this.colIsDeploymentShow});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(713, 326, 208, 191);
            this.objListGridView.GroupCount = 5;
            this.objListGridView.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Custom, "Id", null, "{0}")});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.EnableAppearanceEvenRow = true;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.ColFactory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colDepartment, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSectionEn, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colTeamEn, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colType2, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colMachineClass, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colType1, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colName, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colMCPartEn, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.objListGridView_FocusedRowChanged);
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // colId
            // 
            this.colId.Caption = "Id";
            this.colId.FieldName = "Id";
            this.colId.Name = "colId";
            this.colId.Visible = true;
            this.colId.VisibleIndex = 0;
            this.colId.Width = 115;
            // 
            // colName
            // 
            this.colName.Caption = "Model";
            this.colName.FieldName = "Name";
            this.colName.Name = "colName";
            this.colName.Visible = true;
            this.colName.VisibleIndex = 3;
            this.colName.Width = 54;
            // 
            // ColFactory
            // 
            this.ColFactory.Caption = "Factory";
            this.ColFactory.FieldName = "Factory";
            this.ColFactory.Name = "ColFactory";
            // 
            // colLine
            // 
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 12;
            // 
            // colType
            // 
            this.colType.Caption = "Description(CH)";
            this.colType.FieldName = "Type";
            this.colType.Name = "colType";
            this.colType.Visible = true;
            this.colType.VisibleIndex = 4;
            this.colType.Width = 94;
            // 
            // colBdt
            // 
            this.colBdt.Caption = "ArrivedDate";
            this.colBdt.FieldName = "Bdt";
            this.colBdt.Name = "colBdt";
            this.colBdt.Visible = true;
            this.colBdt.VisibleIndex = 6;
            // 
            // colVndr
            // 
            this.colVndr.Caption = "Vendor";
            this.colVndr.FieldName = "Vndr";
            this.colVndr.Name = "colVndr";
            this.colVndr.Visible = true;
            this.colVndr.VisibleIndex = 19;
            this.colVndr.Width = 62;
            // 
            // colUYear
            // 
            this.colUYear.Caption = "Ageing";
            this.colUYear.FieldName = "UYearN";
            this.colUYear.Name = "colUYear";
            this.colUYear.Visible = true;
            this.colUYear.VisibleIndex = 7;
            this.colUYear.Width = 64;
            // 
            // colType1
            // 
            this.colType1.Caption = "Mc Type";
            this.colType1.FieldName = "Type1";
            this.colType1.Name = "colType1";
            this.colType1.Visible = true;
            this.colType1.VisibleIndex = 2;
            this.colType1.Width = 62;
            // 
            // colType2
            // 
            this.colType2.Caption = "Description(EN)";
            this.colType2.FieldName = "Type2";
            this.colType2.Name = "colType2";
            this.colType2.Width = 85;
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "Print";
            this.barSubItem1.Id = 36;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnMcBrand),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnMachine),
            new DevExpress.XtraBars.LinkPersistInfo(this.barMachinePool),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSummaryReport)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // barBtnMcBrand
            // 
            this.barBtnMcBrand.Caption = "McBrand";
            this.barBtnMcBrand.Id = 37;
            this.barBtnMcBrand.Name = "barBtnMcBrand";
            this.barBtnMcBrand.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnMcBrand_ItemClick);
            // 
            // barBtnMachine
            // 
            this.barBtnMachine.Caption = "Machine";
            this.barBtnMachine.Id = 38;
            this.barBtnMachine.Name = "barBtnMachine";
            this.barBtnMachine.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnMachine_ItemClick);
            // 
            // barMachinePool
            // 
            this.barMachinePool.Caption = "MachinePool Rpt";
            this.barMachinePool.Id = 41;
            this.barMachinePool.Name = "barMachinePool";
            this.barMachinePool.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barMachinePool_ItemClick);
            // 
            // barSummaryReport
            // 
            this.barSummaryReport.Caption = "SummaryReport";
            this.barSummaryReport.Id = 42;
            this.barSummaryReport.Name = "barSummaryReport";
            this.barSummaryReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barSummaryReport_ItemClick);
            // 
            // colMachineClass
            // 
            this.colMachineClass.Caption = "M/C Class";
            this.colMachineClass.FieldName = "MachineClass";
            this.colMachineClass.Name = "colMachineClass";
            this.colMachineClass.Visible = true;
            this.colMachineClass.VisibleIndex = 1;
            // 
            // colDepartment
            // 
            this.colDepartment.Caption = "Department";
            this.colDepartment.FieldName = "DepartmentEn";
            this.colDepartment.Name = "colDepartment";
            // 
            // colDepartmentCn
            // 
            this.colDepartmentCn.Caption = "Department(Chn)";
            this.colDepartmentCn.FieldName = "DepartmentCn";
            this.colDepartmentCn.Name = "colDepartmentCn";
            this.colDepartmentCn.Visible = true;
            this.colDepartmentCn.VisibleIndex = 8;
            this.colDepartmentCn.Width = 125;
            // 
            // colSectionEn
            // 
            this.colSectionEn.Caption = "Section";
            this.colSectionEn.FieldName = "SectionEn";
            this.colSectionEn.Name = "colSectionEn";
            // 
            // colSectionCn
            // 
            this.colSectionCn.Caption = "Section(Chn)";
            this.colSectionCn.FieldName = "SectionCn";
            this.colSectionCn.Name = "colSectionCn";
            this.colSectionCn.Visible = true;
            this.colSectionCn.VisibleIndex = 9;
            // 
            // colTeamEn
            // 
            this.colTeamEn.Caption = "Team";
            this.colTeamEn.FieldName = "TeamEn";
            this.colTeamEn.Name = "colTeamEn";
            // 
            // colTeamCn
            // 
            this.colTeamCn.Caption = "Team(Chn)";
            this.colTeamCn.FieldName = "TeamCn";
            this.colTeamCn.Name = "colTeamCn";
            this.colTeamCn.Visible = true;
            this.colTeamCn.VisibleIndex = 10;
            // 
            // colMCPartEn
            // 
            this.colMCPartEn.Caption = "Labor cost fon Mgt Acct";
            this.colMCPartEn.FieldName = "MCPartEn";
            this.colMCPartEn.Name = "colMCPartEn";
            this.colMCPartEn.Visible = true;
            this.colMCPartEn.VisibleIndex = 13;
            // 
            // colMCPartCn
            // 
            this.colMCPartCn.Caption = "Labor cost fon Mgt Acct(Chn)";
            this.colMCPartCn.FieldName = "MCPartCn";
            this.colMCPartCn.Name = "colMCPartCn";
            this.colMCPartCn.Visible = true;
            this.colMCPartCn.VisibleIndex = 14;
            // 
            // barSubItemConfirm
            // 
            this.barSubItemConfirm.Caption = "Confirm";
            this.barSubItemConfirm.Id = 43;
            this.barSubItemConfirm.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItemConfirm1),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItemConfirm2)});
            this.barSubItemConfirm.Name = "barSubItemConfirm";
            // 
            // barButtonItemConfirm1
            // 
            this.barButtonItemConfirm1.Caption = "Confirmed Imm Head";
            this.barButtonItemConfirm1.Id = 44;
            this.barButtonItemConfirm1.Name = "barButtonItemConfirm1";
            this.barButtonItemConfirm1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemConfirm1_ItemClick);
            // 
            // barButtonItemConfirm2
            // 
            this.barButtonItemConfirm2.Caption = "Confirmed by Dept Head";
            this.barButtonItemConfirm2.Id = 45;
            this.barButtonItemConfirm2.Name = "barButtonItemConfirm2";
            this.barButtonItemConfirm2.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItemConfirm2_ItemClick);
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "barButtonItem3";
            this.barButtonItem3.Id = 46;
            this.barButtonItem3.Name = "barButtonItem3";
            // 
            // colConfirmedImmHead
            // 
            this.colConfirmedImmHead.Caption = "Confirmed by Imm Head";
            this.colConfirmedImmHead.FieldName = "Confirm_1Name";
            this.colConfirmedImmHead.Name = "colConfirmedImmHead";
            this.colConfirmedImmHead.Visible = true;
            this.colConfirmedImmHead.VisibleIndex = 16;
            this.colConfirmedImmHead.Width = 142;
            // 
            // colConfirmedDeptHead
            // 
            this.colConfirmedDeptHead.Caption = "Confirmed by Dept Head";
            this.colConfirmedDeptHead.FieldName = "Confirm_2Name";
            this.colConfirmedDeptHead.Name = "colConfirmedDeptHead";
            this.colConfirmedDeptHead.Visible = true;
            this.colConfirmedDeptHead.VisibleIndex = 17;
            this.colConfirmedDeptHead.Width = 130;
            // 
            // ColPrepared
            // 
            this.ColPrepared.Caption = "Prepared by";
            this.ColPrepared.FieldName = "PrepanedByName";
            this.ColPrepared.Name = "ColPrepared";
            this.ColPrepared.Visible = true;
            this.ColPrepared.VisibleIndex = 15;
            // 
            // colSerialNo
            // 
            this.colSerialNo.Caption = "Serial No";
            this.colSerialNo.FieldName = "SerialNo";
            this.colSerialNo.Name = "colSerialNo";
            this.colSerialNo.Visible = true;
            this.colSerialNo.VisibleIndex = 18;
            // 
            // barScrap
            // 
            this.barScrap.Caption = "Scrap";
            this.barScrap.Enabled = false;
            this.barScrap.Id = 49;
            this.barScrap.Name = "barScrap";
            this.barScrap.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barScrap_ItemClick);
            // 
            // barRestore
            // 
            this.barRestore.Caption = "Restore";
            this.barRestore.Enabled = false;
            this.barRestore.Id = 51;
            this.barRestore.Name = "barRestore";
            this.barRestore.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barRestore_ItemClick);
            // 
            // colProjectionDate
            // 
            this.colProjectionDate.Caption = "Projection stock in date";
            this.colProjectionDate.FieldName = "ProjectionDate";
            this.colProjectionDate.Name = "colProjectionDate";
            this.colProjectionDate.Visible = true;
            this.colProjectionDate.VisibleIndex = 5;
            // 
            // colKVA
            // 
            this.colKVA.Caption = "KVA";
            this.colKVA.FieldName = "KVA";
            this.colKVA.Name = "colKVA";
            this.colKVA.Visible = true;
            this.colKVA.VisibleIndex = 20;
            // 
            // colKW
            // 
            this.colKW.Caption = "KW";
            this.colKW.FieldName = "KW";
            this.colKW.Name = "colKW";
            this.colKW.Visible = true;
            this.colKW.VisibleIndex = 21;
            // 
            // gcRatio
            // 
            this.gcRatio.Caption = "Diff(KW/KVA)";
            this.gcRatio.FieldName = "MRatio";
            this.gcRatio.Name = "gcRatio";
            this.gcRatio.Visible = true;
            this.gcRatio.VisibleIndex = 22;
            // 
            // barBtnWriteOff
            // 
            this.barBtnWriteOff.Caption = "Write Off";
            this.barBtnWriteOff.Id = 52;
            this.barBtnWriteOff.Name = "barBtnWriteOff";
            this.barBtnWriteOff.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barBtnWriteOff.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnWriteOff_ItemClick);
            // 
            // colDeliveryStage
            // 
            this.colDeliveryStage.Caption = "Delivery Stage";
            this.colDeliveryStage.FieldName = "DeliveryStage";
            this.colDeliveryStage.Name = "colDeliveryStage";
            this.colDeliveryStage.Visible = true;
            this.colDeliveryStage.VisibleIndex = 23;
            // 
            // colAssetNO
            // 
            this.colAssetNO.Caption = "Asset No.";
            this.colAssetNO.FieldName = "AssetNO";
            this.colAssetNO.Name = "colAssetNO";
            this.colAssetNO.Visible = true;
            this.colAssetNO.VisibleIndex = 24;
            // 
            // colIsDeploymentShow
            // 
            this.colIsDeploymentShow.Caption = "Deployment";
            this.colIsDeploymentShow.FieldName = "IsDeploymentShow";
            this.colIsDeploymentShow.Name = "colIsDeploymentShow";
            // 
            // McPListFrm
            // 
            this.AllowAddRow = false;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "McPListFrm";
            this.Size = new System.Drawing.Size(1248, 560);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.PListFrm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colId;
        private DevExpress.XtraGrid.Columns.GridColumn colName;
        private DevExpress.XtraGrid.Columns.GridColumn ColFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colType;
        private DevExpress.XtraGrid.Columns.GridColumn colBdt;
        private DevExpress.XtraGrid.Columns.GridColumn colVndr;
        private DevExpress.XtraGrid.Columns.GridColumn colUYear;
        private DevExpress.XtraGrid.Columns.GridColumn colType1;
        private DevExpress.XtraGrid.Columns.GridColumn colType2;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem barBtnMcBrand;
        private DevExpress.XtraBars.BarButtonItem barBtnMachine;
        private DevExpress.XtraBars.BarButtonItem barMachinePool;
        private DevExpress.XtraBars.BarButtonItem barSummaryReport;
        private DevExpress.XtraGrid.Columns.GridColumn colMachineClass;
        private DevExpress.XtraGrid.Columns.GridColumn colDepartment;
        private DevExpress.XtraGrid.Columns.GridColumn colDepartmentCn;
        private DevExpress.XtraGrid.Columns.GridColumn colSectionEn;
        private DevExpress.XtraGrid.Columns.GridColumn colSectionCn;
        private DevExpress.XtraGrid.Columns.GridColumn colTeamEn;
        private DevExpress.XtraGrid.Columns.GridColumn colTeamCn;
        private DevExpress.XtraGrid.Columns.GridColumn colMCPartEn;
        private DevExpress.XtraGrid.Columns.GridColumn colMCPartCn;
        private DevExpress.XtraBars.BarSubItem barSubItemConfirm;
        private DevExpress.XtraBars.BarButtonItem barButtonItemConfirm1;
        private DevExpress.XtraBars.BarButtonItem barButtonItemConfirm2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmedImmHead;
        private DevExpress.XtraGrid.Columns.GridColumn colConfirmedDeptHead;
        private DevExpress.XtraGrid.Columns.GridColumn ColPrepared;
        private DevExpress.XtraGrid.Columns.GridColumn colSerialNo;
        private DevExpress.XtraBars.BarButtonItem barScrap;
        private DevExpress.XtraBars.BarButtonItem barRestore;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectionDate;
        private DevExpress.XtraGrid.Columns.GridColumn colKVA;
        private DevExpress.XtraGrid.Columns.GridColumn colKW;
        private DevExpress.XtraGrid.Columns.GridColumn gcRatio;
        private DevExpress.XtraBars.BarButtonItem barBtnWriteOff;
        private DevExpress.XtraGrid.Columns.GridColumn colDeliveryStage;
        private DevExpress.XtraGrid.Columns.GridColumn colAssetNO;
        private DevExpress.XtraGrid.Columns.GridColumn colIsDeploymentShow;
    }
}
