namespace PH.POPC.UI.ActionLog
{
    partial class ActionLogCategoryListForm
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
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGroupName_EN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGroupCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colGroupName_CN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBigCategory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCategory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDescription = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colDescription_EN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(1193, 541);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // objListGridView
            // 
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ActionLogCategory);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand1});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colBigCategory,
            this.colCategory,
            this.colCode,
            this.colDescription,
            this.colDescription_EN,
            this.colGroupCode,
            this.colGroupName_EN,
            this.colGroupName_CN});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Cause Group";
            this.gridBand2.Columns.Add(this.colGroupName_EN);
            this.gridBand2.Columns.Add(this.colGroupCode);
            this.gridBand2.Columns.Add(this.colGroupName_CN);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 380;
            // 
            // colGroupName_EN
            // 
            this.colGroupName_EN.Caption = "Cde";
            this.colGroupName_EN.FieldName = "GroupName_EN";
            this.colGroupName_EN.Name = "colGroupName_EN";
            this.colGroupName_EN.Visible = true;
            this.colGroupName_EN.Width = 57;
            // 
            // colGroupCode
            // 
            this.colGroupCode.Caption = "Desc. (EN)";
            this.colGroupCode.FieldName = "GroupCode";
            this.colGroupCode.Name = "colGroupCode";
            this.colGroupCode.Visible = true;
            this.colGroupCode.Width = 169;
            // 
            // colGroupName_CN
            // 
            this.colGroupName_CN.Caption = "Desc. (CN)";
            this.colGroupName_CN.FieldName = "GroupName_CN";
            this.colGroupName_CN.Name = "colGroupName_CN";
            this.colGroupName_CN.Visible = true;
            this.colGroupName_CN.Width = 154;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Cause Category";
            this.gridBand1.Columns.Add(this.colBigCategory);
            this.gridBand1.Columns.Add(this.colCategory);
            this.gridBand1.Columns.Add(this.colCode);
            this.gridBand1.Columns.Add(this.colDescription_EN);
            this.gridBand1.Columns.Add(this.colDescription);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 744;
            // 
            // colBigCategory
            // 
            this.colBigCategory.Caption = "Main Category";
            this.colBigCategory.FieldName = "BigCategory";
            this.colBigCategory.Name = "colBigCategory";
            this.colBigCategory.Width = 109;
            // 
            // colCategory
            // 
            this.colCategory.Caption = "Category";
            this.colCategory.FieldName = "Category";
            this.colCategory.Name = "colCategory";
            this.colCategory.Width = 84;
            // 
            // colCode
            // 
            this.colCode.Caption = "Cde";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.Width = 56;
            // 
            // colDescription
            // 
            this.colDescription.Caption = "Desc. (CN)";
            this.colDescription.FieldName = "Description";
            this.colDescription.Name = "colDescription";
            this.colDescription.Visible = true;
            this.colDescription.Width = 301;
            // 
            // colDescription_EN
            // 
            this.colDescription_EN.Caption = "Desc. (EN)";
            this.colDescription_EN.FieldName = "Description_EN";
            this.colDescription_EN.Name = "colDescription_EN";
            this.colDescription_EN.Visible = true;
            this.colDescription_EN.Width = 387;
            // 
            // ActionLogCategoryListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ActionLogCategoryListForm";
            this.Size = new System.Drawing.Size(1193, 568);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGroupName_EN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGroupCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGroupName_CN;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBigCategory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCategory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDescription;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colDescription_EN;

    }
}
