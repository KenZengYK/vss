namespace PH.LWPM.UI.LB4
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.GridWF = new DevExpress.XtraGrid.GridControl();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colWorkforceID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMTM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColSel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn17 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn16 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPastMTM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDidInFac = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDidByWf = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFirstPass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWsGroupNameSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJobTitleSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkerType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStrWorkforceStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.radReArrangeWF = new System.Windows.Forms.RadioButton();
            this.lblHaveDone = new DevExpress.XtraEditors.LabelControl();
            this.lblHaveDo = new DevExpress.XtraEditors.LabelControl();
            this.lblSeniorityS = new DevExpress.XtraEditors.LabelControl();
            this.lblSeniority = new DevExpress.XtraEditors.LabelControl();
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
            this.colDidtimeInfac = new DevExpress.XtraGrid.Columns.GridColumn();
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
            gridLevelNode1.RelationName = "Level1";
            this.GridWF.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.GridWF.Location = new System.Drawing.Point(0, 0);
            this.GridWF.MainView = this.gridView1;
            this.GridWF.Name = "GridWF";
            this.GridWF.Size = new System.Drawing.Size(664, 648);
            this.GridWF.TabIndex = 8;
            this.GridWF.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.GridWF.DoubleClick += new System.EventHandler(this.GridWF_DoubleClick);
            this.GridWF.KeyDown += new System.Windows.Forms.KeyEventHandler(this.GridWF_KeyDown);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colWorkforceID,
            this.colName,
            this.colLine,
            this.colMTM,
            this.ColSel,
            this.gridColumn17,
            this.gridColumn16,
            this.colPastMTM,
            this.colDidInFac,
            this.colDidByWf,
            this.colFirstPass,
            this.colWsGroupNameSort,
            this.colJobTitleSort,
            this.colFactory,
            this.colWorkerType,
            this.colStrWorkforceStyle});
            this.gridView1.GridControl = this.GridWF;
            this.gridView1.GroupCount = 2;
            this.gridView1.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Count, "Id", this.colWorkforceID, "")});
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsDetail.ShowDetailTabs = false;
            this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowFooter = true;
            this.gridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWsGroupNameSort, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colJobTitleSort, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLine, DevExpress.Data.ColumnSortOrder.Ascending)});
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
            this.colWorkforceID.Width = 78;
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
            this.colName.Width = 66;
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
            this.colLine.Width = 68;
            // 
            // colMTM
            // 
            this.colMTM.AppearanceHeader.Options.UseTextOptions = true;
            this.colMTM.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMTM.Caption = "MTM";
            this.colMTM.FieldName = "MTM";
            this.colMTM.Name = "colMTM";
            this.colMTM.OptionsColumn.AllowEdit = false;
            this.colMTM.OptionsColumn.ReadOnly = true;
            this.colMTM.Width = 57;
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
            this.gridColumn17.Width = 69;
            // 
            // gridColumn16
            // 
            this.gridColumn16.Caption = "Locked";
            this.gridColumn16.FieldName = "Locked";
            this.gridColumn16.Name = "gridColumn16";
            this.gridColumn16.Visible = true;
            this.gridColumn16.VisibleIndex = 7;
            // 
            // colPastMTM
            // 
            this.colPastMTM.Caption = "Past MTM";
            this.colPastMTM.DisplayFormat.FormatString = "{0:F}";
            this.colPastMTM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colPastMTM.FieldName = "PastMTM";
            this.colPastMTM.Name = "colPastMTM";
            this.colPastMTM.Visible = true;
            this.colPastMTM.VisibleIndex = 4;
            this.colPastMTM.Width = 88;
            // 
            // colDidInFac
            // 
            this.colDidInFac.AppearanceCell.Options.UseTextOptions = true;
            this.colDidInFac.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colDidInFac.Caption = "Done\r\nOpt";
            this.colDidInFac.FieldName = "DidTime_InFac";
            this.colDidInFac.Name = "colDidInFac";
            this.colDidInFac.Width = 110;
            // 
            // colDidByWf
            // 
            this.colDidByWf.Caption = "Done\r\nOpt";
            this.colDidByWf.FieldName = "DidTime_ByWf";
            this.colDidByWf.Name = "colDidByWf";
            this.colDidByWf.Visible = true;
            this.colDidByWf.VisibleIndex = 3;
            this.colDidByWf.Width = 74;
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
            this.colFirstPass.Width = 88;
            // 
            // colWsGroupNameSort
            // 
            this.colWsGroupNameSort.Caption = "Group";
            this.colWsGroupNameSort.FieldName = "WsGroupNameSort";
            this.colWsGroupNameSort.Name = "colWsGroupNameSort";
            // 
            // colJobTitleSort
            // 
            this.colJobTitleSort.Caption = "dWF Type";
            this.colJobTitleSort.FieldName = "JobTitleSort";
            this.colJobTitleSort.Name = "colJobTitleSort";
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
            this.colFactory.Width = 56;
            // 
            // colWorkerType
            // 
            this.colWorkerType.Caption = "WF Type";
            this.colWorkerType.FieldName = "WorkerType";
            this.colWorkerType.Name = "colWorkerType";
            // 
            // colStrWorkforceStyle
            // 
            this.colStrWorkforceStyle.AppearanceHeader.Options.UseTextOptions = true;
            this.colStrWorkforceStyle.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStrWorkforceStyle.Caption = "JobTitle";
            this.colStrWorkforceStyle.FieldName = "JobTitleEn";
            this.colStrWorkforceStyle.Name = "colStrWorkforceStyle";
            this.colStrWorkforceStyle.OptionsColumn.AllowEdit = false;
            this.colStrWorkforceStyle.OptionsColumn.ReadOnly = true;
            this.colStrWorkforceStyle.Width = 62;
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
            this.splitContainer1.Size = new System.Drawing.Size(1321, 650);
            this.splitContainer1.SplitterDistance = 666;
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
            this.splitContainer2.Panel1.Controls.Add(this.lblHaveDone);
            this.splitContainer2.Panel1.Controls.Add(this.lblHaveDo);
            this.splitContainer2.Panel1.Controls.Add(this.lblSeniorityS);
            this.splitContainer2.Panel1.Controls.Add(this.lblSeniority);
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
            this.splitContainer2.Size = new System.Drawing.Size(651, 650);
            this.splitContainer2.SplitterDistance = 122;
            this.splitContainer2.TabIndex = 0;
            // 
            // radReArrangeWF
            // 
            this.radReArrangeWF.AutoSize = true;
            this.radReArrangeWF.Location = new System.Drawing.Point(10, 244);
            this.radReArrangeWF.Name = "radReArrangeWF";
            this.radReArrangeWF.Size = new System.Drawing.Size(106, 18);
            this.radReArrangeWF.TabIndex = 39;
            this.radReArrangeWF.Text = "Re-arrange WF";
            this.radReArrangeWF.UseVisualStyleBackColor = true;
            this.radReArrangeWF.Visible = false;
            // 
            // lblHaveDone
            // 
            this.lblHaveDone.Location = new System.Drawing.Point(84, 485);
            this.lblHaveDone.Name = "lblHaveDone";
            this.lblHaveDone.Size = new System.Drawing.Size(7, 14);
            this.lblHaveDone.TabIndex = 38;
            this.lblHaveDone.Text = "0";
            this.lblHaveDone.Visible = false;
            // 
            // lblHaveDo
            // 
            this.lblHaveDo.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.lblHaveDo.Appearance.Options.UseForeColor = true;
            this.lblHaveDo.Location = new System.Drawing.Point(12, 485);
            this.lblHaveDo.Name = "lblHaveDo";
            this.lblHaveDo.Size = new System.Drawing.Size(33, 28);
            this.lblHaveDo.TabIndex = 37;
            this.lblHaveDo.Text = "Have\r\nDone:";
            this.lblHaveDo.Visible = false;
            // 
            // lblSeniorityS
            // 
            this.lblSeniorityS.Location = new System.Drawing.Point(70, 434);
            this.lblSeniorityS.Name = "lblSeniorityS";
            this.lblSeniorityS.Size = new System.Drawing.Size(7, 14);
            this.lblSeniorityS.TabIndex = 36;
            this.lblSeniorityS.Text = "0";
            this.lblSeniorityS.Visible = false;
            // 
            // lblSeniority
            // 
            this.lblSeniority.Appearance.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(255)))), ((int)(((byte)(128)))), ((int)(((byte)(128)))));
            this.lblSeniority.Appearance.Options.UseForeColor = true;
            this.lblSeniority.Location = new System.Drawing.Point(12, 433);
            this.lblSeniority.Name = "lblSeniority";
            this.lblSeniority.Size = new System.Drawing.Size(51, 14);
            this.lblSeniority.TabIndex = 35;
            this.lblSeniority.Text = "Seniority:";
            this.lblSeniority.Visible = false;
            // 
            // ChkMoveNext
            // 
            this.ChkMoveNext.AutoSize = true;
            this.ChkMoveNext.Checked = true;
            this.ChkMoveNext.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ChkMoveNext.Location = new System.Drawing.Point(12, 297);
            this.ChkMoveNext.Name = "ChkMoveNext";
            this.ChkMoveNext.Size = new System.Drawing.Size(85, 18);
            this.ChkMoveNext.TabIndex = 34;
            this.ChkMoveNext.Text = "Move Next";
            this.ChkMoveNext.UseVisualStyleBackColor = true;
            this.ChkMoveNext.Visible = false;
            // 
            // ChkExpand
            // 
            this.ChkExpand.AutoSize = true;
            this.ChkExpand.Location = new System.Drawing.Point(10, 32);
            this.ChkExpand.Name = "ChkExpand";
            this.ChkExpand.Size = new System.Drawing.Size(102, 32);
            this.ChkExpand.TabIndex = 33;
            this.ChkExpand.Text = "Resource WF \r\nID List";
            this.ChkExpand.UseVisualStyleBackColor = true;
            this.ChkExpand.CheckedChanged += new System.EventHandler(this.ChkExpand_CheckedChanged);
            // 
            // chkJFlag
            // 
            this.chkJFlag.EditValue = true;
            this.chkJFlag.Location = new System.Drawing.Point(8, 74);
            this.chkJFlag.Name = "chkJFlag";
            this.chkJFlag.Properties.Caption = "Split/Merge LB \r\nRe-arrange";
            this.chkJFlag.Size = new System.Drawing.Size(108, 33);
            this.chkJFlag.TabIndex = 30;
            // 
            // RbtWF2
            // 
            this.RbtWF2.AutoSize = true;
            this.RbtWF2.Location = new System.Drawing.Point(8, 321);
            this.RbtWF2.Name = "RbtWF2";
            this.RbtWF2.Size = new System.Drawing.Size(114, 18);
            this.RbtWF2.TabIndex = 29;
            this.RbtWF2.Text = "Add WF/WP (2)";
            this.RbtWF2.UseVisualStyleBackColor = true;
            this.RbtWF2.Visible = false;
            this.RbtWF2.CheckedChanged += new System.EventHandler(this.RbtWF2_CheckedChanged);
            // 
            // BtnRight
            // 
            this.BtnRight.Image = global::PH.LWPM.UI.Properties.Resources.NextSeq;
            this.BtnRight.Location = new System.Drawing.Point(42, 268);
            this.BtnRight.Name = "BtnRight";
            this.BtnRight.Size = new System.Drawing.Size(26, 23);
            this.BtnRight.TabIndex = 24;
            this.BtnRight.UseVisualStyleBackColor = false;
            this.BtnRight.Click += new System.EventHandler(this.BtnRight_Click);
            // 
            // RbtWF
            // 
            this.RbtWF.AutoSize = true;
            this.RbtWF.Checked = true;
            this.RbtWF.Location = new System.Drawing.Point(8, 155);
            this.RbtWF.Name = "RbtWF";
            this.RbtWF.Size = new System.Drawing.Size(84, 18);
            this.RbtWF.TabIndex = 27;
            this.RbtWF.TabStop = true;
            this.RbtWF.Text = "Deploy WF";
            this.RbtWF.UseVisualStyleBackColor = true;
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
            this.RbtWF1.Location = new System.Drawing.Point(8, 182);
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
            this.splitContainer3.Size = new System.Drawing.Size(525, 650);
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
            this.GridMatching.Size = new System.Drawing.Size(523, 591);
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
            this.ColMName,
            this.colDidtimeInfac});
            this.gridView2.GridControl = this.GridMatching;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsBehavior.Editable = false;
            this.gridView2.OptionsDetail.ShowDetailTabs = false;
            this.gridView2.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView2.OptionsView.ShowDetailButtons = false;
            this.gridView2.OptionsView.ShowGroupPanel = false;
            this.gridView2.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.Cust_FocusedRowChanged);
            // 
            // colOperationSN
            // 
            this.colOperationSN.Caption = "Opt\r\nSeq";
            this.colOperationSN.FieldName = "OperationSN";
            this.colOperationSN.Name = "colOperationSN";
            this.colOperationSN.Visible = true;
            this.colOperationSN.VisibleIndex = 0;
            this.colOperationSN.Width = 44;
            // 
            // gridColumn13
            // 
            this.gridColumn13.Caption = "Opt\r\nCode";
            this.gridColumn13.FieldName = "OperationCode";
            this.gridColumn13.Name = "gridColumn13";
            this.gridColumn13.Visible = true;
            this.gridColumn13.VisibleIndex = 1;
            this.gridColumn13.Width = 62;
            // 
            // gridColumn14
            // 
            this.gridColumn14.Caption = "Opt Name\r\n";
            this.gridColumn14.FieldName = "OperationName";
            this.gridColumn14.Name = "gridColumn14";
            this.gridColumn14.Visible = true;
            this.gridColumn14.VisibleIndex = 2;
            this.gridColumn14.Width = 100;
            // 
            // gridColumn15
            // 
            this.gridColumn15.Caption = "Best WF\r\n";
            this.gridColumn15.FieldName = "WorkforceNum";
            this.gridColumn15.Name = "gridColumn15";
            this.gridColumn15.Visible = true;
            this.gridColumn15.VisibleIndex = 3;
            this.gridColumn15.Width = 64;
            // 
            // ColMType
            // 
            this.ColMType.Caption = "WF Type\r\n";
            this.ColMType.FieldName = "WorkStyle";
            this.ColMType.Name = "ColMType";
            this.ColMType.Visible = true;
            this.ColMType.VisibleIndex = 5;
            this.ColMType.Width = 64;
            // 
            // ColMId
            // 
            this.ColMId.Caption = "WF Id\r\n";
            this.ColMId.FieldName = "WorkerId";
            this.ColMId.Name = "ColMId";
            this.ColMId.Visible = true;
            this.ColMId.VisibleIndex = 6;
            this.ColMId.Width = 37;
            // 
            // ColMName
            // 
            this.ColMName.Caption = "WF Name\r\n";
            this.ColMName.FieldName = "WorkerName";
            this.ColMName.Name = "ColMName";
            this.ColMName.Visible = true;
            this.ColMName.VisibleIndex = 7;
            this.ColMName.Width = 83;
            // 
            // colDidtimeInfac
            // 
            this.colDidtimeInfac.Caption = "Done\r\nOpt";
            this.colDidtimeInfac.FieldName = "DidTime_InFac";
            this.colDidtimeInfac.Name = "colDidtimeInfac";
            this.colDidtimeInfac.Visible = true;
            this.colDidtimeInfac.VisibleIndex = 4;
            this.colDidtimeInfac.Width = 48;
            // 
            // Btn_View
            // 
            this.Btn_View.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.Btn_View.Location = new System.Drawing.Point(19, 12);
            this.Btn_View.Name = "Btn_View";
            this.Btn_View.Size = new System.Drawing.Size(77, 23);
            this.Btn_View.TabIndex = 11;
            this.Btn_View.Text = "View Detail";
            // 
            // Btn_Cancel
            // 
            this.Btn_Cancel.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.Btn_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.Btn_Cancel.Location = new System.Drawing.Point(195, 12);
            this.Btn_Cancel.Name = "Btn_Cancel";
            this.Btn_Cancel.Size = new System.Drawing.Size(77, 23);
            this.Btn_Cancel.TabIndex = 10;
            this.Btn_Cancel.Text = "Cancel";
            // 
            // btnOK
            // 
            this.btnOK.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(107, 12);
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
            this.statusStrip1.Size = new System.Drawing.Size(1321, 22);
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
            this.ClientSize = new System.Drawing.Size(1321, 672);
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
        private DevExpress.XtraEditors.LabelControl lblSeniority;
        private DevExpress.XtraEditors.LabelControl lblSeniorityS;
        private DevExpress.XtraEditors.LabelControl lblHaveDo;
        private DevExpress.XtraEditors.LabelControl lblHaveDone;
        private DevExpress.XtraGrid.Columns.GridColumn colPastMTM;
        private DevExpress.XtraGrid.Columns.GridColumn colDidInFac;
        private DevExpress.XtraGrid.Columns.GridColumn colDidByWf;
        private DevExpress.XtraGrid.Columns.GridColumn colDidtimeInfac;
        private DevExpress.XtraGrid.Columns.GridColumn colFirstPass;
        private DevExpress.XtraGrid.Columns.GridColumn colWsGroupNameSort;
        private DevExpress.XtraGrid.Columns.GridColumn colJobTitleSort;
        private System.Windows.Forms.RadioButton radReArrangeWF;
        private DevExpress.XtraGrid.Columns.GridColumn colOperationSN;
    }
}