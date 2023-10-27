namespace PH.SPC.UI.Setup
{
    partial class ConfirmStyleList
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
            this.gcYYMM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcQty = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.gcYYMM,
            this.gcCustomer,
            this.gcType,
            this.gcQty});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcYYMM
            // 
            this.gcYYMM.Caption = "YYMM";
            this.gcYYMM.FieldName = "YYMM";
            this.gcYYMM.Name = "gcYYMM";
            this.gcYYMM.Visible = true;
            this.gcYYMM.VisibleIndex = 0;
            // 
            // gcCustomer
            // 
            this.gcCustomer.Caption = "Customer";
            this.gcCustomer.FieldName = "CustomerId";
            this.gcCustomer.Name = "gcCustomer";
            this.gcCustomer.Visible = true;
            this.gcCustomer.VisibleIndex = 1;
            this.gcCustomer.Width = 98;
            // 
            // gcType
            // 
            this.gcType.Caption = "Style Type";
            this.gcType.FieldName = "TypeDesc";
            this.gcType.Name = "gcType";
            this.gcType.Visible = true;
            this.gcType.VisibleIndex = 2;
            this.gcType.Width = 209;
            // 
            // gcQty
            // 
            this.gcQty.Caption = "Confirm Order Qty";
            this.gcQty.FieldName = "Qty";
            this.gcQty.Name = "gcQty";
            this.gcQty.Visible = true;
            this.gcQty.VisibleIndex = 3;
            this.gcQty.Width = 257;
            // 
            // ConfirmStyleList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ConfirmStyleList";
            this.RowChangeAutoSave = false;
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcYYMM;
        private DevExpress.XtraGrid.Columns.GridColumn gcCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn gcType;
        private DevExpress.XtraGrid.Columns.GridColumn gcQty;
    }
}
