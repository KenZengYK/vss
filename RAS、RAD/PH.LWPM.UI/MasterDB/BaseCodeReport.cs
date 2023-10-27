using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;

namespace PH.LWPM.UI.MasterDB
{
    public partial class BaseCodeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public BaseCodeReport(List<object> AReportData, string AReportTitle)
        {
            InitializeComponent();
            this.bsBase.DataSource = AReportData;
            xrTitle.Text = AReportTitle;

            this.tcSeqNo.Text = "Seq No.";

            if (string.IsNullOrEmpty(AReportTitle)) return;

            if (AReportTitle.Trim() == "Employee Grade") //”…Davidº”»Î
            {
                this.tcSeqNo.Text = "Grading";
            }

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrDT.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

    }
}
