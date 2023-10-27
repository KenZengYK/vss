namespace PH.MobileQC.UI
{
    partial class DefectPosition
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
            this.Defect_Type = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Defect_Code = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Defect_Spec = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRemark = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(806, 506);
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 35;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Defect_Type,
            this.Defect_Spec,
            this.gridColumn1,
            this.gridColumn2,
            this.Defect_Code,
            this.gcRemark});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcRemark, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.Defect_Code, DevExpress.Data.ColumnSortOrder.Ascending)});
            // 
            // Defect_Type
            // 
            this.Defect_Type.Caption = "Defect Type";
            this.Defect_Type.FieldName = "Defect_Type_Zh";
            this.Defect_Type.Name = "Defect_Type";
            this.Defect_Type.Width = 77;
            // 
            // Defect_Code
            // 
            this.Defect_Code.AppearanceHeader.Options.UseTextOptions = true;
            this.Defect_Code.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Defect_Code.Caption = "Defect Code";
            this.Defect_Code.FieldName = "Defect_Code";
            this.Defect_Code.Name = "Defect_Code";
            this.Defect_Code.Visible = true;
            this.Defect_Code.VisibleIndex = 0;
            this.Defect_Code.Width = 99;
            // 
            // Defect_Spec
            // 
            this.Defect_Spec.AppearanceHeader.Options.UseTextOptions = true;
            this.Defect_Spec.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.Defect_Spec.Caption = "description(CN)";
            this.Defect_Spec.FieldName = "Defect_Spec";
            this.Defect_Spec.Name = "Defect_Spec";
            this.Defect_Spec.Visible = true;
            this.Defect_Spec.VisibleIndex = 1;
            this.Defect_Spec.Width = 176;
            // 
            // gcRemark
            // 
            this.gcRemark.AppearanceHeader.Options.UseTextOptions = true;
            this.gcRemark.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gcRemark.Caption = "  Product\r\nApplication";
            this.gcRemark.FieldName = "Remark";
            this.gcRemark.Name = "gcRemark";
            this.gcRemark.Visible = true;
            this.gcRemark.VisibleIndex = 4;
            this.gcRemark.Width = 144;
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn1.Caption = "description(En)";
            this.gridColumn1.FieldName = "Desc_EN";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 2;
            this.gridColumn1.Width = 165;
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceCell.Font = new System.Drawing.Font("SutonnyOMJ", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gridColumn2.AppearanceCell.Options.UseFont = true;
            this.gridColumn2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridColumn2.Caption = "description(BD)";
            this.gridColumn2.FieldName = "Desc_TH";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 3;
            this.gridColumn2.Width = 165;
            // 
            // DefectPosition
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "DefectPosition";
            this.Size = new System.Drawing.Size(806, 533);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn Defect_Type;
        private DevExpress.XtraGrid.Columns.GridColumn Defect_Code;
        private DevExpress.XtraGrid.Columns.GridColumn Defect_Spec;
        private DevExpress.XtraGrid.Columns.GridColumn gcRemark;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
    }
}
