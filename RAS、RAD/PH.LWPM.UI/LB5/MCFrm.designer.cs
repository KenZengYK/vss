namespace PH.LWPM.UI.LB5
{
    partial class MCFrm
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
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            this.RbtWF = new System.Windows.Forms.RadioButton();
            this.RbtWF2 = new System.Windows.Forms.RadioButton();
            this.statusStrip1 = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel1 = new System.Windows.Forms.ToolStripStatusLabel();
            this.Btn_Cancel = new DevExpress.XtraEditors.SimpleButton();
            this.RbtWF1 = new System.Windows.Forms.RadioButton();
            this.btnOK = new DevExpress.XtraEditors.SimpleButton();
            this.BtnRight = new System.Windows.Forms.Button();
            this.bindingSource2 = new System.Windows.Forms.BindingSource(this.components);
            this.GridMatching = new DevExpress.XtraGrid.GridControl();
            this.gridView2 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colOperationSN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColMMachineId = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColMRpm0 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.splitContainer3 = new System.Windows.Forms.SplitContainer();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.GridMC = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colSelectMachine_WsSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSelectMachine_Where = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMcType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Colrpm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colclass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Collinecode1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColLocation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.splitContainer2 = new System.Windows.Forms.SplitContainer();
            this.radReArrangeMC = new System.Windows.Forms.RadioButton();
            this.ChkMoveNext = new System.Windows.Forms.CheckBox();
            this.ChkExpand = new System.Windows.Forms.CheckBox();
            this.chkJFlag = new DevExpress.XtraEditors.CheckEdit();
            this.BtnLeft = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.statusStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridMatching)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).BeginInit();
            this.splitContainer3.Panel1.SuspendLayout();
            this.splitContainer3.Panel2.SuspendLayout();
            this.splitContainer3.SuspendLayout();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridMC)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            this.splitContainer2.Panel1.SuspendLayout();
            this.splitContainer2.Panel2.SuspendLayout();
            this.splitContainer2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.chkJFlag.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // RbtWF
            // 
            this.RbtWF.AutoSize = true;
            this.RbtWF.Location = new System.Drawing.Point(12, 487);
            this.RbtWF.Name = "RbtWF";
            this.RbtWF.Size = new System.Drawing.Size(81, 18);
            this.RbtWF.TabIndex = 27;
            this.RbtWF.Text = "Deploy Mc";
            this.RbtWF.UseVisualStyleBackColor = true;
            this.RbtWF.Visible = false;
            this.RbtWF.CheckedChanged += new System.EventHandler(this.RbtWF_CheckedChanged);
            // 
            // RbtWF2
            // 
            this.RbtWF2.AutoSize = true;
            this.RbtWF2.Location = new System.Drawing.Point(12, 224);
            this.RbtWF2.Name = "RbtWF2";
            this.RbtWF2.Size = new System.Drawing.Size(92, 18);
            this.RbtWF2.TabIndex = 29;
            this.RbtWF2.Text = "Add HW (2)";
            this.RbtWF2.UseVisualStyleBackColor = true;
            this.RbtWF2.CheckedChanged += new System.EventHandler(this.RbtWF2_CheckedChanged);
            // 
            // statusStrip1
            // 
            this.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel1});
            this.statusStrip1.Location = new System.Drawing.Point(0, 709);
            this.statusStrip1.Name = "statusStrip1";
            this.statusStrip1.Size = new System.Drawing.Size(1028, 22);
            this.statusStrip1.TabIndex = 12;
            this.statusStrip1.Text = "statusStrip1";
            // 
            // toolStripStatusLabel1
            // 
            this.toolStripStatusLabel1.Name = "toolStripStatusLabel1";
            this.toolStripStatusLabel1.Size = new System.Drawing.Size(352, 17);
            this.toolStripStatusLabel1.Text = "紅色(Red):這部車已經被占使用(The Worker have been used...)";
            // 
            // Btn_Cancel
            // 
            this.Btn_Cancel.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.Btn_Cancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.Btn_Cancel.Location = new System.Drawing.Point(129, 20);
            this.Btn_Cancel.Name = "Btn_Cancel";
            this.Btn_Cancel.Size = new System.Drawing.Size(77, 23);
            this.Btn_Cancel.TabIndex = 10;
            this.Btn_Cancel.Text = "Cancel";
            // 
            // RbtWF1
            // 
            this.RbtWF1.AutoSize = true;
            this.RbtWF1.Location = new System.Drawing.Point(12, 197);
            this.RbtWF1.Name = "RbtWF1";
            this.RbtWF1.Size = new System.Drawing.Size(71, 18);
            this.RbtWF1.TabIndex = 28;
            this.RbtWF1.Text = "Add HW";
            this.RbtWF1.UseVisualStyleBackColor = true;
            this.RbtWF1.CheckedChanged += new System.EventHandler(this.RbtWF1_CheckedChanged);
            // 
            // btnOK
            // 
            this.btnOK.ButtonStyle = DevExpress.XtraEditors.Controls.BorderStyles.Flat;
            this.btnOK.DialogResult = System.Windows.Forms.DialogResult.OK;
            this.btnOK.Location = new System.Drawing.Point(36, 20);
            this.btnOK.Name = "btnOK";
            this.btnOK.Size = new System.Drawing.Size(77, 23);
            this.btnOK.TabIndex = 9;
            this.btnOK.Text = "OK";
            // 
            // BtnRight
            // 
            this.BtnRight.Image = global::PH.LWPM.UI.Properties.Resources.NextSeq;
            this.BtnRight.Location = new System.Drawing.Point(42, 295);
            this.BtnRight.Name = "BtnRight";
            this.BtnRight.Size = new System.Drawing.Size(29, 23);
            this.BtnRight.TabIndex = 24;
            this.BtnRight.UseVisualStyleBackColor = false;
            this.BtnRight.Click += new System.EventHandler(this.BtnRight_Click);
            // 
            // GridMatching
            // 
            this.GridMatching.DataSource = this.bindingSource2;
            this.GridMatching.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridMatching.EmbeddedNavigator.Name = "";
            this.GridMatching.Location = new System.Drawing.Point(0, 0);
            this.GridMatching.MainView = this.gridView2;
            this.GridMatching.Name = "GridMatching";
            this.GridMatching.Size = new System.Drawing.Size(497, 639);
            this.GridMatching.TabIndex = 0;
            this.GridMatching.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView2});
            this.GridMatching.KeyDown += new System.Windows.Forms.KeyEventHandler(this.GridMatching_KeyDown);
            // 
            // gridView2
            // 
            this.gridView2.ColumnPanelRowHeight = 34;
            this.gridView2.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colOperationSN,
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn4,
            this.gridColumn3,
            this.bandedGridColumn1,
            this.ColMMachineId,
            this.ColMRpm0});
            this.gridView2.GridControl = this.GridMatching;
            this.gridView2.Name = "gridView2";
            this.gridView2.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView2.OptionsView.ShowDetailButtons = false;
            this.gridView2.OptionsView.ShowGroupPanel = false;
            this.gridView2.FocusedRowChanged += new DevExpress.XtraGrid.Views.Base.FocusedRowChangedEventHandler(this.gridView2_FocusedRowChanged);
            this.gridView2.CellValueChanged += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.gridView2_CellValueChanged);
            this.gridView2.CellValueChanging += new DevExpress.XtraGrid.Views.Base.CellValueChangedEventHandler(this.gridView2_CellValueChanging);
            this.gridView2.RowUpdated += new DevExpress.XtraGrid.Views.Base.RowObjectEventHandler(this.gridView2_RowUpdated);
            // 
            // colOperationSN
            // 
            this.colOperationSN.Caption = "Opt\r\nSeq";
            this.colOperationSN.FieldName = "OperationSN";
            this.colOperationSN.Name = "colOperationSN";
            this.colOperationSN.Visible = true;
            this.colOperationSN.VisibleIndex = 0;
            this.colOperationSN.Width = 47;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Opt\r\nCode";
            this.gridColumn1.FieldName = "OperationCode";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.OptionsColumn.ReadOnly = true;
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 1;
            this.gridColumn1.Width = 52;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Opt Name";
            this.gridColumn2.FieldName = "OperationName";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.OptionsColumn.ReadOnly = true;
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 2;
            this.gridColumn2.Width = 153;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Flag";
            this.gridColumn4.FieldName = "mc";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 3;
            this.gridColumn4.Width = 44;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "HW\r\nType";
            this.gridColumn3.FieldName = "MCType";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.OptionsColumn.ReadOnly = true;
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 4;
            this.gridColumn3.Width = 46;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.AppearanceCell.Options.UseTextOptions = true;
            this.bandedGridColumn1.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridColumn1.Caption = "Rpm";
            this.bandedGridColumn1.FieldName = "Rpm";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.OptionsColumn.ReadOnly = true;
            this.bandedGridColumn1.Visible = true;
            this.bandedGridColumn1.VisibleIndex = 5;
            this.bandedGridColumn1.Width = 54;
            // 
            // ColMMachineId
            // 
            this.ColMMachineId.Caption = "HW ID";
            this.ColMMachineId.FieldName = "MachineId";
            this.ColMMachineId.Name = "ColMMachineId";
            this.ColMMachineId.Visible = true;
            this.ColMMachineId.VisibleIndex = 6;
            this.ColMMachineId.Width = 80;
            // 
            // ColMRpm0
            // 
            this.ColMRpm0.AppearanceCell.Options.UseTextOptions = true;
            this.ColMRpm0.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.ColMRpm0.Caption = "Rpm0";
            this.ColMRpm0.FieldName = "Rpm0";
            this.ColMRpm0.Name = "ColMRpm0";
            this.ColMRpm0.Width = 83;
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
            this.splitContainer3.Panel2.Controls.Add(this.Btn_Cancel);
            this.splitContainer3.Panel2.Controls.Add(this.btnOK);
            this.splitContainer3.Size = new System.Drawing.Size(499, 709);
            this.splitContainer3.SplitterDistance = 641;
            this.splitContainer3.TabIndex = 1;
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
            this.splitContainer1.Panel1.Controls.Add(this.GridMC);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.splitContainer2);
            this.splitContainer1.Size = new System.Drawing.Size(1028, 709);
            this.splitContainer1.SplitterDistance = 384;
            this.splitContainer1.TabIndex = 11;
            // 
            // GridMC
            // 
            this.GridMC.DataSource = this.bindingSource1;
            this.GridMC.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridMC.EmbeddedNavigator.Name = "";
            this.GridMC.Location = new System.Drawing.Point(0, 0);
            this.GridMC.MainView = this.gridView1;
            this.GridMC.Name = "GridMC";
            this.GridMC.Size = new System.Drawing.Size(382, 707);
            this.GridMC.TabIndex = 1;
            this.GridMC.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            this.GridMC.DoubleClick += new System.EventHandler(this.GridMC_DoubleClick);
            this.GridMC.KeyDown += new System.Windows.Forms.KeyEventHandler(this.GridMC_KeyDown);
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSelectMachine_WsSort,
            this.colSelectMachine_Where,
            this.colMcType,
            this.colID,
            this.Colrpm,
            this.colBM,
            this.gridColumn10,
            this.colclass,
            this.Collinecode1,
            this.ColLocation});
            this.gridView1.FocusRectStyle = DevExpress.XtraGrid.Views.Grid.DrawFocusRectStyle.RowFocus;
            this.gridView1.GridControl = this.GridMC;
            this.gridView1.GroupCount = 2;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSelectMachine_WsSort, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSelectMachine_Where, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // colSelectMachine_WsSort
            // 
            this.colSelectMachine_WsSort.Caption = "Ws";
            this.colSelectMachine_WsSort.FieldName = "SelectMachine_WsSort";
            this.colSelectMachine_WsSort.Name = "colSelectMachine_WsSort";
            // 
            // colSelectMachine_Where
            // 
            this.colSelectMachine_Where.Caption = "Where";
            this.colSelectMachine_Where.FieldName = "SelectMachine_Where";
            this.colSelectMachine_Where.Name = "colSelectMachine_Where";
            // 
            // colMcType
            // 
            this.colMcType.Caption = "HW Type";
            this.colMcType.FieldName = "Type";
            this.colMcType.Name = "colMcType";
            this.colMcType.Visible = true;
            this.colMcType.VisibleIndex = 0;
            this.colMcType.Width = 132;
            // 
            // colID
            // 
            this.colID.Caption = "HW ID";
            this.colID.FieldName = "Id";
            this.colID.Name = "colID";
            this.colID.Visible = true;
            this.colID.VisibleIndex = 1;
            this.colID.Width = 93;
            // 
            // Colrpm
            // 
            this.Colrpm.Caption = "Rpm";
            this.Colrpm.FieldName = "Rpm";
            this.Colrpm.Name = "Colrpm";
            this.Colrpm.Visible = true;
            this.Colrpm.VisibleIndex = 3;
            this.Colrpm.Width = 217;
            // 
            // colBM
            // 
            this.colBM.Caption = "Brand/Model";
            this.colBM.FieldName = "Name";
            this.colBM.Name = "colBM";
            this.colBM.Visible = true;
            this.colBM.VisibleIndex = 2;
            this.colBM.Width = 97;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "LB4YNSel";
            this.gridColumn10.FieldName = "LB4YNSel";
            this.gridColumn10.Name = "gridColumn10";
            // 
            // colclass
            // 
            this.colclass.Caption = "Class";
            this.colclass.FieldName = "Class";
            this.colclass.Name = "colclass";
            // 
            // Collinecode1
            // 
            this.Collinecode1.Caption = "Line";
            this.Collinecode1.FieldName = "Line";
            this.Collinecode1.Name = "Collinecode1";
            // 
            // ColLocation
            // 
            this.ColLocation.Caption = "Location";
            this.ColLocation.FieldName = "Location";
            this.ColLocation.Name = "ColLocation";
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
            this.splitContainer2.Panel1.Controls.Add(this.radReArrangeMC);
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
            this.splitContainer2.Size = new System.Drawing.Size(640, 709);
            this.splitContainer2.SplitterDistance = 137;
            this.splitContainer2.TabIndex = 0;
            // 
            // radReArrangeMC
            // 
            this.radReArrangeMC.AutoSize = true;
            this.radReArrangeMC.Checked = true;
            this.radReArrangeMC.Location = new System.Drawing.Point(12, 170);
            this.radReArrangeMC.Name = "radReArrangeMC";
            this.radReArrangeMC.Size = new System.Drawing.Size(108, 18);
            this.radReArrangeMC.TabIndex = 36;
            this.radReArrangeMC.TabStop = true;
            this.radReArrangeMC.Text = "Re-arrange HW";
            this.radReArrangeMC.UseVisualStyleBackColor = true;
            this.radReArrangeMC.CheckedChanged += new System.EventHandler(this.radReArrangeMC_CheckedChanged);
            // 
            // ChkMoveNext
            // 
            this.ChkMoveNext.AutoSize = true;
            this.ChkMoveNext.Checked = true;
            this.ChkMoveNext.CheckState = System.Windows.Forms.CheckState.Checked;
            this.ChkMoveNext.Location = new System.Drawing.Point(12, 446);
            this.ChkMoveNext.Name = "ChkMoveNext";
            this.ChkMoveNext.Size = new System.Drawing.Size(81, 18);
            this.ChkMoveNext.TabIndex = 35;
            this.ChkMoveNext.Text = "MoveNext";
            this.ChkMoveNext.UseVisualStyleBackColor = true;
            this.ChkMoveNext.Visible = false;
            // 
            // ChkExpand
            // 
            this.ChkExpand.AutoSize = true;
            this.ChkExpand.Location = new System.Drawing.Point(12, 34);
            this.ChkExpand.Name = "ChkExpand";
            this.ChkExpand.Size = new System.Drawing.Size(105, 32);
            this.ChkExpand.TabIndex = 31;
            this.ChkExpand.Text = "Resource M/C \r\nID List";
            this.ChkExpand.UseVisualStyleBackColor = true;
            this.ChkExpand.CheckedChanged += new System.EventHandler(this.ChkExpand_CheckedChanged);
            // 
            // chkJFlag
            // 
            this.chkJFlag.EditValue = true;
            this.chkJFlag.Location = new System.Drawing.Point(10, 81);
            this.chkJFlag.Name = "chkJFlag";
            this.chkJFlag.Properties.Caption = "Split/Merge LB \r\nRe-arrange";
            this.chkJFlag.Size = new System.Drawing.Size(107, 33);
            this.chkJFlag.TabIndex = 31;
            // 
            // BtnLeft
            // 
            this.BtnLeft.Image = global::PH.LWPM.UI.Properties.Resources.previousSeq;
            this.BtnLeft.Location = new System.Drawing.Point(42, 381);
            this.BtnLeft.Name = "BtnLeft";
            this.BtnLeft.Size = new System.Drawing.Size(26, 23);
            this.BtnLeft.TabIndex = 23;
            this.BtnLeft.UseVisualStyleBackColor = false;
            this.BtnLeft.Click += new System.EventHandler(this.BtnLeft_Click);
            // 
            // MCFrm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1028, 731);
            this.Controls.Add(this.splitContainer1);
            this.Controls.Add(this.statusStrip1);
            this.Name = "MCFrm";
            this.Text = "Select Machine";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.MCFrm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.statusStrip1.ResumeLayout(false);
            this.statusStrip1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.GridMatching)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView2)).EndInit();
            this.splitContainer3.Panel1.ResumeLayout(false);
            this.splitContainer3.Panel2.ResumeLayout(false);
            this.splitContainer3.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            this.splitContainer1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridMC)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            this.splitContainer2.Panel1.ResumeLayout(false);
            this.splitContainer2.Panel1.PerformLayout();
            this.splitContainer2.Panel2.ResumeLayout(false);
            this.splitContainer2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.chkJFlag.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.BindingSource bindingSource1;
        private System.Windows.Forms.RadioButton RbtWF;
        private System.Windows.Forms.RadioButton RbtWF2;
        private System.Windows.Forms.StatusStrip statusStrip1;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel1;
        private DevExpress.XtraEditors.SimpleButton Btn_Cancel;
        private System.Windows.Forms.RadioButton RbtWF1;
        private DevExpress.XtraEditors.SimpleButton btnOK;
        private System.Windows.Forms.Button BtnRight;
        private System.Windows.Forms.BindingSource bindingSource2;
        private DevExpress.XtraGrid.GridControl GridMatching;
        private System.Windows.Forms.SplitContainer splitContainer3;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.SplitContainer splitContainer2;
        private System.Windows.Forms.Button BtnLeft;
        private DevExpress.XtraGrid.GridControl GridMC;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn ColLocation;
        private DevExpress.XtraGrid.Columns.GridColumn colclass;
        private DevExpress.XtraGrid.Columns.GridColumn Collinecode1;
        private DevExpress.XtraGrid.Columns.GridColumn colMcType;
        private DevExpress.XtraGrid.Columns.GridColumn colID;
        private DevExpress.XtraGrid.Columns.GridColumn Colrpm;
        private DevExpress.XtraGrid.Columns.GridColumn colBM;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn ColMMachineId;
        private DevExpress.XtraGrid.Columns.GridColumn ColMRpm0;
        private System.Windows.Forms.CheckBox ChkExpand;
        private DevExpress.XtraEditors.CheckEdit chkJFlag;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private System.Windows.Forms.CheckBox ChkMoveNext;
        private System.Windows.Forms.RadioButton radReArrangeMC;
        private DevExpress.XtraGrid.Columns.GridColumn colSelectMachine_WsSort;
        private DevExpress.XtraGrid.Columns.GridColumn colSelectMachine_Where;
        private DevExpress.XtraGrid.Columns.GridColumn colOperationSN;
    }
}