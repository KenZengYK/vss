using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
//using System.Data.Sql;
//using System.Data.SqlClient;
using PH.MobileQC.BO;
using System.Windows.Forms;
using System.Collections;
using System.Drawing;

namespace PH.MobileQC.UI
{
    public class rpt_DefectAnalyze_Comp : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell12;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell15;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell16;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTCode;
        private DevExpress.XtraReports.UI.XRTableCell column_CheckTimes;
        private DevExpress.XtraReports.UI.XRTableCell column_Frequency;
        private DevExpress.XtraReports.UI.XRTableCell column_Photo;
        private DevExpress.XtraReports.UI.XRLabel lbl_DataTo;
        private DevExpress.XtraReports.UI.XRLabel xrLabel15;
        private DevExpress.XtraReports.UI.XRLabel lbl_DateForm;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRTableCell column_DefectName;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRLabel xrLabel11;
        private DevExpress.XtraReports.UI.XRLabel xrLabel10;
        private DevExpress.XtraReports.UI.XRLabel lbl_Factory;
        private DevExpress.XtraReports.UI.XRLabel lbl_WorkShop;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell20;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell18;
        private DevExpress.XtraReports.UI.XRTableCell column_Line;
        private DevExpress.XtraReports.UI.XRTableCell column_Project;
        private DevExpress.XtraReports.UI.XRTableCell column_CustStyle;
        private DevExpress.XtraReports.UI.XRPictureBox xrImgUrl;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public rpt_DefectAnalyze_Comp()
        {
            InitializeComponent();
        }

        public rpt_DefectAnalyze_Comp(string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo)
        {
            InitializeComponent();

            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;

            List<DefectAnalyzeResult> dt = SqlDataHelper.GetDefectAnalyze_Comp(Factory, WorkShop, Customer, Style, Project, Line, QC_timeForm, QC_timeTo, langID);
            this.DataSource = dt;

            this.lbl_Factory.Text = Factory;
            this.lbl_WorkShop.Text = WorkShop;

            this.lbl_DateForm.Text = QC_timeForm.ToString("yyyy-MM-dd");
            this.lbl_DataTo.Text = QC_timeTo.ToString("yyyy-MM-dd");



            //this.column_Line.DataBindings.Add("Text", this.DataSource, "Line");
            //this.column_Project.DataBindings.Add("Text", this.DataSource, "Project");
            //this.column_CustStyle.DataBindings.Add("Text", this.DataSource, "Style");
            //this.column_OPTCode.DataBindings.Add("Text", this.DataSource, "OptCode");
            //this.column_OPTName.DataBindings.Add("Text", this.DataSource, "OptName");
            //this.column_CheckTimes.DataBindings.Add("Text", this.DataSource, "CheckTimes");
            this.column_DefectName.DataBindings.Add("Text", this.DataSource, "DefectName");
            this.column_Frequency.DataBindings.Add("Text", this.DataSource, "Frequency");
          //  xrImgUrl.DataBindings.Add("ImageUrl", this.DataSource, "ImgUrl");


            //  C_made.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom);
        }



        private void InitializeComponent()
        {
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrLabel11 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel10 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_Factory = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_WorkShop = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DataTo = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel15 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DateForm = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel13 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell19 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell20 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell18 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.column_Line = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Project = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CustStyle = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_OPTCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CheckTimes = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_DefectName = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Frequency = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Photo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrImgUrl = new DevExpress.XtraReports.UI.XRPictureBox();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel11,
            this.xrLabel10,
            this.lbl_Factory,
            this.lbl_WorkShop,
            this.xrLabel3,
            this.lbl_DataTo,
            this.xrLabel15,
            this.lbl_DateForm,
            this.xrLabel13,
            this.xrTable2,
            this.xrLabel1});
            this.PageHeader.Height = 200;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrLabel11
            // 
            this.xrLabel11.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel11.Location = new System.Drawing.Point(317, 92);
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(125, 25);
            this.xrLabel11.StylePriority.UseFont = false;
            this.xrLabel11.StylePriority.UseTextAlignment = false;
            this.xrLabel11.Text = "Work Shop(車間）";
            this.xrLabel11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel10
            // 
            this.xrLabel10.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel10.Location = new System.Drawing.Point(25, 92);
            this.xrLabel10.Name = "xrLabel10";
            this.xrLabel10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel10.Size = new System.Drawing.Size(117, 26);
            this.xrLabel10.StylePriority.UseFont = false;
            this.xrLabel10.StylePriority.UseTextAlignment = false;
            this.xrLabel10.Text = "Factory(工廠):";
            this.xrLabel10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lbl_Factory
            // 
            this.lbl_Factory.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_Factory.Location = new System.Drawing.Point(150, 92);
            this.lbl_Factory.Name = "lbl_Factory";
            this.lbl_Factory.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_Factory.Size = new System.Drawing.Size(133, 25);
            this.lbl_Factory.StylePriority.UseFont = false;
            this.lbl_Factory.StylePriority.UseTextAlignment = false;
            this.lbl_Factory.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbl_WorkShop
            // 
            this.lbl_WorkShop.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_WorkShop.Location = new System.Drawing.Point(450, 92);
            this.lbl_WorkShop.Name = "lbl_WorkShop";
            this.lbl_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_WorkShop.Size = new System.Drawing.Size(167, 25);
            this.lbl_WorkShop.StylePriority.UseFont = false;
            this.lbl_WorkShop.StylePriority.UseTextAlignment = false;
            this.lbl_WorkShop.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel3.Location = new System.Drawing.Point(8, 42);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(1092, 33);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.Text = "Mobile QA組件審定報告---瑕疵分析";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // lbl_DataTo
            // 
            this.lbl_DataTo.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_DataTo.Location = new System.Drawing.Point(967, 92);
            this.lbl_DataTo.Name = "lbl_DataTo";
            this.lbl_DataTo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DataTo.Size = new System.Drawing.Size(102, 25);
            this.lbl_DataTo.StylePriority.UseFont = false;
            this.lbl_DataTo.StylePriority.UseTextAlignment = false;
            this.lbl_DataTo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel15
            // 
            this.xrLabel15.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel15.Location = new System.Drawing.Point(933, 92);
            this.xrLabel15.Name = "xrLabel15";
            this.xrLabel15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel15.Size = new System.Drawing.Size(26, 25);
            this.xrLabel15.StylePriority.UseFont = false;
            this.xrLabel15.StylePriority.UseTextAlignment = false;
            this.xrLabel15.Text = "To";
            this.xrLabel15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lbl_DateForm
            // 
            this.lbl_DateForm.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_DateForm.Location = new System.Drawing.Point(825, 92);
            this.lbl_DateForm.Name = "lbl_DateForm";
            this.lbl_DateForm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DateForm.Size = new System.Drawing.Size(100, 25);
            this.lbl_DateForm.StylePriority.UseFont = false;
            this.lbl_DateForm.StylePriority.UseTextAlignment = false;
            this.lbl_DateForm.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel13.Location = new System.Drawing.Point(642, 92);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(167, 25);
            this.xrLabel13.StylePriority.UseFont = false;
            this.xrLabel13.StylePriority.UseTextAlignment = false;
            this.xrLabel13.Text = "Time Period(時間段): From";
            this.xrLabel13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.Location = new System.Drawing.Point(1, 125);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(1124, 75);
            this.xrTable2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell19,
            this.xrTableCell20,
            this.xrTableCell18,
            this.xrTableCell12,
            this.xrTableCell14,
            this.xrTableCell15,
            this.xrTableCell1,
            this.xrTableCell16});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow3.Size = new System.Drawing.Size(1124, 75);
            this.xrTableRow3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell19.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(48, 75);
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "Line\r\n組裝線";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell20.Location = new System.Drawing.Point(48, 0);
            this.xrTableCell20.Multiline = true;
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(101, 75);
            this.xrTableCell20.StylePriority.UseTextAlignment = false;
            this.xrTableCell20.Text = "Project\r\n工程號";
            this.xrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell18
            // 
            this.xrTableCell18.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell18.Location = new System.Drawing.Point(149, 0);
            this.xrTableCell18.Multiline = true;
            this.xrTableCell18.Name = "xrTableCell18";
            this.xrTableCell18.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell18.Size = new System.Drawing.Size(150, 75);
            this.xrTableCell18.StylePriority.UseTextAlignment = false;
            this.xrTableCell18.Text = "Cust Style\r\n客款號";
            this.xrTableCell18.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell12.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell12.Location = new System.Drawing.Point(299, 0);
            this.xrTableCell12.Multiline = true;
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(233, 75);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.StylePriority.UseFont = false;
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "Component\r\n組件";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell14.Location = new System.Drawing.Point(532, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(83, 75);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "\r\nAudit Times\r\n審定次數\r\n";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell15.Location = new System.Drawing.Point(615, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(192, 75);
            this.xrTableCell15.StylePriority.UseBorders = false;
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "Defect Name\r\n疵點名稱\r\n";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrTableCell1.Location = new System.Drawing.Point(807, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(75, 75);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "Frequency\r\n出現頻率";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Font = new System.Drawing.Font("Arial Unicode MS", 8.25F, System.Drawing.FontStyle.Bold);
            this.xrTableCell16.Location = new System.Drawing.Point(882, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(242, 75);
            this.xrTableCell16.StylePriority.UseFont = false;
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            this.xrTableCell16.Text = "Photoes\r\n圖片";
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(8, 8);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(1092, 33);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.Text = "Mobile QA Component Check Report-Basis on Defect";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.Detail.Height = 146;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // xrTable3
            // 
            this.xrTable3.Location = new System.Drawing.Point(1, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTable3.Size = new System.Drawing.Size(1124, 142);
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.column_Line,
            this.column_Project,
            this.column_CustStyle,
            this.column_OPTCode,
            this.column_CheckTimes,
            this.column_DefectName,
            this.column_Frequency,
            this.column_Photo});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(1124, 142);
            // 
            // column_Line
            // 
            this.column_Line.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Line.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_Line.Location = new System.Drawing.Point(0, 0);
            this.column_Line.Name = "column_Line";
            this.column_Line.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Line.Size = new System.Drawing.Size(48, 142);
            this.column_Line.StylePriority.UseBorders = false;
            this.column_Line.StylePriority.UseTextAlignment = false;
            this.column_Line.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_Project
            // 
            this.column_Project.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Project.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_Project.Location = new System.Drawing.Point(48, 0);
            this.column_Project.Name = "column_Project";
            this.column_Project.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Project.Size = new System.Drawing.Size(101, 142);
            this.column_Project.StylePriority.UseBorders = false;
            this.column_Project.StylePriority.UseTextAlignment = false;
            this.column_Project.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_CustStyle
            // 
            this.column_CustStyle.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CustStyle.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_CustStyle.Location = new System.Drawing.Point(149, 0);
            this.column_CustStyle.Name = "column_CustStyle";
            this.column_CustStyle.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CustStyle.Size = new System.Drawing.Size(150, 142);
            this.column_CustStyle.StylePriority.UseBorders = false;
            this.column_CustStyle.StylePriority.UseTextAlignment = false;
            this.column_CustStyle.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_OPTCode
            // 
            this.column_OPTCode.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTCode.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_OPTCode.Location = new System.Drawing.Point(299, 0);
            this.column_OPTCode.Name = "column_OPTCode";
            this.column_OPTCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTCode.Size = new System.Drawing.Size(233, 142);
            this.column_OPTCode.StylePriority.UseBorders = false;
            this.column_OPTCode.StylePriority.UseFont = false;
            this.column_OPTCode.StylePriority.UseTextAlignment = false;
            this.column_OPTCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_CheckTimes
            // 
            this.column_CheckTimes.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CheckTimes.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_CheckTimes.Location = new System.Drawing.Point(532, 0);
            this.column_CheckTimes.Name = "column_CheckTimes";
            this.column_CheckTimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CheckTimes.Size = new System.Drawing.Size(83, 142);
            this.column_CheckTimes.StylePriority.UseBorders = false;
            this.column_CheckTimes.StylePriority.UseFont = false;
            this.column_CheckTimes.StylePriority.UseTextAlignment = false;
            this.column_CheckTimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_DefectName
            // 
            this.column_DefectName.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_DefectName.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_DefectName.Location = new System.Drawing.Point(615, 0);
            this.column_DefectName.Name = "column_DefectName";
            this.column_DefectName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_DefectName.Size = new System.Drawing.Size(192, 142);
            this.column_DefectName.StylePriority.UseBorders = false;
            this.column_DefectName.StylePriority.UseFont = false;
            this.column_DefectName.StylePriority.UseTextAlignment = false;
            this.column_DefectName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_Frequency
            // 
            this.column_Frequency.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Frequency.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_Frequency.Location = new System.Drawing.Point(807, 0);
            this.column_Frequency.Name = "column_Frequency";
            this.column_Frequency.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Frequency.Size = new System.Drawing.Size(75, 142);
            this.column_Frequency.StylePriority.UseBorders = false;
            this.column_Frequency.StylePriority.UseFont = false;
            this.column_Frequency.StylePriority.UseTextAlignment = false;
            this.column_Frequency.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_Photo
            // 
            this.column_Photo.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Photo.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrImgUrl});
            this.column_Photo.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
            this.column_Photo.Location = new System.Drawing.Point(882, 0);
            this.column_Photo.Name = "column_Photo";
            this.column_Photo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Photo.Size = new System.Drawing.Size(242, 142);
            this.column_Photo.StylePriority.UseBorders = false;
            this.column_Photo.StylePriority.UseFont = false;
            this.column_Photo.StylePriority.UseTextAlignment = false;
            this.column_Photo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrImgUrl
            // 
            this.xrImgUrl.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrImgUrl.Location = new System.Drawing.Point(9, 0);
            this.xrImgUrl.Name = "xrImgUrl";
            this.xrImgUrl.Size = new System.Drawing.Size(225, 135);
            this.xrImgUrl.Sizing = DevExpress.XtraPrinting.ImageSizeMode.StretchImage;
            this.xrImgUrl.StylePriority.UseBorders = false;
            // 
            // rpt_DefectAnalyze_Comp
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(21, 20, 18, 20);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }

        private int _SumCheckQty = 0;
        private void columnF_CheckQty_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            foreach(object obj in e.CalculatedValues)
            {
                if (!(obj is DBNull))
                {
                    _SumCheckQty += Convert.ToInt32(obj);
                }
            }
        }

        private int _SumP = 0;
        private void columnF_P_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            foreach (object obj in e.CalculatedValues)
            {
                if (!(obj is DBNull))
                {
                    _SumP += Convert.ToInt32(obj);
                }
            }
        }

        private void columnF_FPY_SummaryGetResult(object sender, DevExpress.XtraReports.UI.SummaryGetResultEventArgs e)
        {
            if (_SumCheckQty != 0)
            {
                e.Result = Math.Round(Convert.ToDouble(_SumP) / _SumCheckQty * 100, 2);
                e.Handled = true;
            }
        }


        string _line = "", _project = "", _style = "", _optcode = "";
        int i = 0, _frequency = 0;

 
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            DefectAnalyzeResult gbs = this.GetCurrentRow() as DefectAnalyzeResult;
            if (gbs == null) return;

            int _chktimes = gbs.CheckTimes; //當前同一project,line,style,optcode審定次數

            if (string.IsNullOrEmpty(gbs.ImgUrl))
            {
                Detail.Height = 35;
                xrImgUrl.Height = 35;
            }
            else
            {
                Detail.Height = 142;
                xrImgUrl.Height = 142;
            }

            if (gbs.Line == _line && gbs.Project == _project && gbs.Style == _style && gbs.OptCode == _optcode)
            {
                if (i == 0)
                {
                    this.column_Line.Text = gbs.Line;
                    column_Project.Text = gbs.Project;
                    column_CustStyle.Text = gbs.Style;
                    column_OPTCode.Text = gbs.OptCode;
                  //  column_OPTName.Text = gbs.OptName;
                    column_CheckTimes.Text = gbs.CheckTimes.ToString();
                }
                else
                {

                    column_Line.Text = ""; column_Project.Text = "";
                    column_CustStyle.Text = ""; column_OPTCode.Text = "";
                  //  column_OPTName.Text = ""; column_CheckTimes.Text = "";
                }

                _frequency = _frequency + gbs.Frequency;

                

                if (_chktimes == _frequency)
                {
                    column_Line.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                    column_Project.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                    column_CustStyle.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right| DevExpress.XtraPrinting.BorderSide.Bottom);
                    column_OPTCode.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                  //  column_OPTName.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                    this.column_CheckTimes.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                    _frequency = 0;

                }
                else
                {
                    column_Line.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    column_Project.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right);
                    column_CustStyle.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right);
                    column_OPTCode.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right);
                   // column_OPTName.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right);
                    this.column_CheckTimes.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right);
                }


            }
            else
            {
                _frequency = 0;

                _frequency = gbs.Frequency;
                this.column_Line.Text = gbs.Line;
                column_Project.Text = gbs.Project;
                column_CustStyle.Text = gbs.Style;
                column_OPTCode.Text = gbs.OptCode;
             //   column_OPTName.Text = gbs.OptName;
                column_CheckTimes.Text = gbs.CheckTimes.ToString();


                if (_chktimes == _frequency)
                {

                    column_Line.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.All);
                    column_Project.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom);
                    column_CustStyle.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom);
                    column_OPTCode.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom);
                  //  column_OPTName.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom);
                    this.column_CheckTimes.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom);
                }
                else
                {

                    column_Line.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    column_Project.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top);
                    column_CustStyle.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top);
                    column_OPTCode.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top);
                  //  column_OPTName.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Top);
                    this.column_CheckTimes.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top);
                }
            }

            if (!string.IsNullOrEmpty(gbs.ImgUrl))
              this.xrImgUrl.Image = GetMicroImage(gbs.ImgUrl, 225, 135);

            _line = gbs.Line; _project = gbs.Project; _style = gbs.Style; _optcode = gbs.OptCode;
            i++;



        }




        /// <summary>  
        /// 高质量缩放图片  
        /// </summary>  
        /// <param name="OriginFilePath">源图的路径</param>  
        /// <param name="TargetFilePath">存储缩略图的路径</param>  
        /// <param name="DestWidth">缩放后图片宽度</param>  
        /// <param name="DestHeight">缩放后图片高度</param>  
        /// <returns>表明此次操作是否成功</returns>  
        private Image GetMicroImage(string url, int DestWidth, int DestHeight)
        {
            //Image OriginImage = Image.FromFile(OriginFilePath);
            if (string.IsNullOrEmpty(url))
                return null;
            Image img = null;

           

            
            try
            {
                Image OriginImage = Image.FromStream(System.Net.WebRequest.Create(url).GetResponse().GetResponseStream());

                if (OriginImage == null)
                    return null;

                System.Drawing.Imaging.ImageFormat thisFormat = OriginImage.RawFormat;
                //按比例缩放  
                int sW = 0, sH = 0;
                int ImageWidth = OriginImage.Width;
                int ImageHeight = OriginImage.Height;

                if (ImageWidth > DestWidth || ImageHeight > DestHeight)
                {
                    if ((ImageWidth * DestWidth) > (ImageHeight * DestHeight))
                    {
                        sW = DestWidth;
                        sH = (DestHeight * ImageHeight) / ImageWidth;
                    }
                    else
                    {
                        sH = DestHeight;
                        sW = (DestWidth * ImageWidth) / ImageHeight;
                    }
                }
                else
                {
                    sW = ImageWidth;
                    sH = ImageHeight;
                }

               // Bitmap bt = new Bitmap(DestWidth, DestHeight); //根据指定大小创建Bitmap实例

                Bitmap bt = new Bitmap(OriginImage, DestWidth, DestHeight);

                img = bt;







                OriginImage.Dispose();



            }
            catch
            {

            }
            



            /* mehtod 2:
            try
            {


                using (Image sourceImage = Image.FromStream(System.Net.WebRequest.Create(url).GetResponse().GetResponseStream()))

                //原图加载
               // using (System.Drawing.Image sourceImage = System.Drawing.Image.FromFile(System.Web.HttpContext.Current.Server.MapPath(sSavePath + sFilename)))
                {
                    //原图宽度和高度
                    int width = sourceImage.Width;
                    int height = sourceImage.Height;
                    int smallWidth;
                    int smallHeight;
                    //获取第一张绘制图的大小,(比较 原图的宽/缩略图的宽  和 原图的高/缩略图的高)
                    if (((decimal)width) / height <= ((decimal)DestWidth) / DestHeight)
                    {
                        smallWidth = DestWidth;
                        smallHeight = DestWidth * height / width;
                    }
                    else
                    {
                        smallWidth = DestHeight * width / height;
                        smallHeight = DestHeight;
                    }
                    //判断缩略图在当前文件夹下是否同名称文件存在
                    //file_append = 0;
                    //sThumbFile = sThumbExtension + System.IO.Path.GetFileNameWithoutExtension(myFile.FileName) + extendName;
                    //while (System.IO.File.Exists(System.Web.HttpContext.Current.Server.MapPath(sSavePath + sThumbFile)))
                    //{
                    //    file_append++;
                    //    sThumbFile = sThumbExtension + System.IO.Path.GetFileNameWithoutExtension(myFile.FileName) +
                    //        file_append.ToString() + extendName;
                    //}
                    //缩略图保存的绝对路径
                    //string smallImagePath = System.Web.HttpContext.Current.Server.MapPath(sSavePath) + sThumbFile;
                    //新建一个图板,以最小等比例压缩大小绘制原图
                    using (System.Drawing.Image bitmap = new System.Drawing.Bitmap(smallWidth, smallHeight))
                    {
                        //绘制中间图
                        using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(bitmap))
                        {
                            //高清,平滑
                            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
                            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                            g.Clear(Color.Black);
                            g.DrawImage(
                            sourceImage,
                            new System.Drawing.Rectangle(0, 0, smallWidth, smallHeight),
                            new System.Drawing.Rectangle(0, 0, width, height),
                            System.Drawing.GraphicsUnit.Pixel
                            );
                        }
                        //新建一个图板,以缩略图大小绘制中间图
                        img = new System.Drawing.Bitmap(DestWidth, DestHeight);
                        
                        //绘制缩略图
                        using (System.Drawing.Graphics g = System.Drawing.Graphics.FromImage(img))
                        {
                            //高清,平滑
                            g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.High;
                            g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                            g.Clear(Color.Black);
                            int lwidth = (smallWidth - DestWidth) / 2;
                            int bheight = (smallHeight - DestHeight) / 2;
                            g.DrawImage(img, new Rectangle(0, 0, DestWidth, DestHeight), lwidth, bheight, DestWidth, DestHeight, GraphicsUnit.Pixel);
                            g.Dispose();
                            
                            //bitmap1.Save(smallImagePath, System.Drawing.Imaging.ImageFormat.Jpeg);

                        }

                           
                        
                    }
                }
            }
            catch
            {
            }

            */
           return img;
            
          

        } 


    }
}
