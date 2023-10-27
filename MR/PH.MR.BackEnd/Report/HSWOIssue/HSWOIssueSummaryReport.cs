using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MR.BO;
using System.Data.Linq;
using System.Linq;

namespace PH.MR.BackEnd.Report.HSWOIssue
{
    public partial class HSWOIssueSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        //Xsj:報表類型
        public string RptType = "";
        //Xsj:報表數據源
        public List<PH.MR.BO.MRHSCodeRptBO> HeaderBOList = new List<MRHSCodeRptBO>();

        public HSWOIssueSummaryReport()
        {
            InitializeComponent();
        } 

        private void HSWOIssueSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.DataSource = HeaderBOList[0].SummaryList;
            this.GroupFooter_Detail.Visible = (this.RptType == "detail");
        } 

        private void GroupFooter_Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.RptType != "detail") return;

            MRHSCodeSummaryRptBO bo = this.GetCurrentRow() as MRHSCodeSummaryRptBO;
            if (bo == null)
            {
                this.xrSubreport_Detail.ReportSource = null;
                return;
            }
            HSWOIssueDetailReport detailRpt = new HSWOIssueDetailReport();
            detailRpt.DataSource = HeaderBOList[0].DetailList.Where(p=>p.WONO==bo.WONO).ToList();
            this.xrSubreport_Detail.ReportSource = detailRpt;
            this.xrSubreport_Detail.ResumeLayout();
        }

        private void GroupFooter_Detail_AfterPrint(object sender, EventArgs e)
        { 
            this.xrSubreport_Detail.ReportSource = null;
            this.xrSubreport_Detail.ResumeLayout();
        }


    }
}
