namespace PH.MobileQC.UI.Setup
{
    partial class QC_AQLLevelListForm
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
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOATeam = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCustomer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAQLMarjorLevel = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colAQLMinorLevel = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.QC_AQLLevel);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colOATeam,
            this.colCustomer,
            this.colProjectNo,
            this.colAQLMarjorLevel,
            this.colAQLMinorLevel});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "基本信息";
            this.gridBand1.Columns.Add(this.colOATeam);
            this.gridBand1.Columns.Add(this.colCustomer);
            this.gridBand1.Columns.Add(this.colProjectNo);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 264;
            // 
            // colOATeam
            // 
            this.colOATeam.Caption = "跟單組別";
            this.colOATeam.FieldName = "OATeam";
            this.colOATeam.Name = "colOATeam";
            this.colOATeam.Visible = true;
            // 
            // colCustomer
            // 
            this.colCustomer.Caption = "客戶";
            this.colCustomer.FieldName = "Customer";
            this.colCustomer.Name = "colCustomer";
            this.colCustomer.Visible = true;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "客戶工程代號";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 114;
            // 
            // colAQLMarjorLevel
            // 
            this.colAQLMarjorLevel.Caption = "主要";
            this.colAQLMarjorLevel.FieldName = "AQLMarjorLevel";
            this.colAQLMarjorLevel.Name = "colAQLMarjorLevel";
            this.colAQLMarjorLevel.Visible = true;
            this.colAQLMarjorLevel.Width = 117;
            // 
            // colAQLMinorLevel
            // 
            this.colAQLMinorLevel.Caption = "次要";
            this.colAQLMinorLevel.FieldName = "AQLMinorLevel";
            this.colAQLMinorLevel.Name = "colAQLMinorLevel";
            this.colAQLMinorLevel.Visible = true;
            this.colAQLMinorLevel.Width = 123;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "AQL 接受標准";
            this.gridBand2.Columns.Add(this.colAQLMarjorLevel);
            this.gridBand2.Columns.Add(this.colAQLMinorLevel);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 240;
            // 
            // QC_AQLLevelListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "QC_AQLLevelListForm";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOATeam;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCustomer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAQLMarjorLevel;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colAQLMinorLevel;

    }
}
