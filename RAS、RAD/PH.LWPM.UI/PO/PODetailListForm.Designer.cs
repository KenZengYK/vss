namespace PH.LWPM.UI.PO
{
    partial class PODetailListForm
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
            this.colPONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAmendNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMCType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colModelNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBrand = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDescription = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colUnitPrice = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDeliveryDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnImport = new DevExpress.XtraBars.BarButtonItem();
            this.colSortID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItemCodeVendor = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colIsBigCategory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colInsertPageBreak = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemCheckEdit3 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colIsSpareParts = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit4 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.colAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit4)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnImport});
            this.objbarManager.MaxItemId = 63;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnImport)});
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.PODetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemCheckEdit1,
            this.repositoryItemCheckEdit2,
            this.repositoryItemCheckEdit3,
            this.repositoryItemCheckEdit4});
            this.objListGridControl.Size = new System.Drawing.Size(1461, 357);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSortID,
            this.colItemCode,
            this.colMCType,
            this.colModelNo,
            this.colItemCodeVendor,
            this.colHSCode,
            this.colBrand,
            this.colDescription,
            this.colUnit,
            this.colQty,
            this.colUnitPrice,
            this.colAmount,
            this.colDeliveryDate,
            this.colPONO,
            this.colOrderLine,
            this.colAmendNo,
            this.colIsBigCategory,
            this.colIsSpareParts,
            this.colInsertPageBreak});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            // 
            // colAmendNo
            // 
            this.colAmendNo.Caption = "AmendNo";
            this.colAmendNo.FieldName = "AmendNo";
            this.colAmendNo.Name = "colAmendNo";
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "OrderLine";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            // 
            // colMCType
            // 
            this.colMCType.Caption = "MC Type";
            this.colMCType.FieldName = "MCType";
            this.colMCType.Name = "colMCType";
            this.colMCType.Visible = true;
            this.colMCType.VisibleIndex = 2;
            // 
            // colModelNo
            // 
            this.colModelNo.Caption = "Model No";
            this.colModelNo.FieldName = "ModelNo";
            this.colModelNo.Name = "colModelNo";
            this.colModelNo.Visible = true;
            this.colModelNo.VisibleIndex = 3;
            this.colModelNo.Width = 110;
            // 
            // colHSCode
            // 
            this.colHSCode.Caption = "HS Code";
            this.colHSCode.FieldName = "HSCode";
            this.colHSCode.Name = "colHSCode";
            this.colHSCode.Visible = true;
            this.colHSCode.VisibleIndex = 5;
            // 
            // colBrand
            // 
            this.colBrand.Caption = "Brand";
            this.colBrand.FieldName = "Brand";
            this.colBrand.Name = "colBrand";
            this.colBrand.Visible = true;
            this.colBrand.VisibleIndex = 6;
            this.colBrand.Width = 110;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Description";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.VisibleIndex = 7;
            this.colDescription.Width = 186;
            // 
            // colQty
            // 
            this.colQty.Caption = "Qty";
            this.colQty.FieldName = "Qty";
            this.colQty.Name = "colQty";
            this.colQty.Visible = true;
            this.colQty.VisibleIndex = 9;
            // 
            // colUnit
            // 
            this.colUnit.Caption = "Unit";
            this.colUnit.FieldName = "Unit";
            this.colUnit.Name = "colUnit";
            this.colUnit.Visible = true;
            this.colUnit.VisibleIndex = 8;
            // 
            // colUnitPrice
            // 
            this.colUnitPrice.Caption = "Unit Price";
            this.colUnitPrice.FieldName = "UnitPrice";
            this.colUnitPrice.Name = "colUnitPrice";
            this.colUnitPrice.Visible = true;
            this.colUnitPrice.VisibleIndex = 10;
            // 
            // colDeliveryDate
            // 
            this.colDeliveryDate.Caption = "Delivery Date";
            this.colDeliveryDate.FieldName = "DeliveryDate";
            this.colDeliveryDate.Name = "colDeliveryDate";
            this.colDeliveryDate.Visible = true;
            this.colDeliveryDate.VisibleIndex = 12;
            this.colDeliveryDate.Width = 118;
            // 
            // barBtnImport
            // 
            this.barBtnImport.Caption = "Import";
            this.barBtnImport.Id = 62;
            this.barBtnImport.Name = "barBtnImport";
            this.barBtnImport.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnImport_ItemClick);
            // 
            // colSortID
            // 
            this.colSortID.Caption = "Sort ID";
            this.colSortID.FieldName = "SortID";
            this.colSortID.Name = "colSortID";
            this.colSortID.Visible = true;
            this.colSortID.VisibleIndex = 0;
            this.colSortID.Width = 59;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.Visible = true;
            this.colItemCode.VisibleIndex = 1;
            this.colItemCode.Width = 85;
            // 
            // colItemCodeVendor
            // 
            this.colItemCodeVendor.Caption = "Item Code Vendor";
            this.colItemCodeVendor.FieldName = "ItemCodeVendor";
            this.colItemCodeVendor.Name = "colItemCodeVendor";
            this.colItemCodeVendor.Visible = true;
            this.colItemCodeVendor.VisibleIndex = 4;
            this.colItemCodeVendor.Width = 127;
            // 
            // colIsBigCategory
            // 
            this.colIsBigCategory.Caption = "Main Item";
            this.colIsBigCategory.ColumnEdit = this.repositoryItemCheckEdit1;
            this.colIsBigCategory.FieldName = "IsBigCategory";
            this.colIsBigCategory.Name = "colIsBigCategory";
            this.colIsBigCategory.Visible = true;
            this.colIsBigCategory.VisibleIndex = 13;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colInsertPageBreak
            // 
            this.colInsertPageBreak.Caption = "Page Break";
            this.colInsertPageBreak.ColumnEdit = this.repositoryItemCheckEdit2;
            this.colInsertPageBreak.FieldName = "InsertPageBreak";
            this.colInsertPageBreak.Name = "colInsertPageBreak";
            this.colInsertPageBreak.Visible = true;
            this.colInsertPageBreak.VisibleIndex = 15;
            this.colInsertPageBreak.Width = 90;
            // 
            // repositoryItemCheckEdit2
            // 
            this.repositoryItemCheckEdit2.AutoHeight = false;
            this.repositoryItemCheckEdit2.Name = "repositoryItemCheckEdit2";
            this.repositoryItemCheckEdit2.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // repositoryItemCheckEdit3
            // 
            this.repositoryItemCheckEdit3.AutoHeight = false;
            this.repositoryItemCheckEdit3.Name = "repositoryItemCheckEdit3";
            this.repositoryItemCheckEdit3.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colIsSpareParts
            // 
            this.colIsSpareParts.Caption = "Spare Parts";
            this.colIsSpareParts.ColumnEdit = this.repositoryItemCheckEdit4;
            this.colIsSpareParts.FieldName = "IsSpareParts";
            this.colIsSpareParts.Name = "colIsSpareParts";
            this.colIsSpareParts.Visible = true;
            this.colIsSpareParts.VisibleIndex = 14;
            this.colIsSpareParts.Width = 90;
            // 
            // repositoryItemCheckEdit4
            // 
            this.repositoryItemCheckEdit4.AutoHeight = false;
            this.repositoryItemCheckEdit4.Name = "repositoryItemCheckEdit4";
            this.repositoryItemCheckEdit4.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // colAmount
            // 
            this.colAmount.Caption = "Amount";
            this.colAmount.FieldName = "Amount";
            this.colAmount.Name = "colAmount";
            this.colAmount.SummaryItem.DisplayFormat = "{0:N2}";
            this.colAmount.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colAmount.Visible = true;
            this.colAmount.VisibleIndex = 11;
            this.colAmount.Width = 90;
            // 
            // PODetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "PODetailListForm";
            this.Size = new System.Drawing.Size(1461, 384);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit4)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colPONO;
        private DevExpress.XtraGrid.Columns.GridColumn colAmendNo;
        private DevExpress.XtraGrid.Columns.GridColumn colOrderLine;
        private DevExpress.XtraGrid.Columns.GridColumn colMCType;
        private DevExpress.XtraGrid.Columns.GridColumn colModelNo;
        private DevExpress.XtraGrid.Columns.GridColumn colHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn colBrand;
        private DevExpress.XtraGrid.Columns.GridColumn colDescription;
        private DevExpress.XtraGrid.Columns.GridColumn colQty;
        private DevExpress.XtraGrid.Columns.GridColumn colUnit;
        private DevExpress.XtraGrid.Columns.GridColumn colUnitPrice;
        private DevExpress.XtraGrid.Columns.GridColumn colDeliveryDate;
        private DevExpress.XtraBars.BarButtonItem barBtnImport;
        private DevExpress.XtraGrid.Columns.GridColumn colSortID;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colItemCodeVendor;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraGrid.Columns.GridColumn colIsBigCategory;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit2;
        private DevExpress.XtraGrid.Columns.GridColumn colInsertPageBreak;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit3;
        private DevExpress.XtraGrid.Columns.GridColumn colIsSpareParts;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit4;
        private DevExpress.XtraGrid.Columns.GridColumn colAmount;
    }
}
