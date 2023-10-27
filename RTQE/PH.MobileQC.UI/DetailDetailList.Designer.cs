namespace PH.MobileQC.UI
{
    partial class DetailDetailList
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
            this.colProductSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDefectQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorker = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colW_procedure = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProblem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCause = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsFindAtSameTime = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_Detail_Detail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(803, 272);
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
            this.colIsFindAtSameTime});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
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
            // colIsFindAtSameTime
            // 
            this.colIsFindAtSameTime.Caption = "IsFindAtSameTime";
            this.colIsFindAtSameTime.FieldName = "IsFindAtSameTime";
            this.colIsFindAtSameTime.Name = "colIsFindAtSameTime";
            this.colIsFindAtSameTime.Visible = true;
            this.colIsFindAtSameTime.VisibleIndex = 7;
            // 
            // DetailDetailList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DetailDetailList";
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
        private DevExpress.XtraGrid.Columns.GridColumn colIsFindAtSameTime;
    }
}
