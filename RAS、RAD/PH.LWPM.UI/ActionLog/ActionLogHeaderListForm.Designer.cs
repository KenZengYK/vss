namespace PH.LWPM.UI.ActionLog
{
    partial class ActionLogHeaderListForm
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
            this.colLogNO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLogType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSubject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStartDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPlanCompleteDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSender = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkshop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.ActionLogHeader);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1005, 376);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colLogNO,
            this.colLogType,
            this.colFactory,
            this.colWorkshop,
            this.colLine,
            this.colSubject,
            this.colStartDate,
            this.colPlanCompleteDate,
            this.colSender,
            this.colIsCompleted});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colLogNO
            // 
            this.colLogNO.Caption = "Log NO.";
            this.colLogNO.FieldName = "LogNO";
            this.colLogNO.Name = "colLogNO";
            this.colLogNO.Visible = true;
            this.colLogNO.VisibleIndex = 0;
            this.colLogNO.Width = 95;
            // 
            // colLogType
            // 
            this.colLogType.Caption = "Log Type";
            this.colLogType.FieldName = "LogType";
            this.colLogType.Name = "colLogType";
            this.colLogType.Visible = true;
            this.colLogType.VisibleIndex = 1;
            this.colLogType.Width = 72;
            // 
            // colSubject
            // 
            this.colSubject.Caption = "Subject";
            this.colSubject.FieldName = "Subject";
            this.colSubject.Name = "colSubject";
            this.colSubject.Visible = true;
            this.colSubject.VisibleIndex = 5;
            this.colSubject.Width = 220;
            // 
            // colStartDate
            // 
            this.colStartDate.Caption = "Start Date";
            this.colStartDate.FieldName = "StartDate";
            this.colStartDate.Name = "colStartDate";
            this.colStartDate.Visible = true;
            this.colStartDate.VisibleIndex = 6;
            this.colStartDate.Width = 90;
            // 
            // colPlanCompleteDate
            // 
            this.colPlanCompleteDate.Caption = "Plan Complete Date";
            this.colPlanCompleteDate.FieldName = "PlanCompleteDate";
            this.colPlanCompleteDate.Name = "colPlanCompleteDate";
            this.colPlanCompleteDate.Visible = true;
            this.colPlanCompleteDate.VisibleIndex = 7;
            this.colPlanCompleteDate.Width = 132;
            // 
            // colSender
            // 
            this.colSender.Caption = "Sender";
            this.colSender.FieldName = "Sender";
            this.colSender.Name = "colSender";
            this.colSender.Visible = true;
            this.colSender.VisibleIndex = 8;
            // 
            // colIsCompleted
            // 
            this.colIsCompleted.Caption = "Completed";
            this.colIsCompleted.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsCompleted.FieldName = "IsCompleted";
            this.colIsCompleted.Name = "colIsCompleted";
            this.colIsCompleted.Visible = true;
            this.colIsCompleted.VisibleIndex = 9;
            this.colIsCompleted.Width = 90;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.Visible = true;
            this.colFactory.VisibleIndex = 2;
            // 
            // colWorkshop
            // 
            this.colWorkshop.Caption = "Workshop";
            this.colWorkshop.FieldName = "Workshop";
            this.colWorkshop.Name = "colWorkshop";
            this.colWorkshop.Visible = true;
            this.colWorkshop.VisibleIndex = 3;
            // 
            // colLine
            // 
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 4;
            // 
            // ActionLogHeaderListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ActionLogHeaderListForm";
            this.Size = new System.Drawing.Size(1005, 403);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colLogNO;
        private DevExpress.XtraGrid.Columns.GridColumn colLogType;
        private DevExpress.XtraGrid.Columns.GridColumn colSubject;
        private DevExpress.XtraGrid.Columns.GridColumn colStartDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPlanCompleteDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSender;
        private DevExpress.XtraGrid.Columns.GridColumn colIsCompleted;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkshop;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
    }
}
