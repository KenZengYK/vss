namespace PH.BasicInfo.UI.MasterDB
{
    partial class IncotermMasterDBListForm
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
            this.gridBand3 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand1 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colCode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand16 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTotalSupplierShow = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand14 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand17 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitPointSeq = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand18 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitPointDescEN = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand15 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colTransitMode = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand2 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand4 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand5 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand19 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHHKToPHDG_CRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand20 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHHKToPYBD_CRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand6 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand21 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHHKToPHHK_CCS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand7 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand8 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand22 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHDGToPHDG_CRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand23 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPHDGToPHHK_CCS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand10 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand11 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand24 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPYHKToPHBD_CRS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand12 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.gridBand25 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colPYHKToPHHK_CCS = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand13 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colBasicRulesTimeFrame1 = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
            this.gridBand9 = new DevExpress.XtraGrid.Views.BandedGrid.GridBand();
            this.colOddEvenRowFlag = new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn();
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
            this.objListGridControl.Size = new System.Drawing.Size(1325, 388);
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
            this.BindingSource.DataSource = typeof(PH.BasicInfo.BO.IncotermMasterDB);
            // 
            // bandedGridView1
            // 
            this.bandedGridView1.Appearance.BandPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.BandPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Appearance.HeaderPanel.Options.UseTextOptions = true;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.HAlignment = DevExpress.Utils.HorzAlignment.Center;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.VAlignment = DevExpress.Utils.VertAlignment.Top;
            this.bandedGridView1.Appearance.HeaderPanel.TextOptions.WordWrap = DevExpress.Utils.WordWrap.Wrap;
            this.bandedGridView1.Bands.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand3,
            this.gridBand2,
            this.gridBand13});
            this.bandedGridView1.Columns.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn[] {
            this.colCode,
            this.colTransitPointSeq,
            this.colTransitPointDescEN,
            this.colTransitMode,
            this.colPHHKToPHDG_CRS,
            this.colPHHKToPYBD_CRS,
            this.colPHHKToPHHK_CCS,
            this.colPHDGToPHDG_CRS,
            this.colPHDGToPHHK_CCS,
            this.colPYHKToPHBD_CRS,
            this.colPYHKToPHHK_CCS,
            this.colBasicRulesTimeFrame1,
            this.colTotalSupplierShow,
            this.colOddEvenRowFlag});
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
            // 
            // gridBand3
            // 
            this.gridBand3.Caption = "Incoterms\r\n(common)";
            this.gridBand3.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand1,
            this.gridBand16,
            this.gridBand14,
            this.gridBand15});
            this.gridBand3.MinWidth = 20;
            this.gridBand3.Name = "gridBand3";
            this.gridBand3.RowCount = 4;
            this.gridBand3.Width = 370;
            // 
            // gridBand1
            // 
            this.gridBand1.Caption = "Cde";
            this.gridBand1.Columns.Add(this.colCode);
            this.gridBand1.MinWidth = 20;
            this.gridBand1.Name = "gridBand1";
            this.gridBand1.Width = 49;
            // 
            // colCode
            // 
            this.colCode.Caption = "Code";
            this.colCode.FieldName = "Code";
            this.colCode.Name = "colCode";
            this.colCode.Visible = true;
            this.colCode.Width = 49;
            // 
            // gridBand16
            // 
            this.gridBand16.Caption = "Supp Ttl";
            this.gridBand16.Columns.Add(this.colTotalSupplierShow);
            this.gridBand16.Name = "gridBand16";
            this.gridBand16.Width = 52;
            // 
            // colTotalSupplierShow
            // 
            this.colTotalSupplierShow.Caption = "TotalSupplierShow";
            this.colTotalSupplierShow.FieldName = "TotalSupplierShow";
            this.colTotalSupplierShow.Name = "colTotalSupplierShow";
            this.colTotalSupplierShow.Visible = true;
            this.colTotalSupplierShow.Width = 52;
            // 
            // gridBand14
            // 
            this.gridBand14.Caption = "6 Transit Points";
            this.gridBand14.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand17,
            this.gridBand18});
            this.gridBand14.Name = "gridBand14";
            this.gridBand14.Width = 183;
            // 
            // gridBand17
            // 
            this.gridBand17.Caption = "Seq.";
            this.gridBand17.Columns.Add(this.colTransitPointSeq);
            this.gridBand17.Name = "gridBand17";
            this.gridBand17.Width = 55;
            // 
            // colTransitPointSeq
            // 
            this.colTransitPointSeq.Caption = "TransitPointSeq";
            this.colTransitPointSeq.FieldName = "TransitPointSeq";
            this.colTransitPointSeq.Name = "colTransitPointSeq";
            this.colTransitPointSeq.Visible = true;
            this.colTransitPointSeq.Width = 55;
            // 
            // gridBand18
            // 
            this.gridBand18.Caption = "Full Desc.";
            this.gridBand18.Columns.Add(this.colTransitPointDescEN);
            this.gridBand18.Name = "gridBand18";
            this.gridBand18.Width = 128;
            // 
            // colTransitPointDescEN
            // 
            this.colTransitPointDescEN.Caption = "TransitPointDescEN";
            this.colTransitPointDescEN.FieldName = "TransitPointDescEN";
            this.colTransitPointDescEN.Name = "colTransitPointDescEN";
            this.colTransitPointDescEN.Visible = true;
            this.colTransitPointDescEN.Width = 128;
            // 
            // gridBand15
            // 
            this.gridBand15.Caption = "Transit\r\nMode";
            this.gridBand15.Columns.Add(this.colTransitMode);
            this.gridBand15.Name = "gridBand15";
            this.gridBand15.Width = 86;
            // 
            // colTransitMode
            // 
            this.colTransitMode.Caption = "TransitMode";
            this.colTransitMode.FieldName = "TransitMode";
            this.colTransitMode.Name = "colTransitMode";
            this.colTransitMode.Visible = true;
            this.colTransitMode.Width = 86;
            // 
            // gridBand2
            // 
            this.gridBand2.Caption = "The Buyer (we hv 3 buyers)";
            this.gridBand2.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand4,
            this.gridBand7,
            this.gridBand10});
            this.gridBand2.MinWidth = 20;
            this.gridBand2.Name = "gridBand2";
            this.gridBand2.Width = 833;
            // 
            // gridBand4
            // 
            this.gridBand4.Caption = "PHHK & it\'s Recv\'g Pt. (收貨點)";
            this.gridBand4.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand5,
            this.gridBand6});
            this.gridBand4.Name = "gridBand4";
            this.gridBand4.Width = 423;
            // 
            // gridBand5
            // 
            this.gridBand5.Caption = "Direct to Prdn Site\r\n直運往生产基地";
            this.gridBand5.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand19,
            this.gridBand20});
            this.gridBand5.Name = "gridBand5";
            this.gridBand5.RowCount = 2;
            this.gridBand5.Width = 238;
            // 
            // gridBand19
            // 
            this.gridBand19.Caption = "PHDG - CRS";
            this.gridBand19.Columns.Add(this.colPHHKToPHDG_CRS);
            this.gridBand19.Name = "gridBand19";
            this.gridBand19.Width = 121;
            // 
            // colPHHKToPHDG_CRS
            // 
            this.colPHHKToPHDG_CRS.Caption = "PHHKToPHDG_CRS";
            this.colPHHKToPHDG_CRS.FieldName = "PHHKToPHDG_CRS";
            this.colPHHKToPHDG_CRS.Name = "colPHHKToPHDG_CRS";
            this.colPHHKToPHDG_CRS.Visible = true;
            this.colPHHKToPHDG_CRS.Width = 121;
            // 
            // gridBand20
            // 
            this.gridBand20.Caption = "PYBD - CRS";
            this.gridBand20.Columns.Add(this.colPHHKToPYBD_CRS);
            this.gridBand20.Name = "gridBand20";
            this.gridBand20.Width = 117;
            // 
            // colPHHKToPYBD_CRS
            // 
            this.colPHHKToPYBD_CRS.Caption = "PHHKToPYBD_CRS";
            this.colPHHKToPYBD_CRS.FieldName = "PHHKToPYBD_CRS";
            this.colPHHKToPYBD_CRS.Name = "colPHHKToPYBD_CRS";
            this.colPHHKToPYBD_CRS.Visible = true;
            this.colPHHKToPYBD_CRS.Width = 117;
            // 
            // gridBand6
            // 
            this.gridBand6.Caption = "Consol. to Prdn Site via HKCCS\r\n集運往生產基地經香港集運站";
            this.gridBand6.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand21});
            this.gridBand6.Name = "gridBand6";
            this.gridBand6.RowCount = 2;
            this.gridBand6.Width = 185;
            // 
            // gridBand21
            // 
            this.gridBand21.Caption = "PHHK - CCS";
            this.gridBand21.Columns.Add(this.colPHHKToPHHK_CCS);
            this.gridBand21.Name = "gridBand21";
            this.gridBand21.Width = 185;
            // 
            // colPHHKToPHHK_CCS
            // 
            this.colPHHKToPHHK_CCS.Caption = "PHHKToPHHK_CCS";
            this.colPHHKToPHHK_CCS.FieldName = "PHHKToPHHK_CCS";
            this.colPHHKToPHHK_CCS.Name = "colPHHKToPHHK_CCS";
            this.colPHHKToPHHK_CCS.Visible = true;
            this.colPHHKToPHHK_CCS.Width = 185;
            // 
            // gridBand7
            // 
            this.gridBand7.Caption = "PHDG\' & its Recv\'g Pt. (收貨點)";
            this.gridBand7.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand8});
            this.gridBand7.Name = "gridBand7";
            this.gridBand7.Width = 207;
            // 
            // gridBand8
            // 
            this.gridBand8.Caption = "Direct to Prdn Site  ";
            this.gridBand8.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand22,
            this.gridBand23});
            this.gridBand8.Name = "gridBand8";
            this.gridBand8.RowCount = 2;
            this.gridBand8.Width = 207;
            // 
            // gridBand22
            // 
            this.gridBand22.Caption = "PHDG - CRS";
            this.gridBand22.Columns.Add(this.colPHDGToPHDG_CRS);
            this.gridBand22.Name = "gridBand22";
            this.gridBand22.Width = 96;
            // 
            // colPHDGToPHDG_CRS
            // 
            this.colPHDGToPHDG_CRS.Caption = "PHDGToPHDG_CRS";
            this.colPHDGToPHDG_CRS.FieldName = "PHDGToPHDG_CRS";
            this.colPHDGToPHDG_CRS.Name = "colPHDGToPHDG_CRS";
            this.colPHDGToPHDG_CRS.Visible = true;
            this.colPHDGToPHDG_CRS.Width = 96;
            // 
            // gridBand23
            // 
            this.gridBand23.Caption = "PHHK - CCS";
            this.gridBand23.Columns.Add(this.colPHDGToPHHK_CCS);
            this.gridBand23.Name = "gridBand23";
            this.gridBand23.Width = 111;
            // 
            // colPHDGToPHHK_CCS
            // 
            this.colPHDGToPHHK_CCS.Caption = "PHDGToPHHK_CCS";
            this.colPHDGToPHHK_CCS.FieldName = "PHDGToPHHK_CCS";
            this.colPHDGToPHHK_CCS.Name = "colPHDGToPHHK_CCS";
            this.colPHDGToPHHK_CCS.Visible = true;
            this.colPHDGToPHHK_CCS.Width = 111;
            // 
            // gridBand10
            // 
            this.gridBand10.Caption = "PY Dvp & it\'s Recv\'g Pt. (收貨點)";
            this.gridBand10.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand11,
            this.gridBand12});
            this.gridBand10.Name = "gridBand10";
            this.gridBand10.Width = 203;
            // 
            // gridBand11
            // 
            this.gridBand11.Caption = "Direct to Prdn Site";
            this.gridBand11.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand24});
            this.gridBand11.Name = "gridBand11";
            this.gridBand11.RowCount = 2;
            this.gridBand11.Width = 95;
            // 
            // gridBand24
            // 
            this.gridBand24.Caption = "PYBD - CRS";
            this.gridBand24.Columns.Add(this.colPYHKToPHBD_CRS);
            this.gridBand24.Name = "gridBand24";
            this.gridBand24.Width = 95;
            // 
            // colPYHKToPHBD_CRS
            // 
            this.colPYHKToPHBD_CRS.Caption = "PYHKToPHBD_CRS";
            this.colPYHKToPHBD_CRS.FieldName = "PYHKToPHBD_CRS";
            this.colPYHKToPHBD_CRS.Name = "colPYHKToPHBD_CRS";
            this.colPYHKToPHBD_CRS.Visible = true;
            this.colPYHKToPHBD_CRS.Width = 95;
            // 
            // gridBand12
            // 
            this.gridBand12.Caption = "Consol. to Prdn\r\nSite via HKCCS";
            this.gridBand12.Children.AddRange(new DevExpress.XtraGrid.Views.BandedGrid.GridBand[] {
            this.gridBand25});
            this.gridBand12.Name = "gridBand12";
            this.gridBand12.RowCount = 2;
            this.gridBand12.Width = 108;
            // 
            // gridBand25
            // 
            this.gridBand25.Caption = "PHHK - CCS";
            this.gridBand25.Columns.Add(this.colPYHKToPHHK_CCS);
            this.gridBand25.Name = "gridBand25";
            this.gridBand25.Width = 108;
            // 
            // colPYHKToPHHK_CCS
            // 
            this.colPYHKToPHHK_CCS.Caption = "PYHKToPHHK_CCS";
            this.colPYHKToPHHK_CCS.FieldName = "PYHKToPHHK_CCS";
            this.colPYHKToPHHK_CCS.Name = "colPYHKToPHHK_CCS";
            this.colPYHKToPHHK_CCS.Visible = true;
            this.colPYHKToPHHK_CCS.Width = 108;
            // 
            // gridBand13
            // 
            this.gridBand13.Caption = "Basic Rules for Time Frame I";
            this.gridBand13.Columns.Add(this.colBasicRulesTimeFrame1);
            this.gridBand13.MinWidth = 20;
            this.gridBand13.Name = "gridBand13";
            this.gridBand13.Width = 143;
            // 
            // colBasicRulesTimeFrame1
            // 
            this.colBasicRulesTimeFrame1.Caption = "BasicRulesTimeFrame1";
            this.colBasicRulesTimeFrame1.FieldName = "BasicRulesTimeFrame1";
            this.colBasicRulesTimeFrame1.Name = "colBasicRulesTimeFrame1";
            this.colBasicRulesTimeFrame1.Visible = true;
            this.colBasicRulesTimeFrame1.Width = 143;
            // 
            // gridBand9
            // 
            this.gridBand9.Caption = "Consol. to Prdn\r\nSite via HKCCS";
            this.gridBand9.Name = "gridBand9";
            this.gridBand9.Width = 126;
            // 
            // colOddEvenRowFlag
            // 
            this.colOddEvenRowFlag.Caption = "OddEvenRowFlag";
            this.colOddEvenRowFlag.FieldName = "OddEvenRowFlag";
            this.colOddEvenRowFlag.Name = "colOddEvenRowFlag";
            // 
            // IncotermMasterDBListForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 12F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Name = "IncotermMasterDBListForm";
            this.Size = new System.Drawing.Size(1325, 415);
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
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colCode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPointSeq;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitPointDescEN;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTransitMode;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHHKToPHDG_CRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHHKToPYBD_CRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHHKToPHHK_CCS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHDGToPHDG_CRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPHDGToPHHK_CCS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPYHKToPHBD_CRS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colPYHKToPHHK_CCS;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colBasicRulesTimeFrame1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand2;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand3;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand4;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand5;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand6;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand7;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand8;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand9;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand10;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand11;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand12;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand13;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand1;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand14;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand15;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand16;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand17;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand18;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand19;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand20;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand21;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand22;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand23;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand24;
        private DevExpress.XtraGrid.Views.BandedGrid.GridBand gridBand25;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colTotalSupplierShow;
        private DevExpress.XtraGrid.Views.BandedGrid.BandedGridColumn colOddEvenRowFlag;

    }
}
