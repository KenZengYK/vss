namespace PH.LWPM.UI.PurchasePlan
{
    partial class PurchaseProcessForm
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
            this.barBtnGetData = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHWCategoryCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHWGroupCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colMCType = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPOCreate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectionDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colIssueDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalAmount = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colETDDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActualStockInDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colDone = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colRemark = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colVendorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colVendorName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colUnitPrice = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnGetData});
            this.objbarManager.MaxItemId = 62;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnGetData)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(1388, 547);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PurchaseProcess);
            // 
            // barBtnGetData
            // 
            this.barBtnGetData.Caption = "Get Data";
            this.barBtnGetData.Id = 61;
            this.barBtnGetData.Name = "barBtnGetData";
            this.barBtnGetData.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnGetData_ItemClick);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1});
            this.bandedGridView1.ColumnPanelRowHeight = 40;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colHWCategoryCode,
            this.colHWGroupCode,
            this.colMCType,
            this.colProjectionDate,
            this.colPONO,
            this.colUnitPrice,
            this.colETDDate,
            this.colActualStockInDate,
            this.colVendorCode,
            this.colVendorName,
            this.colQty,
            this.colIssueDate,
            this.colTotalAmount,
            this.colDone,
            this.colRemark,
            this.colPOCreate});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1365, 528, 225, 233);
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Procurement from budgeting till stock-in";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand4,
            this.gridBand5,
            this.gridBand6,
            this.gridBand2,
            this.gridBand3});
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 1342;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Chosen HW";
            this.gridBand4.Columns.Add(this.colHWCategoryCode);
            this.gridBand4.Columns.Add(this.colHWGroupCode);
            this.gridBand4.Columns.Add(this.colMCType);
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 139;
            // 
            // colHWCategoryCode
            // 
            this.colHWCategoryCode.Caption = "Cat.";
            this.colHWCategoryCode.FieldName = "HWCategoryCode";
            this.colHWCategoryCode.Name = "colHWCategoryCode";
            this.colHWCategoryCode.Visible = true;
            this.colHWCategoryCode.Width = 44;
            // 
            // colHWGroupCode
            // 
            this.colHWGroupCode.Caption = "Grp.";
            this.colHWGroupCode.FieldName = "HWGroupCode";
            this.colHWGroupCode.Name = "colHWGroupCode";
            this.colHWGroupCode.Visible = true;
            this.colHWGroupCode.Width = 45;
            // 
            // colMCType
            // 
            this.colMCType.Caption = "Type";
            this.colMCType.FieldName = "HWType";
            this.colMCType.Name = "colMCType";
            this.colMCType.Visible = true;
            this.colMCType.Width = 50;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Procurement";
            this.gridBand5.Columns.Add(this.colPOCreate);
            this.gridBand5.Columns.Add(this.colProjectionDate);
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 140;
            // 
            // colPOCreate
            // 
            this.colPOCreate.Caption = "Create\r\non";
            this.colPOCreate.FieldName = "POCreate";
            this.colPOCreate.Name = "colPOCreate";
            this.colPOCreate.Visible = true;
            this.colPOCreate.Width = 70;
            // 
            // colProjectionDate
            // 
            this.colProjectionDate.Caption = "Proj.\r\nstk-in dd";
            this.colProjectionDate.FieldName = "ProjectionDate";
            this.colProjectionDate.Name = "colProjectionDate";
            this.colProjectionDate.OptionsColumn.AllowEdit = false;
            this.colProjectionDate.Visible = true;
            this.colProjectionDate.Width = 70;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Purchasing till stock-in";
            this.gridBand6.Columns.Add(this.colPONO);
            this.gridBand6.Columns.Add(this.colIssueDate);
            this.gridBand6.Columns.Add(this.colQty);
            this.gridBand6.Columns.Add(this.colTotalAmount);
            this.gridBand6.Columns.Add(this.colETDDate);
            this.gridBand6.Columns.Add(this.colActualStockInDate);
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 426;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO#";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.Visible = true;
            this.colPONO.Width = 100;
            // 
            // colIssueDate
            // 
            this.colIssueDate.Caption = "Issued\r\ndd";
            this.colIssueDate.FieldName = "IssueDate";
            this.colIssueDate.Name = "colIssueDate";
            this.colIssueDate.Visible = true;
            this.colIssueDate.Width = 70;
            // 
            // colQty
            // 
            this.colQty.Caption = "Item\r\nQty";
            this.colQty.FieldName = "ItemQty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.Width = 50;
            // 
            // colTotalAmount
            // 
            this.colTotalAmount.Caption = "Ttl\r\nAmount";
            this.colTotalAmount.DisplayFormat.FormatString = "N2";
            this.colTotalAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colTotalAmount.FieldName = "TotalAmount";
            this.colTotalAmount.Name = "colTotalAmount";
            this.colTotalAmount.Visible = true;
            this.colTotalAmount.Width = 66;
            // 
            // colETDDate
            // 
            this.colETDDate.Caption = "ETD";
            this.colETDDate.FieldName = "ETD";
            this.colETDDate.Name = "colETDDate";
            this.colETDDate.Visible = true;
            this.colETDDate.Width = 70;
            // 
            // colActualStockInDate
            // 
            this.colActualStockInDate.Caption = "Actual\r\nStk-in dd";
            this.colActualStockInDate.FieldName = "ActualStockInDate";
            this.colActualStockInDate.Name = "colActualStockInDate";
            this.colActualStockInDate.Visible = true;
            this.colActualStockInDate.Width = 70;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Other";
            this.gridBand2.Columns.Add(this.colDone);
            this.gridBand2.Columns.Add(this.colRemark);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 175;
            // 
            // colDone
            // 
            this.colDone.Caption = "Done\r\n(Y?)";
            this.colDone.FieldName = "Done";
            this.colDone.Name = "colDone";
            this.colDone.Visible = true;
            this.colDone.Width = 51;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remarks";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.Width = 124;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Vendor";
            this.gridBand3.Columns.Add(this.colVendorCode);
            this.gridBand3.Columns.Add(this.colVendorName);
            this.gridBand3.Columns.Add(this.colUnitPrice);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 462;
            // 
            // colVendorCode
            // 
            this.colVendorCode.Caption = "Vendor Code";
            this.colVendorCode.FieldName = "VendorCode";
            this.colVendorCode.Name = "colVendorCode";
            this.colVendorCode.OptionsColumn.AllowEdit = false;
            this.colVendorCode.Visible = true;
            this.colVendorCode.Width = 94;
            // 
            // colVendorName
            // 
            this.colVendorName.Caption = "Vendor Name (Short Name)";
            this.colVendorName.FieldName = "VendorName";
            this.colVendorName.Name = "colVendorName";
            this.colVendorName.OptionsColumn.AllowEdit = false;
            this.colVendorName.Visible = true;
            this.colVendorName.Width = 294;
            // 
            // colUnitPrice
            // 
            this.colUnitPrice.Caption = "Unit Px\r\n(USD)";
            this.colUnitPrice.DisplayFormat.FormatString = "N2";
            this.colUnitPrice.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colUnitPrice.FieldName = "UnitPrice";
            this.colUnitPrice.Name = "colUnitPrice";
            this.colUnitPrice.Visible = true;
            this.colUnitPrice.Width = 74;
            // 
            // PurchaseProcessForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PurchaseProcessForm";
            this.Size = new System.Drawing.Size(1388, 574);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraBars.BarButtonItem barBtnGetData;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colMCType;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectionDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colUnitPrice;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colETDDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActualStockInDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVendorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colVendorName;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHWCategoryCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHWGroupCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRemark;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colIssueDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalAmount;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDone;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOCreate;
    }
}
