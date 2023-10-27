using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using PH.MIDc.BO;
using System.Data;

namespace PH.MIDc.UI
{
    public class MaterialTypeWithCompostion : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.GroupHeaderBand GroupHeader1;
        private DevExpress.XtraReports.UI.TopMarginBand TopMargin;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell12;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell13;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell15;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell16;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell17;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell18;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell20;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell21;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell22;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell23;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell24;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell25;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell26;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell27;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell28;
        private DevExpress.XtraReports.UI.XRTable xrTable8;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow14;
        private DevExpress.XtraReports.UI.XRTableCell dmaterialtype;
        private DevExpress.XtraReports.UI.XRTableCell dsuppref;
        private DevExpress.XtraReports.UI.XRTableCell dhscode;
        private DevExpress.XtraReports.UI.XRTableCell dmaterialname;
        private DevExpress.XtraReports.UI.XRTableCell dNYLON;
        private DevExpress.XtraReports.UI.XRTableCell dPOLYESTER;
        private DevExpress.XtraReports.UI.XRTableCell dELASTHAN;
        private DevExpress.XtraReports.UI.XRTableCell dSILK;
        private DevExpress.XtraReports.UI.XRTableCell dother;
        private DevExpress.XtraReports.UI.XRTableCell dupdate1;
        private DevExpress.XtraReports.UI.XRTableCell dupdate2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell lblWeight;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell dCOTTON;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public MaterialTypeWithCompostion(string materialtype,string suppref)
        {
            InitializeComponent();

            System.Data.DataTable dt = SqlDataHelper.GetMaterialTypeWithCompostion(materialtype,suppref);
           this.DataSource = dt;

            this.dmaterialtype.DataBindings.Add("Text", this.DataSource, "materialtype");
            this.dsuppref.DataBindings.Add("Text", this.DataSource, "suppref");
            this.dhscode.DataBindings.Add("Text", this.DataSource, "hscode");
            this.dmaterialname.DataBindings.Add("Text", this.DataSource, "materialname");
            this.dNYLON.DataBindings.Add("Text", this.DataSource, "NYLON", "{0:0.##}");
            this.dPOLYESTER.DataBindings.Add("Text", this.DataSource, "POLYESTER", "{0:0.##}");
            this.dELASTHAN.DataBindings.Add("Text", this.DataSource, "ELASTHAN", "{0:0.##}");
            this.dSILK.DataBindings.Add("Text", this.DataSource, "SILK", "{0:0.##}");
            this.dCOTTON.DataBindings.Add("Text", this.DataSource, "COTTON", "{0:0.##}");
            this.dother.DataBindings.Add("Text", this.DataSource, "other", "{0:0.##}");
            this.dupdate1.DataBindings.Add("Text", this.DataSource, "update1");
            this.dupdate2.DataBindings.Add("Text", this.DataSource, "update2");
            this.lblWeight.DataBindings.Add("Text", this.DataSource, "WeightHsCode");
        }
       
        private void InitializeComponent()
        {
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell21 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell22 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell23 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell24 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell25 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell26 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable8 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow14 = new DevExpress.XtraReports.UI.XRTableRow();
            this.dmaterialtype = new DevExpress.XtraReports.UI.XRTableCell();
            this.dsuppref = new DevExpress.XtraReports.UI.XRTableCell();
            this.dhscode = new DevExpress.XtraReports.UI.XRTableCell();
            this.dmaterialname = new DevExpress.XtraReports.UI.XRTableCell();
            this.lblWeight = new DevExpress.XtraReports.UI.XRTableCell();
            this.dNYLON = new DevExpress.XtraReports.UI.XRTableCell();
            this.dPOLYESTER = new DevExpress.XtraReports.UI.XRTableCell();
            this.dELASTHAN = new DevExpress.XtraReports.UI.XRTableCell();
            this.dSILK = new DevExpress.XtraReports.UI.XRTableCell();
            this.dCOTTON = new DevExpress.XtraReports.UI.XRTableCell();
            this.dother = new DevExpress.XtraReports.UI.XRTableCell();
            this.dupdate1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.dupdate2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.GroupHeader1 = new DevExpress.XtraReports.UI.GroupHeaderBand();
            this.TopMargin = new DevExpress.XtraReports.UI.TopMarginBand();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable2});
            this.PageHeader.Height = 58;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.Location = new System.Drawing.Point(0, 0);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(1050, 58);
            this.xrTable2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell12,
            this.xrTableCell13,
            this.xrTableCell14,
            this.xrTableCell15,
            this.xrTableCell1,
            this.xrTableCell16,
            this.xrTableCell27,
            this.xrTableCell28});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow3.Size = new System.Drawing.Size(1050, 58);
            this.xrTableRow3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Font = new System.Drawing.Font("Times New Roman", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell12.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell12.Multiline = true;
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(42, 58);
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "Mat\'l\r\nType";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.xrTableCell13.Location = new System.Drawing.Point(42, 0);
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(167, 58);
            this.xrTableCell13.StylePriority.UseTextAlignment = false;
            this.xrTableCell13.Text = "Style Nr.";
            this.xrTableCell13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Location = new System.Drawing.Point(209, 0);
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(99, 58);
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "HS  Code";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 7.5F);
            this.xrTableCell15.Location = new System.Drawing.Point(308, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(84, 58);
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "中文名稱";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.xrTableCell1.Location = new System.Drawing.Point(392, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(58, 58);
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "Weight\r\n(KGS/Unit)";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.xrTableCell16.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.xrTableCell16.Location = new System.Drawing.Point(450, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(450, 58);
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            this.xrTableCell16.Text = "dSize5";
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable3
            // 
            this.xrTable3.Location = new System.Drawing.Point(0, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4,
            this.xrTableRow5});
            this.xrTable3.Size = new System.Drawing.Size(450, 58);
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell17,
            this.xrTableCell18,
            this.xrTableCell19,
            this.xrTableCell20,
            this.xrTableCell21,
            this.xrTableCell2});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(450, 29);
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell17.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell17.Multiline = true;
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(67, 29);
            this.xrTableCell17.StylePriority.UseFont = false;
            this.xrTableCell17.StylePriority.UseTextAlignment = false;
            this.xrTableCell17.Text = "Composition\r\n成份1";
            this.xrTableCell17.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell18.Location = new System.Drawing.Point(67, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(75, 29);
            this.xrTableCell18.StylePriority.UseFont = false;
            this.xrTableCell18.StylePriority.UseTextAlignment = false;
            this.xrTableCell18.Text = "Composition\r\n成份2";
            this.xrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell19.Location = new System.Drawing.Point(142, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(67, 29);
            this.xrTableCell19.StylePriority.UseFont = false;
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "Composition\r\n成分3";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell20.Location = new System.Drawing.Point(209, 0);
            this.xrTableCell20.Multiline = true;
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(74, 29);
            this.xrTableCell20.StylePriority.UseFont = false;
            this.xrTableCell20.StylePriority.UseTextAlignment = false;
            this.xrTableCell20.Text = "Composition\r\n成分4";
            this.xrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell21
            // 
            this.xrTableCell21.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell21.Location = new System.Drawing.Point(283, 0);
            this.xrTableCell21.Multiline = true;
            this.xrTableCell21.Name = "xrTableCell21";
            this.xrTableCell21.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell21.Size = new System.Drawing.Size(75, 29);
            this.xrTableCell21.StylePriority.UseFont = false;
            this.xrTableCell21.StylePriority.UseTextAlignment = false;
            this.xrTableCell21.Text = "Composition\r\n成分5";
            this.xrTableCell21.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Location = new System.Drawing.Point(358, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(92, 29);
            this.xrTableCell2.Text = "Composition            成份6";
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell22,
            this.xrTableCell23,
            this.xrTableCell24,
            this.xrTableCell25,
            this.xrTableCell26,
            this.xrTableCell3});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(450, 29);
            // 
            // xrTableCell22
            // 
            this.xrTableCell22.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell22.Name = "xrTableCell22";
            this.xrTableCell22.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell22.Size = new System.Drawing.Size(67, 29);
            this.xrTableCell22.StylePriority.UseTextAlignment = false;
            this.xrTableCell22.Text = "Nylon";
            this.xrTableCell22.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell23
            // 
            this.xrTableCell23.Location = new System.Drawing.Point(67, 0);
            this.xrTableCell23.Name = "xrTableCell23";
            this.xrTableCell23.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell23.Size = new System.Drawing.Size(75, 29);
            this.xrTableCell23.StylePriority.UseTextAlignment = false;
            this.xrTableCell23.Text = "Polyester";
            this.xrTableCell23.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell24
            // 
            this.xrTableCell24.Location = new System.Drawing.Point(142, 0);
            this.xrTableCell24.Name = "xrTableCell24";
            this.xrTableCell24.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell24.Size = new System.Drawing.Size(67, 29);
            this.xrTableCell24.StylePriority.UseTextAlignment = false;
            this.xrTableCell24.Text = "Elasthan";
            this.xrTableCell24.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell25
            // 
            this.xrTableCell25.Location = new System.Drawing.Point(209, 0);
            this.xrTableCell25.Name = "xrTableCell25";
            this.xrTableCell25.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell25.Size = new System.Drawing.Size(74, 29);
            this.xrTableCell25.StylePriority.UseTextAlignment = false;
            this.xrTableCell25.Text = "Silk";
            this.xrTableCell25.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell26
            // 
            this.xrTableCell26.Location = new System.Drawing.Point(283, 0);
            this.xrTableCell26.Name = "xrTableCell26";
            this.xrTableCell26.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell26.Size = new System.Drawing.Size(75, 29);
            this.xrTableCell26.StylePriority.UseTextAlignment = false;
            this.xrTableCell26.Text = "COTTON";
            this.xrTableCell26.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Location = new System.Drawing.Point(358, 0);
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(92, 29);
            this.xrTableCell3.Text = "Other";
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Font = new System.Drawing.Font("Arial Unicode MS", 7.5F);
            this.xrTableCell27.Location = new System.Drawing.Point(900, 0);
            this.xrTableCell27.Multiline = true;
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(83, 58);
            this.xrTableCell27.StylePriority.UseFont = false;
            this.xrTableCell27.StylePriority.UseTextAlignment = false;
            this.xrTableCell27.Text = "HS code\r\n(修正)";
            this.xrTableCell27.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Font = new System.Drawing.Font("Arial Unicode MS", 7.5F);
            this.xrTableCell28.Location = new System.Drawing.Point(983, 0);
            this.xrTableCell28.Multiline = true;
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(67, 58);
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.StylePriority.UseTextAlignment = false;
            this.xrTableCell28.Text = "中文名稱\r\n(修正)";
            this.xrTableCell28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable8});
            this.Detail.Height = 33;
            this.Detail.Name = "Detail";
            // 
            // xrTable8
            // 
            this.xrTable8.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable8.Location = new System.Drawing.Point(0, 0);
            this.xrTable8.Name = "xrTable8";
            this.xrTable8.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable8.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow14});
            this.xrTable8.Size = new System.Drawing.Size(1050, 33);
            this.xrTable8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow14
            // 
            this.xrTableRow14.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.dmaterialtype,
            this.dsuppref,
            this.dhscode,
            this.dmaterialname,
            this.lblWeight,
            this.dNYLON,
            this.dPOLYESTER,
            this.dELASTHAN,
            this.dSILK,
            this.dCOTTON,
            this.dother,
            this.dupdate1,
            this.dupdate2});
            this.xrTableRow14.Name = "xrTableRow14";
            this.xrTableRow14.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow14.Size = new System.Drawing.Size(1050, 33);
            this.xrTableRow14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // dmaterialtype
            // 
            this.dmaterialtype.Font = new System.Drawing.Font("Times New Roman", 7.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dmaterialtype.Location = new System.Drawing.Point(0, 0);
            this.dmaterialtype.Name = "dmaterialtype";
            this.dmaterialtype.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dmaterialtype.Size = new System.Drawing.Size(42, 33);
            this.dmaterialtype.StylePriority.UseTextAlignment = false;
            this.dmaterialtype.Text = "materialtype";
            this.dmaterialtype.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // dsuppref
            // 
            this.dsuppref.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.dsuppref.Location = new System.Drawing.Point(42, 0);
            this.dsuppref.Name = "dsuppref";
            this.dsuppref.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dsuppref.Size = new System.Drawing.Size(167, 33);
            this.dsuppref.StylePriority.UseTextAlignment = false;
            this.dsuppref.Text = "suppref";
            this.dsuppref.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // dhscode
            // 
            this.dhscode.Location = new System.Drawing.Point(209, 0);
            this.dhscode.Name = "dhscode";
            this.dhscode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dhscode.Size = new System.Drawing.Size(99, 33);
            this.dhscode.StylePriority.UseTextAlignment = false;
            this.dhscode.Text = "hscode";
            this.dhscode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // dmaterialname
            // 
            this.dmaterialname.Font = new System.Drawing.Font("Arial Unicode MS", 7.5F);
            this.dmaterialname.Location = new System.Drawing.Point(308, 0);
            this.dmaterialname.Multiline = true;
            this.dmaterialname.Name = "dmaterialname";
            this.dmaterialname.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dmaterialname.Size = new System.Drawing.Size(84, 33);
            this.dmaterialname.StylePriority.UseFont = false;
            this.dmaterialname.StylePriority.UseTextAlignment = false;
            this.dmaterialname.Text = "materialname";
            this.dmaterialname.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lblWeight
            // 
            this.lblWeight.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.lblWeight.Location = new System.Drawing.Point(392, 0);
            this.lblWeight.Name = "lblWeight";
            this.lblWeight.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lblWeight.Size = new System.Drawing.Size(58, 33);
            this.lblWeight.StylePriority.UseFont = false;
            this.lblWeight.StylePriority.UseTextAlignment = false;
            this.lblWeight.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // dNYLON
            // 
            this.dNYLON.Location = new System.Drawing.Point(450, 0);
            this.dNYLON.Name = "dNYLON";
            this.dNYLON.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dNYLON.Size = new System.Drawing.Size(67, 33);
            this.dNYLON.StylePriority.UseTextAlignment = false;
            this.dNYLON.Text = "NYLON";
            this.dNYLON.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // dPOLYESTER
            // 
            this.dPOLYESTER.Location = new System.Drawing.Point(517, 0);
            this.dPOLYESTER.Name = "dPOLYESTER";
            this.dPOLYESTER.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dPOLYESTER.Size = new System.Drawing.Size(75, 33);
            this.dPOLYESTER.StylePriority.UseTextAlignment = false;
            this.dPOLYESTER.Text = "POLYESTER";
            this.dPOLYESTER.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // dELASTHAN
            // 
            this.dELASTHAN.Location = new System.Drawing.Point(592, 0);
            this.dELASTHAN.Name = "dELASTHAN";
            this.dELASTHAN.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dELASTHAN.Size = new System.Drawing.Size(67, 33);
            this.dELASTHAN.StylePriority.UseTextAlignment = false;
            this.dELASTHAN.Text = "ELASTHAN";
            this.dELASTHAN.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // dSILK
            // 
            this.dSILK.Location = new System.Drawing.Point(659, 0);
            this.dSILK.Name = "dSILK";
            this.dSILK.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dSILK.Size = new System.Drawing.Size(74, 33);
            this.dSILK.StylePriority.UseTextAlignment = false;
            this.dSILK.Text = "SILK";
            this.dSILK.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // dCOTTON
            // 
            this.dCOTTON.Location = new System.Drawing.Point(733, 0);
            this.dCOTTON.Name = "dCOTTON";
            this.dCOTTON.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dCOTTON.Size = new System.Drawing.Size(75, 33);
            this.dCOTTON.StylePriority.UseTextAlignment = false;
            this.dCOTTON.Text = "COTTON";
            this.dCOTTON.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // dother
            // 
            this.dother.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.dother.Location = new System.Drawing.Point(808, 0);
            this.dother.Multiline = true;
            this.dother.Name = "dother";
            this.dother.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dother.Size = new System.Drawing.Size(92, 33);
            this.dother.StylePriority.UseTextAlignment = false;
            this.dother.Text = "other";
            this.dother.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // dupdate1
            // 
            this.dupdate1.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.dupdate1.Location = new System.Drawing.Point(900, 0);
            this.dupdate1.Multiline = true;
            this.dupdate1.Name = "dupdate1";
            this.dupdate1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dupdate1.Size = new System.Drawing.Size(83, 33);
            this.dupdate1.StylePriority.UseTextAlignment = false;
            this.dupdate1.Text = "HS code\r\n(修正)";
            this.dupdate1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // dupdate2
            // 
            this.dupdate2.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.dupdate2.Location = new System.Drawing.Point(983, 0);
            this.dupdate2.Multiline = true;
            this.dupdate2.Name = "dupdate2";
            this.dupdate2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.dupdate2.Size = new System.Drawing.Size(67, 33);
            this.dupdate2.StylePriority.UseTextAlignment = false;
            this.dupdate2.Text = "中文名稱\r\n(修正)";
            this.dupdate2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold);
            this.xrLabel1.Location = new System.Drawing.Point(317, 17);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(342, 25);
            this.xrLabel1.Text = "Material Type with Composition";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // GroupHeader1
            // 
            this.GroupHeader1.Height = 0;
            this.GroupHeader1.Name = "GroupHeader1";
            // 
            // TopMargin
            // 
            this.TopMargin.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel2,
            this.xrPageInfo1,
            this.xrLabel1});
            this.TopMargin.Height = 58;
            this.TopMargin.Name = "TopMargin";
            // 
            // xrLabel2
            // 
            this.xrLabel2.Location = new System.Drawing.Point(917, 17);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(42, 25);
            this.xrLabel2.Text = "Page:";
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Location = new System.Drawing.Point(967, 17);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(83, 25);
            // 
            // MaterialTypeWithCompostion
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.GroupHeader1,
            this.TopMargin});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(50, 50, 58, 50);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable8)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
