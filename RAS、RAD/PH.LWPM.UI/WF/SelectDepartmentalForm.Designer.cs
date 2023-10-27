namespace PH.LWPM.UI.WF
{
    partial class SelectDepartmentalForm
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.bsDepartal = new System.Windows.Forms.BindingSource(this.components);
            this.gdcDepartal = new DevExpress.XtraGrid.GridControl();
            this.gdvDepartal = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcSortNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSetup = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDeptType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rluDepttype = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.gcDepartmental = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbDepart = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcDepart_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSection = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbSection = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcSection_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcTeam = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbTeam = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcTeam_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcClass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbClass = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gcClass_chn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcActive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbActive = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colLocation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbLocation = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colIsIncludeAll = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStaff = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDeptCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSLMAIN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHKOFFICE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSLSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGGSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRXFACT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGGFACT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCGSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCGFACT = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkRegion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRXSALES = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPlaceCount_Fty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.rcbDeptype = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.rcbDivision = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.chkSLM = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.pnlBottom = new DevExpress.XtraEditors.PanelControl();
            ((System.ComponentModel.ISupportInitialize)(this.bsDepartal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdcDepartal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdvDepartal)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rluDepttype)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbActive)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbLocation)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDeptype)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDivision)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSLM)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).BeginInit();
            this.pnlBottom.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnOK
            // 
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(832, 14);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(75, 23);
            this.btnOK.TabIndex = 0;
            this.btnOK.Text = "OK";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(960, 14);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(75, 23);
            this.btnCancel.TabIndex = 1;
            this.btnCancel.Text = "Cancel";
            // 
            // bsDepartal
            // 
            this.bsDepartal.AllowNew = true;
            this.bsDepartal.DataSource = typeof(PH.LWPM.BO.DepartalSort);
            // 
            // gdcDepartal
            // 
            this.gdcDepartal.DataSource = this.bsDepartal;
            this.gdcDepartal.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gdcDepartal.EmbeddedNavigator.Name = "";
            this.gdcDepartal.Location = new System.Drawing.Point(0, 0);
            this.gdcDepartal.MainView = this.gdvDepartal;
            this.gdcDepartal.Name = "gdcDepartal";
            this.gdcDepartal.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.rcbDepart,
            this.rcbSection,
            this.rcbTeam,
            this.rcbClass,
            this.rcbDeptype,
            this.rluDepttype,
            this.rcbDivision,
            this.chkSLM,
            this.rcbLocation,
            this.rcbActive});
            this.gdcDepartal.Size = new System.Drawing.Size(1150, 455);
            this.gdcDepartal.TabIndex = 10;
            this.gdcDepartal.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gdvDepartal});
            // 
            // gdvDepartal
            // 
            this.gdvDepartal.ColumnPanelRowHeight = 50;
            this.gdvDepartal.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
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
            this.colGGFACT,
            this.colCGSALES,
            this.colCGFACT,
            this.colWorkRegion,
            this.gcRXSALES,
            this.colCount,
            this.colPlaceCount_Fty});
            this.gdvDepartal.GridControl = this.gdcDepartal;
            this.gdvDepartal.Name = "gdvDepartal";
            this.gdvDepartal.OptionsBehavior.Editable = false;
            this.gdvDepartal.OptionsBehavior.EditorShowMode = DevExpress.Utils.EditorShowMode.MouseUp;
            this.gdvDepartal.OptionsDetail.EnableMasterViewMode = false;
            this.gdvDepartal.OptionsLayout.Columns.StoreAllOptions = true;
            this.gdvDepartal.OptionsLayout.Columns.StoreAppearance = true;
            this.gdvDepartal.OptionsLayout.StoreAllOptions = true;
            this.gdvDepartal.OptionsLayout.StoreAppearance = true;
            this.gdvDepartal.OptionsPrint.AutoWidth = false;
            this.gdvDepartal.OptionsSelection.MultiSelectMode = DevExpress.XtraGrid.Views.Grid.GridMultiSelectMode.CellSelect;
            this.gdvDepartal.OptionsView.ColumnAutoWidth = false;
            this.gdvDepartal.OptionsView.NewItemRowPosition = DevExpress.XtraGrid.Views.Grid.NewItemRowPosition.Bottom;
            this.gdvDepartal.OptionsView.RowAutoHeight = true;
            this.gdvDepartal.OptionsView.ShowDetailButtons = false;
            this.gdvDepartal.OptionsView.ShowGroupPanel = false;
            this.gdvDepartal.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcSortNo, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gcSortNo
            // 
            this.gcSortNo.Caption = "Seq\r\nNo.";
            this.gcSortNo.FieldName = "SeqNo";
            this.gcSortNo.Name = "gcSortNo";
            this.gcSortNo.Visible = true;
            this.gcSortNo.VisibleIndex = 0;
            this.gcSortNo.Width = 61;
            // 
            // colSetup
            // 
            this.colSetup.Caption = "Set\r\nup\r\nTree";
            this.colSetup.FieldName = "SetupShow";
            this.colSetup.Name = "colSetup";
            this.colSetup.OptionsColumn.AllowEdit = false;
            this.colSetup.Visible = true;
            this.colSetup.VisibleIndex = 1;
            this.colSetup.Width = 48;
            // 
            // gcDeptType
            // 
            this.gcDeptType.Caption = "Factory/Office";
            this.gcDeptType.ColumnEdit = this.rluDepttype;
            this.gcDeptType.Name = "gcDeptType";
            this.gcDeptType.Width = 103;
            // 
            // rluDepttype
            // 
            this.rluDepttype.AutoHeight = false;
            this.rluDepttype.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rluDepttype.Columns.AddRange(new DevExpress.XtraEditors.Controls.LookUpColumnInfo[] {
            new DevExpress.XtraEditors.Controls.LookUpColumnInfo("Name", "Type", 8)});
            this.rluDepttype.Name = "rluDepttype";
            this.rluDepttype.NullText = "";
            // 
            // gcDepartmental
            // 
            this.gcDepartmental.Caption = "Department";
            this.gcDepartmental.ColumnEdit = this.rcbDepart;
            this.gcDepartmental.FieldName = "Deptmental_EN";
            this.gcDepartmental.Name = "gcDepartmental";
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
            // 
            // gcDepart_chn
            // 
            this.gcDepart_chn.Caption = "Department\r\n(CN)";
            this.gcDepart_chn.FieldName = "Departalment_chn";
            this.gcDepart_chn.Name = "gcDepart_chn";
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
            // gcClass
            // 
            this.gcClass.Caption = "Class";
            this.gcClass.ColumnEdit = this.rcbClass;
            this.gcClass.FieldName = "Class_EN";
            this.gcClass.Name = "gcClass";
            this.gcClass.Width = 47;
            // 
            // rcbClass
            // 
            this.rcbClass.AutoHeight = false;
            this.rcbClass.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbClass.Name = "rcbClass";
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
            this.rcbActive.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.rcbActive.ValueGrayed = true;
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
            this.colSLMAIN.Caption = "SL\r\nFty.";
            this.colSLMAIN.FieldName = "SLMAIN";
            this.colSLMAIN.Name = "colSLMAIN";
            this.colSLMAIN.Visible = true;
            this.colSLMAIN.VisibleIndex = 15;
            this.colSLMAIN.Width = 43;
            // 
            // colHKOFFICE
            // 
            this.colHKOFFICE.Caption = "HK\r\nHead\r\nOff.";
            this.colHKOFFICE.FieldName = "HKOFFICE";
            this.colHKOFFICE.Name = "colHKOFFICE";
            this.colHKOFFICE.Visible = true;
            this.colHKOFFICE.VisibleIndex = 11;
            this.colHKOFFICE.Width = 50;
            // 
            // colSLSALES
            // 
            this.colSLSALES.Caption = "SL\r\nOff.";
            this.colSLSALES.FieldName = "SLSALES";
            this.colSLSALES.Name = "colSLSALES";
            this.colSLSALES.Visible = true;
            this.colSLSALES.VisibleIndex = 12;
            this.colSLSALES.Width = 43;
            // 
            // colGGSALES
            // 
            this.colGGSALES.Caption = "RX\r\nOff.";
            this.colGGSALES.FieldName = "GGSALES";
            this.colGGSALES.Name = "colGGSALES";
            this.colGGSALES.Visible = true;
            this.colGGSALES.VisibleIndex = 13;
            this.colGGSALES.Width = 43;
            // 
            // colRXFACT
            // 
            this.colRXFACT.Caption = "RX\r\nFty.";
            this.colRXFACT.FieldName = "RXFACT";
            this.colRXFACT.Name = "colRXFACT";
            this.colRXFACT.Visible = true;
            this.colRXFACT.VisibleIndex = 16;
            this.colRXFACT.Width = 43;
            // 
            // colGGFACT
            // 
            this.colGGFACT.Caption = "GG\r\nFty.";
            this.colGGFACT.FieldName = "GGFACT";
            this.colGGFACT.Name = "colGGFACT";
            this.colGGFACT.Visible = true;
            this.colGGFACT.VisibleIndex = 17;
            this.colGGFACT.Width = 43;
            // 
            // colCGSALES
            // 
            this.colCGSALES.Caption = "CL\r\nHead\r\nOff.";
            this.colCGSALES.FieldName = "CGSALES";
            this.colCGSALES.Name = "colCGSALES";
            this.colCGSALES.Visible = true;
            this.colCGSALES.VisibleIndex = 14;
            this.colCGSALES.Width = 50;
            // 
            // colCGFACT
            // 
            this.colCGFACT.Caption = "CL\r\nFty.";
            this.colCGFACT.FieldName = "CGFACT";
            this.colCGFACT.Name = "colCGFACT";
            this.colCGFACT.Visible = true;
            this.colCGFACT.VisibleIndex = 18;
            this.colCGFACT.Width = 43;
            // 
            // colWorkRegion
            // 
            this.colWorkRegion.Caption = "Work\r\nRegion";
            this.colWorkRegion.FieldName = "WorkRegion";
            this.colWorkRegion.Name = "colWorkRegion";
            this.colWorkRegion.Width = 106;
            // 
            // gcRXSALES
            // 
            this.gcRXSALES.Caption = "RX\r\nSales\r\nOff.";
            this.gcRXSALES.FieldName = "RXSALES";
            this.gcRXSALES.Name = "gcRXSALES";
            // 
            // colCount
            // 
            this.colCount.Caption = "No.\r\nof\r\nOff.";
            this.colCount.FieldName = "PlaceCount_Office";
            this.colCount.Name = "colCount";
            this.colCount.OptionsColumn.AllowEdit = false;
            this.colCount.Visible = true;
            this.colCount.VisibleIndex = 9;
            this.colCount.Width = 43;
            // 
            // colPlaceCount_Fty
            // 
            this.colPlaceCount_Fty.Caption = "No.\r\nof\r\nFty.";
            this.colPlaceCount_Fty.FieldName = "PlaceCount_Fty";
            this.colPlaceCount_Fty.Name = "colPlaceCount_Fty";
            this.colPlaceCount_Fty.OptionsColumn.AllowEdit = false;
            this.colPlaceCount_Fty.Visible = true;
            this.colPlaceCount_Fty.VisibleIndex = 10;
            this.colPlaceCount_Fty.Width = 43;
            // 
            // rcbDeptype
            // 
            this.rcbDeptype.AutoHeight = false;
            this.rcbDeptype.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDeptype.Name = "rcbDeptype";
            // 
            // rcbDivision
            // 
            this.rcbDivision.AutoHeight = false;
            this.rcbDivision.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.rcbDivision.Name = "rcbDivision";
            // 
            // chkSLM
            // 
            this.chkSLM.AutoHeight = false;
            this.chkSLM.Name = "chkSLM";
            // 
            // pnlBottom
            // 
            this.pnlBottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.pnlBottom.Controls.Add(this.btnCancel);
            this.pnlBottom.Controls.Add(this.btnOK);
            this.pnlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.pnlBottom.Location = new System.Drawing.Point(0, 455);
            this.pnlBottom.Name = "pnlBottom";
            this.pnlBottom.Size = new System.Drawing.Size(1150, 55);
            this.pnlBottom.TabIndex = 11;
            // 
            // SelectDepartmentalForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1150, 510);
            this.Controls.Add(this.gdcDepartal);
            this.Controls.Add(this.pnlBottom);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "SelectDepartmentalForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Departmental";
            ((System.ComponentModel.ISupportInitialize)(this.bsDepartal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdcDepartal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gdvDepartal)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rluDepttype)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDepart)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbSection)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbTeam)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbClass)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbActive)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbLocation)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDeptype)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.rcbDivision)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkSLM)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pnlBottom)).EndInit();
            this.pnlBottom.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnOK;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private System.Windows.Forms.BindingSource bsDepartal;
        private DevExpress.XtraGrid.GridControl gdcDepartal;
        private DevExpress.XtraGrid.Views.Grid.GridView gdvDepartal;
        private DevExpress.XtraGrid.Columns.GridColumn colSetup;
        private DevExpress.XtraGrid.Columns.GridColumn gcDeptType;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit rluDepttype;
        private DevExpress.XtraGrid.Columns.GridColumn gcDepartmental;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDepart;
        private DevExpress.XtraGrid.Columns.GridColumn gcDepart_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcSection;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbSection;
        private DevExpress.XtraGrid.Columns.GridColumn gcSection_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcTeam;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbTeam;
        private DevExpress.XtraGrid.Columns.GridColumn gcTeam_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcClass;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbClass;
        private DevExpress.XtraGrid.Columns.GridColumn gcClass_chn;
        private DevExpress.XtraGrid.Columns.GridColumn gcActive;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit rcbActive;
        private DevExpress.XtraGrid.Columns.GridColumn colLocation;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbLocation;
        private DevExpress.XtraGrid.Columns.GridColumn gcSortNo;
        private DevExpress.XtraGrid.Columns.GridColumn colIsIncludeAll;
        private DevExpress.XtraGrid.Columns.GridColumn colStaff;
        private DevExpress.XtraGrid.Columns.GridColumn gcDeptCode;
        private DevExpress.XtraGrid.Columns.GridColumn colSLMAIN;
        private DevExpress.XtraGrid.Columns.GridColumn colHKOFFICE;
        private DevExpress.XtraGrid.Columns.GridColumn colSLSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colGGSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colRXFACT;
        private DevExpress.XtraGrid.Columns.GridColumn colGGFACT;
        private DevExpress.XtraGrid.Columns.GridColumn colCGSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colCGFACT;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkRegion;
        private DevExpress.XtraGrid.Columns.GridColumn gcRXSALES;
        private DevExpress.XtraGrid.Columns.GridColumn colCount;
        private DevExpress.XtraGrid.Columns.GridColumn colPlaceCount_Fty;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDeptype;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox rcbDivision;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit chkSLM;
        private DevExpress.XtraEditors.PanelControl pnlBottom;
    }
}