namespace PH.MobileQC.UI
{
    partial class FW_Operation_Performance
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
            DevExpress.XtraGrid.GridLevelNode gridLevelNode1 = new DevExpress.XtraGrid.GridLevelNode();
            this.colfactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colworkshop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colworker = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colqccount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLightCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPHMergeDefectCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 55;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1)});
            // 
            // barBtnDel
            // 
            this.barBtnDel.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnOpen
            // 
            this.barBtnOpen.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnAddNew
            // 
            this.barBtnAddNew.Visibility = DevExpress.XtraBars.BarItemVisibility.Never;
            // 
            // barBtnFind
            // 
            this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;

            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colfactory,
            this.colworkshop,
            this.colworker,
            this.gridColumn2,
            this.colqccount,
            this.colLightCount,
            this.colPHMergeDefectCode,
            this.gridColumn1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // colfactory
            // 
            this.colfactory.Caption = "Factory";
            this.colfactory.FieldName = "factory";
            this.colfactory.Name = "colfactory";
            this.colfactory.Visible = true;
            this.colfactory.VisibleIndex = 0;
            // 
            // colworkshop
            // 
            this.colworkshop.Caption = "WorkShop";
            this.colworkshop.FieldName = "workshop";
            this.colworkshop.Name = "colworkshop";
            this.colworkshop.Visible = true;
            this.colworkshop.VisibleIndex = 1;
            // 
            // colworker
            // 
            this.colworker.Caption = "Worker";
            this.colworker.FieldName = "worker";
            this.colworker.Name = "colworker";
            this.colworker.Visible = true;
            this.colworker.VisibleIndex = 2;
            // 
            // colqccount
            // 
            this.colqccount.Caption = "QC Qty";
            this.colqccount.FieldName = "qccount";
            this.colqccount.Name = "colqccount";
            this.colqccount.Visible = true;
            this.colqccount.VisibleIndex = 4;
            // 
            // colLightCount
            // 
            this.colLightCount.Caption = "NoPass Qty";
            this.colLightCount.FieldName = "LightCount";
            this.colLightCount.Name = "colLightCount";
            this.colLightCount.Visible = true;
            this.colLightCount.VisibleIndex = 5;
            // 
            // colPHMergeDefectCode
            // 
            this.colPHMergeDefectCode.Caption = "Defect Code";
            this.colPHMergeDefectCode.FieldName = "PHMergeDefectCode";
            this.colPHMergeDefectCode.Name = "colPHMergeDefectCode";
            this.colPHMergeDefectCode.Visible = true;
            this.colPHMergeDefectCode.VisibleIndex = 6;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Print";
            this.barButtonItem1.Id = 54;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem1_ItemClick);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "PY Rate";
            this.gridColumn1.FieldName = "pyrate";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 7;
            this.gridColumn1.Width = 125;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Worker Name";
            this.gridColumn2.FieldName = "workername";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 3;
            this.gridColumn2.Width = 100;
            // 
            // FW_Operation_Performance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "FW_Operation_Performance";
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colfactory;
        private DevExpress.XtraGrid.Columns.GridColumn colworkshop;
        private DevExpress.XtraGrid.Columns.GridColumn colworker;
        private DevExpress.XtraGrid.Columns.GridColumn colqccount;
        private DevExpress.XtraGrid.Columns.GridColumn colLightCount;
        private DevExpress.XtraGrid.Columns.GridColumn colPHMergeDefectCode;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;

    }
}
