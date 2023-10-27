namespace PH.MR.UI.FRN
{
    partial class FRNListForm
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
            this.gcProject = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWorkOrder = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSupplierItem = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDeliveryDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcEx_FtyDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWO_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcColor_Qty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFRN_YY = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcOriginal_YY = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWastage_Per = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFrntotal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWastQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDiffQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDiffPer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcErpInputQty = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Location = new System.Drawing.Point(0, 27);
            this.objListGridControl.Size = new System.Drawing.Size(803, 272);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcProject,
            this.gcWorkOrder,
            this.gcStyle,
            this.gcWO_Qty,
            this.gcDeliveryDate,
            this.gcEx_FtyDate,
            this.gcItemCode,
            this.gcSupplierItem,
            this.gcColorCode,
            this.gcColor_Qty,
            this.gcFRN_YY,
            this.gcWastage_Per,
            this.gcWastQty,
            this.gcFrntotal,
            this.gcErpInputQty,
            this.gcOriginal_YY,
            this.gcDiffQty,
            this.gcDiffPer});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcProject
            // 
            this.gcProject.Caption = "Project No.";
            this.gcProject.FieldName = "ProjectNo";
            this.gcProject.Name = "gcProject";
            this.gcProject.Visible = true;
            this.gcProject.VisibleIndex = 0;
            // 
            // gcWorkOrder
            // 
            this.gcWorkOrder.Caption = "Work Order";
            this.gcWorkOrder.FieldName = "WorkOrder";
            this.gcWorkOrder.Name = "gcWorkOrder";
            this.gcWorkOrder.Visible = true;
            this.gcWorkOrder.VisibleIndex = 1;
            this.gcWorkOrder.Width = 101;
            // 
            // gcItemCode
            // 
            this.gcItemCode.Caption = "Item Code";
            this.gcItemCode.FieldName = "ItemCode";
            this.gcItemCode.Name = "gcItemCode";
            this.gcItemCode.Visible = true;
            this.gcItemCode.VisibleIndex = 6;
            // 
            // gcColorCode
            // 
            this.gcColorCode.Caption = "Color";
            this.gcColorCode.FieldName = "ColorCode";
            this.gcColorCode.Name = "gcColorCode";
            this.gcColorCode.Visible = true;
            this.gcColorCode.VisibleIndex = 8;
            // 
            // gcStyle
            // 
            this.gcStyle.Caption = "Style";
            this.gcStyle.FieldName = "StyleNo";
            this.gcStyle.Name = "gcStyle";
            this.gcStyle.Visible = true;
            this.gcStyle.VisibleIndex = 2;
            // 
            // gcSupplierItem
            // 
            this.gcSupplierItem.Caption = "Supplier Item";
            this.gcSupplierItem.FieldName = "SupplierItem";
            this.gcSupplierItem.Name = "gcSupplierItem";
            this.gcSupplierItem.Visible = true;
            this.gcSupplierItem.VisibleIndex = 7;
            // 
            // gcDeliveryDate
            // 
            this.gcDeliveryDate.Caption = "Delivery Date";
            this.gcDeliveryDate.FieldName = "DeliveryDate";
            this.gcDeliveryDate.Name = "gcDeliveryDate";
            this.gcDeliveryDate.Visible = true;
            this.gcDeliveryDate.VisibleIndex = 4;
            // 
            // gcEx_FtyDate
            // 
            this.gcEx_FtyDate.Caption = "Ex_Fty Date";
            this.gcEx_FtyDate.FieldName = "Ex_FtyDate";
            this.gcEx_FtyDate.Name = "gcEx_FtyDate";
            this.gcEx_FtyDate.Visible = true;
            this.gcEx_FtyDate.VisibleIndex = 5;
            // 
            // gcWO_Qty
            // 
            this.gcWO_Qty.Caption = "WO Qty";
            this.gcWO_Qty.FieldName = "WO_Qty";
            this.gcWO_Qty.Name = "gcWO_Qty";
            this.gcWO_Qty.Visible = true;
            this.gcWO_Qty.VisibleIndex = 3;
            // 
            // gcColor_Qty
            // 
            this.gcColor_Qty.Caption = "Color Qty";
            this.gcColor_Qty.FieldName = "Color_Qty";
            this.gcColor_Qty.Name = "gcColor_Qty";
            this.gcColor_Qty.Visible = true;
            this.gcColor_Qty.VisibleIndex = 9;
            // 
            // gcFRN_YY
            // 
            this.gcFRN_YY.Caption = "FRN YY";
            this.gcFRN_YY.DisplayFormat.FormatString = "###0.00";
            this.gcFRN_YY.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcFRN_YY.FieldName = "FRN_YY";
            this.gcFRN_YY.Name = "gcFRN_YY";
            this.gcFRN_YY.Visible = true;
            this.gcFRN_YY.VisibleIndex = 10;
            // 
            // gcOriginal_YY
            // 
            this.gcOriginal_YY.Caption = "Planning YY";
            this.gcOriginal_YY.DisplayFormat.FormatString = "###0.00";
            this.gcOriginal_YY.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcOriginal_YY.FieldName = "Original_YY";
            this.gcOriginal_YY.Name = "gcOriginal_YY";
            this.gcOriginal_YY.Visible = true;
            this.gcOriginal_YY.VisibleIndex = 15;
            // 
            // gcWastage_Per
            // 
            this.gcWastage_Per.Caption = "Percent Wastage ";
            this.gcWastage_Per.DisplayFormat.FormatString = "###0.00";
            this.gcWastage_Per.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcWastage_Per.FieldName = "Wastage_Per";
            this.gcWastage_Per.Name = "gcWastage_Per";
            this.gcWastage_Per.Visible = true;
            this.gcWastage_Per.VisibleIndex = 11;
            // 
            // gcFrntotal
            // 
            this.gcFrntotal.Caption = "FRN Total";
            this.gcFrntotal.DisplayFormat.FormatString = "###0.00";
            this.gcFrntotal.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcFrntotal.FieldName = "FRN_Total";
            this.gcFrntotal.Name = "gcFrntotal";
            this.gcFrntotal.Visible = true;
            this.gcFrntotal.VisibleIndex = 13;
            // 
            // gcWastQty
            // 
            this.gcWastQty.Caption = "Wastage Qty";
            this.gcWastQty.DisplayFormat.FormatString = "###0.00";
            this.gcWastQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcWastQty.FieldName = "Wastage_Qty";
            this.gcWastQty.Name = "gcWastQty";
            this.gcWastQty.Visible = true;
            this.gcWastQty.VisibleIndex = 12;
            // 
            // gcDiffQty
            // 
            this.gcDiffQty.Caption = "Diff Qty";
            this.gcDiffQty.DisplayFormat.FormatString = "###0.00";
            this.gcDiffQty.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcDiffQty.FieldName = "Diff_Qty";
            this.gcDiffQty.Name = "gcDiffQty";
            this.gcDiffQty.Visible = true;
            this.gcDiffQty.VisibleIndex = 16;
            // 
            // gcDiffPer
            // 
            this.gcDiffPer.Caption = "Diff Per";
            this.gcDiffPer.DisplayFormat.FormatString = "###0.00";
            this.gcDiffPer.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.gcDiffPer.FieldName = "Diff_Per";
            this.gcDiffPer.Name = "gcDiffPer";
            this.gcDiffPer.Visible = true;
            this.gcDiffPer.VisibleIndex = 17;
            // 
            // gcErpInputQty
            // 
            this.gcErpInputQty.Caption = "Erp Input Qty";
            this.gcErpInputQty.FieldName = "Erp_InputQty";
            this.gcErpInputQty.Name = "gcErpInputQty";
            this.gcErpInputQty.Visible = true;
            this.gcErpInputQty.VisibleIndex = 14;
            // 
            // FRNListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.Name = "FRNListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcProject;
        private DevExpress.XtraGrid.Columns.GridColumn gcWorkOrder;
        private DevExpress.XtraGrid.Columns.GridColumn gcItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcStyle;
        private DevExpress.XtraGrid.Columns.GridColumn gcSupplierItem;
        private DevExpress.XtraGrid.Columns.GridColumn gcDeliveryDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcEx_FtyDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcWO_Qty;
        private DevExpress.XtraGrid.Columns.GridColumn gcColor_Qty;
        private DevExpress.XtraGrid.Columns.GridColumn gcFRN_YY;
        private DevExpress.XtraGrid.Columns.GridColumn gcOriginal_YY;
        private DevExpress.XtraGrid.Columns.GridColumn gcWastage_Per;
        private DevExpress.XtraGrid.Columns.GridColumn gcFrntotal;
        private DevExpress.XtraGrid.Columns.GridColumn gcWastQty;
        private DevExpress.XtraGrid.Columns.GridColumn gcErpInputQty;
        private DevExpress.XtraGrid.Columns.GridColumn gcDiffQty;
        private DevExpress.XtraGrid.Columns.GridColumn gcDiffPer;
    }
}
