using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class rptQualityPerformance : DevExpress.XtraReports.UI.XtraReport
    {
        public string DateRange = "";
        public rptQualityPerformance()
        {
            InitializeComponent();
        }

        public rptQualityPerformance(string fac,string workshop,string line,string start,string end)
        {
            InitializeComponent();
            DateRange = start + " ~ " + end;
            PrepareData(fac, workshop, line, start, end);

        }


        public void PrepareData(string fac,string workshop,string line,string start,string end)
        {
            
            List<QualityPerformance> lst = SqlDataHelper.GetQualityPerformance(fac,workshop,line,start,end);
            this.bsPerf.DataSource = lst;
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

            xtcRange.Text = DateRange;
            QualityPerformance qpf = this.GetCurrentRow() as QualityPerformance;
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
                _total_per= String.Format("{0:F}", aa) + "%";
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
                _total_per= String.Format("{0:F}", aa) + "%";
            }
            else
                _total_per= "0.00%";

            xrPer_ttl.Text = _total_per;

        }
    }
}
