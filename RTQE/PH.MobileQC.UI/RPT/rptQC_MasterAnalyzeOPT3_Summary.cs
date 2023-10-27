using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using PH.MobileQC.BO;
using System.Windows.Forms;
using System.Collections;

namespace PH.MobileQC.UI
{
    public class rptQC_MasterAnalyzeOPT3_Summary : DevExpress.XtraReports.UI.XtraReport
    {
        #region
        private DevExpress.XtraReports.UI.XRLabel xrLabel1;
        private DevExpress.XtraReports.UI.DetailBand Detail;
        private DevExpress.XtraReports.UI.XRTable xrTable2;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow3;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell14;
        private DevExpress.XtraReports.UI.XRLabel lbl_DataTo;
        private DevExpress.XtraReports.UI.XRLabel xrLabel15;
        private DevExpress.XtraReports.UI.XRLabel lbl_DateForm;
        private DevExpress.XtraReports.UI.XRLabel xrLabel13;
        private DevExpress.XtraReports.UI.XRLabel xrLabel3;

        private DevExpress.XtraReports.UI.XRLabel xrLabel11;
        private DevExpress.XtraReports.UI.XRLabel xrLabel10;
        private DevExpress.XtraReports.UI.XRLabel lbl_Factory;
        private DevExpress.XtraReports.UI.XRLabel lbl_WorkShop;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell20;
        private DevExpress.XtraReports.UI.ReportFooterBand ReportFooter;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell34;
        private DevExpress.XtraReports.UI.XRLabel xrAverage;
        private DevExpress.XtraReports.UI.XRLabel xrLabel5;
        private DevExpress.XtraReports.UI.XRTable xrTable5;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow7;
        private DevExpress.XtraReports.UI.XRTableCell xr_line;
        private DevExpress.XtraReports.UI.XRTableCell xrQNNo;
        private DevExpress.XtraReports.UI.XRTableCell xr_QnQty;
        private DevExpress.XtraReports.UI.XRTableCell xr_Workers;
        private DevExpress.XtraReports.UI.XRTableCell xr_chkqty;
        private DevExpress.XtraReports.UI.XRTableCell xr_passtimes;
        private DevExpress.XtraReports.UI.XRTableCell xr_repasstimes;
        private DevExpress.XtraReports.UI.XRTableCell xr_YieldFail;
        private DevExpress.XtraReports.UI.XRTableCell xr_p;
        private DevExpress.XtraReports.UI.XRTableCell xr_f;
        private DevExpress.XtraReports.UI.XRTableCell xr_u;
        private DevExpress.XtraReports.UI.XRTableCell xr_s;
        private DevExpress.XtraReports.UI.XRTableCell xrfpy;
        private DevExpress.XtraReports.UI.XRTableCell xrUnCheckQty;
        private DevExpress.XtraReports.UI.XRTableCell xrPlanQty;
        private DevExpress.XtraReports.UI.XRTableCell xr_lineper;
        private DevExpress.XtraReports.UI.XRControlStyle ColHeaderCss;
        private DevExpress.XtraReports.UI.XRTable xrTable1;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell3;
        private DevExpress.XtraReports.UI.XRTable xrTable10;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow17;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell60;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow18;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell61;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell62;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow19;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell63;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell64;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell65;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell66;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell67;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell69;
        private DevExpress.XtraReports.UI.XRTable xrTable11;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow20;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell71;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow21;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell72;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell73;
        private DevExpress.XtraReports.UI.XRTable xrTable12;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow22;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell75;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow23;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell76;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell77;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell78;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell79;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow24;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell80;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell81;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell82;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell83;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell84;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell85;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell86;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell87;
        private DevExpress.XtraReports.UI.XRTableCell xrgxs;
        private DevExpress.XtraReports.UI.XRTableCell xrkeycount;
        private DevExpress.XtraReports.UI.XRTableCell xrArrangeQty;
        private DevExpress.XtraReports.UI.XRTableCell xrzj;
        private DevExpress.XtraReports.UI.XRTableCell xrcj;
        private DevExpress.XtraReports.UI.XRTableCell xtzcs;
        private DevExpress.XtraReports.UI.XRTable xrTable3;
        private DevExpress.XtraReports.UI.XRTableRow xrTableRow2;
        private DevExpress.XtraReports.UI.XRTableCell xrlinetotal;
        private DevExpress.XtraReports.UI.XRTableCell xrQNCount;
        private DevExpress.XtraReports.UI.XRTableCell col_qnqtyT;
        private DevExpress.XtraReports.UI.XRTableCell xrWorkerT;
        private DevExpress.XtraReports.UI.XRTableCell col_chkqtyT1;
        private DevExpress.XtraReports.UI.XRTableCell col_passtimesT1;
        private DevExpress.XtraReports.UI.XRTableCell col_repasstimesT1;
        private DevExpress.XtraReports.UI.XRTableCell col_YieldFailT;
        private DevExpress.XtraReports.UI.XRTableCell column_PT1;
        private DevExpress.XtraReports.UI.XRTableCell column_FT1;
        private DevExpress.XtraReports.UI.XRTableCell column_UT1;
        private DevExpress.XtraReports.UI.XRTableCell column_ST1;
        private DevExpress.XtraReports.UI.XRTableCell xrTableCell30;
        private DevExpress.XtraReports.UI.XRTableCell xr_gxttl;
        private DevExpress.XtraReports.UI.XRTableCell xrkeytotal;
        private DevExpress.XtraReports.UI.XRTableCell xrArrangeT;
        private DevExpress.XtraReports.UI.XRTableCell xrUnCheckT;
        private DevExpress.XtraReports.UI.XRTableCell xrzjttl;
        private DevExpress.XtraReports.UI.XRTableCell xrcjttl;
        private DevExpress.XtraReports.UI.XRTableCell xrzcsttl;
        private DevExpress.XtraReports.UI.XRControlStyle ColContent;
        private DevExpress.XtraReports.UI.XRLabel xrLabel4;
        private DevExpress.XtraReports.UI.XRTableCell xrPlanT;
        private DevExpress.XtraReports.UI.XRPageInfo xrPageInfo1;
        private DevExpress.XtraReports.UI.XRLabel xrLabel2;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateText;
        private DevExpress.XtraReports.UI.XRLabel xrPublishedDateName;
        private DevExpress.XtraReports.UI.XRLabel xrVerText;
        private DevExpress.XtraReports.UI.XRLabel xrVerName;
        private DevExpress.XtraReports.UI.PageHeaderBand PageHeader;
        #endregion

        public rptQC_MasterAnalyzeOPT3_Summary()
        {
            InitializeComponent();
        }


        public List<SubRptdata> SubRptData = new List<SubRptdata>();


        bool _sortfpy;
        List<SubRptdata> ReportDataList;
        int FirstPassAuditTotal = 0;
        int TotalFirsPassTime = 0;
        string Flag = "";

        //        public rptQC_MasterAnalyzeOPT3_Summary(List<SubRptdata> datasouce, string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, bool SortFPY,int _firstpassaudittotal,string _flag)
        public rptQC_MasterAnalyzeOPT3_Summary(List<SubRptdata> datasouce, string Factory, string WorkShop, string Customer, string Style, string Project, string Line, DateTime QC_timeForm, DateTime QC_timeTo, bool SortFPY, int _firstpasstime, string _flag)
        {
            InitializeComponent();

            Flag = _flag;

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;

            ReportDataList = datasouce;

            // FirstPassAuditTotal = _firstpassaudittotal;
            TotalFirsPassTime = _firstpasstime;
            _sortfpy = SortFPY;


            this.DataSource = ReportDataList.OrderBy(p => p.Line).ToList();

            this.lbl_Factory.Text = Factory;
            this.lbl_WorkShop.Text = WorkShop;

            this.lbl_DateForm.Text = QC_timeForm.ToString("yyyy-MM-dd");
            this.lbl_DataTo.Text = QC_timeTo.ToString("yyyy-MM-dd");


            DateTime d1 = DateTime.Parse(lbl_DateForm.Text);
            DateTime d2 = DateTime.Parse(lbl_DataTo.Text);

            int aa = Convert.ToInt32(d1.DayOfWeek);
            int bb = Convert.ToInt32(d2.DayOfWeek);


            this.xr_line.DataBindings.Add("Text", this.DataSource, "Line");
            this.xrQNNo.DataBindings.Add("Text", this.DataSource, "QNNo");
            this.xr_QnQty.DataBindings.Add("Text", this.DataSource, "QN_Qty");
            // this.xr_opt.DataBindings.Add("Text", this.DataSource, "OptCount");

            this.xr_Workers.DataBindings.Add("Text", this.DataSource, "WkCount", "{0:0.#}");
            // this.xr_Rechktimes.DataBindings.Add("Text", this.DataSource, "ReCheckTimeCount", "{0:0.#}");
            // this.xr_totalchktimes.DataBindings.Add("Text", this.DataSource, "CheckTimeCount", "{0:0.#}");




            this.xr_chkqty.DataBindings.Add("Text", this.DataSource, "ChkQtyCount", "{0:0.#}");
            this.xr_passtimes.DataBindings.Add("Text", this.DataSource, "FpassCount", "{0:0.#}");
            this.xr_repasstimes.DataBindings.Add("Text", this.DataSource, "RpassCount", "{0:0.#}");
            //this.xr_YieldFail.DataBindings.Add("Text", this.DataSource, "S_Qty", "{0:0.#}");

            this.xrgxs.DataBindings.Add("Text", this.DataSource, "GxTotal", "{0:0.#}");

            this.xr_p.DataBindings.Add("Text", this.DataSource, "P_Qty", "{0:0.#}");
            this.xr_f.DataBindings.Add("Text", this.DataSource, "F_Qty", "{0:0.#}");
            this.xr_u.DataBindings.Add("Text", this.DataSource, "U_Qty", "{0:0.#}");
            this.xr_s.DataBindings.Add("Text", this.DataSource, "S_Qty", "{0:0.#}");
            //  xr_lineper.DataBindings.Add("Text", this.DataSource, "Per_Line", "{0:0.#}");

            this.xrcj.DataBindings.Add("Text", this.DataSource, "ReCheckTimeCount", "{0:0.#}");
            this.xtzcs.DataBindings.Add("Text", this.DataSource, "CheckTimeCount", "{0:0.#}");


            this.xrPlanQty.DataBindings.Add("Text", this.DataSource, "PlanCount", "{0:0.#}");
            this.xrArrangeQty.DataBindings.Add("Text", this.DataSource, "ArrangeCount", "{0:0.#}");
            this.xrUnCheckQty.DataBindings.Add("Text", this.DataSource, "UnCheckCount", "{0:0.#}");
            this.xrkeycount.DataBindings.Add("Text", this.DataSource, "KeyCount", "{0:0.#}");



            string title_part1 = "", title_part11 = "", title_part2 = "", title_part3 = "";

            // add by joseph
            if (lbl_DateForm.Text == lbl_DataTo.Text)
            {

                title_part1 = "每日";
                title_part11 = "Daily";
            }
            else if (aa == 1 && (bb == 6 || bb == 0))
            {
                title_part1 = "每周";
                title_part11 = "Weekly";
            }
            else
            {

                title_part1 = "定期";
                title_part11 = "Periodly";
            }

            title_part3 = " - 首通率和勞動表現";

            xrLabel3.Text = "";

            if (Flag == "A")
            { xrLabel3.Text = title_part1 + "巡審定工序报表" + "  - 輔表一 (拉首通率和審考流程管理)"; }
            else if (Flag == "B")
            { xrLabel3.Text = title_part1 + "巡審定組件报表" + "  - 輔表一 (拉首通率和審考流程管理)"; }
            else
                xrLabel3.Text = title_part1 + "巡審查工序报表" + "  - 輔表一 (拉首通率和審考流程管理)";

            //this.xrTableCell86.Text = "Re-audit\r\n重檢";

            xrTableCell86.Text = (Flag == "A" || Flag == "B") ? "Re-Audit\r\n重審定" : "Re-Inspec\r\n重審查";


            title_part2 = " - FPY & WF performance";

            xrLabel1.Text = "";

            if (Flag == "A")
                xrLabel1.Text = title_part11 + " Mobile Audit Operation Report " + "  - Supplement Sheet 1 (Line FPY & OPT Qual Exam. Flow Mgt.)";
            else if (Flag == "B")
                xrLabel1.Text = title_part11 + " Mobile Audit Part Report " + "  - Supplement Sheet 1 (Line FPY & OPT Qual Exam. Flow Mgt.)";
            else
                xrLabel1.Text = title_part11 + " Mobile Inspection Operation Report " + "  - Supplement Sheet 1 (Line FPY & OPT Qual Exam. Flow Mgt.)";


        }

        private void InitializeComponent()
        {
            DevExpress.XtraReports.UI.XRTableCell xrTableCell68;
            this.PageHeader = new DevExpress.XtraReports.UI.PageHeaderBand();
            this.xrPublishedDateText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPublishedDateName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerText = new DevExpress.XtraReports.UI.XRLabel();
            this.xrVerName = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel2 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrPageInfo1 = new DevExpress.XtraReports.UI.XRPageInfo();
            this.xrTable12 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow22 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell75 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow23 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell76 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell77 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell78 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell79 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow24 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell80 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell81 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell82 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell83 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell84 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell85 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell86 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell87 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable11 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow20 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell71 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow21 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell72 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell73 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable10 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow17 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell60 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow18 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell61 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell62 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableRow19 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell63 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell64 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell65 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell66 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell67 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell69 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTable1 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow1 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrTableCell3 = new DevExpress.XtraReports.UI.XRTableCell();
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
            this.xrTableCell34 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell14 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrLabel1 = new DevExpress.XtraReports.UI.XRLabel();
            this.Detail = new DevExpress.XtraReports.UI.DetailBand();
            this.xrTable5 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow7 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xr_line = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrQNNo = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_QnQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_Workers = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_chkqty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_passtimes = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_repasstimes = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_YieldFail = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_p = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_f = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_u = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_s = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrfpy = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_lineper = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrgxs = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrkeycount = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPlanQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrArrangeQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrUnCheckQty = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrzj = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrcj = new DevExpress.XtraReports.UI.XRTableCell();
            this.xtzcs = new DevExpress.XtraReports.UI.XRTableCell();
            this.ReportFooter = new DevExpress.XtraReports.UI.ReportFooterBand();
            this.xrLabel4 = new DevExpress.XtraReports.UI.XRLabel();
            this.xrTable3 = new DevExpress.XtraReports.UI.XRTable();
            this.xrTableRow2 = new DevExpress.XtraReports.UI.XRTableRow();
            this.xrlinetotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrQNCount = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_qnqtyT = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrWorkerT = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_chkqtyT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_passtimesT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_repasstimesT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.col_YieldFailT = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_PT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_FT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_UT1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.column_ST1 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrTableCell30 = new DevExpress.XtraReports.UI.XRTableCell();
            this.xr_gxttl = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrkeytotal = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrPlanT = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrArrangeT = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrUnCheckT = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrzjttl = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrcjttl = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrzcsttl = new DevExpress.XtraReports.UI.XRTableCell();
            this.xrAverage = new DevExpress.XtraReports.UI.XRLabel();
            this.xrLabel5 = new DevExpress.XtraReports.UI.XRLabel();
            this.ColHeaderCss = new DevExpress.XtraReports.UI.XRControlStyle();
            this.ColContent = new DevExpress.XtraReports.UI.XRControlStyle();
            xrTableCell68 = new DevExpress.XtraReports.UI.XRTableCell();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable11)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable10)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this)).BeginInit();
            // 
            // xrTableCell68
            // 
            xrTableCell68.Location = new System.Drawing.Point(225, 0);
            xrTableCell68.Multiline = true;
            xrTableCell68.Name = "xrTableCell68";
            xrTableCell68.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            xrTableCell68.Size = new System.Drawing.Size(41, 59);
            xrTableCell68.StylePriority.UseFont = false;
            xrTableCell68.StylePriority.UseTextAlignment = false;
            xrTableCell68.Text = "(U)\r\n未分類\r\n/件數";
            xrTableCell68.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // PageHeader
            // 
            this.PageHeader.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrPublishedDateText,
            this.xrPublishedDateName,
            this.xrVerText,
            this.xrVerName,
            this.xrLabel2,
            this.xrPageInfo1,
            this.xrTable12,
            this.xrTable11,
            this.xrTable10,
            this.xrTable1,
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
            this.PageHeader.Height = 226;
            this.PageHeader.Name = "PageHeader";
            this.PageHeader.StylePriority.UseFont = false;
            this.PageHeader.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.PageHeader_BeforePrint);
            // 
            // xrPublishedDateText
            // 
            this.xrPublishedDateText.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPublishedDateText.Location = new System.Drawing.Point(1075, 42);
            this.xrPublishedDateText.Multiline = true;
            this.xrPublishedDateText.Name = "xrPublishedDateText";
            this.xrPublishedDateText.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPublishedDateText.Size = new System.Drawing.Size(67, 16);
            this.xrPublishedDateText.StylePriority.UseFont = false;
            this.xrPublishedDateText.StylePriority.UseTextAlignment = false;
            this.xrPublishedDateText.Text = "2019-06-12\r\n";
            this.xrPublishedDateText.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrPublishedDateName
            // 
            this.xrPublishedDateName.Font = new System.Drawing.Font("Times New Roman", 8F);
            this.xrPublishedDateName.Location = new System.Drawing.Point(1000, 42);
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
            this.xrVerText.Location = new System.Drawing.Point(975, 42);
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
            this.xrVerName.Location = new System.Drawing.Point(942, 42);
            this.xrVerName.Name = "xrVerName";
            this.xrVerName.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrVerName.Size = new System.Drawing.Size(33, 16);
            this.xrVerName.StylePriority.UseFont = false;
            this.xrVerName.StylePriority.UseTextAlignment = false;
            this.xrVerName.Text = "Ver :";
            this.xrVerName.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel2
            // 
            this.xrLabel2.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrLabel2.Location = new System.Drawing.Point(942, 75);
            this.xrLabel2.Name = "xrLabel2";
            this.xrLabel2.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel2.Size = new System.Drawing.Size(42, 25);
            this.xrLabel2.StylePriority.UseFont = false;
            this.xrLabel2.StylePriority.UseTextAlignment = false;
            this.xrLabel2.Text = "頁碼:";
            this.xrLabel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrPageInfo1
            // 
            this.xrPageInfo1.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.xrPageInfo1.Location = new System.Drawing.Point(984, 75);
            this.xrPageInfo1.Name = "xrPageInfo1";
            this.xrPageInfo1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPageInfo1.Size = new System.Drawing.Size(42, 25);
            this.xrPageInfo1.StylePriority.UseFont = false;
            this.xrPageInfo1.StylePriority.UseTextAlignment = false;
            this.xrPageInfo1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTable12
            // 
            this.xrTable12.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable12.Location = new System.Drawing.Point(791, 108);
            this.xrTable12.Name = "xrTable12";
            this.xrTable12.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow22,
            this.xrTableRow23,
            this.xrTableRow24});
            this.xrTable12.Size = new System.Drawing.Size(333, 118);
            this.xrTable12.StyleName = "ColHeaderCss";
            this.xrTable12.StylePriority.UseBorders = false;
            // 
            // xrTableRow22
            // 
            this.xrTableRow22.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell75});
            this.xrTableRow22.Name = "xrTableRow22";
            this.xrTableRow22.Size = new System.Drawing.Size(333, 39);
            // 
            // xrTableCell75
            // 
            this.xrTableCell75.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell75.Multiline = true;
            this.xrTableCell75.Name = "xrTableCell75";
            this.xrTableCell75.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell75.Size = new System.Drawing.Size(333, 39);
            this.xrTableCell75.StylePriority.UseFont = false;
            this.xrTableCell75.StylePriority.UseTextAlignment = false;
            this.xrTableCell75.Text = "OPT Qual Exam. Flow Mgt.\r\n工序審考流程管理";
            this.xrTableCell75.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow23
            // 
            this.xrTableRow23.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell76,
            this.xrTableCell77,
            this.xrTableCell78,
            this.xrTableCell79});
            this.xrTableRow23.Name = "xrTableRow23";
            this.xrTableRow23.Size = new System.Drawing.Size(333, 39);
            // 
            // xrTableCell76
            // 
            this.xrTableCell76.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right)));
            this.xrTableCell76.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell76.Multiline = true;
            this.xrTableCell76.Name = "xrTableCell76";
            this.xrTableCell76.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell76.Size = new System.Drawing.Size(46, 39);
            this.xrTableCell76.StylePriority.UseBorders = false;
            this.xrTableCell76.StylePriority.UseFont = false;
            this.xrTableCell76.StylePriority.UseTextAlignment = false;
            this.xrTableCell76.Text = "Style\r\nOPT\r\n";
            this.xrTableCell76.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell77
            // 
            this.xrTableCell77.Borders = DevExpress.XtraPrinting.BorderSide.Right;
            this.xrTableCell77.Font = new System.Drawing.Font("Arial Unicode MS", 6.5F, System.Drawing.FontStyle.Bold);
            this.xrTableCell77.Location = new System.Drawing.Point(46, 0);
            this.xrTableCell77.Multiline = true;
            this.xrTableCell77.Name = "xrTableCell77";
            this.xrTableCell77.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell77.Size = new System.Drawing.Size(54, 39);
            this.xrTableCell77.StylePriority.UseBorders = false;
            this.xrTableCell77.StylePriority.UseFont = false;
            this.xrTableCell77.StylePriority.UseTextAlignment = false;
            this.xrTableCell77.Text = "Critical\r\nOPT";
            this.xrTableCell77.TextAlignment = DevExpress.XtraPrinting.TextAlignment.BottomCenter;
            // 
            // xrTableCell78
            // 
            this.xrTableCell78.Location = new System.Drawing.Point(100, 0);
            this.xrTableCell78.Multiline = true;
            this.xrTableCell78.Name = "xrTableCell78";
            this.xrTableCell78.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell78.Size = new System.Drawing.Size(117, 39);
            this.xrTableCell78.StylePriority.UseFont = false;
            this.xrTableCell78.StylePriority.UseTextAlignment = false;
            this.xrTableCell78.Text = "No.of Audit (QN Dep.)\r\n正檢次數(數頁依靠)";
            this.xrTableCell78.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell79
            // 
            this.xrTableCell79.Location = new System.Drawing.Point(217, 0);
            this.xrTableCell79.Multiline = true;
            this.xrTableCell79.Name = "xrTableCell79";
            this.xrTableCell79.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell79.Size = new System.Drawing.Size(116, 39);
            this.xrTableCell79.StylePriority.UseFont = false;
            this.xrTableCell79.StylePriority.UseTextAlignment = false;
            this.xrTableCell79.Text = "Completed\r\n己完成次數";
            this.xrTableCell79.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow24
            // 
            this.xrTableRow24.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell80,
            this.xrTableCell81,
            this.xrTableCell82,
            this.xrTableCell83,
            this.xrTableCell84,
            this.xrTableCell85,
            this.xrTableCell86,
            this.xrTableCell87});
            this.xrTableRow24.Name = "xrTableRow24";
            this.xrTableRow24.Size = new System.Drawing.Size(333, 40);
            // 
            // xrTableCell80
            // 
            this.xrTableCell80.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell80.Multiline = true;
            this.xrTableCell80.Name = "xrTableCell80";
            this.xrTableCell80.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell80.Size = new System.Drawing.Size(46, 40);
            this.xrTableCell80.StylePriority.UseFont = false;
            this.xrTableCell80.StylePriority.UseTextAlignment = false;
            this.xrTableCell80.Text = "此款工\r\n序數目";
            this.xrTableCell80.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell81
            // 
            this.xrTableCell81.Location = new System.Drawing.Point(46, 0);
            this.xrTableCell81.Multiline = true;
            this.xrTableCell81.Name = "xrTableCell81";
            this.xrTableCell81.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell81.Size = new System.Drawing.Size(54, 40);
            this.xrTableCell81.StylePriority.UseFont = false;
            this.xrTableCell81.StylePriority.UseTextAlignment = false;
            this.xrTableCell81.Text = "關鍵性\r\n工序數目\r\n";
            this.xrTableCell81.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopCenter;
            // 
            // xrTableCell82
            // 
            this.xrTableCell82.Location = new System.Drawing.Point(100, 0);
            this.xrTableCell82.Multiline = true;
            this.xrTableCell82.Name = "xrTableCell82";
            this.xrTableCell82.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell82.Size = new System.Drawing.Size(35, 40);
            this.xrTableCell82.StylePriority.UseFont = false;
            this.xrTableCell82.Text = "Plan\r\n計劃";
            // 
            // xrTableCell83
            // 
            this.xrTableCell83.Location = new System.Drawing.Point(135, 0);
            this.xrTableCell83.Multiline = true;
            this.xrTableCell83.Name = "xrTableCell83";
            this.xrTableCell83.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell83.Size = new System.Drawing.Size(48, 40);
            this.xrTableCell83.StylePriority.UseFont = false;
            this.xrTableCell83.Text = "Arrange\r\n安排";
            // 
            // xrTableCell84
            // 
            this.xrTableCell84.Location = new System.Drawing.Point(183, 0);
            this.xrTableCell84.Multiline = true;
            this.xrTableCell84.Name = "xrTableCell84";
            this.xrTableCell84.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell84.Size = new System.Drawing.Size(34, 40);
            this.xrTableCell84.StylePriority.UseFont = false;
            this.xrTableCell84.Text = "O/S\r\n未檢";
            // 
            // xrTableCell85
            // 
            this.xrTableCell85.Location = new System.Drawing.Point(217, 0);
            this.xrTableCell85.Multiline = true;
            this.xrTableCell85.Name = "xrTableCell85";
            this.xrTableCell85.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell85.Size = new System.Drawing.Size(35, 40);
            this.xrTableCell85.StylePriority.UseFont = false;
            this.xrTableCell85.Text = "Audit\r\n正檢";
            // 
            // xrTableCell86
            // 
            this.xrTableCell86.Location = new System.Drawing.Point(252, 0);
            this.xrTableCell86.Multiline = true;
            this.xrTableCell86.Name = "xrTableCell86";
            this.xrTableCell86.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell86.Size = new System.Drawing.Size(52, 40);
            this.xrTableCell86.StylePriority.UseFont = false;
            this.xrTableCell86.Text = "Re-audit\r\n重檢";
            // 
            // xrTableCell87
            // 
            this.xrTableCell87.Location = new System.Drawing.Point(304, 0);
            this.xrTableCell87.Multiline = true;
            this.xrTableCell87.Name = "xrTableCell87";
            this.xrTableCell87.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell87.Size = new System.Drawing.Size(29, 40);
            this.xrTableCell87.StylePriority.UseFont = false;
            this.xrTableCell87.Text = "TTL\r\n合共";
            // 
            // xrTable11
            // 
            this.xrTable11.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable11.Location = new System.Drawing.Point(698, 108);
            this.xrTable11.Name = "xrTable11";
            this.xrTable11.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow20,
            this.xrTableRow21});
            this.xrTable11.Size = new System.Drawing.Size(94, 118);
            this.xrTable11.StyleName = "ColHeaderCss";
            this.xrTable11.StylePriority.UseBorders = false;
            // 
            // xrTableRow20
            // 
            this.xrTableRow20.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell71});
            this.xrTableRow20.Name = "xrTableRow20";
            this.xrTableRow20.Size = new System.Drawing.Size(94, 59);
            // 
            // xrTableCell71
            // 
            this.xrTableCell71.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell71.Multiline = true;
            this.xrTableCell71.Name = "xrTableCell71";
            this.xrTableCell71.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell71.Size = new System.Drawing.Size(94, 59);
            this.xrTableCell71.StyleName = "ColHeaderCss";
            this.xrTableCell71.StylePriority.UseFont = false;
            this.xrTableCell71.StylePriority.UseTextAlignment = false;
            this.xrTableCell71.Text = "FPY\r\n首通率\r\n(%)\r\n(wt.ave)";
            this.xrTableCell71.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow21
            // 
            this.xrTableRow21.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell72,
            this.xrTableCell73});
            this.xrTableRow21.Name = "xrTableRow21";
            this.xrTableRow21.Size = new System.Drawing.Size(94, 59);
            // 
            // xrTableCell72
            // 
            this.xrTableCell72.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell72.Multiline = true;
            this.xrTableCell72.Name = "xrTableCell72";
            this.xrTableCell72.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell72.Size = new System.Drawing.Size(55, 59);
            this.xrTableCell72.StylePriority.UseFont = false;
            this.xrTableCell72.StylePriority.UseTextAlignment = false;
            this.xrTableCell72.Text = "QN\r\nDep.\r\n數頁\r\n依靠";
            this.xrTableCell72.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell73
            // 
            this.xrTableCell73.Location = new System.Drawing.Point(55, 0);
            this.xrTableCell73.Multiline = true;
            this.xrTableCell73.Name = "xrTableCell73";
            this.xrTableCell73.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell73.Size = new System.Drawing.Size(39, 59);
            this.xrTableCell73.StylePriority.UseFont = false;
            this.xrTableCell73.StylePriority.UseTextAlignment = false;
            this.xrTableCell73.Text = "Line\r\nDep.\r\n拉依靠";
            this.xrTableCell73.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable10
            // 
            this.xrTable10.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable10.Location = new System.Drawing.Point(375, 108);
            this.xrTable10.Name = "xrTable10";
            this.xrTable10.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow17,
            this.xrTableRow18,
            this.xrTableRow19});
            this.xrTable10.Size = new System.Drawing.Size(324, 118);
            this.xrTable10.StyleName = "ColHeaderCss";
            this.xrTable10.StylePriority.UseBorders = false;
            // 
            // xrTableRow17
            // 
            this.xrTableRow17.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell60});
            this.xrTableRow17.Name = "xrTableRow17";
            this.xrTableRow17.Size = new System.Drawing.Size(324, 25);
            // 
            // xrTableCell60
            // 
            this.xrTableCell60.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell60.Name = "xrTableCell60";
            this.xrTableCell60.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell60.Size = new System.Drawing.Size(324, 25);
            this.xrTableCell60.StylePriority.UseFont = false;
            this.xrTableCell60.StylePriority.UseTextAlignment = false;
            this.xrTableCell60.Text = "Audited Result 審定結果";
            this.xrTableCell60.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow18
            // 
            this.xrTableRow18.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell61,
            this.xrTableCell62});
            this.xrTableRow18.Name = "xrTableRow18";
            this.xrTableRow18.Size = new System.Drawing.Size(324, 34);
            // 
            // xrTableCell61
            // 
            this.xrTableCell61.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell61.Multiline = true;
            this.xrTableCell61.Name = "xrTableCell61";
            this.xrTableCell61.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell61.Size = new System.Drawing.Size(125, 34);
            this.xrTableCell61.StylePriority.UseFont = false;
            this.xrTableCell61.StylePriority.UseTextAlignment = false;
            this.xrTableCell61.Text = "Result b/d\r\n結果次數分類";
            this.xrTableCell61.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell62
            // 
            this.xrTableCell62.Location = new System.Drawing.Point(125, 0);
            this.xrTableCell62.Name = "xrTableCell62";
            this.xrTableCell62.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell62.Size = new System.Drawing.Size(199, 34);
            this.xrTableCell62.StylePriority.UseFont = false;
            this.xrTableCell62.StylePriority.UseTextAlignment = false;
            this.xrTableCell62.Text = "QTY件數";
            this.xrTableCell62.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableRow19
            // 
            this.xrTableRow19.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell63,
            this.xrTableCell64,
            this.xrTableCell65,
            this.xrTableCell66,
            this.xrTableCell67,
            xrTableCell68,
            this.xrTableCell69});
            this.xrTableRow19.Name = "xrTableRow19";
            this.xrTableRow19.Size = new System.Drawing.Size(324, 59);
            // 
            // xrTableCell63
            // 
            this.xrTableCell63.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell63.Multiline = true;
            this.xrTableCell63.Name = "xrTableCell63";
            this.xrTableCell63.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell63.Size = new System.Drawing.Size(45, 59);
            this.xrTableCell63.StylePriority.UseFont = false;
            this.xrTableCell63.StylePriority.UseTextAlignment = false;
            this.xrTableCell63.Text = "FPY\r\n合格(P)\r\n/次數";
            this.xrTableCell63.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell64
            // 
            this.xrTableCell64.Location = new System.Drawing.Point(45, 0);
            this.xrTableCell64.Multiline = true;
            this.xrTableCell64.Name = "xrTableCell64";
            this.xrTableCell64.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell64.Size = new System.Drawing.Size(39, 59);
            this.xrTableCell64.StylePriority.UseFont = false;
            this.xrTableCell64.StylePriority.UseTextAlignment = false;
            this.xrTableCell64.Text = "2PY(+)\r\n合格(P)\r\n/次數";
            this.xrTableCell64.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell65
            // 
            this.xrTableCell65.Location = new System.Drawing.Point(84, 0);
            this.xrTableCell65.Multiline = true;
            this.xrTableCell65.Name = "xrTableCell65";
            this.xrTableCell65.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell65.Size = new System.Drawing.Size(41, 59);
            this.xrTableCell65.StylePriority.UseFont = false;
            this.xrTableCell65.StylePriority.UseTextAlignment = false;
            this.xrTableCell65.Text = "Yield\r\nFailure\r\n通量\r\n不過";
            this.xrTableCell65.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell66
            // 
            this.xrTableCell66.Location = new System.Drawing.Point(125, 0);
            this.xrTableCell66.Multiline = true;
            this.xrTableCell66.Name = "xrTableCell66";
            this.xrTableCell66.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell66.Size = new System.Drawing.Size(50, 59);
            this.xrTableCell66.StylePriority.UseFont = false;
            this.xrTableCell66.StylePriority.UseTextAlignment = false;
            this.xrTableCell66.Text = "(P)\r\n合格\r\n/件數";
            this.xrTableCell66.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell67
            // 
            this.xrTableCell67.Location = new System.Drawing.Point(175, 0);
            this.xrTableCell67.Multiline = true;
            this.xrTableCell67.Name = "xrTableCell67";
            this.xrTableCell67.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell67.Size = new System.Drawing.Size(50, 59);
            this.xrTableCell67.StylePriority.UseFont = false;
            this.xrTableCell67.StylePriority.UseTextAlignment = false;
            this.xrTableCell67.Text = "(F)\r\n不合格\r\n/件數";
            this.xrTableCell67.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell69
            // 
            this.xrTableCell69.ForeColor = System.Drawing.Color.Black;
            this.xrTableCell69.Location = new System.Drawing.Point(266, 0);
            this.xrTableCell69.Multiline = true;
            this.xrTableCell69.Name = "xrTableCell69";
            this.xrTableCell69.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell69.Size = new System.Drawing.Size(58, 59);
            this.xrTableCell69.StylePriority.UseFont = false;
            this.xrTableCell69.StylePriority.UseForeColor = false;
            this.xrTableCell69.StylePriority.UseTextAlignment = false;
            this.xrTableCell69.Text = "(S)\r\n廢棄\r\n/件數";
            this.xrTableCell69.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTable1
            // 
            this.xrTable1.Location = new System.Drawing.Point(325, 108);
            this.xrTable1.Name = "xrTable1";
            this.xrTable1.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow1});
            this.xrTable1.Size = new System.Drawing.Size(51, 118);
            // 
            // xrTableRow1
            // 
            this.xrTableRow1.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell3});
            this.xrTableRow1.Name = "xrTableRow1";
            this.xrTableRow1.Size = new System.Drawing.Size(51, 118);
            this.xrTableRow1.StyleName = "ColHeaderCss";
            // 
            // xrTableCell3
            // 
            this.xrTableCell3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell3.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell3.Multiline = true;
            this.xrTableCell3.Name = "xrTableCell3";
            this.xrTableCell3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell3.Size = new System.Drawing.Size(51, 118);
            this.xrTableCell3.StyleName = "ColHeaderCss";
            this.xrTableCell3.StylePriority.UseBorders = false;
            this.xrTableCell3.Text = "\r\n\r\nAudit-\r\ned Qty\r\n己審定\r\n件數\r\n";
            // 
            // xrLabel11
            // 
            this.xrLabel11.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel11.Location = new System.Drawing.Point(275, 75);
            this.xrLabel11.Name = "xrLabel11";
            this.xrLabel11.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel11.Size = new System.Drawing.Size(125, 25);
            this.xrLabel11.StylePriority.UseFont = false;
            this.xrLabel11.StylePriority.UseTextAlignment = false;
            this.xrLabel11.Text = "Work Shop(車間)";
            this.xrLabel11.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrLabel10
            // 
            this.xrLabel10.Font = new System.Drawing.Font("Arial Unicode MS", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.xrLabel10.Location = new System.Drawing.Point(67, 74);
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
            this.lbl_Factory.Location = new System.Drawing.Point(192, 75);
            this.lbl_Factory.Name = "lbl_Factory";
            this.lbl_Factory.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_Factory.Size = new System.Drawing.Size(50, 25);
            this.lbl_Factory.StylePriority.UseFont = false;
            this.lbl_Factory.StylePriority.UseTextAlignment = false;
            this.lbl_Factory.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // lbl_WorkShop
            // 
            this.lbl_WorkShop.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_WorkShop.Location = new System.Drawing.Point(408, 75);
            this.lbl_WorkShop.Name = "lbl_WorkShop";
            this.lbl_WorkShop.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.lbl_WorkShop.Size = new System.Drawing.Size(58, 25);
            this.lbl_WorkShop.StylePriority.UseFont = false;
            this.lbl_WorkShop.StylePriority.UseTextAlignment = false;
            this.lbl_WorkShop.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrLabel3
            // 
            this.xrLabel3.Font = new System.Drawing.Font("Arial Unicode MS", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel3.Location = new System.Drawing.Point(242, 42);
            this.xrLabel3.Name = "xrLabel3";
            this.xrLabel3.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel3.Size = new System.Drawing.Size(625, 25);
            this.xrLabel3.StylePriority.UseFont = false;
            this.xrLabel3.StylePriority.UseTextAlignment = false;
            this.xrLabel3.Text = "巡检定工序报表";
            this.xrLabel3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // lbl_DataTo
            // 
            this.lbl_DataTo.Font = new System.Drawing.Font("Arial Unicode MS", 9F);
            this.lbl_DataTo.Location = new System.Drawing.Point(810, 75);
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
            this.xrLabel15.Location = new System.Drawing.Point(784, 75);
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
            this.lbl_DateForm.Location = new System.Drawing.Point(684, 75);
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
            this.xrLabel13.Location = new System.Drawing.Point(467, 75);
            this.xrLabel13.Name = "xrLabel13";
            this.xrLabel13.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel13.Size = new System.Drawing.Size(217, 25);
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
            this.xrTable2.Location = new System.Drawing.Point(50, 108);
            this.xrTable2.Name = "xrTable2";
            this.xrTable2.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTable2.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow3});
            this.xrTable2.Size = new System.Drawing.Size(275, 118);
            this.xrTable2.StyleName = "ColHeaderCss";
            this.xrTable2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableRow3
            // 
            this.xrTableRow3.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrTableCell19,
            this.xrTableCell20,
            this.xrTableCell34,
            this.xrTableCell14});
            this.xrTableRow3.Name = "xrTableRow3";
            this.xrTableRow3.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.xrTableRow3.Size = new System.Drawing.Size(275, 118);
            this.xrTableRow3.TextAlignment = DevExpress.XtraPrinting.TextAlignment.TopLeft;
            // 
            // xrTableCell19
            // 
            this.xrTableCell19.Location = new System.Drawing.Point(0, 0);
            this.xrTableCell19.Multiline = true;
            this.xrTableCell19.Name = "xrTableCell19";
            this.xrTableCell19.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell19.Size = new System.Drawing.Size(41, 118);
            this.xrTableCell19.StylePriority.UseFont = false;
            this.xrTableCell19.StylePriority.UseTextAlignment = false;
            this.xrTableCell19.Text = "Line\r\n組裝線";
            this.xrTableCell19.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell20
            // 
            this.xrTableCell20.Location = new System.Drawing.Point(41, 0);
            this.xrTableCell20.Multiline = true;
            this.xrTableCell20.Name = "xrTableCell20";
            this.xrTableCell20.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell20.Size = new System.Drawing.Size(147, 118);
            this.xrTableCell20.StylePriority.UseFont = false;
            this.xrTableCell20.StylePriority.UseTextAlignment = false;
            this.xrTableCell20.Text = "QN#\r\n數頁號";
            this.xrTableCell20.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell34
            // 
            this.xrTableCell34.Location = new System.Drawing.Point(188, 0);
            this.xrTableCell34.Multiline = true;
            this.xrTableCell34.Name = "xrTableCell34";
            this.xrTableCell34.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell34.Size = new System.Drawing.Size(38, 118);
            this.xrTableCell34.StylePriority.UseFont = false;
            this.xrTableCell34.StylePriority.UseTextAlignment = false;
            this.xrTableCell34.Text = "\r\nQN Qty\r\n數頁\r\n件數\r\n";
            this.xrTableCell34.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrTableCell14
            // 
            this.xrTableCell14.Borders = ((DevExpress.XtraPrinting.BorderSide)(((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell14.Location = new System.Drawing.Point(226, 0);
            this.xrTableCell14.Multiline = true;
            this.xrTableCell14.Name = "xrTableCell14";
            this.xrTableCell14.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell14.Size = new System.Drawing.Size(49, 118);
            this.xrTableCell14.StylePriority.UseBorders = false;
            this.xrTableCell14.StylePriority.UseFont = false;
            this.xrTableCell14.StylePriority.UseTextAlignment = false;
            this.xrTableCell14.Text = "No.\r\nof\r\nWF\r\n勞動者\r\n人數";
            this.xrTableCell14.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel1
            // 
            this.xrLabel1.Font = new System.Drawing.Font("Arial Unicode MS", 13F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.xrLabel1.Location = new System.Drawing.Point(17, 0);
            this.xrLabel1.Multiline = true;
            this.xrLabel1.Name = "xrLabel1";
            this.xrLabel1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel1.Size = new System.Drawing.Size(1100, 35);
            this.xrLabel1.StylePriority.UseFont = false;
            this.xrLabel1.StylePriority.UseTextAlignment = false;
            this.xrLabel1.Text = "Mobile Audit Operation Report\r\n";
            this.xrLabel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // Detail
            // 
            this.Detail.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrTable5});
            this.Detail.Height = 18;
            this.Detail.MultiColumn.Mode = DevExpress.XtraReports.UI.MultiColumnMode.UseColumnCount;
            this.Detail.Name = "Detail";
            this.Detail.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.Detail_BeforePrint);
            // 
            // xrTable5
            // 
            this.xrTable5.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable5.Location = new System.Drawing.Point(50, 0);
            this.xrTable5.Name = "xrTable5";
            this.xrTable5.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow7});
            this.xrTable5.Size = new System.Drawing.Size(1074, 18);
            this.xrTable5.StyleName = "ColContent";
            this.xrTable5.StylePriority.UseBorders = false;
            // 
            // xrTableRow7
            // 
            this.xrTableRow7.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableRow7.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xr_line,
            this.xrQNNo,
            this.xr_QnQty,
            this.xr_Workers,
            this.xr_chkqty,
            this.xr_passtimes,
            this.xr_repasstimes,
            this.xr_YieldFail,
            this.xr_p,
            this.xr_f,
            this.xr_u,
            this.xr_s,
            this.xrfpy,
            this.xr_lineper,
            this.xrgxs,
            this.xrkeycount,
            this.xrPlanQty,
            this.xrArrangeQty,
            this.xrUnCheckQty,
            this.xrzj,
            this.xrcj,
            this.xtzcs});
            this.xrTableRow7.Name = "xrTableRow7";
            this.xrTableRow7.Size = new System.Drawing.Size(1074, 18);
            this.xrTableRow7.StylePriority.UseBorders = false;
            // 
            // xr_line
            // 
            this.xr_line.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_line.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_line.Location = new System.Drawing.Point(0, 0);
            this.xr_line.Name = "xr_line";
            this.xr_line.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_line.Size = new System.Drawing.Size(42, 18);
            this.xr_line.StylePriority.UseBorders = false;
            this.xr_line.StylePriority.UseFont = false;
            this.xr_line.StylePriority.UseTextAlignment = false;
            this.xr_line.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrQNNo
            // 
            this.xrQNNo.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrQNNo.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrQNNo.Location = new System.Drawing.Point(42, 0);
            this.xrQNNo.Name = "xrQNNo";
            this.xrQNNo.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrQNNo.Size = new System.Drawing.Size(145, 18);
            this.xrQNNo.StylePriority.UseBorders = false;
            this.xrQNNo.StylePriority.UseFont = false;
            this.xrQNNo.StylePriority.UseTextAlignment = false;
            this.xrQNNo.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xr_QnQty
            // 
            this.xr_QnQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_QnQty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_QnQty.Location = new System.Drawing.Point(187, 0);
            this.xr_QnQty.Name = "xr_QnQty";
            this.xr_QnQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_QnQty.Size = new System.Drawing.Size(39, 18);
            this.xr_QnQty.StylePriority.UseBorders = false;
            this.xr_QnQty.StylePriority.UseFont = false;
            this.xr_QnQty.StylePriority.UseTextAlignment = false;
            this.xr_QnQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_Workers
            // 
            this.xr_Workers.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_Workers.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_Workers.Location = new System.Drawing.Point(226, 0);
            this.xr_Workers.Name = "xr_Workers";
            this.xr_Workers.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_Workers.Size = new System.Drawing.Size(49, 18);
            this.xr_Workers.StylePriority.UseBorders = false;
            this.xr_Workers.StylePriority.UseFont = false;
            this.xr_Workers.StylePriority.UseTextAlignment = false;
            this.xr_Workers.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_chkqty
            // 
            this.xr_chkqty.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_chkqty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_chkqty.Location = new System.Drawing.Point(275, 0);
            this.xr_chkqty.Name = "xr_chkqty";
            this.xr_chkqty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_chkqty.Size = new System.Drawing.Size(51, 18);
            this.xr_chkqty.StylePriority.UseBorders = false;
            this.xr_chkqty.StylePriority.UseFont = false;
            this.xr_chkqty.StylePriority.UseTextAlignment = false;
            this.xr_chkqty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_passtimes
            // 
            this.xr_passtimes.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_passtimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_passtimes.Location = new System.Drawing.Point(326, 0);
            this.xr_passtimes.Name = "xr_passtimes";
            this.xr_passtimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_passtimes.Size = new System.Drawing.Size(44, 18);
            this.xr_passtimes.StylePriority.UseBorders = false;
            this.xr_passtimes.StylePriority.UseFont = false;
            this.xr_passtimes.StylePriority.UseTextAlignment = false;
            this.xr_passtimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_repasstimes
            // 
            this.xr_repasstimes.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_repasstimes.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_repasstimes.Location = new System.Drawing.Point(370, 0);
            this.xr_repasstimes.Name = "xr_repasstimes";
            this.xr_repasstimes.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_repasstimes.Size = new System.Drawing.Size(39, 18);
            this.xr_repasstimes.StylePriority.UseBorders = false;
            this.xr_repasstimes.StylePriority.UseFont = false;
            this.xr_repasstimes.StylePriority.UseTextAlignment = false;
            this.xr_repasstimes.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_YieldFail
            // 
            this.xr_YieldFail.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_YieldFail.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_YieldFail.Location = new System.Drawing.Point(409, 0);
            this.xr_YieldFail.Name = "xr_YieldFail";
            this.xr_YieldFail.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_YieldFail.Size = new System.Drawing.Size(41, 18);
            this.xr_YieldFail.StylePriority.UseBorders = false;
            this.xr_YieldFail.StylePriority.UseFont = false;
            this.xr_YieldFail.StylePriority.UseTextAlignment = false;
            this.xr_YieldFail.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_p
            // 
            this.xr_p.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_p.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_p.Location = new System.Drawing.Point(450, 0);
            this.xr_p.Name = "xr_p";
            this.xr_p.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_p.Size = new System.Drawing.Size(50, 18);
            this.xr_p.StylePriority.UseBorders = false;
            this.xr_p.StylePriority.UseFont = false;
            this.xr_p.StylePriority.UseTextAlignment = false;
            this.xr_p.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_f
            // 
            this.xr_f.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_f.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_f.Location = new System.Drawing.Point(500, 0);
            this.xr_f.Name = "xr_f";
            this.xr_f.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_f.Size = new System.Drawing.Size(50, 18);
            this.xr_f.StylePriority.UseBorders = false;
            this.xr_f.StylePriority.UseFont = false;
            this.xr_f.StylePriority.UseTextAlignment = false;
            this.xr_f.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_u
            // 
            this.xr_u.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_u.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_u.Location = new System.Drawing.Point(550, 0);
            this.xr_u.Name = "xr_u";
            this.xr_u.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_u.Size = new System.Drawing.Size(41, 18);
            this.xr_u.StylePriority.UseBorders = false;
            this.xr_u.StylePriority.UseFont = false;
            this.xr_u.StylePriority.UseTextAlignment = false;
            this.xr_u.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_s
            // 
            this.xr_s.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_s.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xr_s.Location = new System.Drawing.Point(591, 0);
            this.xr_s.Name = "xr_s";
            this.xr_s.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_s.Size = new System.Drawing.Size(58, 18);
            this.xr_s.StylePriority.UseBorders = false;
            this.xr_s.StylePriority.UseFont = false;
            this.xr_s.StylePriority.UseTextAlignment = false;
            this.xr_s.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrfpy
            // 
            this.xrfpy.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrfpy.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrfpy.Location = new System.Drawing.Point(649, 0);
            this.xrfpy.Name = "xrfpy";
            this.xrfpy.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrfpy.Size = new System.Drawing.Size(54, 18);
            this.xrfpy.StylePriority.UseBorders = false;
            this.xrfpy.StylePriority.UseFont = false;
            this.xrfpy.StylePriority.UseTextAlignment = false;
            this.xrfpy.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_lineper
            // 
            this.xr_lineper.Borders = ((DevExpress.XtraPrinting.BorderSide)((DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_lineper.Location = new System.Drawing.Point(703, 0);
            this.xr_lineper.Name = "xr_lineper";
            this.xr_lineper.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_lineper.Size = new System.Drawing.Size(39, 18);
            this.xr_lineper.StylePriority.UseBorders = false;
            this.xr_lineper.StylePriority.UseTextAlignment = false;
            this.xr_lineper.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrgxs
            // 
            this.xrgxs.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrgxs.Location = new System.Drawing.Point(742, 0);
            this.xrgxs.Name = "xrgxs";
            this.xrgxs.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrgxs.Size = new System.Drawing.Size(45, 18);
            this.xrgxs.StylePriority.UseBorders = false;
            this.xrgxs.StylePriority.UseTextAlignment = false;
            this.xrgxs.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrkeycount
            // 
            this.xrkeycount.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrkeycount.Location = new System.Drawing.Point(787, 0);
            this.xrkeycount.Name = "xrkeycount";
            this.xrkeycount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrkeycount.Size = new System.Drawing.Size(54, 18);
            this.xrkeycount.StylePriority.UseBorders = false;
            this.xrkeycount.StylePriority.UseTextAlignment = false;
            this.xrkeycount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrPlanQty
            // 
            this.xrPlanQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrPlanQty.Location = new System.Drawing.Point(841, 0);
            this.xrPlanQty.Name = "xrPlanQty";
            this.xrPlanQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPlanQty.Size = new System.Drawing.Size(35, 18);
            this.xrPlanQty.StylePriority.UseBorders = false;
            this.xrPlanQty.StylePriority.UseTextAlignment = false;
            this.xrPlanQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrArrangeQty
            // 
            this.xrArrangeQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrArrangeQty.Location = new System.Drawing.Point(876, 0);
            this.xrArrangeQty.Name = "xrArrangeQty";
            this.xrArrangeQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrArrangeQty.Size = new System.Drawing.Size(48, 18);
            this.xrArrangeQty.StylePriority.UseBorders = false;
            this.xrArrangeQty.StylePriority.UseTextAlignment = false;
            this.xrArrangeQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrUnCheckQty
            // 
            this.xrUnCheckQty.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrUnCheckQty.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrUnCheckQty.Location = new System.Drawing.Point(924, 0);
            this.xrUnCheckQty.Name = "xrUnCheckQty";
            this.xrUnCheckQty.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrUnCheckQty.Size = new System.Drawing.Size(34, 18);
            this.xrUnCheckQty.StylePriority.UseBorders = false;
            this.xrUnCheckQty.StylePriority.UseFont = false;
            this.xrUnCheckQty.StylePriority.UseTextAlignment = false;
            this.xrUnCheckQty.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrzj
            // 
            this.xrzj.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrzj.Location = new System.Drawing.Point(958, 0);
            this.xrzj.Name = "xrzj";
            this.xrzj.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrzj.Size = new System.Drawing.Size(35, 18);
            this.xrzj.StylePriority.UseBorders = false;
            this.xrzj.StylePriority.UseTextAlignment = false;
            this.xrzj.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrcj
            // 
            this.xrcj.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrcj.Location = new System.Drawing.Point(993, 0);
            this.xrcj.Name = "xrcj";
            this.xrcj.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrcj.Size = new System.Drawing.Size(52, 18);
            this.xrcj.StylePriority.UseBorders = false;
            this.xrcj.StylePriority.UseTextAlignment = false;
            this.xrcj.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xtzcs
            // 
            this.xtzcs.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xtzcs.Location = new System.Drawing.Point(1045, 0);
            this.xtzcs.Name = "xtzcs";
            this.xtzcs.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xtzcs.Size = new System.Drawing.Size(29, 18);
            this.xtzcs.StylePriority.UseBorders = false;
            this.xtzcs.StylePriority.UseTextAlignment = false;
            this.xtzcs.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // ReportFooter
            // 
            this.ReportFooter.Controls.AddRange(new DevExpress.XtraReports.UI.XRControl[] {
            this.xrLabel4,
            this.xrTable3,
            this.xrAverage,
            this.xrLabel5});
            this.ReportFooter.Height = 151;
            this.ReportFooter.Name = "ReportFooter";
            this.ReportFooter.BeforePrint += new System.Drawing.Printing.PrintEventHandler(this.ReportFooter_BeforePrint);
            // 
            // xrLabel4
            // 
            this.xrLabel4.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrLabel4.Location = new System.Drawing.Point(8, 8);
            this.xrLabel4.Name = "xrLabel4";
            this.xrLabel4.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel4.Size = new System.Drawing.Size(25, 17);
            this.xrLabel4.StylePriority.UseFont = false;
            this.xrLabel4.StylePriority.UseTextAlignment = false;
            this.xrLabel4.Text = "Ttl:";
            this.xrLabel4.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // xrTable3
            // 
            this.xrTable3.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTable3.Location = new System.Drawing.Point(50, 8);
            this.xrTable3.Name = "xrTable3";
            this.xrTable3.Rows.AddRange(new DevExpress.XtraReports.UI.XRTableRow[] {
            this.xrTableRow2});
            this.xrTable3.Size = new System.Drawing.Size(1074, 18);
            this.xrTable3.StyleName = "ColContent";
            this.xrTable3.StylePriority.UseBorders = false;
            // 
            // xrTableRow2
            // 
            this.xrTableRow2.Borders = DevExpress.XtraPrinting.BorderSide.None;
            this.xrTableRow2.Cells.AddRange(new DevExpress.XtraReports.UI.XRTableCell[] {
            this.xrlinetotal,
            this.xrQNCount,
            this.col_qnqtyT,
            this.xrWorkerT,
            this.col_chkqtyT1,
            this.col_passtimesT1,
            this.col_repasstimesT1,
            this.col_YieldFailT,
            this.column_PT1,
            this.column_FT1,
            this.column_UT1,
            this.column_ST1,
            this.xrTableCell30,
            this.xr_gxttl,
            this.xrkeytotal,
            this.xrPlanT,
            this.xrArrangeT,
            this.xrUnCheckT,
            this.xrzjttl,
            this.xrcjttl,
            this.xrzcsttl});
            this.xrTableRow2.Name = "xrTableRow2";
            this.xrTableRow2.Size = new System.Drawing.Size(1074, 18);
            this.xrTableRow2.StylePriority.UseBorders = false;
            // 
            // xrlinetotal
            // 
            this.xrlinetotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrlinetotal.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrlinetotal.Location = new System.Drawing.Point(0, 0);
            this.xrlinetotal.Name = "xrlinetotal";
            this.xrlinetotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrlinetotal.Size = new System.Drawing.Size(42, 18);
            this.xrlinetotal.StylePriority.UseBorders = false;
            this.xrlinetotal.StylePriority.UseFont = false;
            this.xrlinetotal.StylePriority.UseTextAlignment = false;
            this.xrlinetotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrQNCount
            // 
            this.xrQNCount.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrQNCount.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrQNCount.Location = new System.Drawing.Point(42, 0);
            this.xrQNCount.Name = "xrQNCount";
            this.xrQNCount.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrQNCount.Size = new System.Drawing.Size(145, 18);
            this.xrQNCount.StylePriority.UseBorders = false;
            this.xrQNCount.StylePriority.UseFont = false;
            this.xrQNCount.StylePriority.UseTextAlignment = false;
            this.xrQNCount.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_qnqtyT
            // 
            this.col_qnqtyT.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_qnqtyT.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_qnqtyT.Location = new System.Drawing.Point(187, 0);
            this.col_qnqtyT.Name = "col_qnqtyT";
            this.col_qnqtyT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_qnqtyT.Size = new System.Drawing.Size(39, 18);
            this.col_qnqtyT.StylePriority.UseBorders = false;
            this.col_qnqtyT.StylePriority.UseFont = false;
            this.col_qnqtyT.StylePriority.UseTextAlignment = false;
            this.col_qnqtyT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrWorkerT
            // 
            this.xrWorkerT.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrWorkerT.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrWorkerT.Location = new System.Drawing.Point(226, 0);
            this.xrWorkerT.Name = "xrWorkerT";
            this.xrWorkerT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrWorkerT.Size = new System.Drawing.Size(49, 18);
            this.xrWorkerT.StylePriority.UseBorders = false;
            this.xrWorkerT.StylePriority.UseFont = false;
            this.xrWorkerT.StylePriority.UseTextAlignment = false;
            this.xrWorkerT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_chkqtyT1
            // 
            this.col_chkqtyT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_chkqtyT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_chkqtyT1.Location = new System.Drawing.Point(275, 0);
            this.col_chkqtyT1.Name = "col_chkqtyT1";
            this.col_chkqtyT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_chkqtyT1.Size = new System.Drawing.Size(51, 18);
            this.col_chkqtyT1.StylePriority.UseBorders = false;
            this.col_chkqtyT1.StylePriority.UseFont = false;
            this.col_chkqtyT1.StylePriority.UseTextAlignment = false;
            this.col_chkqtyT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_passtimesT1
            // 
            this.col_passtimesT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_passtimesT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_passtimesT1.Location = new System.Drawing.Point(326, 0);
            this.col_passtimesT1.Name = "col_passtimesT1";
            this.col_passtimesT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_passtimesT1.Size = new System.Drawing.Size(44, 18);
            this.col_passtimesT1.StylePriority.UseBorders = false;
            this.col_passtimesT1.StylePriority.UseFont = false;
            this.col_passtimesT1.StylePriority.UseTextAlignment = false;
            this.col_passtimesT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_repasstimesT1
            // 
            this.col_repasstimesT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_repasstimesT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_repasstimesT1.Location = new System.Drawing.Point(370, 0);
            this.col_repasstimesT1.Name = "col_repasstimesT1";
            this.col_repasstimesT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_repasstimesT1.Size = new System.Drawing.Size(39, 18);
            this.col_repasstimesT1.StylePriority.UseBorders = false;
            this.col_repasstimesT1.StylePriority.UseFont = false;
            this.col_repasstimesT1.StylePriority.UseTextAlignment = false;
            this.col_repasstimesT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // col_YieldFailT
            // 
            this.col_YieldFailT.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.col_YieldFailT.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.col_YieldFailT.Location = new System.Drawing.Point(409, 0);
            this.col_YieldFailT.Name = "col_YieldFailT";
            this.col_YieldFailT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.col_YieldFailT.Size = new System.Drawing.Size(41, 18);
            this.col_YieldFailT.StylePriority.UseBorders = false;
            this.col_YieldFailT.StylePriority.UseFont = false;
            this.col_YieldFailT.StylePriority.UseTextAlignment = false;
            this.col_YieldFailT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_PT1
            // 
            this.column_PT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_PT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_PT1.Location = new System.Drawing.Point(450, 0);
            this.column_PT1.Name = "column_PT1";
            this.column_PT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_PT1.Size = new System.Drawing.Size(50, 18);
            this.column_PT1.StylePriority.UseBorders = false;
            this.column_PT1.StylePriority.UseFont = false;
            this.column_PT1.StylePriority.UseTextAlignment = false;
            this.column_PT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_FT1
            // 
            this.column_FT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_FT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_FT1.Location = new System.Drawing.Point(500, 0);
            this.column_FT1.Name = "column_FT1";
            this.column_FT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_FT1.Size = new System.Drawing.Size(50, 18);
            this.column_FT1.StylePriority.UseBorders = false;
            this.column_FT1.StylePriority.UseFont = false;
            this.column_FT1.StylePriority.UseTextAlignment = false;
            this.column_FT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_UT1
            // 
            this.column_UT1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_UT1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_UT1.Location = new System.Drawing.Point(550, 0);
            this.column_UT1.Name = "column_UT1";
            this.column_UT1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_UT1.Size = new System.Drawing.Size(41, 18);
            this.column_UT1.StylePriority.UseBorders = false;
            this.column_UT1.StylePriority.UseFont = false;
            this.column_UT1.StylePriority.UseTextAlignment = false;
            this.column_UT1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // column_ST1
            // 
            this.column_ST1.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.column_ST1.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.column_ST1.Location = new System.Drawing.Point(591, 0);
            this.column_ST1.Name = "column_ST1";
            this.column_ST1.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.column_ST1.Size = new System.Drawing.Size(58, 18);
            this.column_ST1.StylePriority.UseBorders = false;
            this.column_ST1.StylePriority.UseFont = false;
            this.column_ST1.StylePriority.UseTextAlignment = false;
            this.column_ST1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrTableCell30
            // 
            this.xrTableCell30.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrTableCell30.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrTableCell30.Location = new System.Drawing.Point(649, 0);
            this.xrTableCell30.Name = "xrTableCell30";
            this.xrTableCell30.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrTableCell30.Size = new System.Drawing.Size(93, 18);
            this.xrTableCell30.StylePriority.UseBorders = false;
            this.xrTableCell30.StylePriority.UseFont = false;
            this.xrTableCell30.StylePriority.UseTextAlignment = false;
            this.xrTableCell30.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xr_gxttl
            // 
            this.xr_gxttl.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xr_gxttl.Location = new System.Drawing.Point(742, 0);
            this.xr_gxttl.Name = "xr_gxttl";
            this.xr_gxttl.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xr_gxttl.Size = new System.Drawing.Size(45, 18);
            this.xr_gxttl.StylePriority.UseBorders = false;
            this.xr_gxttl.StylePriority.UseTextAlignment = false;
            this.xr_gxttl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrkeytotal
            // 
            this.xrkeytotal.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrkeytotal.Location = new System.Drawing.Point(787, 0);
            this.xrkeytotal.Name = "xrkeytotal";
            this.xrkeytotal.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrkeytotal.Size = new System.Drawing.Size(54, 18);
            this.xrkeytotal.StylePriority.UseBorders = false;
            this.xrkeytotal.StylePriority.UseTextAlignment = false;
            this.xrkeytotal.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrPlanT
            // 
            this.xrPlanT.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrPlanT.Location = new System.Drawing.Point(841, 0);
            this.xrPlanT.Name = "xrPlanT";
            this.xrPlanT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrPlanT.Size = new System.Drawing.Size(35, 18);
            this.xrPlanT.StylePriority.UseBorders = false;
            this.xrPlanT.StylePriority.UseTextAlignment = false;
            this.xrPlanT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrArrangeT
            // 
            this.xrArrangeT.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrArrangeT.Location = new System.Drawing.Point(876, 0);
            this.xrArrangeT.Name = "xrArrangeT";
            this.xrArrangeT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrArrangeT.Size = new System.Drawing.Size(48, 18);
            this.xrArrangeT.StylePriority.UseBorders = false;
            this.xrArrangeT.StylePriority.UseTextAlignment = false;
            this.xrArrangeT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrUnCheckT
            // 
            this.xrUnCheckT.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrUnCheckT.Font = new System.Drawing.Font("Arial Unicode MS", 7F);
            this.xrUnCheckT.Location = new System.Drawing.Point(924, 0);
            this.xrUnCheckT.Name = "xrUnCheckT";
            this.xrUnCheckT.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrUnCheckT.Size = new System.Drawing.Size(34, 18);
            this.xrUnCheckT.StylePriority.UseBorders = false;
            this.xrUnCheckT.StylePriority.UseFont = false;
            this.xrUnCheckT.StylePriority.UseTextAlignment = false;
            this.xrUnCheckT.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrzjttl
            // 
            this.xrzjttl.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrzjttl.Location = new System.Drawing.Point(958, 0);
            this.xrzjttl.Name = "xrzjttl";
            this.xrzjttl.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrzjttl.Size = new System.Drawing.Size(35, 18);
            this.xrzjttl.StylePriority.UseBorders = false;
            this.xrzjttl.StylePriority.UseTextAlignment = false;
            this.xrzjttl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrcjttl
            // 
            this.xrcjttl.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrcjttl.Location = new System.Drawing.Point(993, 0);
            this.xrcjttl.Name = "xrcjttl";
            this.xrcjttl.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrcjttl.Size = new System.Drawing.Size(52, 18);
            this.xrcjttl.StylePriority.UseBorders = false;
            this.xrcjttl.StylePriority.UseTextAlignment = false;
            this.xrcjttl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrzcsttl
            // 
            this.xrzcsttl.Borders = ((DevExpress.XtraPrinting.BorderSide)((((DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top)
                        | DevExpress.XtraPrinting.BorderSide.Right)
                        | DevExpress.XtraPrinting.BorderSide.Bottom)));
            this.xrzcsttl.Location = new System.Drawing.Point(1045, 0);
            this.xrzcsttl.Name = "xrzcsttl";
            this.xrzcsttl.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrzcsttl.Size = new System.Drawing.Size(29, 18);
            this.xrzcsttl.StylePriority.UseBorders = false;
            this.xrzcsttl.StylePriority.UseTextAlignment = false;
            this.xrzcsttl.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleRight;
            // 
            // xrAverage
            // 
            this.xrAverage.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrAverage.Location = new System.Drawing.Point(725, 42);
            this.xrAverage.Name = "xrAverage";
            this.xrAverage.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrAverage.Size = new System.Drawing.Size(58, 17);
            this.xrAverage.StylePriority.UseFont = false;
            this.xrAverage.StylePriority.UseTextAlignment = false;
            this.xrAverage.Text = "xrAverage";
            this.xrAverage.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // xrLabel5
            // 
            this.xrLabel5.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.xrLabel5.Location = new System.Drawing.Point(8, 42);
            this.xrLabel5.Name = "xrLabel5";
            this.xrLabel5.Padding = new DevExpress.XtraPrinting.PaddingInfo(2, 2, 0, 0, 100F);
            this.xrLabel5.Size = new System.Drawing.Size(50, 17);
            this.xrLabel5.StylePriority.UseFont = false;
            this.xrLabel5.StylePriority.UseTextAlignment = false;
            this.xrLabel5.Text = "Wt.ave :";
            this.xrLabel5.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleLeft;
            // 
            // ColHeaderCss
            // 
            this.ColHeaderCss.Font = new System.Drawing.Font("Arial Unicode MS", 7F, System.Drawing.FontStyle.Bold);
            this.ColHeaderCss.Name = "ColHeaderCss";
            this.ColHeaderCss.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            this.ColHeaderCss.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            // 
            // ColContent
            // 
            this.ColContent.Font = new System.Drawing.Font("Arial Unicode MS", 6.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(134)));
            this.ColContent.Name = "ColContent";
            this.ColContent.Padding = new DevExpress.XtraPrinting.PaddingInfo(0, 0, 0, 0, 100F);
            // 
            // rptQC_MasterAnalyzeOPT3_Summary
            // 
            this.Bands.AddRange(new DevExpress.XtraReports.UI.Band[] {
            this.PageHeader,
            this.Detail,
            this.ReportFooter});
            this.Landscape = true;
            this.Margins = new System.Drawing.Printing.Margins(6, 20, 15, 24);
            this.PageHeight = 827;
            this.PageWidth = 1169;
            this.PaperKind = System.Drawing.Printing.PaperKind.A4;
            this.StyleSheet.AddRange(new DevExpress.XtraReports.UI.XRControlStyle[] {
            this.ColHeaderCss,
            this.ColContent});
            this.Version = "8.1";
            ((System.ComponentModel.ISupportInitialize)(this.xrTable12)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable11)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable10)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable5)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.xrTable3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this)).EndInit();

        }



        ArrayList _alline = new ArrayList();
        ArrayList _alproj = new ArrayList();
        ArrayList _alstyle = new ArrayList();
        ArrayList _alworker = new ArrayList();
        ArrayList _aloptcode = new ArrayList();

        int i = 1, j = 0;

        int total_zhenjian = 0, total_rechk = 0, total_chk = 0, auditqty = 0, passtime1 = 0, passtime2 = 0, p_total = 0, f_total = 0, u_total = 0, s_total = 0, qnqty_total = 0;
        int gxtotal = 0, total_worker = 0, opt_total = 0;
        int plan_total = 0, arrange_total = 0, uncheck_total = 0, firstpasschktotal = 0;
        int firstpasstime = 0;
        //rechecktimes/totalchecktimes

        string strline = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SubRptdata gbs = this.GetCurrentRow() as SubRptdata;
            if (gbs == null) return;
            j++;

            if (!_alline.Contains(gbs.Line))
                _alline.Add(gbs.Line);


            if (!_alworker.Contains(gbs.WkCount))
                _alworker.Add(gbs.WkCount);


            plan_total = plan_total + gbs.PlanCount;
            arrange_total = arrange_total + gbs.ArrangeCount;
            uncheck_total = uncheck_total + gbs.UnCheckCount;


            total_zhenjian = total_zhenjian + (gbs.CheckTimeCount - gbs.ReCheckTimeCount);
            total_rechk = total_rechk + gbs.ReCheckTimeCount;
            total_chk = total_chk + gbs.CheckTimeCount;

            auditqty = auditqty + gbs.ChkQtyCount;
            passtime1 = passtime1 + gbs.FpassCount;
            passtime2 = passtime2 + gbs.RpassCount;
            p_total = p_total + gbs.P_Qty;
            f_total = f_total + gbs.F_Qty;
            u_total = u_total + gbs.U_Qty;
            s_total = s_total + gbs.S_Qty;
            qnqty_total = qnqty_total + gbs.QN_Qty;

            gxtotal = gxtotal + gbs.GxTotal;
            total_worker = total_worker + gbs.WkCount;
            opt_total = opt_total + gbs.OptCount;


            // firstpasschktotal = firstpasschktotal + gbs.FirstPassQty; 17/3/3 remark
            firstpasstime = firstpasstime + gbs.FpassCount; // 17/3/3 合首次通過次數

            // total_fail=total_fail+()

            //  this.xr_first.Text = (gbs.CheckTimeCount - gbs.ReCheckTimeCount).ToString();
            this.xrzj.Text = (gbs.CheckTimeCount - gbs.ReCheckTimeCount).ToString();


            //  this.xr_first.Text = (gbs.CheckTimeCount - gbs.ReCheckTimeCount).ToString();
            xrfpy.Text = String.Format("{0:F}", gbs.FPY); //gbs.FPY.ToString();

            //xr_lineper.Text = String.Format("{0:F}", gbs.Per_Line);   //DataBindings.Add("Text", this.DataSource, "Per_Line", "{0:0.#}");

            this.xr_YieldFail.Text = (gbs.CheckTimeCount - gbs.FpassCount - gbs.RpassCount).ToString();
            this.xrPlanT.Text = plan_total.ToString();
            this.xrArrangeT.Text = arrange_total.ToString();
            this.xrUnCheckT.Text = uncheck_total.ToString();


            if (gbs.Line != strline)
            {

                //DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | 

                if (i < gbs.LineCount)
                {
                    xr_lineper.Text = "";
                    xr_lineper.Borders = (DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    i++;
                }
                else
                {
                    xr_lineper.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                    xr_lineper.Text = String.Format("{0:F}", gbs.Per_Line);
                    i = 1;
                }

            }
            else
            {
                if (i < gbs.LineCount)
                {

                    xr_lineper.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right);
                    xr_lineper.Text = "";
                    i++;
                }
                else
                {
                    xr_lineper.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Top | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                    xr_lineper.Text = String.Format("{0:F}", gbs.Per_Line);
                    i = 1;
                }
            }





        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            this.xrlinetotal.Text = _alline.Count.ToString();
            // this.xropttotal.Text = opt_total.ToString();
            //this.xrprojtotal.Text = _alproj.Count.ToString();

            // this.xrstyletotal.Text = _alstyle.Count.ToString();
            //   this.xrWorkers.Text = _alworker.Count.ToString();
            // this.xrstylettl.Text = _alstyle.Count.ToString();

            col_chkqtyT1.Text = auditqty.ToString();

            // xrtotalfirst.Text =total_zhenjian.ToString();

            // col_RechkT1.Text = total_rechk==0?"0":total_rechk.ToString();

            // col_totalchkT1.Text=total_chk==0?"0":total_chk.ToString();

            col_chkqtyT1.Text = auditqty == 0 ? "0" : auditqty.ToString();

            col_passtimesT1.Text = passtime1 == 0 ? "0" : passtime1.ToString();
            col_repasstimesT1.Text = passtime2 == 0 ? "0" : passtime2.ToString();
            column_PT1.Text = p_total == 0 ? "0" : p_total.ToString();
            column_FT1.Text = f_total == 0 ? "0" : f_total.ToString();
            column_UT1.Text = u_total == 0 ? "0" : u_total.ToString();

            column_ST1.Text = s_total == 0 ? "0" : s_total.ToString();
            col_YieldFailT.Text = (total_chk - passtime1 - passtime2).ToString();

            col_qnqtyT.Text = qnqty_total.ToString();


            xrzcsttl.Text = total_chk == 0 ? "0" : total_chk.ToString();
            xrzjttl.Text = total_zhenjian.ToString();
            xrcjttl.Text = total_rechk == 0 ? "0" : total_rechk.ToString();
            xr_gxttl.Text = gxtotal.ToString();

            SubRptdata gbs = this.GetCurrentRow() as SubRptdata;

            this.xrWorkerT.Text = gbs.WkTotal.ToString();


            // double aa= Convert.ToDouble(p_total * 100.00 /(p_total + f_total));

            //double aa = Convert.ToDouble(firstpasschktotal * 100.00 / FirstPassAuditTotal);
            // double aa =total_zhenjian==0 ?0: Convert.ToDouble(passtime1 * 100.00 / total_zhenjian); //改為以次數合計計算首通率            
            double aa = total_zhenjian == 0 ? 0 : Convert.ToDouble(this.TotalFirsPassTime * 100.00 / total_zhenjian); //改為以次數合計計算首通率            

            this.xrAverage.Text = String.Format("{0:F}", aa);
            xrQNCount.Text = j.ToString();

            xrkeytotal.Text = gbs.KeyTotal > 0 ? gbs.KeyTotal.ToString() : "";


            //Math.Round(Convert.ToDouble(p_total * 100 /(p_total + f_total)), 2).ToString()+"%";

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (Flag == "A" || Flag == "B")
            {
                //  xrLabel1.Text="Mobile Auditing Operation Report";
                // xrLabel3.Text ="巡检定工序报表";
                this.xrTableCell60.Text = "Audited Result 審定結果";
                this.xrTableCell3.Text = "\r\n\r\nAudited \r\n Qty\r\n己審定\r\n件數\r\n";
                this.xrTableCell78.Text = "No.of Audit (QN Dep.)\r\n正檢次數(數頁依靠)";
                this.xrTableCell85.Text = "Audit\r\n正檢";

            }
            else
            {

                //  xrLabel1.Text="Mobile Inspecting Operation Report";
                // xrLabel3.Text ="巡检查工序报表";
                this.xrTableCell60.Text = "Inspected Result 審查結果";
                this.xrTableCell3.Text = "\r\nInsp\r\nected\r\nQty\r\n己審查\r\n件數\r\n";

                this.xrTableCell78.Text = "No.of Inspect(QN Dep.)\r\n正檢次數(數頁依靠)";
                this.xrTableCell85.Text = "Inspec\r\n正檢";

            }
        }



    }
}
