using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class rptQualityPerformance_V1 : DevExpress.XtraReports.UI.XtraReport
    {
        public string DateRange = "";
        public rptQualityPerformance_V1()
        {
            InitializeComponent();
        }

        public rptQualityPerformance_V1(string fac, string workshop, string line, string start, string end)
        {
            InitializeComponent();
            DateRange = start + " ~ " + end;
            xrFactory.Text = fac;
            xrDateRange.Text = DateRange;
            PrepareData(fac, workshop, line, start, end);
        }


        public void PrepareData(string fac, string workshop, string line, string start, string end)
        {

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

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //xtcRange.Text = DateRange;
            QualityPerformance qpf = this.GetCurrentRow() as QualityPerformance;
            if (qpf == null)
                return;


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
