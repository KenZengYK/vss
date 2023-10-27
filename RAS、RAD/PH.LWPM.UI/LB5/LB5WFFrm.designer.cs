namespace PH.LWPM.UI.LB5
{
    partial class WFFrm
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
            this.GridWF = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.WsGroupNameSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJobTitleSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkforceID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDone = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMTM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFirstPass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColSel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn17 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn16 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkerType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStrWorkforceStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.radReArrangeWF = new System.Windows.Forms.RadioButton();
            this.ChkMoveNext = new System.Windows.Forms.CheckBox();
            this.ChkExpand = new System.Windows.Forms.CheckBox();
            this.chkJFlag = new DevExpress.XtraEditors.CheckEdit();
            this.RbtWF2 = new System.Windows.Forms.RadioButton();
            this.BtnRight = new System.Windows.Forms.Button();
            this.RbtWF = new System.Windows.Forms.RadioButton();
            this.BtnLeft = new System.Windows.Forms.Button();
            this.RbtWF1 = new System.Windows.Forms.RadioButton();
            this.splitContainer3 = new System.Windows.Forms.SplitContainer();
            this.GridMatching = new DevExpress.XtraGrid.GridControl();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colOperationSN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn13 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn14 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn15 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColMType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColMId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColMName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Btn_View = new DevExpress.XtraEditors.SimpleButton();
            this.Btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolStripStatusLabel2 = new System.Windows.Forms.ToolStripStatusLabel();
            ((System.ComponentModel.ISupportInitialize)(this.GridWF)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.splitContainer2.Panel1.SuspendLayout();
            this.splitContainer2.Panel2.SuspendLayout();
            this.splitContainer2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkJFlag.Properties)).BeginInit();
            this.splitContainer3.Panel1.SuspendLayout();
            this.splitContainer3.Panel2.SuspendLayout();
            this.splitContainer3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridMatching)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.statusStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // GridWF
            // 
            this.GridWF.DataSource = this.bindingSource1;
            this.GridWF.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridWF.EmbeddedNavigator.Name = "";
            this.GridWF.Location = new System.Drawing.Point(0, 0);
            this.GridWF.MainView = this.gridView1;
            this.GridWF.Name = "GridWF";
            this.GridWF.Size = new System.Drawing.Size(550, 648);
            this.GridWF.TabIndex = 8;
            this.GridWF.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.GridWF.DoubleClick += new System.EventHandler(this.GridWF_DoubleClick);
            this.GridWF.KeyDown += new System.Windows.Forms.KeyEventHandler(this.GridWF_KeyDown);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.WsGroupNameSort,
            this.colJobTitleSort,
            this.colWorkforceID,
            this.colName,
            this.colLine,
            this.colDone,
            this.colMTM,
            this.colFirstPass,
            this.ColSel,
            this.gridColumn17,
            this.gridColumn16,
            this.colWorkerType,
            this.colStrWorkforceStyle,
            this.colFactory});
            this.gridView1.GridControl = this.GridWF;
            this.gridView1.GroupCount = 2;
            this.gridView1.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Count, "Id", this.colWorkforceID, "")});
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsDetail.ShowDetailTabs = false;
            this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowFooter = true;
            this.gridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.WsGroupNameSort, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colJobTitleSort, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLine, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // WsGroupNameSort
            // 
            this.WsGroupNameSort.Caption = "Group";
            this.WsGroupNameSort.FieldName = "WsGroupNameSort";
            this.WsGroupNameSort.Name = "WsGroupNameSort";
            this.WsGroupNameSort.Width = 53;
            // 
            // colJobTitleSort
            // 
            this.colJobTitleSort.Caption = "dWF Type";
            this.colJobTitleSort.FieldName = "JobTitleSort";
            this.colJobTitleSort.Name = "colJobTitleSort";
            this.colJobTitleSort.Width = 54;
            // 
            // colWorkforceID
            // 
            this.colWorkforceID.AppearanceHeader.Options.UseTextOptions = true;
            this.colWorkforceID.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWorkforceID.Caption = "ID";
            this.colWorkforceID.FieldName = "Id";
            this.colWorkforceID.Name = "colWorkforceID";
            this.colWorkforceID.OptionsColumn.AllowEdit = false;
            this.colWorkforceID.OptionsColumn.ReadOnly = true;
            this.colWorkforceID.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Count;
            this.colWorkforceID.Visible = true;
            this.colWorkforceID.VisibleIndex = 0;
            this.colWorkforceID.Width = 76;
            // 
            // colName
            // 
            this.colName.AppearanceHeader.Options.UseTextOptions = true;
            this.colName.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colName.Caption = "Name";
            this.colName.FieldName = "NameCn";
            this.colName.Name = "colName";
            this.colName.OptionsColumn.AllowEdit = false;
            this.colName.OptionsColumn.ReadOnly = true;
            this.colName.Visible = true;
            this.colName.VisibleIndex = 2;
            this.colName.Width = 64;
            // 
            // colLine
            // 
            this.colLine.AppearanceHeader.Options.UseTextOptions = true;
            this.colLine.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "LineCode";
            this.colLine.Name = "colLine";
            this.colLine.OptionsColumn.AllowEdit = false;
            this.colLine.OptionsColumn.ReadOnly = true;
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 1;
            this.colLine.Width = 55;
            // 
            // colDone
            // 
            this.colDone.Caption = "Done";
            this.colDone.FieldName = "DidTime_ByWf";
            this.colDone.Name = "colDone";
            this.colDone.Visible = true;
            this.colDone.VisibleIndex = 3;
            this.colDone.Width = 52;
            // 
            // colMTM
            // 
            this.colMTM.AppearanceHeader.Options.UseTextOptions = true;
            this.colMTM.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMTM.Caption = "MTM";
            this.colMTM.DisplayFormat.FormatString = "{0:F}";
            this.colMTM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colMTM.FieldName = "PastMTM";
            this.colMTM.Name = "colMTM";
            this.colMTM.OptionsColumn.AllowEdit = false;
            this.colMTM.OptionsColumn.ReadOnly = true;
            this.colMTM.Visible = true;
            this.colMTM.VisibleIndex = 4;
            this.colMTM.Width = 52;
            // 
            // colFirstPass
            // 
            this.colFirstPass.Caption = "Ê×Í¨ÂÊ(%)";
            this.colFirstPass.DisplayFormat.FormatString = "{0:F}";
            this.colFirstPass.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colFirstPass.FieldName = "Per_FirsPass";
            this.colFirstPass.Name = "colFirstPass";
            this.colFirstPass.Visible = true;
            this.colFirstPass.VisibleIndex = 5;
            this.colFirstPass.Width = 80;
            // 
            // ColSel
            // 
            this.ColSel.Caption = "Sel";
            this.ColSel.FieldName = "LB4YNSel";
            this.ColSel.Name = "ColSel";
            // 
            // gridColumn17
            // 
            this.gridColumn17.Caption = "Reserved";
            this.gridColumn17.FieldName = "Resered";
            this.gridColumn17.Name = "gridColumn17";
            this.gridColumn17.Visible = true;
            this.gridColumn17.VisibleIndex = 6;
            this.gridColumn17.Width = 80;
            // 
            // gridColumn16
            // 
            this.gridColumn16.Caption = "Locked";
            this.gridColumn16.FieldName = "Locked";
            this.gridColumn16.Name = "gridColumn16";
            this.gridColumn16.Visible = true;
            this.gridColumn16.VisibleIndex = 7;
            this.gridColumn16.Width = 70;
            // 
            // colWorkerType
            // 
            this.colWorkerType.Caption = "WF Type";
            this.colWorkerType.FieldName = "WorkerType";
            this.colWorkerType.Name = "colWorkerType";
            this.colWorkerType.Width = 23;
            // 
            // colStrWorkforceStyle
            // 
            this.colStrWorkforceStyle.AppearanceHeader.Options.UseTextOptions = true;
            this.colStrWorkforceStyle.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStrWorkforceStyle.Caption = "Style";
            this.colStrWorkforceStyle.FieldName = "JobTitleEn";
            this.colStrWorkforceStyle.Name = "colStrWorkforceStyle";
            this.colStrWorkforceStyle.OptionsColumn.AllowEdit = false;
            this.colStrWorkforceStyle.OptionsColumn.ReadOnly = true;
            this.colStrWorkforceStyle.Width = 20;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceHeader.Options.UseTextOptions = true;
            this.colFactory.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.OptionsColumn.ReadOnly = true;
            this.colFactory.Width = 52;
            // 
            // splitContainer1
            // 
            this.splitContainer1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.GridWF);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.splitContainer2);
            this.splitContainer1.Size = new System.Drawing.Size(1366, 650);
            this.splitContainer1.SplitterDistance = 552;
            this.splitContainer1.TabIndex = 9;
            // 
            // splitContainer2
            // 
            this.splitContainer2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.splitContainer2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer2.Location = new System.Drawing.Point(0, 0);
            this.splitContainer2.Name = "splitContainer2";
            // 
            // splitContainer2.Panel1
            // 
            this.splitContainer2.Panel1.Controls.Add(this.radReArrangeWF);
            this.splitContainer2.Panel1.Controls.Add(this.ChkMoveNext);
            this.splitContainer2.Panel1.Controls.Add(this.ChkExpand);
            this.splitContainer2.Panel1.Controls.Add(this.chkJFlag);
            this.splitContainer2.Panel1.Controls.Add(this.RbtWF2);
            this.splitContainer2.Panel1.Controls.Add(this.BtnRight);
            this.splitContainer2.Panel1.Controls.Add(this.RbtWF);
            this.splitContainer2.Panel1.Controls.Add(this.BtnLeft);
            this.splitContainer2.Panel1.Controls.Add(this.RbtWF1);
            // 
            // splitContainer2.Panel2
            // 
            this.splitContainer2.Panel2.Controls.Add(this.splitContainer3);
            this.splitContainer2.Size = new System.Drawing.Size(810, 650);
            this.splitContainer2.SplitterDistance = 149;
            this.splitContainer2.TabIndex = 0;
            // 
            // radReArrangeWF
            // 
            this.radReArrangeWF.AutoSize = true;
            this.radReArrangeWF.Checked = true;
            this.radReArrangeWF.Location = new System.Drawing.Point(9, 161);
            this.radReArrangeWF.Name = "radReArrangeWF";
            this.radReArrangeWF.Size = new System.Drawing.Size(106, 18);
            this.radReArrangeWF.TabIndex = 36;
            this.radReArrangeWF.TabStop = true;
            this.radReArrangeWF.Text = "Re-arrange WF";
            this.radReArrangeWF.UseVisualStyleBackColor = true;
            this.radReArrangeWF.CheckedChanged += new System.EventHandler(this.radReArrangeWF_CheckedChanged);
            // 
            // ChkMoveNext
            // 
            this.ChkMoveNext.AutoSize = true;
            this.ChkMoveNext.Checked = true;
            this.ChkMoveNext.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ChkMoveNext.Location = new System.Drawing.Point(17, 430);
            this.ChkMoveNext.Name = "ChkMoveNext";
            this.ChkMoveNext.Size = new System.Drawing.Size(85, 18);
            this.ChkMoveNext.TabIndex = 35;
            this.ChkMoveNext.Text = "Move Next";
            this.ChkMoveNext.UseVisualStyleBackColor = true;
            this.ChkMoveNext.Visible = false;
            // 
            // ChkExpand
            // 
            this.ChkExpand.AutoSize = true;
            this.ChkExpand.Checked = true;
            this.ChkExpand.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ChkExpand.Location = new System.Drawing.Point(11, 34);
            this.ChkExpand.Name = "ChkExpand";
            this.ChkExpand.Size = new System.Drawing.Size(102, 32);
            this.ChkExpand.TabIndex = 32;
            this.ChkExpand.Text = "Resource WF \r\nID List";
            this.ChkExpand.UseVisualStyleBackColor = true;
            this.ChkExpand.CheckedChanged += new System.EventHandler(this.ChkExpand_CheckedChanged);
            // 
            // chkJFlag
            // 
            this.chkJFlag.EditValue = true;
            this.chkJFlag.Location = new System.Drawing.Point(9, 75);
            this.chkJFlag.Name = "chkJFlag";
            this.chkJFlag.Properties.Caption = "Split/Merge LB \r\nRe-arrange";
            this.chkJFlag.Size = new System.Drawing.Size(106, 33);
            this.chkJFlag.TabIndex = 30;
            // 
            // RbtWF2
            // 
            this.RbtWF2.AutoSize = true;
            this.RbtWF2.Location = new System.Drawing.Point(9, 217);
            this.RbtWF2.Name = "RbtWF2";
            this.RbtWF2.Size = new System.Drawing.Size(114, 18);
            this.RbtWF2.TabIndex = 29;
            this.RbtWF2.Text = "Add WF/WP (2)";
            this.RbtWF2.UseVisualStyleBackColor = true;
            this.RbtWF2.CheckedChanged += new System.EventHandler(this.RbtWF2_CheckedChanged);
            // 
            // BtnRight
            // 
            this.BtnRight.Image = global::PH.LWPM.UI.Properties.Resources.NextSeq;
            this.BtnRight.Location = new System.Drawing.Point(42, 268);
            this.BtnRight.Name = "BtnRight";
            this.BtnRight.Size = new System.Drawing.Size(29, 23);
            this.BtnRight.TabIndex = 24;
            this.BtnRight.UseVisualStyleBackColor = false;
            this.BtnRight.Click += new System.EventHandler(this.BtnRight_Click);
            // 
            // RbtWF
            // 
            this.RbtWF.AutoSize = true;
            this.RbtWF.Location = new System.Drawing.Point(18, 397);
            this.RbtWF.Name = "RbtWF";
            this.RbtWF.Size = new System.Drawing.Size(84, 18);
            this.RbtWF.TabIndex = 27;
            this.RbtWF.Text = "Deploy WF";
            this.RbtWF.UseVisualStyleBackColor = true;
            this.RbtWF.Visible = false;
            this.RbtWF.CheckedChanged += new System.EventHandler(this.RbtWF_CheckedChanged);
            // 
            // BtnLeft
            // 
            this.BtnLeft.Image = global::PH.LWPM.UI.Properties.Resources.previousSeq;
            this.BtnLeft.Location = new System.Drawing.Point(42, 355);
            this.BtnLeft.Name = "BtnLeft";
            this.BtnLeft.Size = new System.Drawing.Size(26, 23);
            this.BtnLeft.TabIndex = 23;
            this.BtnLeft.UseVisualStyleBackColor = false;
            this.BtnLeft.Click += new System.EventHandler(this.BtnLeft_Click);
            // 
            // RbtWF1
            // 
            this.RbtWF1.AutoSize = true;
            this.RbtWF1.Location = new System.Drawing.Point(9, 189);
            this.RbtWF1.Name = "RbtWF1";
            this.RbtWF1.Size = new System.Drawing.Size(93, 18);
            this.RbtWF1.TabIndex = 28;
            this.RbtWF1.Text = "Add WF/WP";
            this.RbtWF1.UseVisualStyleBackColor = true;
            this.RbtWF1.CheckedChanged += new System.EventHandler(this.RbtWF1_CheckedChanged);
            // 
            // splitContainer3
            // 
            this.splitContainer3.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.splitContainer3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer3.Location = new System.Drawing.Point(0, 0);
            this.splitContainer3.Name = "splitContainer3";
            this.splitContainer3.Orientation = System.Windows.Forms.Orientation.Horizontal;
            // 
            // splitContainer3.Panel1
            // 
            this.splitContainer3.Panel1.Controls.Add(this.GridMatching);
            // 
            // splitContainer3.Panel2
            // 
            this.splitContainer3.Panel2.Controls.Add(this.Btn_View);
            this.splitContainer3.Panel2.Controls.Add(this.Btn_Cancel);
            this.splitContainer3.Panel2.Controls.Add(this.btnOK);
            this.splitContainer3.Size = new System.Drawing.Size(657, 650);
            this.splitContainer3.SplitterDistance = 593;
            this.splitContainer3.TabIndex = 1;
            // 
            // GridMatching
            // 
            this.GridMatching.DataSource = this.bindingSource2;
            this.GridMatching.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridMatching.EmbeddedNavigator.Name = "";
            this.GridMatching.Location = new System.Drawing.Point(0, 0);
            this.GridMatching.MainView = this.gridView2;
            this.GridMatching.Name = "GridMatching";
            this.GridMatching.Size = new System.Drawing.Size(655, 591);
            this.GridMatching.TabIndex = 0;
            this.GridMatching.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            this.GridMatching.KeyDown += new System.Windows.Forms.KeyEventHandler(this.GridMatching_KeyDown);
            // 
            // bindingSource2
            // 
            this.bindingSource2.CurrentChanged += new System.EventHandler(this.bindingSource2_CurrentChanged);
            // 
            // gridView2
            // 
            this.gridView2.ColumnPanelRowHeight = 34;
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOperationSN,
            this.gridColumn13,
            this.gridColumn14,
            this.gridColumn15,
            this.ColMType,
            this.ColMId,
            this.ColMName});
            this.gridView2.GridControl = this.GridMatching;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsBehavior.Editable = false;
            this.gridView2.OptionsDetail.ShowDetailTabs = false;
            this.gridView2.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView2.OptionsView.ShowDetailButtons = false;
            this.gridView2.OptionsView.ShowGroupPanel = false;
            this.gridView2.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView2_FocusedRowChanged);
            // 
            // colOperationSN
            // 
            this.colOperationSN.Caption = "Opt\r\nSeq";
            this.colOperationSN.FieldName = "OperationSN";
            this.colOperationSN.Name = "colOperationSN";
            this.colOperationSN.Visible = true;
            this.colOperationSN.VisibleIndex = 0;
            this.colOperationSN.Width = 40;
            // 
            // gridColumn13
            // 
            this.gridColumn13.Caption = "Opt\r\nCode";
            this.gridColumn13.FieldName = "OperationCode";
            this.gridColumn13.Name = "gridColumn13";
            this.gridColumn13.Visible = true;
            this.gridColumn13.VisibleIndex = 1;
            this.gridColumn13.Width = 51;
            // 
            // gridColumn14
            // 
            this.gridColumn14.Caption = "Opt Name\r\n";
            this.gridColumn14.FieldName = "OperationName";
            this.gridColumn14.Name = "gridColumn14";
            this.gridColumn14.Visible = true;
            this.gridColumn14.VisibleIndex = 2;
            this.gridColumn14.Width = 123;
            // 
            // gridColumn15
            // 
            this.gridColumn15.Caption = "Best WF\r\n";
            this.gridColumn15.FieldName = "WorkforceNum";
            this.gridColumn15.Name = "gridColumn15";
            this.gridColumn15.Visible = true;
            this.gridColumn15.VisibleIndex = 3;
            this.gridColumn15.Width = 48;
            // 
            // ColMType
            // 
            this.ColMType.Caption = "WF Type\r\n";
            this.ColMType.FieldName = "WorkStyle";
            this.ColMType.Name = "ColMType";
            this.ColMType.Visible = true;
            this.ColMType.VisibleIndex = 4;
            this.ColMType.Width = 58;
            // 
            // ColMId
            // 
            this.ColMId.Caption = "WF Id\r\n";
            this.ColMId.FieldName = "WorkerId";
            this.ColMId.Name = "ColMId";
            this.ColMId.Visible = true;
            this.ColMId.VisibleIndex = 5;
            this.ColMId.Width = 64;
            // 
            // ColMName
            // 
            this.ColMName.Caption = "WF Name\r\n";
            this.ColMName.FieldName = "WorkerName";
            this.ColMName.Name = "ColMName";
            this.ColMName.Visible = true;
            this.ColMName.VisibleIndex = 6;
            this.ColMName.Width = 84;
            // 
            // Btn_View
            // 
            this.Btn_View.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.Btn_View.Location = new System.Drawing.Point(203, 12);
            this.Btn_View.Name = "Btn_View";
            this.Btn_View.Size = new System.Drawing.Size(77, 23);
            this.Btn_View.TabIndex = 11;
            this.Btn_View.Text = "View Detail";
            this.Btn_View.Click += new System.EventHandler(this.Btn_View_Click);
            // 
            // Btn_Cancel
            // 
            this.Btn_Cancel.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.Btn_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.Btn_Cancel.Location = new System.Drawing.Point(497, 12);
            this.Btn_Cancel.Name = "Btn_Cancel";
            this.Btn_Cancel.Size = new System.Drawing.Size(77, 23);
            this.Btn_Cancel.TabIndex = 10;
            this.Btn_Cancel.Text = "Cancel";
            this.Btn_Cancel.Click += new System.EventHandler(this.Btn_Cancel_Click);
            // 
            // btnOK
            // 
            this.btnOK.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(380, 12);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(77, 23);
            this.btnOK.TabIndex = 9;
            this.btnOK.Text = "OK";
            this.btnOK.Click += new System.EventHandler(this.btnOK_Click);
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1,
            this.toolStripStatusLabel2});
            this.statusStrip1.Location = new System.Drawing.Point(0, 650);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(1366, 22);
            this.statusStrip1.TabIndex = 10;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(102, 17);
            this.toolStripStatusLabel1.Text = "Red:selected     ";
            // 
            // toolStripStatusLabel2
            // 
            this.toolStripStatusLabel2.Name = "toolStripStatusLabel2";
            this.toolStripStatusLabel2.Size = new System.Drawing.Size(214, 17);
            this.toolStripStatusLabel2.Text = "Gray:reserved by other line            ";
            // 
            // WFFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1366, 672);
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.statusStrip1);
            this.Name = "WFFrm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Select Worker";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.WFFrm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GridWF)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.ResumeLayout(false);
            this.splitContainer2.Panel1.ResumeLayout(false);
            this.splitContainer2.Panel1.PerformLayout();
            this.splitContainer2.Panel2.ResumeLayout(false);
            this.splitContainer2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkJFlag.Properties)).EndInit();
            this.splitContainer3.Panel1.ResumeLayout(false);
            this.splitContainer3.Panel2.ResumeLayout(false);
            this.splitContainer3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridMatching)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraGrid.GridControl GridWF;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colStrWorkforceStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkerType;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkforceID;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colName;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colMTM;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private System.Windows.Forms.Button BtnRight;
        private System.Windows.Forms.Button BtnLeft;
        private System.Windows.Forms.SplitContainer splitContainer3;
        private DevExpress.XtraGrid.GridControl GridMatching;
        private DevExpress.XtraEditors.SimpleButton Btn_Cancel;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.RadioButton RbtWF2;
        private System.Windows.Forms.RadioButton RbtWF;
        private System.Windows.Forms.RadioButton RbtWF1;
        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private DevExpress.XtraGrid.Columns.GridColumn ColSel;
        private System.Windows.Forms.BindingSource bindingSource2;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn13;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn14;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn15;
        private DevExpress.XtraGrid.Columns.GridColumn ColMType;
        private DevExpress.XtraGrid.Columns.GridColumn ColMId;
        private DevExpress.XtraGrid.Columns.GridColumn ColMName;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn16;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn17;
        private DevExpress.XtraEditors.SimpleButton Btn_View;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel2;
        private DevExpress.XtraEditors.CheckEdit chkJFlag;
        private System.Windows.Forms.CheckBox ChkExpand;
        private System.Windows.Forms.CheckBox ChkMoveNext;
        private DevExpress.XtraGrid.Columns.GridColumn colFirstPass;
        private DevExpress.XtraGrid.Columns.GridColumn colDone;
        private DevExpress.XtraGrid.Columns.GridColumn WsGroupNameSort;
        private DevExpress.XtraGrid.Columns.GridColumn colJobTitleSort;
        private System.Windows.Forms.RadioButton radReArrangeWF;
        private DevExpress.XtraGrid.Columns.GridColumn colOperationSN;
    }
}