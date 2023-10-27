namespace PH.MIDc.UI.Config
{
    partial class BrandListForm
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
            this.colBrandCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBrandName_EN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colBrandName_CN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(890, 316);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colBrandCode,
            this.colBrandName_EN,
            this.colBrandName_CN});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MIDc.BO.Brand);
            // 
            // colBrandCode
            // 
            this.colBrandCode.Caption = "BrandCode";
            this.colBrandCode.FieldName = "BrandCode";
            this.colBrandCode.Name = "colBrandCode";
            this.colBrandCode.Visible = true;
            this.colBrandCode.VisibleIndex = 0;
            this.colBrandCode.Width = 81;
            // 
            // colBrandName_EN
            // 
            this.colBrandName_EN.Caption = "BrandName_EN";
            this.colBrandName_EN.FieldName = "BrandName_EN";
            this.colBrandName_EN.Name = "colBrandName_EN";
            this.colBrandName_EN.Visible = true;
            this.colBrandName_EN.VisibleIndex = 1;
            this.colBrandName_EN.Width = 106;
            // 
            // colBrandName_CN
            // 
            this.colBrandName_CN.Caption = "BrandName_CN";
            this.colBrandName_CN.FieldName = "BrandName_CN";
            this.colBrandName_CN.Name = "colBrandName_CN";
            this.colBrandName_CN.Visible = true;
            this.colBrandName_CN.VisibleIndex = 2;
            this.colBrandName_CN.Width = 106;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Import Brand from ERP";
            this.barButtonItem1.Id = 60;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // BrandListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "BrandListForm";
            this.Size = new System.Drawing.Size(890, 343);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colBrandCode;
        private DevExpress.XtraGrid.Columns.GridColumn colBrandName_EN;
        private DevExpress.XtraGrid.Columns.GridColumn colBrandName_CN;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
    }
}
