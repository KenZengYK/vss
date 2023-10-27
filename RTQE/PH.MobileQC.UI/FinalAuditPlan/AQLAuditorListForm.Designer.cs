namespace PH.MobileQC.UI.FinalAuditPlan
{
    partial class AQLAuditorListForm
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
            this.colFty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWs = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAuditorByCust = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCust = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFty,
            this.colWs,
            this.colLine,
            this.colAuditor,
            this.colCust,
            this.colAuditorByCust});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.AQLAuditor);
            // 
            // colFty
            // 
            this.colFty.Caption = "Fty";
            this.colFty.FieldName = "Fty";
            this.colFty.Name = "colFty";
            this.colFty.Visible = true;
            this.colFty.VisibleIndex = 0;
            this.colFty.Width = 56;
            // 
            // colWs
            // 
            this.colWs.Caption = "Ws";
            this.colWs.FieldName = "Ws";
            this.colWs.Name = "colWs";
            this.colWs.Visible = true;
            this.colWs.VisibleIndex = 1;
            this.colWs.Width = 93;
            // 
            // colLine
            // 
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "Line";
            this.colLine.Name = "colLine";
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 2;
            this.colLine.Width = 85;
            // 
            // colAuditor
            // 
            this.colAuditor.Caption = "Auditor";
            this.colAuditor.FieldName = "Auditor";
            this.colAuditor.Name = "colAuditor";
            this.colAuditor.Visible = true;
            this.colAuditor.VisibleIndex = 3;
            this.colAuditor.Width = 80;
            // 
            // colAuditorByCust
            // 
            this.colAuditorByCust.Caption = "AuditorByCust";
            this.colAuditorByCust.FieldName = "AuditorByCust";
            this.colAuditorByCust.Name = "colAuditorByCust";
            this.colAuditorByCust.OptionsColumn.AllowEdit = false;
            this.colAuditorByCust.Visible = true;
            this.colAuditorByCust.VisibleIndex = 5;
            this.colAuditorByCust.Width = 100;
            // 
            // colCust
            // 
            this.colCust.Caption = "Cust";
            this.colCust.FieldName = "Cust";
            this.colCust.Name = "colCust";
            this.colCust.OptionsColumn.AllowEdit = false;
            this.colCust.Visible = true;
            this.colCust.VisibleIndex = 4;
            this.colCust.Width = 98;
            // 
            // AQLAuditorListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "AQLAuditorListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colFty;
        private DevExpress.XtraGrid.Columns.GridColumn colWs;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditor;
        private DevExpress.XtraGrid.Columns.GridColumn colCust;
        private DevExpress.XtraGrid.Columns.GridColumn colAuditorByCust;
    }
}
