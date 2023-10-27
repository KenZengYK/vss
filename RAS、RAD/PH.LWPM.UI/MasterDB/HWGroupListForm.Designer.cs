namespace PH.LWPM.UI.MasterDB
{
    partial class HWGroupListForm
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
            this.colHWCategoryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWCategoryDescriptionLocal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWCategoryDescriptionEn = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // colSortID
            // 
            this.colSortID.Width = 79;
            // 
            // colLang
            // 
            this.colLang.Caption = "HW Grp Code";
            this.colLang.VisibleIndex = 2;
            this.colLang.Width = 97;
            // 
            // colName
            // 
            this.colName.VisibleIndex = 3;
            // 
            // colDescription
            // 
            this.colDescription.VisibleIndex = 4;
            this.colDescription.Width = 226;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1219, 418);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHWCategoryCode,
            this.colHWCategoryDescriptionEn,
            this.colHWCategoryDescriptionLocal});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colHWCategoryCode
            // 
            this.colHWCategoryCode.Caption = "HW Cat. Code";
            this.colHWCategoryCode.FieldName = "HSCode";
            this.colHWCategoryCode.Name = "colHWCategoryCode";
            this.colHWCategoryCode.Visible = true;
            this.colHWCategoryCode.VisibleIndex = 1;
            this.colHWCategoryCode.Width = 127;
            // 
            // colHWCategoryDescriptionLocal
            // 
            this.colHWCategoryDescriptionLocal.Caption = "HW Category Description (CN)";
            this.colHWCategoryDescriptionLocal.FieldName = "HWCategoryDescriptionLocal";
            this.colHWCategoryDescriptionLocal.Name = "colHWCategoryDescriptionLocal";
            this.colHWCategoryDescriptionLocal.Width = 228;
            // 
            // colHWCategoryDescriptionEn
            // 
            this.colHWCategoryDescriptionEn.Caption = "HW Category Description";
            this.colHWCategoryDescriptionEn.FieldName = "HWCategoryDescriptionEn";
            this.colHWCategoryDescriptionEn.Name = "colHWCategoryDescriptionEn";
            this.colHWCategoryDescriptionEn.Width = 222;
            // 
            // HWGroupListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HWGroupListForm";
            this.Size = new System.Drawing.Size(1219, 445);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHWCategoryCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWCategoryDescriptionEn;
        private DevExpress.XtraGrid.Columns.GridColumn colHWCategoryDescriptionLocal;
    }
}
