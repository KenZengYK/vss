namespace PH.RWO.UI.Amend
{
    partial class AmendListForm
    {
        /// <summary> 
        /// 必需的设计器变量。
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// 清理所有正在使用的资源。
        /// </summary>
        /// <param name="disposing">如果应释放托管资源，为 true；否则为 false。</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region 组件设计器生成的代码

        /// <summary> 
        /// 设计器支持所需的方法 - 不要
        /// 使用代码编辑器修改此方法的内容。
        /// </summary>
        private void InitializeComponent()
        {
            this.barNewVersion = new DevExpress.XtraBars.BarButtonItem();
            this.barConfirm = new DevExpress.XtraBars.BarSubItem();
            this.barPPC = new DevExpress.XtraBars.BarButtonItem();
            this.barSewing = new DevExpress.XtraBars.BarButtonItem();
            this.barManager = new DevExpress.XtraBars.BarButtonItem();
            this.barOA = new DevExpress.XtraBars.BarButtonItem();
            this.barCAD = new DevExpress.XtraBars.BarButtonItem();
            this.barPacking = new DevExpress.XtraBars.BarButtonItem();
            this.barPrint = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCheckFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAmendNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVersion = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWoList = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalWO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOA_Confirm = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDT_OA = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCAD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDT_CAD = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPacking = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDT_Packing = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLastConfirmPerson_MM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLastConfirmDate_MM = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCreater = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLastConfirmPerson_PPC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPPC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDT_PPC = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLastConfirmPerson_Sewing = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSewing = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDT_Sewing = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLastConfirmPerson_Manager = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colManager = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDate_Manager = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.btnSendEMailToFtyPPMC = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Categories.AddRange(new DevExpress.XtraBars.BarManagerCategory[] {
            new DevExpress.XtraBars.BarManagerCategory("CustAction", new System.Guid("5d3daf1f-0476-4497-818c-65487b61c7c0"))});
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barNewVersion,
            this.barConfirm,
            this.barOA,
            this.barManager,
            this.barPPC,
            this.barCAD,
            this.barPacking,
            this.barPrint,
            this.barSewing,
            this.btnSendEMailToFtyPPMC});
            this.objbarManager.MaxItemId = 74;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.FloatSize = new System.Drawing.Size(2000, 0);
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barConfirm, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barPrint, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnSendEMailToFtyPPMC, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(1616, 426);
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
            // barNewVersion
            // 
            this.barNewVersion.Caption = "New Version";
            this.barNewVersion.CategoryGuid = new System.Guid("ec601607-d150-445f-a5ac-db9663ef5ceb");
            this.barNewVersion.Id = 60;
            this.barNewVersion.Name = "barNewVersion";
            this.barNewVersion.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barNewVersion_ItemClick);
            // 
            // barConfirm
            // 
            this.barConfirm.Caption = "Confirm";
            this.barConfirm.CategoryGuid = new System.Guid("5d3daf1f-0476-4497-818c-65487b61c7c0");
            this.barConfirm.Id = 65;
            this.barConfirm.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barPPC),
            new DevExpress.XtraBars.LinkPersistInfo(this.barSewing),
            new DevExpress.XtraBars.LinkPersistInfo(this.barManager)});
            this.barConfirm.Name = "barConfirm";
            this.barConfirm.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barPPC
            // 
            this.barPPC.Caption = "Fty PPMC";
            this.barPPC.Enabled = false;
            this.barPPC.Id = 68;
            this.barPPC.Name = "barPPC";
            this.barPPC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barPPC_ItemClick);
            // 
            // barSewing
            // 
            this.barSewing.Caption = "Fty Sr Mgt";
            this.barSewing.Enabled = false;
            this.barSewing.Id = 72;
            this.barSewing.Name = "barSewing";
            this.barSewing.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barSewing_ItemClick);
            // 
            // barManager
            // 
            this.barManager.Caption = "Head Off. Mer. Mgr. ";
            this.barManager.Enabled = false;
            this.barManager.Id = 67;
            this.barManager.Name = "barManager";
            this.barManager.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barManager_ItemClick);
            // 
            // barOA
            // 
            this.barOA.Caption = "MM Clerk";
            this.barOA.Enabled = false;
            this.barOA.Id = 66;
            this.barOA.Name = "barOA";
            this.barOA.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barOA_ItemClick);
            // 
            // barCAD
            // 
            this.barCAD.Caption = "CAD";
            this.barCAD.Enabled = false;
            this.barCAD.Id = 69;
            this.barCAD.Name = "barCAD";
            this.barCAD.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barCAD_ItemClick);
            // 
            // barPacking
            // 
            this.barPacking.Caption = "Packing";
            this.barPacking.Enabled = false;
            this.barPacking.Id = 70;
            this.barPacking.Name = "barPacking";
            this.barPacking.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barPacking_ItemClick);
            // 
            // barPrint
            // 
            this.barPrint.Caption = "Print";
            this.barPrint.CategoryGuid = new System.Guid("5d3daf1f-0476-4497-818c-65487b61c7c0");
            this.barPrint.Id = 71;
            this.barPrint.Name = "barPrint";
            this.barPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barPrint_ItemClick);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colAmendNo,
            this.colVersion,
            this.colWoList,
            this.colCreater,
            this.colCreateDate,
            this.colOA_Confirm,
            this.colDT_OA,
            this.colManager,
            this.colDate_Manager,
            this.colPPC,
            this.colDT_PPC,
            this.colCAD,
            this.colDT_CAD,
            this.colPacking,
            this.colDT_Packing,
            this.colSewing,
            this.colDT_Sewing,
            this.colTotalWO,
            this.colLastConfirmPerson_MM,
            this.colLastConfirmDate_MM,
            this.colLastConfirmPerson_PPC,
            this.colLastConfirmPerson_Sewing,
            this.colLastConfirmPerson_Manager,
            this.colCheckFlag});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.bandedGridView1_FocusedRowChanged);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawBandHeader);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawColumnHeader);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Basic Information";
            this.gridBand1.Columns.Add(this.colCheckFlag);
            this.gridBand1.Columns.Add(this.colAmendNo);
            this.gridBand1.Columns.Add(this.colVersion);
            this.gridBand1.Columns.Add(this.colWoList);
            this.gridBand1.Columns.Add(this.colTotalWO);
            this.gridBand1.Columns.Add(this.colOA_Confirm);
            this.gridBand1.Columns.Add(this.colDT_OA);
            this.gridBand1.Columns.Add(this.colCAD);
            this.gridBand1.Columns.Add(this.colDT_CAD);
            this.gridBand1.Columns.Add(this.colPacking);
            this.gridBand1.Columns.Add(this.colDT_Packing);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Tag = 1;
            this.gridBand1.Width = 477;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.Caption = "Choose";
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.Width = 62;
            // 
            // colAmendNo
            // 
            this.colAmendNo.Caption = "Revision\r\nNotification#";
            this.colAmendNo.FieldName = "AmendNo";
            this.colAmendNo.Name = "colAmendNo";
            this.colAmendNo.OptionsColumn.AllowEdit = false;
            this.colAmendNo.Visible = true;
            this.colAmendNo.Width = 92;
            // 
            // colVersion
            // 
            this.colVersion.Caption = "New\r\nVer.#";
            this.colVersion.FieldName = "VerId";
            this.colVersion.Name = "colVersion";
            this.colVersion.OptionsColumn.AllowEdit = false;
            this.colVersion.Visible = true;
            this.colVersion.Width = 54;
            // 
            // colWoList
            // 
            this.colWoList.Caption = "Revised WOs for reconfirmation";
            this.colWoList.FieldName = "OrderList";
            this.colWoList.Name = "colWoList";
            this.colWoList.OptionsColumn.AllowEdit = false;
            this.colWoList.Visible = true;
            this.colWoList.Width = 226;
            // 
            // colTotalWO
            // 
            this.colTotalWO.Caption = "WO\r\nTtl";
            this.colTotalWO.FieldName = "TotalWO";
            this.colTotalWO.Name = "colTotalWO";
            this.colTotalWO.OptionsColumn.AllowEdit = false;
            this.colTotalWO.Visible = true;
            this.colTotalWO.Width = 43;
            // 
            // colOA_Confirm
            // 
            this.colOA_Confirm.Caption = "MM確認者";
            this.colOA_Confirm.FieldName = "Confirm_OA";
            this.colOA_Confirm.Name = "colOA_Confirm";
            this.colOA_Confirm.OptionsColumn.AllowEdit = false;
            // 
            // colDT_OA
            // 
            this.colDT_OA.Caption = "MM確認時間";
            this.colDT_OA.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDT_OA.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDT_OA.FieldName = "DT_OA";
            this.colDT_OA.Name = "colDT_OA";
            this.colDT_OA.OptionsColumn.AllowEdit = false;
            this.colDT_OA.Width = 110;
            // 
            // colCAD
            // 
            this.colCAD.Caption = "CAD確認者";
            this.colCAD.FieldName = "Confirm_CAD";
            this.colCAD.Name = "colCAD";
            this.colCAD.OptionsColumn.AllowEdit = false;
            this.colCAD.Width = 81;
            // 
            // colDT_CAD
            // 
            this.colDT_CAD.Caption = "CAD確認時間";
            this.colDT_CAD.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDT_CAD.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDT_CAD.FieldName = "DT_CAD";
            this.colDT_CAD.Name = "colDT_CAD";
            this.colDT_CAD.OptionsColumn.AllowEdit = false;
            this.colDT_CAD.Width = 95;
            // 
            // colPacking
            // 
            this.colPacking.Caption = "Packing確認者";
            this.colPacking.FieldName = "Confirm_Packing";
            this.colPacking.Name = "colPacking";
            this.colPacking.OptionsColumn.AllowEdit = false;
            this.colPacking.Width = 97;
            // 
            // colDT_Packing
            // 
            this.colDT_Packing.Caption = "Packing確認時間";
            this.colDT_Packing.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDT_Packing.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDT_Packing.FieldName = "DT_Packing";
            this.colDT_Packing.Name = "colDT_Packing";
            this.colDT_Packing.OptionsColumn.AllowEdit = false;
            this.colDT_Packing.Width = 112;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "1 SL MM (Preparation)";
            this.gridBand2.Columns.Add(this.colLastConfirmPerson_MM);
            this.gridBand2.Columns.Add(this.colLastConfirmDate_MM);
            this.gridBand2.Columns.Add(this.colCreater);
            this.gridBand2.Columns.Add(this.colCreateDate);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 2;
            this.gridBand2.Width = 322;
            // 
            // colLastConfirmPerson_MM
            // 
            this.colLastConfirmPerson_MM.Caption = "Person\r\n(Last ver.)";
            this.colLastConfirmPerson_MM.FieldName = "LastConfirmPerson_MM";
            this.colLastConfirmPerson_MM.Name = "colLastConfirmPerson_MM";
            this.colLastConfirmPerson_MM.OptionsColumn.AllowEdit = false;
            this.colLastConfirmPerson_MM.Visible = true;
            this.colLastConfirmPerson_MM.Width = 79;
            // 
            // colLastConfirmDate_MM
            // 
            this.colLastConfirmDate_MM.Caption = "date\r\n(Last ver.)";
            this.colLastConfirmDate_MM.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colLastConfirmDate_MM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLastConfirmDate_MM.FieldName = "LastConfirmDate_MM";
            this.colLastConfirmDate_MM.Name = "colLastConfirmDate_MM";
            this.colLastConfirmDate_MM.OptionsColumn.AllowEdit = false;
            this.colLastConfirmDate_MM.Visible = true;
            this.colLastConfirmDate_MM.Width = 79;
            // 
            // colCreater
            // 
            this.colCreater.Caption = "Person\r\n(New ver.)";
            this.colCreater.FieldName = "CreateByUserName";
            this.colCreater.Name = "colCreater";
            this.colCreater.OptionsColumn.AllowEdit = false;
            this.colCreater.Visible = true;
            this.colCreater.Width = 82;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "date\r\n(New ver.)";
            this.colCreateDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colCreateDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCreateDate.FieldName = "CreateTime";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.OptionsColumn.AllowEdit = false;
            this.colCreateDate.Visible = true;
            this.colCreateDate.Width = 82;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "2 Fty PPMC (Recfm)";
            this.gridBand3.Columns.Add(this.colLastConfirmPerson_PPC);
            this.gridBand3.Columns.Add(this.colPPC);
            this.gridBand3.Columns.Add(this.colDT_PPC);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Tag = 1;
            this.gridBand3.Width = 240;
            // 
            // colLastConfirmPerson_PPC
            // 
            this.colLastConfirmPerson_PPC.Caption = "Person\r\n(Last ver.)";
            this.colLastConfirmPerson_PPC.FieldName = "LastConfirmPerson_PPC";
            this.colLastConfirmPerson_PPC.Name = "colLastConfirmPerson_PPC";
            this.colLastConfirmPerson_PPC.OptionsColumn.AllowEdit = false;
            this.colLastConfirmPerson_PPC.Visible = true;
            // 
            // colPPC
            // 
            this.colPPC.Caption = "Person\r\n(New ver.)";
            this.colPPC.FieldName = "Confirm_PPCUserName";
            this.colPPC.Name = "colPPC";
            this.colPPC.OptionsColumn.AllowEdit = false;
            this.colPPC.Visible = true;
            this.colPPC.Width = 83;
            // 
            // colDT_PPC
            // 
            this.colDT_PPC.Caption = "date\r\n(New ver.)";
            this.colDT_PPC.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDT_PPC.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDT_PPC.FieldName = "DT_PPC";
            this.colDT_PPC.Name = "colDT_PPC";
            this.colDT_PPC.OptionsColumn.AllowEdit = false;
            this.colDT_PPC.Visible = true;
            this.colDT_PPC.Width = 82;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "3 Fty Sr Mgt (Recfm)";
            this.gridBand4.Columns.Add(this.colLastConfirmPerson_Sewing);
            this.gridBand4.Columns.Add(this.colSewing);
            this.gridBand4.Columns.Add(this.colDT_Sewing);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Tag = 2;
            this.gridBand4.Width = 253;
            // 
            // colLastConfirmPerson_Sewing
            // 
            this.colLastConfirmPerson_Sewing.Caption = "Person\r\n(Last ver.)";
            this.colLastConfirmPerson_Sewing.FieldName = "LastConfirmPerson_Sewing";
            this.colLastConfirmPerson_Sewing.Name = "colLastConfirmPerson_Sewing";
            this.colLastConfirmPerson_Sewing.OptionsColumn.AllowEdit = false;
            this.colLastConfirmPerson_Sewing.Visible = true;
            // 
            // colSewing
            // 
            this.colSewing.Caption = "Person\r\n(New ver.)";
            this.colSewing.FieldName = "Confirm_SewingUserName";
            this.colSewing.Name = "colSewing";
            this.colSewing.OptionsColumn.AllowEdit = false;
            this.colSewing.Visible = true;
            this.colSewing.Width = 96;
            // 
            // colDT_Sewing
            // 
            this.colDT_Sewing.Caption = "date\r\n(New ver.)";
            this.colDT_Sewing.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDT_Sewing.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDT_Sewing.FieldName = "DT_Sewing";
            this.colDT_Sewing.Name = "colDT_Sewing";
            this.colDT_Sewing.OptionsColumn.AllowEdit = false;
            this.colDT_Sewing.Visible = true;
            this.colDT_Sewing.Width = 82;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "4 Head Off. Mer. Mgr. (Recfm)";
            this.gridBand5.Columns.Add(this.colLastConfirmPerson_Manager);
            this.gridBand5.Columns.Add(this.colManager);
            this.gridBand5.Columns.Add(this.colDate_Manager);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Tag = 1;
            this.gridBand5.Width = 276;
            // 
            // colLastConfirmPerson_Manager
            // 
            this.colLastConfirmPerson_Manager.Caption = "Person\r\n(Last ver.)";
            this.colLastConfirmPerson_Manager.FieldName = "LastConfirmPerson_Manager";
            this.colLastConfirmPerson_Manager.Name = "colLastConfirmPerson_Manager";
            this.colLastConfirmPerson_Manager.OptionsColumn.AllowEdit = false;
            this.colLastConfirmPerson_Manager.Visible = true;
            this.colLastConfirmPerson_Manager.Width = 100;
            // 
            // colManager
            // 
            this.colManager.Caption = "Person\r\n(New ver.)";
            this.colManager.FieldName = "Confirm_ManagerUserName";
            this.colManager.Name = "colManager";
            this.colManager.OptionsColumn.AllowEdit = false;
            this.colManager.Visible = true;
            this.colManager.Width = 92;
            // 
            // colDate_Manager
            // 
            this.colDate_Manager.Caption = "date\r\n(New ver.)";
            this.colDate_Manager.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colDate_Manager.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDate_Manager.FieldName = "DT_Manager";
            this.colDate_Manager.Name = "colDate_Manager";
            this.colDate_Manager.OptionsColumn.AllowEdit = false;
            this.colDate_Manager.Visible = true;
            this.colDate_Manager.Width = 84;
            // 
            // btnSendEMailToFtyPPMC
            // 
            this.btnSendEMailToFtyPPMC.Caption = "Send EMail to Fty PPMC Confirm";
            this.btnSendEMailToFtyPPMC.Enabled = false;
            this.btnSendEMailToFtyPPMC.Id = 73;
            this.btnSendEMailToFtyPPMC.Name = "btnSendEMailToFtyPPMC";
            this.btnSendEMailToFtyPPMC.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnSendEMailToFtyPPMC_ItemClick);
            // 
            // AmendListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "AmendListForm";
            this.ShowMultiCheck = true;
            this.Size = new System.Drawing.Size(1616, 453);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barNewVersion;
        private DevExpress.XtraBars.BarSubItem barConfirm;
        private DevExpress.XtraBars.BarButtonItem barOA;
        private DevExpress.XtraBars.BarButtonItem barManager;
        private DevExpress.XtraBars.BarButtonItem barPPC;
        private DevExpress.XtraBars.BarButtonItem barCAD;
        private DevExpress.XtraBars.BarButtonItem barPacking;
        private DevExpress.XtraBars.BarButtonItem barPrint;
        private DevExpress.XtraBars.BarButtonItem barSewing;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAmendNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVersion;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWoList;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOA_Confirm;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDT_OA;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCAD;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDT_CAD;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPacking;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDT_Packing;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCreater;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCreateDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPPC;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDT_PPC;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSewing;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDT_Sewing;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colManager;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDate_Manager;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalWO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastConfirmPerson_MM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastConfirmDate_MM;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastConfirmPerson_PPC;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastConfirmPerson_Sewing;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastConfirmPerson_Manager;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCheckFlag;
        private DevExpress.XtraBars.BarButtonItem btnSendEMailToFtyPPMC;
    }
}
