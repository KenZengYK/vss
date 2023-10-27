using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Data.Linq;
using System.Linq;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI.AQL
{
    public partial class RptFullQualityPerfomance : DevExpress.XtraReports.UI.XtraReport
    {
        string Fac = "", StartDate = "", EndDate = "", CustList = "", WsList = "";
        //int WkNum = 0;
        string  WkNum = "0";
        public RptFullQualityPerfomance(string fac, string startdate, string enddate, string custlist, string wslist, string  wknum)//int wknum)
        {
            InitializeComponent();

            List<FullAuditPerformance> _lst = SqlDataHelper.GetFullAuditQualitySummary(fac, startdate, enddate, custlist, wslist);
            StartDate = startdate.Substring(0, 4) + "-" + startdate.Substring(5, 2) + "-" + startdate.Substring(8, 2);
            EndDate = enddate.Substring(0, 4) + "-" + enddate.Substring(5, 2) + "-" + enddate.Substring(8, 2);
            CustList = custlist;
            Fac = fac;
            this.bsPerf.DataSource = _lst;
            WkNum = wknum;

        }


        private void BindFields()
        {
            //this.xrTableCell35.DataBindings.Add("Text", this.bsDetail, "F01");
            //this.xrTableCell28.DataBindings.Add("Text", this.bsDetail, "F02");
        }

        private void PrepareData()
        { 
        
        }

        private void RptFullQualityPerfomance_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrlDT.Text = "Date From: " + StartDate + "   To : " + EndDate;
            xrlWeek.Text = "Week :" + WkNum.ToString();
            
            //string _dt = DateTime.Now.ToShortDateString();
            //string _pdate = _dt.Substring(0, 4) + "-" + _dt.Substring(5, 2) + "-" + _dt.Substring(8, 2);
            //xrlFactory.Text = Fac;
            //xrPrintDT.Text = "Printed On:" + _pdate;

            xrPrintDT.Text = "Printed On:" + DateTime.Now.ToString("yyyy-MM-dd");  //2018-01-15由David修正,上面的寫法在2018-1-5這種設置的Citrix上會報錯

            xrLabel2.Text =CustList + " - Weekly Garments Off-line Full Audit Quality Performance Report Summary";
        }

        private void xrLWs_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            FullAuditPerformance _current = this.GetCurrentRow() as FullAuditPerformance;
            if (_current == null)
                return;

            xrLWs.Text = "Ws: "+_current.Workshop;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrTableCell75.Text = WkNum.ToString() ;
        }

    }
}
