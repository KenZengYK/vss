namespace PH.MobileQC.UI.AQL
{
    partial class RptFullAuditQuality
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
            this.xrPivotGrid1 = new DevExpress.XtraReports.UI.XRPivotGrid();
            this.bsFullInspect = new System.Windows.Forms.BindingSource(this.components);
            this.xrPivotGridField1 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField2 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField3 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField4 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField5 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField8 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField9 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField16 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField10 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField11 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField12 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField13 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField6 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.xrPivotGridField7 = new DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField();
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.PageFooter = new DevExpress.XtraReports.UI.PageFooterBand();
            ((System.ComponentModel.ISupportInitialize)(this.bsFullInspect)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPivotGrid1});
            this.Detail.Name = "Detail";
            this.Detail.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.Detail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrPivotGrid1
            // 
            this.xrPivotGrid1.DataSource = this.bsFullInspect;
            this.xrPivotGrid1.Fields.AddRange(new DevExpress.XtraPivotGrid.PivotGridField[] {
            this.xrPivotGridField1,
            this.xrPivotGridField2,
            this.xrPivotGridField3,
            this.xrPivotGridField4,
            this.xrPivotGridField5,
            this.xrPivotGridField8,
            this.xrPivotGridField9,
            this.xrPivotGridField16,
            this.xrPivotGridField10,
            this.xrPivotGridField11,
            this.xrPivotGridField12,
            this.xrPivotGridField13,
            this.xrPivotGridField6,
            this.xrPivotGridField7});
            this.xrPivotGrid1.Location = new System.Drawing.Point(8, 17);
            this.xrPivotGrid1.Name = "xrPivotGrid1";
            this.xrPivotGrid1.OptionsView.ShowHorzLines = false;
            this.xrPivotGrid1.Size = new System.Drawing.Size(950, 83);
            // 
            // xrPivotGridField1
            // 
            this.xrPivotGridField1.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField1.AreaIndex = 0;
            this.xrPivotGridField1.Caption = "Line";
            this.xrPivotGridField1.FieldName = "Line";
            this.xrPivotGridField1.Name = "xrPivotGridField1";
            this.xrPivotGridField1.Width = 40;
            // 
            // xrPivotGridField2
            // 
            this.xrPivotGridField2.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField2.AreaIndex = 1;
            this.xrPivotGridField2.Caption = "Customer";
            this.xrPivotGridField2.FieldName = "Customer";
            this.xrPivotGridField2.Name = "xrPivotGridField2";
            this.xrPivotGridField2.Width = 40;
            // 
            // xrPivotGridField3
            // 
            this.xrPivotGridField3.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField3.AreaIndex = 2;
            this.xrPivotGridField3.Caption = "T2 Week";
            this.xrPivotGridField3.FieldName = "YYMM";
            this.xrPivotGridField3.Name = "xrPivotGridField3";
            this.xrPivotGridField3.Width = 40;
            // 
            // xrPivotGridField4
            // 
            this.xrPivotGridField4.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField4.AreaIndex = 3;
            this.xrPivotGridField4.Caption = "BKU";
            this.xrPivotGridField4.FieldName = "BKU";
            this.xrPivotGridField4.Name = "xrPivotGridField4";
            this.xrPivotGridField4.SortOrder = DevExpress.XtraPivotGrid.PivotSortOrder.Descending;
            this.xrPivotGridField4.Width = 30;
            // 
            // xrPivotGridField5
            // 
            this.xrPivotGridField5.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField5.AreaIndex = 4;
            this.xrPivotGridField5.Caption = "Style";
            this.xrPivotGridField5.FieldName = "Style";
            this.xrPivotGridField5.Name = "xrPivotGridField5";
            this.xrPivotGridField5.Width = 60;
            // 
            // xrPivotGridField8
            // 
            this.xrPivotGridField8.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField8.AreaIndex = 5;
            this.xrPivotGridField8.Caption = "Other";
            this.xrPivotGridField8.FieldName = "OtherTotal";
            this.xrPivotGridField8.Name = "xrPivotGridField8";
            this.xrPivotGridField8.Width = 50;
            // 
            // xrPivotGridField9
            // 
            this.xrPivotGridField9.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField9.AreaIndex = 6;
            this.xrPivotGridField9.Caption = "Type";
            this.xrPivotGridField9.FieldName = "DefectTypeTotal";
            this.xrPivotGridField9.Name = "xrPivotGridField9";
            this.xrPivotGridField9.Width = 40;
            // 
            // xrPivotGridField16
            // 
            this.xrPivotGridField16.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField16.AreaIndex = 11;
            this.xrPivotGridField16.Caption = "Defect Total";
            this.xrPivotGridField16.FieldName = "DefectTotal";
            this.xrPivotGridField16.Name = "xrPivotGridField16";
            this.xrPivotGridField16.Width = 40;
            // 
            // xrPivotGridField10
            // 
            this.xrPivotGridField10.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField10.AreaIndex = 7;
            this.xrPivotGridField10.Caption = "Per";
            this.xrPivotGridField10.FieldName = "MPer";
            this.xrPivotGridField10.Name = "xrPivotGridField10";
            this.xrPivotGridField10.Width = 40;
            // 
            // xrPivotGridField11
            // 
            this.xrPivotGridField11.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField11.AreaIndex = 8;
            this.xrPivotGridField11.Caption = "åè≤ÈøÇîµ";
            this.xrPivotGridField11.FieldName = "ChkTotal";
            this.xrPivotGridField11.Name = "xrPivotGridField11";
            this.xrPivotGridField11.Width = 40;
            // 
            // xrPivotGridField12
            // 
            this.xrPivotGridField12.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField12.AreaIndex = 9;
            this.xrPivotGridField12.Caption = "…˙Æaîµ¡ø";
            this.xrPivotGridField12.FieldName = "ProductTotal";
            this.xrPivotGridField12.Name = "xrPivotGridField12";
            this.xrPivotGridField12.Width = 40;
            // 
            // xrPivotGridField13
            // 
            this.xrPivotGridField13.Area = DevExpress.XtraPivotGrid.PivotArea.RowArea;
            this.xrPivotGridField13.AreaIndex = 10;
            this.xrPivotGridField13.Caption = "Level";
            this.xrPivotGridField13.FieldName = "MLevel";
            this.xrPivotGridField13.Name = "xrPivotGridField13";
            this.xrPivotGridField13.Width = 40;
            // 
            // xrPivotGridField6
            // 
            this.xrPivotGridField6.Area = DevExpress.XtraPivotGrid.PivotArea.ColumnArea;
            this.xrPivotGridField6.AreaIndex = 0;
            this.xrPivotGridField6.Caption = "Code";
            this.xrPivotGridField6.FieldName = "DefectCode";
            this.xrPivotGridField6.Name = "xrPivotGridField6";
            this.xrPivotGridField6.Width = 60;
            // 
            // xrPivotGridField7
            // 
            this.xrPivotGridField7.Area = DevExpress.XtraPivotGrid.PivotArea.DataArea;
            this.xrPivotGridField7.AreaIndex = 0;
            this.xrPivotGridField7.FieldName = "DefectQty";
            this.xrPivotGridField7.Name = "xrPivotGridField7";
            this.xrPivotGridField7.Width = 60;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel1});
            this.PageHeader.Height = 70;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageHeader.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Location = new System.Drawing.Point(233, 17);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(100, 25);
            this.xrLabel1.Text = "xrLabel1";
            // 
            // PageFooter
            // 
            this.PageFooter.Height = 30;
            this.PageFooter.Name = "PageFooter";
            this.PageFooter.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.PageFooter.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // RptFullAuditQuality
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.Detail,
            this.PageHeader,
            this.PageFooter});
            this.DataSource = this.bsFullInspect;
            this.Landscape = true;
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.bsFullInspect)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        #endregion

        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        private DevExpress.XtraReports.UI.PageFooterBand PageFooter;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRPivotGrid xrPivotGrid1;
        private System.Windows.Forms.BindingSource bsFullInspect;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField1;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField2;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField3;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField4;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField5;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField6;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField7;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField8;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField9;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField10;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField11;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField12;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField13;
        private DevExpress.XtraReports.UI.PivotGrid.XRPivotGridField xrPivotGridField16;
    }
}
