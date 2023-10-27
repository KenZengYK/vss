namespace PH.LWPM.UI.MasterDB
{
    partial class HWTypeListForm
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
            this.colHWGroupCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWTypeCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colExtraField1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colHWCategoryCode = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // colSortID
            // 
            this.colSortID.FieldName = "Lang";
            // 
            // colLang
            // 
            this.colLang.Caption = "BD HS Code";
            this.colLang.FieldName = "HSCode";
            this.colLang.VisibleIndex = 7;
            // 
            // colName
            // 
            this.colName.FieldName = "NameEN";
            this.colName.VisibleIndex = 4;
            // 
            // colDescription
            // 
            this.colDescription.FieldName = "Name";
            this.colDescription.VisibleIndex = 5;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1252, 418);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colHWCategoryCode,
            this.colHWGroupCode,
            this.colHWTypeCode,
            this.colExtraField1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colHWGroupCode
            // 
            this.colHWGroupCode.Caption = "HW Grp Code";
            this.colHWGroupCode.FieldName = "Description";
            this.colHWGroupCode.Name = "colHWGroupCode";
            this.colHWGroupCode.Visible = true;
            this.colHWGroupCode.VisibleIndex = 2;
            this.colHWGroupCode.Width = 97;
            // 
            // colHWTypeCode
            // 
            this.colHWTypeCode.Caption = "HW Type Code";
            this.colHWTypeCode.FieldName = "Code";
            this.colHWTypeCode.Name = "colHWTypeCode";
            this.colHWTypeCode.Visible = true;
            this.colHWTypeCode.VisibleIndex = 3;
            this.colHWTypeCode.Width = 106;
            // 
            // colExtraField1
            // 
            this.colExtraField1.Caption = "HW Type various explanation";
            this.colExtraField1.FieldName = "ExtraField1";
            this.colExtraField1.Name = "colExtraField1";
            this.colExtraField1.UnboundType = DevExpress.Data.UnboundColumnType.Integer;
            this.colExtraField1.Visible = true;
            this.colExtraField1.VisibleIndex = 6;
            this.colExtraField1.Width = 181;
            // 
            // colHWCategoryCode
            // 
            this.colHWCategoryCode.Caption = "HW Cat. Code";
            this.colHWCategoryCode.FieldName = "HWCategoryCodeOfHWType";
            this.colHWCategoryCode.Name = "colHWCategoryCode";
            this.colHWCategoryCode.Visible = true;
            this.colHWCategoryCode.VisibleIndex = 1;
            this.colHWCategoryCode.Width = 100;
            // 
            // HWTypeListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "HWTypeListForm";
            this.Size = new System.Drawing.Size(1252, 445);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colHWGroupCode;
        private DevExpress.XtraGrid.Columns.GridColumn colHWTypeCode;
        private DevExpress.XtraGrid.Columns.GridColumn colExtraField1;
        private DevExpress.XtraGrid.Columns.GridColumn colHWCategoryCode;
    }
}
