using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI
{
    public class rptQC_MasterAnalyzeWF : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel lbl_Line;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell12;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell13;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell15;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell16;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell10;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell11;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell27;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell28;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell29;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow4;
        private DevExpress.XtraReports.UI.XRTableCell column_WFID;
        private DevExpress.XtraReports.UI.XRTableCell column_WFName;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTCode;
        private DevExpress.XtraReports.UI.XRTableCell column_OPTName;
        private DevExpress.XtraReports.UI.XRTableCell column_CheckQty;
        private DevExpress.XtraReports.UI.XRTableCell column_F;
        private DevExpress.XtraReports.UI.XRTableCell column_U;
        private DevExpress.XtraReports.UI.XRTableCell column_S;
        private DevExpress.XtraReports.UI.XRTableCell column_EV;
        private DevExpress.XtraReports.UI.XRTableCell column_WS;
        private DevExpress.XtraReports.UI.XRTableCell column_Other;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell2;
        private DevExpress.XtraReports.UI.XRLabel lbl_Style;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRLabel lbl_Project;
        private DevExpress.XtraReports.UI.XRLabel lbl_DataTo;
        private DevExpress.XtraReports.UI.XRLabel xrLabel15;
        private DevExpress.XtraReports.UI.XRLabel lbl_DateForm;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRTableCell column_P;
        private DevExpress.XtraReports.UI.XRTableCell column_CP;
        private DevExpress.XtraReports.UI.XRTableCell column_MA;
        private DevExpress.XtraReports.UI.XRLabel xrLabel12;
        private DevExpress.XtraReports.UI.XRLabel lbl_QNNo;
        private DevExpress.XtraReports.UI.XRTable xrTable4;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow6;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell8;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow5;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell6;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell7;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell9;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell17;
        private DevExpress.XtraReports.UI.XRTableCell column_FPY;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateText;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateName;
        private DevExpress.XtraReports.UI.XRLabel xrVerText;
        private DevExpress.XtraReports.UI.XRLabel xrVerName;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public rptQC_MasterAnalyzeWF()
        {
            InitializeComponent();
        }

        public rptQC_MasterAnalyzeWF(string Line, string Project, string Style, string WO, string WOc, string QNNo, DateTime QC_timeForm, DateTime QC_timeTo, int QNQty)
        {
            InitializeComponent();

            string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;

            System.Data.DataTable dt = SqlDataHelper.EXECSP_QC_MasterAnalyzeDT(Line, Project, Style, QNNo, QC_timeForm, QC_timeTo, langID);
            this.DataSource = dt;

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;


            this.lbl_Line.Text = Line;
            this.lbl_Project.Text = Project;
            this.lbl_Style.Text = Style;
            this.lbl_QNNo.Text = QNQty.ToString(); //QNNo;
            this.lbl_DateForm.Text = QC_timeForm.ToString("yyyy-MM-dd");
            this.lbl_DataTo.Text = QC_timeTo.ToString("yyyy-MM-dd");


            this.column_WFID.DataBindings.Add("Text", this.DataSource, "WFID");
            this.column_WFName.DataBindings.Add("Text", this.DataSource, "WFHame");
            this.column_OPTCode.DataBindings.Add("Text", this.DataSource, "OPTCode");
            this.column_OPTName.DataBindings.Add("Text", this.DataSource, "OPTName");
            this.column_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            this.column_P.DataBindings.Add("Text", this.DataSource, "P", "{0:0.#}");
            this.column_F.DataBindings.Add("Text", this.DataSource, "F", "{0:0.#}");
            this.column_U.DataBindings.Add("Text", this.DataSource, "U", "{0:0.#}");
            this.column_S.DataBindings.Add("Text", this.DataSource, "S", "{0:0.#}");
            this.column_CP.DataBindings.Add("Text", this.DataSource, "CP", "{0:0.#}");
            this.column_EV.DataBindings.Add("Text", this.DataSource, "EV", "{0:0.#}");
            this.column_MA.DataBindings.Add("Text", this.DataSource, "MA", "{0:0.#}");
            this.column_WS.DataBindings.Add("Text", this.DataSource, "WS", "{0:0.#}");
            this.column_Other.DataBindings.Add("Text", this.DataSource, "Other");
            this.column_FPY.DataBindings.Add("Text", this.DataSource, "FPY");
        }

       
        private void InitializeComponent()
        {
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPublishedDateText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPublishedDateName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel3 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel12 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_QNNo = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DataTo = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel15 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_DateForm = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel13 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_Style = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.lbl_Project = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable2 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow3 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell12 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell13 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell15 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell5 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell2 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable4 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow6 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell8 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow5 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell6 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell7 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell9 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell16 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell4 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell10 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell11 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell27 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell28 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell17 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell29 = new DevExpress.XtraReports.UI.XRTableCell();
            this.lbl_Line = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow4 = new DevExpress.XtraReports.UI.XRTableRow();
            this.column_WFID = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_WFName = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_OPTCode = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_OPTName = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CheckQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_P = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_F = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_U = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_S = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_FPY = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_CP = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_EV = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_MA = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_WS = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_Other = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPublishedDateText,
            this.xrPublishedDateName,
            this.xrVerText,
            this.xrVerName,
            this.xrLabel3,
            this.xrLabel12,
            this.lbl_QNNo,
            this.lbl_DataTo,
            this.xrLabel15,
            this.lbl_DateForm,
            this.xrLabel13,
            this.lbl_Style,
            this.xrLabel5,
            this.xrLabel4,
            this.lbl_Project,
            this.xrLabel2,
            this.xrTable2,
            this.lbl_Line,
            this.xrLabel1});
            this.PageHeader.Height = 208;
            this.PageHeader.Name = "PageHeader";
            // 
            // xrPublishedDateText
            // 
            this.xrPublishedDateText.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPublishedDateText.Location = new System.Drawing.Point(1025, 58);
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
            this.xrPublishedDateName.Location = new System.Drawing.Point(950, 58);
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
            this.xrVerText.Location = new System.Drawing.Point(925, 58);
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
            this.xrVerName.Location = new System.Drawing.Point(892, 58);
            this.xrVerName.Name = "xrVerName";
            this.xrVerName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrVerName.Size = new System.Drawing.Size(33, 16);
            this.xrVerName.StylePriority.UseFont = false;
            this.xrVerName.StylePriority.UseTextAlignment = false;
            this.xrVerName.Text = "Ver :";
            this.xrVerName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel3.Location = new System.Drawing.Point(8, 50);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(1092, 33);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.Text = "各工序之移動審查成績報告 - 按勞動員工分析 ";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrLabel12
            // 
            this.xrLabel12.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel12.Location = new System.Drawing.Point(617, 92);
            this.xrLabel12.Name = "xrLabel12";
            this.xrLabel12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel12.Size = new System.Drawing.Size(133, 25);
            this.xrLabel12.StylePriority.UseFont = false;
            this.xrLabel12.StylePriority.UseTextAlignment = false;
            this.xrLabel12.Text = "LWO Qty(LWO數):";
            this.xrLabel12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lbl_QNNo
            // 
            this.lbl_QNNo.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_QNNo.Location = new System.Drawing.Point(758, 92);
            this.lbl_QNNo.Name = "lbl_QNNo";
            this.lbl_QNNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_QNNo.Size = new System.Drawing.Size(325, 25);
            this.lbl_QNNo.StylePriority.UseFont = false;
            this.lbl_QNNo.StylePriority.UseTextAlignment = false;
            this.lbl_QNNo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbl_DataTo
            // 
            this.lbl_DataTo.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_DataTo.Location = new System.Drawing.Point(998, 125);
            this.lbl_DataTo.Name = "lbl_DataTo";
            this.lbl_DataTo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DataTo.Size = new System.Drawing.Size(85, 17);
            this.lbl_DataTo.StylePriority.UseFont = false;
            this.lbl_DataTo.StylePriority.UseTextAlignment = false;
            this.lbl_DataTo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel15
            // 
            this.xrLabel15.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel15.Location = new System.Drawing.Point(958, 125);
            this.xrLabel15.Name = "xrLabel15";
            this.xrLabel15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel15.Size = new System.Drawing.Size(26, 17);
            this.xrLabel15.StylePriority.UseFont = false;
            this.xrLabel15.Text = "To";
            this.xrLabel15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // lbl_DateForm
            // 
            this.lbl_DateForm.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_DateForm.Location = new System.Drawing.Point(833, 125);
            this.lbl_DateForm.Name = "lbl_DateForm";
            this.lbl_DateForm.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_DateForm.Size = new System.Drawing.Size(85, 17);
            this.lbl_DateForm.StylePriority.UseFont = false;
            this.lbl_DateForm.StylePriority.UseTextAlignment = false;
            this.lbl_DateForm.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel13
            // 
            this.xrLabel13.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel13.Location = new System.Drawing.Point(625, 125);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(200, 25);
            this.xrLabel13.StylePriority.UseFont = false;
            this.xrLabel13.StylePriority.UseTextAlignment = false;
            this.xrLabel13.Text = "Time Period(時間段):  From";
            this.xrLabel13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lbl_Style
            // 
            this.lbl_Style.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Style.Location = new System.Drawing.Point(375, 97);
            this.lbl_Style.Name = "lbl_Style";
            this.lbl_Style.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_Style.Size = new System.Drawing.Size(228, 25);
            this.lbl_Style.StylePriority.UseFont = false;
            this.lbl_Style.StylePriority.UseTextAlignment = false;
            this.lbl_Style.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel5
            // 
            this.xrLabel5.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel5.Location = new System.Drawing.Point(275, 97);
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(92, 25);
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.StylePriority.UseTextAlignment = false;
            this.xrLabel5.Text = "Style(客款號):";
            this.xrLabel5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel4
            // 
            this.xrLabel4.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel4.Location = new System.Drawing.Point(17, 120);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(108, 25);
            this.xrLabel4.StylePriority.UseFont = false;
            this.xrLabel4.StylePriority.UseTextAlignment = false;
            this.xrLabel4.Text = "Project(工程號):";
            this.xrLabel4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // lbl_Project
            // 
            this.lbl_Project.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Project.Location = new System.Drawing.Point(136, 125);
            this.lbl_Project.Name = "lbl_Project";
            this.lbl_Project.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_Project.Size = new System.Drawing.Size(464, 17);
            this.lbl_Project.StylePriority.UseFont = false;
            this.lbl_Project.StylePriority.UseTextAlignment = false;
            this.lbl_Project.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel2.Location = new System.Drawing.Point(17, 96);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(108, 20);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.StylePriority.UseTextAlignment = false;
            this.xrLabel2.Text = "Line(組裝線):";
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTable2
            // 
            this.xrTable2.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable2.Location = new System.Drawing.Point(8, 150);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(1083, 58);
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
            this.xrTableCell5,
            this.xrTableCell2,
            this.xrTableCell9,
            this.xrTableCell16});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow3.Size = new System.Drawing.Size(1083, 58);
            this.xrTableRow3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell12
            // 
            this.xrTableCell12.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell12.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell12.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell12.Multiline = true;
            this.xrTableCell12.Name = "xrTableCell12";
            this.xrTableCell12.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell12.Size = new System.Drawing.Size(75, 58);
            this.xrTableCell12.StylePriority.UseBorders = false;
            this.xrTableCell12.StylePriority.UseFont = false;
            this.xrTableCell12.StylePriority.UseTextAlignment = false;
            this.xrTableCell12.Text = "WFID\r\n勞動者ID";
            this.xrTableCell12.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell13
            // 
            this.xrTableCell13.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell13.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell13.Location = new System.Drawing.Point(75, 0);
            this.xrTableCell13.Multiline = true;
            this.xrTableCell13.Name = "xrTableCell13";
            this.xrTableCell13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell13.Size = new System.Drawing.Size(83, 58);
            this.xrTableCell13.StylePriority.UseBorders = false;
            this.xrTableCell13.StylePriority.UseFont = false;
            this.xrTableCell13.StylePriority.UseTextAlignment = false;
            this.xrTableCell13.Text = "WF Name\r\n勞動者名稱";
            this.xrTableCell13.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell14.Location = new System.Drawing.Point(158, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(93, 58);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "OPT Code\r\n工序代號";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell15
            // 
            this.xrTableCell15.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell15.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell15.Location = new System.Drawing.Point(251, 0);
            this.xrTableCell15.Multiline = true;
            this.xrTableCell15.Name = "xrTableCell15";
            this.xrTableCell15.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell15.Size = new System.Drawing.Size(233, 58);
            this.xrTableCell15.StylePriority.UseBorders = false;
            this.xrTableCell15.StylePriority.UseFont = false;
            this.xrTableCell15.StylePriority.UseTextAlignment = false;
            this.xrTableCell15.Text = "OPT Name\r\n工序名稱";
            this.xrTableCell15.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell1
            // 
            this.xrTableCell1.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell1.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell1.Location = new System.Drawing.Point(484, 0);
            this.xrTableCell1.Multiline = true;
            this.xrTableCell1.Name = "xrTableCell1";
            this.xrTableCell1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell1.Size = new System.Drawing.Size(58, 58);
            this.xrTableCell1.StylePriority.UseBorders = false;
            this.xrTableCell1.StylePriority.UseFont = false;
            this.xrTableCell1.StylePriority.UseTextAlignment = false;
            this.xrTableCell1.Text = "Check Qty審定數量";
            this.xrTableCell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell5
            // 
            this.xrTableCell5.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell5.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell5.Location = new System.Drawing.Point(542, 0);
            this.xrTableCell5.Multiline = true;
            this.xrTableCell5.Name = "xrTableCell5";
            this.xrTableCell5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell5.Size = new System.Drawing.Size(50, 58);
            this.xrTableCell5.StylePriority.UseBorders = false;
            this.xrTableCell5.StylePriority.UseFont = false;
            this.xrTableCell5.StylePriority.UseTextAlignment = false;
            this.xrTableCell5.Text = "Pass Qty\r\n合格數";
            this.xrTableCell5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell2
            // 
            this.xrTableCell2.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell2.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable4});
            this.xrTableCell2.Font = new System.Drawing.Font("Times New Roman", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell2.Location = new System.Drawing.Point(592, 0);
            this.xrTableCell2.Name = "xrTableCell2";
            this.xrTableCell2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell2.Size = new System.Drawing.Size(142, 58);
            this.xrTableCell2.StylePriority.UseBorders = false;
            this.xrTableCell2.StylePriority.UseTextAlignment = false;
            this.xrTableCell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable4
            // 
            this.xrTable4.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTable4.Location = new System.Drawing.Point(0, 0);
            this.xrTable4.Name = "xrTable4";
            this.xrTable4.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow6,
            this.xrTableRow5});
            this.xrTable4.Size = new System.Drawing.Size(145, 66);
            this.xrTable4.StylePriority.UseBorders = false;
            // 
            // xrTableRow6
            // 
            this.xrTableRow6.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell8});
            this.xrTableRow6.Name = "xrTableRow6";
            this.xrTableRow6.Size = new System.Drawing.Size(145, 29);
            // 
            // xrTableCell8
            // 
            this.xrTableCell8.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell8.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell8.Name = "xrTableCell8";
            this.xrTableCell8.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell8.Size = new System.Drawing.Size(145, 29);
            this.xrTableCell8.StylePriority.UseFont = false;
            this.xrTableCell8.StylePriority.UseTextAlignment = false;
            this.xrTableCell8.Text = "Defect Qty 次品數";
            this.xrTableCell8.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow5
            // 
            this.xrTableRow5.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell3,
            this.xrTableCell6,
            this.xrTableCell7});
            this.xrTableRow5.Name = "xrTableRow5";
            this.xrTableRow5.Size = new System.Drawing.Size(145, 37);
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell3.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(47, 37);
            this.xrTableCell3.StylePriority.UseFont = false;
            this.xrTableCell3.StylePriority.UseTextAlignment = false;
            this.xrTableCell3.Text = "F";
            this.xrTableCell3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell6
            // 
            this.xrTableCell6.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell6.Location = new System.Drawing.Point(47, 0);
            this.xrTableCell6.Multiline = true;
            this.xrTableCell6.Name = "xrTableCell6";
            this.xrTableCell6.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell6.Size = new System.Drawing.Size(47, 37);
            this.xrTableCell6.StylePriority.UseFont = false;
            this.xrTableCell6.StylePriority.UseTextAlignment = false;
            this.xrTableCell6.Text = "U";
            this.xrTableCell6.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell7
            // 
            this.xrTableCell7.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell7.Location = new System.Drawing.Point(94, 0);
            this.xrTableCell7.Multiline = true;
            this.xrTableCell7.Name = "xrTableCell7";
            this.xrTableCell7.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell7.Size = new System.Drawing.Size(51, 37);
            this.xrTableCell7.StylePriority.UseFont = false;
            this.xrTableCell7.StylePriority.UseTextAlignment = false;
            this.xrTableCell7.Text = "S";
            this.xrTableCell7.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell9
            // 
            this.xrTableCell9.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell9.Location = new System.Drawing.Point(734, 0);
            this.xrTableCell9.Multiline = true;
            this.xrTableCell9.Name = "xrTableCell9";
            this.xrTableCell9.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell9.Size = new System.Drawing.Size(50, 58);
            this.xrTableCell9.StylePriority.UseFont = false;
            this.xrTableCell9.StylePriority.UseTextAlignment = false;
            this.xrTableCell9.Text = "FPY\r\n直通率\r\n(%)";
            this.xrTableCell9.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell16
            // 
            this.xrTableCell16.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable1});
            this.xrTableCell16.Font = new System.Drawing.Font("Times New Roman", 7.5F);
            this.xrTableCell16.Location = new System.Drawing.Point(784, 0);
            this.xrTableCell16.Multiline = true;
            this.xrTableCell16.Name = "xrTableCell16";
            this.xrTableCell16.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell16.Size = new System.Drawing.Size(299, 58);
            this.xrTableCell16.StylePriority.UseTextAlignment = false;
            this.xrTableCell16.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(0, 0);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1,
            this.xrTableRow2});
            this.xrTable1.Size = new System.Drawing.Size(343, 61);
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell4});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(343, 30);
            // 
            // xrTableCell4
            // 
            this.xrTableCell4.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell4.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell4.Multiline = true;
            this.xrTableCell4.Name = "xrTableCell4";
            this.xrTableCell4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell4.Size = new System.Drawing.Size(343, 30);
            this.xrTableCell4.StylePriority.UseFont = false;
            this.xrTableCell4.StylePriority.UseTextAlignment = false;
            this.xrTableCell4.Text = "Remark";
            this.xrTableCell4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell10,
            this.xrTableCell11,
            this.xrTableCell27,
            this.xrTableCell28,
            this.xrTableCell17,
            this.xrTableCell29});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(343, 31);
            // 
            // xrTableCell10
            // 
            this.xrTableCell10.Borders = DevExpress.XtraPrinting.BorderSide.Bottom;
            this.xrTableCell10.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell10.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell10.Multiline = true;
            this.xrTableCell10.Name = "xrTableCell10";
            this.xrTableCell10.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell10.Size = new System.Drawing.Size(58, 31);
            this.xrTableCell10.StylePriority.UseBorders = false;
            this.xrTableCell10.StylePriority.UseFont = false;
            this.xrTableCell10.StylePriority.UseTextAlignment = false;
            this.xrTableCell10.Text = "CP\r\n裁片";
            this.xrTableCell10.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell11
            // 
            this.xrTableCell11.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell11.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell11.Location = new System.Drawing.Point(58, 0);
            this.xrTableCell11.Multiline = true;
            this.xrTableCell11.Name = "xrTableCell11";
            this.xrTableCell11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell11.Size = new System.Drawing.Size(58, 31);
            this.xrTableCell11.StylePriority.UseBorders = false;
            this.xrTableCell11.StylePriority.UseFont = false;
            this.xrTableCell11.StylePriority.UseTextAlignment = false;
            this.xrTableCell11.Text = "EV\r\n環境";
            this.xrTableCell11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell27
            // 
            this.xrTableCell27.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell27.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell27.Location = new System.Drawing.Point(116, 0);
            this.xrTableCell27.Multiline = true;
            this.xrTableCell27.Name = "xrTableCell27";
            this.xrTableCell27.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell27.Size = new System.Drawing.Size(58, 31);
            this.xrTableCell27.StylePriority.UseBorders = false;
            this.xrTableCell27.StylePriority.UseFont = false;
            this.xrTableCell27.StylePriority.UseTextAlignment = false;
            this.xrTableCell27.Text = "MA\r\n物料";
            this.xrTableCell27.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell28
            // 
            this.xrTableCell28.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell28.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell28.Location = new System.Drawing.Point(174, 0);
            this.xrTableCell28.Multiline = true;
            this.xrTableCell28.Name = "xrTableCell28";
            this.xrTableCell28.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell28.Size = new System.Drawing.Size(59, 31);
            this.xrTableCell28.StylePriority.UseBorders = false;
            this.xrTableCell28.StylePriority.UseFont = false;
            this.xrTableCell28.StylePriority.UseTextAlignment = false;
            this.xrTableCell28.Text = "WS\r\n縫合";
            this.xrTableCell28.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell17
            // 
            this.xrTableCell17.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrTableCell17.Location = new System.Drawing.Point(233, 0);
            this.xrTableCell17.Multiline = true;
            this.xrTableCell17.Name = "xrTableCell17";
            this.xrTableCell17.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell17.Size = new System.Drawing.Size(66, 31);
            this.xrTableCell17.StylePriority.UseFont = false;
            this.xrTableCell17.Text = "Others\r\n其他";
            // 
            // xrTableCell29
            // 
            this.xrTableCell29.Font = new System.Drawing.Font("Times New Roman", 8F, System.Drawing.FontStyle.Bold);
            this.xrTableCell29.Location = new System.Drawing.Point(299, 0);
            this.xrTableCell29.Multiline = true;
            this.xrTableCell29.Name = "xrTableCell29";
            this.xrTableCell29.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell29.Size = new System.Drawing.Size(44, 31);
            this.xrTableCell29.StylePriority.UseTextAlignment = false;
            this.xrTableCell29.Text = "Other\r\n其他";
            this.xrTableCell29.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lbl_Line
            // 
            this.lbl_Line.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_Line.Location = new System.Drawing.Point(136, 99);
            this.lbl_Line.Name = "lbl_Line";
            this.lbl_Line.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_Line.Size = new System.Drawing.Size(133, 20);
            this.lbl_Line.StylePriority.UseFont = false;
            this.lbl_Line.StylePriority.UseTextAlignment = false;
            this.lbl_Line.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(8, 8);
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(1092, 33);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.Text = "Mobile Audit of Each Operation Result Report - Analysis is based on Workforce";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable3});
            this.Detail.Height = 25;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            // 
            // xrTable3
            // 
            this.xrTable3.Location = new System.Drawing.Point(8, 0);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow4});
            this.xrTable3.Size = new System.Drawing.Size(1083, 25);
            // 
            // xrTableRow4
            // 
            this.xrTableRow4.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.column_WFID,
            this.column_WFName,
            this.column_OPTCode,
            this.column_OPTName,
            this.column_CheckQty,
            this.column_P,
            this.column_F,
            this.column_U,
            this.column_S,
            this.column_FPY,
            this.column_CP,
            this.column_EV,
            this.column_MA,
            this.column_WS,
            this.column_Other});
            this.xrTableRow4.Name = "xrTableRow4";
            this.xrTableRow4.Size = new System.Drawing.Size(1083, 25);
            // 
            // column_WFID
            // 
            this.column_WFID.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFID.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.column_WFID.Location = new System.Drawing.Point(0, 0);
            this.column_WFID.Name = "column_WFID";
            this.column_WFID.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFID.Size = new System.Drawing.Size(75, 25);
            this.column_WFID.StylePriority.UseBorders = false;
            this.column_WFID.StylePriority.UseFont = false;
            this.column_WFID.StylePriority.UseTextAlignment = false;
            this.column_WFID.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_WFName
            // 
            this.column_WFName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WFName.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_WFName.Location = new System.Drawing.Point(75, 0);
            this.column_WFName.Name = "column_WFName";
            this.column_WFName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WFName.Size = new System.Drawing.Size(83, 25);
            this.column_WFName.StylePriority.UseBorders = false;
            this.column_WFName.StylePriority.UseFont = false;
            this.column_WFName.StylePriority.UseTextAlignment = false;
            this.column_WFName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_OPTCode
            // 
            this.column_OPTCode.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTCode.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_OPTCode.Location = new System.Drawing.Point(158, 0);
            this.column_OPTCode.Name = "column_OPTCode";
            this.column_OPTCode.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTCode.Size = new System.Drawing.Size(93, 25);
            this.column_OPTCode.StylePriority.UseBorders = false;
            this.column_OPTCode.StylePriority.UseFont = false;
            this.column_OPTCode.StylePriority.UseTextAlignment = false;
            this.column_OPTCode.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // column_OPTName
            // 
            this.column_OPTName.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_OPTName.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_OPTName.Location = new System.Drawing.Point(251, 0);
            this.column_OPTName.Name = "column_OPTName";
            this.column_OPTName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_OPTName.Size = new System.Drawing.Size(233, 25);
            this.column_OPTName.StylePriority.UseBorders = false;
            this.column_OPTName.StylePriority.UseFont = false;
            this.column_OPTName.StylePriority.UseTextAlignment = false;
            this.column_OPTName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // column_CheckQty
            // 
            this.column_CheckQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CheckQty.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_CheckQty.Location = new System.Drawing.Point(484, 0);
            this.column_CheckQty.Name = "column_CheckQty";
            this.column_CheckQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CheckQty.Size = new System.Drawing.Size(58, 25);
            this.column_CheckQty.StylePriority.UseBorders = false;
            this.column_CheckQty.StylePriority.UseFont = false;
            this.column_CheckQty.StylePriority.UseTextAlignment = false;
            this.column_CheckQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_P
            // 
            this.column_P.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_P.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_P.Location = new System.Drawing.Point(542, 0);
            this.column_P.Name = "column_P";
            this.column_P.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_P.Size = new System.Drawing.Size(50, 25);
            this.column_P.StylePriority.UseBorders = false;
            this.column_P.StylePriority.UseFont = false;
            this.column_P.StylePriority.UseTextAlignment = false;
            this.column_P.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_F
            // 
            this.column_F.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_F.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_F.Location = new System.Drawing.Point(592, 0);
            this.column_F.Name = "column_F";
            this.column_F.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_F.Size = new System.Drawing.Size(46, 25);
            this.column_F.StylePriority.UseBorders = false;
            this.column_F.StylePriority.UseFont = false;
            this.column_F.StylePriority.UseTextAlignment = false;
            this.column_F.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_U
            // 
            this.column_U.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_U.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_U.Location = new System.Drawing.Point(638, 0);
            this.column_U.Name = "column_U";
            this.column_U.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_U.Size = new System.Drawing.Size(47, 25);
            this.column_U.StylePriority.UseBorders = false;
            this.column_U.StylePriority.UseFont = false;
            this.column_U.StylePriority.UseTextAlignment = false;
            this.column_U.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_S
            // 
            this.column_S.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_S.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_S.Location = new System.Drawing.Point(685, 0);
            this.column_S.Name = "column_S";
            this.column_S.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_S.Size = new System.Drawing.Size(49, 25);
            this.column_S.StylePriority.UseBorders = false;
            this.column_S.StylePriority.UseFont = false;
            this.column_S.StylePriority.UseTextAlignment = false;
            this.column_S.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_FPY
            // 
            this.column_FPY.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_FPY.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_FPY.Location = new System.Drawing.Point(734, 0);
            this.column_FPY.Name = "column_FPY";
            this.column_FPY.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_FPY.Size = new System.Drawing.Size(49, 25);
            this.column_FPY.StylePriority.UseBorders = false;
            this.column_FPY.StylePriority.UseFont = false;
            this.column_FPY.StylePriority.UseTextAlignment = false;
            this.column_FPY.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_CP
            // 
            this.column_CP.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_CP.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_CP.Location = new System.Drawing.Point(783, 0);
            this.column_CP.Name = "column_CP";
            this.column_CP.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_CP.Size = new System.Drawing.Size(59, 25);
            this.column_CP.StylePriority.UseBorders = false;
            this.column_CP.StylePriority.UseFont = false;
            this.column_CP.StylePriority.UseTextAlignment = false;
            this.column_CP.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_EV
            // 
            this.column_EV.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_EV.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_EV.Location = new System.Drawing.Point(842, 0);
            this.column_EV.Name = "column_EV";
            this.column_EV.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_EV.Size = new System.Drawing.Size(58, 25);
            this.column_EV.StylePriority.UseBorders = false;
            this.column_EV.StylePriority.UseFont = false;
            this.column_EV.StylePriority.UseTextAlignment = false;
            this.column_EV.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_MA
            // 
            this.column_MA.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_MA.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_MA.Location = new System.Drawing.Point(900, 0);
            this.column_MA.Name = "column_MA";
            this.column_MA.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_MA.Size = new System.Drawing.Size(58, 25);
            this.column_MA.StylePriority.UseBorders = false;
            this.column_MA.StylePriority.UseFont = false;
            this.column_MA.StylePriority.UseTextAlignment = false;
            this.column_MA.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_WS
            // 
            this.column_WS.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_WS.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_WS.Location = new System.Drawing.Point(958, 0);
            this.column_WS.Name = "column_WS";
            this.column_WS.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_WS.Size = new System.Drawing.Size(58, 25);
            this.column_WS.StylePriority.UseBorders = false;
            this.column_WS.StylePriority.UseFont = false;
            this.column_WS.StylePriority.UseTextAlignment = false;
            this.column_WS.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_Other
            // 
            this.column_Other.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_Other.Font = new System.Drawing.Font("Arial Unicode MS", 9.75F);
            this.column_Other.Location = new System.Drawing.Point(1016, 0);
            this.column_Other.Name = "column_Other";
            this.column_Other.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_Other.Size = new System.Drawing.Size(67, 25);
            this.column_Other.StylePriority.UseBorders = false;
            this.column_Other.StylePriority.UseFont = false;
            this.column_Other.StylePriority.UseTextAlignment = false;
            this.column_Other.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // rptQC_MasterAnalyzeWF
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(30, 30, 18, 50);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }
    }
}
 