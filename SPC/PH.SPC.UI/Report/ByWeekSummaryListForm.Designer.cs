namespace PH.SPC.UI.Report
{
    partial class ByWeekSummaryListForm
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
            this.colCustomer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colYear = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeek = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGroups = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStyles = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTimes = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.SPC.BO.ByWeekSummaryReportResult);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colCustomer,
            this.colYear,
            this.colWeek,
            this.colGroups,
            this.colStyles,
            this.colTimes});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "Customer";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            this.colCustomer.VisibleIndex = 0;
            // 
            // colYear
            // 
            this.colYear.Caption = "Year";
            this.colYear.FieldName = "Year";
            this.colYear.Name = "colYear";
            this.colYear.Visible = true;
            this.colYear.VisibleIndex = 1;
            // 
            // colWeek
            // 
            this.colWeek.Caption = "Week";
            this.colWeek.FieldName = "Week";
            this.colWeek.Name = "colWeek";
            this.colWeek.Visible = true;
            this.colWeek.VisibleIndex = 2;
            // 
            // colGroups
            // 
            this.colGroups.Caption = "Groups";
            this.colGroups.FieldName = "Groups";
            this.colGroups.Name = "colGroups";
            this.colGroups.Visible = true;
            this.colGroups.VisibleIndex = 3;
            // 
            // colStyles
            // 
            this.colStyles.Caption = "Styles";
            this.colStyles.FieldName = "Styles";
            this.colStyles.Name = "colStyles";
            this.colStyles.Visible = true;
            this.colStyles.VisibleIndex = 4;
            // 
            // colTimes
            // 
            this.colTimes.Caption = "Times";
            this.colTimes.FieldName = "Times";
            this.colTimes.Name = "colTimes";
            this.colTimes.Visible = true;
            this.colTimes.VisibleIndex = 5;
            // 
            // ByWeekSummaryListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ByWeekSummaryListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colCustomer;
        private DevExpress.XtraGrid.Columns.GridColumn colYear;
        private DevExpress.XtraGrid.Columns.GridColumn colWeek;
        private DevExpress.XtraGrid.Columns.GridColumn colGroups;
        private DevExpress.XtraGrid.Columns.GridColumn colStyles;
        private DevExpress.XtraGrid.Columns.GridColumn colTimes;
    }
}
