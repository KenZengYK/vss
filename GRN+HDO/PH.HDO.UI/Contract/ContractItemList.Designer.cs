namespace PH.HDO.UI.Contract
{
    partial class ContractItemList
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
            this.gcGrnNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcHSCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcActive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcMaterial = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcItem = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcItem,
            this.gcGrnNo,
            this.gcHSCode,
            this.gcMaterial,
            this.gcPO,
            this.gcActive});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcGrnNo
            // 
            this.gcGrnNo.Caption = "Grn No.";
            this.gcGrnNo.FieldName = "GrnNo";
            this.gcGrnNo.Name = "gcGrnNo";
            this.gcGrnNo.OptionsColumn.AllowEdit = false;
            this.gcGrnNo.Visible = true;
            this.gcGrnNo.VisibleIndex = 1;
            this.gcGrnNo.Width = 104;
            // 
            // gcHSCode
            // 
            this.gcHSCode.Caption = "海關料號";
            this.gcHSCode.FieldName = "HSCode";
            this.gcHSCode.Name = "gcHSCode";
            this.gcHSCode.OptionsColumn.AllowEdit = false;
            this.gcHSCode.Visible = true;
            this.gcHSCode.VisibleIndex = 2;
            this.gcHSCode.Width = 108;
            // 
            // gcPO
            // 
            this.gcPO.Caption = "采購單號";
            this.gcPO.FieldName = "PO";
            this.gcPO.Name = "gcPO";
            this.gcPO.Visible = true;
            this.gcPO.VisibleIndex = 4;
            this.gcPO.Width = 91;
            // 
            // gcActive
            // 
            this.gcActive.Caption = "是否使用采購單 ?";
            this.gcActive.FieldName = "POActive";
            this.gcActive.Name = "gcActive";
            this.gcActive.Visible = true;
            this.gcActive.VisibleIndex = 5;
            this.gcActive.Width = 140;
            // 
            // gcMaterial
            // 
            this.gcMaterial.Caption = "海關物料名稱";
            this.gcMaterial.FieldName = "MaterialName";
            this.gcMaterial.Name = "gcMaterial";
            this.gcMaterial.OptionsColumn.AllowEdit = false;
            this.gcMaterial.Visible = true;
            this.gcMaterial.VisibleIndex = 3;
            this.gcMaterial.Width = 254;
            // 
            // gcItem
            // 
            this.gcItem.Caption = "項號";
            this.gcItem.FieldName = "BG_Item";
            this.gcItem.Name = "gcItem";
            this.gcItem.Visible = true;
            this.gcItem.VisibleIndex = 0;
            // 
            // ContractItemList
            // 
            this.AllowAddRow = false;
            this.AllowGridEdit = true;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ContractItemList";
            this.ShowMultiCheck = true;
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcGrnNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcHSCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcPO;
        private DevExpress.XtraGrid.Columns.GridColumn gcActive;
        private DevExpress.XtraGrid.Columns.GridColumn gcMaterial;
        private DevExpress.XtraGrid.Columns.GridColumn gcItem;
    }
}
