namespace PH.MIDc.UI
{
    partial class ElementList
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
            this.gcCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDataName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDataNameCN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDataNameEN = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSort = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.gcCode,
            this.colSort,
            this.gcDataNameCN,
            this.gcDataName,
            this.gcDataNameEN,
            this.gcDesc});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcCode
            // 
            this.gcCode.Caption = "Code";
            this.gcCode.FieldName = "DataCode";
            this.gcCode.Name = "gcCode";
            this.gcCode.Visible = true;
            this.gcCode.VisibleIndex = 0;
            this.gcCode.Width = 125;
            // 
            // gcDataName
            // 
            this.gcDataName.Caption = "DataName(TW)";
            this.gcDataName.FieldName = "DataName";
            this.gcDataName.Name = "gcDataName";
            this.gcDataName.Visible = true;
            this.gcDataName.VisibleIndex = 3;
            this.gcDataName.Width = 192;
            // 
            // gcDesc
            // 
            this.gcDesc.Caption = "Description";
            this.gcDesc.FieldName = "Description";
            this.gcDesc.Name = "gcDesc";
            this.gcDesc.Width = 554;
            // 
            // gcDataNameCN
            // 
            this.gcDataNameCN.Caption = "DataName(CN)";
            this.gcDataNameCN.FieldName = "DataNameCN";
            this.gcDataNameCN.Name = "gcDataNameCN";
            this.gcDataNameCN.Visible = true;
            this.gcDataNameCN.VisibleIndex = 2;
            this.gcDataNameCN.Width = 229;
            // 
            // gcDataNameEN
            // 
            this.gcDataNameEN.Caption = "DataName(EN)";
            this.gcDataNameEN.FieldName = "DataNameEN";
            this.gcDataNameEN.Name = "gcDataNameEN";
            this.gcDataNameEN.Visible = true;
            this.gcDataNameEN.VisibleIndex = 4;
            this.gcDataNameEN.Width = 232;
            // 
            // colSort
            // 
            this.colSort.Caption = "SortID";
            this.colSort.FieldName = "SortID";
            this.colSort.Name = "colSort";
            this.colSort.Visible = true;
            this.colSort.VisibleIndex = 1;
            this.colSort.Width = 55;
            // 
            // ElementList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ElementList";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcDataName;
        private DevExpress.XtraGrid.Columns.GridColumn gcDesc;
        private DevExpress.XtraGrid.Columns.GridColumn gcDataNameCN;
        private DevExpress.XtraGrid.Columns.GridColumn gcDataNameEN;
        private DevExpress.XtraGrid.Columns.GridColumn colSort;
    }
}
