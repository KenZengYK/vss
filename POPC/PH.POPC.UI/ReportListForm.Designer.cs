namespace PH.POPC.UI
{
    partial class ReportListForm
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
            this.colReportTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReportCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.reportCodeLookUpEdit = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            this.reportTypeCodeLookUpEdit = new DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportCodeLookUpEdit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportTypeCodeLookUpEdit)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.Report);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.reportCodeLookUpEdit,
            this.reportTypeCodeLookUpEdit});
            this.objListGridControl.Size = new System.Drawing.Size(803, 274);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colReportTypeCode,
            this.colReportCode});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colReportTypeCode
            // 
            this.colReportTypeCode.Caption = "Report Type";
            this.colReportTypeCode.ColumnEdit = this.reportTypeCodeLookUpEdit;
            this.colReportTypeCode.FieldName = "ReportTypeCode";
            this.colReportTypeCode.Name = "colReportTypeCode";
            this.colReportTypeCode.Visible = true;
            this.colReportTypeCode.VisibleIndex = 0;
            this.colReportTypeCode.Width = 131;
            // 
            // colReportCode
            // 
            this.colReportCode.Caption = "Report";
            this.colReportCode.ColumnEdit = this.reportCodeLookUpEdit;
            this.colReportCode.FieldName = "ReportCode";
            this.colReportCode.Name = "colReportCode";
            this.colReportCode.Visible = true;
            this.colReportCode.VisibleIndex = 1;
            this.colReportCode.Width = 168;
            // 
            // reportCodeLookUpEdit
            // 
            this.reportCodeLookUpEdit.AutoHeight = false;
            this.reportCodeLookUpEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.reportCodeLookUpEdit.Name = "reportCodeLookUpEdit";
            this.reportCodeLookUpEdit.NullText = "";
            // 
            // reportTypeCodeLookUpEdit
            // 
            this.reportTypeCodeLookUpEdit.AutoHeight = false;
            this.reportTypeCodeLookUpEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.reportTypeCodeLookUpEdit.Name = "reportTypeCodeLookUpEdit";
            this.reportTypeCodeLookUpEdit.NullText = "";
            // 
            // ReportListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ReportListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            this.Load += new System.EventHandler(this.ReportListForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportCodeLookUpEdit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.reportTypeCodeLookUpEdit)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colReportTypeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colReportCode;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit reportCodeLookUpEdit;
        private DevExpress.XtraEditors.Repository.RepositoryItemLookUpEdit reportTypeCodeLookUpEdit;
    }
}
