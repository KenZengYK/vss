namespace PH.LWPM.UI.MasterDB
{
    partial class DepartmentListForm
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
            this.colHWCostDescriptionEn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWCostDescriptionLocal = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1278, 508);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHWCostDescriptionEn,
            this.colHWCostDescriptionLocal});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colHWCostDescriptionEn
            // 
            this.colHWCostDescriptionEn.Caption = "HW Cost for Mgt Acct";
            this.colHWCostDescriptionEn.FieldName = "HWCostDescriptionEn";
            this.colHWCostDescriptionEn.Name = "colHWCostDescriptionEn";
            this.colHWCostDescriptionEn.Width = 245;
            // 
            // colHWCostDescriptionLocal
            // 
            this.colHWCostDescriptionLocal.Caption = "HW Cost for Mgt Acct (CN)";
            this.colHWCostDescriptionLocal.FieldName = "HWCostDescriptionLocal";
            this.colHWCostDescriptionLocal.Name = "colHWCostDescriptionLocal";
            this.colHWCostDescriptionLocal.Width = 272;
            // 
            // DepartmentListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DepartmentListForm";
            this.Size = new System.Drawing.Size(1278, 535);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHWCostDescriptionEn;
        private DevExpress.XtraGrid.Columns.GridColumn colHWCostDescriptionLocal;
    }
}
