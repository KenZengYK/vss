using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using System.Data;
using System.Data.Linq;
using System.Collections.Generic;

namespace PH.MR.BackEnd.Report.HSWOIssue
{
    public partial class HSWOIssueBalanceRpt : DevExpress.XtraReports.UI.XtraReport
    {

        public List<HSWOIssueBalance> RptSource
        {
            get;
            set;
        }

        public HSWOIssueBalanceRpt()
        {
            InitializeComponent();
        }

        private void HSWOIssueBalanceRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            List<HSWOIssueBalance> summaryList = new List<HSWOIssueBalance>();
            foreach (HSWOIssueBalance boDetail in this.RptSource)
            {
                HSWOIssueBalance summaryBO = summaryList.Where(p => p.IssueNO == boDetail.IssueNO 
                                                                 && p.ProjectNO == boDetail.ProjectNO
                                                                 && p.WorkOrder == boDetail.WorkOrder).FirstOrDefault();
                if (summaryBO == null)
                {
                    summaryBO = new HSWOIssueBalance();
                    summaryBO.IssueNO = boDetail.IssueNO;
                    summaryBO.ProjectNO = boDetail.ProjectNO;
                    summaryBO.WorkOrder = boDetail.WorkOrder;
                    summaryBO.WOQty = boDetail.WOQty;
                    summaryBO.IssueDate = boDetail.IssueDate;
                    summaryBO.IsReceived = boDetail.IsReceived;
                    summaryBO.ReceiveDate = boDetail.ReceiveDate;

                    summaryList.Add(summaryBO);
                }  
            }
            this.DataSource = summaryList;
        } 

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            HSWOIssueBalance bo = this.GetCurrentRow() as HSWOIssueBalance;
            if (bo == null)
            {
                this.xrSubreport_Detail.ReportSource = null;
                return;
            }

            if (bo.IsReceived == "Y")
            {
                xrSubreport_Detail.Visible = false;
            }

            if (bo.IsReceived == "N")
            {
                xrSubreport_Detail.Visible = true;
            }
            HSWOIssueBalanceDetailRpt rpt = new HSWOIssueBalanceDetailRpt();
            List<HSWOIssueBalance> detailList = this.RptSource.Where(p => p.IssueNO == bo.IssueNO && p.ProjectNO == bo.ProjectNO && p.WorkOrder == bo.WorkOrder).ToList();
            rpt.DataSource = detailList;
            this.xrSubreport_Detail.ReportSource = rpt;
            this.xrSubreport_Detail.ResumeLayout();

        }
    }
}
