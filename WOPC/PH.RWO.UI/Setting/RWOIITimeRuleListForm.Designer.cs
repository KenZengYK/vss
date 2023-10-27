namespace PH.RWO.UI
{
    partial class RWOIITimeRuleListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            DevExpress.XtraGrid.GridLevelNode gridLevelNode2 = new DevExpress.XtraGrid.GridLevelNode();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colProcess = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsFront = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox3 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colDirect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colDays1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsWorkingDay = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemImageComboBox1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colSeq1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCalcDateType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colStartFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemComboBox3 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colEndFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDays = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.colSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalDays = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox3)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrint});
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.RWO.BO.RWOIITimeRule);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            gridLevelNode2.LevelTemplate = this.gridView1;
            gridLevelNode2.RelationName = "CycleTimeProcesses";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1,
            gridLevelNode2});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemComboBox2,
            this.repositoryItemComboBox3,
            this.repositoryItemImageComboBox1,
            this.repositoryItemImageComboBox2,
            this.repositoryItemImageComboBox3});
            this.objListGridControl.Size = new System.Drawing.Size(874, 282);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCode,
            this.colOperation,
            this.colCalcDateType,
            this.colStartFactory,
            this.colEndFactory,
            this.colDays,
            this.colRemark,
            this.colSeq,
            this.colTotalDays});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.AllowExpandEmptyDetails = true;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsDetail.ShowDetailTabs = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsPrint.UsePrintStyles = true;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colCode, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSeq, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // gridView1
            // 
            this.gridView1.ChildGridLevelName = "CycleTimeProcesses";
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colProcess,
            this.colIsFront,
            this.colDirect,
            this.colDays1,
            this.colIsWorkingDay,
            this.colSeq1,
            this.colRemark1});
            this.gridView1.GridControl = this.objListGridControl;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colSeq1, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // colProcess
            // 
            this.colProcess.Caption = "Process";
            this.colProcess.FieldName = "Process";
            this.colProcess.Name = "colProcess";
            this.colProcess.Visible = true;
            this.colProcess.VisibleIndex = 2;
            this.colProcess.Width = 172;
            // 
            // colIsFront
            // 
            this.colIsFront.Caption = "前部/後部";
            this.colIsFront.ColumnEdit = this.repositoryItemImageComboBox3;
            this.colIsFront.FieldName = "IsFront";
            this.colIsFront.Name = "colIsFront";
            this.colIsFront.Visible = true;
            this.colIsFront.VisibleIndex = 1;
            this.colIsFront.Width = 89;
            // 
            // repositoryItemImageComboBox3
            // 
            this.repositoryItemImageComboBox3.AutoHeight = false;
            this.repositoryItemImageComboBox3.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox3.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("前部", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("後部", false, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("", null, -1)});
            this.repositoryItemImageComboBox3.Name = "repositoryItemImageComboBox3";
            // 
            // colDirect
            // 
            this.colDirect.Caption = "方向";
            this.colDirect.ColumnEdit = this.repositoryItemImageComboBox2;
            this.colDirect.FieldName = "Direct";
            this.colDirect.Name = "colDirect";
            this.colDirect.Visible = true;
            this.colDirect.VisibleIndex = 0;
            this.colDirect.Width = 108;
            // 
            // repositoryItemImageComboBox2
            // 
            this.repositoryItemImageComboBox2.AutoHeight = false;
            this.repositoryItemImageComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox2.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("主廠", 1, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("加工廠", 2, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("主廠 --> 加工廠", 3, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("加工廠 --> 主廠", 4, -1)});
            this.repositoryItemImageComboBox2.Name = "repositoryItemImageComboBox2";
            // 
            // colDays1
            // 
            this.colDays1.Caption = "Days";
            this.colDays1.FieldName = "Days";
            this.colDays1.Name = "colDays1";
            this.colDays1.Visible = true;
            this.colDays1.VisibleIndex = 3;
            this.colDays1.Width = 79;
            // 
            // colIsWorkingDay
            // 
            this.colIsWorkingDay.Caption = "Calc by";
            this.colIsWorkingDay.ColumnEdit = this.repositoryItemImageComboBox1;
            this.colIsWorkingDay.FieldName = "IsWorkingDay";
            this.colIsWorkingDay.Name = "colIsWorkingDay";
            this.colIsWorkingDay.Visible = true;
            this.colIsWorkingDay.VisibleIndex = 4;
            this.colIsWorkingDay.Width = 124;
            // 
            // repositoryItemImageComboBox1
            // 
            this.repositoryItemImageComboBox1.AutoHeight = false;
            this.repositoryItemImageComboBox1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemImageComboBox1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Calendar day", false, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Working day", true, -1)});
            this.repositoryItemImageComboBox1.Name = "repositoryItemImageComboBox1";
            // 
            // colSeq1
            // 
            this.colSeq1.Caption = "Seq";
            this.colSeq1.FieldName = "Seq";
            this.colSeq1.Name = "colSeq1";
            this.colSeq1.Visible = true;
            this.colSeq1.VisibleIndex = 5;
            this.colSeq1.Width = 86;
            // 
            // colRemark1
            // 
            this.colRemark1.Caption = "Remark";
            this.colRemark1.FieldName = "Remark";
            this.colRemark1.Name = "colRemark1";
            this.colRemark1.Visible = true;
            this.colRemark1.VisibleIndex = 6;
            this.colRemark1.Width = 266;
            // 
            // colCode
            // 
            this.colCode.Caption = "Code";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.VisibleIndex = 0;
            this.colCode.Width = 76;
            // 
            // colOperation
            // 
            this.colOperation.Caption = "Operation";
            this.colOperation.FieldName = "Operation";
            this.colOperation.Name = "colOperation";
            this.colOperation.Visible = true;
            this.colOperation.VisibleIndex = 1;
            this.colOperation.Width = 198;
            // 
            // colCalcDateType
            // 
            this.colCalcDateType.Caption = "Time\r\nElement";
            this.colCalcDateType.ColumnEdit = this.repositoryItemComboBox2;
            this.colCalcDateType.FieldName = "CalcDateType";
            this.colCalcDateType.Name = "colCalcDateType";
            this.colCalcDateType.Visible = true;
            this.colCalcDateType.VisibleIndex = 2;
            this.colCalcDateType.Width = 73;
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Items.AddRange(new object[] {
            "FW",
            "LW",
            "ExFty"});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            this.repositoryItemComboBox2.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colStartFactory
            // 
            this.colStartFactory.Caption = "Main\r\nFactory";
            this.colStartFactory.ColumnEdit = this.repositoryItemComboBox3;
            this.colStartFactory.FieldName = "StartFactory";
            this.colStartFactory.Name = "colStartFactory";
            this.colStartFactory.Visible = true;
            this.colStartFactory.VisibleIndex = 3;
            this.colStartFactory.Width = 68;
            // 
            // repositoryItemComboBox3
            // 
            this.repositoryItemComboBox3.AutoHeight = false;
            this.repositoryItemComboBox3.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox3.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.repositoryItemComboBox3.Items.AddRange(new object[] {
            "SL",
            "FJ",
            "KB"});
            this.repositoryItemComboBox3.Name = "repositoryItemComboBox3";
            this.repositoryItemComboBox3.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colEndFactory
            // 
            this.colEndFactory.Caption = "Sub-Contracting\r\nFactory";
            this.colEndFactory.ColumnEdit = this.repositoryItemComboBox3;
            this.colEndFactory.FieldName = "EndFactory";
            this.colEndFactory.Name = "colEndFactory";
            this.colEndFactory.Visible = true;
            this.colEndFactory.VisibleIndex = 4;
            this.colEndFactory.Width = 109;
            // 
            // colDays
            // 
            this.colDays.Caption = "Work\r\nDay(s)";
            this.colDays.FieldName = "Days";
            this.colDays.Name = "colDays";
            this.colDays.Width = 62;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 5;
            this.colRemark.Width = 300;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 54;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // colSeq
            // 
            this.colSeq.Caption = "Seq";
            this.colSeq.FieldName = "Seq";
            this.colSeq.Name = "colSeq";
            this.colSeq.Visible = true;
            this.colSeq.VisibleIndex = 6;
            // 
            // colTotalDays
            // 
            this.colTotalDays.Caption = "TotalDays";
            this.colTotalDays.FieldName = "TotalDays";
            this.colTotalDays.Name = "colTotalDays";
            this.colTotalDays.Width = 84;
            // 
            // RWOIITimeRuleListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "RWOIITimeRuleListForm";
            this.Size = new System.Drawing.Size(874, 308);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemImageComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox3)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCode;
        private DevExpress.XtraGrid.Columns.GridColumn colOperation;
        private DevExpress.XtraGrid.Columns.GridColumn colCalcDateType;
        private DevExpress.XtraGrid.Columns.GridColumn colStartFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colEndFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colDays;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox3;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colSeq;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colProcess;
        private DevExpress.XtraGrid.Columns.GridColumn colDays1;
        private DevExpress.XtraGrid.Columns.GridColumn colSeq1;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark1;
        private DevExpress.XtraGrid.Columns.GridColumn colIsWorkingDay;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox1;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalDays;
        private DevExpress.XtraGrid.Columns.GridColumn colIsFront;
        private DevExpress.XtraGrid.Columns.GridColumn colDirect;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox2;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repositoryItemImageComboBox3;

    }
}
