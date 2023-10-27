namespace PH.MobileQC.UI.QCTaskSchema
{
    partial class QCTaskSchemaDetailListForm
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
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkShop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRWONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQNNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyleNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProcessSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProcessCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProcessName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProcessStep = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsInSchema = new DevExpress.XtraGrid.Columns.GridColumn();
            this.panelControl1 = new DevExpress.XtraEditors.PanelControl();
            this.sBtn_UnChoseALL = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_Clear = new DevExpress.XtraEditors.SimpleButton();
            this.sBtn_ChoseALL = new DevExpress.XtraEditors.SimpleButton();
            this.textEdit_ProcessCode = new DevExpress.XtraEditors.TextEdit();
            this.labelControl4 = new DevExpress.XtraEditors.LabelControl();
            this.imageComboBoxEdit_ProcessStep = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.imageComboBoxEdit_WorkLine = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.labelControl3 = new DevExpress.XtraEditors.LabelControl();
            this.imageComboBoxEdit_WorkShop = new DevExpress.XtraEditors.ImageComboBoxEdit();
            this.labelControl2 = new DevExpress.XtraEditors.LabelControl();
            this.lblChoseProcessCount = new DevExpress.XtraEditors.LabelControl();
            this.labelControl5 = new DevExpress.XtraEditors.LabelControl();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.colQNQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsAuditedAtPreDay = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repItemImgComboBox_PreDay = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colIsFalseAtPreDay = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsCoreProcess = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPlanQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefaultAuditQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalAuditQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProcessSAH = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSchemaQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.barBtn_AttachQNTask = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_ProcessCode.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit_ProcessStep.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit_WorkLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit_WorkShop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repItemImgComboBox_PreDay)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtn_AttachQNTask});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtn_AttachQNTask)}); 
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_TaskSchemaDetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 68);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repItemImgComboBox_PreDay,
            this.repositoryItemSpinEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1142, 399);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFactory,
            this.colWorkShop,
            this.colWorkLine,
            this.colWONO,
            this.colRWONO,
            this.colColorCode,
            this.colQNNO,
            this.colQNQty,
            this.colProjectNO,
            this.colStyleNO,
            this.colIsCoreProcess,
            this.colProcessSAH,
            this.colDefaultAuditQty,
            this.colTotalAuditQty,
            this.colPlanQty,
            this.colSchemaQty,
            this.colProcessSeq,
            this.colProcessCode,
            this.colProcessName,
            this.colProcessStep,
            this.colIsInSchema,
            this.colIsAuditedAtPreDay,
            this.colIsFalseAtPreDay});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWorkShop, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWorkLine, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colWONO, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colRWONO, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colColorCode, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colQNNO, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.RowUpdated += new DevExpress.XtraGrid.Views.Base.RowObjectEventHandler(this.objListGridView_RowUpdated);
            // 
            // colFactory
            // 
            this.colFactory.Caption = "廠別";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Width = 90;
            // 
            // colWorkShop
            // 
            this.colWorkShop.Caption = "車間";
            this.colWorkShop.FieldName = "WorkShop";
            this.colWorkShop.Name = "colWorkShop";
            this.colWorkShop.Visible = true;
            this.colWorkShop.VisibleIndex = 0;
            this.colWorkShop.Width = 115;
            // 
            // colWorkLine
            // 
            this.colWorkLine.Caption = "組裝線";
            this.colWorkLine.FieldName = "WorkLine";
            this.colWorkLine.Name = "colWorkLine";
            this.colWorkLine.Visible = true;
            this.colWorkLine.VisibleIndex = 1;
            this.colWorkLine.Width = 80;
            // 
            // colProjectNO
            // 
            this.colProjectNO.Caption = "工程號";
            this.colProjectNO.FieldName = "ProjectNO";
            this.colProjectNO.Name = "colProjectNO";
            this.colProjectNO.Visible = true;
            this.colProjectNO.VisibleIndex = 7;
            this.colProjectNO.Width = 134;
            // 
            // colWONO
            // 
            this.colWONO.Caption = "制單號";
            this.colWONO.FieldName = "WONO";
            this.colWONO.Name = "colWONO";
            this.colWONO.Visible = true;
            this.colWONO.VisibleIndex = 2;
            this.colWONO.Width = 90;
            // 
            // colRWONO
            // 
            this.colRWONO.Caption = "輪制單號";
            this.colRWONO.FieldName = "RWONO";
            this.colRWONO.Name = "colRWONO";
            this.colRWONO.Visible = true;
            this.colRWONO.VisibleIndex = 3;
            this.colRWONO.Width = 90;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "色碼";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.VisibleIndex = 4;
            this.colColorCode.Width = 80;
            // 
            // colQNNO
            // 
            this.colQNNO.Caption = "數頁";
            this.colQNNO.FieldName = "QNNO";
            this.colQNNO.Name = "colQNNO";
            this.colQNNO.Visible = true;
            this.colQNNO.VisibleIndex = 5;
            this.colQNNO.Width = 69;
            // 
            // colStyleNO
            // 
            this.colStyleNO.Caption = "款號";
            this.colStyleNO.FieldName = "StyleNO";
            this.colStyleNO.Name = "colStyleNO";
            this.colStyleNO.Visible = true;
            this.colStyleNO.VisibleIndex = 8;
            // 
            // colProcessSeq
            // 
            this.colProcessSeq.Caption = "工序序號";
            this.colProcessSeq.FieldName = "ProcessSeq";
            this.colProcessSeq.Name = "colProcessSeq";
            this.colProcessSeq.Visible = true;
            this.colProcessSeq.VisibleIndex = 9;
            this.colProcessSeq.Width = 96;
            // 
            // colProcessCode
            // 
            this.colProcessCode.Caption = "工序號";
            this.colProcessCode.FieldName = "ProcessCode";
            this.colProcessCode.Name = "colProcessCode";
            this.colProcessCode.Visible = true;
            this.colProcessCode.VisibleIndex = 16;
            this.colProcessCode.Width = 65;
            // 
            // colProcessName
            // 
            this.colProcessName.Caption = "工序名";
            this.colProcessName.FieldName = "ProcessName";
            this.colProcessName.Name = "colProcessName";
            this.colProcessName.Visible = true;
            this.colProcessName.VisibleIndex = 17;
            this.colProcessName.Width = 100;
            // 
            // colProcessStep
            // 
            this.colProcessStep.Caption = "工序端";
            this.colProcessStep.FieldName = "ProcessStep";
            this.colProcessStep.Name = "colProcessStep";
            this.colProcessStep.Visible = true;
            this.colProcessStep.VisibleIndex = 18;
            this.colProcessStep.Width = 73;
            // 
            // colIsInSchema
            // 
            this.colIsInSchema.Caption = "任務否";
            this.colIsInSchema.FieldName = "IsInSchema";
            this.colIsInSchema.Name = "colIsInSchema";
            this.colIsInSchema.Visible = true;
            this.colIsInSchema.VisibleIndex = 19;
            this.colIsInSchema.Width = 77;
            // 
            // panelControl1
            // 
            this.panelControl1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowOnly;
            this.panelControl1.Controls.Add(this.sBtn_UnChoseALL);
            this.panelControl1.Controls.Add(this.sBtn_Clear);
            this.panelControl1.Controls.Add(this.sBtn_ChoseALL);
            this.panelControl1.Controls.Add(this.textEdit_ProcessCode);
            this.panelControl1.Controls.Add(this.labelControl4);
            this.panelControl1.Controls.Add(this.imageComboBoxEdit_ProcessStep);
            this.panelControl1.Controls.Add(this.imageComboBoxEdit_WorkLine);
            this.panelControl1.Controls.Add(this.labelControl3);
            this.panelControl1.Controls.Add(this.imageComboBoxEdit_WorkShop);
            this.panelControl1.Controls.Add(this.labelControl2);
            this.panelControl1.Controls.Add(this.lblChoseProcessCount);
            this.panelControl1.Controls.Add(this.labelControl5);
            this.panelControl1.Controls.Add(this.labelControl1);
            this.panelControl1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelControl1.Location = new System.Drawing.Point(0, 27);
            this.panelControl1.Name = "panelControl1";
            this.panelControl1.Size = new System.Drawing.Size(1142, 41);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            this.panelControl1.TabIndex = 6;
            // 
            // sBtn_UnChoseALL
            // 
            this.sBtn_UnChoseALL.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_UnChoseALL.Location = new System.Drawing.Point(1064, 8);
            this.sBtn_UnChoseALL.Name = "sBtn_UnChoseALL";
            this.sBtn_UnChoseALL.Size = new System.Drawing.Size(75, 23);
            this.sBtn_UnChoseALL.TabIndex = 5;
            this.sBtn_UnChoseALL.Text = "取消選擇";
            this.sBtn_UnChoseALL.Click += new System.EventHandler(this.sBtn_UnChoseALL_Click);
            // 
            // sBtn_Clear
            // 
            this.sBtn_Clear.Location = new System.Drawing.Point(743, 8);
            this.sBtn_Clear.Name = "sBtn_Clear";
            this.sBtn_Clear.Size = new System.Drawing.Size(79, 23);
            this.sBtn_Clear.TabIndex = 5;
            this.sBtn_Clear.Text = "取消過濾";
            this.sBtn_Clear.Click += new System.EventHandler(this.sBtn_Clear_Click);
            // 
            // sBtn_ChoseALL
            // 
            this.sBtn_ChoseALL.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.sBtn_ChoseALL.Location = new System.Drawing.Point(987, 8);
            this.sBtn_ChoseALL.Name = "sBtn_ChoseALL";
            this.sBtn_ChoseALL.Size = new System.Drawing.Size(75, 23);
            this.sBtn_ChoseALL.TabIndex = 5;
            this.sBtn_ChoseALL.Text = "全選";
            this.sBtn_ChoseALL.Click += new System.EventHandler(this.sBtn_ChoseALL_Click);
            // 
            // textEdit_ProcessCode
            // 
            this.textEdit_ProcessCode.Location = new System.Drawing.Point(637, 9);
            this.textEdit_ProcessCode.Name = "textEdit_ProcessCode";
            this.textEdit_ProcessCode.Size = new System.Drawing.Size(100, 21);
            this.textEdit_ProcessCode.TabIndex = 4;
            this.textEdit_ProcessCode.EditValueChanged += new System.EventHandler(this.textEdit_ProcessCode_EditValueChanged);
            // 
            // labelControl4
            // 
            this.labelControl4.Location = new System.Drawing.Point(578, 12);
            this.labelControl4.Name = "labelControl4";
            this.labelControl4.Size = new System.Drawing.Size(60, 14);
            this.labelControl4.TabIndex = 3;
            this.labelControl4.Text = "工序代碼：";
            // 
            // imageComboBoxEdit_ProcessStep
            // 
            this.imageComboBoxEdit_ProcessStep.Location = new System.Drawing.Point(476, 9);
            this.imageComboBoxEdit_ProcessStep.Name = "imageComboBoxEdit_ProcessStep";
            this.imageComboBoxEdit_ProcessStep.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageComboBoxEdit_ProcessStep.Size = new System.Drawing.Size(84, 21);
            this.imageComboBoxEdit_ProcessStep.TabIndex = 2;
            this.imageComboBoxEdit_ProcessStep.SelectedValueChanged += new System.EventHandler(this.imageComboBoxEdit_ProcessStep_SelectedValueChanged);
            // 
            // imageComboBoxEdit_WorkLine
            // 
            this.imageComboBoxEdit_WorkLine.Location = new System.Drawing.Point(338, 9);
            this.imageComboBoxEdit_WorkLine.Name = "imageComboBoxEdit_WorkLine";
            this.imageComboBoxEdit_WorkLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageComboBoxEdit_WorkLine.Size = new System.Drawing.Size(85, 21);
            this.imageComboBoxEdit_WorkLine.TabIndex = 2;
            this.imageComboBoxEdit_WorkLine.SelectedValueChanged += new System.EventHandler(this.imageComboBoxEdit_WorkLine_SelectedValueChanged);
            // 
            // labelControl3
            // 
            this.labelControl3.Location = new System.Drawing.Point(431, 12);
            this.labelControl3.Name = "labelControl3";
            this.labelControl3.Size = new System.Drawing.Size(48, 14);
            this.labelControl3.TabIndex = 0;
            this.labelControl3.Text = "工序端：";
            // 
            // imageComboBoxEdit_WorkShop
            // 
            this.imageComboBoxEdit_WorkShop.Location = new System.Drawing.Point(190, 9);
            this.imageComboBoxEdit_WorkShop.Name = "imageComboBoxEdit_WorkShop";
            this.imageComboBoxEdit_WorkShop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.imageComboBoxEdit_WorkShop.Size = new System.Drawing.Size(96, 21);
            this.imageComboBoxEdit_WorkShop.TabIndex = 1;
            this.imageComboBoxEdit_WorkShop.SelectedValueChanged += new System.EventHandler(this.imageComboBoxEdit_WorkShop_SelectedValueChanged);
            // 
            // labelControl2
            // 
            this.labelControl2.Location = new System.Drawing.Point(292, 12);
            this.labelControl2.Name = "labelControl2";
            this.labelControl2.Size = new System.Drawing.Size(48, 14);
            this.labelControl2.TabIndex = 0;
            this.labelControl2.Text = "組裝線：";
            // 
            // lblChoseProcessCount
            // 
            this.lblChoseProcessCount.Location = new System.Drawing.Point(78, 12);
            this.lblChoseProcessCount.Name = "lblChoseProcessCount";
            this.lblChoseProcessCount.Size = new System.Drawing.Size(7, 14);
            this.lblChoseProcessCount.TabIndex = 0;
            this.lblChoseProcessCount.Text = "0";
            // 
            // labelControl5
            // 
            this.labelControl5.Location = new System.Drawing.Point(5, 12);
            this.labelControl5.Name = "labelControl5";
            this.labelControl5.Size = new System.Drawing.Size(72, 14);
            this.labelControl5.TabIndex = 0;
            this.labelControl5.Text = "已選工序數：";
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(156, 12);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(36, 14);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "車間：";
            // 
            // colQNQty
            // 
            this.colQNQty.Caption = "頁簽數";
            this.colQNQty.FieldName = "QNQty";
            this.colQNQty.Name = "colQNQty";
            this.colQNQty.Visible = true;
            this.colQNQty.VisibleIndex = 6;
            this.colQNQty.Width = 80;
            // 
            // colIsAuditedAtPreDay
            // 
            this.colIsAuditedAtPreDay.Caption = "前天曾檢";
            this.colIsAuditedAtPreDay.ColumnEdit = this.repItemImgComboBox_PreDay;
            this.colIsAuditedAtPreDay.FieldName = "IsAuditedAtPreDay";
            this.colIsAuditedAtPreDay.Name = "colIsAuditedAtPreDay";
            this.colIsAuditedAtPreDay.Visible = true;
            this.colIsAuditedAtPreDay.VisibleIndex = 20;
            this.colIsAuditedAtPreDay.Width = 86;
            // 
            // repItemImgComboBox_PreDay
            // 
            this.repItemImgComboBox_PreDay.AutoHeight = false;
            this.repItemImgComboBox_PreDay.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repItemImgComboBox_PreDay.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("", false, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1)});
            this.repItemImgComboBox_PreDay.Name = "repItemImgComboBox_PreDay";
            // 
            // colIsFalseAtPreDay
            // 
            this.colIsFalseAtPreDay.Caption = "前天曾有瑕疵";
            this.colIsFalseAtPreDay.ColumnEdit = this.repItemImgComboBox_PreDay;
            this.colIsFalseAtPreDay.FieldName = "IsFalseAtPreDay";
            this.colIsFalseAtPreDay.Name = "colIsFalseAtPreDay";
            this.colIsFalseAtPreDay.Visible = true;
            this.colIsFalseAtPreDay.VisibleIndex = 21;
            this.colIsFalseAtPreDay.Width = 92;
            // 
            // colIsCoreProcess
            // 
            this.colIsCoreProcess.Caption = "核心工序否";
            this.colIsCoreProcess.FieldName = "IsCoreProcess";
            this.colIsCoreProcess.Name = "colIsCoreProcess";
            this.colIsCoreProcess.Visible = true;
            this.colIsCoreProcess.VisibleIndex = 10;
            this.colIsCoreProcess.Width = 109;
            // 
            // colPlanQty
            // 
            this.colPlanQty.Caption = "本次計劃次數";
            this.colPlanQty.FieldName = "PlanQty";
            this.colPlanQty.Name = "colPlanQty";
            this.colPlanQty.Visible = true;
            this.colPlanQty.VisibleIndex = 14;
            this.colPlanQty.Width = 96;
            // 
            // colDefaultAuditQty
            // 
            this.colDefaultAuditQty.Caption = "默認審查次數";
            this.colDefaultAuditQty.FieldName = "DefaultAuditQty";
            this.colDefaultAuditQty.Name = "colDefaultAuditQty";
            this.colDefaultAuditQty.Visible = true;
            this.colDefaultAuditQty.VisibleIndex = 12;
            this.colDefaultAuditQty.Width = 121;
            // 
            // colTotalAuditQty
            // 
            this.colTotalAuditQty.Caption = "已檢次數";
            this.colTotalAuditQty.FieldName = "TotalAuditQty";
            this.colTotalAuditQty.Name = "colTotalAuditQty";
            this.colTotalAuditQty.Visible = true;
            this.colTotalAuditQty.VisibleIndex = 13;
            // 
            // colProcessSAH
            // 
            this.colProcessSAH.Caption = "工序標準時長";
            this.colProcessSAH.FieldName = "ProcessSAH";
            this.colProcessSAH.Name = "colProcessSAH";
            this.colProcessSAH.Visible = true;
            this.colProcessSAH.VisibleIndex = 11;
            this.colProcessSAH.Width = 120;
            // 
            // colSchemaQty
            // 
            this.colSchemaQty.Caption = "本次安排次數";
            this.colSchemaQty.ColumnEdit = this.repositoryItemSpinEdit1;
            this.colSchemaQty.FieldName = "SchemaQty";
            this.colSchemaQty.Name = "colSchemaQty";
            this.colSchemaQty.Visible = true;
            this.colSchemaQty.VisibleIndex = 15;
            this.colSchemaQty.Width = 107;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // barBtn_AttachQNTask
            // 
            this.barBtn_AttachQNTask.Caption = "補充QN計劃";
            this.barBtn_AttachQNTask.Id = 60;
            this.barBtn_AttachQNTask.Name = "barBtn_AttachQNTask";
            this.barBtn_AttachQNTask.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtn_AttachQNTask_ItemClick);
            // 
            // QCTaskSchemaDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panelControl1);
            this.Name = "QCTaskSchemaDetailListForm";
            this.Size = new System.Drawing.Size(1142, 467);
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.QCTaskSchemaDetailListFrom_Load);
            this.Controls.SetChildIndex(this.panelControl1, 0);
            this.Controls.SetChildIndex(this.objListGridControl, 0);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.panelControl1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.textEdit_ProcessCode.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit_ProcessStep.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit_WorkLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageComboBoxEdit_WorkShop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repItemImgComboBox_PreDay)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkShop;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkLine;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNO;
        private DevExpress.XtraGrid.Columns.GridColumn colWONO;
        private DevExpress.XtraGrid.Columns.GridColumn colRWONO;
        private DevExpress.XtraGrid.Columns.GridColumn colColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colQNNO;
        private DevExpress.XtraGrid.Columns.GridColumn colStyleNO;
        private DevExpress.XtraGrid.Columns.GridColumn colProcessSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colProcessCode;
        private DevExpress.XtraGrid.Columns.GridColumn colProcessName;
        private DevExpress.XtraGrid.Columns.GridColumn colProcessStep;
        private DevExpress.XtraGrid.Columns.GridColumn colIsInSchema;
        private DevExpress.XtraEditors.PanelControl panelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_ChoseALL;
        private DevExpress.XtraEditors.TextEdit textEdit_ProcessCode;
        private DevExpress.XtraEditors.LabelControl labelControl4;
        private DevExpress.XtraEditors.ImageComboBoxEdit imageComboBoxEdit_ProcessStep;
        private DevExpress.XtraEditors.ImageComboBoxEdit imageComboBoxEdit_WorkLine;
        private DevExpress.XtraEditors.LabelControl labelControl3;
        private DevExpress.XtraEditors.ImageComboBoxEdit imageComboBoxEdit_WorkShop;
        private DevExpress.XtraEditors.LabelControl labelControl2;
        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.SimpleButton sBtn_UnChoseALL;
        private DevExpress.XtraEditors.SimpleButton sBtn_Clear;
        private DevExpress.XtraEditors.LabelControl lblChoseProcessCount;
        private DevExpress.XtraEditors.LabelControl labelControl5;
        private DevExpress.XtraGrid.Columns.GridColumn colQNQty;
        private DevExpress.XtraGrid.Columns.GridColumn colIsAuditedAtPreDay;
        private DevExpress.XtraGrid.Columns.GridColumn colIsFalseAtPreDay;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox repItemImgComboBox_PreDay;
        private DevExpress.XtraGrid.Columns.GridColumn colIsCoreProcess;
        private DevExpress.XtraGrid.Columns.GridColumn colPlanQty;
        private DevExpress.XtraGrid.Columns.GridColumn colProcessSAH;
        private DevExpress.XtraGrid.Columns.GridColumn colDefaultAuditQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalAuditQty;
        private DevExpress.XtraGrid.Columns.GridColumn colSchemaQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        private DevExpress.XtraBars.BarButtonItem barBtn_AttachQNTask;
    }
}
