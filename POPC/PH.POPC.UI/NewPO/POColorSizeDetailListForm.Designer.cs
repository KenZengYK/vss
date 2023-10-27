using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace PH.POPC.UI.NewPO
{
    partial class POColorSizeDetailListForm
    {
        #region//auto code
        private System.ComponentModel.IContainer components = null;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Version;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_AmendmentNo;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Company;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PONO;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_OrderLine;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SKU;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ItemCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ColorCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ColorDesc;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_ColorShade;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SizeCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SizeDesc;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_FitCode;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_FitDesc;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Qty;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_IntelSizeDesc;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_DeliveryDate;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupAmount;
        private DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit repositoryItemSpinEdit1;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PHUOM;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Currency;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PHAmount;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupplierQty;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SuppUOM;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_PHOUtStanding;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_EXRate;
        private DevExpress.XtraEditors.Repository.RepositoryItemDateEdit repositoryItemDateEdit1;
        #endregion
        public DevExpress.XtraGrid.Columns.GridColumn Columns_SupplierReference;
        public DevExpress.XtraEditors.Repository.RepositoryItemComboBox ComboBoxEdit;
        public DevExpress.XtraGrid.Columns.GridColumn Columns_Price;
        #region
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.Columns_Version = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_AmendmentNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Company = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PONO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_OrderLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SKU = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ComboBoxEdit = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.Columns_ColorDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_ColorShade = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SizeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SizeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Price = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemSpinEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemSpinEdit();
            this.Columns_FitCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_FitDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_IntelSizeDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_DeliveryDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemDateEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemDateEdit();
            this.Columns_SupAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHUOM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_Currency = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHAmount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SuppUOM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SupplierQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_PHOUtStanding = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_EXRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Columns_SupplierReference = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnFabricWidth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumnItemSize = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ComboBoxEdit)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemSpinEdit1,
            this.repositoryItemDateEdit1,
            this.ComboBoxEdit});
            this.objListGridControl.Size = new System.Drawing.Size(1142, 335);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Columns_Version,
            this.Columns_AmendmentNo,
            this.Columns_Company,
            this.Columns_PONO,
            this.Columns_OrderLine,
            this.Columns_SKU,
            this.Columns_ItemCode,
            this.Columns_ColorCode,
            this.Columns_ColorDesc,
            this.Columns_ColorShade,
            this.Columns_SizeCode,
            this.Columns_SizeDesc,
            this.Columns_FitCode,
            this.Columns_FitDesc,
            this.Columns_Price,
            this.Columns_Qty,
            this.Columns_SupplierQty,
            this.Columns_IntelSizeDesc,
            this.Columns_DeliveryDate,
            this.Columns_SupAmount,
            this.Columns_PHUOM,
            this.Columns_SuppUOM,
            this.Columns_Currency,
            this.Columns_PHAmount,
            this.Columns_PHOUtStanding,
            this.Columns_EXRate,
            this.Columns_SupplierReference,
            this.gridColumnFabricWidth,
            this.gridColumnItemSize});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsCustomization.AllowSort = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // Columns_Version
            // 
            this.Columns_Version.Caption = "Version";
            this.Columns_Version.FieldName = "Version";
            this.Columns_Version.Name = "Columns_Version";
            // 
            // Columns_AmendmentNo
            // 
            this.Columns_AmendmentNo.Caption = "AmendmentNo";
            this.Columns_AmendmentNo.FieldName = "AmendmentNo";
            this.Columns_AmendmentNo.Name = "Columns_AmendmentNo";
            // 
            // Columns_Company
            // 
            this.Columns_Company.Caption = "Company";
            this.Columns_Company.FieldName = "Company";
            this.Columns_Company.Name = "Columns_Company";
            // 
            // Columns_PONO
            // 
            this.Columns_PONO.Caption = "PO NO";
            this.Columns_PONO.FieldName = "PONO";
            this.Columns_PONO.Name = "Columns_PONO";
            // 
            // Columns_OrderLine
            // 
            this.Columns_OrderLine.Caption = "Order Line";
            this.Columns_OrderLine.FieldName = "OrderLine";
            this.Columns_OrderLine.Name = "Columns_OrderLine";
            this.Columns_OrderLine.Width = 90;
            // 
            // Columns_SKU
            // 
            this.Columns_SKU.Caption = "SKU";
            this.Columns_SKU.FieldName = "SKU";
            this.Columns_SKU.Name = "Columns_SKU";
            this.Columns_SKU.Width = 138;
            // 
            // Columns_ItemCode
            // 
            this.Columns_ItemCode.Caption = "Item Code";
            this.Columns_ItemCode.FieldName = "ItemCode";
            this.Columns_ItemCode.Name = "Columns_ItemCode";
            this.Columns_ItemCode.Width = 103;
            // 
            // Columns_ColorCode
            // 
            this.Columns_ColorCode.Caption = "Color";
            this.Columns_ColorCode.ColumnEdit = this.ComboBoxEdit;
            this.Columns_ColorCode.FieldName = "ColorCode";
            this.Columns_ColorCode.Name = "Columns_ColorCode";
            this.Columns_ColorCode.Visible = true;
            this.Columns_ColorCode.VisibleIndex = 0;
            this.Columns_ColorCode.Width = 82;
            // 
            // ComboBoxEdit
            // 
            this.ComboBoxEdit.AutoHeight = false;
            this.ComboBoxEdit.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ComboBoxEdit.Name = "ComboBoxEdit";
            // 
            // Columns_ColorDesc
            // 
            this.Columns_ColorDesc.Caption = "Color Desc";
            this.Columns_ColorDesc.FieldName = "ColorDesc";
            this.Columns_ColorDesc.Name = "Columns_ColorDesc";
            this.Columns_ColorDesc.Width = 79;
            // 
            // Columns_ColorShade
            // 
            this.Columns_ColorShade.Caption = "Color Shade";
            this.Columns_ColorShade.FieldName = "ColorShade";
            this.Columns_ColorShade.Name = "Columns_ColorShade";
            this.Columns_ColorShade.Visible = true;
            this.Columns_ColorShade.VisibleIndex = 12;
            this.Columns_ColorShade.Width = 106;
            // 
            // Columns_SizeCode
            // 
            this.Columns_SizeCode.Caption = "Size ";
            this.Columns_SizeCode.FieldName = "SizeCode";
            this.Columns_SizeCode.Name = "Columns_SizeCode";
            this.Columns_SizeCode.Visible = true;
            this.Columns_SizeCode.VisibleIndex = 1;
            this.Columns_SizeCode.Width = 91;
            // 
            // Columns_SizeDesc
            // 
            this.Columns_SizeDesc.Caption = "Size Desc";
            this.Columns_SizeDesc.FieldName = "SizeDesc";
            this.Columns_SizeDesc.Name = "Columns_SizeDesc";
            // 
            // Columns_Price
            // 
            this.Columns_Price.Caption = "U/Price";
            this.Columns_Price.ColumnEdit = this.repositoryItemSpinEdit1;
            this.Columns_Price.FieldName = "Price";
            this.Columns_Price.Name = "Columns_Price";
            this.Columns_Price.Visible = true;
            this.Columns_Price.VisibleIndex = 6;
            this.Columns_Price.Width = 80;
            // 
            // repositoryItemSpinEdit1
            // 
            this.repositoryItemSpinEdit1.AutoHeight = false;
            this.repositoryItemSpinEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            this.repositoryItemSpinEdit1.Name = "repositoryItemSpinEdit1";
            // 
            // Columns_FitCode
            // 
            this.Columns_FitCode.Caption = "Cup";
            this.Columns_FitCode.FieldName = "FitCode";
            this.Columns_FitCode.Name = "Columns_FitCode";
            this.Columns_FitCode.Visible = true;
            this.Columns_FitCode.VisibleIndex = 2;
            this.Columns_FitCode.Width = 83;
            // 
            // Columns_FitDesc
            // 
            this.Columns_FitDesc.Caption = "Fit Desc";
            this.Columns_FitDesc.FieldName = "FitDesc";
            this.Columns_FitDesc.Name = "Columns_FitDesc";
            // 
            // Columns_Qty
            // 
            this.Columns_Qty.Caption = "PH PO Qty";
            this.Columns_Qty.DisplayFormat.FormatString = "{0:0.00}";
            this.Columns_Qty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_Qty.FieldName = "Qty";
            this.Columns_Qty.Name = "Columns_Qty";
            this.Columns_Qty.Visible = true;
            this.Columns_Qty.VisibleIndex = 4;
            this.Columns_Qty.Width = 105;
            // 
            // Columns_IntelSizeDesc
            // 
            this.Columns_IntelSizeDesc.Caption = "Intel Size";
            this.Columns_IntelSizeDesc.FieldName = "IntelSize";
            this.Columns_IntelSizeDesc.Name = "Columns_IntelSizeDesc";
            this.Columns_IntelSizeDesc.Visible = true;
            this.Columns_IntelSizeDesc.VisibleIndex = 11;
            this.Columns_IntelSizeDesc.Width = 83;
            // 
            // Columns_DeliveryDate
            // 
            this.Columns_DeliveryDate.Caption = "Delivery Date";
            this.Columns_DeliveryDate.ColumnEdit = this.repositoryItemDateEdit1;
            this.Columns_DeliveryDate.FieldName = "DeliveryDate";
            this.Columns_DeliveryDate.Name = "Columns_DeliveryDate";
            this.Columns_DeliveryDate.Width = 93;
            // 
            // repositoryItemDateEdit1
            // 
            this.repositoryItemDateEdit1.AutoHeight = false;
            this.repositoryItemDateEdit1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemDateEdit1.Name = "repositoryItemDateEdit1";
            this.repositoryItemDateEdit1.VistaTimeProperties.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton()});
            // 
            // Columns_SupAmount
            // 
            this.Columns_SupAmount.Caption = "Supp Amount";
            this.Columns_SupAmount.ColumnEdit = this.repositoryItemSpinEdit1;
            this.Columns_SupAmount.DisplayFormat.FormatString = "{0:0.00}";
            this.Columns_SupAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_SupAmount.FieldName = "SuppAmount";
            this.Columns_SupAmount.Name = "Columns_SupAmount";
            this.Columns_SupAmount.Visible = true;
            this.Columns_SupAmount.VisibleIndex = 8;
            this.Columns_SupAmount.Width = 138;
            // 
            // Columns_PHUOM
            // 
            this.Columns_PHUOM.Caption = "PH Uom";
            this.Columns_PHUOM.FieldName = "PHUom";
            this.Columns_PHUOM.Name = "Columns_PHUOM";
            // 
            // Columns_Currency
            // 
            this.Columns_Currency.Caption = "Currency";
            this.Columns_Currency.FieldName = "Currency";
            this.Columns_Currency.Name = "Columns_Currency";
            // 
            // Columns_PHAmount
            // 
            this.Columns_PHAmount.Caption = "PH AMount(HKD)";
            this.Columns_PHAmount.DisplayFormat.FormatString = "{0:0.00}";
            this.Columns_PHAmount.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_PHAmount.FieldName = "PHAmount";
            this.Columns_PHAmount.Name = "Columns_PHAmount";
            this.Columns_PHAmount.Visible = true;
            this.Columns_PHAmount.VisibleIndex = 7;
            this.Columns_PHAmount.Width = 132;
            // 
            // Columns_SuppUOM
            // 
            this.Columns_SuppUOM.Caption = "Supplier UOM";
            this.Columns_SuppUOM.FieldName = "SupplierUOM";
            this.Columns_SuppUOM.Name = "Columns_SuppUOM";
            this.Columns_SuppUOM.Width = 90;
            // 
            // Columns_SupplierQty
            // 
            this.Columns_SupplierQty.Caption = "Supplier PO Qty";
            this.Columns_SupplierQty.DisplayFormat.FormatString = "{0:0.00}";
            this.Columns_SupplierQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.Columns_SupplierQty.FieldName = "SupplierPOQty";
            this.Columns_SupplierQty.Name = "Columns_SupplierQty";
            this.Columns_SupplierQty.Visible = true;
            this.Columns_SupplierQty.VisibleIndex = 5;
            this.Columns_SupplierQty.Width = 124;
            // 
            // Columns_PHOUtStanding
            // 
            this.Columns_PHOUtStanding.Caption = "PH Outstanding Qty";
            this.Columns_PHOUtStanding.FieldName = "PHOutstandingQty";
            this.Columns_PHOUtStanding.Name = "Columns_PHOUtStanding";
            this.Columns_PHOUtStanding.Width = 127;
            // 
            // Columns_EXRate
            // 
            this.Columns_EXRate.Caption = "ExRate";
            this.Columns_EXRate.FieldName = "ExRate";
            this.Columns_EXRate.Name = "Columns_EXRate";
            this.Columns_EXRate.Width = 86;
            // 
            // Columns_SupplierReference
            // 
            this.Columns_SupplierReference.Caption = "SupplierReference";
            this.Columns_SupplierReference.FieldName = "SupplierReference";
            this.Columns_SupplierReference.Name = "Columns_SupplierReference";
            this.Columns_SupplierReference.Visible = true;
            this.Columns_SupplierReference.VisibleIndex = 3;
            this.Columns_SupplierReference.Width = 132;
            // 
            // gridColumnFabricWidth
            // 
            this.gridColumnFabricWidth.Caption = "Item Width";
            this.gridColumnFabricWidth.FieldName = "FabricWidth";
            this.gridColumnFabricWidth.Name = "gridColumnFabricWidth";
            this.gridColumnFabricWidth.Visible = true;
            this.gridColumnFabricWidth.VisibleIndex = 9;
            this.gridColumnFabricWidth.Width = 109;
            // 
            // gridColumnItemSize
            // 
            this.gridColumnItemSize.Caption = "Spec. Item Width";
            this.gridColumnItemSize.FieldName = "ItemSize";
            this.gridColumnItemSize.Name = "gridColumnItemSize";
            this.gridColumnItemSize.Visible = true;
            this.gridColumnItemSize.VisibleIndex = 10;
            this.gridColumnItemSize.Width = 134;
            // 
            // POColorSizeDetailListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "POColorSizeDetailListForm";
            this.RowChangeAutoSave = false;
            this.Size = new System.Drawing.Size(1142, 362);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ComboBoxEdit)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemSpinEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1.VistaTimeProperties)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemDateEdit1)).EndInit();
            this.ResumeLayout(false);

        }
        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gridColumnFabricWidth;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumnItemSize;
    }
}
