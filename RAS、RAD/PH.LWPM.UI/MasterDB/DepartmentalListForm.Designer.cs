namespace PH.LWPM.UI.MasterDB
{
    partial class DepartmentalListForm
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
            this.colSetup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDeptType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rluDeptType = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.gcDepartmental = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbDepart = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcDepart_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSection = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbSection = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcSection_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbTeam = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcTeam_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbClass = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcClass_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcActive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbActive = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colLocation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbLocation = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcSortNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsIncludeAll = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStaff = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDeptCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSLMAIN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHKOFFICE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSLSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGGSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRXFACT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCGSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCGFACT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkRegion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRXSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPlaceCount_Fty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.rcbDeptType = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rcbDivision = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.chkSLM = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colAccountCostttlShow = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rluDeptType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbActive)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbLocation)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDeptType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDivision)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSLM)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rcbDepart,
            this.rcbSection,
            this.rcbTeam,
            this.rcbClass,
            this.rcbDeptType,
            this.rluDeptType,
            this.rcbDivision,
            this.chkSLM,
            this.rcbLocation,
            this.rcbActive});
            this.objListGridControl.Size = new System.Drawing.Size(1665, 483);
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 65;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcSortNo,
            this.colSetup,
            this.gcDeptType,
            this.gcDepartmental,
            this.gcDepart_chn,
            this.gcSection,
            this.gcSection_chn,
            this.gcTeam,
            this.gcTeam_chn,
            this.gcClass,
            this.gcClass_chn,
            this.gcActive,
            this.colLocation,
            this.colIsIncludeAll,
            this.colStaff,
            this.gcDeptCode,
            this.colSLMAIN,
            this.colHKOFFICE,
            this.colSLSALES,
            this.colGGSALES,
            this.colRXFACT,
            this.colCGSALES,
            this.colCGFACT,
            this.colWorkRegion,
            this.gcRXSALES,
            this.colCount,
            this.colPlaceCount_Fty,
            this.colAccountCostttlShow});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(2814, 306, 216, 495);
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsBehavior.EditorShowMode = DevExpress.Utils.EditorShowMode.MouseUp;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsLayout.Columns.StoreAllOptions = true;
            this.objListGridView.OptionsLayout.Columns.StoreAppearance = true;
            this.objListGridView.OptionsLayout.StoreAllOptions = true;
            this.objListGridView.OptionsLayout.StoreAppearance = true;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.objListGridView.OptionsView.RowAutoHeight = true;
            this.objListGridView.OptionsView.ShowDetailButtons = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.InitNewRow += new DevExpress.XtraGrid.Views.Grid.InitNewRowEventHandler(this.objListGridView_InitNewRow);
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.DepartalSort);
            // 
            // colSetup
            // 
            this.colSetup.Caption = "Set\r\nup\r\nTree";
            this.colSetup.FieldName = "SetupShow";
            this.colSetup.Name = "colSetup";
            this.colSetup.OptionsColumn.AllowEdit = false;
            this.colSetup.SummaryItem.DisplayFormat = "Ttl :";
            this.colSetup.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSetup.Visible = true;
            this.colSetup.VisibleIndex = 1;
            this.colSetup.Width = 48;
            // 
            // gcDeptType
            // 
            this.gcDeptType.Caption = "Factory/Office";
            this.gcDeptType.ColumnEdit = this.rluDeptType;
            this.gcDeptType.Name = "gcDeptType";
            this.gcDeptType.Width = 103;
            // 
            // rluDeptType
            // 
            this.rluDeptType.AutoHeight = false;
            this.rluDeptType.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rluDeptType.Name = "rluDeptType";
            // 
            // gcDepartmental
            // 
            this.gcDepartmental.Caption = "Department";
            this.gcDepartmental.ColumnEdit = this.rcbDepart;
            this.gcDepartmental.FieldName = "Deptmental_EN";
            this.gcDepartmental.Name = "gcDepartmental";
            this.gcDepartmental.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gcDepartmental.Visible = true;
            this.gcDepartmental.VisibleIndex = 2;
            this.gcDepartmental.Width = 164;
            // 
            // rcbDepart
            // 
            this.rcbDepart.AutoHeight = false;
            this.rcbDepart.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDepart.Name = "rcbDepart";
            this.rcbDepart.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.rcbDepart_Spin);
            // 
            // gcDepart_chn
            // 
            this.gcDepart_chn.Caption = "Department\r\n(CN)";
            this.gcDepart_chn.FieldName = "Departalment_chn";
            this.gcDepart_chn.Name = "gcDepart_chn";
            this.gcDepart_chn.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.gcDepart_chn.Visible = true;
            this.gcDepart_chn.VisibleIndex = 3;
            this.gcDepart_chn.Width = 130;
            // 
            // gcSection
            // 
            this.gcSection.Caption = "Section";
            this.gcSection.ColumnEdit = this.rcbSection;
            this.gcSection.FieldName = "Section_EN";
            this.gcSection.Name = "gcSection";
            this.gcSection.Visible = true;
            this.gcSection.VisibleIndex = 4;
            this.gcSection.Width = 201;
            // 
            // rcbSection
            // 
            this.rcbSection.AutoHeight = false;
            this.rcbSection.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbSection.Name = "rcbSection";
            this.rcbSection.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.rcbDepart_Spin);
            // 
            // gcSection_chn
            // 
            this.gcSection_chn.Caption = "Section\r\n(CN)";
            this.gcSection_chn.FieldName = "Section_chn";
            this.gcSection_chn.Name = "gcSection_chn";
            this.gcSection_chn.Visible = true;
            this.gcSection_chn.VisibleIndex = 5;
            this.gcSection_chn.Width = 129;
            // 
            // gcTeam
            // 
            this.gcTeam.Caption = "Team";
            this.gcTeam.ColumnEdit = this.rcbTeam;
            this.gcTeam.FieldName = "Team_EN";
            this.gcTeam.Name = "gcTeam";
            this.gcTeam.Visible = true;
            this.gcTeam.VisibleIndex = 6;
            this.gcTeam.Width = 207;
            // 
            // rcbTeam
            // 
            this.rcbTeam.AutoHeight = false;
            this.rcbTeam.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbTeam.Name = "rcbTeam";
            this.rcbTeam.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.rcbDepart_Spin);
            // 
            // gcTeam_chn
            // 
            this.gcTeam_chn.Caption = "Team\r\n(CN)";
            this.gcTeam_chn.FieldName = "Team_chn";
            this.gcTeam_chn.Name = "gcTeam_chn";
            this.gcTeam_chn.Visible = true;
            this.gcTeam_chn.VisibleIndex = 7;
            this.gcTeam_chn.Width = 131;
            // 
            // rcbClass
            // 
            this.rcbClass.AutoHeight = false;
            this.rcbClass.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbClass.Name = "rcbClass";
            this.rcbClass.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.rcbDepart_Spin);
            // 
            // gcClass
            // 
            this.gcClass.Caption = "Class";
            this.gcClass.ColumnEdit = this.rcbClass;
            this.gcClass.FieldName = "Class_EN";
            this.gcClass.Name = "gcClass";
            this.gcClass.Width = 47;
            // 
            // gcClass_chn
            // 
            this.gcClass_chn.Caption = "Class\r\n(CN)";
            this.gcClass_chn.Name = "gcClass_chn";
            this.gcClass_chn.Width = 74;
            // 
            // gcActive
            // 
            this.gcActive.Caption = "Active";
            this.gcActive.ColumnEdit = this.rcbActive;
            this.gcActive.FieldName = "Active";
            this.gcActive.Name = "gcActive";
            this.gcActive.Visible = true;
            this.gcActive.VisibleIndex = 8;
            this.gcActive.Width = 56;
            // 
            // rcbActive
            // 
            this.rcbActive.AutoHeight = false;
            this.rcbActive.Name = "rcbActive";
            // 
            // colLocation
            // 
            this.colLocation.Caption = "Location";
            this.colLocation.ColumnEdit = this.rcbLocation;
            this.colLocation.FieldName = "Location";
            this.colLocation.Name = "colLocation";
            // 
            // rcbLocation
            // 
            this.rcbLocation.AutoHeight = false;
            this.rcbLocation.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbLocation.Name = "rcbLocation";
            this.rcbLocation.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.rcbDepart_Spin);
            // 
            // gcSortNo
            // 
            this.gcSortNo.Caption = "Seq\r\nCde";
            this.gcSortNo.FieldName = "SeqNo";
            this.gcSortNo.Name = "gcSortNo";
            this.gcSortNo.Visible = true;
            this.gcSortNo.VisibleIndex = 0;
            this.gcSortNo.Width = 61;
            // 
            // colIsIncludeAll
            // 
            this.colIsIncludeAll.Caption = "Staff/\r\nLabor";
            this.colIsIncludeAll.FieldName = "IsCludeAll";
            this.colIsIncludeAll.Name = "colIsIncludeAll";
            this.colIsIncludeAll.UnboundType = DevExpress.Data.UnboundColumnType.Boolean;
            this.colIsIncludeAll.Width = 79;
            // 
            // colStaff
            // 
            this.colStaff.Caption = "Staff\r\nOnly";
            this.colStaff.FieldName = "IsStaffOnly";
            this.colStaff.Name = "colStaff";
            // 
            // gcDeptCode
            // 
            this.gcDeptCode.Caption = "Departmental\r\nCode";
            this.gcDeptCode.FieldName = "DepartalCode";
            this.gcDeptCode.Name = "gcDeptCode";
            this.gcDeptCode.Width = 102;
            // 
            // colSLMAIN
            // 
            this.colSLMAIN.AppearanceHeader.Options.UseTextOptions = true;
            this.colSLMAIN.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSLMAIN.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSLMAIN.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSLMAIN.Caption = "SL -\r\nFty.\r\ncost";
            this.colSLMAIN.FieldName = "SLMAIN";
            this.colSLMAIN.Name = "colSLMAIN";
            this.colSLMAIN.Visible = true;
            this.colSLMAIN.VisibleIndex = 14;
            this.colSLMAIN.Width = 45;
            // 
            // colHKOFFICE
            // 
            this.colHKOFFICE.AppearanceHeader.Options.UseTextOptions = true;
            this.colHKOFFICE.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHKOFFICE.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colHKOFFICE.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colHKOFFICE.Caption = "HK -\r\nHQ\r\ncost";
            this.colHKOFFICE.FieldName = "HKOFFICE";
            this.colHKOFFICE.Name = "colHKOFFICE";
            this.colHKOFFICE.Visible = true;
            this.colHKOFFICE.VisibleIndex = 12;
            this.colHKOFFICE.Width = 50;
            // 
            // colSLSALES
            // 
            this.colSLSALES.AppearanceHeader.Options.UseTextOptions = true;
            this.colSLSALES.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSLSALES.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSLSALES.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSLSALES.Caption = "SL - \r\nHQ\r\ncost";
            this.colSLSALES.FieldName = "SLSALES";
            this.colSLSALES.Name = "colSLSALES";
            this.colSLSALES.Visible = true;
            this.colSLSALES.VisibleIndex = 13;
            this.colSLSALES.Width = 50;
            // 
            // colGGSALES
            // 
            this.colGGSALES.AppearanceHeader.Options.UseTextOptions = true;
            this.colGGSALES.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colGGSALES.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colGGSALES.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colGGSALES.Caption = "RX -\r\nHQ\r\ncost";
            this.colGGSALES.FieldName = "GGSALES";
            this.colGGSALES.Name = "colGGSALES";
            this.colGGSALES.Visible = true;
            this.colGGSALES.VisibleIndex = 15;
            this.colGGSALES.Width = 50;
            // 
            // colRXFACT
            // 
            this.colRXFACT.AppearanceHeader.Options.UseTextOptions = true;
            this.colRXFACT.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRXFACT.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colRXFACT.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colRXFACT.Caption = "RX -\r\nFty.\r\ncost";
            this.colRXFACT.FieldName = "RXFACT";
            this.colRXFACT.Name = "colRXFACT";
            this.colRXFACT.Visible = true;
            this.colRXFACT.VisibleIndex = 16;
            this.colRXFACT.Width = 45;
            // 
            // colCGSALES
            // 
            this.colCGSALES.AppearanceHeader.Options.UseTextOptions = true;
            this.colCGSALES.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCGSALES.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCGSALES.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCGSALES.Caption = "CL -\r\nHQ\r\ncost";
            this.colCGSALES.FieldName = "CGSALES";
            this.colCGSALES.Name = "colCGSALES";
            this.colCGSALES.Visible = true;
            this.colCGSALES.VisibleIndex = 17;
            this.colCGSALES.Width = 50;
            // 
            // colCGFACT
            // 
            this.colCGFACT.AppearanceHeader.Options.UseTextOptions = true;
            this.colCGFACT.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCGFACT.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCGFACT.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCGFACT.Caption = "CL -\r\nFty.\r\ncost";
            this.colCGFACT.FieldName = "CGFACT";
            this.colCGFACT.Name = "colCGFACT";
            this.colCGFACT.Visible = true;
            this.colCGFACT.VisibleIndex = 18;
            this.colCGFACT.Width = 45;
            // 
            // colWorkRegion
            // 
            this.colWorkRegion.AppearanceHeader.Options.UseTextOptions = true;
            this.colWorkRegion.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWorkRegion.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWorkRegion.Caption = "Work\r\nRegion";
            this.colWorkRegion.FieldName = "WorkRegion";
            this.colWorkRegion.Name = "colWorkRegion";
            this.colWorkRegion.Width = 106;
            // 
            // gcRXSALES
            // 
            this.gcRXSALES.AppearanceHeader.Options.UseTextOptions = true;
            this.gcRXSALES.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gcRXSALES.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcRXSALES.Caption = "RX\r\nHQ\r\ncost";
            this.gcRXSALES.FieldName = "RXSALES";
            this.gcRXSALES.Name = "gcRXSALES";
            // 
            // colCount
            // 
            this.colCount.AppearanceHeader.Options.UseTextOptions = true;
            this.colCount.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCount.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCount.Caption = "Region\r\nof\r\nHQ\r\ncost";
            this.colCount.FieldName = "PlaceCount_Office";
            this.colCount.Name = "colCount";
            this.colCount.OptionsColumn.AllowEdit = false;
            this.colCount.Visible = true;
            this.colCount.VisibleIndex = 9;
            this.colCount.Width = 56;
            // 
            // colPlaceCount_Fty
            // 
            this.colPlaceCount_Fty.AppearanceHeader.Options.UseTextOptions = true;
            this.colPlaceCount_Fty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colPlaceCount_Fty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPlaceCount_Fty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPlaceCount_Fty.Caption = "Region\r\nof\r\nFty.\r\ncost";
            this.colPlaceCount_Fty.FieldName = "PlaceCount_Fty";
            this.colPlaceCount_Fty.Name = "colPlaceCount_Fty";
            this.colPlaceCount_Fty.OptionsColumn.AllowEdit = false;
            this.colPlaceCount_Fty.Visible = true;
            this.colPlaceCount_Fty.VisibleIndex = 10;
            this.colPlaceCount_Fty.Width = 57;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 60;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // rcbDeptType
            // 
            this.rcbDeptType.AutoHeight = false;
            this.rcbDeptType.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDeptType.Name = "rcbDeptType";
            this.rcbDeptType.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.rcbDepart_Spin);
            // 
            // rcbDivision
            // 
            this.rcbDivision.AutoHeight = false;
            this.rcbDivision.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDivision.Name = "rcbDivision";
            this.rcbDivision.Spin += new DevExpress.XtraEditors.Controls.SpinEventHandler(this.rcbDepart_Spin);
            // 
            // chkSLM
            // 
            this.chkSLM.AutoHeight = false;
            this.chkSLM.Name = "chkSLM";
            // 
            // colAccountCostttlShow
            // 
            this.colAccountCostttlShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colAccountCostttlShow.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colAccountCostttlShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colAccountCostttlShow.Caption = "Region\r\nTtl";
            this.colAccountCostttlShow.FieldName = "AccountCostttlShow";
            this.colAccountCostttlShow.Name = "colAccountCostttlShow";
            this.colAccountCostttlShow.OptionsColumn.AllowEdit = false;
            this.colAccountCostttlShow.Visible = true;
            this.colAccountCostttlShow.VisibleIndex = 11;
            this.colAccountCostttlShow.Width = 56;
            // 
            // DepartmentalListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DepartmentalListForm";
            this.Size = new System.Drawing.Size(1665, 510);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rluDeptType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbActive)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbLocation)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDeptType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDivision)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSLM)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSetup;
        private DevExpress.XtraGrid.Columns.GridColumn gcDeptType;
        private DevExpress.XtraGrid.Columns.GridColumn gcDepartmental;
        private DevExpress.XtraGrid.Columns.GridColumn gcDepart_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcSection;
        private DevExpress.XtraGrid.Columns.GridColumn gcSection_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcTeam;
        private DevExpress.XtraGrid.Columns.GridColumn gcTeam_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcClass;
        private DevExpress.XtraGrid.Columns.GridColumn gcClass_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcActive;
        private DevExpress.XtraGrid.Columns.GridColumn colLocation;
        private DevExpress.XtraGrid.Columns.GridColumn gcSortNo;
        private DevExpress.XtraGrid.Columns.GridColumn colIsIncludeAll;
        private DevExpress.XtraGrid.Columns.GridColumn colStaff;
        private DevExpress.XtraGrid.Columns.GridColumn gcDeptCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSLMAIN;
        private DevExpress.XtraGrid.Columns.GridColumn colHKOFFICE;
        private DevExpress.XtraGrid.Columns.GridColumn colSLSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colGGSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colRXFACT;
        private DevExpress.XtraGrid.Columns.GridColumn colCGSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colCGFACT;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkRegion;
        private DevExpress.XtraGrid.Columns.GridColumn gcRXSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colCount;
        private DevExpress.XtraGrid.Columns.GridColumn colPlaceCount_Fty;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDepart;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbSection;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbTeam;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbClass;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDeptType;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit rluDeptType;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDivision;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit chkSLM;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbLocation;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit rcbActive;
        private DevExpress.XtraGrid.Columns.GridColumn colAccountCostttlShow;
    }
}
