using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Linq;
using System.Collections.Generic;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptAuditWorkAnalysis : DevExpress.XtraReports.UI.XtraReport
    {

        string QueryDate, Factory, Flag;
        ReportHelper reportHelper; // = new ReportHelper("00000005");

        public rptAuditWorkAnalysis()
        {
            InitializeComponent();
        }

        public rptAuditWorkAnalysis(string execdate)
        {
            InitializeComponent();


            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.ReportCode;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            //xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            QueryDate = execdate;
            PrepareData();
        }
        
        public rptAuditWorkAnalysis(string execdate, string factory, string flag)
        {
            InitializeComponent();

            if (flag == "A")
            {
                reportHelper = new ReportHelper("00000005");
            }
            else
            {
                reportHelper = new ReportHelper("00000035");
            }


            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext; 
            xrPublishedDateText.Text = reportHelper.ReportInfo.ReportCode;
            //xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            QueryDate = execdate;
            Factory = factory;
            Flag = flag;
            PrepareData();
            xrLabel4.Text = DateTime.Now.ToString("yyy/MM/dd");
        }

        DateTime _maxtime, _mintime;
        List<Proc_AuditorWorkResult> lst;
        public void PrepareData()
        {
            lst = SqlDataHelper.GetAuditWorkingcData(QueryDate, Factory, Flag);
            this.bsAudit.DataSource = lst;
            IEnumerable<Proc_AuditorWorkResult> query = null;
            query = from r in lst orderby r.StartTime.GetValueOrDefault() select r;

            IEnumerable<Proc_AuditorWorkResult> query1 = null;
            query1 = from r in lst orderby r.EndTime descending select r;

            if (lst.Count > 0)
            {
                _mintime = query.FirstOrDefault().StartTime.GetValueOrDefault();
                _maxtime = query1.FirstOrDefault().EndTime.GetValueOrDefault();
            }

        }



        int i = 0;
        int _yt_ttl = 0, _yb_ttl = 0, _reauditttl = 0, _chkttl = 0, _zjttl = 0;
        double _TTLHr = 0.00;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Proc_AuditorWorkResult awr = this.GetCurrentRow() as Proc_AuditorWorkResult;
            if (awr == null) return;

            if (i == 0)
            {
                xrDT.Text = QueryDate;
                i = 1;
            }
            else
                xrDT.Text = "";


            xrYb.Text = (awr.ReauditTimes - awr.ReauditTimes_Yt).ToString();

            _reauditttl = _reauditttl + awr.ReauditTimes;

            _yt_ttl = _yt_ttl + awr.ReauditTimes_Yt;
            _yb_ttl = _yb_ttl + (awr.ReauditTimes - awr.ReauditTimes_Yt);

            _TTLHr += awr.TotalHourShow;
            _chkttl = _chkttl + awr.AllTimes;
            _zjttl = _zjttl + awr.FormalTimes;


            xrAuditor.Text = awr.Auditor + " (" + awr.WorkShop + ")";

            DateTime _d1 = awr.StartTime.GetValueOrDefault();
            DateTime _d2 = awr.EndTime.GetValueOrDefault();

            //xrTimeRange.Text = (_d1 != null ? _d1.ToString("HH:mm") : "") + " - " + (_d2 != null ? _d2.ToString("HH:mm") : "");

            double aa = Convert.ToDouble(awr.ReauditTimes * 100.00 / awr.AllTimes);

            this.xrPer.Text = String.Format("{0:F}", aa) + "%";


            if (Convert.ToInt32(this.GetCurrentColumnValue("AllTimes").ToString()) > Convert.ToInt32(this.GetCurrentColumnValue("ExamTotalTime").ToString()))
            {
                xrTableCell13.ForeColor = Color.Green;
            }
            else if (Convert.ToInt32(this.GetCurrentColumnValue("AllTimes").ToString()) < Convert.ToInt32(this.GetCurrentColumnValue("ExamTotalTime").ToString()))
            {
                xrTableCell13.ForeColor = Color.Red;
            }
            else
            {
                xrTableCell13.ForeColor = Color.Black;
            }

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (lst.Count == 0) return;

            this.xrYt_ttl.Text = _yt_ttl.ToString();
            this.xrYb_ttl.Text = _yb_ttl.ToString();


            this.xrZjttl.Text = _zjttl.ToString();
            this.xrchkttl.Text = _chkttl.ToString();

            //String.Format("{0:N2}",  (_TTLHr * 60 / _chkttl).ToString()) 
            this.xrTableCell31.Text = decimal.Round(decimal.Parse((_TTLHr * 60 / _chkttl).ToString()), 2).ToString() + " min.";
            //this.xrTimeTotal.Text = _mintime.ToString("HH:mm") + " - " + _maxtime.ToString("HH:mm");

            if (_chkttl == 0)
                xrPerttl.Text = "0";
            else
            {
                double aa = Convert.ToDouble(_reauditttl * 100.00 / _chkttl);
                xrPerttl.Text = String.Format("{0:F}", aa) + "%";
            }


        }

        private void rptAuditWorkAnalysis_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrFac.Text = Factory;

            xrLabel5.Text = reportHelper.ReportInfo.ReportName_CN;
            xrLabel2.Text = reportHelper.ReportInfo.ReportName_EN;


            //if (Flag == "A")
            //{
            //    xrLabel5.Text = reportHelper.ReportInfo.ReportName_CN + "巡審定";
            //    xrLabel2.Text = reportHelper.ReportInfo.ReportName_EN + "Mobile Audit";
            //    //xrLabel2.Text = "巡審定員工作分析報告";
            //    //xrTableCell11.Text = "巡審定員";

            //    //xrTableCell3.Text = "重審定 ( A )";
            //    //xrTableCell25.Text = "己審定總數";
            //    //xrTableCell26.Text = "重審定比率";
            //}
            //else
            //{
            //    xrLabel5.Text = reportHelper.ReportInfo.ReportName_CN + "巡審查";
            //    xrLabel2.Text = reportHelper.ReportInfo.ReportName_EN + "Mobile Inspection";
            //    //    xrLabel2.Text = "巡審查拉長工作分析報告";
            //    //    xrTableCell11.Text = "巡審查拉長";

            //    //    xrTableCell3.Text = "重審查 ( A )";
            //    //    xrTableCell25.Text = "己審查總數";
            //    //    xrTableCell26.Text = "重審查比率";
            //}
        }



    }
}
