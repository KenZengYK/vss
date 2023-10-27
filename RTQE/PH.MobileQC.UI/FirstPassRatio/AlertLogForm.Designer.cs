namespace PH.MobileQC.UI.FirstPassRatio
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
            this.btnCancel = new DevExpress.XtraEditors.SimpleButton();
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bsAlertLogHeader = new System.Windows.Forms.BindingSource(this.components);
            this.gridAlertLogHeader = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colAcitonID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemButtonEdit_ItemNo = new DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit();
            this.colItemSubject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit_Date = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.PlanEndDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit_IteCompleted = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colCompletedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridControl2 = new DevExpress.XtraGrid.GridControl();
            this.gridAlertLogDetail = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colStartFollowDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit_FollowDate = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.colFollowCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSender = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFollowSummary = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnAddAlertLog = new DevExpress.XtraEditors.SimpleButton();
            this.btnSaveAlertLog = new DevExpress.XtraEditors.SimpleButton();
            this.btnAdd = new DevExpress.XtraEditors.SimpleButton();
            this.btnDelete = new DevExpress.XtraEditors.SimpleButton();
            this.btnSendEmail = new DevExpress.XtraEditors.SimpleButton();
            this.btnSave = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsAlertLogHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridAlertLogHeader)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ItemNo)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date.VistaTimeProperties)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_IteCompleted)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridAlertLogDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Location = new System.Drawing.Point(295, 441);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(59, 23);
            this.btnCancel.TabIndex = 2;
            this.btnCancel.Text = "Exit";
            // 
            // gridControl1
            // 
            this.gridControl1.DataSource = this.bsAlertLogHeader;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(12, 12);
            this.gridControl1.MainView = this.gridAlertLogHeader;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit_IteCompleted,
            this.repositoryItemDateEdit_Date,
            this.repositoryItemButtonEdit_ItemNo});
            this.gridControl1.Size = new System.Drawing.Size(1089, 159);
            this.gridControl1.TabIndex = 3;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridAlertLogHeader});
            // 
            // bsAlertLogHeader
            // 
            this.bsAlertLogHeader.DataSource = typeof(PH.MobileQC.BO.FirstPass_AlertLogHeader);
            // 
            // gridAlertLogHeader
            // 
            this.gridAlertLogHeader.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridAlertLogHeader.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridAlertLogHeader.ColumnPanelRowHeight = 40;
            this.gridAlertLogHeader.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colAcitonID,
            this.colItemNo,
            this.colItemSubject,
            this.colStartDate,
            this.PlanEndDate,
            this.colIsCompleted,
            this.colCompletedDate});
            this.gridAlertLogHeader.GridControl = this.gridControl1;
            this.gridAlertLogHeader.Name = "gridAlertLogHeader";
            this.gridAlertLogHeader.OptionsView.ColumnAutoWidth = false;
            this.gridAlertLogHeader.OptionsView.ShowDetailButtons = false;
            this.gridAlertLogHeader.OptionsView.ShowGroupPanel = false;
            // 
            // colAcitonID
            // 
            this.colAcitonID.Caption = "log NO";
            this.colAcitonID.FieldName = "AcitonID";
            this.colAcitonID.Name = "colAcitonID";
            this.colAcitonID.OptionsColumn.AllowEdit = false;
            this.colAcitonID.Visible = true;
            this.colAcitonID.VisibleIndex = 0;
            this.colAcitonID.Width = 93;
            // 
            // colItemNo
            // 
            this.colItemNo.Caption = "Item code";
            this.colItemNo.ColumnEdit = this.repositoryItemButtonEdit_ItemNo;
            this.colItemNo.FieldName = "ItemNo";
            this.colItemNo.Name = "colItemNo";
            this.colItemNo.Visible = true;
            this.colItemNo.VisibleIndex = 1;
            this.colItemNo.Width = 80;
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
            this.colItemSubject.Caption = "Item log";
            this.colItemSubject.FieldName = "ItemSubject";
            this.colItemSubject.Name = "colItemSubject";
            this.colItemSubject.Visible = true;
            this.colItemSubject.VisibleIndex = 2;
            this.colItemSubject.Width = 527;
            // 
            // colStartDate
            // 
            this.colStartDate.Caption = "Start\r\ndd";
            this.colStartDate.ColumnEdit = this.repositoryItemDateEdit_Date;
            this.colStartDate.DisplayFormat.FormatString = "MM-dd";
            this.colStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStartDate.FieldName = "StartDate";
            this.colStartDate.Name = "colStartDate";
            this.colStartDate.Visible = true;
            this.colStartDate.VisibleIndex = 3;
            this.colStartDate.Width = 67;
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
            // PlanEndDate
            // 
            this.PlanEndDate.Caption = "Target\r\nCompleted dd";
            this.PlanEndDate.ColumnEdit = this.repositoryItemDateEdit_Date;
            this.PlanEndDate.DisplayFormat.FormatString = "MM-dd";
            this.PlanEndDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.PlanEndDate.FieldName = "PlanEndDate";
            this.PlanEndDate.Name = "PlanEndDate";
            this.PlanEndDate.Visible = true;
            this.PlanEndDate.VisibleIndex = 4;
            this.PlanEndDate.Width = 99;
            // 
            // colIsCompleted
            // 
            this.colIsCompleted.Caption = "Completed";
            this.colIsCompleted.ColumnEdit = this.repositoryItemCheckEdit_IteCompleted;
            this.colIsCompleted.FieldName = "IsCompleted";
            this.colIsCompleted.Name = "colIsCompleted";
            this.colIsCompleted.Visible = true;
            this.colIsCompleted.VisibleIndex = 5;
            this.colIsCompleted.Width = 81;
            // 
            // repositoryItemCheckEdit_IteCompleted
            // 
            this.repositoryItemCheckEdit_IteCompleted.AutoHeight = false;
            this.repositoryItemCheckEdit_IteCompleted.Name = "repositoryItemCheckEdit_IteCompleted";
            this.repositoryItemCheckEdit_IteCompleted.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            this.repositoryItemCheckEdit_IteCompleted.CheckedChanged += new System.EventHandler(this.repositoryItemCheckEdit_IteCompleted_CheckedChanged);
            // 
            // colCompletedDate
            // 
            this.colCompletedDate.Caption = "Completed\r\ndd";
            this.colCompletedDate.ColumnEdit = this.repositoryItemDateEdit_Date;
            this.colCompletedDate.DisplayFormat.FormatString = "MM-dd";
            this.colCompletedDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCompletedDate.FieldName = "CompletedDate";
            this.colCompletedDate.Name = "colCompletedDate";
            this.colCompletedDate.OptionsColumn.AllowEdit = false;
            this.colCompletedDate.Visible = true;
            this.colCompletedDate.VisibleIndex = 6;
            this.colCompletedDate.Width = 81;
            // 
            // gridControl2
            // 
            this.gridControl2.DataMember = "FirstPass_AlertLogDetails";
            this.gridControl2.DataSource = this.bsAlertLogHeader;
            this.gridControl2.EmbeddedNavigator.Name = "";
            this.gridControl2.Location = new System.Drawing.Point(12, 205);
            this.gridControl2.MainView = this.gridAlertLogDetail;
            this.gridControl2.Name = "gridControl2";
            this.gridControl2.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemDateEdit_FollowDate});
            this.gridControl2.Size = new System.Drawing.Size(1089, 222);
            this.gridControl2.TabIndex = 4;
            this.gridControl2.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridAlertLogDetail});
            // 
            // gridAlertLogDetail
            // 
            this.gridAlertLogDetail.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.gridAlertLogDetail.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridAlertLogDetail.ColumnPanelRowHeight = 40;
            this.gridAlertLogDetail.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colStartFollowDate,
            this.colFollowCount,
            this.colSender,
            this.colFollowSummary});
            this.gridAlertLogDetail.GridControl = this.gridControl2;
            this.gridAlertLogDetail.Name = "gridAlertLogDetail";
            this.gridAlertLogDetail.OptionsView.ColumnAutoWidth = false;
            this.gridAlertLogDetail.OptionsView.ShowDetailButtons = false;
            // 
            // colStartFollowDate
            // 
            this.colStartFollowDate.Caption = "Start/follow up\r\ndd/time";
            this.colStartFollowDate.ColumnEdit = this.repositoryItemDateEdit_FollowDate;
            this.colStartFollowDate.DisplayFormat.FormatString = "MM-dd HH:mm";
            this.colStartFollowDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colStartFollowDate.FieldName = "StartFollowDate";
            this.colStartFollowDate.Name = "colStartFollowDate";
            this.colStartFollowDate.OptionsColumn.AllowEdit = false;
            this.colStartFollowDate.Visible = true;
            this.colStartFollowDate.VisibleIndex = 0;
            this.colStartFollowDate.Width = 107;
            // 
            // repositoryItemDateEdit_FollowDate
            // 
            this.repositoryItemDateEdit_FollowDate.AutoHeight = false;
            this.repositoryItemDateEdit_FollowDate.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit_FollowDate.DisplayFormat.FormatString = "MM- dd HH:mm";
            this.repositoryItemDateEdit_FollowDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.repositoryItemDateEdit_FollowDate.Name = "repositoryItemDateEdit_FollowDate";
            this.repositoryItemDateEdit_FollowDate.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // colFollowCount
            // 
            this.colFollowCount.Caption = "Follow up\r\ncount";
            this.colFollowCount.FieldName = "FollowCount";
            this.colFollowCount.Name = "colFollowCount";
            this.colFollowCount.OptionsColumn.AllowEdit = false;
            this.colFollowCount.Visible = true;
            this.colFollowCount.VisibleIndex = 1;
            this.colFollowCount.Width = 74;
            // 
            // colSender
            // 
            this.colSender.Caption = "Sender";
            this.colSender.FieldName = "Sender";
            this.colSender.Name = "colSender";
            this.colSender.OptionsColumn.AllowEdit = false;
            this.colSender.Visible = true;
            this.colSender.VisibleIndex = 2;
            this.colSender.Width = 61;
            // 
            // colFollowSummary
            // 
            this.colFollowSummary.Caption = "Follow up summary";
            this.colFollowSummary.FieldName = "FollowSummary";
            this.colFollowSummary.Name = "colFollowSummary";
            this.colFollowSummary.Visible = true;
            this.colFollowSummary.VisibleIndex = 3;
            this.colFollowSummary.Width = 712;
            // 
            // btnAddAlertLog
            // 
            this.btnAddAlertLog.Location = new System.Drawing.Point(34, 177);
            this.btnAddAlertLog.Name = "btnAddAlertLog";
            this.btnAddAlertLog.Size = new System.Drawing.Size(107, 23);
            this.btnAddAlertLog.TabIndex = 5;
            this.btnAddAlertLog.Text = "Add Log";
            this.btnAddAlertLog.Click += new System.EventHandler(this.btnAddAlertLog_Click);
            // 
            // btnSaveAlertLog
            // 
            this.btnSaveAlertLog.Location = new System.Drawing.Point(167, 177);
            this.btnSaveAlertLog.Name = "btnSaveAlertLog";
            this.btnSaveAlertLog.Size = new System.Drawing.Size(107, 23);
            this.btnSaveAlertLog.TabIndex = 6;
            this.btnSaveAlertLog.Text = "Save Log";
            this.btnSaveAlertLog.Click += new System.EventHandler(this.btnSaveAlertLog_Click);
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(12, 441);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(59, 23);
            this.btnAdd.TabIndex = 7;
            this.btnAdd.Text = "Add";
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.Location = new System.Drawing.Point(77, 441);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(59, 23);
            this.btnDelete.TabIndex = 8;
            this.btnDelete.Text = "Delete";
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // btnSendEmail
            // 
            this.btnSendEmail.Location = new System.Drawing.Point(210, 441);
            this.btnSendEmail.Name = "btnSendEmail";
            this.btnSendEmail.Size = new System.Drawing.Size(79, 23);
            this.btnSendEmail.TabIndex = 9;
            this.btnSendEmail.Text = "Send email";
            this.btnSendEmail.Click += new System.EventHandler(this.btnSendEmail_Click);
            // 
            // btnSave
            // 
            this.btnSave.Location = new System.Drawing.Point(142, 441);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(59, 23);
            this.btnSave.TabIndex = 10;
            this.btnSave.Text = "Save";
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // AlertLogForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1115, 473);
            this.Controls.Add(this.btnSave);
            this.Controls.Add(this.btnSendEmail);
            this.Controls.Add(this.btnDelete);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.btnSaveAlertLog);
            this.Controls.Add(this.btnAddAlertLog);
            this.Controls.Add(this.gridControl2);
            this.Controls.Add(this.gridControl1);
            this.Controls.Add(this.btnCancel);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "AlertLogForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Alert Log Form";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bsAlertLogHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridAlertLogHeader)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemButtonEdit_ItemNo)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_Date)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit_IteCompleted)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridAlertLogDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit_FollowDate)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btnCancel;
        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.Grid.GridView gridAlertLogHeader;
        private DevExpress.XtraGrid.Columns.GridColumn colAcitonID;
        private DevExpress.XtraGrid.Columns.GridColumn colItemNo;
        private DevExpress.XtraGrid.Columns.GridColumn colItemSubject;
        private DevExpress.XtraGrid.GridControl gridControl2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridAlertLogDetail;
        private DevExpress.XtraGrid.Columns.GridColumn colStartFollowDate;
        private DevExpress.XtraGrid.Columns.GridColumn colFollowCount;
        private DevExpress.XtraGrid.Columns.GridColumn colSender;
        private DevExpress.XtraGrid.Columns.GridColumn colFollowSummary;
        private DevExpress.XtraEditors.SimpleButton btnAddAlertLog;
        private DevExpress.XtraEditors.SimpleButton btnSaveAlertLog;
        private DevExpress.XtraEditors.SimpleButton btnAdd;
        private DevExpress.XtraEditors.SimpleButton btnDelete;
        private DevExpress.XtraEditors.SimpleButton btnSendEmail;
        private DevExpress.XtraGrid.Columns.GridColumn colStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn PlanEndDate;
        private DevExpress.XtraGrid.Columns.GridColumn colIsCompleted;
        private System.Windows.Forms.BindingSource bsAlertLogHeader;
        private DevExpress.XtraEditors.Repository.RepositoryItemButtonEdit repositoryItemButtonEdit_ItemNo;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit_Date;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit_IteCompleted;
        private DevExpress.XtraEditors.SimpleButton btnSave;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit_FollowDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCompletedDate;
    }
}