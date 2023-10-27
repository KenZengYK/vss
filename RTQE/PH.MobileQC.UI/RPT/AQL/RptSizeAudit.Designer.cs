namespace PH.MobileQC.UI.AQL
{
    partial class RptSizeAudit
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

        #region Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrPivotGrid = new DevExpress.XtraReports.UI.XRPivotGrid();
            this.bindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.fieldCode = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldPosition = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldTolerence = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldQCTime = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldSizeCode = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldProductSeq = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldStandard = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.fieldAuditValue = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbProject = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbWO = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbStyle = new DevExpress.XtraReports.UI.XRLabel();
            this.lbColor = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel6 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbBeginDate = new DevExpress.XtraReports.UI.XRLabel();
            this.lbEndDate = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPublishedDateText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPublishedDateName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrControlStyle1 = new DevExpress.XtraReports.UI.XRControlStyle();
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.Detail.Height = 0;
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.StylePriority.UseFont = false;
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrPivotGrid
            // 
            this.xrPivotGrid.Appearance.Cell.Font = new System.Drawing.Font("Times New Roman", 6.75F);
            this.xrPivotGrid.Appearance.FieldHeader.Font = new System.Drawing.Font("Times New Roman", 5.75F);
            this.xrPivotGrid.Appearance.FieldHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            this.xrPivotGrid.Appearance.FieldValue.Font = new System.Drawing.Font("Times New Roman", 5.6F);
            this.xrPivotGrid.Appearance.FieldValue.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrPivotGrid.Appearance.FieldValueGrandTotal.Font = new System.Drawing.Font("Times New Roman", 6.75F);
            this.xrPivotGrid.Appearance.FieldValueTotal.Font = new System.Drawing.Font("Times New Roman", 6.75F);
            this.xrPivotGrid.Appearance.FilterSeparator.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            this.xrPivotGrid.Appearance.GrandTotalCell.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            this.xrPivotGrid.Appearance.Lines.Font = new System.Drawing.Font("Times New Roman", 6.75F);
            this.xrPivotGrid.DataSource = this.bindingSource;
            this.xrPivotGrid.FieldHeaderStyleName = "xrControlStyle1";
            this.xrPivotGrid.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.fieldCode,
            this.fieldPosition,
            this.fieldTolerence,
            this.fieldQCTime,
            this.fieldSizeCode,
            this.fieldProductSeq,
            this.fieldStandard,
            this.fieldAuditValue});
            this.xrPivotGrid.FieldValueStyleName = "xrControlStyle1";
            this.xrPivotGrid.Location = new System.Drawing.Point(25, 75);
            this.xrPivotGrid.Name = "xrPivotGrid";
            this.xrPivotGrid.OptionsDataField.AreaIndex = 2;
            this.xrPivotGrid.OptionsPrint.PrintHeadersOnEveryPage = true;
            this.xrPivotGrid.Size = new System.Drawing.Size(1042, 183);
            // 
            // bindingSource
            // 
            this.bindingSource.DataSource = typeof(PH.MobileQC.BO.sp_GetSizeAuditReportResult);
            // 
            // fieldCode
            // 
            this.fieldCode.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldCode.AreaIndex = 0;
            this.fieldCode.Caption = "代號\r\nNo";
            this.fieldCode.FieldName = "Code";
            this.fieldCode.Name = "fieldCode";
            this.fieldCode.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None;
            this.fieldCode.Width = 35;
            // 
            // fieldPosition
            // 
            this.fieldPosition.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldPosition.AreaIndex = 1;
            this.fieldPosition.Caption = "量度位置\r\nMeasurement point";
            this.fieldPosition.FieldName = "Position";
            this.fieldPosition.Name = "fieldPosition";
            this.fieldPosition.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None;
            this.fieldPosition.Width = 210;
            // 
            // fieldTolerence
            // 
            this.fieldTolerence.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.fieldTolerence.AreaIndex = 2;
            this.fieldTolerence.Caption = "尺寸容差\r\nTol(+/-)";
            this.fieldTolerence.FieldName = "Tolerence";
            this.fieldTolerence.Name = "fieldTolerence";
            this.fieldTolerence.Width = 80;
            // 
            // fieldQCTime
            // 
            this.fieldQCTime.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.fieldQCTime.AreaIndex = 0;
            this.fieldQCTime.Caption = "Date\r\n審定日期";
            this.fieldQCTime.FieldName = "QC_Time";
            this.fieldQCTime.Name = "fieldQCTime";
            // 
            // fieldSizeCode
            // 
            this.fieldSizeCode.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.fieldSizeCode.AreaIndex = 1;
            this.fieldSizeCode.Caption = "尺寸";
            this.fieldSizeCode.FieldName = "SizeCode";
            this.fieldSizeCode.Name = "fieldSizeCode";
            this.fieldSizeCode.Width = 40;
            // 
            // fieldProductSeq
            // 
            this.fieldProductSeq.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.fieldProductSeq.AreaIndex = 2;
            this.fieldProductSeq.Caption = "審查次數";
            this.fieldProductSeq.FieldName = "ProductSeq";
            this.fieldProductSeq.Name = "fieldProductSeq";
            this.fieldProductSeq.Width = 60;
            // 
            // fieldStandard
            // 
            this.fieldStandard.Area = DevExpress.XtraPivotGrid.PivotArea.DataArea;
            this.fieldStandard.AreaIndex = 0;
            this.fieldStandard.Caption = "標準";
            this.fieldStandard.FieldName = "Standard";
            this.fieldStandard.Name = "fieldStandard";
            this.fieldStandard.Options.ShowCustomTotals = false;
            this.fieldStandard.Options.ShowGrandTotal = false;
            this.fieldStandard.Options.ShowTotals = false;
            this.fieldStandard.SummaryType = DevExpress.Data.PivotGrid.PivotSummaryType.Max;
            this.fieldStandard.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None;
            this.fieldStandard.Visible = false;
            this.fieldStandard.Width = 50;
            // 
            // fieldAuditValue
            // 
            this.fieldAuditValue.Area = DevExpress.XtraPivotGrid.PivotArea.DataArea;
            this.fieldAuditValue.AreaIndex = 0;
            this.fieldAuditValue.Caption = "審查";
            this.fieldAuditValue.FieldName = "AuditValue";
            this.fieldAuditValue.Name = "fieldAuditValue";
            this.fieldAuditValue.Options.ShowCustomTotals = false;
            this.fieldAuditValue.Options.ShowGrandTotal = false;
            this.fieldAuditValue.Options.ShowTotals = false;
            this.fieldAuditValue.SummaryType = DevExpress.Data.PivotGrid.PivotSummaryType.Max;
            this.fieldAuditValue.TotalsVisibility = DevExpress.XtraPivotGrid.PivotTotalsVisibility.None;
            this.fieldAuditValue.Width = 50;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrLabel1.Location = new System.Drawing.Point(17, 42);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(108, 25);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "Project No(工程) :";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // lbProject
            // 
            this.lbProject.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lbProject.Location = new System.Drawing.Point(125, 42);
            this.lbProject.Name = "lbProject";
            this.lbProject.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbProject.Size = new System.Drawing.Size(108, 25);
            this.lbProject.StylePriority.UseFont = false;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrLabel3.Location = new System.Drawing.Point(250, 42);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(103, 25);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.Text = "Fty WO No (制單) :";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // lbWO
            // 
            this.lbWO.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lbWO.Location = new System.Drawing.Point(354, 42);
            this.lbWO.Name = "lbWO";
            this.lbWO.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbWO.Size = new System.Drawing.Size(117, 25);
            this.lbWO.StylePriority.UseFont = false;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrLabel2.Location = new System.Drawing.Point(473, 42);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(83, 25);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.Text = "Style (款號) :";
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // lbStyle
            // 
            this.lbStyle.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lbStyle.Location = new System.Drawing.Point(558, 42);
            this.lbStyle.Name = "lbStyle";
            this.lbStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbStyle.Size = new System.Drawing.Size(119, 25);
            this.lbStyle.StylePriority.UseFont = false;
            // 
            // lbColor
            // 
            this.lbColor.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lbColor.Location = new System.Drawing.Point(758, 42);
            this.lbColor.Name = "lbColor";
            this.lbColor.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbColor.Size = new System.Drawing.Size(67, 25);
            this.lbColor.StylePriority.UseFont = false;
            // 
            // xrLabel6
            // 
            this.xrLabel6.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrLabel6.Location = new System.Drawing.Point(683, 42);
            this.xrLabel6.Name = "xrLabel6";
            this.xrLabel6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel6.Size = new System.Drawing.Size(74, 25);
            this.xrLabel6.StylePriority.UseFont = false;
            this.xrLabel6.StylePriority.UseTextAlignment = false;
            this.xrLabel6.Text = "Color (顏色) :";
            this.xrLabel6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // xrLabel4
            // 
            this.xrLabel4.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.xrLabel4.Location = new System.Drawing.Point(842, 42);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(108, 25);
            this.xrLabel4.StylePriority.UseFont = false;
            this.xrLabel4.Text = "Date (審定日期) :";
            this.xrLabel4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopRight;
            // 
            // lbBeginDate
            // 
            this.lbBeginDate.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lbBeginDate.Location = new System.Drawing.Point(952, 42);
            this.lbBeginDate.Name = "lbBeginDate";
            this.lbBeginDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbBeginDate.Size = new System.Drawing.Size(90, 25);
            this.lbBeginDate.StylePriority.UseFont = false;
            // 
            // lbEndDate
            // 
            this.lbEndDate.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.lbEndDate.Location = new System.Drawing.Point(1045, 42);
            this.lbEndDate.Name = "lbEndDate";
            this.lbEndDate.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbEndDate.Size = new System.Drawing.Size(83, 25);
            this.lbEndDate.StylePriority.UseFont = false;
            // 
            // xrLabel5
            // 
            this.xrLabel5.Font = new System.Drawing.Font("Arial Unicode MS", 13F, System.Drawing.FontStyle.Bold);
            this.xrLabel5.Location = new System.Drawing.Point(17, 8);
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(1042, 25);
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.Text = "Measurement Chart 尺寸量度審查表";
            this.xrLabel5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPivotGrid,
            this.xrPublishedDateText,
            this.xrPublishedDateName,
            this.xrVerText,
            this.xrVerName,
            this.xrLabel5,
            this.xrLabel4,
            this.xrLabel6,
            this.lbStyle,
            this.xrLabel2,
            this.lbWO,
            this.xrLabel3,
            this.lbProject,
            this.xrLabel1,
            this.lbEndDate,
            this.lbBeginDate,
            this.lbColor});
            this.PageHeader.Height = 258;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrPublishedDateText
            // 
            this.xrPublishedDateText.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPublishedDateText.Location = new System.Drawing.Point(1050, 17);
            this.xrPublishedDateText.Multiline = true;
            this.xrPublishedDateText.Name = "xrPublishedDateText";
            this.xrPublishedDateText.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPublishedDateText.Size = new System.Drawing.Size(75, 16);
            this.xrPublishedDateText.StylePriority.UseFont = false;
            this.xrPublishedDateText.StylePriority.UseTextAlignment = false;
            this.xrPublishedDateText.Text = "2019-06-12\r\n";
            this.xrPublishedDateText.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrPublishedDateName
            // 
            this.xrPublishedDateName.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPublishedDateName.Location = new System.Drawing.Point(983, 17);
            this.xrPublishedDateName.Name = "xrPublishedDateName";
            this.xrPublishedDateName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPublishedDateName.Size = new System.Drawing.Size(79, 16);
            this.xrPublishedDateName.StylePriority.UseFont = false;
            this.xrPublishedDateName.StylePriority.UseTextAlignment = false;
            this.xrPublishedDateName.Text = "Effective dd :";
            this.xrPublishedDateName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrVerText
            // 
            this.xrVerText.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrVerText.Location = new System.Drawing.Point(950, 17);
            this.xrVerText.Name = "xrVerText";
            this.xrVerText.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrVerText.Size = new System.Drawing.Size(25, 16);
            this.xrVerText.StylePriority.UseFont = false;
            this.xrVerText.StylePriority.UseTextAlignment = false;
            this.xrVerText.Text = "2.0";
            this.xrVerText.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrVerName
            // 
            this.xrVerName.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrVerName.Location = new System.Drawing.Point(917, 17);
            this.xrVerName.Name = "xrVerName";
            this.xrVerName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrVerName.Size = new System.Drawing.Size(33, 16);
            this.xrVerName.StylePriority.UseFont = false;
            this.xrVerName.StylePriority.UseTextAlignment = false;
            this.xrVerName.Text = "Ver :";
            this.xrVerName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrControlStyle1
            // 
            this.xrControlStyle1.Name = "xrControlStyle1";
            this.xrControlStyle1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrControlStyle1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // RptSizeAudit
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader});
            this.DataSource = this.bindingSource;
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(10, 10, 20, 10);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.xrControlStyle1});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.bindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRPivotGrid xrPivotGrid;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldCode;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldQCTime;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldPosition;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldTolerence;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldSizeCode;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldStandard;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldAuditValue;
        private DevExpress.XtraReports.UI.XRLabel xrLabel6;
        private DevExpress.XtraReports.UI.XRLabel lbColor;
        private DevExpress.XtraReports.UI.XRLabel lbStyle;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel lbWO;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRLabel lbProject;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRLabel lbEndDate;
        private DevExpress.XtraReports.UI.XRLabel lbBeginDate;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField fieldProductSeq;
        private DevExpress.XtraReports.UI.XRControlStyle xrControlStyle1;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateText;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateName;
        private DevExpress.XtraReports.UI.XRLabel xrVerText;
        private DevExpress.XtraReports.UI.XRLabel xrVerName;
        public System.Windows.Forms.BindingSource bindingSource;
    }
}
