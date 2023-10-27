namespace PH.FabricInspection.UI.Main
{
    partial class BulkSubmissionListForm
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
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCompany = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWarehouse = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSupplierCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSeqNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceivedDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBatchNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colColorResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colElongation = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colElongationResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMouldTrial = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMouldTrialResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOverallResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOverallFailReason = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReleaseFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colShipmentDate = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1392, 436);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany,
            this.colWarehouse,
            this.colItemNo,
            this.colItemDesc,
            this.colSupplierCode,
            this.colProjectNo,
            this.colPONO,
            this.colSeqNo,
            this.colReceivedDate,
            this.colBatchNo,
            this.colColorResult,
            this.colElongation,
            this.colElongationResult,
            this.colMouldTrial,
            this.colMouldTrialResult,
            this.colOverallResult,
            this.colOverallFailReason,
            this.colReleaseFlag,
            this.colShipmentDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.BulkSubmission);
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO#";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.VisibleIndex = 6;
            // 
            // colItemNo
            // 
            this.colItemNo.Caption = "Item Cde/Clr";
            this.colItemNo.FieldName = "ItemNo";
            this.colItemNo.Name = "colItemNo";
            this.colItemNo.Visible = true;
            this.colItemNo.VisibleIndex = 2;
            this.colItemNo.Width = 91;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Co.";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            this.colCompany.Visible = true;
            this.colCompany.VisibleIndex = 0;
            // 
            // colWarehouse
            // 
            this.colWarehouse.Caption = "Whse";
            this.colWarehouse.FieldName = "Warehouse";
            this.colWarehouse.Name = "colWarehouse";
            this.colWarehouse.Visible = true;
            this.colWarehouse.VisibleIndex = 1;
            // 
            // colItemDesc
            // 
            this.colItemDesc.Caption = "Supp Item Ref/Clr Name";
            this.colItemDesc.FieldName = "ItemDesc";
            this.colItemDesc.Name = "colItemDesc";
            this.colItemDesc.Visible = true;
            this.colItemDesc.VisibleIndex = 3;
            this.colItemDesc.Width = 155;
            // 
            // colSupplierCode
            // 
            this.colSupplierCode.Caption = "Supp Cde";
            this.colSupplierCode.FieldName = "SupplierCode";
            this.colSupplierCode.Name = "colSupplierCode";
            this.colSupplierCode.Visible = true;
            this.colSupplierCode.VisibleIndex = 4;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Proj.#";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.VisibleIndex = 5;
            // 
            // colSeqNo
            // 
            this.colSeqNo.Caption = "Submission Seq";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.VisibleIndex = 7;
            this.colSeqNo.Width = 106;
            // 
            // colReceivedDate
            // 
            this.colReceivedDate.Caption = "Rcvd dd";
            this.colReceivedDate.FieldName = "ReceivedDate";
            this.colReceivedDate.Name = "colReceivedDate";
            this.colReceivedDate.Visible = true;
            this.colReceivedDate.VisibleIndex = 8;
            // 
            // colBatchNo
            // 
            this.colBatchNo.Caption = "Batch#";
            this.colBatchNo.FieldName = "BatchNo";
            this.colBatchNo.Name = "colBatchNo";
            this.colBatchNo.Visible = true;
            this.colBatchNo.VisibleIndex = 9;
            // 
            // colColorResult
            // 
            this.colColorResult.Caption = "Cc) Result";
            this.colColorResult.FieldName = "ColorResult";
            this.colColorResult.Name = "colColorResult";
            this.colColorResult.Visible = true;
            this.colColorResult.VisibleIndex = 10;
            // 
            // colElongation
            // 
            this.colElongation.Caption = "ea) Elongation Y/N";
            this.colElongation.FieldName = "Elongation";
            this.colElongation.Name = "colElongation";
            this.colElongation.Visible = true;
            this.colElongation.VisibleIndex = 11;
            this.colElongation.Width = 126;
            // 
            // colElongationResult
            // 
            this.colElongationResult.Caption = "Eb) Result";
            this.colElongationResult.FieldName = "ElongationResult";
            this.colElongationResult.Name = "colElongationResult";
            this.colElongationResult.Visible = true;
            this.colElongationResult.VisibleIndex = 12;
            this.colElongationResult.Width = 78;
            // 
            // colMouldTrial
            // 
            this.colMouldTrial.Caption = "ma) Mould trial Y/N";
            this.colMouldTrial.FieldName = "MouldTrial";
            this.colMouldTrial.Name = "colMouldTrial";
            this.colMouldTrial.Visible = true;
            this.colMouldTrial.VisibleIndex = 13;
            this.colMouldTrial.Width = 127;
            // 
            // colMouldTrialResult
            // 
            this.colMouldTrialResult.Caption = "Mb) Result";
            this.colMouldTrialResult.FieldName = "MouldTrialResult";
            this.colMouldTrialResult.Name = "colMouldTrialResult";
            this.colMouldTrialResult.Visible = true;
            this.colMouldTrialResult.VisibleIndex = 14;
            this.colMouldTrialResult.Width = 80;
            // 
            // colOverallResult
            // 
            this.colOverallResult.Caption = "Zb) Overall Result";
            this.colOverallResult.FieldName = "OverallResult";
            this.colOverallResult.Name = "colOverallResult";
            this.colOverallResult.Visible = true;
            this.colOverallResult.VisibleIndex = 15;
            this.colOverallResult.Width = 118;
            // 
            // colOverallFailReason
            // 
            this.colOverallFailReason.Caption = "zc) Overall Fail Reason";
            this.colOverallFailReason.FieldName = "OverallFailReason";
            this.colOverallFailReason.Name = "colOverallFailReason";
            this.colOverallFailReason.Visible = true;
            this.colOverallFailReason.VisibleIndex = 16;
            this.colOverallFailReason.Width = 141;
            // 
            // colReleaseFlag
            // 
            this.colReleaseFlag.Caption = "zd) Release";
            this.colReleaseFlag.FieldName = "ReleaseFlag";
            this.colReleaseFlag.Name = "colReleaseFlag";
            this.colReleaseFlag.Visible = true;
            this.colReleaseFlag.VisibleIndex = 17;
            this.colReleaseFlag.Width = 84;
            // 
            // colShipmentDate
            // 
            this.colShipmentDate.Caption = "ze) shpt/dd";
            this.colShipmentDate.FieldName = "ShipmentDate";
            this.colShipmentDate.Name = "colShipmentDate";
            this.colShipmentDate.Visible = true;
            this.colShipmentDate.VisibleIndex = 18;
            this.colShipmentDate.Width = 86;
            // 
            // BulkSubmissionListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "BulkSubmissionListForm";
            this.Size = new System.Drawing.Size(1392, 463);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colItemNo;
        private DevExpress.XtraGrid.Columns.GridColumn colCompany;
        private DevExpress.XtraGrid.Columns.GridColumn colWarehouse;
        private DevExpress.XtraGrid.Columns.GridColumn colItemDesc;
        private DevExpress.XtraGrid.Columns.GridColumn colSupplierCode;
        private DevExpress.XtraGrid.Columns.GridColumn colProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colSeqNo;
        private DevExpress.XtraGrid.Columns.GridColumn colReceivedDate;
        private DevExpress.XtraGrid.Columns.GridColumn colBatchNo;
        private DevExpress.XtraGrid.Columns.GridColumn colColorResult;
        private DevExpress.XtraGrid.Columns.GridColumn colElongation;
        private DevExpress.XtraGrid.Columns.GridColumn colElongationResult;
        private DevExpress.XtraGrid.Columns.GridColumn colMouldTrial;
        private DevExpress.XtraGrid.Columns.GridColumn colMouldTrialResult;
        private DevExpress.XtraGrid.Columns.GridColumn colOverallResult;
        private DevExpress.XtraGrid.Columns.GridColumn colOverallFailReason;
        private DevExpress.XtraGrid.Columns.GridColumn colReleaseFlag;
        private DevExpress.XtraGrid.Columns.GridColumn colShipmentDate;
    }
}
