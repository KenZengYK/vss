namespace PH.POPC.UI
{
    partial class POSKUColorStdListForm
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
            this.colOperateDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceiveDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colReceiveBulkSampleDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSubmitNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.repStatus = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colSwatchCard = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbSwatchCard = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.colFlag = new DevExpress.XtraGrid.Columns.GridColumn();
            this.riicbPHCust = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repType)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repStatus)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatchCard)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbPHCust)).BeginInit();
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
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repType,
            this.repStatus,
            this.riicbPHCust,
            this.ricbSwatchCard});
            this.objListGridControl.Size = new System.Drawing.Size(1179, 470);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 50;
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
            this.colSwatchCard,
            this.colFlag});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsCustomization.AllowFilter = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsFilter.AllowFilterEditor = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFilterPanelMode = DevExpress.XtraGrid.Views.Base.ShowFilterPanelMode.Never;
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
            this.colHandleNo.Caption = "Submit Seq No.";
            this.colHandleNo.FieldName = "HandleNo";
            this.colHandleNo.Name = "colHandleNo";
            this.colHandleNo.Visible = true;
            this.colHandleNo.VisibleIndex = 0;
            this.colHandleNo.Width = 71;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Season";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 6;
            this.colRemark.Width = 305;
            // 
            // colOperateDate
            // 
            this.colOperateDate.Caption = "Clr info to Supp dd";
            this.colOperateDate.FieldName = "OperateDate";
            this.colOperateDate.Name = "colOperateDate";
            this.colOperateDate.Visible = true;
            this.colOperateDate.VisibleIndex = 5;
            this.colOperateDate.Width = 112;
            // 
            // colReceiveDate
            // 
            this.colReceiveDate.Caption = "Our Receive Date";
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
            this.colReceiveBulkSampleDate.Width = 151;
            // 
            // colStatus
            // 
            this.colStatus.Caption = "Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            // 
            // colSubmitNo
            // 
            this.colSubmitNo.Caption = "Swatch Clr No.";
            this.colSubmitNo.FieldName = "SubmitNo";
            this.colSubmitNo.Name = "colSubmitNo";
            this.colSubmitNo.Visible = true;
            this.colSubmitNo.VisibleIndex = 2;
            this.colSubmitNo.Width = 110;
            // 
            // colQty
            // 
            this.colQty.Caption = "Qty";
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
            // colSwatchCard
            // 
            this.colSwatchCard.Caption = "Clr Swatches\r\nor\r\nSwatch Card";
            this.colSwatchCard.ColumnEdit = this.ricbSwatchCard;
            this.colSwatchCard.FieldName = "SwatchCard";
            this.colSwatchCard.Name = "colSwatchCard";
            this.colSwatchCard.Visible = true;
            this.colSwatchCard.VisibleIndex = 1;
            this.colSwatchCard.Width = 115;
            // 
            // ricbSwatchCard
            // 
            this.ricbSwatchCard.AutoHeight = false;
            this.ricbSwatchCard.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbSwatchCard.Items.AddRange(new object[] {
            "Swatch",
            "Card"});
            this.ricbSwatchCard.Name = "ricbSwatchCard";
            // 
            // colFlag
            // 
            this.colFlag.Caption = "PH / Cust ?";
            this.colFlag.ColumnEdit = this.riicbPHCust;
            this.colFlag.FieldName = "Flag";
            this.colFlag.Name = "colFlag";
            this.colFlag.Visible = true;
            this.colFlag.VisibleIndex = 4;
            // 
            // riicbPHCust
            // 
            this.riicbPHCust.AutoHeight = false;
            this.riicbPHCust.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.riicbPHCust.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("PH", false, -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("Cust", true, -1)});
            this.riicbPHCust.Name = "riicbPHCust";
            // 
            // POSKUColorStdListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POSKUColorStdListForm";
            this.Size = new System.Drawing.Size(1179, 497);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repType)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repStatus)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbSwatchCard)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.riicbPHCust)).EndInit();
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
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox riicbPHCust;
        private DevExpress.XtraGrid.Columns.GridColumn colSwatchCard;
        private DevExpress.XtraGrid.Columns.GridColumn colFlag;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox ricbSwatchCard;
    }
}
