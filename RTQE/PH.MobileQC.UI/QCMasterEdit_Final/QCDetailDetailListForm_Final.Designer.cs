namespace PH.MobileQC.UI
{
    partial class QCDetailDetailListForm_Final
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
            this.colProductSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorker = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colW_procedure = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProblem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCause = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateUser = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Detail_Detail_Final);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colProductSeq,
            this.colDefectCode,
            this.colDefectQty,
            this.colWorker,
            this.colW_procedure,
            this.colProblem,
            this.colCause,
            this.colCreateDate,
            this.colCreateUser});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colProductSeq
            // 
            this.colProductSeq.Caption = "ProductSeq";
            this.colProductSeq.FieldName = "ProductSeq";
            this.colProductSeq.Name = "colProductSeq";
            this.colProductSeq.Visible = true;
            this.colProductSeq.VisibleIndex = 0;
            // 
            // colDefectCode
            // 
            this.colDefectCode.Caption = "DefectCode";
            this.colDefectCode.FieldName = "DefectCode";
            this.colDefectCode.Name = "colDefectCode";
            this.colDefectCode.Visible = true;
            this.colDefectCode.VisibleIndex = 1;
            // 
            // colDefectQty
            // 
            this.colDefectQty.Caption = "DefectQty";
            this.colDefectQty.FieldName = "DefectQty";
            this.colDefectQty.Name = "colDefectQty";
            this.colDefectQty.Visible = true;
            this.colDefectQty.VisibleIndex = 2;
            // 
            // colWorker
            // 
            this.colWorker.Caption = "Worker";
            this.colWorker.FieldName = "Worker";
            this.colWorker.Name = "colWorker";
            this.colWorker.Visible = true;
            this.colWorker.VisibleIndex = 3;
            // 
            // colW_procedure
            // 
            this.colW_procedure.Caption = "W_procedure";
            this.colW_procedure.FieldName = "W_procedure";
            this.colW_procedure.Name = "colW_procedure";
            this.colW_procedure.Visible = true;
            this.colW_procedure.VisibleIndex = 4;
            // 
            // colProblem
            // 
            this.colProblem.Caption = "Problem";
            this.colProblem.FieldName = "Problem";
            this.colProblem.Name = "colProblem";
            this.colProblem.Visible = true;
            this.colProblem.VisibleIndex = 5;
            // 
            // colCause
            // 
            this.colCause.Caption = "Cause";
            this.colCause.FieldName = "Cause";
            this.colCause.Name = "colCause";
            this.colCause.Visible = true;
            this.colCause.VisibleIndex = 6;
            // 
            // colCreateDate
            // 
            this.colCreateDate.Caption = "CreateDate";
            this.colCreateDate.FieldName = "CreateDate";
            this.colCreateDate.Name = "colCreateDate";
            this.colCreateDate.Visible = true;
            this.colCreateDate.VisibleIndex = 7;
            // 
            // colCreateUser
            // 
            this.colCreateUser.Caption = "CreateUser";
            this.colCreateUser.FieldName = "CreateUser";
            this.colCreateUser.Name = "colCreateUser";
            this.colCreateUser.Visible = true;
            this.colCreateUser.VisibleIndex = 8;
            // 
            // QCDetailDetailListForm_Final
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QCDetailDetailListForm_Final";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colProductSeq;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectCode;
        private DevExpress.XtraGrid.Columns.GridColumn colDefectQty;
        private DevExpress.XtraGrid.Columns.GridColumn colWorker;
        private DevExpress.XtraGrid.Columns.GridColumn colW_procedure;
        private DevExpress.XtraGrid.Columns.GridColumn colProblem;
        private DevExpress.XtraGrid.Columns.GridColumn colCause;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateUser;
    }
}