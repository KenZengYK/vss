namespace PH.RWO.UI
{
    partial class WOFWOptionChooseListForm
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
            DevExpress.Utils.SuperToolTip superToolTip1 = new DevExpress.Utils.SuperToolTip();
            DevExpress.Utils.ToolTipItem toolTipItem1 = new DevExpress.Utils.ToolTipItem();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.btnWOReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnRwoReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem1 = new DevExpress.XtraBars.BarSubItem();
            this.btnTAMAReport = new DevExpress.XtraBars.BarButtonItem();
            this.btnOthersReport = new DevExpress.XtraBars.BarButtonItem();
            this.barSubItem2 = new DevExpress.XtraBars.BarSubItem();
            this.btnRwoEtam = new DevExpress.XtraBars.BarButtonItem();
            this.btnRwoHbi = new DevExpress.XtraBars.BarButtonItem();
            this.btnTAMAReports = new DevExpress.XtraBars.BarButtonItem();
            this.ribeChoose = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colCompany = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSalesOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkOrderNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFirstStation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactoryWork = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLineWork = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChosen = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChosenPerson = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colChosenDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAgreedFWPerson = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAgreedFWDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNonWorkingDays = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLWWindow = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOpt3vs1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOpt3vs2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOpt2vs1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOpt4vs2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCheckFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWOColors = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colT3 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeChoose)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.btnWOReport,
            this.btnRwoReport,
            this.barSubItem1,
            this.btnTAMAReport,
            this.btnOthersReport,
            this.barSubItem2,
            this.btnRwoEtam,
            this.btnRwoHbi,
            this.btnTAMAReports});
            this.objbarManager.MaxItemId = 22;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem1, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btnWOReport, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ribeChoose});
            this.objListGridControl.Size = new System.Drawing.Size(993, 352);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany,
            this.colSalesOrderNo,
            this.colWorkOrderNo,
            this.colSeq,
            this.colFirstStation,
            this.colFactoryWork,
            this.colLineWork,
            this.colChosen,
            this.colChosenPerson,
            this.colChosenDate,
            this.colAgreedFWPerson,
            this.colAgreedFWDate,
            this.colNonWorkingDays,
            this.colLWWindow,
            this.colOpt3vs1,
            this.colOpt3vs2,
            this.colOpt2vs1,
            this.colOpt4vs2,
            this.colProjectNo,
            this.colFactory,
            this.colCustomer,
            this.colCheckFlag,
            this.colWOColors,
            this.colT3});
            this.objListGridView.CustomizationFormBounds = new System.Drawing.Rectangle(651, 317, 202, 207);
            this.objListGridView.GroupCount = 2;
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.AllowCellMerge = true;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colFactory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCustomer, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);
            this.objListGridView.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.objListGridView_CellMerge);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.WOChooseFW);
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Query";
            this.barButtonItem1.Id = 10;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // btnWOReport
            // 
            this.btnWOReport.Caption = "WO Report";
            this.btnWOReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnWOReport.Id = 11;
            this.btnWOReport.Name = "btnWOReport";
            toolTipItem1.Text = "WorkOrder Report";
            superToolTip1.Items.Add(toolTipItem1);
            this.btnWOReport.SuperTip = superToolTip1;
            this.btnWOReport.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.btnWOReport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnWOReport_ItemClick);
            // 
            // btnRwoReport
            // 
            this.btnRwoReport.Caption = "RWO Report";
            this.btnRwoReport.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.btnRwoReport.Id = 12;
            this.btnRwoReport.Name = "btnRwoReport";
            // 
            // barSubItem1
            // 
            this.barSubItem1.Caption = "WorkOrder";
            this.barSubItem1.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.barSubItem1.Id = 15;
            this.barSubItem1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnTAMAReport),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnOthersReport)});
            this.barSubItem1.Name = "barSubItem1";
            // 
            // btnTAMAReport
            // 
            this.btnTAMAReport.Caption = "M&&S Report";
            this.btnTAMAReport.Id = 16;
            this.btnTAMAReport.Name = "btnTAMAReport";
            // 
            // btnOthersReport
            // 
            this.btnOthersReport.Caption = "except Hans && M&&S";
            this.btnOthersReport.Id = 17;
            this.btnOthersReport.Name = "btnOthersReport";
            // 
            // barSubItem2
            // 
            this.barSubItem2.Caption = "RWO Report";
            this.barSubItem2.Glyph = global::PH.RWO.UI.Properties.Resources.printrwo;
            this.barSubItem2.Id = 18;
            this.barSubItem2.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRwoEtam),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnRwoHbi),
            new DevExpress.XtraBars.LinkPersistInfo(this.btnTAMAReports)});
            this.barSubItem2.Name = "barSubItem2";
            // 
            // btnRwoEtam
            // 
            this.btnRwoEtam.Caption = "ETAM Report";
            this.btnRwoEtam.Id = 19;
            this.btnRwoEtam.Name = "btnRwoEtam";
            // 
            // btnRwoHbi
            // 
            this.btnRwoHbi.Caption = "HBI Report";
            this.btnRwoHbi.Id = 20;
            this.btnRwoHbi.Name = "btnRwoHbi";
            // 
            // btnTAMAReports
            // 
            this.btnTAMAReports.Caption = "TAMA Report";
            this.btnTAMAReports.Id = 21;
            this.btnTAMAReports.Name = "btnTAMAReports";
            // 
            // ribeChoose
            // 
            this.ribeChoose.AutoHeight = false;
            this.ribeChoose.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.ribeChoose.Name = "ribeChoose";
            this.ribeChoose.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.ribeChoose.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.ribeChoose_ButtonClick);
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.OptionsColumn.AllowEdit = false;
            // 
            // colSalesOrderNo
            // 
            this.colSalesOrderNo.Caption = "Sales Order No";
            this.colSalesOrderNo.FieldName = "SalesOrderNo";
            this.colSalesOrderNo.Name = "colSalesOrderNo";
            this.colSalesOrderNo.OptionsColumn.AllowEdit = false;
            this.colSalesOrderNo.Visible = true;
            this.colSalesOrderNo.VisibleIndex = 1;
            this.colSalesOrderNo.Width = 112;
            // 
            // colWorkOrderNo
            // 
            this.colWorkOrderNo.Caption = "WO#";
            this.colWorkOrderNo.FieldName = "WorkOrderNo";
            this.colWorkOrderNo.Name = "colWorkOrderNo";
            this.colWorkOrderNo.OptionsColumn.AllowEdit = false;
            this.colWorkOrderNo.Visible = true;
            this.colWorkOrderNo.VisibleIndex = 2;
            this.colWorkOrderNo.Width = 116;
            // 
            // colSeq
            // 
            this.colSeq.AppearanceCell.Options.UseTextOptions = true;
            this.colSeq.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSeq.Caption = "Option";
            this.colSeq.FieldName = "Seq";
            this.colSeq.Name = "colSeq";
            this.colSeq.OptionsColumn.AllowEdit = false;
            this.colSeq.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colSeq.Visible = true;
            this.colSeq.VisibleIndex = 3;
            this.colSeq.Width = 65;
            // 
            // colFirstStation
            // 
            this.colFirstStation.Caption = "First Station";
            this.colFirstStation.FieldName = "FirstStation";
            this.colFirstStation.Name = "colFirstStation";
            this.colFirstStation.OptionsColumn.AllowEdit = false;
            this.colFirstStation.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colFactoryWork
            // 
            this.colFactoryWork.Caption = "FW Start Date";
            this.colFactoryWork.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colFactoryWork.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colFactoryWork.FieldName = "FactoryWork";
            this.colFactoryWork.Name = "colFactoryWork";
            this.colFactoryWork.OptionsColumn.AllowEdit = false;
            this.colFactoryWork.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colFactoryWork.Visible = true;
            this.colFactoryWork.VisibleIndex = 4;
            this.colFactoryWork.Width = 112;
            // 
            // colLineWork
            // 
            this.colLineWork.Caption = "SW Start Date";
            this.colLineWork.FieldName = "LineWork";
            this.colLineWork.Name = "colLineWork";
            this.colLineWork.OptionsColumn.AllowEdit = false;
            this.colLineWork.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colChosen
            // 
            this.colChosen.Caption = "2 parties agreed option";
            this.colChosen.FieldName = "Chosen";
            this.colChosen.Name = "colChosen";
            this.colChosen.OptionsColumn.AllowEdit = false;
            this.colChosen.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colChosen.Visible = true;
            this.colChosen.VisibleIndex = 6;
            this.colChosen.Width = 160;
            // 
            // colChosenPerson
            // 
            this.colChosenPerson.Caption = "ChosenPerson";
            this.colChosenPerson.FieldName = "ChosenPerson";
            this.colChosenPerson.Name = "colChosenPerson";
            this.colChosenPerson.OptionsColumn.AllowEdit = false;
            this.colChosenPerson.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colChosenDate
            // 
            this.colChosenDate.Caption = "ChosenDate";
            this.colChosenDate.FieldName = "ChosenDate";
            this.colChosenDate.Name = "colChosenDate";
            this.colChosenDate.OptionsColumn.AllowEdit = false;
            this.colChosenDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colAgreedFWPerson
            // 
            this.colAgreedFWPerson.Caption = "AgreedFWPerson";
            this.colAgreedFWPerson.FieldName = "AgreedFWPerson";
            this.colAgreedFWPerson.Name = "colAgreedFWPerson";
            this.colAgreedFWPerson.OptionsColumn.AllowEdit = false;
            this.colAgreedFWPerson.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colAgreedFWDate
            // 
            this.colAgreedFWDate.Caption = "AgreedFWDate";
            this.colAgreedFWDate.FieldName = "AgreedFWDate";
            this.colAgreedFWDate.Name = "colAgreedFWDate";
            this.colAgreedFWDate.OptionsColumn.AllowEdit = false;
            this.colAgreedFWDate.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            // 
            // colNonWorkingDays
            // 
            this.colNonWorkingDays.Caption = "Non-Working Days";
            this.colNonWorkingDays.FieldName = "NonWorkingDays";
            this.colNonWorkingDays.Name = "colNonWorkingDays";
            this.colNonWorkingDays.OptionsColumn.AllowEdit = false;
            this.colNonWorkingDays.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colNonWorkingDays.OptionsColumn.ReadOnly = true;
            this.colNonWorkingDays.Width = 140;
            // 
            // colLWWindow
            // 
            this.colLWWindow.Caption = "SW Window";
            this.colLWWindow.FieldName = "LWWindow";
            this.colLWWindow.Name = "colLWWindow";
            this.colLWWindow.OptionsColumn.AllowEdit = false;
            this.colLWWindow.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colLWWindow.OptionsColumn.ReadOnly = true;
            this.colLWWindow.Width = 107;
            // 
            // colOpt3vs1
            // 
            this.colOpt3vs1.Caption = "Opt 3 vs 1";
            this.colOpt3vs1.FieldName = "Opt3vs1";
            this.colOpt3vs1.Name = "colOpt3vs1";
            this.colOpt3vs1.OptionsColumn.AllowEdit = false;
            this.colOpt3vs1.OptionsColumn.ReadOnly = true;
            this.colOpt3vs1.Width = 90;
            // 
            // colOpt3vs2
            // 
            this.colOpt3vs2.Caption = "Opt 3 vs 2";
            this.colOpt3vs2.FieldName = "Opt3vs2";
            this.colOpt3vs2.Name = "colOpt3vs2";
            this.colOpt3vs2.OptionsColumn.AllowEdit = false;
            this.colOpt3vs2.OptionsColumn.ReadOnly = true;
            this.colOpt3vs2.Width = 92;
            // 
            // colOpt2vs1
            // 
            this.colOpt2vs1.Caption = "Opt 2 vs 1";
            this.colOpt2vs1.FieldName = "Opt2vs1";
            this.colOpt2vs1.Name = "colOpt2vs1";
            this.colOpt2vs1.OptionsColumn.AllowEdit = false;
            this.colOpt2vs1.OptionsColumn.ReadOnly = true;
            this.colOpt2vs1.Width = 87;
            // 
            // colOpt4vs2
            // 
            this.colOpt4vs2.Caption = "Opt 4 vs 2";
            this.colOpt4vs2.FieldName = "Opt4vs2";
            this.colOpt4vs2.Name = "colOpt4vs2";
            this.colOpt4vs2.OptionsColumn.AllowEdit = false;
            this.colOpt4vs2.OptionsColumn.ReadOnly = true;
            this.colOpt4vs2.Width = 86;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Project No";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 0;
            this.colProjectNo.Width = 107;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Fty";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Width = 68;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.OptionsColumn.AllowEdit = false;
            // 
            // colCheckFlag
            // 
            this.colCheckFlag.Caption = "Choose";
            this.colCheckFlag.ColumnEdit = this.ribeChoose;
            this.colCheckFlag.FieldName = "CheckFlag";
            this.colCheckFlag.Name = "colCheckFlag";
            this.colCheckFlag.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCheckFlag.Visible = true;
            this.colCheckFlag.VisibleIndex = 7;
            this.colCheckFlag.Width = 61;
            // 
            // colWOColors
            // 
            this.colWOColors.Caption = "WO Colors";
            this.colWOColors.FieldName = "WOColors";
            this.colWOColors.Name = "colWOColors";
            this.colWOColors.OptionsColumn.AllowEdit = false;
            this.colWOColors.OptionsColumn.ReadOnly = true;
            // 
            // colT3
            // 
            this.colT3.Caption = "T3 Date";
            this.colT3.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colT3.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colT3.FieldName = "T3";
            this.colT3.Name = "colT3";
            this.colT3.OptionsColumn.AllowEdit = false;
            this.colT3.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colT3.Visible = true;
            this.colT3.VisibleIndex = 5;
            this.colT3.Width = 76;
            // 
            // WOFWOptionChooseListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "WOFWOptionChooseListForm";
            this.Size = new System.Drawing.Size(993, 379);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ribeChoose)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem btnWOReport;
        private DevExpress.XtraBars.BarButtonItem btnRwoReport;
        private DevExpress.XtraBars.BarSubItem barSubItem1;
        private DevExpress.XtraBars.BarButtonItem btnTAMAReport;
        private DevExpress.XtraBars.BarButtonItem btnOthersReport;
        private DevExpress.XtraBars.BarSubItem barSubItem2;
        private DevExpress.XtraBars.BarButtonItem btnRwoEtam;
        private DevExpress.XtraBars.BarButtonItem btnRwoHbi;
        private DevExpress.XtraBars.BarButtonItem btnTAMAReports;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit ribeChoose;
        private DevExpress.XtraGrid.Columns.GridColumn colCompany;
        private DevExpress.XtraGrid.Columns.GridColumn colSalesOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkOrderNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colFirstStation;
        private DevExpress.XtraGrid.Columns.GridColumn colFactoryWork;
        private DevExpress.XtraGrid.Columns.GridColumn colLineWork;
        private DevExpress.XtraGrid.Columns.GridColumn colChosen;
        private DevExpress.XtraGrid.Columns.GridColumn colChosenPerson;
        private DevExpress.XtraGrid.Columns.GridColumn colChosenDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAgreedFWPerson;
        private DevExpress.XtraGrid.Columns.GridColumn colAgreedFWDate;
        private DevExpress.XtraGrid.Columns.GridColumn colNonWorkingDays;
        private DevExpress.XtraGrid.Columns.GridColumn colLWWindow;
        private DevExpress.XtraGrid.Columns.GridColumn colOpt3vs1;
        private DevExpress.XtraGrid.Columns.GridColumn colOpt3vs2;
        private DevExpress.XtraGrid.Columns.GridColumn colOpt2vs1;
        private DevExpress.XtraGrid.Columns.GridColumn colOpt4vs2;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colCheckFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colWOColors;
        private DevExpress.XtraGrid.Columns.GridColumn colT3;

    }
}
