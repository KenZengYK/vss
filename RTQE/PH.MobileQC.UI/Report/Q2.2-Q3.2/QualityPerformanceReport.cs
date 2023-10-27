using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class QualityPerformanceReport : DevExpress.XtraReports.UI.XtraReport
    {
        public string DateRange = "";
        public QualityPerformanceReport()
        {
            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
        }

        public QualityPerformanceReport(string fac, string workshop, string line, string start, string end, string WeeklyOrMonthly,string AWeek)
        {
            InitializeComponent();

            ReportHelper reportHelper = WeeklyOrMonthly == "Weekly" ? new ReportHelper("00000016") : new ReportHelper("00000036");
            
             xrLabel10.Text = AWeek;
             if (WeeklyOrMonthly != "Weekly")
             {
                 xrTableCell86.Text = "";
             }
             xrLabel9.Visible= xrLabel10.Visible  = WeeklyOrMonthly == "Weekly" ;
            
            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.ReportCode;
            //xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            xrLabel1.Text = reportHelper.ReportInfo.ReportName_EN;
            xrLabel11.Text =reportHelper.ReportInfo.ReportName_CN;
            xrVerNo.Text = reportHelper.ReportInfo.VerNo;

            DateRange = start + " ~ " + end;
            xrFactory.Text = fac;
            xrDateRange.Text = DateRange;
            PrepareData(fac, workshop, line, start, end);
            xrLabel6.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }


        public void PrepareData(string fac, string workshop, string line, string start, string end)
        {
            fac = fac == "GX(GG+RX)" ? "GX" : fac;

            List<QualityPerformance> lst = SqlDataHelper.GetQualityPerformance(fac, workshop, line, start, end);
            this.bsPerf.DataSource = lst;

            List<QualityPerformanceOperationday> lstHead = SqlDataHelper.GetQualityOperationday(fac, workshop, line, start, end);
            this.bsHead.DataSource = lstHead;
            //IEnumerable<Proc_AuditorWorkResult> query = null;
            //query = from r in lst orderby r.StartTime.GetValueOrDefault() select r;

            //IEnumerable<Proc_AuditorWorkResult> query1 = null;
            //query1 = from r in lst orderby r.EndTime descending select r;

            //if (lst.Count > 0)
            //{
            //    _mintime = query.FirstOrDefault().StartTime.GetValueOrDefault();
            //    _maxtime = query1.FirstOrDefault().EndTime.GetValueOrDefault();
            //}

        }

        string Per_QA_Rej;
        string Per_AQL_Rej;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //xtcRange.Text = DateRange;
            QualityPerformance qpf = this.GetCurrentRow() as QualityPerformance;
            if (qpf == null)
                return;

            //AQL Rej%大于Moble QA Rej% 時顯示紅色，由david加入2019-06-06
            //Per_QA_Rej = this.GetCurrentColumnValue("Per_QA_Rej").ToString().Replace("%", "");
            //Per_AQL_Rej = this.GetCurrentColumnValue("Per_AQL_Rej").ToString().Replace("%", "");
            //if (Convert.ToDouble(Per_AQL_Rej) > Convert.ToDouble(Per_QA_Rej))
            //{
            //    xrTableCell31.ForeColor = Color.Red;
            //}
            //else
            //{
            //    xrTableCell31.ForeColor = Color.Black;
            //}


            string s1 = qpf.Per_QA_Rej;
            string s2 = qpf.Per_AQL_Rej;
            string s3 = qpf.Per_FAudit_Rej;
            string _total_per = "";
            //if (qpf == null) return;

            if (s1 != "0.00%" && s2 != "0.00%" && s3 != "0.00%")
            {
                double t1 = double.Parse(s1.Substring(0, 4));
                double t2 = double.Parse(s2.Substring(0, 4));
                double t3 = double.Parse(s3.Substring(0, 4));

                double aa = t1 + ((t2 + t3 / 2)) / 2;
                _total_per = String.Format("{0:F}", aa) + "%";
            }
            else if (s1 != "0.00%" && s2 != "0.00%" && s3 == "0.00%")
            {
                double t1 = double.Parse(s1.Substring(0, 4));
                double t2 = double.Parse(s2.Substring(0, 4));
                double aa = t1 + t2;
                _total_per = String.Format("{0:F}", aa) + "%";
            }
            else if (s1 != "0.00%" && s2 == "0.00%" && s3 != "0.00%")
            {
                double t1 = double.Parse(s1.Substring(0, 4));
                double t2 = double.Parse(s3.Substring(0, 4));
                double aa = t1 + t2 / 2;
                _total_per = String.Format("{0:F}", aa) + "%";
            }
            else
                _total_per = "0.00%";


            xrTableCell31.ForeColor = Convert.ToDouble(qpf.Per_AQL_Rej.Replace("%", "")) > 6.5 ? Color.Red : Color.Black;

            xrPer_ttl.Text = _total_per;

        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (string.IsNullOrEmpty(xrTableCell50.Text))
            //{
            //    xrTableCell52.Text = "0.00%";
            //}
            //else
            //{
            //    //xrTableCell52.Text = ((xrTableCell51.Text.ToString() == "" ? 0 : Convert.ToDecimal(xrTableCell51.Text.ToString())) / (xrTableCell50.Text.ToString() == "" ? 0 : Convert.ToDecimal(xrTableCell50.Text.ToString()))).ToString();
            //    xrTableCell52.Text =  (ConvertToDouble(xrTableCell51.Text) / ConvertToDouble(xrTableCell50.Text)).ToString("P");
            //}


            //string a=this.GetCurrentColumnValue("Qty_QA").ToString();
            //if (this.GetCurrentColumnValue("Qty_QA_Rej") != null && this.GetCurrentColumnValue("Qty_QA_Rej").ToString() != "" && this.GetCurrentColumnValue("headernumber").ToString() != "1")
            //{
            //    xrTableCell51.Text = "0";
            //}

            //if (this.GetCurrentColumnValue("Qty_AQL") != null && this.GetCurrentColumnValue("Qty_AQL").ToString() != "" && this.GetCurrentColumnValue("headernumber").ToString() != "1")
            //{
            //    xrTableCell53.Text = "0";
            //}


            //if (this.GetCurrentColumnValue("Qty_FAudit") != null && this.GetCurrentColumnValue("Qty_FAudit").ToString() != "" && this.GetCurrentColumnValue("headernumber").ToString() != "1")
            //{
            //    xrTableCell57.Text = "0";
            //}

            //if (this.GetCurrentColumnValue("Qty_FAudit_Rej") != null && this.GetCurrentColumnValue("Qty_FAudit_Rej").ToString() != "" && this.GetCurrentColumnValue("headernumber").ToString() != "1")
            //{
            //    xrTableCell58.Text = "0";
            //}

            //if (string.IsNullOrEmpty(xrTableCell50.Text))
            //{
            //    xrTableCell52.Text = "0.00%";
            //}
            //else
            //{
            //    xrTableCell52.Text = (ConvertToDouble(xrTableCell51.Text) / ConvertToDouble(xrTableCell50.Text)).ToString("P");
            //}

        }


        private void xrTableCell52_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            if (string.IsNullOrEmpty(xrTableCell50.Text))
            {
                e.Text = "0.00%";
            }
            else
            {
                e.Text = (SumRejectedQty / SumExaminedQty).ToString("P");
            }
            SumRejectedQty = SumExaminedQty = 0;
        }

        double SumExaminedQty = 0;
        private void xrTableCell50_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumExaminedQty += ConvertToDouble(e.Value.ToString());
        }

        double SumRejectedQty = 0;
        private void xrTableCell51_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumRejectedQty += ConvertToDouble(e.Value.ToString());
        }

        double ConvertToDouble(string AText)
        {
            if (string.IsNullOrEmpty(AText))
                return 0;

            try
            {
                return Convert.ToDouble(AText);
            }
            catch
            {
                return 0;
            }
        }


    }
}
