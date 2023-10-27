using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;

namespace PH.LWPM.UI.WF.Report
{
    public partial class RptBaseData : DevExpress.XtraReports.UI.XtraReport
    {
        public RptBaseData(List<BaseCode> rptdata,string title)
        {
            InitializeComponent();
            this.bsBase.DataSource = rptdata;
            xrTitle.Text = title;

            this.tcSeqNo.Text = "Seq No.";
            if (title.Trim() == "Employee Grade") //”…Davidº”»Î
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
