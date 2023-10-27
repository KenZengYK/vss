namespace PH.BasicInfo.UI.MasterDB
{
    partial class TimeFrameIIListForm
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
            this.colOddEvenRowFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStartPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colEndPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBuyer = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTradeMethodCde = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTradeMethodDescShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitMode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colLogisticSeason = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colHandlingHKCCS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colHandingForwarder = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colFreight = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colInlandHandling = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colTransShipment = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLeadTimeDay = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colStartPoint1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStartPointFullDescription = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colStartPointAddress = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colReceivingEndPoint = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // ObjListBar
            // 
            this.ObjListBar.Appearance.Options.UseTextOptions = true;
            // 
            // objListGridControl
            // 
            this.objListGridControl.EmbeddedNavigator.Name = "";
            this.objListGridControl.MainView = this.bandedGridView1;
            this.objListGridControl.Size = new System.Drawing.Size(1708, 362);
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.TimeFrameII);
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand2,
            this.gridBand1,
            this.gridBand3,
            this.gridBand18});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colSeqNo,
            this.colStartPoint,
            this.colEndPoint,
            this.colTransitMode,
            this.colLeadTimeDay,
            this.colStartPointFullDescription,
            this.colBuyer,
            this.colTradeMethodDescShow,
            this.colReceivingEndPoint,
            this.colStartPointAddress,
            this.colOddEvenRowFlag,
            this.colLogisticSeason,
            this.colHandlingHKCCS,
            this.colHandingForwarder,
            this.colFreight,
            this.colInlandHandling,
            this.colTransShipment,
            this.colTradeMethodCde,
            this.colStartPoint1});
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
            this.bandedGridView1.OptionsDetail.EnableMasterViewMode = false;
            this.bandedGridView1.OptionsPrint.AutoWidth = false;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.bandedGridView1_CellMerge);
            this.bandedGridView1.CustomSummaryCalculate += new DevExpress.Data.CustomSummaryEventHandler(this.bandedGridView1_CustomSummaryCalculate);
            this.bandedGridView1.CustomDrawBandHeader += new DevExpress.XtraGrid.Views.BandedGrid.BandHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawBandHeader);
            this.bandedGridView1.CustomDrawColumnHeader += new DevExpress.XtraGrid.Views.Grid.ColumnHeaderCustomDrawEventHandler(this.bandedGridView1_CustomDrawColumnHeader);
            // 
            // gridBand2
            // 
            this.gridBand2.AppearanceHeader.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(240)))), ((int)(((byte)(204)))));
            this.gridBand2.AppearanceHeader.Options.UseBackColor = true;
            this.gridBand2.Columns.Add(this.colSeqNo);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Tag = 0;
            this.gridBand2.Width = 42;
            // 
            // colSeqNo
            // 
            this.colSeqNo.AppearanceCell.Options.UseTextOptions = true;
            this.colSeqNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSeqNo.AppearanceHeader.Options.UseTextOptions = true;
            this.colSeqNo.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSeqNo.Caption = "Seq";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colSeqNo.Visible = true;
            this.colSeqNo.Width = 42;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Seg. A - Time Frame 2 Element";
            this.gridBand1.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand4,
            this.gridBand5,
            this.gridBand11});
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Tag = 2;
            this.gridBand1.Width = 857;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "2 Receiving Points";
            this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand7,
            this.gridBand10});
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Tag = 2;
            this.gridBand4.Width = 156;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Start at";
            this.gridBand7.Columns.Add(this.colStartPoint);
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Tag = 2;
            this.gridBand7.Width = 82;
            // 
            // colStartPoint
            // 
            this.colStartPoint.AppearanceCell.Options.UseTextOptions = true;
            this.colStartPoint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStartPoint.AppearanceHeader.Options.UseTextOptions = true;
            this.colStartPoint.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStartPoint.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStartPoint.Caption = "1st Station\r\nCde";
            this.colStartPoint.FieldName = "StartPoint";
            this.colStartPoint.Name = "colStartPoint";
            this.colStartPoint.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colStartPoint.Visible = true;
            this.colStartPoint.Width = 82;
            // 
            // gridBand10
            // 
            this.gridBand10.Caption = "End at";
            this.gridBand10.Columns.Add(this.colEndPoint);
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Tag = 2;
            this.gridBand10.Width = 74;
            // 
            // colEndPoint
            // 
            this.colEndPoint.AppearanceCell.Options.UseTextOptions = true;
            this.colEndPoint.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndPoint.AppearanceHeader.Options.UseTextOptions = true;
            this.colEndPoint.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colEndPoint.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colEndPoint.Caption = "Fty Whse\r\nCde";
            this.colEndPoint.FieldName = "EndPoint";
            this.colEndPoint.Name = "colEndPoint";
            this.colEndPoint.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colEndPoint.Visible = true;
            this.colEndPoint.Width = 74;
            // 
            // gridBand5
            // 
            this.gridBand5.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand14,
            this.gridBand15,
            this.gridBand16,
            this.gridBand17});
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Tag = 2;
            this.gridBand5.Width = 328;
            // 
            // gridBand14
            // 
            this.gridBand14.Caption = "Buyers";
            this.gridBand14.Columns.Add(this.colBuyer);
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Tag = 2;
            this.gridBand14.Width = 56;
            // 
            // colBuyer
            // 
            this.colBuyer.AppearanceCell.Options.UseTextOptions = true;
            this.colBuyer.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBuyer.AppearanceHeader.Options.UseTextOptions = true;
            this.colBuyer.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colBuyer.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colBuyer.FieldName = "Buyer";
            this.colBuyer.Name = "colBuyer";
            this.colBuyer.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colBuyer.Visible = true;
            this.colBuyer.Width = 56;
            // 
            // gridBand15
            // 
            this.gridBand15.Caption = "Trade Method";
            this.gridBand15.Columns.Add(this.colTradeMethodCde);
            this.gridBand15.Columns.Add(this.colTradeMethodDescShow);
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Tag = 2;
            this.gridBand15.Width = 154;
            // 
            // colTradeMethodCde
            // 
            this.colTradeMethodCde.Caption = "Cde";
            this.colTradeMethodCde.FieldName = "TradeMethodCde";
            this.colTradeMethodCde.Name = "colTradeMethodCde";
            this.colTradeMethodCde.Visible = true;
            this.colTradeMethodCde.Width = 43;
            // 
            // colTradeMethodDescShow
            // 
            this.colTradeMethodDescShow.AppearanceCell.Options.UseTextOptions = true;
            this.colTradeMethodDescShow.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTradeMethodDescShow.AppearanceHeader.Options.UseTextOptions = true;
            this.colTradeMethodDescShow.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTradeMethodDescShow.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTradeMethodDescShow.Caption = "Desc";
            this.colTradeMethodDescShow.FieldName = "TradeMethodDescShow";
            this.colTradeMethodDescShow.Name = "colTradeMethodDescShow";
            this.colTradeMethodDescShow.SummaryItem.FieldName = "TradeMethod";
            this.colTradeMethodDescShow.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colTradeMethodDescShow.Visible = true;
            this.colTradeMethodDescShow.Width = 111;
            // 
            // gridBand16
            // 
            this.gridBand16.Caption = "Transit\r\nMode";
            this.gridBand16.Columns.Add(this.colTransitMode);
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.RowCount = 2;
            this.gridBand16.Tag = 2;
            this.gridBand16.Width = 53;
            // 
            // colTransitMode
            // 
            this.colTransitMode.AppearanceCell.Options.UseTextOptions = true;
            this.colTransitMode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitMode.AppearanceHeader.Options.UseTextOptions = true;
            this.colTransitMode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransitMode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colTransitMode.Visible = true;
            this.colTransitMode.Width = 53;
            // 
            // gridBand17
            // 
            this.gridBand17.Caption = "River\r\nSeason";
            this.gridBand17.Columns.Add(this.colLogisticSeason);
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Tag = 2;
            this.gridBand17.Width = 65;
            // 
            // colLogisticSeason
            // 
            this.colLogisticSeason.AppearanceCell.Options.UseTextOptions = true;
            this.colLogisticSeason.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLogisticSeason.AppearanceHeader.Options.UseTextOptions = true;
            this.colLogisticSeason.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLogisticSeason.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colLogisticSeason.FieldName = "LogisticSeason";
            this.colLogisticSeason.Name = "colLogisticSeason";
            this.colLogisticSeason.OptionsColumn.AllowEdit = false;
            this.colLogisticSeason.Visible = true;
            this.colLogisticSeason.Width = 65;
            // 
            // gridBand11
            // 
            this.gridBand11.Caption = "Logistics Lead Time (days)";
            this.gridBand11.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand12,
            this.gridBand13});
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.Tag = 2;
            this.gridBand11.Width = 373;
            // 
            // gridBand12
            // 
            this.gridBand12.Caption = "Handling";
            this.gridBand12.Columns.Add(this.colHandlingHKCCS);
            this.gridBand12.Columns.Add(this.colHandingForwarder);
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.Tag = 2;
            this.gridBand12.Width = 150;
            // 
            // colHandlingHKCCS
            // 
            this.colHandlingHKCCS.AppearanceCell.Options.UseTextOptions = true;
            this.colHandlingHKCCS.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHandlingHKCCS.AppearanceHeader.Options.UseTextOptions = true;
            this.colHandlingHKCCS.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHandlingHKCCS.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colHandlingHKCCS.Caption = "HKCCS\r\nor SLCRS";
            this.colHandlingHKCCS.FieldName = "HandlingHKCCS";
            this.colHandlingHKCCS.Name = "colHandlingHKCCS";
            this.colHandlingHKCCS.OptionsColumn.AllowEdit = false;
            this.colHandlingHKCCS.Visible = true;
            // 
            // colHandingForwarder
            // 
            this.colHandingForwarder.AppearanceCell.Options.UseTextOptions = true;
            this.colHandingForwarder.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHandingForwarder.AppearanceHeader.Options.UseTextOptions = true;
            this.colHandingForwarder.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colHandingForwarder.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colHandingForwarder.Caption = "Forwarder";
            this.colHandingForwarder.FieldName = "HandingForwarder";
            this.colHandingForwarder.Name = "colHandingForwarder";
            this.colHandingForwarder.OptionsColumn.AllowEdit = false;
            this.colHandingForwarder.Visible = true;
            // 
            // gridBand13
            // 
            this.gridBand13.Columns.Add(this.colFreight);
            this.gridBand13.Columns.Add(this.colInlandHandling);
            this.gridBand13.Columns.Add(this.colTransShipment);
            this.gridBand13.Columns.Add(this.colOddEvenRowFlag);
            this.gridBand13.Columns.Add(this.colLeadTimeDay);
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Tag = 2;
            this.gridBand13.Width = 223;
            // 
            // colFreight
            // 
            this.colFreight.AppearanceCell.Options.UseTextOptions = true;
            this.colFreight.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFreight.AppearanceHeader.Options.UseTextOptions = true;
            this.colFreight.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colFreight.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colFreight.Caption = "Freight";
            this.colFreight.FieldName = "Freight";
            this.colFreight.Name = "colFreight";
            this.colFreight.OptionsColumn.AllowEdit = false;
            this.colFreight.Visible = true;
            this.colFreight.Width = 58;
            // 
            // colInlandHandling
            // 
            this.colInlandHandling.AppearanceCell.Options.UseTextOptions = true;
            this.colInlandHandling.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colInlandHandling.AppearanceHeader.Options.UseTextOptions = true;
            this.colInlandHandling.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colInlandHandling.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colInlandHandling.Caption = "Inland\r\nHandling";
            this.colInlandHandling.FieldName = "InlandHandling";
            this.colInlandHandling.Name = "colInlandHandling";
            this.colInlandHandling.OptionsColumn.AllowEdit = false;
            this.colInlandHandling.Visible = true;
            this.colInlandHandling.Width = 64;
            // 
            // colTransShipment
            // 
            this.colTransShipment.AppearanceCell.Options.UseTextOptions = true;
            this.colTransShipment.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransShipment.AppearanceHeader.Options.UseTextOptions = true;
            this.colTransShipment.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colTransShipment.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colTransShipment.Caption = "Trans-\r\nShpt";
            this.colTransShipment.FieldName = "TransShipment";
            this.colTransShipment.Name = "colTransShipment";
            this.colTransShipment.OptionsColumn.AllowEdit = false;
            this.colTransShipment.Visible = true;
            this.colTransShipment.Width = 53;
            // 
            // colLeadTimeDay
            // 
            this.colLeadTimeDay.AppearanceCell.Options.UseTextOptions = true;
            this.colLeadTimeDay.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colLeadTimeDay.AppearanceHeader.Options.UseTextOptions = true;
            this.colLeadTimeDay.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colLeadTimeDay.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colLeadTimeDay.Caption = "Total";
            this.colLeadTimeDay.FieldName = "LeadTimeDay";
            this.colLeadTimeDay.Name = "colLeadTimeDay";
            this.colLeadTimeDay.Visible = true;
            this.colLeadTimeDay.Width = 48;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Seg. B - 1st Station details";
            this.gridBand3.Columns.Add(this.colStartPoint1);
            this.gridBand3.Columns.Add(this.colStartPointFullDescription);
            this.gridBand3.Columns.Add(this.colStartPointAddress);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Tag = 1;
            this.gridBand3.Width = 610;
            // 
            // colStartPoint1
            // 
            this.colStartPoint1.Caption = "Cde";
            this.colStartPoint1.FieldName = "StartPoint";
            this.colStartPoint1.Name = "colStartPoint1";
            this.colStartPoint1.Visible = true;
            this.colStartPoint1.Width = 43;
            // 
            // colStartPointFullDescription
            // 
            this.colStartPointFullDescription.AppearanceHeader.Options.UseTextOptions = true;
            this.colStartPointFullDescription.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStartPointFullDescription.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStartPointFullDescription.Caption = "Name";
            this.colStartPointFullDescription.FieldName = "StartPointFullDescription";
            this.colStartPointFullDescription.Name = "colStartPointFullDescription";
            this.colStartPointFullDescription.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colStartPointFullDescription.Visible = true;
            this.colStartPointFullDescription.Width = 272;
            // 
            // colStartPointAddress
            // 
            this.colStartPointAddress.AppearanceHeader.Options.UseTextOptions = true;
            this.colStartPointAddress.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colStartPointAddress.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colStartPointAddress.Caption = "Address";
            this.colStartPointAddress.FieldName = "StartPointAddress";
            this.colStartPointAddress.Name = "colStartPointAddress";
            this.colStartPointAddress.Visible = true;
            this.colStartPointAddress.Width = 295;
            // 
            // gridBand18
            // 
            this.gridBand18.Caption = "1st Station";
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Tag = 1;
            this.gridBand18.Visible = false;
            this.gridBand18.Width = 295;
            // 
            // colReceivingEndPoint
            // 
            this.colReceivingEndPoint.AppearanceHeader.Options.UseTextOptions = true;
            this.colReceivingEndPoint.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colReceivingEndPoint.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colReceivingEndPoint.Caption = "Where is Receiving\r\nEnd Point?";
            this.colReceivingEndPoint.FieldName = "ReceivingEndPoint";
            this.colReceivingEndPoint.Name = "colReceivingEndPoint";
            this.colReceivingEndPoint.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Custom;
            this.colReceivingEndPoint.Width = 123;
            // 
            // gridBand8
            // 
            this.gridBand8.Columns.Add(this.colReceivingEndPoint);
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Visible = false;
            this.gridBand8.Width = 123;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "gridBand6";
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 447;
            // 
            // TimeFrameIIListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "TimeFrameIIListForm";
            this.Size = new System.Drawing.Size(1708, 389);
            this.PlatetoolTipController.SetSuperTip(this, null);
            ((System.ComponentModel.ISupportInitialize)(this.objbarManager)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridControl)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.objListGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.repositoryItemComboBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStartPoint;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colEndPoint;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitMode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLeadTimeDay;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStartPointFullDescription;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBuyer;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTradeMethodDescShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colReceivingEndPoint;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStartPointAddress;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLogisticSeason;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHandlingHKCCS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colHandingForwarder;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colFreight;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colInlandHandling;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransShipment;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTradeMethodCde;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand14;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand15;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand16;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand17;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colStartPoint1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand18;

    }
}
