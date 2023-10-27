namespace PH.POPC.UI.ActionLog
{
    partial class ActionLogIncompleteListForm
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
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBuyerCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPOStatus = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPONO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colFactory = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colProjectNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colItemCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colOrderLine = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colPurchaseOfficer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplier = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSupplierReference = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTotalWO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colChosenWO = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOFWStartDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colWOExftyDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colArrivalPointofdestinationShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTimeFrameIIReceiveGoodEndPointDateShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colRWO_DaysDiff = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogTaking = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogGroup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogSeqNoShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.repositoryItemMemoEdit1 = new DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colActionLogCompletionStage_Target = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTotalActionLogCompletionStage_Revised = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActionLogCompletionStage_Cmpl = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.barButtonItem_ReviewActionLog = new DevExpress.XtraBars.BarButtonItem();
            this.colOddEvenRowFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).BeginInit();
            this.SuspendLayout();
            // 
            // objbarManager
            // 
            this.objbarManager.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem_ReviewActionLog});
            this.objbarManager.MaxItemId = 61;
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            this.ObjListBar.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem_ReviewActionLog, true)});
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.RepositoryItems.AddRange(new DevExpress.XtraEditors.Repository.RepositoryItem[] {
            this.repositoryItemMemoEdit1});
            this.objListGridControl.Size = new System.Drawing.Size(1723, 389);
            this.objListGridControl.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            this.objListGridControl.Load += new System.EventHandler(this.objListGridControl_Load);
            this.objListGridControl.Paint += new System.Windows.Forms.PaintEventHandler(this.objListGridControl_Paint);
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
            this.BindingSource.DataSource = typeof(PH.FabricInspection.BO.ActionLogIncompleteResult);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand4,
            this.gridBand5,
            this.gridBand6,
            this.gridBand2});
            this.bandedGridView1.ColumnPanelRowHeight = 52;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colBuyerCode,
            this.colSupplier,
            this.colFactory,
            this.colActionLogGroup,
            this.colActionLogCompletionStage_Target,
            this.colItemCode,
            this.colColorCode,
            this.colSupplierReference,
            this.colActionLogSeqNoShow,
            this.colPONO,
            this.colProjectNo,
            this.colTotalActionLogCompletionStage_Revised,
            this.colPOStatus,
            this.colOrderLine,
            this.colPurchaseOfficer,
            this.colTotalWO,
            this.colWOSeqNo,
            this.colChosenWO,
            this.colWOFWStartDate,
            this.colWOExftyDate,
            this.colArrivalPointofdestinationShow,
            this.colTimeFrameIIReceiveGoodEndPointDateShow,
            this.colRWO_DaysDiff,
            this.colActionLogTaking,
            this.colActionLogCompletionStage_Cmpl,
            this.colOddEvenRowFlag});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(1215, 325, 225, 436);
            styleFormatCondition1.Appearance.BackColor = System.Drawing.Color.Lavender;
            styleFormatCondition1.Appearance.Options.UseBackColor = true;
            styleFormatCondition1.ApplyToRow = true;
            styleFormatCondition1.Column = this.colOddEvenRowFlag;
            styleFormatCondition1.Condition = DevExpress.XtraGrid.FormatConditionEnum.Equal;
            styleFormatCondition1.Value1 = "1";
            this.bandedGridView1.FormatConditions.AddRange(new DevExpress.XtraGrid.StyleFormatCondition[] {
            styleFormatCondition1});
            this.bandedGridView1.GridControl = this.objListGridControl;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.RowAutoHeight = true;
            this.bandedGridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bandedGridView1_RowCellStyle);
            // 
            // gridBand1
            // 
            this.gridBand1.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand1.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand1.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand1.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand1.Caption = "General PO\'s  Information";
            this.gridBand1.Columns.Add(this.colBuyerCode);
            this.gridBand1.Columns.Add(this.colPOStatus);
            this.gridBand1.Columns.Add(this.colPONO);
            this.gridBand1.Columns.Add(this.colFactory);
            this.gridBand1.Columns.Add(this.colProjectNo);
            this.gridBand1.Columns.Add(this.colItemCode);
            this.gridBand1.Columns.Add(this.colOrderLine);
            this.gridBand1.Columns.Add(this.colPurchaseOfficer);
            this.gridBand1.Columns.Add(this.colSupplier);
            this.gridBand1.Columns.Add(this.colColorCode);
            this.gridBand1.Columns.Add(this.colSupplierReference);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.RowCount = 2;
            this.gridBand1.Tag = 1;
            this.gridBand1.Width = 782;
            // 
            // colBuyerCode
            // 
            this.colBuyerCode.Caption = "Buyer\r\nCde";
            this.colBuyerCode.FieldName = "BuyerCode";
            this.colBuyerCode.Name = "colBuyerCode";
            this.colBuyerCode.OptionsColumn.AllowEdit = false;
            this.colBuyerCode.Visible = true;
            this.colBuyerCode.Width = 53;
            // 
            // colPOStatus
            // 
            this.colPOStatus.Caption = "PO\r\nStatus";
            this.colPOStatus.FieldName = "POStatus";
            this.colPOStatus.Name = "colPOStatus";
            this.colPOStatus.OptionsColumn.AllowEdit = false;
            this.colPOStatus.Visible = true;
            this.colPOStatus.Width = 57;
            // 
            // colPONO
            // 
            this.colPONO.Caption = "PO No.";
            this.colPONO.FieldName = "PONO";
            this.colPONO.Name = "colPONO";
            this.colPONO.OptionsColumn.AllowEdit = false;
            this.colPONO.Visible = true;
            this.colPONO.Width = 62;
            // 
            // colFactory
            // 
            this.colFactory.Caption = "Our\r\nPrdn\r\nSite";
            this.colFactory.FieldName = "Factory";
            this.colFactory.Name = "colFactory";
            this.colFactory.OptionsColumn.AllowEdit = false;
            this.colFactory.Visible = true;
            this.colFactory.Width = 47;
            // 
            // colProjectNo
            // 
            this.colProjectNo.Caption = "Our Proj. No.";
            this.colProjectNo.FieldName = "ProjectNo";
            this.colProjectNo.Name = "colProjectNo";
            this.colProjectNo.OptionsColumn.AllowEdit = false;
            this.colProjectNo.Visible = true;
            this.colProjectNo.Width = 94;
            // 
            // colItemCode
            // 
            this.colItemCode.Caption = "Our Item Code";
            this.colItemCode.FieldName = "ItemCode";
            this.colItemCode.Name = "colItemCode";
            this.colItemCode.OptionsColumn.AllowEdit = false;
            this.colItemCode.Visible = true;
            this.colItemCode.Width = 105;
            // 
            // colOrderLine
            // 
            this.colOrderLine.Caption = "PO\r\nLine\r\n(ref)";
            this.colOrderLine.FieldName = "OrderLine";
            this.colOrderLine.Name = "colOrderLine";
            this.colOrderLine.OptionsColumn.AllowEdit = false;
            this.colOrderLine.Visible = true;
            this.colOrderLine.Width = 47;
            // 
            // colPurchaseOfficer
            // 
            this.colPurchaseOfficer.Caption = "Coordinator";
            this.colPurchaseOfficer.FieldName = "PurchaseOfficer";
            this.colPurchaseOfficer.Name = "colPurchaseOfficer";
            this.colPurchaseOfficer.OptionsColumn.AllowEdit = false;
            this.colPurchaseOfficer.Visible = true;
            this.colPurchaseOfficer.Width = 85;
            // 
            // colSupplier
            // 
            this.colSupplier.Caption = "Supp\r\nCde";
            this.colSupplier.FieldName = "Supplier";
            this.colSupplier.Name = "colSupplier";
            this.colSupplier.OptionsColumn.AllowEdit = false;
            this.colSupplier.Visible = true;
            this.colSupplier.Width = 50;
            // 
            // colColorCode
            // 
            this.colColorCode.Caption = "Clr\r\nCde";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.OptionsColumn.AllowEdit = false;
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 43;
            // 
            // colSupplierReference
            // 
            this.colSupplierReference.Caption = "Supp Item Code\r\n(if any)";
            this.colSupplierReference.FieldName = "SupplierReference";
            this.colSupplierReference.Name = "colSupplierReference";
            this.colSupplierReference.OptionsColumn.AllowEdit = false;
            this.colSupplierReference.Visible = true;
            this.colSupplierReference.Width = 139;
            // 
            // gridBand4
            // 
            this.gridBand4.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand4.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand4.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand4.Caption = "Our WO\'s";
            this.gridBand4.Columns.Add(this.colTotalWO);
            this.gridBand4.Columns.Add(this.colWOSeqNo);
            this.gridBand4.Columns.Add(this.colChosenWO);
            this.gridBand4.Columns.Add(this.colWOFWStartDate);
            this.gridBand4.Columns.Add(this.colWOExftyDate);
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Tag = 2;
            this.gridBand4.Width = 278;
            // 
            // colTotalWO
            // 
            this.colTotalWO.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalWO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTotalWO.AppearanceHeader.Options.UseTextOptions = true;
            this.colTotalWO.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTotalWO.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTotalWO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTotalWO.Caption = "WO\r\nTtl";
            this.colTotalWO.FieldName = "TotalWO";
            this.colTotalWO.Name = "colTotalWO";
            this.colTotalWO.OptionsColumn.AllowEdit = false;
            this.colTotalWO.Visible = true;
            this.colTotalWO.Width = 41;
            // 
            // colWOSeqNo
            // 
            this.colWOSeqNo.AppearanceCell.Options.UseTextOptions = true;
            this.colWOSeqNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOSeqNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colWOSeqNo.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOSeqNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colWOSeqNo.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWOSeqNo.Caption = "Seq\r\n#";
            this.colWOSeqNo.FieldName = "WOSeqNo";
            this.colWOSeqNo.Name = "colWOSeqNo";
            this.colWOSeqNo.OptionsColumn.AllowEdit = false;
            this.colWOSeqNo.Visible = true;
            this.colWOSeqNo.Width = 43;
            // 
            // colChosenWO
            // 
            this.colChosenWO.AppearanceCell.Options.UseTextOptions = true;
            this.colChosenWO.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colChosenWO.AppearanceHeader.Options.UseTextOptions = true;
            this.colChosenWO.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colChosenWO.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colChosenWO.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colChosenWO.Caption = "Chosen WO#";
            this.colChosenWO.FieldName = "ChosenWO";
            this.colChosenWO.Name = "colChosenWO";
            this.colChosenWO.OptionsColumn.AllowEdit = false;
            this.colChosenWO.Visible = true;
            this.colChosenWO.Width = 62;
            // 
            // colWOFWStartDate
            // 
            this.colWOFWStartDate.AppearanceCell.Options.UseTextOptions = true;
            this.colWOFWStartDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOFWStartDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colWOFWStartDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOFWStartDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colWOFWStartDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWOFWStartDate.Caption = "FW Start dd";
            this.colWOFWStartDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colWOFWStartDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colWOFWStartDate.FieldName = "WOFWStartDate";
            this.colWOFWStartDate.Name = "colWOFWStartDate";
            this.colWOFWStartDate.OptionsColumn.AllowEdit = false;
            this.colWOFWStartDate.Visible = true;
            this.colWOFWStartDate.Width = 69;
            // 
            // colWOExftyDate
            // 
            this.colWOExftyDate.AppearanceCell.Options.UseTextOptions = true;
            this.colWOExftyDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOExftyDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colWOExftyDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colWOExftyDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colWOExftyDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colWOExftyDate.Caption = "Ex-fty dd";
            this.colWOExftyDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colWOExftyDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colWOExftyDate.FieldName = "WOExftyDate";
            this.colWOExftyDate.Name = "colWOExftyDate";
            this.colWOExftyDate.OptionsColumn.AllowEdit = false;
            this.colWOExftyDate.Visible = true;
            this.colWOExftyDate.Width = 63;
            // 
            // gridBand5
            // 
            this.gridBand5.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand5.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand5.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand5.Caption = "TF2 Rcv\'g End Pt.\r\n(Mat\'l standby)";
            this.gridBand5.Columns.Add(this.colArrivalPointofdestinationShow);
            this.gridBand5.Columns.Add(this.colTimeFrameIIReceiveGoodEndPointDateShow);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Tag = 1;
            this.gridBand5.Width = 155;
            // 
            // colArrivalPointofdestinationShow
            // 
            this.colArrivalPointofdestinationShow.AppearanceCell.Options.UseTextOptions = true;
            this.colArrivalPointofdestinationShow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colArrivalPointofdestinationShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colArrivalPointofdestinationShow.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colArrivalPointofdestinationShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colArrivalPointofdestinationShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colArrivalPointofdestinationShow.Caption = "Orig.\r\n(dd)\r\n";
            this.colArrivalPointofdestinationShow.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colArrivalPointofdestinationShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colArrivalPointofdestinationShow.FieldName = "ArrivalPointofdestinationShow";
            this.colArrivalPointofdestinationShow.Name = "colArrivalPointofdestinationShow";
            this.colArrivalPointofdestinationShow.OptionsColumn.AllowEdit = false;
            this.colArrivalPointofdestinationShow.Visible = true;
            this.colArrivalPointofdestinationShow.Width = 78;
            // 
            // colTimeFrameIIReceiveGoodEndPointDateShow
            // 
            this.colTimeFrameIIReceiveGoodEndPointDateShow.AppearanceCell.Options.UseTextOptions = true;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.Caption = "Change\r\n(dd)";
            this.colTimeFrameIIReceiveGoodEndPointDateShow.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colTimeFrameIIReceiveGoodEndPointDateShow.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.FieldName = "TimeFrameIIReceiveGoodEndPointDateShow";
            this.colTimeFrameIIReceiveGoodEndPointDateShow.Name = "colTimeFrameIIReceiveGoodEndPointDateShow";
            this.colTimeFrameIIReceiveGoodEndPointDateShow.OptionsColumn.AllowEdit = false;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.Visible = true;
            this.colTimeFrameIIReceiveGoodEndPointDateShow.Width = 77;
            // 
            // gridBand6
            // 
            this.gridBand6.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand6.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand6.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand6.Caption = "Red data of \r\nDel behind Sch.\r\n(negative to\r\nzero)";
            this.gridBand6.Columns.Add(this.colRWO_DaysDiff);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.RowCount = 3;
            this.gridBand6.Tag = 2;
            this.gridBand6.Width = 107;
            // 
            // colRWO_DaysDiff
            // 
            this.colRWO_DaysDiff.AppearanceCell.Options.UseTextOptions = true;
            this.colRWO_DaysDiff.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRWO_DaysDiff.AppearanceHeader.Options.UseTextOptions = true;
            this.colRWO_DaysDiff.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colRWO_DaysDiff.Caption = "(WO\'s FW\r\nStart dd) minus\r\n(Mat\'l standby)";
            this.colRWO_DaysDiff.FieldName = "RWO_DaysDiff";
            this.colRWO_DaysDiff.Name = "colRWO_DaysDiff";
            this.colRWO_DaysDiff.OptionsColumn.AllowEdit = false;
            this.colRWO_DaysDiff.Visible = true;
            this.colRWO_DaysDiff.Width = 107;
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand2.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand2.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand2.Caption = "Action Log";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand3,
            this.gridBand7});
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 0;
            this.gridBand2.Width = 334;
            // 
            // gridBand3
            // 
            this.gridBand3.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand3.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand3.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand3.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand3.Caption = "Action";
            this.gridBand3.Columns.Add(this.colActionLogTaking);
            this.gridBand3.Columns.Add(this.colActionLogGroup);
            this.gridBand3.Columns.Add(this.colActionLogSeqNoShow);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.RowCount = 2;
            this.gridBand3.Tag = 1;
            this.gridBand3.Width = 162;
            // 
            // colActionLogTaking
            // 
            this.colActionLogTaking.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogTaking.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogTaking.Caption = "Taking";
            this.colActionLogTaking.FieldName = "TotalActionLogTaking";
            this.colActionLogTaking.Name = "colActionLogTaking";
            this.colActionLogTaking.OptionsColumn.AllowEdit = false;
            this.colActionLogTaking.Visible = true;
            this.colActionLogTaking.Width = 58;
            // 
            // colActionLogGroup
            // 
            this.colActionLogGroup.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogGroup.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogGroup.Caption = "Grpg\r\n(Y/N)";
            this.colActionLogGroup.FieldName = "TotalActionLogGroup";
            this.colActionLogGroup.Name = "colActionLogGroup";
            this.colActionLogGroup.OptionsColumn.AllowEdit = false;
            this.colActionLogGroup.Visible = true;
            this.colActionLogGroup.Width = 53;
            // 
            // colActionLogSeqNoShow
            // 
            this.colActionLogSeqNoShow.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogSeqNoShow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogSeqNoShow.Caption = "Log Seq#";
            this.colActionLogSeqNoShow.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colActionLogSeqNoShow.FieldName = "TotalActionLogSeqNoShow";
            this.colActionLogSeqNoShow.Name = "colActionLogSeqNoShow";
            this.colActionLogSeqNoShow.OptionsColumn.AllowEdit = false;
            this.colActionLogSeqNoShow.Visible = true;
            this.colActionLogSeqNoShow.Width = 51;
            // 
            // repositoryItemMemoEdit1
            // 
            this.repositoryItemMemoEdit1.Name = "repositoryItemMemoEdit1";
            // 
            // gridBand7
            // 
            this.gridBand7.AppearanceHeader.Options.UseTextOptions = true;
            this.gridBand7.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.gridBand7.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.gridBand7.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.gridBand7.Caption = "Completion Stage";
            this.gridBand7.Columns.Add(this.colActionLogCompletionStage_Target);
            this.gridBand7.Columns.Add(this.colTotalActionLogCompletionStage_Revised);
            this.gridBand7.Columns.Add(this.colActionLogCompletionStage_Cmpl);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.RowCount = 2;
            this.gridBand7.Tag = 2;
            this.gridBand7.Width = 172;
            // 
            // colActionLogCompletionStage_Target
            // 
            this.colActionLogCompletionStage_Target.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogCompletionStage_Target.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogCompletionStage_Target.Caption = "Target";
            this.colActionLogCompletionStage_Target.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colActionLogCompletionStage_Target.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogCompletionStage_Target.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogCompletionStage_Target.FieldName = "TotalActionLogCompletionStage_Target";
            this.colActionLogCompletionStage_Target.Name = "colActionLogCompletionStage_Target";
            this.colActionLogCompletionStage_Target.OptionsColumn.AllowEdit = false;
            this.colActionLogCompletionStage_Target.Visible = true;
            this.colActionLogCompletionStage_Target.Width = 57;
            // 
            // colTotalActionLogCompletionStage_Revised
            // 
            this.colTotalActionLogCompletionStage_Revised.AppearanceCell.Options.UseTextOptions = true;
            this.colTotalActionLogCompletionStage_Revised.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTotalActionLogCompletionStage_Revised.Caption = "Revised";
            this.colTotalActionLogCompletionStage_Revised.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colTotalActionLogCompletionStage_Revised.DisplayFormat.FormatString = "MM-dd";
            this.colTotalActionLogCompletionStage_Revised.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colTotalActionLogCompletionStage_Revised.FieldName = "TotalActionLogCompletionStage_Revised";
            this.colTotalActionLogCompletionStage_Revised.Name = "colTotalActionLogCompletionStage_Revised";
            this.colTotalActionLogCompletionStage_Revised.OptionsColumn.AllowEdit = false;
            this.colTotalActionLogCompletionStage_Revised.Visible = true;
            this.colTotalActionLogCompletionStage_Revised.Width = 63;
            // 
            // colActionLogCompletionStage_Cmpl
            // 
            this.colActionLogCompletionStage_Cmpl.AppearanceCell.Options.UseTextOptions = true;
            this.colActionLogCompletionStage_Cmpl.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActionLogCompletionStage_Cmpl.Caption = "Cmpl";
            this.colActionLogCompletionStage_Cmpl.ColumnEdit = this.repositoryItemMemoEdit1;
            this.colActionLogCompletionStage_Cmpl.DisplayFormat.FormatString = "MM-dd";
            this.colActionLogCompletionStage_Cmpl.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActionLogCompletionStage_Cmpl.FieldName = "TotalActionLogCompletionStage_Cmpl";
            this.colActionLogCompletionStage_Cmpl.Name = "colActionLogCompletionStage_Cmpl";
            this.colActionLogCompletionStage_Cmpl.OptionsColumn.AllowEdit = false;
            this.colActionLogCompletionStage_Cmpl.Visible = true;
            this.colActionLogCompletionStage_Cmpl.Width = 52;
            // 
            // barButtonItem_ReviewActionLog
            // 
            this.barButtonItem_ReviewActionLog.Caption = "Review/Reply";
            this.barButtonItem_ReviewActionLog.Id = 60;
            this.barButtonItem_ReviewActionLog.Name = "barButtonItem_ReviewActionLog";
            this.barButtonItem_ReviewActionLog.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.barButtonItem_ReviewActionLog_ItemClick);
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
            // 
            // ActionLogIncompleteListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "ActionLogIncompleteListForm";
            this.Size = new System.Drawing.Size(1723, 416);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemMemoEdit1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBuyerCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFactory;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogGroup;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogCompletionStage_Target;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colItemCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplierReference;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogSeqNoShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPONO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSupplier;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colProjectNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalActionLogCompletionStage_Revised;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPOStatus;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOrderLine;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPurchaseOfficer;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalWO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colChosenWO;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOFWStartDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colWOExftyDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colArrivalPointofdestinationShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTimeFrameIIReceiveGoodEndPointDateShow;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colRWO_DaysDiff;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogTaking;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActionLogCompletionStage_Cmpl;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraEditors.Repository.RepositoryItemMemoEdit repositoryItemMemoEdit1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_ReviewActionLog;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;
    }
}
