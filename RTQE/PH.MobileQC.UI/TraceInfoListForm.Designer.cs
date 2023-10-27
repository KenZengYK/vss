namespace PH.MobileQC.UI
{
    partial class TraceInfoListForm
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
            this.gcDefect = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcLevel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcExecuter = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcCreateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUpdater = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcUpdateTime = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFinish = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFinDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFac = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWorkshop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcLine = new DevExpress.XtraGrid.Columns.GridColumn();
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
            this.BindingSource.DataSource = typeof(PH.MobileQC.BO.TraceInfo);
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.objListGridView.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.objListGridView.ColumnPanelRowHeight = 35;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.gcDefect,
            this.gcLevel,
            this.gcExecuter,
            this.gcCreater,
            this.gcCreateTime,
            this.gcUpdater,
            this.gcUpdateTime,
            this.gcFinish,
            this.gcFinDate,
            this.gcFac,
            this.gcWorkshop,
            this.gcLine});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            // 
            // gcDefect
            // 
            this.gcDefect.Caption = "追蹤暇疵";
            this.gcDefect.FieldName = "DefectList";
            this.gcDefect.Name = "gcDefect";
            this.gcDefect.OptionsColumn.AllowEdit = false;
            this.gcDefect.Visible = true;
            this.gcDefect.VisibleIndex = 3;
            this.gcDefect.Width = 407;
            // 
            // gcLevel
            // 
            this.gcLevel.Caption = "追蹤程度";
            this.gcLevel.FieldName = "Level_Disp";
            this.gcLevel.Name = "gcLevel";
            this.gcLevel.OptionsColumn.AllowEdit = false;
            this.gcLevel.Visible = true;
            this.gcLevel.VisibleIndex = 4;
            this.gcLevel.Width = 159;
            // 
            // gcExecuter
            // 
            this.gcExecuter.Caption = "執行者";
            this.gcExecuter.FieldName = "Exec_Disp";
            this.gcExecuter.Name = "gcExecuter";
            this.gcExecuter.OptionsColumn.AllowEdit = false;
            this.gcExecuter.Width = 56;
            // 
            // gcCreater
            // 
            this.gcCreater.Caption = "建立者";
            this.gcCreater.FieldName = "CreateBy";
            this.gcCreater.Name = "gcCreater";
            this.gcCreater.OptionsColumn.AllowEdit = false;
            this.gcCreater.Visible = true;
            this.gcCreater.VisibleIndex = 7;
            this.gcCreater.Width = 57;
            // 
            // gcCreateTime
            // 
            this.gcCreateTime.Caption = "建立時間";
            this.gcCreateTime.FieldName = "CreateTime";
            this.gcCreateTime.Name = "gcCreateTime";
            this.gcCreateTime.OptionsColumn.AllowEdit = false;
            this.gcCreateTime.Visible = true;
            this.gcCreateTime.VisibleIndex = 8;
            this.gcCreateTime.Width = 71;
            // 
            // gcUpdater
            // 
            this.gcUpdater.Caption = "修改者";
            this.gcUpdater.FieldName = "UpdateBy";
            this.gcUpdater.Name = "gcUpdater";
            this.gcUpdater.OptionsColumn.AllowEdit = false;
            this.gcUpdater.Visible = true;
            this.gcUpdater.VisibleIndex = 9;
            this.gcUpdater.Width = 60;
            // 
            // gcUpdateTime
            // 
            this.gcUpdateTime.Caption = "修改時間";
            this.gcUpdateTime.FieldName = "UpdateTime";
            this.gcUpdateTime.Name = "gcUpdateTime";
            this.gcUpdateTime.OptionsColumn.AllowEdit = false;
            this.gcUpdateTime.Visible = true;
            this.gcUpdateTime.VisibleIndex = 10;
            this.gcUpdateTime.Width = 77;
            // 
            // gcFinish
            // 
            this.gcFinish.AppearanceHeader.Options.UseTextOptions = true;
            this.gcFinish.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcFinish.Caption = "是否己完成";
            this.gcFinish.FieldName = "Finish";
            this.gcFinish.Name = "gcFinish";
            this.gcFinish.Visible = true;
            this.gcFinish.VisibleIndex = 5;
            this.gcFinish.Width = 59;
            // 
            // gcFinDate
            // 
            this.gcFinDate.Caption = "完成日期";
            this.gcFinDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.gcFinDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.gcFinDate.FieldName = "FinishDate";
            this.gcFinDate.Name = "gcFinDate";
            this.gcFinDate.OptionsColumn.AllowEdit = false;
            this.gcFinDate.Visible = true;
            this.gcFinDate.VisibleIndex = 6;
            this.gcFinDate.Width = 93;
            // 
            // gcFac
            // 
            this.gcFac.Caption = "工廠";
            this.gcFac.FieldName = "Factory";
            this.gcFac.Name = "gcFac";
            this.gcFac.Visible = true;
            this.gcFac.VisibleIndex = 0;
            this.gcFac.Width = 44;
            // 
            // gcWorkshop
            // 
            this.gcWorkshop.Caption = "車間";
            this.gcWorkshop.FieldName = "Workshop";
            this.gcWorkshop.Name = "gcWorkshop";
            this.gcWorkshop.Visible = true;
            this.gcWorkshop.VisibleIndex = 1;
            this.gcWorkshop.Width = 46;
            // 
            // gcLine
            // 
            this.gcLine.Caption = "組裝線";
            this.gcLine.FieldName = "Line";
            this.gcLine.Name = "gcLine";
            this.gcLine.Visible = true;
            this.gcLine.VisibleIndex = 2;
            this.gcLine.Width = 58;
            // 
            // TraceInfoListForm
            // 
            this.AllowAddRow = false;
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TraceInfoListForm";
            this.RowChangeAutoSave = false;
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn gcDefect;
        private DevExpress.XtraGrid.Columns.GridColumn gcLevel;
        private DevExpress.XtraGrid.Columns.GridColumn gcExecuter;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreater;
        private DevExpress.XtraGrid.Columns.GridColumn gcCreateTime;
        private DevExpress.XtraGrid.Columns.GridColumn gcUpdater;
        private DevExpress.XtraGrid.Columns.GridColumn gcUpdateTime;
        private DevExpress.XtraGrid.Columns.GridColumn gcFinish;
        private DevExpress.XtraGrid.Columns.GridColumn gcFinDate;
        private DevExpress.XtraGrid.Columns.GridColumn gcFac;
        private DevExpress.XtraGrid.Columns.GridColumn gcWorkshop;
        private DevExpress.XtraGrid.Columns.GridColumn gcLine;
    }
}
