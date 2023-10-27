namespace PH.POPC.UI.NewPO
{
    partial class POSKUOperateListForm
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.colCompany = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colVersion = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendmentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSKU = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHandleType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repType = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colHandleNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOperateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceiveDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceiveBulkSampleDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSubmitNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.repStatus = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repStatus)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 37;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POSKUOperate);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Location = new System.Drawing.Point(0, 25);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repType,
            this.repStatus});
            this.objListGridControl.Size = new System.Drawing.Size(1775, 657);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCompany,
            this.colPONO,
            this.colVersion,
            this.colAmendmentNo,
            this.colOrderLine,
            this.colSKU,
            this.colHandleType,
            this.colHandleNo,
            this.colRemark,
            this.colOperateDate,
            this.colReceiveDate,
            this.colReceiveBulkSampleDate,
            this.colStatus,
            this.colSubmitNo,
            this.colQty});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colCompany
            // 
            this.colCompany.Caption = "Company";
            this.colCompany.FieldName = "Company";
            this.colCompany.Name = "colCompany";
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PONO";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            // 
            // colVersion
            // 
            this.colVersion.Caption = "Version";
            this.colVersion.FieldName = "Version";
            this.colVersion.Name = "colVersion";
            // 
            // colAmendmentNo
            // 
            this.colAmendmentNo.Caption = "AmendmentNo";
            this.colAmendmentNo.FieldName = "AmendmentNo";
            this.colAmendmentNo.Name = "colAmendmentNo";
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "OrderLine";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            // 
            // colSKU
            // 
            this.colSKU.Caption = "SKU";
            this.colSKU.FieldName = "SKU";
            this.colSKU.Name = "colSKU";
            // 
            // colHandleType
            // 
            this.colHandleType.Caption = "Handle Type";
            this.colHandleType.ColumnEdit = this.repType;
            this.colHandleType.FieldName = "HandleType";
            this.colHandleType.Name = "colHandleType";
            this.colHandleType.Visible = true;
            this.colHandleType.VisibleIndex = 0;
            this.colHandleType.Width = 99;
            // 
            // repType
            // 
            this.repType.AutoHeight = false;
            this.repType.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repType.Items.AddRange(new object[] {
            "BulkSubmission",
            "DipSubmit",
            "TestStatus",
            "ColorStd",
            "Lot"});
            this.repType.Name = "repType";
            // 
            // colHandleNo
            // 
            this.colHandleNo.Caption = "Handle No";
            this.colHandleNo.FieldName = "HandleNo";
            this.colHandleNo.Name = "colHandleNo";
            this.colHandleNo.Visible = true;
            this.colHandleNo.VisibleIndex = 1;
            this.colHandleNo.Width = 80;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 8;
            this.colRemark.Width = 95;
            // 
            // colOperateDate
            // 
            this.colOperateDate.Caption = "Operate Date";
            this.colOperateDate.FieldName = "OperateDate";
            this.colOperateDate.Name = "colOperateDate";
            this.colOperateDate.Visible = true;
            this.colOperateDate.VisibleIndex = 2;
            this.colOperateDate.Width = 97;
            // 
            // colReceiveDate
            // 
            this.colReceiveDate.Caption = "Receive Date";
            this.colReceiveDate.FieldName = "ReceiveDate";
            this.colReceiveDate.Name = "colReceiveDate";
            this.colReceiveDate.Visible = true;
            this.colReceiveDate.VisibleIndex = 3;
            this.colReceiveDate.Width = 109;
            // 
            // colReceiveBulkSampleDate
            // 
            this.colReceiveBulkSampleDate.Caption = "Receive BulkSample Date";
            this.colReceiveBulkSampleDate.FieldName = "ReceiveBulkSampleDate";
            this.colReceiveBulkSampleDate.Name = "colReceiveBulkSampleDate";
            this.colReceiveBulkSampleDate.Visible = true;
            this.colReceiveBulkSampleDate.VisibleIndex = 4;
            this.colReceiveBulkSampleDate.Width = 151;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 5;
            // 
            // colSubmitNo
            // 
            this.colSubmitNo.Caption = "Submit No";
            this.colSubmitNo.FieldName = "SubmitNo";
            this.colSubmitNo.Name = "colSubmitNo";
            this.colSubmitNo.Visible = true;
            this.colSubmitNo.VisibleIndex = 6;
            // 
            // colQty
            // 
            this.colQty.Caption = "Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 7;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Save And Return";
            this.barButtonItem1.Id = 36;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // repStatus
            // 
            this.repStatus.AutoHeight = false;
            this.repStatus.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repStatus.Items.AddRange(new object[] {
            "Ok",
            "Rej."});
            this.repStatus.Name = "repStatus";
            // 
            // POSKUOperateListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POSKUOperateListForm";
            this.Size = new System.Drawing.Size(1775, 682);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repStatus)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCompany;
        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colVersion;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendmentNo;
        private DevExpress.XtraGrid.Columns.GridColumn colOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colSKU;
        private DevExpress.XtraGrid.Columns.GridColumn colHandleType;
        private DevExpress.XtraGrid.Columns.GridColumn colHandleNo;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colOperateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colReceiveDate;
        private DevExpress.XtraGrid.Columns.GridColumn colReceiveBulkSampleDate;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colSubmitNo;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repType;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repStatus;
    }
}
