namespace PH.FabricInspection.UI.Report.FabricReport
{
    partial class SupplierQuallSummaryListForm
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition1 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.colYear = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemCheckEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.repositoryItemRadioGroup1 = new DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup();
            this.repositoryItemRadioGroup2 = new DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup();
            this.repositoryItemCheckEdit2 = new DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit();
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.repositoryItemComboBox2 = new DevExpress.XtraEditors.Repository.RepositoryItemComboBox();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colShowDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMonth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalAuditNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalRollQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalItemID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalItemRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalPONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalHDONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalInvoiceNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartI_DefectResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit_MultRow = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.colPartI_Percent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartII_MeasureResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartII_Percent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartIII_TestingResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartIII_Percent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalProposal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalAgreed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalActionLog = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalActionCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartI_Rank = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartII_Rank = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartIII_Rank = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colSuppShortName = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colRejRate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnPrint = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultRow)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnPrint});
            this.objbarManager.MaxItemId = 68;
            this.objbarManager.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemRadioGroup1,
            this.repositoryItemRadioGroup2,
            this.repositoryItemCheckEdit1,
            this.repositoryItemCheckEdit2,
            this.repositoryItemComboBox2});
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.FloatLocation = new System.Drawing.Point(64, 141);
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.gridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit_MultRow});
            this.objListGridControl.Size = new System.Drawing.Size(1580, 354);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gridView1});
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.SupplierQuallSummaryClass);
            // 
            // colYear
            // 
            this.colYear.AppearanceHeader.Options.UseTextOptions = true;
            this.colYear.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colYear.Caption = "Year";
            this.colYear.FieldName = "Year";
            this.colYear.Name = "colYear";
            this.colYear.Width = 47;
            // 
            // repositoryItemCheckEdit1
            // 
            this.repositoryItemCheckEdit1.AutoHeight = false;
            this.repositoryItemCheckEdit1.Caption = "";
            this.repositoryItemCheckEdit1.Name = "repositoryItemCheckEdit1";
            this.repositoryItemCheckEdit1.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // repositoryItemRadioGroup1
            // 
            this.repositoryItemRadioGroup1.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("by Supp", "by Supp"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem("by Supp", "by monthly")});
            this.repositoryItemRadioGroup1.Name = "repositoryItemRadioGroup1";
            // 
            // repositoryItemRadioGroup2
            // 
            this.repositoryItemRadioGroup2.Items.AddRange(new DevExpress.XtraEditors.Controls.RadioGroupItem[] {
            new DevExpress.XtraEditors.Controls.RadioGroupItem("a", "a"),
            new DevExpress.XtraEditors.Controls.RadioGroupItem()});
            this.repositoryItemRadioGroup2.Name = "repositoryItemRadioGroup2";
            // 
            // repositoryItemCheckEdit2
            // 
            this.repositoryItemCheckEdit2.AutoHeight = false;
            this.repositoryItemCheckEdit2.Name = "repositoryItemCheckEdit2";
            this.repositoryItemCheckEdit2.NullStyle = DevExpress.XtraEditors.Controls.StyleIndeterminate.Unchecked;
            // 
            // bar1
            // 
            this.bar1.BarName = "Custom 3";
            this.bar1.CanDockStyle = DevExpress.XtraBars.BarCanDockStyle.Bottom;
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 0;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Bottom;
            this.bar1.OptionsBar.AllowQuickCustomization = false;
            this.bar1.OptionsBar.DrawDragBorder = false;
            this.bar1.OptionsBar.UseWholeRow = true;
            this.bar1.Text = "Custom 3";
            // 
            // repositoryItemComboBox2
            // 
            this.repositoryItemComboBox2.AutoHeight = false;
            this.repositoryItemComboBox2.Buttons.AddRange(new DevExpress.XtraEditors.Controls.EditorButton[] {
            new DevExpress.XtraEditors.Controls.EditorButton(DevExpress.XtraEditors.Controls.ButtonPredefines.Combo)});
            this.repositoryItemComboBox2.Name = "repositoryItemComboBox2";
            // 
            // gridView1
            // 
            this.gridView1.ColumnPanelRowHeight = 65;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colShowDate,
            this.colYear,
            this.colMonth,
            this.colSuppCode,
            this.colTotalAuditNo,
            this.colTotalRollQty,
            this.colTotalItemID,
            this.colTotalItemCode,
            this.colTotalColorCode,
            this.colTotalItemRef,
            this.colTotalProjectNo,
            this.colTotalPONo,
            this.colTotalHDONo,
            this.colTotalInvoiceNo,
            this.colPartI_DefectResult,
            this.colPartI_Percent,
            this.colPartII_MeasureResult,
            this.colPartII_Percent,
            this.colPartIII_TestingResult,
            this.colPartIII_Percent,
            this.colTotalProposal,
            this.colTotalAgreed,
            this.colTotalActionLog,
            this.colTotalActionCompleted,
            this.colPartI_Rank,
            this.colPartII_Rank,
            this.colPartIII_Rank,
            this.colSuppShortName,
            this.colRejRate});
            this.gridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1224, 274, 216, 495);
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Lavender;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.colYear;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "Ttl";
            this.gridView1.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
            this.gridView1.GridControl = this.objListGridControl;
            this.gridView1.Name = "gridView1";
            this.gridView1.OptionsBehavior.Editable = false;
            this.gridView1.OptionsDetail.EnableMasterViewMode = false;
            this.gridView1.OptionsPrint.AutoWidth = false;
            this.gridView1.OptionsView.ColumnAutoWidth = false;
            this.gridView1.OptionsView.RowAutoHeight = true;
            this.gridView1.CustomDrawCell += new DevExpress.XtraGrid.Views.Base.RowCellCustomDrawEventHandler(this.gridView1_CustomDrawCell);
            // 
            // colShowDate
            // 
            this.colShowDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colShowDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colShowDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colShowDate.Caption = "Month";
            this.colShowDate.FieldName = "ShowDate";
            this.colShowDate.Name = "colShowDate";
            this.colShowDate.Visible = true;
            this.colShowDate.VisibleIndex = 0;
            this.colShowDate.Width = 70;
            // 
            // colMonth
            // 
            this.colMonth.AppearanceCell.Options.UseTextOptions = true;
            this.colMonth.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colMonth.AppearanceHeader.Options.UseTextOptions = true;
            this.colMonth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colMonth.Caption = "Month";
            this.colMonth.FieldName = "Month";
            this.colMonth.Name = "colMonth";
            this.colMonth.Width = 57;
            // 
            // colSuppCode
            // 
            this.colSuppCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colSuppCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSuppCode.Caption = "Supplier\r\nCde";
            this.colSuppCode.FieldName = "SuppCode";
            this.colSuppCode.Name = "colSuppCode";
            this.colSuppCode.Visible = true;
            this.colSuppCode.VisibleIndex = 1;
            this.colSuppCode.Width = 65;
            // 
            // colTotalAuditNo
            // 
            this.colTotalAuditNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalAuditNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalAuditNo.Caption = "No. of\r\nAudit#\r\n(Single\r\nItem/Clr)";
            this.colTotalAuditNo.FieldName = "TotalAuditNo";
            this.colTotalAuditNo.Name = "colTotalAuditNo";
            this.colTotalAuditNo.Visible = true;
            this.colTotalAuditNo.VisibleIndex = 3;
            this.colTotalAuditNo.Width = 71;
            // 
            // colTotalRollQty
            // 
            this.colTotalRollQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalRollQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalRollQty.Caption = "Ttl\r\nRoll\r\nQty\r\n**";
            this.colTotalRollQty.FieldName = "TotalRollQty";
            this.colTotalRollQty.Name = "colTotalRollQty";
            this.colTotalRollQty.Visible = true;
            this.colTotalRollQty.VisibleIndex = 5;
            this.colTotalRollQty.Width = 42;
            // 
            // colTotalItemID
            // 
            this.colTotalItemID.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalItemID.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalItemID.Caption = "No. of\r\nItem id#";
            this.colTotalItemID.FieldName = "TotalItemID";
            this.colTotalItemID.Name = "colTotalItemID";
            this.colTotalItemID.Visible = true;
            this.colTotalItemID.VisibleIndex = 6;
            this.colTotalItemID.Width = 70;
            // 
            // colTotalItemCode
            // 
            this.colTotalItemCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalItemCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalItemCode.Caption = "No. of\r\nItem\r\nCde";
            this.colTotalItemCode.FieldName = "TotalItemCode";
            this.colTotalItemCode.Name = "colTotalItemCode";
            this.colTotalItemCode.Visible = true;
            this.colTotalItemCode.VisibleIndex = 7;
            this.colTotalItemCode.Width = 56;
            // 
            // colTotalColorCode
            // 
            this.colTotalColorCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalColorCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalColorCode.Caption = "No.\r\nof \r\nClr\r\nCde";
            this.colTotalColorCode.FieldName = "TotalColorCode";
            this.colTotalColorCode.Name = "colTotalColorCode";
            this.colTotalColorCode.Visible = true;
            this.colTotalColorCode.VisibleIndex = 8;
            this.colTotalColorCode.Width = 43;
            // 
            // colTotalItemRef
            // 
            this.colTotalItemRef.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalItemRef.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalItemRef.Caption = "No. of\r\nSupp\r\nItem\r\nRef";
            this.colTotalItemRef.FieldName = "TotalItemRef";
            this.colTotalItemRef.Name = "colTotalItemRef";
            this.colTotalItemRef.Visible = true;
            this.colTotalItemRef.VisibleIndex = 9;
            this.colTotalItemRef.Width = 56;
            // 
            // colTotalProjectNo
            // 
            this.colTotalProjectNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalProjectNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalProjectNo.Caption = "No. of\r\nProj#";
            this.colTotalProjectNo.FieldName = "TotalProjectNo";
            this.colTotalProjectNo.Name = "colTotalProjectNo";
            this.colTotalProjectNo.Visible = true;
            this.colTotalProjectNo.VisibleIndex = 10;
            this.colTotalProjectNo.Width = 56;
            // 
            // colTotalPONo
            // 
            this.colTotalPONo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalPONo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalPONo.Caption = "No.\r\nof\r\nPO#";
            this.colTotalPONo.FieldName = "TotalPONo";
            this.colTotalPONo.Name = "colTotalPONo";
            this.colTotalPONo.Visible = true;
            this.colTotalPONo.VisibleIndex = 11;
            this.colTotalPONo.Width = 47;
            // 
            // colTotalHDONo
            // 
            this.colTotalHDONo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalHDONo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalHDONo.Caption = "No. of\r\nHDO#";
            this.colTotalHDONo.FieldName = "TotalHDONo";
            this.colTotalHDONo.Name = "colTotalHDONo";
            this.colTotalHDONo.Visible = true;
            this.colTotalHDONo.VisibleIndex = 12;
            this.colTotalHDONo.Width = 56;
            // 
            // colTotalInvoiceNo
            // 
            this.colTotalInvoiceNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalInvoiceNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalInvoiceNo.Caption = "No. of\r\nInvoice";
            this.colTotalInvoiceNo.FieldName = "TotalInvoiceNo";
            this.colTotalInvoiceNo.Name = "colTotalInvoiceNo";
            this.colTotalInvoiceNo.Visible = true;
            this.colTotalInvoiceNo.VisibleIndex = 22;
            this.colTotalInvoiceNo.Width = 61;
            // 
            // colPartI_DefectResult
            // 
            this.colPartI_DefectResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartI_DefectResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartI_DefectResult.Caption = "PartI -\r\nDefect\r\nRESULT\r\n**";
            this.colPartI_DefectResult.ColumnEdit = this.repositoryItemMemoEdit_MultRow;
            this.colPartI_DefectResult.FieldName = "PartI_DefectResult";
            this.colPartI_DefectResult.Name = "colPartI_DefectResult";
            this.colPartI_DefectResult.Visible = true;
            this.colPartI_DefectResult.VisibleIndex = 13;
            this.colPartI_DefectResult.Width = 163;
            // 
            // repositoryItemMemoEdit_MultRow
            // 
            this.repositoryItemMemoEdit_MultRow.Name = "repositoryItemMemoEdit_MultRow";
            // 
            // colPartI_Percent
            // 
            this.colPartI_Percent.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartI_Percent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartI_Percent.Caption = "Perf%";
            this.colPartI_Percent.FieldName = "PartI_Percent";
            this.colPartI_Percent.Name = "colPartI_Percent";
            this.colPartI_Percent.Visible = true;
            this.colPartI_Percent.VisibleIndex = 14;
            this.colPartI_Percent.Width = 56;
            // 
            // colPartII_MeasureResult
            // 
            this.colPartII_MeasureResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartII_MeasureResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartII_MeasureResult.Caption = "Part II -\r\nMeasure\r\nRESULT\r\n**";
            this.colPartII_MeasureResult.ColumnEdit = this.repositoryItemMemoEdit_MultRow;
            this.colPartII_MeasureResult.FieldName = "PartII_MeasureResult";
            this.colPartII_MeasureResult.Name = "colPartII_MeasureResult";
            this.colPartII_MeasureResult.Visible = true;
            this.colPartII_MeasureResult.VisibleIndex = 16;
            this.colPartII_MeasureResult.Width = 67;
            // 
            // colPartII_Percent
            // 
            this.colPartII_Percent.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartII_Percent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartII_Percent.Caption = "Perf%";
            this.colPartII_Percent.FieldName = "PartII_Percent";
            this.colPartII_Percent.Name = "colPartII_Percent";
            this.colPartII_Percent.Visible = true;
            this.colPartII_Percent.VisibleIndex = 17;
            this.colPartII_Percent.Width = 56;
            // 
            // colPartIII_TestingResult
            // 
            this.colPartIII_TestingResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartIII_TestingResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartIII_TestingResult.Caption = "Part III -\r\nTesting\r\nRESULT\r\n**";
            this.colPartIII_TestingResult.ColumnEdit = this.repositoryItemMemoEdit_MultRow;
            this.colPartIII_TestingResult.FieldName = "PartIII_TestingResult";
            this.colPartIII_TestingResult.Name = "colPartIII_TestingResult";
            this.colPartIII_TestingResult.Visible = true;
            this.colPartIII_TestingResult.VisibleIndex = 19;
            this.colPartIII_TestingResult.Width = 68;
            // 
            // colPartIII_Percent
            // 
            this.colPartIII_Percent.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartIII_Percent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartIII_Percent.Caption = "Perf%";
            this.colPartIII_Percent.FieldName = "PartIII_Percent";
            this.colPartIII_Percent.Name = "colPartIII_Percent";
            this.colPartIII_Percent.Visible = true;
            this.colPartIII_Percent.VisibleIndex = 20;
            this.colPartIII_Percent.Width = 56;
            // 
            // colTotalProposal
            // 
            this.colTotalProposal.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalProposal.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalProposal.Caption = "No. of\r\nproposal\r\n**";
            this.colTotalProposal.FieldName = "TotalProposal";
            this.colTotalProposal.Name = "colTotalProposal";
            this.colTotalProposal.Visible = true;
            this.colTotalProposal.VisibleIndex = 23;
            this.colTotalProposal.Width = 67;
            // 
            // colTotalAgreed
            // 
            this.colTotalAgreed.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalAgreed.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalAgreed.Caption = "No. of\r\nagreed\r\n**";
            this.colTotalAgreed.FieldName = "TotalAgreed";
            this.colTotalAgreed.Name = "colTotalAgreed";
            this.colTotalAgreed.Visible = true;
            this.colTotalAgreed.VisibleIndex = 24;
            this.colTotalAgreed.Width = 60;
            // 
            // colTotalActionLog
            // 
            this.colTotalActionLog.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalActionLog.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalActionLog.Caption = "No. of\r\nAction\r\nlog\r\n**";
            this.colTotalActionLog.FieldName = "TotalActionLog";
            this.colTotalActionLog.Name = "colTotalActionLog";
            this.colTotalActionLog.Visible = true;
            this.colTotalActionLog.VisibleIndex = 25;
            this.colTotalActionLog.Width = 57;
            // 
            // colTotalActionCompleted
            // 
            this.colTotalActionCompleted.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalActionCompleted.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalActionCompleted.Caption = "Comp?\r\n(Y/N)\r\n**";
            this.colTotalActionCompleted.FieldName = "TotalActionCompleted";
            this.colTotalActionCompleted.Name = "colTotalActionCompleted";
            this.colTotalActionCompleted.Visible = true;
            this.colTotalActionCompleted.VisibleIndex = 26;
            this.colTotalActionCompleted.Width = 59;
            // 
            // colPartI_Rank
            // 
            this.colPartI_Rank.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartI_Rank.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartI_Rank.Caption = "Part I\r\n-\r\nRank";
            this.colPartI_Rank.FieldName = "PartI_Rank";
            this.colPartI_Rank.Name = "colPartI_Rank";
            this.colPartI_Rank.Visible = true;
            this.colPartI_Rank.VisibleIndex = 15;
            this.colPartI_Rank.Width = 52;
            // 
            // colPartII_Rank
            // 
            this.colPartII_Rank.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartII_Rank.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartII_Rank.Caption = "Part II\r\n-\r\nRank";
            this.colPartII_Rank.FieldName = "PartII_Rank";
            this.colPartII_Rank.Name = "colPartII_Rank";
            this.colPartII_Rank.Visible = true;
            this.colPartII_Rank.VisibleIndex = 18;
            this.colPartII_Rank.Width = 56;
            // 
            // colPartIII_Rank
            // 
            this.colPartIII_Rank.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartIII_Rank.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartIII_Rank.Caption = "Part III\r\n-\r\nRank";
            this.colPartIII_Rank.FieldName = "PartIII_Rank";
            this.colPartIII_Rank.Name = "colPartIII_Rank";
            this.colPartIII_Rank.Visible = true;
            this.colPartIII_Rank.VisibleIndex = 21;
            this.colPartIII_Rank.Width = 60;
            // 
            // colSuppShortName
            // 
            this.colSuppShortName.AppearanceHeader.Options.UseTextOptions = true;
            this.colSuppShortName.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSuppShortName.Caption = "Supp\r\nBrief Name";
            this.colSuppShortName.FieldName = "SuppShortName";
            this.colSuppShortName.Name = "colSuppShortName";
            this.colSuppShortName.Visible = true;
            this.colSuppShortName.VisibleIndex = 2;
            this.colSuppShortName.Width = 115;
            // 
            // colRejRate
            // 
            this.colRejRate.AppearanceHeader.Options.UseTextOptions = true;
            this.colRejRate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colRejRate.Caption = "Rej\r\n%";
            this.colRejRate.FieldName = "RejRate";
            this.colRejRate.Name = "colRejRate";
            this.colRejRate.Visible = true;
            this.colRejRate.VisibleIndex = 4;
            this.colRejRate.Width = 55;
            // 
            // barBtnPrint
            // 
            this.barBtnPrint.Caption = "Print";
            this.barBtnPrint.Id = 67;
            this.barBtnPrint.Name = "barBtnPrint";
            this.barBtnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrint_ItemClick);
            // 
            // SupplierQuallSummaryListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SupplierQuallSummaryListForm";
            this.Size = new System.Drawing.Size(1580, 381);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemRadioGroup2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemCheckEdit2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultRow)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup repositoryItemRadioGroup1;
        private DevExpress.XtraEditors.Repository.RepositoryItemRadioGroup repositoryItemRadioGroup2;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit1;
        private DevExpress.XtraEditors.Repository.RepositoryItemCheckEdit repositoryItemCheckEdit2;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraEditors.Repository.RepositoryItemComboBox repositoryItemComboBox2;
        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colYear;
        private DevExpress.XtraGrid.Columns.GridColumn colMonth;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalAuditNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalRollQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalItemID;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalItemRef;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalHDONo;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalInvoiceNo;
        private DevExpress.XtraGrid.Columns.GridColumn colPartI_DefectResult;
        private DevExpress.XtraGrid.Columns.GridColumn colPartI_Percent;
        private DevExpress.XtraGrid.Columns.GridColumn colPartII_MeasureResult;
        private DevExpress.XtraGrid.Columns.GridColumn colPartII_Percent;
        private DevExpress.XtraGrid.Columns.GridColumn colPartIII_TestingResult;
        private DevExpress.XtraGrid.Columns.GridColumn colPartIII_Percent;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalProposal;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalAgreed;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalActionLog;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalActionCompleted;
        private DevExpress.XtraGrid.Columns.GridColumn colPartI_Rank;
        private DevExpress.XtraGrid.Columns.GridColumn colPartII_Rank;
        private DevExpress.XtraGrid.Columns.GridColumn colPartIII_Rank;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalPONo;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit_MultRow;
        private DevExpress.XtraGrid.Columns.GridColumn colSuppShortName;
        private DevExpress.XtraGrid.Columns.GridColumn colShowDate;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colRejRate;
    }
}
