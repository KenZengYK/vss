namespace PH.LWPM.UI.LB4
{
    partial class LB4ChildListDemo
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
            this.barBtnWF = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnMC = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnCopy = new DevExpress.XtraBars.BarButtonItem();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colGh = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colName = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colJWorkSN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colJWorkSN_LB3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colCWorkSN_LB3 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnWF,
            this.barBtnMC,
            this.barBtnCopy});
            this.objbarManager.MaxItemId = 63;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnWF, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnMC, true),
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnCopy, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(1115, 292);
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
            // barBtnWF
            // 
            this.barBtnWF.Caption = "AttachWF";
            this.barBtnWF.Id = 60;
            this.barBtnWF.Name = "barBtnWF";
            // 
            // barBtnMC
            // 
            this.barBtnMC.Caption = "AttachMC";
            this.barBtnMC.Id = 61;
            this.barBtnMC.Name = "barBtnMC";
            // 
            // barBtnCopy
            // 
            this.barBtnCopy.Caption = "Copy";
            this.barBtnCopy.Id = 62;
            this.barBtnCopy.Name = "barBtnCopy";
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6,
            this.gridBand7,
            this.gridBand8,
            this.gridBand9,
            this.gridBand10});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colGh,
            this.colName,
            this.colJWorkSN_LB3,
            this.colJWorkSN,
            this.colCWorkSN_LB3});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.AllowCellMerge = true;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Employee";
            this.gridBand1.Columns.Add(this.colGh);
            this.gridBand1.Columns.Add(this.colName);
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 150;
            // 
            // colGh
            // 
            this.colGh.Caption = "Gh";
            this.colGh.FieldName = "WorkerId";
            this.colGh.Name = "colGh";
            this.colGh.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colGh.Visible = true;
            // 
            // colName
            // 
            this.colName.Caption = "Name";
            this.colName.FieldName = "WorkerName";
            this.colName.Name = "colName";
            this.colName.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colName.Visible = true;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "CJ Info";
            this.gridBand2.Columns.Add(this.colJWorkSN);
            this.gridBand2.Columns.Add(this.colJWorkSN_LB3);
            this.gridBand2.Columns.Add(this.colCWorkSN_LB3);
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 275;
            // 
            // colJWorkSN
            // 
            this.colJWorkSN.Caption = "JWorkSN";
            this.colJWorkSN.FieldName = "JWorkSN";
            this.colJWorkSN.Name = "colJWorkSN";
            this.colJWorkSN.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colJWorkSN.Visible = true;
            this.colJWorkSN.Width = 69;
            // 
            // colJWorkSN_LB3
            // 
            this.colJWorkSN_LB3.Caption = "JWorkSN_LB3";
            this.colJWorkSN_LB3.FieldName = "JWorkSN_LB3";
            this.colJWorkSN_LB3.Name = "colJWorkSN_LB3";
            this.colJWorkSN_LB3.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.colJWorkSN_LB3.Visible = true;
            this.colJWorkSN_LB3.Width = 58;
            // 
            // colCWorkSN_LB3
            // 
            this.colCWorkSN_LB3.Caption = "CWorkSN_LB3";
            this.colCWorkSN_LB3.FieldName = "CWorkSN_LB3";
            this.colCWorkSN_LB3.Name = "colCWorkSN_LB3";
            this.colCWorkSN_LB3.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.False;
            this.colCWorkSN_LB3.Visible = true;
            this.colCWorkSN_LB3.Width = 148;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "gridBand3";
            this.gridBand3.Name = "gridBand3";
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "gridBand4";
            this.gridBand4.Name = "gridBand4";
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "gridBand5";
            this.gridBand5.Name = "gridBand5";
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "gridBand6";
            this.gridBand6.Name = "gridBand6";
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "gridBand7";
            this.gridBand7.Name = "gridBand7";
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "gridBand8";
            this.gridBand8.Name = "gridBand8";
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "gridBand9";
            this.gridBand9.Name = "gridBand9";
            // 
            // gridBand10
            // 
            this.gridBand10.Caption = "gridBand10";
            this.gridBand10.Name = "gridBand10";
            // 
            // LB4ChildListDemo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "LB4ChildListDemo";
            this.Size = new System.Drawing.Size(1115, 319);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        public DevExpress.XtraBars.BarButtonItem barBtnWF;
        public DevExpress.XtraBars.BarButtonItem barBtnMC;
        public DevExpress.XtraBars.BarButtonItem barBtnCopy;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colGh;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colName;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colJWorkSN_LB3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colJWorkSN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCWorkSN_LB3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
    }
}
