namespace PH.LWPM.UI.ActionLog
{
    partial class ActionLogHeaderDetailForm
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
            System.Windows.Forms.Label logNOLabel;
            System.Windows.Forms.Label logTypeLabel;
            System.Windows.Forms.Label startDateLabel;
            System.Windows.Forms.Label planCompleteDateLabel;
            System.Windows.Forms.Label subjectLabel1;
            System.Windows.Forms.Label factoryLabel;
            System.Windows.Forms.Label workshopLabel;
            System.Windows.Forms.Label lineLabel;
            System.Windows.Forms.Label label1;
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule4 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule3 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule2 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule conditionValidatonRule1 = new DevExpress.XtraEditors.DXErrorProvider.ConditionValidatonRule();
            this.edtLogNO = new DevExpress.XtraEditors.TextEdit();
            this.cbLogType = new DevExpress.XtraEditors.ComboBoxEdit();
            this.edtStartDate = new DevExpress.XtraEditors.DateEdit();
            this.edtPlanCompleteDate = new DevExpress.XtraEditors.DateEdit();
            this.chkIsCompleted = new DevExpress.XtraEditors.CheckEdit();
            this.subjectMemoEdit = new DevExpress.XtraEditors.MemoEdit();
            this.cbFactory = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbWorkshop = new DevExpress.XtraEditors.ComboBoxEdit();
            this.cbLine = new DevExpress.XtraEditors.ComboBoxEdit();
            this.actionLogDetailListForm1 = new PH.LWPM.UI.ActionLog.ActionLogDetailListForm();
            this.edtSender = new DevExpress.XtraEditors.TextEdit();
            logNOLabel = new System.Windows.Forms.Label();
            logTypeLabel = new System.Windows.Forms.Label();
            startDateLabel = new System.Windows.Forms.Label();
            planCompleteDateLabel = new System.Windows.Forms.Label();
            subjectLabel1 = new System.Windows.Forms.Label();
            factoryLabel = new System.Windows.Forms.Label();
            workshopLabel = new System.Windows.Forms.Label();
            lineLabel = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).BeginInit();
            this.headerTitleBar.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).BeginInit();
            this.panelControl1.SuspendLayout();
            this.xtraTabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).BeginInit();
            this.xtraTabControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLogNO.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLogType.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPlanCompleteDate.Properties.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPlanCompleteDate.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkIsCompleted.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.subjectMemoEdit.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkshop.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLine.Properties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSender.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // objEditBar
            // 
            this.objEditBar.Appearance.Options.UseTextOptions = true;
            // 
            // splitterControl1
            // 
            this.splitterControl1.Location = new System.Drawing.Point(0, 218);
            this.splitterControl1.Size = new System.Drawing.Size(2917, 6);
            this.PlatetoolTipController.SetSuperTip(this.splitterControl1, null);
            // 
            // headerTitleBar
            // 
            this.headerTitleBar.Controls.Add(label1);
            this.headerTitleBar.Controls.Add(this.edtSender);
            this.headerTitleBar.Controls.Add(lineLabel);
            this.headerTitleBar.Controls.Add(this.cbLine);
            this.headerTitleBar.Controls.Add(workshopLabel);
            this.headerTitleBar.Controls.Add(this.cbWorkshop);
            this.headerTitleBar.Controls.Add(factoryLabel);
            this.headerTitleBar.Controls.Add(this.cbFactory);
            this.headerTitleBar.Controls.Add(subjectLabel1);
            this.headerTitleBar.Controls.Add(this.subjectMemoEdit);
            this.headerTitleBar.Controls.Add(this.chkIsCompleted);
            this.headerTitleBar.Controls.Add(planCompleteDateLabel);
            this.headerTitleBar.Controls.Add(this.edtPlanCompleteDate);
            this.headerTitleBar.Controls.Add(startDateLabel);
            this.headerTitleBar.Controls.Add(this.edtStartDate);
            this.headerTitleBar.Controls.Add(logTypeLabel);
            this.headerTitleBar.Controls.Add(this.cbLogType);
            this.headerTitleBar.Controls.Add(logNOLabel);
            this.headerTitleBar.Controls.Add(this.edtLogNO);
            this.headerTitleBar.Location = new System.Drawing.Point(0, 27);
            this.headerTitleBar.Size = new System.Drawing.Size(2917, 191);
            this.PlatetoolTipController.SetSuperTip(this.headerTitleBar, null);
            this.headerTitleBar.Controls.SetChildIndex(this.sBtnCollapse, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.edtLogNO, 0);
            this.headerTitleBar.Controls.SetChildIndex(logNOLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.cbLogType, 0);
            this.headerTitleBar.Controls.SetChildIndex(logTypeLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.edtStartDate, 0);
            this.headerTitleBar.Controls.SetChildIndex(startDateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.edtPlanCompleteDate, 0);
            this.headerTitleBar.Controls.SetChildIndex(planCompleteDateLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.chkIsCompleted, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.subjectMemoEdit, 0);
            this.headerTitleBar.Controls.SetChildIndex(subjectLabel1, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.cbFactory, 0);
            this.headerTitleBar.Controls.SetChildIndex(factoryLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.cbWorkshop, 0);
            this.headerTitleBar.Controls.SetChildIndex(workshopLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.cbLine, 0);
            this.headerTitleBar.Controls.SetChildIndex(lineLabel, 0);
            this.headerTitleBar.Controls.SetChildIndex(this.edtSender, 0);
            this.headerTitleBar.Controls.SetChildIndex(label1, 0);
            // 
            // panelControl1
            // 
            this.panelControl1.Location = new System.Drawing.Point(0, 224);
            this.panelControl1.Size = new System.Drawing.Size(2917, 358);
            this.PlatetoolTipController.SetSuperTip(this.panelControl1, null);
            // 
            // xtraTabPage1
            // 
            this.xtraTabPage1.Controls.Add(this.actionLogDetailListForm1);
            this.xtraTabPage1.Size = new System.Drawing.Size(2904, 322);
            // 
            // xtraTabControl1
            // 
            this.xtraTabControl1.Size = new System.Drawing.Size(2913, 354);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.ActionLogHeader);
            // 
            // sBtnCollapse
            // 
            this.sBtnCollapse.Location = new System.Drawing.Point(26511, 0);
            // 
            // logNOLabel
            // 
            logNOLabel.AutoSize = true;
            logNOLabel.Location = new System.Drawing.Point(27, 38);
            logNOLabel.Name = "logNOLabel";
            logNOLabel.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(logNOLabel, null);
            logNOLabel.TabIndex = 1;
            logNOLabel.Text = "Log NO:";
            // 
            // logTypeLabel
            // 
            logTypeLabel.AutoSize = true;
            logTypeLabel.Location = new System.Drawing.Point(15, 67);
            logTypeLabel.Name = "logTypeLabel";
            logTypeLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(logTypeLabel, null);
            logTypeLabel.TabIndex = 3;
            logTypeLabel.Text = "Log Type:";
            // 
            // startDateLabel
            // 
            startDateLabel.AutoSize = true;
            startDateLabel.Location = new System.Drawing.Point(249, 38);
            startDateLabel.Name = "startDateLabel";
            startDateLabel.Size = new System.Drawing.Size(71, 12);
            this.PlatetoolTipController.SetSuperTip(startDateLabel, null);
            startDateLabel.TabIndex = 7;
            startDateLabel.Text = "Start Date:";
            // 
            // planCompleteDateLabel
            // 
            planCompleteDateLabel.AutoSize = true;
            planCompleteDateLabel.Location = new System.Drawing.Point(201, 67);
            planCompleteDateLabel.Name = "planCompleteDateLabel";
            planCompleteDateLabel.Size = new System.Drawing.Size(119, 12);
            this.PlatetoolTipController.SetSuperTip(planCompleteDateLabel, null);
            planCompleteDateLabel.TabIndex = 9;
            planCompleteDateLabel.Text = "Plan Complete Date:";
            // 
            // subjectLabel1
            // 
            subjectLabel1.AutoSize = true;
            subjectLabel1.Location = new System.Drawing.Point(458, 35);
            subjectLabel1.Name = "subjectLabel1";
            subjectLabel1.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(subjectLabel1, null);
            subjectLabel1.TabIndex = 13;
            subjectLabel1.Text = "Subject:";
            // 
            // factoryLabel
            // 
            factoryLabel.AutoSize = true;
            factoryLabel.Location = new System.Drawing.Point(21, 97);
            factoryLabel.Name = "factoryLabel";
            factoryLabel.Size = new System.Drawing.Size(53, 12);
            this.PlatetoolTipController.SetSuperTip(factoryLabel, null);
            factoryLabel.TabIndex = 14;
            factoryLabel.Text = "Factory:";
            // 
            // workshopLabel
            // 
            workshopLabel.AutoSize = true;
            workshopLabel.Location = new System.Drawing.Point(15, 127);
            workshopLabel.Name = "workshopLabel";
            workshopLabel.Size = new System.Drawing.Size(59, 12);
            this.PlatetoolTipController.SetSuperTip(workshopLabel, null);
            workshopLabel.TabIndex = 15;
            workshopLabel.Text = "Workshop:";
            // 
            // lineLabel
            // 
            lineLabel.AutoSize = true;
            lineLabel.Location = new System.Drawing.Point(39, 157);
            lineLabel.Name = "lineLabel";
            lineLabel.Size = new System.Drawing.Size(35, 12);
            this.PlatetoolTipController.SetSuperTip(lineLabel, null);
            lineLabel.TabIndex = 16;
            lineLabel.Text = "Line:";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(273, 97);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(47, 12);
            this.PlatetoolTipController.SetSuperTip(label1, null);
            label1.TabIndex = 18;
            label1.Text = "Sender:";
            // 
            // edtLogNO
            // 
            this.edtLogNO.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LogNO", true));
            this.edtLogNO.Location = new System.Drawing.Point(80, 34);
            this.edtLogNO.Name = "edtLogNO";
            this.edtLogNO.Properties.ReadOnly = true;
            this.edtLogNO.Size = new System.Drawing.Size(112, 21);
            this.edtLogNO.TabIndex = 2;
            // 
            // cbLogType
            // 
            this.cbLogType.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "LogType", true));
            this.cbLogType.Location = new System.Drawing.Point(80, 64);
            this.cbLogType.Name = "cbLogType";
            this.cbLogType.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbLogType.Properties.Items.AddRange(new object[] {
            "Factory",
            "Workshop",
            "Line"});
            this.cbLogType.Size = new System.Drawing.Size(112, 21);
            this.cbLogType.TabIndex = 4;
            conditionValidatonRule4.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule4.ErrorText = "Please input log type";
            conditionValidatonRule4.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider.SetValidationRule(this.cbLogType, conditionValidatonRule4);
            this.cbLogType.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.cbLogType_CloseUp);
            // 
            // edtStartDate
            // 
            this.edtStartDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "StartDate", true));
            this.edtStartDate.EditValue = null;
            this.edtStartDate.Location = new System.Drawing.Point(326, 34);
            this.edtStartDate.Name = "edtStartDate";
            this.edtStartDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtStartDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtStartDate.Size = new System.Drawing.Size(112, 21);
            this.edtStartDate.TabIndex = 8;
            conditionValidatonRule3.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule3.ErrorText = "Please input start date";
            conditionValidatonRule3.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider.SetValidationRule(this.edtStartDate, conditionValidatonRule3);
            // 
            // edtPlanCompleteDate
            // 
            this.edtPlanCompleteDate.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "PlanCompleteDate", true));
            this.edtPlanCompleteDate.EditValue = null;
            this.edtPlanCompleteDate.Location = new System.Drawing.Point(326, 64);
            this.edtPlanCompleteDate.Name = "edtPlanCompleteDate";
            this.edtPlanCompleteDate.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.edtPlanCompleteDate.Properties.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.edtPlanCompleteDate.Size = new System.Drawing.Size(112, 21);
            this.edtPlanCompleteDate.TabIndex = 10;
            // 
            // chkIsCompleted
            // 
            this.chkIsCompleted.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "IsCompleted", true));
            this.chkIsCompleted.Location = new System.Drawing.Point(324, 124);
            this.chkIsCompleted.Name = "chkIsCompleted";
            this.chkIsCompleted.Properties.Caption = "Completed";
            this.chkIsCompleted.Size = new System.Drawing.Size(108, 19);
            this.chkIsCompleted.TabIndex = 12;
            // 
            // subjectMemoEdit
            // 
            this.subjectMemoEdit.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Subject", true));
            this.subjectMemoEdit.Location = new System.Drawing.Point(517, 33);
            this.subjectMemoEdit.Name = "subjectMemoEdit";
            this.subjectMemoEdit.Size = new System.Drawing.Size(488, 142);
            this.subjectMemoEdit.TabIndex = 14;
            conditionValidatonRule2.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule2.ErrorText = "Please input subject";
            conditionValidatonRule2.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider.SetValidationRule(this.subjectMemoEdit, conditionValidatonRule2);
            // 
            // cbFactory
            // 
            this.cbFactory.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Factory", true));
            this.cbFactory.Location = new System.Drawing.Point(80, 94);
            this.cbFactory.Name = "cbFactory";
            this.cbFactory.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbFactory.Size = new System.Drawing.Size(112, 21);
            this.cbFactory.TabIndex = 15;
            conditionValidatonRule1.ConditionOperator = DevExpress.XtraEditors.DXErrorProvider.ConditionOperator.IsNotBlank;
            conditionValidatonRule1.ErrorText = "Please input factory";
            conditionValidatonRule1.ErrorType = DevExpress.XtraEditors.DXErrorProvider.ErrorType.Critical;
            this.dxValidationProvider.SetValidationRule(this.cbFactory, conditionValidatonRule1);
            this.cbFactory.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.cbFactory_CloseUp);
            // 
            // cbWorkshop
            // 
            this.cbWorkshop.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Workshop", true));
            this.cbWorkshop.Location = new System.Drawing.Point(80, 124);
            this.cbWorkshop.Name = "cbWorkshop";
            this.cbWorkshop.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbWorkshop.Size = new System.Drawing.Size(112, 21);
            this.cbWorkshop.TabIndex = 16;
            this.cbWorkshop.CloseUp += new DevExpress.XtraEditors.Controls.CloseUpEventHandler(this.cbWorkshop_CloseUp);
            // 
            // cbLine
            // 
            this.cbLine.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Line", true));
            this.cbLine.Location = new System.Drawing.Point(80, 154);
            this.cbLine.Name = "cbLine";
            this.cbLine.Properties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.cbLine.Size = new System.Drawing.Size(112, 21);
            this.cbLine.TabIndex = 17;
            // 
            // actionLogDetailListForm1
            // 
            this.actionLogDetailListForm1.AllowAddRow = true;
            this.actionLogDetailListForm1.AutoOpenDetailForm = false;
            this.actionLogDetailListForm1.DataContext = null;
            this.actionLogDetailListForm1.DataSource = null;
            this.actionLogDetailListForm1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.actionLogDetailListForm1.EditorTypeName = null;
            this.actionLogDetailListForm1.FileID = null;
            this.actionLogDetailListForm1.FirstForm = null;
            this.actionLogDetailListForm1.FormName = "ActionLogDetailListForm";
            this.actionLogDetailListForm1.FormState = PH.Platform.BO.Interface.WorkMode.New;
            this.actionLogDetailListForm1.FormTitle = "PH.LWPM.UI.ActionLog.ActionLogDetailListForm";
            this.actionLogDetailListForm1.IsCancelList = false;
            this.actionLogDetailListForm1.IsShowPivotTable = false;
            this.actionLogDetailListForm1.LayoutData = null;
            this.actionLogDetailListForm1.LayoutName = null;
            this.actionLogDetailListForm1.ListForm = null;
            this.actionLogDetailListForm1.Location = new System.Drawing.Point(0, 0);
            this.actionLogDetailListForm1.MenuID = ((long)(0));
            this.actionLogDetailListForm1.Name = "actionLogDetailListForm1";
            this.actionLogDetailListForm1.NeedCheckPermission = true;
            this.actionLogDetailListForm1.NextForm = null;
            this.actionLogDetailListForm1.ParentForm = null;
            this.actionLogDetailListForm1.PrevForm = null;
            this.actionLogDetailListForm1.RowChangeAutoSave = true;
            this.actionLogDetailListForm1.ShowMultiCheck = false;
            this.actionLogDetailListForm1.SideProgramID = null;
            this.actionLogDetailListForm1.Size = new System.Drawing.Size(2904, 322);
            this.PlatetoolTipController.SetSuperTip(this.actionLogDetailListForm1, null);
            this.actionLogDetailListForm1.TabControls = null;
            this.actionLogDetailListForm1.TabIndex = 0;
            this.actionLogDetailListForm1.TabPage = null;
            // 
            // edtSender
            // 
            this.edtSender.DataBindings.Add(new System.Windows.Forms.Binding("EditValue", this.BindingSource, "Sender", true));
            this.edtSender.Location = new System.Drawing.Point(326, 94);
            this.edtSender.Name = "edtSender";
            this.edtSender.Properties.ReadOnly = true;
            this.edtSender.Size = new System.Drawing.Size(112, 21);
            this.edtSender.TabIndex = 19;
            // 
            // ActionLogHeaderDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ActionLogHeaderDetailForm";
            this.Size = new System.Drawing.Size(2917, 582);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objEdtbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.headerTitleBar)).EndInit();
            this.headerTitleBar.ResumeLayout(false);
            this.headerTitleBar.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.panelControl1)).EndInit();
            this.panelControl1.ResumeLayout(false);
            this.xtraTabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.xtraTabControl1)).EndInit();
            this.xtraTabControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dxValidationProvider)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtLogNO.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLogType.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtStartDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPlanCompleteDate.Properties.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtPlanCompleteDate.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.chkIsCompleted.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.subjectMemoEdit.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbFactory.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbWorkshop.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.cbLine.Properties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.edtSender.Properties)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.TextEdit edtLogNO;
        private DevExpress.XtraEditors.ComboBoxEdit cbLogType;
        private DevExpress.XtraEditors.DateEdit edtStartDate;
        private DevExpress.XtraEditors.DateEdit edtPlanCompleteDate;
        private DevExpress.XtraEditors.CheckEdit chkIsCompleted;
        private DevExpress.XtraEditors.MemoEdit subjectMemoEdit;
        private DevExpress.XtraEditors.ComboBoxEdit cbFactory;
        private DevExpress.XtraEditors.ComboBoxEdit cbWorkshop;
        private DevExpress.XtraEditors.ComboBoxEdit cbLine;
        private ActionLogDetailListForm actionLogDetailListForm1;
        private DevExpress.XtraEditors.TextEdit edtSender;
    }
}
