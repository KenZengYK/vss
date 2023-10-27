namespace PH.FabricInspection.UI.Main
{
    partial class AlertLogForm
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
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.colOddEvenRowFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemDateEdit_Date = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.repositoryItemCheckEdit_IsCompleted = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.bsActionLogHeader = new System.Windows.Forms.BindingSource(this.components);
            this.bsActionLogDetail = new System.Windows.Forms.BindingSource(this.components);
            this.btnAdd = new DevExpress.XtraEditors.SimpleButton();
            this.btnDelete = new DevExpress.XtraEditors.SimpleButton();
            this.btnSave = new DevExpress.XtraEditors.SimpleButton();
            this.btnSendEmail = new DevExpress.XtraEditors.SimpleButton();
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtSuppCode = new DevExpress.XtraEditors.TextEdit();
            this.bsActionLogIMQE = new System.Windows.Forms.BindingSource(this.components);
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.groupControl1 = new DevExpress.XtraEditors.GroupControl();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogNoStageShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogIsCompletedShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalPOLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemButtonEdit_AllProjectNo = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colWOFWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colItemNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemButtonEdit_ItemNo = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colItemSubject = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemSubjectCN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRelatedShptPercent = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.PlanEndDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colReviseCmplDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIsCompleted = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLastStageTargetCompleteDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLastStageReviseTargetCompleteDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLastStageIsCompleted = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLastStageCompletedDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCreateMan = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.panelPart1Bottom = new DevExpress.XtraEditors.PanelControl();
            this.btnGetData = new DevExpress.XtraEditors.SimpleButton();
            this.btnDeleteStage = new DevExpress.XtraEditors.SimpleButton();
            this.btnLastStageComplete = new DevExpress.XtraEditors.SimpleButton();
            this.btn1stStageComplete = new DevExpress.XtraEditors.SimpleButton();
            this.btnSaveAlertLog = new DevExpress.XtraEditors.SimpleButton();
            this.btnAddStage = new DevExpress.XtraEditors.SimpleButton();
            this.panelTitle = new DevExpress.XtraEditors.PanelControl();
            this.groupControl5 = new DevExpress.XtraEditors.GroupControl();
            this.txtActionLogStageTotal = new DevExpress.XtraEditors.TextEdit();
            this.labelControl8 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl10 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl7 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl4 = new DevExpress.XtraEditors.GroupControl();
            this.txtCreator = new DevExpress.XtraEditors.TextEdit();
            this.lbCreator = new DevExpress.XtraEditors.LabelControl();
            this.txtOverallClaimPercent = new DevExpress.XtraEditors.TextEdit();
            this.labelControl6 = new DevExpress.XtraEditors.LabelControl();
            this.txtAuditStage = new DevExpress.XtraEditors.TextEdit();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.txtAuditNo1 = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.txtItemCode = new DevExpress.XtraEditors.TextEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.groupControl3 = new DevExpress.XtraEditors.GroupControl();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.txtDataCrossTransferCmplDate = new DevExpress.XtraEditors.DateEdit();
            this.groupControl2 = new DevExpress.XtraEditors.GroupControl();
            this.gridControlPart2 = new DevExpress.XtraGrid.GridControl();
            this.gridActionLogDetail = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colStartFollowDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit_FollowDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colFollowCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSender = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFollowSummary = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOpenDetail = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit_OpenDetail = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.repositoryItemMemoEdit_MultRow = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.panelPart2Top = new DevExpress.XtraEditors.PanelControl();
            this.lbActionLogSeqNo = new DevExpress.XtraEditors.LabelControl();
            this.panelPart2Bottom = new DevExpress.XtraEditors.PanelControl();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_IsCompleted)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSuppCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogIMQE)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).BeginInit();
            this.groupControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_AllProjectNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ItemNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelPart1Bottom)).BeginInit();
            this.panelPart1Bottom.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelTitle)).BeginInit();
            this.panelTitle.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl5)).BeginInit();
            this.groupControl5.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtActionLogStageTotal.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).BeginInit();
            this.groupControl4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtCreator.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOverallClaimPercent.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditStage.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditNo1.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItemCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).BeginInit();
            this.groupControl3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataCrossTransferCmplDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataCrossTransferCmplDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).BeginInit();
            this.groupControl2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridControlPart2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridActionLogDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_OpenDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultRow)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelPart2Top)).BeginInit();
            this.panelPart2Top.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelPart2Bottom)).BeginInit();
            this.panelPart2Bottom.SuspendLayout();
            this.SuspendLayout();
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
            this.colOddEvenRowFlag.OptionsColumn.AllowEdit = false;
            // 
            // repositoryItemDateEdit_Date
            // 
            this.repositoryItemDateEdit_Date.AutoHeight = false;
            this.repositoryItemDateEdit_Date.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit_Date.DisplayFormat.FormatString = "MM-dd";
            this.repositoryItemDateEdit_Date.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit_Date.EditFormat.FormatString = "MM-dd";
            this.repositoryItemDateEdit_Date.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit_Date.Mask.EditMask = "MM-dd";
            this.repositoryItemDateEdit_Date.Name = "repositoryItemDateEdit_Date";
            this.repositoryItemDateEdit_Date.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // repositoryItemCheckEdit_IsCompleted
            // 
            this.repositoryItemCheckEdit_IsCompleted.AutoHeight = false;
            this.repositoryItemCheckEdit_IsCompleted.Name = "repositoryItemCheckEdit_IsCompleted";
            this.repositoryItemCheckEdit_IsCompleted.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit_IsCompleted.CheckedChanged += new System.EventHandler(this.repositoryItemCheckEdit_IsCompleted_CheckedChanged);
            // 
            // bsActionLogHeader
            // 
            this.bsActionLogHeader.DataSource = typeof(PH.FabricInspection.BO.ActionLogHeader);
            this.bsActionLogHeader.CurrentChanged += new System.EventHandler(this.bsActionLogHeader_CurrentChanged);
            // 
            // bsActionLogDetail
            // 
            this.bsActionLogDetail.DataSource = typeof(PH.FabricInspection.BO.ActionLogDetail);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(20, 9);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(79, 23);
            this.btnAdd.TabIndex = 4;
            this.btnAdd.Text = "Add";
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(105, 9);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(79, 23);
            this.btnDelete.TabIndex = 5;
            this.btnDelete.Text = "Delete";
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(190, 9);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(79, 23);
            this.btnSave.TabIndex = 6;
            this.btnSave.Text = "Save";
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // btnSendEmail
            // 
            this.btnSendEmail.Location = new System.Drawing.Point(277, 9);
            this.btnSendEmail.Name = "btnSendEmail";
            this.btnSendEmail.Size = new System.Drawing.Size(79, 23);
            this.btnSendEmail.TabIndex = 7;
            this.btnSendEmail.Text = "Save && Send";
            this.btnSendEmail.Click += new System.EventHandler(this.btnSendEmail_Click);
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(362, 9);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(79, 23);
            this.btnCancel.TabIndex = 8;
            this.btnCancel.Text = "Exit";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(11, 29);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(32, 14);
            this.labelControl1.TabIndex = 10;
            this.labelControl1.Text = "Supp:";
            // 
            // txtSuppCode
            // 
            this.txtSuppCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogIMQE, "SuppCode", true));
            this.txtSuppCode.Location = new System.Drawing.Point(50, 27);
            this.txtSuppCode.Name = "txtSuppCode";
            this.txtSuppCode.Properties.ReadOnly = true;
            this.txtSuppCode.Size = new System.Drawing.Size(62, 21);
            this.txtSuppCode.TabIndex = 13;
            // 
            // bsActionLogIMQE
            // 
            this.bsActionLogIMQE.DataSource = typeof(PH.FabricInspection.BO.ActionLogIMQE);
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.Horizontal = false;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 0);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.groupControl1);
            this.splitContainerControl1.Panel1.Controls.Add(this.panelTitle);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Controls.Add(this.groupControl2);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(1515, 684);
            this.splitContainerControl1.SplitterPosition = 411;
            this.splitContainerControl1.TabIndex = 28;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // groupControl1
            // 
            this.groupControl1.Appearance.ForeColor = System.Drawing.Color.Black;
            this.groupControl1.Appearance.Options.UseForeColor = true;
            this.groupControl1.AppearanceCaption.ForeColor = System.Drawing.Color.Blue;
            this.groupControl1.AppearanceCaption.Options.UseForeColor = true;
            this.groupControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl1.Controls.Add(this.gridControl1);
            this.groupControl1.Controls.Add(this.panelPart1Bottom);
            this.groupControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl1.Location = new System.Drawing.Point(0, 86);
            this.groupControl1.Name = "groupControl1";
            this.groupControl1.Size = new System.Drawing.Size(1511, 321);
            this.groupControl1.TabIndex = 27;
            this.groupControl1.Text = "PART I - Action taken";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsActionLogHeader;
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(2, 21);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemButtonEdit_ItemNo,
            this.repositoryItemMemoEdit1,
            this.repositoryItemButtonEdit_AllProjectNo});
            this.gridControl1.Size = new System.Drawing.Size(1507, 255);
            this.gridControl1.TabIndex = 30;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand4,
            this.gridBand1,
            this.gridBand5,
            this.gridBand2,
            this.gridBand3,
            this.gridBand6});
            this.bandedGridView1.ColumnPanelRowHeight = 52;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colActionLogNoStageShow,
            this.colItemNo,
            this.colItemSubject,
            this.colStartDate,
            this.PlanEndDate,
            this.colIsCompleted,
            this.colCompletedDate,
            this.colCreateMan,
            this.colLastStageTargetCompleteDate,
            this.colLastStageCompletedDate,
            this.colLastStageIsCompleted,
            this.colLastStageReviseTargetCompleteDate,
            this.colReviseCmplDate,
            this.colItemSubjectCN,
            this.colRelatedShptPercent,
            this.colProjectNo,
            this.colPONO,
            this.colTotalPOLine,
            this.colColorCode,
            this.colWOFWStartDate,
            this.colOddEvenRowFlag,
            this.colActionLogIsCompletedShow});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1024, 365, 225, 352);
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Lavender;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.colOddEvenRowFlag;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "1";
            this.bandedGridView1.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
            this.bandedGridView1.GridControl = this.gridControl1;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsSelection.MultiSelect = true;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.RowAutoHeight = true;
            this.bandedGridView1.OptionsView.ShowDetailButtons = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.bandedGridView1_FocusedRowChanged);
            this.bandedGridView1.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.bandedGridView1_CellValueChanged);
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate);
            this.bandedGridView1.ShowingEditor += new System.ComponentModel.CancelEventHandler(this.bandedGridView1_ShowingEditor);
            this.bandedGridView1.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.bandedGridView1_ValidateRow);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawBandHeader);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawColumnHeader);
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Action Log";
            this.gridBand4.Columns.Add(this.colActionLogNoStageShow);
            this.gridBand4.Columns.Add(this.colActionLogIsCompletedShow);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Tag = 1;
            this.gridBand4.Width = 102;
            // 
            // colActionLogNoStageShow
            // 
            this.colActionLogNoStageShow.Caption = "Seq#";
            this.colActionLogNoStageShow.FieldName = "ActionLogNoStageShow";
            this.colActionLogNoStageShow.Name = "colActionLogNoStageShow";
            this.colActionLogNoStageShow.OptionsColumn.AllowEdit = false;
            this.colActionLogNoStageShow.SummaryItem.FieldName = "ActionLogSeqNo";
            this.colActionLogNoStageShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colActionLogNoStageShow.Visible = true;
            this.colActionLogNoStageShow.Width = 54;
            // 
            // colActionLogIsCompletedShow
            // 
            this.colActionLogIsCompletedShow.Caption = "Cmpl\r\n?";
            this.colActionLogIsCompletedShow.FieldName = "ActionLogIsCompletedShow";
            this.colActionLogIsCompletedShow.Name = "colActionLogIsCompletedShow";
            this.colActionLogIsCompletedShow.Visible = true;
            this.colActionLogIsCompletedShow.Width = 48;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "IMQE Info";
            this.gridBand1.Columns.Add(this.colPONO);
            this.gridBand1.Columns.Add(this.colTotalPOLine);
            this.gridBand1.Columns.Add(this.colColorCode);
            this.gridBand1.Columns.Add(this.colProjectNo);
            this.gridBand1.Columns.Add(this.colWOFWStartDate);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Tag = 2;
            this.gridBand1.Width = 405;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO#";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.Visible = true;
            // 
            // colTotalPOLine
            // 
            this.colTotalPOLine.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalPOLine.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colTotalPOLine.Caption = "PO\r\nLne\r\nTtl";
            this.colTotalPOLine.FieldName = "TotalPOLine";
            this.colTotalPOLine.Name = "colTotalPOLine";
            this.colTotalPOLine.Visible = true;
            this.colTotalPOLine.Width = 42;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Clr\r\nCde";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 43;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Audited Lots\r\nrelated to Proj #";
            this.colProjectNo.ColumnEdit = this.repositoryItemButtonEdit_AllProjectNo;
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 173;
            // 
            // repositoryItemButtonEdit_AllProjectNo
            // 
            this.repositoryItemButtonEdit_AllProjectNo.AutoHeight = false;
            this.repositoryItemButtonEdit_AllProjectNo.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_AllProjectNo.Name = "repositoryItemButtonEdit_AllProjectNo";
            this.repositoryItemButtonEdit_AllProjectNo.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colWOFWStartDate
            // 
            this.colWOFWStartDate.Caption = "1st WO\'s\r\nFW\r\nStart dd";
            this.colWOFWStartDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colWOFWStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colWOFWStartDate.FieldName = "WOFWStartDate";
            this.colWOFWStartDate.Name = "colWOFWStartDate";
            this.colWOFWStartDate.Visible = true;
            this.colWOFWStartDate.Width = 72;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Category Info (One item only)";
            this.gridBand5.Columns.Add(this.colItemNo);
            this.gridBand5.Columns.Add(this.colItemSubject);
            this.gridBand5.Columns.Add(this.colItemSubjectCN);
            this.gridBand5.Columns.Add(this.colRelatedShptPercent);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Tag = 1;
            this.gridBand5.Width = 654;
            // 
            // colItemNo
            // 
            this.colItemNo.Caption = "Cde";
            this.colItemNo.ColumnEdit = this.repositoryItemButtonEdit_ItemNo;
            this.colItemNo.FieldName = "ItemNo";
            this.colItemNo.Name = "colItemNo";
            this.colItemNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItemNo.Visible = true;
            this.colItemNo.Width = 43;
            // 
            // repositoryItemButtonEdit_ItemNo
            // 
            this.repositoryItemButtonEdit_ItemNo.AutoHeight = false;
            this.repositoryItemButtonEdit_ItemNo.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_ItemNo.Name = "repositoryItemButtonEdit_ItemNo";
            this.repositoryItemButtonEdit_ItemNo.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_ItemNo_ButtonClick);
            // 
            // colItemSubject
            // 
            this.colItemSubject.Caption = "Desc. (EN)";
            this.colItemSubject.FieldName = "ItemSubject";
            this.colItemSubject.Name = "colItemSubject";
            this.colItemSubject.OptionsColumn.AllowEdit = false;
            this.colItemSubject.Visible = true;
            this.colItemSubject.Width = 311;
            // 
            // colItemSubjectCN
            // 
            this.colItemSubjectCN.Caption = "Desc. (CN)";
            this.colItemSubjectCN.FieldName = "ItemSubjectCN";
            this.colItemSubjectCN.Name = "colItemSubjectCN";
            this.colItemSubjectCN.OptionsColumn.AllowEdit = false;
            this.colItemSubjectCN.Visible = true;
            this.colItemSubjectCN.Width = 225;
            // 
            // colRelatedShptPercent
            // 
            this.colRelatedShptPercent.AppearanceCell.Options.UseTextOptions = true;
            this.colRelatedShptPercent.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colRelatedShptPercent.Caption = "Related\r\nGmts\r\nShpt%";
            this.colRelatedShptPercent.FieldName = "RelatedShptPercent";
            this.colRelatedShptPercent.Name = "colRelatedShptPercent";
            this.colRelatedShptPercent.Visible = true;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Claim negotiation (Task completion)";
            this.gridBand2.Columns.Add(this.colStartDate);
            this.gridBand2.Columns.Add(this.PlanEndDate);
            this.gridBand2.Columns.Add(this.colReviseCmplDate);
            this.gridBand2.Columns.Add(this.colCompletedDate);
            this.gridBand2.Columns.Add(this.colIsCompleted);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 2;
            this.gridBand2.Width = 289;
            // 
            // colStartDate
            // 
            this.colStartDate.AppearanceCell.Options.UseTextOptions = true;
            this.colStartDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStartDate.Caption = "Start\r\ndd/time";
            this.colStartDate.ColumnEdit = this.repositoryItemDateEdit_Date;
            this.colStartDate.DisplayFormat.FormatString = "MM-dd HH:mm";
            this.colStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStartDate.FieldName = "StartDate";
            this.colStartDate.Name = "colStartDate";
            this.colStartDate.OptionsColumn.AllowEdit = false;
            this.colStartDate.Visible = true;
            this.colStartDate.Width = 76;
            // 
            // PlanEndDate
            // 
            this.PlanEndDate.AppearanceCell.Options.UseTextOptions = true;
            this.PlanEndDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.PlanEndDate.Caption = "Target\r\nCmpl\r\ndd";
            this.PlanEndDate.ColumnEdit = this.repositoryItemDateEdit_Date;
            this.PlanEndDate.DisplayFormat.FormatString = "MM-dd";
            this.PlanEndDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.PlanEndDate.FieldName = "PlanEndDate";
            this.PlanEndDate.Name = "PlanEndDate";
            this.PlanEndDate.Visible = true;
            this.PlanEndDate.Width = 59;
            // 
            // colReviseCmplDate
            // 
            this.colReviseCmplDate.AppearanceCell.Options.UseTextOptions = true;
            this.colReviseCmplDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colReviseCmplDate.Caption = "Rev.\r\nCmpl\r\ndd";
            this.colReviseCmplDate.DisplayFormat.FormatString = "MM-dd";
            this.colReviseCmplDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colReviseCmplDate.FieldName = "ReviseCmplDate";
            this.colReviseCmplDate.Name = "colReviseCmplDate";
            this.colReviseCmplDate.Visible = true;
            this.colReviseCmplDate.Width = 55;
            // 
            // colCompletedDate
            // 
            this.colCompletedDate.AppearanceCell.Options.UseTextOptions = true;
            this.colCompletedDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCompletedDate.Caption = "Act.\r\nCmpl\r\ndd\r\n";
            this.colCompletedDate.ColumnEdit = this.repositoryItemDateEdit_Date;
            this.colCompletedDate.DisplayFormat.FormatString = "MM-dd";
            this.colCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCompletedDate.FieldName = "CompletedDate";
            this.colCompletedDate.Name = "colCompletedDate";
            this.colCompletedDate.OptionsColumn.AllowEdit = false;
            this.colCompletedDate.Visible = true;
            this.colCompletedDate.Width = 48;
            // 
            // colIsCompleted
            // 
            this.colIsCompleted.AppearanceCell.Options.UseTextOptions = true;
            this.colIsCompleted.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colIsCompleted.Caption = "Task\r\nDone";
            this.colIsCompleted.ColumnEdit = this.repositoryItemCheckEdit_IsCompleted;
            this.colIsCompleted.FieldName = "IsCompleted";
            this.colIsCompleted.Name = "colIsCompleted";
            this.colIsCompleted.Visible = true;
            this.colIsCompleted.Width = 51;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Last stage";
            this.gridBand3.Columns.Add(this.colLastStageTargetCompleteDate);
            this.gridBand3.Columns.Add(this.colLastStageReviseTargetCompleteDate);
            this.gridBand3.Columns.Add(this.colLastStageIsCompleted);
            this.gridBand3.Columns.Add(this.colLastStageCompletedDate);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Visible = false;
            this.gridBand3.Width = 236;
            // 
            // colLastStageTargetCompleteDate
            // 
            this.colLastStageTargetCompleteDate.Caption = "Target\r\nCmpl\r\ndd";
            this.colLastStageTargetCompleteDate.DisplayFormat.FormatString = "MM-dd";
            this.colLastStageTargetCompleteDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLastStageTargetCompleteDate.FieldName = "LastStageTargetCompleteDate";
            this.colLastStageTargetCompleteDate.Name = "colLastStageTargetCompleteDate";
            this.colLastStageTargetCompleteDate.Width = 66;
            // 
            // colLastStageReviseTargetCompleteDate
            // 
            this.colLastStageReviseTargetCompleteDate.Caption = "Rev.\r\nTarget\r\nCmpl dd\r\n";
            this.colLastStageReviseTargetCompleteDate.DisplayFormat.FormatString = "MM-dd";
            this.colLastStageReviseTargetCompleteDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLastStageReviseTargetCompleteDate.FieldName = "LastStageReviseTargetCompleteDate";
            this.colLastStageReviseTargetCompleteDate.Name = "colLastStageReviseTargetCompleteDate";
            this.colLastStageReviseTargetCompleteDate.Width = 64;
            // 
            // colLastStageIsCompleted
            // 
            this.colLastStageIsCompleted.Caption = "Cmpl";
            this.colLastStageIsCompleted.ColumnEdit = this.repositoryItemCheckEdit_IsCompleted;
            this.colLastStageIsCompleted.FieldName = "LastStageIsCompleted";
            this.colLastStageIsCompleted.Name = "colLastStageIsCompleted";
            this.colLastStageIsCompleted.Width = 48;
            // 
            // colLastStageCompletedDate
            // 
            this.colLastStageCompletedDate.Caption = "Cmpl\r\ndd";
            this.colLastStageCompletedDate.DisplayFormat.FormatString = "MM-dd";
            this.colLastStageCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colLastStageCompletedDate.FieldName = "LastStageCompletedDate";
            this.colLastStageCompletedDate.Name = "colLastStageCompletedDate";
            this.colLastStageCompletedDate.Width = 58;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Creator";
            this.gridBand6.Columns.Add(this.colCreateMan);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Tag = 1;
            this.gridBand6.Visible = false;
            this.gridBand6.Width = 61;
            // 
            // colCreateMan
            // 
            this.colCreateMan.FieldName = "CreateMan";
            this.colCreateMan.Name = "colCreateMan";
            this.colCreateMan.OptionsColumn.AllowEdit = false;
            this.colCreateMan.Width = 61;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // panelPart1Bottom
            // 
            this.panelPart1Bottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelPart1Bottom.Controls.Add(this.btnGetData);
            this.panelPart1Bottom.Controls.Add(this.btnDeleteStage);
            this.panelPart1Bottom.Controls.Add(this.btnLastStageComplete);
            this.panelPart1Bottom.Controls.Add(this.btn1stStageComplete);
            this.panelPart1Bottom.Controls.Add(this.btnSaveAlertLog);
            this.panelPart1Bottom.Controls.Add(this.btnAddStage);
            this.panelPart1Bottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelPart1Bottom.Location = new System.Drawing.Point(2, 276);
            this.panelPart1Bottom.Name = "panelPart1Bottom";
            this.panelPart1Bottom.Size = new System.Drawing.Size(1507, 43);
            this.panelPart1Bottom.TabIndex = 29;
            // 
            // btnGetData
            // 
            this.btnGetData.Location = new System.Drawing.Point(641, 11);
            this.btnGetData.Name = "btnGetData";
            this.btnGetData.Size = new System.Drawing.Size(75, 23);
            this.btnGetData.TabIndex = 23;
            this.btnGetData.Text = "Get Data";
            this.btnGetData.Click += new System.EventHandler(this.btnGetData_Click);
            // 
            // btnDeleteStage
            // 
            this.btnDeleteStage.Location = new System.Drawing.Point(105, 11);
            this.btnDeleteStage.Name = "btnDeleteStage";
            this.btnDeleteStage.Size = new System.Drawing.Size(91, 23);
            this.btnDeleteStage.TabIndex = 19;
            this.btnDeleteStage.Text = "Delete Stage";
            this.btnDeleteStage.Click += new System.EventHandler(this.btnDeleteStage_Click);
            // 
            // btnLastStageComplete
            // 
            this.btnLastStageComplete.Location = new System.Drawing.Point(993, 11);
            this.btnLastStageComplete.Name = "btnLastStageComplete";
            this.btnLastStageComplete.Size = new System.Drawing.Size(155, 23);
            this.btnLastStageComplete.TabIndex = 18;
            this.btnLastStageComplete.Text = "set Last stage incomplete";
            this.btnLastStageComplete.Visible = false;
            this.btnLastStageComplete.Click += new System.EventHandler(this.btnLastStageComplete_Click);
            // 
            // btn1stStageComplete
            // 
            this.btn1stStageComplete.Location = new System.Drawing.Point(828, 11);
            this.btn1stStageComplete.Name = "btn1stStageComplete";
            this.btn1stStageComplete.Size = new System.Drawing.Size(155, 23);
            this.btn1stStageComplete.TabIndex = 17;
            this.btn1stStageComplete.Text = "set 1st stage incomplete";
            this.btn1stStageComplete.Click += new System.EventHandler(this.btn1stStageComplete_Click);
            // 
            // btnSaveAlertLog
            // 
            this.btnSaveAlertLog.Location = new System.Drawing.Point(362, 11);
            this.btnSaveAlertLog.Name = "btnSaveAlertLog";
            this.btnSaveAlertLog.Size = new System.Drawing.Size(79, 23);
            this.btnSaveAlertLog.TabIndex = 3;
            this.btnSaveAlertLog.Text = "Save";
            this.btnSaveAlertLog.Click += new System.EventHandler(this.btnSaveAlertLog_Click);
            // 
            // btnAddStage
            // 
            this.btnAddStage.Location = new System.Drawing.Point(20, 11);
            this.btnAddStage.Name = "btnAddStage";
            this.btnAddStage.Size = new System.Drawing.Size(79, 23);
            this.btnAddStage.TabIndex = 2;
            this.btnAddStage.Text = "Add Stage";
            this.btnAddStage.Click += new System.EventHandler(this.btnAddAlertLog_Click);
            // 
            // panelTitle
            // 
            this.panelTitle.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelTitle.Controls.Add(this.groupControl5);
            this.panelTitle.Controls.Add(this.labelControl7);
            this.panelTitle.Controls.Add(this.groupControl4);
            this.panelTitle.Controls.Add(this.groupControl3);
            this.panelTitle.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelTitle.Location = new System.Drawing.Point(0, 0);
            this.panelTitle.Name = "panelTitle";
            this.panelTitle.Size = new System.Drawing.Size(1511, 86);
            this.panelTitle.TabIndex = 0;
            // 
            // groupControl5
            // 
            this.groupControl5.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl5.Controls.Add(this.txtActionLogStageTotal);
            this.groupControl5.Controls.Add(this.labelControl8);
            this.groupControl5.Controls.Add(this.labelControl10);
            this.groupControl5.Location = new System.Drawing.Point(884, 21);
            this.groupControl5.Name = "groupControl5";
            this.groupControl5.Size = new System.Drawing.Size(184, 55);
            this.groupControl5.TabIndex = 21;
            this.groupControl5.Text = "Action Log Information";
            // 
            // txtActionLogStageTotal
            // 
            this.txtActionLogStageTotal.Location = new System.Drawing.Point(279, 27);
            this.txtActionLogStageTotal.Name = "txtActionLogStageTotal";
            this.txtActionLogStageTotal.Properties.Appearance.Options.UseTextOptions = true;
            this.txtActionLogStageTotal.Properties.Appearance.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.txtActionLogStageTotal.Properties.ReadOnly = true;
            this.txtActionLogStageTotal.Size = new System.Drawing.Size(24, 21);
            this.txtActionLogStageTotal.TabIndex = 38;
            this.txtActionLogStageTotal.Visible = false;
            // 
            // labelControl8
            // 
            this.labelControl8.Location = new System.Drawing.Point(6, 29);
            this.labelControl8.Name = "labelControl8";
            this.labelControl8.Size = new System.Drawing.Size(145, 14);
            this.labelControl8.TabIndex = 16;
            this.labelControl8.Text = "Grpg is not applicable here";
            // 
            // labelControl10
            // 
            this.labelControl10.Location = new System.Drawing.Point(157, 29);
            this.labelControl10.Name = "labelControl10";
            this.labelControl10.Size = new System.Drawing.Size(114, 14);
            this.labelControl10.TabIndex = 37;
            this.labelControl10.Text = "Action log Stage Ttl:";
            this.labelControl10.Visible = false;
            // 
            // labelControl7
            // 
            this.labelControl7.Appearance.ForeColor = System.Drawing.Color.Blue;
            this.labelControl7.Appearance.Options.UseForeColor = true;
            this.labelControl7.Location = new System.Drawing.Point(10, 4);
            this.labelControl7.Name = "labelControl7";
            this.labelControl7.Size = new System.Drawing.Size(39, 14);
            this.labelControl7.TabIndex = 20;
            this.labelControl7.Text = "Header";
            // 
            // groupControl4
            // 
            this.groupControl4.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl4.Controls.Add(this.txtCreator);
            this.groupControl4.Controls.Add(this.lbCreator);
            this.groupControl4.Controls.Add(this.txtOverallClaimPercent);
            this.groupControl4.Controls.Add(this.labelControl6);
            this.groupControl4.Controls.Add(this.txtAuditStage);
            this.groupControl4.Controls.Add(this.labelControl5);
            this.groupControl4.Controls.Add(this.txtAuditNo1);
            this.groupControl4.Controls.Add(this.labelControl4);
            this.groupControl4.Controls.Add(this.txtItemCode);
            this.groupControl4.Controls.Add(this.labelControl3);
            this.groupControl4.Controls.Add(this.txtSuppCode);
            this.groupControl4.Controls.Add(this.labelControl1);
            this.groupControl4.Location = new System.Drawing.Point(9, 22);
            this.groupControl4.Name = "groupControl4";
            this.groupControl4.Size = new System.Drawing.Size(869, 55);
            this.groupControl4.TabIndex = 19;
            this.groupControl4.Text = "Basic Information";
            // 
            // txtCreator
            // 
            this.txtCreator.Location = new System.Drawing.Point(778, 27);
            this.txtCreator.Name = "txtCreator";
            this.txtCreator.Properties.ReadOnly = true;
            this.txtCreator.Size = new System.Drawing.Size(80, 21);
            this.txtCreator.TabIndex = 36;
            // 
            // lbCreator
            // 
            this.lbCreator.Location = new System.Drawing.Point(727, 29);
            this.lbCreator.Name = "lbCreator";
            this.lbCreator.Size = new System.Drawing.Size(44, 14);
            this.lbCreator.TabIndex = 35;
            this.lbCreator.Text = "Creator:";
            // 
            // txtOverallClaimPercent
            // 
            this.txtOverallClaimPercent.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogIMQE, "OverallClaimPercent", true));
            this.txtOverallClaimPercent.Location = new System.Drawing.Point(659, 27);
            this.txtOverallClaimPercent.Name = "txtOverallClaimPercent";
            this.txtOverallClaimPercent.Properties.DisplayFormat.FormatString = "N2";
            this.txtOverallClaimPercent.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.txtOverallClaimPercent.Properties.ReadOnly = true;
            this.txtOverallClaimPercent.Size = new System.Drawing.Size(61, 21);
            this.txtOverallClaimPercent.TabIndex = 21;
            // 
            // labelControl6
            // 
            this.labelControl6.Location = new System.Drawing.Point(562, 29);
            this.labelControl6.Name = "labelControl6";
            this.labelControl6.Size = new System.Drawing.Size(87, 14);
            this.labelControl6.TabIndex = 20;
            this.labelControl6.Text = "Overall Claim %:";
            // 
            // txtAuditStage
            // 
            this.txtAuditStage.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogIMQE, "AuditStage", true));
            this.txtAuditStage.Location = new System.Drawing.Point(518, 27);
            this.txtAuditStage.Name = "txtAuditStage";
            this.txtAuditStage.Properties.ReadOnly = true;
            this.txtAuditStage.Size = new System.Drawing.Size(38, 21);
            this.txtAuditStage.TabIndex = 19;
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(443, 29);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(69, 14);
            this.labelControl5.TabIndex = 18;
            this.labelControl5.Text = "Audit Stage:";
            // 
            // txtAuditNo1
            // 
            this.txtAuditNo1.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogIMQE, "AuditNo1", true));
            this.txtAuditNo1.Location = new System.Drawing.Point(350, 27);
            this.txtAuditNo1.Name = "txtAuditNo1";
            this.txtAuditNo1.Properties.ReadOnly = true;
            this.txtAuditNo1.Size = new System.Drawing.Size(89, 21);
            this.txtAuditNo1.TabIndex = 17;
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(303, 29);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(42, 14);
            this.labelControl4.TabIndex = 16;
            this.labelControl4.Text = "Audit#:";
            // 
            // txtItemCode
            // 
            this.txtItemCode.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogIMQE, "ItemCode", true));
            this.txtItemCode.Location = new System.Drawing.Point(202, 27);
            this.txtItemCode.Name = "txtItemCode";
            this.txtItemCode.Properties.ReadOnly = true;
            this.txtItemCode.Size = new System.Drawing.Size(96, 21);
            this.txtItemCode.TabIndex = 15;
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(117, 29);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(79, 14);
            this.labelControl3.TabIndex = 14;
            this.labelControl3.Text = "Our Item Cde:";
            // 
            // groupControl3
            // 
            this.groupControl3.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl3.Controls.Add(this.labelControl2);
            this.groupControl3.Controls.Add(this.txtDataCrossTransferCmplDate);
            this.groupControl3.Location = new System.Drawing.Point(1089, 21);
            this.groupControl3.Name = "groupControl3";
            this.groupControl3.Size = new System.Drawing.Size(157, 55);
            this.groupControl3.TabIndex = 18;
            this.groupControl3.Text = "Data cross transferred";
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(11, 31);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(18, 14);
            this.labelControl2.TabIndex = 16;
            this.labelControl2.Text = "dd:";
            // 
            // txtDataCrossTransferCmplDate
            // 
            this.txtDataCrossTransferCmplDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.bsActionLogIMQE, "DataCrossTransferCmplDate", true));
            this.txtDataCrossTransferCmplDate.EditValue = null;
            this.txtDataCrossTransferCmplDate.Location = new System.Drawing.Point(39, 28);
            this.txtDataCrossTransferCmplDate.Name = "txtDataCrossTransferCmplDate";
            this.txtDataCrossTransferCmplDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.txtDataCrossTransferCmplDate.Properties.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.txtDataCrossTransferCmplDate.Properties.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDataCrossTransferCmplDate.Properties.EditFormat.FormatString = "yyyy-MM-dd";
            this.txtDataCrossTransferCmplDate.Properties.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.txtDataCrossTransferCmplDate.Properties.Mask.EditMask = "yyyy-MM-dd";
            this.txtDataCrossTransferCmplDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.txtDataCrossTransferCmplDate.Size = new System.Drawing.Size(107, 21);
            this.txtDataCrossTransferCmplDate.TabIndex = 17;
            // 
            // groupControl2
            // 
            this.groupControl2.Appearance.ForeColor = System.Drawing.Color.Black;
            this.groupControl2.Appearance.Options.UseForeColor = true;
            this.groupControl2.AppearanceCaption.ForeColor = System.Drawing.Color.Blue;
            this.groupControl2.AppearanceCaption.Options.UseForeColor = true;
            this.groupControl2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.groupControl2.Controls.Add(this.gridControlPart2);
            this.groupControl2.Controls.Add(this.panelPart2Top);
            this.groupControl2.Controls.Add(this.panelPart2Bottom);
            this.groupControl2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.groupControl2.Location = new System.Drawing.Point(0, 0);
            this.groupControl2.Name = "groupControl2";
            this.groupControl2.Size = new System.Drawing.Size(1511, 263);
            this.groupControl2.TabIndex = 28;
            this.groupControl2.Text = "PART II - Action follow up";
            // 
            // gridControlPart2
            // 
            this.gridControlPart2.DataSource = this.bsActionLogDetail;
            this.gridControlPart2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControlPart2.EmbeddedNavigator.Name = "";
            this.gridControlPart2.Location = new System.Drawing.Point(2, 50);
            this.gridControlPart2.MainView = this.gridActionLogDetail;
            this.gridControlPart2.Name = "gridControlPart2";
            this.gridControlPart2.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit_FollowDate,
            this.repositoryItemMemoEdit_MultRow,
            this.repositoryItemButtonEdit_OpenDetail});
            this.gridControlPart2.Size = new System.Drawing.Size(1507, 173);
            this.gridControlPart2.TabIndex = 31;
            this.gridControlPart2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridActionLogDetail});
            // 
            // gridActionLogDetail
            // 
            this.gridActionLogDetail.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colStartFollowDate,
            this.colFollowCount,
            this.colSender,
            this.colFollowSummary,
            this.colOpenDetail});
            this.gridActionLogDetail.GridControl = this.gridControlPart2;
            this.gridActionLogDetail.Name = "gridActionLogDetail";
            this.gridActionLogDetail.OptionsView.ColumnAutoWidth = false;
            this.gridActionLogDetail.OptionsView.ShowDetailButtons = false;
            this.gridActionLogDetail.OptionsView.ShowGroupPanel = false;
            this.gridActionLogDetail.ShowingEditor += new System.ComponentModel.CancelEventHandler(this.gridActionLogDetail_ShowingEditor);
            this.gridActionLogDetail.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.gridActionLogDetail_ValidateRow);
            // 
            // colStartFollowDate
            // 
            this.colStartFollowDate.Caption = "Date/Time";
            this.colStartFollowDate.ColumnEdit = this.repositoryItemDateEdit_FollowDate;
            this.colStartFollowDate.DisplayFormat.FormatString = "MM-dd HH:mm";
            this.colStartFollowDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStartFollowDate.FieldName = "StartFollowDate";
            this.colStartFollowDate.Name = "colStartFollowDate";
            this.colStartFollowDate.OptionsColumn.AllowEdit = false;
            this.colStartFollowDate.Visible = true;
            this.colStartFollowDate.VisibleIndex = 0;
            this.colStartFollowDate.Width = 88;
            // 
            // repositoryItemDateEdit_FollowDate
            // 
            this.repositoryItemDateEdit_FollowDate.AutoHeight = false;
            this.repositoryItemDateEdit_FollowDate.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit_FollowDate.DisplayFormat.FormatString = "MM- dd HH:mm";
            this.repositoryItemDateEdit_FollowDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit_FollowDate.EditFormat.FormatString = "MM- dd HH:mm";
            this.repositoryItemDateEdit_FollowDate.EditFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit_FollowDate.Mask.EditMask = "MM- dd HH:mm";
            this.repositoryItemDateEdit_FollowDate.Name = "repositoryItemDateEdit_FollowDate";
            this.repositoryItemDateEdit_FollowDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // colFollowCount
            // 
            this.colFollowCount.Caption = "Seq.#";
            this.colFollowCount.FieldName = "FollowCount";
            this.colFollowCount.Name = "colFollowCount";
            this.colFollowCount.OptionsColumn.AllowEdit = false;
            this.colFollowCount.Visible = true;
            this.colFollowCount.VisibleIndex = 1;
            this.colFollowCount.Width = 56;
            // 
            // colSender
            // 
            this.colSender.Caption = "Sender";
            this.colSender.FieldName = "Sender";
            this.colSender.Name = "colSender";
            this.colSender.OptionsColumn.AllowEdit = false;
            this.colSender.Visible = true;
            this.colSender.VisibleIndex = 2;
            // 
            // colFollowSummary
            // 
            this.colFollowSummary.Caption = "Follow up content (in seq.)";
            this.colFollowSummary.FieldName = "FollowSummary";
            this.colFollowSummary.Name = "colFollowSummary";
            this.colFollowSummary.Visible = true;
            this.colFollowSummary.VisibleIndex = 3;
            this.colFollowSummary.Width = 530;
            // 
            // colOpenDetail
            // 
            this.colOpenDetail.Caption = "View details";
            this.colOpenDetail.ColumnEdit = this.repositoryItemButtonEdit_OpenDetail;
            this.colOpenDetail.Name = "colOpenDetail";
            this.colOpenDetail.Visible = true;
            this.colOpenDetail.VisibleIndex = 4;
            this.colOpenDetail.Width = 112;
            // 
            // repositoryItemButtonEdit_OpenDetail
            // 
            this.repositoryItemButtonEdit_OpenDetail.AutoHeight = false;
            this.repositoryItemButtonEdit_OpenDetail.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemButtonEdit_OpenDetail.Name = "repositoryItemButtonEdit_OpenDetail";
            this.repositoryItemButtonEdit_OpenDetail.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.HideTextEditor;
            this.repositoryItemButtonEdit_OpenDetail.ButtonClick += new DevExpress.XtraEditors.Controls.ButtonPressedEventHandler(this.repositoryItemButtonEdit_OpenDetail_ButtonClick);
            // 
            // repositoryItemMemoEdit_MultRow
            // 
            this.repositoryItemMemoEdit_MultRow.Name = "repositoryItemMemoEdit_MultRow";
            this.repositoryItemMemoEdit_MultRow.WordWrap = false;
            // 
            // panelPart2Top
            // 
            this.panelPart2Top.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelPart2Top.Controls.Add(this.lbActionLogSeqNo);
            this.panelPart2Top.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelPart2Top.Location = new System.Drawing.Point(2, 21);
            this.panelPart2Top.Name = "panelPart2Top";
            this.panelPart2Top.Size = new System.Drawing.Size(1507, 29);
            this.panelPart2Top.TabIndex = 30;
            // 
            // lbActionLogSeqNo
            // 
            this.lbActionLogSeqNo.Appearance.ForeColor = System.Drawing.Color.Blue;
            this.lbActionLogSeqNo.Appearance.Options.UseForeColor = true;
            this.lbActionLogSeqNo.Location = new System.Drawing.Point(16, 7);
            this.lbActionLogSeqNo.Name = "lbActionLogSeqNo";
            this.lbActionLogSeqNo.Size = new System.Drawing.Size(85, 14);
            this.lbActionLogSeqNo.TabIndex = 20;
            this.lbActionLogSeqNo.Text = "ActionLogSeq#";
            // 
            // panelPart2Bottom
            // 
            this.panelPart2Bottom.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelPart2Bottom.Controls.Add(this.btnAdd);
            this.panelPart2Bottom.Controls.Add(this.btnDelete);
            this.panelPart2Bottom.Controls.Add(this.btnSave);
            this.panelPart2Bottom.Controls.Add(this.btnSendEmail);
            this.panelPart2Bottom.Controls.Add(this.btnCancel);
            this.panelPart2Bottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelPart2Bottom.Location = new System.Drawing.Point(2, 223);
            this.panelPart2Bottom.Name = "panelPart2Bottom";
            this.panelPart2Bottom.Size = new System.Drawing.Size(1507, 38);
            this.panelPart2Bottom.TabIndex = 29;
            // 
            // AlertLogForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1515, 684);
            this.Controls.Add(this.splitContainerControl1);
            this.Name = "AlertLogForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Action Log Worksheet";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_IsCompleted)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtSuppCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsActionLogIMQE)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.groupControl1)).EndInit();
            this.groupControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_AllProjectNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ItemNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelPart1Bottom)).EndInit();
            this.panelPart1Bottom.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.panelTitle)).EndInit();
            this.panelTitle.ResumeLayout(false);
            this.panelTitle.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl5)).EndInit();
            this.groupControl5.ResumeLayout(false);
            this.groupControl5.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtActionLogStageTotal.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl4)).EndInit();
            this.groupControl4.ResumeLayout(false);
            this.groupControl4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtCreator.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtOverallClaimPercent.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditStage.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtAuditNo1.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtItemCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl3)).EndInit();
            this.groupControl3.ResumeLayout(false);
            this.groupControl3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataCrossTransferCmplDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.txtDataCrossTransferCmplDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.groupControl2)).EndInit();
            this.groupControl2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gridControlPart2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridActionLogDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_OpenDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultRow)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelPart2Top)).EndInit();
            this.panelPart2Top.ResumeLayout(false);
            this.panelPart2Top.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelPart2Bottom)).EndInit();
            this.panelPart2Bottom.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnAdd;
        private DevExpress.XtraEditors.SimpleButton btnDelete;
        private DevExpress.XtraEditors.SimpleButton btnSave;
        private DevExpress.XtraEditors.SimpleButton btnSendEmail;
        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private System.Windows.Forms.BindingSource bsActionLogHeader;
        private System.Windows.Forms.BindingSource bsActionLogDetail;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtSuppCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit_Date;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_IsCompleted;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraEditors.GroupControl groupControl1;
        private DevExpress.XtraEditors.PanelControl panelTitle;
        private DevExpress.XtraEditors.GroupControl groupControl2;
        private DevExpress.XtraEditors.PanelControl panelPart2Bottom;
        private DevExpress.XtraEditors.DateEdit txtDataCrossTransferCmplDate;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.GroupControl groupControl3;
        private DevExpress.XtraEditors.GroupControl groupControl4;
        private DevExpress.XtraEditors.TextEdit txtAuditNo1;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.TextEdit txtItemCode;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.TextEdit txtAuditStage;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraEditors.TextEdit txtOverallClaimPercent;
        private DevExpress.XtraEditors.LabelControl labelControl6;
        private System.Windows.Forms.BindingSource bsActionLogIMQE;
        private DevExpress.XtraGrid.GridControl gridControlPart2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridActionLogDetail;
        private DevExpress.XtraGrid.Columns.GridColumn colStartFollowDate;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit_FollowDate;
        private DevExpress.XtraGrid.Columns.GridColumn colFollowCount;
        private DevExpress.XtraGrid.Columns.GridColumn colSender;
        private DevExpress.XtraGrid.Columns.GridColumn colFollowSummary;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit_MultRow;
        private DevExpress.XtraGrid.Columns.GridColumn colOpenDetail;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_OpenDetail;
        private DevExpress.XtraEditors.PanelControl panelPart2Top;
        private DevExpress.XtraEditors.LabelControl lbActionLogSeqNo;
        private DevExpress.XtraEditors.LabelControl labelControl7;
        private DevExpress.XtraEditors.TextEdit txtActionLogStageTotal;
        private DevExpress.XtraEditors.LabelControl labelControl10;
        private DevExpress.XtraEditors.TextEdit txtCreator;
        private DevExpress.XtraEditors.LabelControl lbCreator;
        private DevExpress.XtraEditors.GroupControl groupControl5;
        private DevExpress.XtraEditors.LabelControl labelControl8;
        private DevExpress.XtraEditors.PanelControl panelPart1Bottom;
        private DevExpress.XtraEditors.SimpleButton btnGetData;
        private DevExpress.XtraEditors.SimpleButton btnDeleteStage;
        private DevExpress.XtraEditors.SimpleButton btnLastStageComplete;
        private DevExpress.XtraEditors.SimpleButton btn1stStageComplete;
        private DevExpress.XtraEditors.SimpleButton btnSaveAlertLog;
        private DevExpress.XtraEditors.SimpleButton btnAddStage;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogNoStageShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogIsCompletedShow;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalPOLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_AllProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOFWStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemNo;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_ItemNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemSubject;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemSubjectCN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRelatedShptPercent;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn PlanEndDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReviseCmplDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIsCompleted;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastStageTargetCompleteDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastStageReviseTargetCompleteDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastStageIsCompleted;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLastStageCompletedDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCreateMan;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;

    }
}