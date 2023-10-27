namespace PH.MobileQC.UI
{
    partial class MasterSupplementList
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
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.gcRole = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Line = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Project = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Style = new DevExpress.XtraGrid.Columns.GridColumn();
            this.W_procedure = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Worker = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QNNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QC_Time = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QCCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcRWO = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcPCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFcount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barBtnPrint = new DevExpress.XtraBars.BarButtonItem();
            this.gcWOC = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcAuditer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWorkshop = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcActive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcReaudit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcFAE = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDefCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDefName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcDefLoc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ricbx1 = new DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbx1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barBtnPrint});
            this.objbarManager.MaxItemId = 21;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.ricbx1});
            this.objListGridControl.Size = new System.Drawing.Size(1148, 517);
            // 
            // objListGridView
            // 
            this.objListGridView.Appearance.Preview.Options.UseTextOptions = true;
            this.objListGridView.Appearance.Preview.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.objListGridView.ColumnPanelRowHeight = 35;
            this.objListGridView.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.Line,
            this.QNNo,
            this.Project,
            this.Style,
            this.gcWO,
            this.gcRWO,
            this.gcWOC,
            this.W_procedure,
            this.Worker,
            this.gcActive,
            this.QC_Time,
            this.gcAuditer,
            this.QCCount,
            this.gcPCount,
            this.gcFcount,
            this.gcFactory,
            this.gcWorkshop,
            this.gcReaudit,
            this.gcFAE,
            this.gcDefCode,
            this.gcDefName,
            this.gcDefLoc,
            this.gcRole});
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Yellow;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.gcRole;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "巡審定";
            this.objListGridView.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.AllowCellMerge = true;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcFactory, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.gcWorkshop, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.W_procedure, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.QC_Time, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.objListGridView.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.objListGridView_CellMerge);
            this.objListGridView.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.objListGridView_RowCellStyle);
            // 
            // gcRole
            // 
            this.gcRole.Caption = "Role";
            this.gcRole.FieldName = "RoleName";
            this.gcRole.Name = "gcRole";
            this.gcRole.Visible = true;
            this.gcRole.VisibleIndex = 21;
            // 
            // Line
            // 
            this.Line.AppearanceHeader.Options.UseTextOptions = true;
            this.Line.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Line.Caption = "Line";
            this.Line.FieldName = "Line";
            this.Line.Name = "Line";
            this.Line.Visible = true;
            this.Line.VisibleIndex = 2;
            this.Line.Width = 56;
            // 
            // Project
            // 
            this.Project.AppearanceHeader.Options.UseTextOptions = true;
            this.Project.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Project.Caption = "Project";
            this.Project.FieldName = "Project";
            this.Project.Name = "Project";
            this.Project.Visible = true;
            this.Project.VisibleIndex = 3;
            this.Project.Width = 67;
            // 
            // Style
            // 
            this.Style.AppearanceHeader.Options.UseTextOptions = true;
            this.Style.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Style.Caption = "Style";
            this.Style.FieldName = "Style";
            this.Style.Name = "Style";
            this.Style.Visible = true;
            this.Style.VisibleIndex = 7;
            // 
            // W_procedure
            // 
            this.W_procedure.AppearanceHeader.Options.UseTextOptions = true;
            this.W_procedure.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.W_procedure.Caption = "Operation";
            this.W_procedure.FieldName = "W_procedure";
            this.W_procedure.Name = "W_procedure";
            this.W_procedure.OptionsColumn.AllowMerge = DevExpress.Utils.DefaultBoolean.True;
            this.W_procedure.Visible = true;
            this.W_procedure.VisibleIndex = 9;
            this.W_procedure.Width = 88;
            // 
            // Worker
            // 
            this.Worker.AppearanceHeader.Options.UseTextOptions = true;
            this.Worker.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Worker.Caption = "Workforce";
            this.Worker.FieldName = "Worker";
            this.Worker.Name = "Worker";
            this.Worker.Visible = true;
            this.Worker.VisibleIndex = 10;
            this.Worker.Width = 79;
            // 
            // QNNo
            // 
            this.QNNo.AppearanceHeader.Options.UseTextOptions = true;
            this.QNNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QNNo.Caption = "QN#";
            this.QNNo.FieldName = "QNNO";
            this.QNNo.Name = "QNNo";
            this.QNNo.Visible = true;
            this.QNNo.VisibleIndex = 6;
            this.QNNo.Width = 49;
            // 
            // QC_Time
            // 
            this.QC_Time.AppearanceHeader.Options.UseTextOptions = true;
            this.QC_Time.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QC_Time.Caption = "QE Time";
            this.QC_Time.DisplayFormat.FormatString = "yy/MM/dd HH:mm";
            this.QC_Time.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.QC_Time.FieldName = "QC_time";
            this.QC_Time.Name = "QC_Time";
            this.QC_Time.Visible = true;
            this.QC_Time.VisibleIndex = 12;
            this.QC_Time.Width = 110;
            // 
            // QCCount
            // 
            this.QCCount.AppearanceHeader.Options.UseTextOptions = true;
            this.QCCount.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QCCount.Caption = "QC Qty";
            this.QCCount.FieldName = "QCCount";
            this.QCCount.Name = "QCCount";
            this.QCCount.Visible = true;
            this.QCCount.VisibleIndex = 14;
            this.QCCount.Width = 60;
            // 
            // gcWO
            // 
            this.gcWO.AppearanceHeader.Options.UseTextOptions = true;
            this.gcWO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcWO.Caption = "WO";
            this.gcWO.FieldName = "WO";
            this.gcWO.Name = "gcWO";
            this.gcWO.Visible = true;
            this.gcWO.VisibleIndex = 4;
            // 
            // gcRWO
            // 
            this.gcRWO.AppearanceHeader.Options.UseTextOptions = true;
            this.gcRWO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcRWO.Caption = "RWO";
            this.gcRWO.FieldName = "RWO";
            this.gcRWO.Name = "gcRWO";
            this.gcRWO.Visible = true;
            this.gcRWO.VisibleIndex = 5;
            this.gcRWO.Width = 48;
            // 
            // gcPCount
            // 
            this.gcPCount.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gcPCount.AppearanceHeader.Options.UseForeColor = true;
            this.gcPCount.Caption = "P";
            this.gcPCount.FieldName = "PCount";
            this.gcPCount.Name = "gcPCount";
            this.gcPCount.Visible = true;
            this.gcPCount.VisibleIndex = 15;
            this.gcPCount.Width = 33;
            // 
            // gcFcount
            // 
            this.gcFcount.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gcFcount.AppearanceHeader.Options.UseForeColor = true;
            this.gcFcount.Caption = "F";
            this.gcFcount.FieldName = "FCount";
            this.gcFcount.Name = "gcFcount";
            this.gcFcount.Visible = true;
            this.gcFcount.VisibleIndex = 16;
            this.gcFcount.Width = 28;
            // 
            // barButtonItem1
            // 
            this.barButtonItem1.Caption = "按工序";
            this.barButtonItem1.Id = 15;
            this.barButtonItem1.Name = "barButtonItem1";
            // 
            // barButtonItem2
            // 
            this.barButtonItem2.Caption = "按員工";
            this.barButtonItem2.Id = 16;
            this.barButtonItem2.Name = "barButtonItem2";
            // 
            // barButtonItem3
            // 
            this.barButtonItem3.Caption = "按工序+員工";
            this.barButtonItem3.Id = 17;
            this.barButtonItem3.Name = "barButtonItem3";
            // 
            // barBtnPrint
            // 
            this.barBtnPrint.Caption = "Print";
            this.barBtnPrint.Id = 18;
            this.barBtnPrint.Name = "barBtnPrint";
            this.barBtnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrint_ItemClick);
            // 
            // gcWOC
            // 
            this.gcWOC.AppearanceHeader.Options.UseTextOptions = true;
            this.gcWOC.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcWOC.Caption = "WOc";
            this.gcWOC.FieldName = "WOC";
            this.gcWOC.Name = "gcWOC";
            // 
            // gcFactory
            // 
            this.gcFactory.AppearanceHeader.Options.UseTextOptions = true;
            this.gcFactory.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcFactory.Caption = "Fty";
            this.gcFactory.FieldName = "Factory";
            this.gcFactory.Name = "gcFactory";
            this.gcFactory.Visible = true;
            this.gcFactory.VisibleIndex = 0;
            this.gcFactory.Width = 38;
            // 
            // gcAuditer
            // 
            this.gcAuditer.AppearanceHeader.Options.UseTextOptions = true;
            this.gcAuditer.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcAuditer.Caption = "QE Man";
            this.gcAuditer.FieldName = "QCMan";
            this.gcAuditer.Name = "gcAuditer";
            this.gcAuditer.Visible = true;
            this.gcAuditer.VisibleIndex = 20;
            this.gcAuditer.Width = 55;
            // 
            // gcWorkshop
            // 
            this.gcWorkshop.AppearanceHeader.Options.UseTextOptions = true;
            this.gcWorkshop.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcWorkshop.Caption = "Ws";
            this.gcWorkshop.FieldName = "WorkShop";
            this.gcWorkshop.Name = "gcWorkshop";
            this.gcWorkshop.Visible = true;
            this.gcWorkshop.VisibleIndex = 1;
            this.gcWorkshop.Width = 42;
            // 
            // gcActive
            // 
            this.gcActive.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gcActive.AppearanceHeader.Options.UseForeColor = true;
            this.gcActive.AppearanceHeader.Options.UseTextOptions = true;
            this.gcActive.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gcActive.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcActive.Caption = "Active  Job";
            this.gcActive.FieldName = "InActive";
            this.gcActive.Name = "gcActive";
            this.gcActive.Visible = true;
            this.gcActive.VisibleIndex = 11;
            this.gcActive.Width = 56;
            // 
            // gcReaudit
            // 
            this.gcReaudit.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gcReaudit.AppearanceHeader.Options.UseForeColor = true;
            this.gcReaudit.AppearanceHeader.Options.UseTextOptions = true;
            this.gcReaudit.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcReaudit.Caption = "Re-audit?";
            this.gcReaudit.FieldName = "ReAudit";
            this.gcReaudit.Name = "gcReaudit";
            this.gcReaudit.Visible = true;
            this.gcReaudit.VisibleIndex = 13;
            this.gcReaudit.Width = 55;
            // 
            // gcFAE
            // 
            this.gcFAE.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gcFAE.AppearanceHeader.Options.UseForeColor = true;
            this.gcFAE.AppearanceHeader.Options.UseTextOptions = true;
            this.gcFAE.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcFAE.Caption = "FAE";
            this.gcFAE.FieldName = "FAE";
            this.gcFAE.Name = "gcFAE";
            this.gcFAE.Visible = true;
            this.gcFAE.VisibleIndex = 8;
            this.gcFAE.Width = 43;
            // 
            // gcDefCode
            // 
            this.gcDefCode.AppearanceHeader.Options.UseTextOptions = true;
            this.gcDefCode.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcDefCode.Caption = "Defect Code";
            this.gcDefCode.FieldName = "DefectCode";
            this.gcDefCode.Name = "gcDefCode";
            this.gcDefCode.Visible = true;
            this.gcDefCode.VisibleIndex = 17;
            // 
            // gcDefName
            // 
            this.gcDefName.AppearanceHeader.Options.UseTextOptions = true;
            this.gcDefName.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcDefName.Caption = "Defect Name";
            this.gcDefName.FieldName = "DefectName";
            this.gcDefName.Name = "gcDefName";
            this.gcDefName.Visible = true;
            this.gcDefName.VisibleIndex = 18;
            // 
            // gcDefLoc
            // 
            this.gcDefLoc.AppearanceHeader.Options.UseTextOptions = true;
            this.gcDefLoc.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcDefLoc.Caption = "Defect Loc.";
            this.gcDefLoc.FieldName = "DefectLoc";
            this.gcDefLoc.Name = "gcDefLoc";
            this.gcDefLoc.Visible = true;
            this.gcDefLoc.VisibleIndex = 19;
            // 
            // ricbx1
            // 
            this.ricbx1.AutoHeight = false;
            this.ricbx1.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.ricbx1.Items.AddRange(new DevExpress.XtraEditors.Controls.ImageComboBoxItem[] {
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("巡審定", "A", -1),
            new DevExpress.XtraEditors.Controls.ImageComboBoxItem("巡審查", "C", -1)});
            this.ricbx1.Name = "ricbx1";
            // 
            // MasterSupplementList
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MasterSupplementList";
            this.Size = new System.Drawing.Size(1148, 544);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ricbx1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn Line;
        private DevExpress.XtraGrid.Columns.GridColumn Project;
        private DevExpress.XtraGrid.Columns.GridColumn Style;
        private DevExpress.XtraGrid.Columns.GridColumn W_procedure;
        private DevExpress.XtraGrid.Columns.GridColumn Worker;
        private DevExpress.XtraGrid.Columns.GridColumn QNNo;
        private DevExpress.XtraGrid.Columns.GridColumn QC_Time;
        private DevExpress.XtraGrid.Columns.GridColumn QCCount;
        private DevExpress.XtraGrid.Columns.GridColumn gcWO;
        private DevExpress.XtraGrid.Columns.GridColumn gcRWO;
        private DevExpress.XtraGrid.Columns.GridColumn gcPCount;
        private DevExpress.XtraGrid.Columns.GridColumn gcFcount;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn gcWOC;
        private DevExpress.XtraGrid.Columns.GridColumn gcFactory;
        private DevExpress.XtraGrid.Columns.GridColumn gcAuditer;
        private DevExpress.XtraGrid.Columns.GridColumn gcWorkshop;
        private DevExpress.XtraGrid.Columns.GridColumn gcActive;
        private DevExpress.XtraGrid.Columns.GridColumn gcReaudit;
        private DevExpress.XtraGrid.Columns.GridColumn gcFAE;
        private DevExpress.XtraGrid.Columns.GridColumn gcDefCode;
        private DevExpress.XtraGrid.Columns.GridColumn gcDefName;
        private DevExpress.XtraGrid.Columns.GridColumn gcDefLoc;
        private DevExpress.XtraGrid.Columns.GridColumn gcRole;
        private DevExpress.XtraEditors.Repository.RepositoryItemImageComboBox ricbx1;
    }
}
