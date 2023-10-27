namespace PH.LWPM.UI.MC
{
    partial class McClassList
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
            this.gcName_en = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcName_cn = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSortId = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.LWPM.BO.McClassDetail);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcName_en,
            this.gcName_cn,
            this.gcSortId});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcName_en
            // 
            this.gcName_en.Caption = "Eng";
            this.gcName_en.FieldName = "Name_en";
            this.gcName_en.Name = "gcName_en";
            this.gcName_en.Visible = true;
            this.gcName_en.VisibleIndex = 1;
            this.gcName_en.Width = 369;
            // 
            // gcName_cn
            // 
            this.gcName_cn.Caption = "Local";
            this.gcName_cn.FieldName = "Name_cn";
            this.gcName_cn.Name = "gcName_cn";
            this.gcName_cn.Visible = true;
            this.gcName_cn.VisibleIndex = 2;
            this.gcName_cn.Width = 297;
            // 
            // gcSortId
            // 
            this.gcSortId.Caption = "Seq No.";
            this.gcSortId.FieldName = "SortID";
            this.gcSortId.Name = "gcSortId";
            this.gcSortId.Visible = true;
            this.gcSortId.VisibleIndex = 0;
            // 
            // McClassList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "McClassList";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcName_en;
        private DevExpress.XtraGrid.Columns.GridColumn gcName_cn;
        private DevExpress.XtraGrid.Columns.GridColumn gcSortId;
    }
}
