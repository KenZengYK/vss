namespace PH.FabricInspection.UI.Report.FabricReport
{
    partial class SummryListForm
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
            DevExpress.XtraGrid.StyleFormatCondition styleFormatCondition2 = new DevExpress.XtraGrid.StyleFormatCondition();
            this.colYear = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridView1 = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.colShowDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colDate = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colMonth = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colWeek = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalAuditNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalRollQty = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalItemID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalItemCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalColorCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalItemRef = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalSuppCode = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalProjectNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalHDONo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartI_DefectResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.repositoryItemMemoEdit_MultRow = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.colPartII_MeasureResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartIII_TestingResult = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalInvoiceNo = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalProposal = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalAgreed = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalActionLog = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colTotalActionCompleted = new DevExpress.XtraGrid.Columns.GridColumn();
            this.colPartI_Percent = new DevExpress.XtraGrid.Columns.GridColumn();
            this.barBtnPrint = new DevExpress.XtraBars.BarButtonItem();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultRow)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barBtnPrint});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barBtnPrint, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.gridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit_MultRow});
            this.objListGridControl.Size = new System.Drawing.Size(1444, 356);
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
            // colYear
            // 
            this.colYear.AppearanceHeader.Options.UseTextOptions = true;
            this.colYear.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colYear.Caption = "Year";
            this.colYear.FieldName = "Year";
            this.colYear.Name = "colYear";
            this.colYear.Width = 47;
            // 
            // gridView1
            // 
            this.gridView1.Appearance.FooterPanel.Options.UseTextOptions = true;
            this.gridView1.Appearance.FooterPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridView1.Appearance.FooterPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridView1.Appearance.Row.Options.UseTextOptions = true;
            this.gridView1.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.gridView1.Appearance.Row.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridView1.ColumnPanelRowHeight = 65;
            this.gridView1.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.colShowDate,
            this.colDate,
            this.colYear,
            this.colMonth,
            this.colWeek,
            this.colTotalAuditNo,
            this.colTotalRollQty,
            this.colTotalItemID,
            this.colTotalItemCode,
            this.colTotalColorCode,
            this.colTotalItemRef,
            this.colTotalSuppCode,
            this.colTotalProjectNo,
            this.colTotalHDONo,
            this.colPartI_DefectResult,
            this.colPartII_MeasureResult,
            this.colPartIII_TestingResult,
            this.colTotalInvoiceNo,
            this.colTotalProposal,
            this.colTotalAgreed,
            this.colTotalActionLog,
            this.colTotalActionCompleted,
            this.colPartI_Percent});
            styleFormatCondition2.Appearance.BackColor = System.Drawing.Color.Lavender;
            styleFormatCondition2.Appearance.Options.UseBackColor = true;
            styleFormatCondition2.ApplyToRow = true;
            styleFormatCondition2.Column = this.colYear;
            styleFormatCondition2.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition2.Value1 = "Ttl";
            this.gridView1.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition2});
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
            this.colShowDate.Caption = "Date";
            this.colShowDate.FieldName = "ShowDate";
            this.colShowDate.Name = "colShowDate";
            this.colShowDate.Visible = true;
            this.colShowDate.VisibleIndex = 0;
            // 
            // colDate
            // 
            this.colDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colDate.Caption = "Date";
            this.colDate.DisplayFormat.FormatString = "yyyy/MM/dd";
            this.colDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colDate.FieldName = "Date";
            this.colDate.Name = "colDate";
            this.colDate.Width = 78;
            // 
            // colMonth
            // 
            this.colMonth.AppearanceHeader.Options.UseTextOptions = true;
            this.colMonth.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colMonth.Caption = "Month";
            this.colMonth.FieldName = "Month";
            this.colMonth.Name = "colMonth";
            this.colMonth.Width = 57;
            // 
            // colWeek
            // 
            this.colWeek.AppearanceHeader.Options.UseTextOptions = true;
            this.colWeek.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colWeek.Caption = "Wk";
            this.colWeek.FieldName = "Week";
            this.colWeek.Name = "colWeek";
            this.colWeek.Width = 40;
            // 
            // colTotalAuditNo
            // 
            this.colTotalAuditNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalAuditNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalAuditNo.Caption = "No.of\r\nAudit#\r\n(Single\r\nItem/Clr)";
            this.colTotalAuditNo.FieldName = "TotalAuditNo";
            this.colTotalAuditNo.Name = "colTotalAuditNo";
            this.colTotalAuditNo.Visible = true;
            this.colTotalAuditNo.VisibleIndex = 1;
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
            this.colTotalRollQty.VisibleIndex = 2;
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
            this.colTotalItemID.VisibleIndex = 3;
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
            this.colTotalItemCode.VisibleIndex = 4;
            this.colTotalItemCode.Width = 56;
            // 
            // colTotalColorCode
            // 
            this.colTotalColorCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalColorCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalColorCode.Caption = "No. of\r\nClr\r\nCde";
            this.colTotalColorCode.FieldName = "TotalColorCode";
            this.colTotalColorCode.Name = "colTotalColorCode";
            this.colTotalColorCode.Visible = true;
            this.colTotalColorCode.VisibleIndex = 5;
            this.colTotalColorCode.Width = 56;
            // 
            // colTotalItemRef
            // 
            this.colTotalItemRef.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalItemRef.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalItemRef.Caption = "No. of\r\nSupp\r\nItem\r\nRef";
            this.colTotalItemRef.FieldName = "TotalItemRef";
            this.colTotalItemRef.Name = "colTotalItemRef";
            this.colTotalItemRef.Visible = true;
            this.colTotalItemRef.VisibleIndex = 6;
            this.colTotalItemRef.Width = 56;
            // 
            // colTotalSuppCode
            // 
            this.colTotalSuppCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalSuppCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalSuppCode.Caption = "No. of\r\nSupp\r\nCde";
            this.colTotalSuppCode.FieldName = "TotalSuppCode";
            this.colTotalSuppCode.Name = "colTotalSuppCode";
            this.colTotalSuppCode.Visible = true;
            this.colTotalSuppCode.VisibleIndex = 7;
            this.colTotalSuppCode.Width = 56;
            // 
            // colTotalProjectNo
            // 
            this.colTotalProjectNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalProjectNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalProjectNo.Caption = "No. of\r\nProj\r\n#";
            this.colTotalProjectNo.FieldName = "TotalProjectNo";
            this.colTotalProjectNo.Name = "colTotalProjectNo";
            this.colTotalProjectNo.Visible = true;
            this.colTotalProjectNo.VisibleIndex = 8;
            this.colTotalProjectNo.Width = 56;
            // 
            // colTotalHDONo
            // 
            this.colTotalHDONo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalHDONo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalHDONo.Caption = "No. of\r\nHDO#";
            this.colTotalHDONo.FieldName = "TotalHDONo";
            this.colTotalHDONo.Name = "colTotalHDONo";
            this.colTotalHDONo.Visible = true;
            this.colTotalHDONo.VisibleIndex = 9;
            this.colTotalHDONo.Width = 56;
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
            this.colPartI_DefectResult.VisibleIndex = 10;
            this.colPartI_DefectResult.Width = 168;
            // 
            // repositoryItemMemoEdit_MultRow
            // 
            this.repositoryItemMemoEdit_MultRow.Name = "repositoryItemMemoEdit_MultRow";
            // 
            // colPartII_MeasureResult
            // 
            this.colPartII_MeasureResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartII_MeasureResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartII_MeasureResult.Caption = "PartII -\r\nMeasure\r\nRESULT\r\n**";
            this.colPartII_MeasureResult.ColumnEdit = this.repositoryItemMemoEdit_MultRow;
            this.colPartII_MeasureResult.FieldName = "PartII_MeasureResult";
            this.colPartII_MeasureResult.Name = "colPartII_MeasureResult";
            this.colPartII_MeasureResult.Visible = true;
            this.colPartII_MeasureResult.VisibleIndex = 12;
            this.colPartII_MeasureResult.Width = 89;
            // 
            // colPartIII_TestingResult
            // 
            this.colPartIII_TestingResult.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartIII_TestingResult.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartIII_TestingResult.Caption = "PartIII -\r\nTesting\r\nRESULT\r\n**";
            this.colPartIII_TestingResult.ColumnEdit = this.repositoryItemMemoEdit_MultRow;
            this.colPartIII_TestingResult.FieldName = "PartIII_TestingResult";
            this.colPartIII_TestingResult.Name = "colPartIII_TestingResult";
            this.colPartIII_TestingResult.Visible = true;
            this.colPartIII_TestingResult.VisibleIndex = 13;
            this.colPartIII_TestingResult.Width = 84;
            // 
            // colTotalInvoiceNo
            // 
            this.colTotalInvoiceNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalInvoiceNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalInvoiceNo.Caption = "No. of\r\nInvoice";
            this.colTotalInvoiceNo.FieldName = "TotalInvoiceNo";
            this.colTotalInvoiceNo.Name = "colTotalInvoiceNo";
            this.colTotalInvoiceNo.Visible = true;
            this.colTotalInvoiceNo.VisibleIndex = 14;
            this.colTotalInvoiceNo.Width = 61;
            // 
            // colTotalProposal
            // 
            this.colTotalProposal.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalProposal.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalProposal.Caption = "No. of\r\nproposal\r\n**";
            this.colTotalProposal.FieldName = "TotalProposal";
            this.colTotalProposal.Name = "colTotalProposal";
            this.colTotalProposal.Visible = true;
            this.colTotalProposal.VisibleIndex = 15;
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
            this.colTotalAgreed.VisibleIndex = 16;
            this.colTotalAgreed.Width = 60;
            // 
            // colTotalActionLog
            // 
            this.colTotalActionLog.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalActionLog.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalActionLog.Caption = "No.of\r\nAction\r\nLog\r\n**";
            this.colTotalActionLog.FieldName = "TotalActionLog";
            this.colTotalActionLog.Name = "colTotalActionLog";
            this.colTotalActionLog.Visible = true;
            this.colTotalActionLog.VisibleIndex = 17;
            this.colTotalActionLog.Width = 57;
            // 
            // colTotalActionCompleted
            // 
            this.colTotalActionCompleted.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalActionCompleted.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalActionCompleted.Caption = "Comp?\r\n(Y/N)\r\n**";
            this.colTotalActionCompleted.ColumnEdit = this.repositoryItemMemoEdit_MultRow;
            this.colTotalActionCompleted.FieldName = "TotalActionCompleted";
            this.colTotalActionCompleted.Name = "colTotalActionCompleted";
            this.colTotalActionCompleted.Visible = true;
            this.colTotalActionCompleted.VisibleIndex = 18;
            this.colTotalActionCompleted.Width = 74;
            // 
            // colPartI_Percent
            // 
            this.colPartI_Percent.AppearanceHeader.Options.UseTextOptions = true;
            this.colPartI_Percent.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colPartI_Percent.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colPartI_Percent.Caption = "Perf%";
            this.colPartI_Percent.FieldName = "PartI_Percent";
            this.colPartI_Percent.Name = "colPartI_Percent";
            this.colPartI_Percent.Visible = true;
            this.colPartI_Percent.VisibleIndex = 11;
            this.colPartI_Percent.Width = 56;
            // 
            // barBtnPrint
            // 
            this.barBtnPrint.Caption = "Print";
            this.barBtnPrint.Id = 60;
            this.barBtnPrint.Name = "barBtnPrint";
            this.barBtnPrint.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barBtnPrint_ItemClick);
            // 
            // SummryListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "SummryListForm";
            this.Size = new System.Drawing.Size(1444, 383);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit_MultRow)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.Grid.GridView gridView1;
        private DevExpress.XtraGrid.Columns.GridColumn colDate;
        private DevExpress.XtraGrid.Columns.GridColumn colYear;
        private DevExpress.XtraGrid.Columns.GridColumn colMonth;
        private DevExpress.XtraGrid.Columns.GridColumn colWeek;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalAuditNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalRollQty;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalItemID;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalItemCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalColorCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalItemRef;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalSuppCode;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalProjectNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalHDONo;
        private DevExpress.XtraGrid.Columns.GridColumn colPartI_DefectResult;
        private DevExpress.XtraGrid.Columns.GridColumn colPartII_MeasureResult;
        private DevExpress.XtraGrid.Columns.GridColumn colPartIII_TestingResult;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalInvoiceNo;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalProposal;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalAgreed;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalActionLog;
        private DevExpress.XtraGrid.Columns.GridColumn colTotalActionCompleted;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit_MultRow;
        private DevExpress.XtraGrid.Columns.GridColumn colPartI_Percent;
        private DevExpress.XtraBars.BarButtonItem barBtnPrint;
        private DevExpress.XtraGrid.Columns.GridColumn colShowDate;

    }
}
