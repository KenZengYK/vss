namespace PH.MobileQC.UI
{
    partial class StyleLineQCStatListForm_Comp
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
            this.colW_Procedure = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colQC_Time = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStatus = new DevExpress.XtraGrid.Columns.GridColumn();
            this.BtnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.colFAE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colGXH = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BtnPrint,
            this.barButtonItem1});
            this.objbarManager.MaxItemId = 41;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem1)});
            // 
            // barBtnFind
            // 
            this.barBtnFind.Visibility = DevExpress.XtraBars.BarItemVisibility.Always;
            this.barBtnFind.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnFind_ItemClick);
            // 
            // BindingSource
            // 
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.StyleLineQCStatResult);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.Size = new System.Drawing.Size(990, 478);
            this.objListGridControl.Click += new System.EventHandler(this.objListGridControl_Click);
            // 
            // objListGridView
            // 
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colFAE,
            this.colGXH,
            this.colW_Procedure,
            this.colQC_Time,
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn3,
            this.colStatus});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.DoubleClick += new System.EventHandler(this.objListGridView_DoubleClick);
            this.objListGridView.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.objListGridView_CustomDrawCell);
            // 
            // colW_Procedure
            // 
            this.colW_Procedure.Caption = "Component";
            this.colW_Procedure.FieldName = "GXDH";
            this.colW_Procedure.Name = "colW_Procedure";
            this.colW_Procedure.Visible = true;
            this.colW_Procedure.VisibleIndex = 0;
            this.colW_Procedure.Width = 102;
            // 
            // colQC_Time
            // 
            this.colQC_Time.Caption = "OPN Name";
            this.colQC_Time.FieldName = "GXM";
            this.colQC_Time.Name = "colQC_Time";
            this.colQC_Time.Width = 305;
            // 
            // colStatus
            // 
            this.colStatus.AppearanceCell.Options.UseTextOptions = true;
            this.colStatus.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStatus.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Center;
            this.colStatus.Caption = "Quality Status";
            this.colStatus.FieldName = "Status";
            this.colStatus.Name = "colStatus";
            this.colStatus.Visible = true;
            this.colStatus.VisibleIndex = 4;
            this.colStatus.Width = 103;
            // 
            // BtnPrint
            // 
            this.BtnPrint.Caption = "Print";
            this.BtnPrint.Id = 39;
            this.BtnPrint.Name = "BtnPrint";
            this.BtnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.BtnPrint_ItemClick);
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "WFID";
            this.gridColumn1.FieldName = "WorkerID";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 1;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "WF Name";
            this.gridColumn2.FieldName = "WorkerName";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 2;
            this.gridColumn2.Width = 112;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Last Checking Time";
            this.gridColumn3.FieldName = "LastQC_Time_Disp";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 3;
            this.gridColumn3.Width = 147;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "Print";
            this.barButtonItem1.Id = 40;
            this.barButtonItem1.Name = "barButtonItem1";
            this.barButtonItem1.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.BtnPrint_ItemClick);
            // 
            // colFAE
            // 
            this.colFAE.Caption = "FAE";
            this.colFAE.FieldName = "FAE";
            this.colFAE.Name = "colFAE";
            this.colFAE.Width = 46;
            // 
            // colGXH
            // 
            this.colGXH.Caption = "GXH";
            this.colGXH.FieldName = "GXH";
            this.colGXH.Name = "colGXH";
            // 
            // StyleLineQCStatListForm_Comp
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "StyleLineQCStatListForm_Comp";
            this.Size = new System.Drawing.Size(990, 505);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn colW_Procedure;
        private DevExpress.XtraGrid.Columns.GridColumn colQC_Time;
        private DevExpress.XtraGrid.Columns.GridColumn colStatus;
        private DevExpress.XtraBars.BarButtonItem BtnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraGrid.Columns.GridColumn colFAE;
        private DevExpress.XtraGrid.Columns.GridColumn colGXH;
    }
}
