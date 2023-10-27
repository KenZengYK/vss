using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace PH.SPC.BackEnd
{
    public class QuotationProcessingStatusReport : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.TopMarginBand TopMargin;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell13;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell16;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell11;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        #region
        DataRowView drTempOld;
        int DataCount;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell10;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell8;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell tcell_A;
        private DevExpress.XtraReports.UI.XRTableCell tcell_B;
        private DevExpress.XtraReports.UI.XRTableCell tcell_C;
        private DevExpress.XtraReports.UI.XRTableCell tcell_D;
        private DevExpress.XtraReports.UI.XRTableCell tcell_E;
        private DevExpress.XtraReports.UI.XRTableCell tcell_F;
        private DevExpress.XtraReports.UI.XRTableCell tcell_G;
        private DevExpress.XtraReports.UI.XRTableCell tcell_H;
        private DevExpress.XtraReports.UI.XRTableCell tcell_I;
        private DevExpress.XtraReports.UI.XRTableCell tcell_J;
        private DevExpress.XtraReports.UI.XRTableCell tcell_K;
        private DevExpress.XtraReports.UI.XRTableCell tcell_L;
        private DevExpress.XtraReports.UI.XRTableCell tcell_M;
        private DevExpress.XtraReports.UI.XRTableCell tcell_N;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell12;
        private DevExpress.XtraReports.UI.XRTableCell xtc_VersionID;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell15;
        private DevExpress.XtraReports.UI.XRTableCell tcell_O;
        int DataCountTemp;

        #endregion

        //cust, sampleType, status, sortID, phase, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo
        public QuotationProcessingStatusReport(string cust, string sampleType, int status, string sortID, int phase,
              string reqFrom, string reqTo, string createFrom, string createTo, string actFrom, string actTo, string issueFrom, string issueTo, string preFrom, string preTo)
        {
            InitializeComponent();

            System.Data.DataTable dt = PH.SPC.BO.SQLHelper.EXEC_SP_RPT_SampleProcessingStatus(cust, sampleType, status, sortID, phase, reqFrom, reqTo, createFrom, createTo, actFrom, actTo, issueFrom, issueTo, preFrom, preTo);

            this.DataCount = dt.Rows.Count;
            this.DataCountTemp = 0;
            this.DataSource = dt;

            this.tcell_A.DataBindings.Add("Text", this.DataSource, "A");
            this.tcell_B.DataBindings.Add("Text", this.DataSource, "B");
            this.tcell_C.DataBindings.Add("Text", this.DataSource, "C");
            this.tcell_D.DataBindings.Add("Text", this.DataSource, "D");
            this.tcell_E.DataBindings.Add("Text", this.DataSource, "E");
            this.tcell_F.DataBindings.Add("Text", this.DataSource, "F");
            this.tcell_G.DataBindings.Add("Text", this.DataSource, "G");
            this.tcell_H.DataBindings.Add("Text", this.DataSource, "H");
            this.tcell_I.DataBindings.Add("Text", this.DataSource, "I");
            this.tcell_J.DataBindings.Add("Text", this.DataSource, "J");
            this.tcell_K.DataBindings.Add("Text", this.DataSource, "K");
            this.tcell_L.DataBindings.Add("Text", this.DataSource, "L", "{0:yyyy-MM-dd}");
            this.tcell_M.DataBindings.Add("Text", this.DataSource, "M", "{0:yyyy-MM-dd}");
            this.tcell_N.DataBindings.Add("Text", this.DataSource, "N");
            this.xtc_VersionID.DataBindings.Add("Text", this.DataSource, "VersionID");

            //Xsj2013-1-14:添加“開拓辦順序號"
            this.tcell_O.DataBindings.Add("Text", this.DataSource, "O");

        }

        private void InitializeComponent()
        {
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.tcell_A = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_B = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_C = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_D = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_E = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_F = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_G = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_H = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_I = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_J = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_K = new DevExpress.XtraReports.UI.XRTableCell();
            this.xtc_VersionID = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_L = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_M = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_N = new DevExpress.XtraReports.UI.XRTableCell();
            this.TopMargin = new DevExpress.XtraReports.UI.TopMarginBand();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.tcell_O = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel2,
            this.xrPageInfo1,
            this.xrLabel1,
            this.xrTable2});
            this.PageHeader.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.PageHeader.Height = 109;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel2.Location = new System.Drawing.Point(975, 42);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(42, 17);
            this.xrLabel2.Text = "Page:";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrPageInfo1.Location = new System.Drawing.Point(1025, 42);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(83, 17);
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 22F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(0, 0);
            this.xrLabel1.Multiline = true;
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(1117, 42);
            this.xrLabel1.Text = "Sample Processing Status";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTable2.Location = new System.Drawing.Point(0, 67);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(1117, 42);
            this.xrTable2.StylePriority.UseTextAlignment = false;
            this.xrTable2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell10,
            this.xrTableCell15,
            this.xrTableCell2,
            this.xrTableCell9,
            this.xrTableCell13,
            this.xrTableCell5,
            this.xrTableCell14,
            this.xrTableCell8,
            this.xrTableCell11,
            this.xrTableCell7,
            this.xrTableCell4,
            this.xrTableCell3,
            this.xrTableCell12,
            this.xrTableCell1,
            this.xrTableCell6,
            this.xrTableCell16});
            this.xrTableRow3.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow3.Size = new System.Drawing.Size(1117, 42);
            this.xrTableRow3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell10.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(75, 42);
            this.xrTableCell10.StylePriority.UseTextAlignment = false;
            this.xrTableCell10.Text = "Sample Order Nr";
            this.xrTableCell10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell2.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell2.Location = new System.Drawing.Point(142, 0);
            this.xrTableCell2.Multiline = true;
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(49, 42);
            this.xrTableCell2.StylePriority.UseBorders = false;
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.Text = "Cust Code";
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell9.Location = new System.Drawing.Point(191, 0);
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(76, 42);
            this.xrTableCell9.StylePriority.UseTextAlignment = false;
            this.xrTableCell9.Text = "Cust Style Nr";
            this.xrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell13.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell13.Location = new System.Drawing.Point(267, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(66, 42);
            this.xrTableCell13.StylePriority.UseBorders = false;
            this.xrTableCell13.StylePriority.UseTextAlignment = false;
            this.xrTableCell13.Text = "PH Style Nr";
            this.xrTableCell13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell5.Location = new System.Drawing.Point(333, 0);
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(49, 42);
            this.xrTableCell5.StylePriority.UseTextAlignment = false;
            this.xrTableCell5.Text = "PC Code";
            this.xrTableCell5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell14.Location = new System.Drawing.Point(382, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(109, 42);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "Brief Desc.";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell8.Location = new System.Drawing.Point(491, 0);
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(101, 42);
            this.xrTableCell8.StylePriority.UseTextAlignment = false;
            this.xrTableCell8.Text = "Band Name";
            this.xrTableCell8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell11.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell11.Location = new System.Drawing.Point(592, 0);
            this.xrTableCell11.Multiline = true;
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(76, 42);
            this.xrTableCell11.StylePriority.UseBorders = false;
            this.xrTableCell11.StylePriority.UseTextAlignment = false;
            this.xrTableCell11.Text = "Group Name";
            this.xrTableCell11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell7.Location = new System.Drawing.Point(668, 0);
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(49, 42);
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            this.xrTableCell7.Text = "Season Code";
            this.xrTableCell7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell4.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell4.Location = new System.Drawing.Point(717, 0);
            this.xrTableCell4.Multiline = true;
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(58, 42);
            this.xrTableCell4.StylePriority.UseBorders = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            this.xrTableCell4.Text = "Pattern Source";
            this.xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell3.Location = new System.Drawing.Point(775, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(75, 42);
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "Sample Type";
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrTableCell12.Location = new System.Drawing.Point(850, 0);
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(42, 42);
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "Ver.";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell1.Location = new System.Drawing.Point(892, 0);
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(58, 42);
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "Issue Date";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell6.Location = new System.Drawing.Point(950, 0);
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(58, 42);
            this.xrTableCell6.StylePriority.UseTextAlignment = false;
            this.xrTableCell6.Text = "Request QTN Date";
            this.xrTableCell6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell16.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell16.Location = new System.Drawing.Point(1008, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(109, 42);
            this.xrTableCell16.StylePriority.UseBorders = false;
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            this.xrTableCell16.Text = "Remark";
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.Detail.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.Detail.Height = 25;
            this.Detail.Name = "Detail";
            // 
            // xrTable1
            // 
            this.xrTable1.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTable1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTable1.Location = new System.Drawing.Point(0, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(1117, 25);
            this.xrTable1.StylePriority.UseBorders = false;
            this.xrTable1.StylePriority.UseTextAlignment = false;
            this.xrTable1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.tcell_A,
            this.tcell_O,
            this.tcell_B,
            this.tcell_C,
            this.tcell_D,
            this.tcell_E,
            this.tcell_F,
            this.tcell_G,
            this.tcell_H,
            this.tcell_I,
            this.tcell_J,
            this.tcell_K,
            this.xtc_VersionID,
            this.tcell_L,
            this.tcell_M,
            this.tcell_N});
            this.xrTableRow1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow1.Size = new System.Drawing.Size(1117, 25);
            this.xrTableRow1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // tcell_A
            // 
            this.tcell_A.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tcell_A.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_A.Location = new System.Drawing.Point(0, 0);
            this.tcell_A.Name = "tcell_A";
            this.tcell_A.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_A.Size = new System.Drawing.Size(75, 25);
            this.tcell_A.StylePriority.UseBorders = false;
            this.tcell_A.StylePriority.UseTextAlignment = false;
            this.tcell_A.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_B
            // 
            this.tcell_B.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tcell_B.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_B.Location = new System.Drawing.Point(142, 0);
            this.tcell_B.Multiline = true;
            this.tcell_B.Name = "tcell_B";
            this.tcell_B.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_B.Size = new System.Drawing.Size(50, 25);
            this.tcell_B.StylePriority.UseBorders = false;
            this.tcell_B.StylePriority.UseTextAlignment = false;
            this.tcell_B.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_C
            // 
            this.tcell_C.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_C.Location = new System.Drawing.Point(192, 0);
            this.tcell_C.Name = "tcell_C";
            this.tcell_C.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_C.Size = new System.Drawing.Size(75, 25);
            this.tcell_C.StylePriority.UseTextAlignment = false;
            this.tcell_C.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_D
            // 
            this.tcell_D.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tcell_D.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_D.Location = new System.Drawing.Point(267, 0);
            this.tcell_D.Name = "tcell_D";
            this.tcell_D.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_D.Size = new System.Drawing.Size(66, 25);
            this.tcell_D.StylePriority.UseBorders = false;
            this.tcell_D.StylePriority.UseTextAlignment = false;
            this.tcell_D.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_E
            // 
            this.tcell_E.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_E.Location = new System.Drawing.Point(333, 0);
            this.tcell_E.Name = "tcell_E";
            this.tcell_E.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_E.Size = new System.Drawing.Size(49, 25);
            this.tcell_E.StylePriority.UseTextAlignment = false;
            this.tcell_E.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_F
            // 
            this.tcell_F.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tcell_F.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_F.Location = new System.Drawing.Point(382, 0);
            this.tcell_F.Multiline = true;
            this.tcell_F.Name = "tcell_F";
            this.tcell_F.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_F.Size = new System.Drawing.Size(109, 25);
            this.tcell_F.StylePriority.UseBorders = false;
            this.tcell_F.StylePriority.UseTextAlignment = false;
            this.tcell_F.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_G
            // 
            this.tcell_G.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_G.Location = new System.Drawing.Point(491, 0);
            this.tcell_G.Name = "tcell_G";
            this.tcell_G.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_G.Size = new System.Drawing.Size(101, 25);
            this.tcell_G.StylePriority.UseTextAlignment = false;
            this.tcell_G.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_H
            // 
            this.tcell_H.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tcell_H.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_H.Location = new System.Drawing.Point(592, 0);
            this.tcell_H.Multiline = true;
            this.tcell_H.Name = "tcell_H";
            this.tcell_H.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_H.Size = new System.Drawing.Size(76, 25);
            this.tcell_H.StylePriority.UseBorders = false;
            this.tcell_H.StylePriority.UseTextAlignment = false;
            this.tcell_H.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_I
            // 
            this.tcell_I.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_I.Location = new System.Drawing.Point(668, 0);
            this.tcell_I.Name = "tcell_I";
            this.tcell_I.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_I.Size = new System.Drawing.Size(49, 25);
            this.tcell_I.StylePriority.UseTextAlignment = false;
            this.tcell_I.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_J
            // 
            this.tcell_J.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tcell_J.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_J.Location = new System.Drawing.Point(717, 0);
            this.tcell_J.Multiline = true;
            this.tcell_J.Name = "tcell_J";
            this.tcell_J.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_J.Size = new System.Drawing.Size(58, 25);
            this.tcell_J.StylePriority.UseBorders = false;
            this.tcell_J.StylePriority.UseTextAlignment = false;
            this.tcell_J.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_K
            // 
            this.tcell_K.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_K.Location = new System.Drawing.Point(775, 0);
            this.tcell_K.Name = "tcell_K";
            this.tcell_K.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_K.Size = new System.Drawing.Size(75, 25);
            this.tcell_K.StylePriority.UseTextAlignment = false;
            this.tcell_K.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xtc_VersionID
            // 
            this.xtc_VersionID.Location = new System.Drawing.Point(850, 0);
            this.xtc_VersionID.Name = "xtc_VersionID";
            this.xtc_VersionID.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xtc_VersionID.Size = new System.Drawing.Size(42, 25);
            this.xtc_VersionID.StylePriority.UseTextAlignment = false;
            this.xtc_VersionID.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tcell_L
            // 
            this.tcell_L.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_L.Location = new System.Drawing.Point(892, 0);
            this.tcell_L.Name = "tcell_L";
            this.tcell_L.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_L.Size = new System.Drawing.Size(58, 25);
            this.tcell_L.StylePriority.UseTextAlignment = false;
            this.tcell_L.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_M
            // 
            this.tcell_M.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_M.Location = new System.Drawing.Point(950, 0);
            this.tcell_M.Name = "tcell_M";
            this.tcell_M.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_M.Size = new System.Drawing.Size(58, 25);
            this.tcell_M.StylePriority.UseTextAlignment = false;
            this.tcell_M.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // tcell_N
            // 
            this.tcell_N.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.tcell_N.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.tcell_N.Location = new System.Drawing.Point(1008, 0);
            this.tcell_N.Multiline = true;
            this.tcell_N.Name = "tcell_N";
            this.tcell_N.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_N.Size = new System.Drawing.Size(109, 25);
            this.tcell_N.StylePriority.UseBorders = false;
            this.tcell_N.StylePriority.UseTextAlignment = false;
            this.tcell_N.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // TopMargin
            // 
            this.TopMargin.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.TopMargin.Height = 20;
            this.TopMargin.Name = "TopMargin";
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell15.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(67, 42);
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "Seq Nr.";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // tcell_O
            // 
            this.tcell_O.Location = new System.Drawing.Point(75, 0);
            this.tcell_O.Name = "tcell_O";
            this.tcell_O.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.tcell_O.Size = new System.Drawing.Size(67, 25);
            this.tcell_O.StylePriority.UseTextAlignment = false;
            this.tcell_O.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // QuotationProcessingStatusReport
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.TopMargin});
            this.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(24, 20, 20, 34);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

    }
}
