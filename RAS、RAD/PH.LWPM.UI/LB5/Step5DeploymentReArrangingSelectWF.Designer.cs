namespace PH.LWPM.UI.LB5
{
    partial class Step5DeploymentReArrangingSelectWF
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.GridWF = new DevExpress.XtraGrid.GridControl();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.WsGroupNameSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colJobTitleSort = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkforceID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colLine = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDone = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMTM = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFirstPass = new DevExpress.XtraGrid.Columns.GridColumn();
            this.ColSel = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn17 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn16 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWorkerType = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colStrWorkforceStyle = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colFactory = new DevExpress.XtraGrid.Columns.GridColumn();
            this.bindingSource1 = new System.Windows.Forms.BindingSource(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.GridWF)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).BeginInit();
            this.SuspendLayout();
            // 
            // GridWF
            // 
            this.GridWF.DataSource = this.bindingSource1;
            this.GridWF.Dock = System.Windows.Forms.DockStyle.Fill;
            this.GridWF.EmbeddedNavigator.Name = "";
            this.GridWF.Location = new System.Drawing.Point(0, 0);
            this.GridWF.MainView = this.gridView1;
            this.GridWF.Name = "GridWF";
            this.GridWF.Size = new System.Drawing.Size(638, 516);
            this.GridWF.TabIndex = 9;
            this.GridWF.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
            // 
            // gridView1
            // 
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.WsGroupNameSort,
            this.colJobTitleSort,
            this.colWorkforceID,
            this.colName,
            this.colLine,
            this.colDone,
            this.colMTM,
            this.colFirstPass,
            this.ColSel,
            this.gridColumn17,
            this.gridColumn16,
            this.colWorkerType,
            this.colStrWorkforceStyle,
            this.colFactory});
            this.gridView1.GridControl = this.GridWF;
            this.gridView1.GroupCount = 2;
            this.gridView1.GroupSummary.AddRange(new DevExpress.XtraGrid.GridSummaryItem[] {
            new DevExpress.XtraGrid.GridGroupSummaryItem(DevExpress.Data.SummaryItemType.Count, "Id", this.colWorkforceID, "")});
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsDetail.ShowDetailTabs = false;
            this.gridView1.OptionsSelection.EnableAppearanceFocusedCell = false;
            this.gridView1.OptionsView.EnableAppearanceEvenRow = true;
            this.gridView1.OptionsView.ShowDetailButtons = false;
            this.gridView1.OptionsView.ShowFooter = true;
            this.gridView1.SortInfo.AddRange(new DevExpress.XtraGrid.Columns.GridColumnSortInfo[] {
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.WsGroupNameSort, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colJobTitleSort, DevExpress.Data.ColumnSortOrder.Ascending),
            new DevExpress.XtraGrid.Columns.GridColumnSortInfo(this.colLine, DevExpress.Data.ColumnSortOrder.Ascending)});
            this.gridView1.DoubleClick += new System.EventHandler(this.gridView1_DoubleClick);
            // 
            // WsGroupNameSort
            // 
            this.WsGroupNameSort.Caption = "Group";
            this.WsGroupNameSort.FieldName = "WsGroupNameSort";
            this.WsGroupNameSort.Name = "WsGroupNameSort";
            this.WsGroupNameSort.Width = 53;
            // 
            // colJobTitleSort
            // 
            this.colJobTitleSort.Caption = "dWF Type";
            this.colJobTitleSort.FieldName = "JobTitleSort";
            this.colJobTitleSort.Name = "colJobTitleSort";
            this.colJobTitleSort.Width = 54;
            // 
            // colWorkforceID
            // 
            this.colWorkforceID.AppearanceHeader.Options.UseTextOptions = true;
            this.colWorkforceID.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWorkforceID.Caption = "ID";
            this.colWorkforceID.FieldName = "Id";
            this.colWorkforceID.Name = "colWorkforceID";
            this.colWorkforceID.OptionsColumn.AllowEdit = false;
            this.colWorkforceID.OptionsColumn.ReadOnly = true;
            this.colWorkforceID.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Count;
            this.colWorkforceID.Visible = true;
            this.colWorkforceID.VisibleIndex = 0;
            this.colWorkforceID.Width = 76;
            // 
            // colName
            // 
            this.colName.AppearanceHeader.Options.UseTextOptions = true;
            this.colName.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colName.Caption = "Name";
            this.colName.FieldName = "NameCn";
            this.colName.Name = "colName";
            this.colName.OptionsColumn.AllowEdit = false;
            this.colName.OptionsColumn.ReadOnly = true;
            this.colName.Visible = true;
            this.colName.VisibleIndex = 2;
            this.colName.Width = 64;
            // 
            // colLine
            // 
            this.colLine.AppearanceHeader.Options.UseTextOptions = true;
            this.colLine.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLine.Caption = "Line";
            this.colLine.FieldName = "LineCode";
            this.colLine.Name = "colLine";
            this.colLine.OptionsColumn.AllowEdit = false;
            this.colLine.OptionsColumn.ReadOnly = true;
            this.colLine.Visible = true;
            this.colLine.VisibleIndex = 1;
            this.colLine.Width = 55;
            // 
            // colDone
            // 
            this.colDone.Caption = "Done";
            this.colDone.FieldName = "DidTime_ByWf";
            this.colDone.Name = "colDone";
            this.colDone.Visible = true;
            this.colDone.VisibleIndex = 3;
            this.colDone.Width = 52;
            // 
            // colMTM
            // 
            this.colMTM.AppearanceHeader.Options.UseTextOptions = true;
            this.colMTM.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colMTM.Caption = "MTM";
            this.colMTM.DisplayFormat.FormatString = "{0:F}";
            this.colMTM.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colMTM.FieldName = "PastMTM";
            this.colMTM.Name = "colMTM";
            this.colMTM.OptionsColumn.AllowEdit = false;
            this.colMTM.OptionsColumn.ReadOnly = true;
            this.colMTM.Visible = true;
            this.colMTM.VisibleIndex = 4;
            this.colMTM.Width = 52;
            // 
            // colFirstPass
            // 
            this.colFirstPass.Caption = "首通率(%)";
            this.colFirstPass.DisplayFormat.FormatString = "{0:F}";
            this.colFirstPass.DisplayFormat.FormatType = DevExpress.Utils.FormatType.Numeric;
            this.colFirstPass.FieldName = "Per_FirsPass";
            this.colFirstPass.Name = "colFirstPass";
            this.colFirstPass.Visible = true;
            this.colFirstPass.VisibleIndex = 5;
            this.colFirstPass.Width = 80;
            // 
            // ColSel
            // 
            this.ColSel.Caption = "Sel";
            this.ColSel.FieldName = "LB4YNSel";
            this.ColSel.Name = "ColSel";
            // 
            // gridColumn17
            // 
            this.gridColumn17.Caption = "Reserved";
            this.gridColumn17.FieldName = "Resered";
            this.gridColumn17.Name = "gridColumn17";
            this.gridColumn17.Visible = true;
            this.gridColumn17.VisibleIndex = 6;
            this.gridColumn17.Width = 80;
            // 
            // gridColumn16
            // 
            this.gridColumn16.Caption = "Locked";
            this.gridColumn16.FieldName = "Locked";
            this.gridColumn16.Name = "gridColumn16";
            this.gridColumn16.Visible = true;
            this.gridColumn16.VisibleIndex = 7;
            this.gridColumn16.Width = 70;
            // 
            // colWorkerType
            // 
            this.colWorkerType.Caption = "WF Type";
            this.colWorkerType.FieldName = "WorkerType";
            this.colWorkerType.Name = "colWorkerType";
            this.colWorkerType.Width = 23;
            // 
            // colStrWorkforceStyle
            // 
            this.colStrWorkforceStyle.AppearanceHeader.Options.UseTextOptions = true;
            this.colStrWorkforceStyle.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStrWorkforceStyle.Caption = "Style";
            this.colStrWorkforceStyle.FieldName = "JobTitleEn";
            this.colStrWorkforceStyle.Name = "colStrWorkforceStyle";
            this.colStrWorkforceStyle.OptionsColumn.AllowEdit = false;
            this.colStrWorkforceStyle.OptionsColumn.ReadOnly = true;
            this.colStrWorkforceStyle.Width = 20;
            // 
            // colFactory
            // 
            this.colFactory.AppearanceHeader.Options.UseTextOptions = true;
            this.colFactory.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFactory.Caption = "Factory";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.OptionsColumn.ReadOnly = true;
            this.colFactory.Width = 52;
            // 
            // Step5DeploymentReArrangingSelectWF
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(638, 516);
            this.Controls.Add(this.GridWF);
            this.Name = "Step5DeploymentReArrangingSelectWF";
            this.Text = "Step5 Deployment ReArranging WF";
            ((System.ComponentModel.ISupportInitialize)(this.GridWF)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl GridWF;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn WsGroupNameSort;
        private DevExpress.XtraGrid.Columns.GridColumn colJobTitleSort;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkforceID;
        private DevExpress.XtraGrid.Columns.GridColumn colName;
        private DevExpress.XtraGrid.Columns.GridColumn colLine;
        private DevExpress.XtraGrid.Columns.GridColumn colDone;
        private DevExpress.XtraGrid.Columns.GridColumn colMTM;
        private DevExpress.XtraGrid.Columns.GridColumn colFirstPass;
        private DevExpress.XtraGrid.Columns.GridColumn ColSel;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn17;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn16;
        private DevExpress.XtraGrid.Columns.GridColumn colWorkerType;
        private DevExpress.XtraGrid.Columns.GridColumn colStrWorkforceStyle;
        private DevExpress.XtraGrid.Columns.GridColumn colFactory;
        private System.Windows.Forms.BindingSource bindingSource1;
    }
}