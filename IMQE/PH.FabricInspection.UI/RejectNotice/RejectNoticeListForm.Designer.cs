namespace PH.FabricInspection.UI.RejectNotice
{
    partial class RejectNoticeListForm
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
            this.colRNNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIssueDept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIssueDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.btnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(996, 360);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colRNNo,
            this.colAuditNo,
            this.colIssueDept,
            this.colIssueDate,
            this.colCreater,
            this.colCreateDate,
            this.colFlag});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.RejectNotice);
            // 
            // colRNNo
            // 
            this.colRNNo.Caption = "RN#";
            this.colRNNo.FieldName = "RNNo";
            this.colRNNo.Name = "colRNNo";
            this.colRNNo.Visible = true;
            this.colRNNo.VisibleIndex = 0;
            this.colRNNo.Width = 78;
            // 
            // colAuditNo
            // 
            this.colAuditNo.Caption = "Audit#";
            this.colAuditNo.FieldName = "AuditNo";
            this.colAuditNo.Name = "colAuditNo";
            this.colAuditNo.Visible = true;
            this.colAuditNo.VisibleIndex = 1;
            this.colAuditNo.Width = 95;
            // 
            // colIssueDept
            // 
            this.colIssueDept.Caption = "Issue Dept.";
            this.colIssueDept.FieldName = "IssueDept";
            this.colIssueDept.Name = "colIssueDept";
            this.colIssueDept.Visible = true;
            this.colIssueDept.VisibleIndex = 2;
            this.colIssueDept.Width = 99;
            // 
            // colIssueDate
            // 
            this.colIssueDate.Caption = "Issue Date";
            this.colIssueDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colIssueDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colIssueDate.FieldName = "IssueDate";
            this.colIssueDate.Name = "colIssueDate";
            this.colIssueDate.Visible = true;
            this.colIssueDate.VisibleIndex = 3;
            this.colIssueDate.Width = 111;
            // 
            // colCreater
            // 
            this.colCreater.Caption = "Creater";
            this.colCreater.FieldName = "Creater";
            this.colCreater.Name = "colCreater";
            this.colCreater.Visible = true;
            this.colCreater.VisibleIndex = 4;
            this.colCreater.Width = 88;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "Create Date";
            this.colCreateDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colCreateDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 5;
            this.colCreateDate.Width = 102;
            // 
            // colFlag
            // 
            this.colFlag.Caption = "Mat\'s Type";
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 6;
            this.colFlag.Width = 93;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 60;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // RejectNoticeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "RejectNoticeListForm";
            this.Size = new System.Drawing.Size(996, 387);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colRNNo;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditNo;
        private DevExpress.XtraGrid.Columns.GridColumn colIssueDept;
        private DevExpress.XtraGrid.Columns.GridColumn colIssueDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCreater;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
    }
}
