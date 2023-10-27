namespace PH.MobileQC.UI
{
    partial class MasterList_Comp
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
            this.Line = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Project = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Style = new DevExpress.XtraGrid.Columns.GridColumn();
            this.Worker = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QNNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.BoxNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.MachinePlace = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QC_Time = new DevExpress.XtraGrid.Columns.GridColumn();
            this.QCCount = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barButtonItem1 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem2 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem3 = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcActive = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcWoc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gcReaudit = new DevExpress.XtraGrid.Columns.GridColumn();
            this.btnPrint = new DevExpress.XtraBars.BarButtonItem();
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
            this.barButtonItem1,
            this.barButtonItem2,
            this.barButtonItem3,
            this.barButtonItem4,
            this.btnPrint});
            this.objbarManager.MaxItemId = 22;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.btnPrint)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            gridLevelNode1.RelationName = "Level1";
            this.objListGridControl.LevelTree.Nodes.AddRange(new DevExpress.XtraGrid.GridLevelNode[] {
            gridLevelNode1});
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
            this.gridColumn1,
            this.gridColumn2,
            this.gridColumn7,
            this.Worker,
            this.gcActive,
            this.BoxNo,
            this.MachinePlace,
            this.QC_Time,
            this.gridColumn9,
            this.QCCount,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6,
            this.gridColumn8,
            this.gridColumn10,
            this.gcWoc,
            this.gcReaudit});
            this.objListGridView.OptionsBehavior.Editable = false;
            this.objListGridView.OptionsDetail.EnableMasterViewMode = false;
            this.objListGridView.OptionsPrint.AutoWidth = false;
            this.objListGridView.OptionsView.ColumnAutoWidth = false;
            this.objListGridView.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.objListGridView_RowCellStyle);
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
            this.Style.VisibleIndex = 8;
            // 
            // Worker
            // 
            this.Worker.AppearanceHeader.Options.UseTextOptions = true;
            this.Worker.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.Worker.Caption = "Workforce";
            this.Worker.FieldName = "Worker";
            this.Worker.Name = "Worker";
            this.Worker.Visible = true;
            this.Worker.VisibleIndex = 9;
            this.Worker.Width = 79;
            // 
            // QNNo
            // 
            this.QNNo.AppearanceHeader.Options.UseTextOptions = true;
            this.QNNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.QNNo.Caption = "QN#";
            this.QNNo.FieldName = "QNNo";
            this.QNNo.Name = "QNNo";
            this.QNNo.Visible = true;
            this.QNNo.VisibleIndex = 7;
            this.QNNo.Width = 49;
            // 
            // BoxNo
            // 
            this.BoxNo.AppearanceHeader.Options.UseTextOptions = true;
            this.BoxNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.BoxNo.Caption = "BoxNo";
            this.BoxNo.FieldName = "BoxNo";
            this.BoxNo.Name = "BoxNo";
            this.BoxNo.Visible = true;
            this.BoxNo.VisibleIndex = 11;
            this.BoxNo.Width = 57;
            // 
            // MachinePlace
            // 
            this.MachinePlace.AppearanceHeader.Options.UseTextOptions = true;
            this.MachinePlace.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.MachinePlace.Caption = "M/C ID";
            this.MachinePlace.FieldName = "MachinePlace";
            this.MachinePlace.Name = "MachinePlace";
            this.MachinePlace.Visible = true;
            this.MachinePlace.VisibleIndex = 12;
            this.MachinePlace.Width = 57;
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
            this.QC_Time.VisibleIndex = 13;
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
            this.QCCount.VisibleIndex = 15;
            this.QCCount.Width = 60;
            // 
            // gridColumn1
            // 
            this.gridColumn1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn1.Caption = "WO";
            this.gridColumn1.FieldName = "WO";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 4;
            // 
            // gridColumn2
            // 
            this.gridColumn2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn2.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn2.Caption = "RWO";
            this.gridColumn2.FieldName = "RWO";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 6;
            this.gridColumn2.Width = 48;
            // 
            // gridColumn3
            // 
            this.gridColumn3.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gridColumn3.AppearanceHeader.Options.UseForeColor = true;
            this.gridColumn3.Caption = "P";
            this.gridColumn3.FieldName = "PCount";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 16;
            this.gridColumn3.Width = 33;
            // 
            // gridColumn4
            // 
            this.gridColumn4.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gridColumn4.AppearanceHeader.Options.UseForeColor = true;
            this.gridColumn4.Caption = "F";
            this.gridColumn4.FieldName = "FCount";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 17;
            this.gridColumn4.Width = 28;
            // 
            // gridColumn5
            // 
            this.gridColumn5.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gridColumn5.AppearanceHeader.Options.UseForeColor = true;
            this.gridColumn5.Caption = "U";
            this.gridColumn5.FieldName = "UCount";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 18;
            this.gridColumn5.Width = 29;
            // 
            // gridColumn6
            // 
            this.gridColumn6.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gridColumn6.AppearanceHeader.Options.UseForeColor = true;
            this.gridColumn6.Caption = "S";
            this.gridColumn6.FieldName = "SCount";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 19;
            this.gridColumn6.Width = 27;
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
            // barButtonItem4
            // 
            this.barButtonItem4.Caption = "barButtonItem4";
            this.barButtonItem4.Id = 18;
            this.barButtonItem4.Name = "barButtonItem4";
            // 
            // gridColumn7
            // 
            this.gridColumn7.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn7.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn7.Caption = "WOc";
            this.gridColumn7.FieldName = "WOC";
            this.gridColumn7.Name = "gridColumn7";
            // 
            // gridColumn8
            // 
            this.gridColumn8.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn8.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn8.Caption = "Fty";
            this.gridColumn8.FieldName = "Factory";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 0;
            this.gridColumn8.Width = 38;
            // 
            // gridColumn9
            // 
            this.gridColumn9.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn9.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn9.Caption = "QE Man";
            this.gridColumn9.FieldName = "QCMan";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 20;
            this.gridColumn9.Width = 55;
            // 
            // gridColumn10
            // 
            this.gridColumn10.AppearanceHeader.Options.UseTextOptions = true;
            this.gridColumn10.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridColumn10.Caption = "Ws";
            this.gridColumn10.FieldName = "WorkShop";
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.Visible = true;
            this.gridColumn10.VisibleIndex = 1;
            this.gridColumn10.Width = 42;
            // 
            // gcActive
            // 
            this.gcActive.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gcActive.AppearanceHeader.Options.UseForeColor = true;
            this.gcActive.AppearanceHeader.Options.UseTextOptions = true;
            this.gcActive.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gcActive.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcActive.Caption = "Active  Job";
            this.gcActive.FieldName = "Active";
            this.gcActive.Name = "gcActive";
            this.gcActive.Visible = true;
            this.gcActive.VisibleIndex = 10;
            this.gcActive.Width = 56;
            // 
            // gcWoc
            // 
            this.gcWoc.AppearanceHeader.Options.UseTextOptions = true;
            this.gcWoc.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcWoc.Caption = "WOc";
            this.gcWoc.FieldName = "WOc";
            this.gcWoc.Name = "gcWoc";
            this.gcWoc.Visible = true;
            this.gcWoc.VisibleIndex = 5;
            this.gcWoc.Width = 48;
            // 
            // gcReaudit
            // 
            this.gcReaudit.AppearanceHeader.ForeColor = System.Drawing.Color.Red;
            this.gcReaudit.AppearanceHeader.Options.UseForeColor = true;
            this.gcReaudit.AppearanceHeader.Options.UseTextOptions = true;
            this.gcReaudit.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gcReaudit.Caption = "Re-audit?";
            this.gcReaudit.FieldName = "ReAudit_Disp";
            this.gcReaudit.Name = "gcReaudit";
            this.gcReaudit.Visible = true;
            this.gcReaudit.VisibleIndex = 14;
            this.gcReaudit.Width = 55;
            // 
            // btnPrint
            // 
            this.btnPrint.Caption = "Print";
            this.btnPrint.Id = 21;
            this.btnPrint.Name = "btnPrint";
            this.btnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btnPrint_ItemClick);
            // 
            // MasterList_Comp
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "MasterList_Comp";
            this.Size = new System.Drawing.Size(1148, 544);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Columns.GridColumn Line;
        private DevExpress.XtraGrid.Columns.GridColumn Project;
        private DevExpress.XtraGrid.Columns.GridColumn Style;
        private DevExpress.XtraGrid.Columns.GridColumn Worker;
        private DevExpress.XtraGrid.Columns.GridColumn QNNo;
        private DevExpress.XtraGrid.Columns.GridColumn BoxNo;
        private DevExpress.XtraGrid.Columns.GridColumn MachinePlace;
        private DevExpress.XtraGrid.Columns.GridColumn QC_Time;
        private DevExpress.XtraGrid.Columns.GridColumn QCCount;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
        private DevExpress.XtraBars.BarButtonItem barButtonItem1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem2;
        private DevExpress.XtraBars.BarButtonItem barButtonItem3;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraGrid.Columns.GridColumn gcActive;
        private DevExpress.XtraGrid.Columns.GridColumn gcWoc;
        private DevExpress.XtraGrid.Columns.GridColumn gcReaudit;
        private DevExpress.XtraBars.BarButtonItem btnPrint;
    }
}
