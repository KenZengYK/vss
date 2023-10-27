namespace PH.LWPM.UI.MasterDB
{
    partial class RECRoleListForm
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
            this.colDiffDept = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRECDepartment = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colNameBd = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // colLang
            // 
            this.colLang.Width = 76;
            // 
            // colName
            // 
            this.colName.Width = 287;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.Size = new System.Drawing.Size(1303, 483);
            // 
            // objListGridView
            // 
            this.objListGridView.ColumnPanelRowHeight = 40;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colDiffDept,
            this.colRECDepartment,
            this.colNameBd});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colDiffDept
            // 
            this.colDiffDept.AppearanceCell.Options.UseTextOptions = true;
            this.colDiffDept.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colDiffDept.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colDiffDept.Caption = "Conducted\r\nby Diff. Dept.";
            this.colDiffDept.FieldName = "HSCode";
            this.colDiffDept.Name = "colDiffDept";
            this.colDiffDept.Visible = true;
            this.colDiffDept.VisibleIndex = 4;
            this.colDiffDept.Width = 96;
            // 
            // colRECDepartment
            // 
            this.colRECDepartment.Caption = "Appointed Departmental";
            this.colRECDepartment.FieldName = "RECDepartment";
            this.colRECDepartment.Name = "colRECDepartment";
            this.colRECDepartment.Visible = true;
            this.colRECDepartment.VisibleIndex = 5;
            this.colRECDepartment.Width = 260;
            // 
            // colNameBd
            // 
            this.colNameBd.Caption = "REC";
            this.colNameBd.FieldName = "NameBd";
            this.colNameBd.Name = "colNameBd";
            this.colNameBd.Visible = true;
            this.colNameBd.VisibleIndex = 6;
            this.colNameBd.Width = 102;
            // 
            // RECRoleListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "RECRoleListForm";
            this.Size = new System.Drawing.Size(1303, 510);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colDiffDept;
        private DevExpress.XtraGrid.Columns.GridColumn colRECDepartment;
        private DevExpress.XtraGrid.Columns.GridColumn colNameBd;
    }
}
