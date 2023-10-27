namespace PH.FabricInspection.UI.SupplierQE.BandLace
{
    partial class sSupplierBatchInfoBandLaceListForm
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
            this.colSupplich_Batch = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItem_No = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colItem_Desc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStock_In_Date = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRollQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalLength = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateByUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colCreateOnDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterByUser = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colAlterOnDate = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colSupplich_Batch,
            this.colItem_No,
            this.colItem_Desc,
            this.colStock_In_Date,
            this.colRollQty,
            this.colTotalLength,
            this.colRemark,
            this.colCreateByUser,
            this.colCreateOnDate,
            this.colAlterByUser,
            this.colAlterOnDate});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.OptionsView.ShowFooter = true;
            this.objListGridView.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.objListGridView_CustomSummaryCalculate);
            this.objListGridView.ValidateRow += new DevExpress.XtraGrid.Views.Base.ValidateRowEventHandler(this.objListGridView_ValidateRow);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.SupplierBatchInfoBandLace);
            // 
            // colSupplich_Batch
            // 
            this.colSupplich_Batch.Caption = "Supplich Batch No.";
            this.colSupplich_Batch.FieldName = "Supplich_Batch";
            this.colSupplich_Batch.Name = "colSupplich_Batch";
            this.colSupplich_Batch.OptionsColumn.AllowEdit = false;
            this.colSupplich_Batch.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSupplich_Batch.Visible = true;
            this.colSupplich_Batch.VisibleIndex = 0;
            this.colSupplich_Batch.Width = 130;
            // 
            // colItem_No
            // 
            this.colItem_No.Caption = "Item Cde/Clr";
            this.colItem_No.FieldName = "ItemCodeColorShow";
            this.colItem_No.Name = "colItem_No";
            this.colItem_No.OptionsColumn.AllowEdit = false;
            this.colItem_No.SummaryItem.FieldName = "Item_No";
            this.colItem_No.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colItem_No.Visible = true;
            this.colItem_No.VisibleIndex = 1;
            this.colItem_No.Width = 120;
            // 
            // colItem_Desc
            // 
            this.colItem_Desc.Caption = "Item_Desc";
            this.colItem_Desc.FieldName = "Item_Desc";
            this.colItem_Desc.Name = "colItem_Desc";
            this.colItem_Desc.OptionsColumn.AllowEdit = false;
            this.colItem_Desc.Width = 146;
            // 
            // colStock_In_Date
            // 
            this.colStock_In_Date.Caption = "Stock In Date";
            this.colStock_In_Date.FieldName = "Stock_In_Date";
            this.colStock_In_Date.Name = "colStock_In_Date";
            this.colStock_In_Date.OptionsColumn.AllowEdit = false;
            this.colStock_In_Date.Visible = true;
            this.colStock_In_Date.VisibleIndex = 2;
            this.colStock_In_Date.Width = 100;
            // 
            // colRollQty
            // 
            this.colRollQty.AppearanceCell.Options.UseTextOptions = true;
            this.colRollQty.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colRollQty.Caption = "Roll Qty";
            this.colRollQty.FieldName = "RollQty";
            this.colRollQty.Name = "colRollQty";
            this.colRollQty.Visible = true;
            this.colRollQty.VisibleIndex = 3;
            this.colRollQty.Width = 80;
            // 
            // colTotalLength
            // 
            this.colTotalLength.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalLength.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Far;
            this.colTotalLength.Caption = "Total Length";
            this.colTotalLength.FieldName = "TotalLength";
            this.colTotalLength.Name = "colTotalLength";
            this.colTotalLength.Visible = true;
            this.colTotalLength.VisibleIndex = 4;
            this.colTotalLength.Width = 100;
            // 
            // colRemark
            // 
            this.colRemark.Caption = "Remark";
            this.colRemark.FieldName = "Remark";
            this.colRemark.Name = "colRemark";
            this.colRemark.Visible = true;
            this.colRemark.VisibleIndex = 5;
            this.colRemark.Width = 200;
            // 
            // colCreateByUser
            // 
            this.colCreateByUser.Caption = "Create By User";
            this.colCreateByUser.FieldName = "CreateByUser";
            this.colCreateByUser.Name = "colCreateByUser";
            this.colCreateByUser.OptionsColumn.AllowEdit = false;
            this.colCreateByUser.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colCreateByUser.Visible = true;
            this.colCreateByUser.VisibleIndex = 6;
            this.colCreateByUser.Width = 100;
            // 
            // colCreateOnDate
            // 
            this.colCreateOnDate.Caption = "Create On Date";
            this.colCreateOnDate.FieldName = "CreateOnDate";
            this.colCreateOnDate.Name = "colCreateOnDate";
            this.colCreateOnDate.OptionsColumn.AllowEdit = false;
            this.colCreateOnDate.Visible = true;
            this.colCreateOnDate.VisibleIndex = 7;
            this.colCreateOnDate.Width = 200;
            // 
            // colAlterByUser
            // 
            this.colAlterByUser.Caption = "Alter By User";
            this.colAlterByUser.FieldName = "AlterByUser";
            this.colAlterByUser.Name = "colAlterByUser";
            this.colAlterByUser.OptionsColumn.AllowEdit = false;
            this.colAlterByUser.Visible = true;
            this.colAlterByUser.VisibleIndex = 8;
            this.colAlterByUser.Width = 100;
            // 
            // colAlterOnDate
            // 
            this.colAlterOnDate.Caption = "Alter On Date";
            this.colAlterOnDate.FieldName = "AlterOnDate";
            this.colAlterOnDate.Name = "colAlterOnDate";
            this.colAlterOnDate.OptionsColumn.AllowEdit = false;
            this.colAlterOnDate.Visible = true;
            this.colAlterOnDate.VisibleIndex = 9;
            this.colAlterOnDate.Width = 100;
            // 
            // SupplierBatchInfoBandLaceListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SupplierBatchInfoBandLaceListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colSupplich_Batch;
        private DevExpress.XtraGrid.Columns.GridColumn colItem_No;
        private DevExpress.XtraGrid.Columns.GridColumn colItem_Desc;
        private DevExpress.XtraGrid.Columns.GridColumn colStock_In_Date;
        private DevExpress.XtraGrid.Columns.GridColumn colRollQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalLength;
        private DevExpress.XtraGrid.Columns.GridColumn colRemark;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateByUser;
        private DevExpress.XtraGrid.Columns.GridColumn colCreateOnDate;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterByUser;
        private DevExpress.XtraGrid.Columns.GridColumn colAlterOnDate;
    }
}
