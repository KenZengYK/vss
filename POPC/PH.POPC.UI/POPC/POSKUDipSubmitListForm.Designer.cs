namespace PH.POPC.UI
{
    partial class POSKUDipSubmitListForm
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
            this.repositoryItemMemoExEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit();
            this.colOperateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceiveDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceiveBulkSampleDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repStatus = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSubmitNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.colDropDeadDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHToCustDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppToCustDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustOperateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCustRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.riicbYN = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            this.colHaveColoristComm = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHaveCustComm = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repStatus)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbYN)).BeginInit();
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
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repType,
            this.repStatus,
            this.riicbYN,
            this.repositoryItemMemoExEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1160, 655);
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 60;
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
            this.colQty,
            this.colDropDeadDate,
            this.colPHToCustDate,
            this.colSuppToCustDate,
            this.colCustOperateDate,
            this.colCustStatus,
            this.colCustRemark,
            this.colHaveColoristComm,
            this.colHaveCustComm});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.POPC.BO.POSKUOperate);
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
            this.colHandleNo.Caption = "Rcpt Seq No.";
            this.colHandleNo.FieldName = "HandleNo";
            this.colHandleNo.Name = "colHandleNo";
            this.colHandleNo.Visible = true;
            this.colHandleNo.VisibleIndex = 0;
            this.colHandleNo.Width = 51;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Our Colorist Comment";
            this.colRemark.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 11;
            this.colRemark.Width = 175;
            // 
            // repositoryItemMemoExEdit1
            // 
            this.repositoryItemMemoExEdit1.AutoHeight = false;
            this.repositoryItemMemoExEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemMemoExEdit1.Name = "repositoryItemMemoExEdit1";
            // 
            // colOperateDate
            // 
            this.colOperateDate.Caption = "PH App/Rej Date";
            this.colOperateDate.FieldName = "OperateDate";
            this.colOperateDate.Name = "colOperateDate";
            this.colOperateDate.Visible = true;
            this.colOperateDate.VisibleIndex = 4;
            this.colOperateDate.Width = 79;
            // 
            // colReceiveDate
            // 
            this.colReceiveDate.Caption = "Receipt Date";
            this.colReceiveDate.FieldName = "ReceiveDate";
            this.colReceiveDate.Name = "colReceiveDate";
            this.colReceiveDate.Visible = true;
            this.colReceiveDate.VisibleIndex = 3;
            this.colReceiveDate.Width = 79;
            // 
            // colReceiveBulkSampleDate
            // 
            this.colReceiveBulkSampleDate.Caption = "Receive BulkSample Date";
            this.colReceiveBulkSampleDate.FieldName = "ReceiveBulkSampleDate";
            this.colReceiveBulkSampleDate.Name = "colReceiveBulkSampleDate";
            this.colReceiveBulkSampleDate.Width = 151;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "PH App/Rej Status";
            this.colStatus.ColumnEdit = this.repStatus;
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 5;
            this.colStatus.Width = 66;
            // 
            // repStatus
            // 
            this.repStatus.AutoHeight = false;
            this.repStatus.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repStatus.Items.AddRange(new object[] {
            "Pending",
            "Rej.",
            "App."});
            this.repStatus.Name = "repStatus";
            this.repStatus.TextEditStyle = DevExpress.XtraEditors.Controls.TextEditStyles.DisableTextEditor;
            // 
            // colSubmitNo
            // 
            this.colSubmitNo.Caption = "L/D No.";
            this.colSubmitNo.FieldName = "SubmitNo";
            this.colSubmitNo.Name = "colSubmitNo";
            this.colSubmitNo.Visible = true;
            this.colSubmitNo.VisibleIndex = 1;
            this.colSubmitNo.Width = 78;
            // 
            // colQty
            // 
            this.colQty.Caption = "Release Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Save And Return";
            this.barButtonItem1.Id = 36;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // colDropDeadDate
            // 
            this.colDropDeadDate.Caption = "Drop Dead Date of L/D (for ref.)";
            this.colDropDeadDate.FieldName = "DipDropDeadDate";
            this.colDropDeadDate.Name = "colDropDeadDate";
            this.colDropDeadDate.Visible = true;
            this.colDropDeadDate.VisibleIndex = 2;
            this.colDropDeadDate.Width = 87;
            // 
            // colPHToCustDate
            // 
            this.colPHToCustDate.Caption = "Send L/D to Cust date\r\n(PH)";
            this.colPHToCustDate.FieldName = "PHToCustDate";
            this.colPHToCustDate.Name = "colPHToCustDate";
            this.colPHToCustDate.Visible = true;
            this.colPHToCustDate.VisibleIndex = 6;
            this.colPHToCustDate.Width = 89;
            // 
            // colSuppToCustDate
            // 
            this.colSuppToCustDate.Caption = "Send L/D to Cust date\r\n(Supplier)";
            this.colSuppToCustDate.FieldName = "SuppToCustDate";
            this.colSuppToCustDate.Name = "colSuppToCustDate";
            this.colSuppToCustDate.Visible = true;
            this.colSuppToCustDate.VisibleIndex = 7;
            this.colSuppToCustDate.Width = 90;
            // 
            // colCustOperateDate
            // 
            this.colCustOperateDate.Caption = "Cust App/Rej Date";
            this.colCustOperateDate.FieldName = "CustOperateDate";
            this.colCustOperateDate.Name = "colCustOperateDate";
            this.colCustOperateDate.Visible = true;
            this.colCustOperateDate.VisibleIndex = 8;
            this.colCustOperateDate.Width = 71;
            // 
            // colCustStatus
            // 
            this.colCustStatus.Caption = "Cust App/Rej Status";
            this.colCustStatus.ColumnEdit = this.repStatus;
            this.colCustStatus.FieldName = "CustStatus";
            this.colCustStatus.Name = "colCustStatus";
            this.colCustStatus.Visible = true;
            this.colCustStatus.VisibleIndex = 9;
            this.colCustStatus.Width = 66;
            // 
            // colCustRemark
            // 
            this.colCustRemark.Caption = "End Cust/Supp Comment";
            this.colCustRemark.ColumnEdit = this.repositoryItemMemoExEdit1;
            this.colCustRemark.FieldName = "CustRemark";
            this.colCustRemark.Name = "colCustRemark";
            this.colCustRemark.Visible = true;
            this.colCustRemark.VisibleIndex = 13;
            this.colCustRemark.Width = 167;
            // 
            // riicbYN
            // 
            this.riicbYN.AutoHeight = false;
            this.riicbYN.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riicbYN.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Y", true, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("N", false, -1)});
            this.riicbYN.Name = "riicbYN";
            // 
            // colHaveColoristComm
            // 
            this.colHaveColoristComm.Caption = "Colorist\r\nY/N";
            this.colHaveColoristComm.ColumnEdit = this.riicbYN;
            this.colHaveColoristComm.FieldName = "HaveColoristComm";
            this.colHaveColoristComm.Name = "colHaveColoristComm";
            this.colHaveColoristComm.Visible = true;
            this.colHaveColoristComm.VisibleIndex = 10;
            this.colHaveColoristComm.Width = 61;
            // 
            // colHaveCustComm
            // 
            this.colHaveCustComm.Caption = "End Cust/Supp\r\nY/N";
            this.colHaveCustComm.ColumnEdit = this.riicbYN;
            this.colHaveCustComm.FieldName = "HaveCustComm";
            this.colHaveCustComm.Name = "colHaveCustComm";
            this.colHaveCustComm.Visible = true;
            this.colHaveCustComm.VisibleIndex = 12;
            this.colHaveCustComm.Width = 54;
            // 
            // POSKUDipSubmitListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POSKUDipSubmitListForm";
            this.Size = new System.Drawing.Size(1160, 682);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoExEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repStatus)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbYN)).EndInit();
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
        private DevExpress.XtraGrid.Columns.GridColumn colDropDeadDate;
        private DevExpress.XtraGrid.Columns.GridColumn colPHToCustDate;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppToCustDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCustOperateDate;
        private DevExpress.XtraGrid.Columns.GridColumn colCustStatus;
        private DevExpress.XtraGrid.Columns.GridColumn colCustRemark;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riicbYN;
        private DevExpress.XtraGrid.Columns.GridColumn colHaveColoristComm;
        private DevExpress.XtraGrid.Columns.GridColumn colHaveCustComm;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoExEdit repositoryItemMemoExEdit1;
    }
}
