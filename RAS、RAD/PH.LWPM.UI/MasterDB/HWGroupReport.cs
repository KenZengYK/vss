using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;

namespace PH.LWPM.UI.MasterDB
{
    public partial class HWGroupReport : DevExpress.XtraReports.UI.XtraReport
    {
        public HWGroupReport(List<object> AReportData)
        {
            InitializeComponent();
            this.bsBase.DataSource = AReportData;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrDT.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

    }
}
