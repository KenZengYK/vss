using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;

namespace PH.LWPM.UI.WF.Report
{
    public partial class RECReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RECReport(List<BaseCode> rptdata)
        {
            InitializeComponent();
            this.bsBase.DataSource = rptdata;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrDT.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

    }
}
