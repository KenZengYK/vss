namespace PH.RWO.UI.WO
{
    partial class BulkSampleForm
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
            this.gridControl1 = new DevExpress.XtraGrid.GridControl();
            this.bandedGridView1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridView();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBulkSampleTotalQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.bandedGridColumn1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colColorCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSeqNo = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSampleType = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colLevel = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSizeTotalQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCup = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize1Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize2Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize3Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize4Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize5Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize6Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize7Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize8Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize9Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colSize10Qty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colSampleDespatchDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.colActualSampleDespatchDate = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colKeepTotalQty = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // gridControl1
            // 
            this.gridControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gridControl1.EmbeddedNavigator.Name = "";
            this.gridControl1.Location = new System.Drawing.Point(0, 0);
            this.gridControl1.MainView = this.bandedGridView1;
            this.gridControl1.Name = "gridControl1";
            this.gridControl1.Size = new System.Drawing.Size(1110, 557);
            this.gridControl1.TabIndex = 0;
            this.gridControl1.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.bandedGridView1});
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.Row.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.Row.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.Row.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.Row.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.BandPanelRowHeight = 50;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand2,
            this.gridBand3,
            this.gridBand8,
            this.gridBand4,
            this.gridBand7,
            this.gridBand5,
            this.gridBand6});
            this.bandedGridView1.ColumnPanelRowHeight = 35;
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.bandedGridColumn1,
            this.colColorCode,
            this.colBulkSampleTotalQty,
            this.colSampleType,
            this.colSizeTotalQty,
            this.colKeepTotalQty,
            this.colSeqNo,
            this.colSampleDespatchDate,
            this.colActualSampleDespatchDate,
            this.colSize1Qty,
            this.colSize2Qty,
            this.colSize3Qty,
            this.colSize4Qty,
            this.colSize5Qty,
            this.colSize6Qty,
            this.colSize7Qty,
            this.colSize8Qty,
            this.colSize9Qty,
            this.colSize10Qty,
            this.colLevel,
            this.colCup});
            this.bandedGridView1.CustomizationFormBounds = new System.Drawing.Rectangle(791, 311, 225, 422);
            this.bandedGridView1.GridControl = this.gridControl1;
            this.bandedGridView1.Name = "bandedGridView1";
            this.bandedGridView1.OptionsBehavior.Editable = false;
            this.bandedGridView1.OptionsCustomization.AllowChangeBandParent = true;
            this.bandedGridView1.OptionsCustomization.AllowChangeColumnParent = true;
            this.bandedGridView1.OptionsView.AllowCellMerge = true;
            this.bandedGridView1.OptionsView.ColumnAutoWidth = false;
            this.bandedGridView1.OptionsView.ShowDetailButtons = false;
            this.bandedGridView1.OptionsView.ShowFooter = true;
            this.bandedGridView1.OptionsView.ShowGroupPanel = false;
            this.bandedGridView1.CellMerge += new DevExpress.XtraGrid.Views.Grid.CellMergeEventHandler(this.bandedGridView1_CellMerge);
            this.bandedGridView1.RowCellStyle += new DevExpress.XtraGrid.Views.Grid.RowCellStyleEventHandler(this.bandedGridView1_RowCellStyle);
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Bulk Smpl\r\n- Clr/Type\r\nQty b/d";
            this.gridBand1.Columns.Add(this.colBulkSampleTotalQty);
            this.gridBand1.Columns.Add(this.bandedGridColumn1);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 72;
            // 
            // colBulkSampleTotalQty
            // 
            this.colBulkSampleTotalQty.FieldName = "BulkSampleTotalQty";
            this.colBulkSampleTotalQty.Name = "colBulkSampleTotalQty";
            this.colBulkSampleTotalQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colBulkSampleTotalQty.Visible = true;
            this.colBulkSampleTotalQty.Width = 72;
            // 
            // bandedGridColumn1
            // 
            this.bandedGridColumn1.Caption = "WorkOrderNo";
            this.bandedGridColumn1.FieldName = "WorkOrderNo";
            this.bandedGridColumn1.Name = "bandedGridColumn1";
            this.bandedGridColumn1.Width = 87;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "Color\r";
            this.gridBand2.Columns.Add(this.colColorCode);
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 51;
            // 
            // colColorCode
            // 
            this.colColorCode.AppearanceCell.Options.UseTextOptions = true;
            this.colColorCode.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColorCode.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colColorCode.AppearanceHeader.Options.UseTextOptions = true;
            this.colColorCode.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colColorCode.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colColorCode.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colColorCode.Caption = "Cde";
            this.colColorCode.FieldName = "ColorCode";
            this.colColorCode.Name = "colColorCode";
            this.colColorCode.Visible = true;
            this.colColorCode.Width = 51;
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Smpl\r\nType";
            this.gridBand3.Columns.Add(this.colSeqNo);
            this.gridBand3.Columns.Add(this.colSampleType);
            this.gridBand3.Columns.Add(this.colLevel);
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.Width = 141;
            // 
            // colSeqNo
            // 
            this.colSeqNo.AppearanceCell.Options.UseTextOptions = true;
            this.colSeqNo.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSeqNo.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSeqNo.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSeqNo.Caption = "Sq.";
            this.colSeqNo.FieldName = "SeqNo";
            this.colSeqNo.Name = "colSeqNo";
            this.colSeqNo.Visible = true;
            this.colSeqNo.Width = 40;
            // 
            // colSampleType
            // 
            this.colSampleType.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleType.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Near;
            this.colSampleType.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSampleType.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSampleType.AppearanceHeader.Options.UseTextOptions = true;
            this.colSampleType.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleType.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSampleType.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSampleType.Caption = "Cde";
            this.colSampleType.FieldName = "SampleType";
            this.colSampleType.Name = "colSampleType";
            this.colSampleType.Visible = true;
            this.colSampleType.Width = 49;
            // 
            // colLevel
            // 
            this.colLevel.Caption = "Level";
            this.colLevel.FieldName = "Level";
            this.colLevel.Name = "colLevel";
            this.colLevel.Visible = true;
            this.colLevel.Width = 52;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "Bulk \r\nSmpl\r\nto Cust";
            this.gridBand8.Columns.Add(this.colSizeTotalQty);
            this.gridBand8.MinWidth = 20;
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.Width = 54;
            // 
            // colSizeTotalQty
            // 
            this.colSizeTotalQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSizeTotalQty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSizeTotalQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSizeTotalQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSizeTotalQty.Caption = "Ttl";
            this.colSizeTotalQty.FieldName = "SizeTotalQty";
            this.colSizeTotalQty.Name = "colSizeTotalQty";
            this.colSizeTotalQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colSizeTotalQty.Visible = true;
            this.colSizeTotalQty.Width = 54;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "Bulk Smpl Despatch to\r\nCust (Sz b/d)";
            this.gridBand4.MinWidth = 20;
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Visible = false;
            this.gridBand4.Width = 607;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "Bulk Smpl to Cust\r\n(Sz b/d - max 10 sizes)";
            this.gridBand7.Columns.Add(this.colCup);
            this.gridBand7.Columns.Add(this.colSize1Qty);
            this.gridBand7.Columns.Add(this.colSize2Qty);
            this.gridBand7.Columns.Add(this.colSize3Qty);
            this.gridBand7.Columns.Add(this.colSize4Qty);
            this.gridBand7.Columns.Add(this.colSize5Qty);
            this.gridBand7.Columns.Add(this.colSize6Qty);
            this.gridBand7.Columns.Add(this.colSize7Qty);
            this.gridBand7.Columns.Add(this.colSize8Qty);
            this.gridBand7.Columns.Add(this.colSize9Qty);
            this.gridBand7.Columns.Add(this.colSize10Qty);
            this.gridBand7.MinWidth = 20;
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 548;
            // 
            // colCup
            // 
            this.colCup.AppearanceHeader.Options.UseTextOptions = true;
            this.colCup.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colCup.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colCup.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colCup.Caption = "Sz/\r\nCup";
            this.colCup.FieldName = "Cup";
            this.colCup.Name = "colCup";
            this.colCup.Visible = true;
            this.colCup.Width = 48;
            // 
            // colSize1Qty
            // 
            this.colSize1Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize1Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize1Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize1Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize1Qty.Caption = "Size1Qty";
            this.colSize1Qty.FieldName = "Size1Qty";
            this.colSize1Qty.Name = "colSize1Qty";
            this.colSize1Qty.Visible = true;
            this.colSize1Qty.Width = 50;
            // 
            // colSize2Qty
            // 
            this.colSize2Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize2Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize2Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize2Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize2Qty.Caption = "Size2Qty";
            this.colSize2Qty.FieldName = "Size2Qty";
            this.colSize2Qty.Name = "colSize2Qty";
            this.colSize2Qty.Visible = true;
            this.colSize2Qty.Width = 50;
            // 
            // colSize3Qty
            // 
            this.colSize3Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize3Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize3Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize3Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize3Qty.Caption = "Size3Qty";
            this.colSize3Qty.FieldName = "Size3Qty";
            this.colSize3Qty.Name = "colSize3Qty";
            this.colSize3Qty.Visible = true;
            this.colSize3Qty.Width = 50;
            // 
            // colSize4Qty
            // 
            this.colSize4Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize4Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize4Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize4Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize4Qty.Caption = "Size4Qty";
            this.colSize4Qty.FieldName = "Size4Qty";
            this.colSize4Qty.Name = "colSize4Qty";
            this.colSize4Qty.Visible = true;
            this.colSize4Qty.Width = 50;
            // 
            // colSize5Qty
            // 
            this.colSize5Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize5Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize5Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize5Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize5Qty.Caption = "Size5Qty";
            this.colSize5Qty.FieldName = "Size5Qty";
            this.colSize5Qty.Name = "colSize5Qty";
            this.colSize5Qty.Visible = true;
            this.colSize5Qty.Width = 50;
            // 
            // colSize6Qty
            // 
            this.colSize6Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize6Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize6Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize6Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize6Qty.Caption = "Size6Qty";
            this.colSize6Qty.FieldName = "Size6Qty";
            this.colSize6Qty.Name = "colSize6Qty";
            this.colSize6Qty.Visible = true;
            this.colSize6Qty.Width = 50;
            // 
            // colSize7Qty
            // 
            this.colSize7Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize7Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize7Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize7Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize7Qty.Caption = "Size7Qty";
            this.colSize7Qty.FieldName = "Size7Qty";
            this.colSize7Qty.Name = "colSize7Qty";
            this.colSize7Qty.Visible = true;
            this.colSize7Qty.Width = 50;
            // 
            // colSize8Qty
            // 
            this.colSize8Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize8Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize8Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize8Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize8Qty.Caption = "Size8Qty";
            this.colSize8Qty.FieldName = "Size8Qty";
            this.colSize8Qty.Name = "colSize8Qty";
            this.colSize8Qty.Visible = true;
            this.colSize8Qty.Width = 50;
            // 
            // colSize9Qty
            // 
            this.colSize9Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize9Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize9Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize9Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize9Qty.Caption = "Size9Qty";
            this.colSize9Qty.FieldName = "Size9Qty";
            this.colSize9Qty.Name = "colSize9Qty";
            this.colSize9Qty.Visible = true;
            this.colSize9Qty.Width = 50;
            // 
            // colSize10Qty
            // 
            this.colSize10Qty.AppearanceHeader.Options.UseTextOptions = true;
            this.colSize10Qty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSize10Qty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSize10Qty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSize10Qty.Caption = "Size10Qty";
            this.colSize10Qty.FieldName = "Size10Qty";
            this.colSize10Qty.Name = "colSize10Qty";
            this.colSize10Qty.Visible = true;
            this.colSize10Qty.Width = 50;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Despatch dd";
            this.gridBand5.Columns.Add(this.colSampleDespatchDate);
            this.gridBand5.Columns.Add(this.colActualSampleDespatchDate);
            this.gridBand5.MinWidth = 20;
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.Width = 166;
            // 
            // colSampleDespatchDate
            // 
            this.colSampleDespatchDate.AppearanceCell.Options.UseTextOptions = true;
            this.colSampleDespatchDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleDespatchDate.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSampleDespatchDate.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSampleDespatchDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colSampleDespatchDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colSampleDespatchDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colSampleDespatchDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colSampleDespatchDate.Caption = "Req. ";
            this.colSampleDespatchDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colSampleDespatchDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colSampleDespatchDate.FieldName = "SampleDespatchDate";
            this.colSampleDespatchDate.Name = "colSampleDespatchDate";
            this.colSampleDespatchDate.SummaryItem.DisplayFormat = "{0:yyyy-MM-dd}";
            this.colSampleDespatchDate.SummaryItem.FieldName = "DespatchStartDate";
            this.colSampleDespatchDate.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Min;
            this.colSampleDespatchDate.Visible = true;
            this.colSampleDespatchDate.Width = 83;
            // 
            // colActualSampleDespatchDate
            // 
            this.colActualSampleDespatchDate.AppearanceCell.Options.UseTextOptions = true;
            this.colActualSampleDespatchDate.AppearanceCell.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActualSampleDespatchDate.AppearanceCell.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colActualSampleDespatchDate.AppearanceCell.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colActualSampleDespatchDate.AppearanceHeader.Options.UseTextOptions = true;
            this.colActualSampleDespatchDate.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colActualSampleDespatchDate.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colActualSampleDespatchDate.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colActualSampleDespatchDate.Caption = "Act.";
            this.colActualSampleDespatchDate.DisplayFormat.FormatString = "yyyy-MM-dd";
            this.colActualSampleDespatchDate.DisplayFormat.FormatType = DevExpress.Utils.FormatType.DateTime;
            this.colActualSampleDespatchDate.FieldName = "ActualSampleDespatchDate";
            this.colActualSampleDespatchDate.Name = "colActualSampleDespatchDate";
            this.colActualSampleDespatchDate.SummaryItem.DisplayFormat = "{0:yyyy-MM-dd}";
            this.colActualSampleDespatchDate.SummaryItem.FieldName = "DespatchEndDate";
            this.colActualSampleDespatchDate.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Max;
            this.colActualSampleDespatchDate.Visible = true;
            this.colActualSampleDespatchDate.Width = 83;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Keep \r\nSmpl\r\nQty";
            this.gridBand6.Columns.Add(this.colKeepTotalQty);
            this.gridBand6.MinWidth = 20;
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.Width = 50;
            // 
            // colKeepTotalQty
            // 
            this.colKeepTotalQty.AppearanceHeader.Options.UseTextOptions = true;
            this.colKeepTotalQty.AppearanceHeader.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.colKeepTotalQty.AppearanceHeader.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.colKeepTotalQty.AppearanceHeader.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.colKeepTotalQty.Caption = "Ttl";
            this.colKeepTotalQty.FieldName = "KeepTotalQty";
            this.colKeepTotalQty.Name = "colKeepTotalQty";
            this.colKeepTotalQty.SummaryItem.SummaryType = DevExpress.Data.SummaryItemType.Sum;
            this.colKeepTotalQty.Visible = true;
            this.colKeepTotalQty.Width = 50;
            // 
            // BulkSampleForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1110, 557);
            this.Controls.Add(this.gridControl1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "BulkSampleForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Bulk Smpl - Clr/Type Qty b/d";
            ((System.ComponentModel.ISupportInitialize)(this.gridControl1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.bandedGridView1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private DevExpress.XtraGrid.GridControl gridControl1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridView bandedGridView1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn bandedGridColumn1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colColorCode;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleType;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSizeTotalQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colActualSampleDespatchDate;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSampleDespatchDate;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colKeepTotalQty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBulkSampleTotalQty;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSeqNo;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize1Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize2Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize3Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize4Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize5Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize6Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize7Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize8Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize9Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colSize10Qty;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colLevel;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCup;
    }
}