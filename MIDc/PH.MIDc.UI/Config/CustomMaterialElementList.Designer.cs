namespace PH.MIDc.UI
{
    partial class CustomMaterialElementList
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
            this.gcCustomNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcSeq = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcElement = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcElementDesc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRemark = new DevExpress.XtraGrid.Columns.GridColumn();
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
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcCustomNo,
            this.gcSeq,
            this.gcSortId,
            this.gcElement,
            this.gcElementDesc,
            this.gcRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcCustomNo
            // 
            this.gcCustomNo.Caption = "Custom No.";
            this.gcCustomNo.FieldName = "CustomNo";
            this.gcCustomNo.Name = "gcCustomNo";
            this.gcCustomNo.Visible = true;
            this.gcCustomNo.VisibleIndex = 0;
            this.gcCustomNo.Width = 95;
            // 
            // gcSeq
            // 
            this.gcSeq.Caption = "HSCode Seq";
            this.gcSeq.FieldName = "HSCodeSeq";
            this.gcSeq.Name = "gcSeq";
            this.gcSeq.Visible = true;
            this.gcSeq.VisibleIndex = 1;
            this.gcSeq.Width = 108;
            // 
            // gcElement
            // 
            this.gcElement.Caption = "Element No.";
            this.gcElement.FieldName = "ElementNo";
            this.gcElement.Name = "gcElement";
            this.gcElement.Visible = true;
            this.gcElement.VisibleIndex = 3;
            this.gcElement.Width = 103;
            // 
            // gcElementDesc
            // 
            this.gcElementDesc.Caption = "Element Desc";
            this.gcElementDesc.FieldName = "ElementDesc";
            this.gcElementDesc.Name = "gcElementDesc";
            this.gcElementDesc.Visible = true;
            this.gcElementDesc.VisibleIndex = 4;
            this.gcElementDesc.Width = 214;
            // 
            // gcRemark
            // 
            this.gcRemark.Caption = "Remark";
            this.gcRemark.FieldName = "Remark";
            this.gcRemark.Name = "gcRemark";
            this.gcRemark.Visible = true;
            this.gcRemark.VisibleIndex = 5;
            this.gcRemark.Width = 380;
            // 
            // gcSortId
            // 
            this.gcSortId.Caption = "Sort ID";
            this.gcSortId.FieldName = "SortId";
            this.gcSortId.Name = "gcSortId";
            this.gcSortId.Visible = true;
            this.gcSortId.VisibleIndex = 2;
            this.gcSortId.Width = 60;
            // 
            // CustomMaterialElementList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "CustomMaterialElementList";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcCustomNo;
        private DevExpress.XtraGrid.Columns.GridColumn gcSeq;
        private DevExpress.XtraGrid.Columns.GridColumn gcElement;
        private DevExpress.XtraGrid.Columns.GridColumn gcElementDesc;
        private DevExpress.XtraGrid.Columns.GridColumn gcRemark;
        private DevExpress.XtraGrid.Columns.GridColumn gcSortId;
    }
}
