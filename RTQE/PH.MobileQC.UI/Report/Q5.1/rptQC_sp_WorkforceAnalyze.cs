using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Text;
using System.Data.Sql;
using System.Data.SqlClient;
using PH.MobileQC.BO;
using System.Drawing;
using PH.MobileQC.UI.RPT;

namespace PH.MobileQC.UI
{
    public partial class rptQC_sp_WorkforceAnalyze : DevExpress.XtraReports.UI.XtraReport
    {

        List<sp_WorkforceAnalyzeClass> Alist = new List<sp_WorkforceAnalyzeClass>();
        public rptQC_sp_WorkforceAnalyze()
        {
            InitializeComponent();
        }

        //public rptQC_sp_WorkforceAnalyze(string Factory, string Workshop, DateTime QC_timeForm, DateTime QC_timeTo, bool IsConformity)
        public rptQC_sp_WorkforceAnalyze(DataSet dt, string Factory, string Workshop, DateTime QC_timeForm, DateTime QC_timeTo, string symbol, string Grade, int IsWklyOrMthly)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("00000003");
            // xrVerName.Text = reportHelper.ReportInfo.VerName;
            // xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = IsWklyOrMthly == 0 ? reportHelper.ReportInfo.ReportCodeDaily : reportHelper.ReportInfo.ReportCodeWeekly;
            //xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            xrPublishedDateName.Text = reportHelper.ReportInfo.ReportCode;

            //string.Format(reportHelper.ReportInfo.ReportName_CN, 
            //cum over
            //string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID;

            //System.Data.DataSet dt = SqlDataHelper.EXECSP_sp_WorkforceAnalyze(Factory, Workshop, QC_timeForm, QC_timeTo, IsConformity);

            string title_En = GetSymbolGrade_En(symbol, Grade);
            string title_Cn = GetSymbolGrade_Cn(symbol, Grade);

            xrLabel3.Text = string.Format(reportHelper.ReportInfo.ReportName_CN, title_Cn, (IsWklyOrMthly == 0 ? "每週" : "每月"));

            xrLabel1.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, title_En, (IsWklyOrMthly == 0 ? "Wkly" : "Mthly"));

            //xrLabel1.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, title_En);

            xrTableCell8.Text = "# of WF/% " + title_En;
            //xrLabel1.Text = IsConformity ? "Action log - Evaluate WF Perf. - cum over " + Grade + " %" : "Action log - Evaluate WF Perf. - under " + Grade + " %";
            //xrLabel3.Text = IsConformity ? "追踪行動誌 - 評估工人表現 - " + Grade + "%及以上" : "追踪行動誌 - 評估工人表現 - " + Grade + "%以下";

            int foot99 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) >= 90.00 && Convert.ToDouble(dr["FPY"].ToString()) <= 99.99).Count();
            tc99.Text = foot99 == 0 ? "0" : foot99.ToString();

            int foot90 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) >= 80.00 && Convert.ToDouble(dr["FPY"].ToString()) < 90.00).Count();
            tc90.Text = foot90 == 0 ? "0" : foot90.ToString();

            int foot80 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) >= 70.00 && Convert.ToDouble(dr["FPY"].ToString()) < 80.00).Count();
            tc80.Text = foot80 == 0 ? "0" : foot80.ToString();

            int foot70 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) >= 60.00 && Convert.ToDouble(dr["FPY"].ToString()) < 70.00).Count();
            tc70.Text = foot70 == 0 ? "0" : foot70.ToString();

            int foot60 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) >= 50.00 && Convert.ToDouble(dr["FPY"].ToString()) < 60.00).Count();
            tc60.Text = foot60 == 0 ? "0" : foot60.ToString();

            int foot50 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) >= 40.00 && Convert.ToDouble(dr["FPY"].ToString()) < 50.00).Count();
            tc50.Text = foot50 == 0 ? "0" : foot50.ToString();


            int foot40 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) < 40.00).Count();
            tc40.Text = foot40 == 0 ? "0" : foot40.ToString();

            //Convert.ToDouble( dr["CheckQty"]).ToString()) * Convert.ToDouble( dr["FPY"]).ToString())  
            double checkQty = dt.Tables[0].AsEnumerable().Select(dr => Convert.ToDouble(dr["CheckQty"].ToString()) * Convert.ToDouble(dr["FPY"].ToString())).Sum();
            double checkQtySum = dt.Tables[0].AsEnumerable().Select(dr => Convert.ToDouble(dr["CheckQty"].ToString())).Sum();

            tcAve2.Text = Math.Round((checkQty / checkQtySum), 2).ToString();
            
            //xrLabel8.Text = Math.Round((checkQty / checkQtySum), 2).ToString();
            //Where(dr => Convert.ToDouble(dr["CheckQty"].ToString()) >= 50.00 && Convert.ToDouble(dr["FPY"].ToString()) < 60.00).Count();
            this.xrTtlWFID.Text = dt.Tables[1].Rows[0]["TotalEvaluteWorker"].ToString();

            xrWtAveRejectPer.Text = dt.Tables[1].Rows[0]["WtAveRejectPer"].ToString();
            xrGrandTtl.Text = dt.Tables[1].Rows[0]["GrandTtl"].ToString();
            xrGrandTtlPer.Text = dt.Tables[1].Rows[0]["GrandTtlPer"].ToString();

            this.xrTtlWFIDPer.Text = "(" + Math.Round(Convert.ToDouble(dt.Tables[1].Rows[0]["TotalEvaluteWorkerPer"].ToString()), 2).ToString() + "%)";

            xrTtlWF1.Text = dt.Tables[1].Rows[0]["TotalEvaluteWorker"].ToString();
            xrTableCell9.Text = "(" + Math.Round(Convert.ToDouble(dt.Tables[1].Rows[0]["TotalEvaluteWorkerPer"].ToString()), 2).ToString() + "%)";

            //修改90 ~ 100 FPY的算法，需要包括100的數據在內， 由David修改 2023-08-08
            int foot100 = dt.Tables[0].AsEnumerable().Where(dr => Convert.ToDouble(dr["FPY"].ToString()) >= 90.00 && Convert.ToDouble(dr["FPY"].ToString()) <= 100.00).Count();
            tc100.Text = (Convert.ToInt32(dt.Tables[1].Rows[0]["TotalWorker"]) - foot99 - foot90 - foot80 - foot70 - foot60 - foot50 - foot40).ToString();

            tcAve.Text = dt.Tables[1].Rows[0]["TotalWorker"].ToString();

            //由David加入WF百分比计算 2023-08-21
            tc100Per.Text = (1.0000 * Convert.ToInt32(tc100.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tc99Per.Text = (1.0000 * Convert.ToInt32(tc99.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tc90Per.Text = (1.0000 * Convert.ToInt32(tc90.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tc80Per.Text = (1.0000 * Convert.ToInt32(tc80.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tc70Per.Text = (1.0000 * Convert.ToInt32(tc70.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tc60Per.Text = (1.0000 * Convert.ToInt32(tc60.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tc50Per.Text = (1.0000 * Convert.ToInt32(tc50.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tc40Per.Text = (1.0000 * Convert.ToInt32(tc40.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");
            tcAvePer.Text = (1.0000 * Convert.ToInt32(tcAve.Text) / Convert.ToInt32(tcAve.Text)).ToString("P");


            Alist = dt.Tables[0].AsEnumerable().Select(dr => new sp_WorkforceAnalyzeClass
           {
               Worker = dr["Worker"].ToString(),
               IsOnDuty = dr["IsOnDuty"].ToString(),
               WorkerName = dr["WorkerName"].ToString(),
               CheckQty = Convert.ToInt32(dr["CheckQty"].ToString()),
               PQty = Convert.ToInt32(dr["PQty"].ToString()),
               FQty = Convert.ToInt32(dr["FQty"].ToString()),
               UQty = Convert.ToInt32(dr["UQty"].ToString()),
               SQty = Convert.ToInt32(dr["SQty"].ToString()),
               CheckCount = Convert.ToInt32(dr["CheckCount"].ToString()),
               RejCount = Convert.ToInt32(dr["RejCount"].ToString()),
               PassCount = Convert.ToInt32(dr["PassCount"].ToString()),
               FPY = Convert.ToDouble(dr["FPY"].ToString()),
               DefectCount = Convert.ToInt32(dr["DefectCount"].ToString()),
               Defect = dr["Defect"].ToString(),
               ReAuditCount = Convert.ToInt32(dr["ReAuditCount"].ToString()),
               ReAuditPassCount = Convert.ToInt32(dr["ReAuditPassCount"].ToString()),
               OutstandingCount = Convert.ToInt32(dr["OutstandingCount"].ToString()),
               FPYRank = Convert.ToInt32(dr["FPYRank"].ToString()),

           }).ToList();



            this.bindingSource1.DataSource = Alist;
            this.lbl_Factory.Text = Factory;
            this.xrLabel2.Text = Workshop; //QNNo;
            this.lbl_DateForm.Text = QC_timeForm.ToString("yyyy-MM-dd");
            this.lbl_DataTo.Text = QC_timeTo.ToString("yyyy-MM-dd");
            this.xrPrintDate.Text = DateTime.Now.ToString("yyyy-MM-dd");


            rptQC_sp_WorkforceAnalyze_sub subRpt = new rptQC_sp_WorkforceAnalyze_sub(dt);
            xrSubreport1.ReportSource = subRpt;


            //this.column_WFID.DataBindings.Add("Text", this.DataSource, "Worker");
            //this.column_WFName.DataBindings.Add("Text", this.DataSource, "WorkerName");
            //this.column_CheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty", "{0:0.#}");
            //this.column_P.DataBindings.Add("Text", this.DataSource, "PQty", "{0:0.#}");
            //this.column_F.DataBindings.Add("Text", this.DataSource, "FQty", "{0:0.#}");
            //this.column_U.DataBindings.Add("Text", this.DataSource, "UQty", "{0:0.#}");
            //this.column_S.DataBindings.Add("Text", this.DataSource, "SQty", "{0:0.#}");
            //this.column_FPY.DataBindings.Add("Text", this.DataSource, "FPY");
            //this.column_DefectCount.DataBindings.Add("Text", this.DataSource, "DefectCount");
            //this.column_Defect.DataBindings.Add("Text", this.DataSource, "Defect");
            //this.column_CheckCount.DataBindings.Add("Text", this.DataSource, "CheckCount");
            //this.column_RejCount.DataBindings.Add("Text", this.DataSource, "RejCount");

            ////this.xrTtlWFID.DataBindings.Add("Text", this.DataSource, "Worker");
            //this.xrTtlCheckQty.DataBindings.Add("Text", this.DataSource, "CheckQty");
            //this.xrActive.DataBindings.Add("Text", this.DataSource, "IsOnDuty");

            //this.xrTtlPassQty.DataBindings.Add("Text", this.DataSource, "PQty");
            //this.xrTtlF.DataBindings.Add("Text", this.DataSource, "FQty");
            //this.xrTtlU.DataBindings.Add("Text", this.DataSource, "UQty");
            //this.xrTtlS.DataBindings.Add("Text", this.DataSource, "SQty");







        }
        /*
          string title_En = IsConformity ? "cum over " + Grade + " %" : "below " + Grade + "%";
            string title_Cn = IsConformity ? Grade + "%及以上" : Grade + "%以下";
         */
        public string GetSymbolGrade_En(string Aymbol, string Grade)
        {
            string OutText = "";

            if (Aymbol == ">")
            {
                OutText = "over " + Grade + " %";
            }
            else if (Aymbol == ">=")
            {
                OutText = "over or equal " + Grade + " %";
            }
            else if (Aymbol == "<")
            {
                OutText = "below " + Grade + " %";
            }
            else if (Aymbol == "<=")
            {
                OutText = "below or equal " + Grade + " %";
            }
            else
            {
                OutText = "equal " + Grade + " %";
            }

            return OutText;
        }


        public string GetSymbolGrade_Cn(string Aymbol, string Grade)
        {
            string OutText = "";

            if (Aymbol == ">")
            {
                OutText = Grade + "%以上";
            }
            else if (Aymbol == ">=")
            {
                OutText = Grade + "%及以上";
            }
            else if (Aymbol == "<")
            {
                OutText = Grade + "%以下";
            }
            else if (Aymbol == "<=")
            {
                OutText = Grade + "%及以下";
            }
            else
            {
                OutText = "等于" + Grade + "%";
            }

            return OutText;
        }




        string FPYFirst = "", FPYSecond = "";
        Color PreviousColor;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            FPYFirst = this.GetCurrentColumnValue("FPY").ToString();
            if (FPYSecond == "")
            {
                FPYSecond = FPYFirst;
                PreviousColor = Color.FromArgb(239, 251, 251);
            }

            if (FPYFirst == FPYSecond)
            {
                this.Detail.BackColor = PreviousColor;
                PreviousColor = this.Detail.BackColor;
                FPYSecond = FPYFirst;
            }
            else
            //System.Drawing.Color.FromArgb(((int)(((byte)(228)))), ((int)(((byte)(223)))), ((int)(((byte)(236)))));
            {
                this.Detail.BackColor = PreviousColor == Color.FromArgb(239, 251, 251) ? Color.White : Color.FromArgb(239, 251, 251);
                PreviousColor = this.Detail.BackColor;
                FPYSecond = FPYFirst;
            }

        }


    }
}
