using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MR.UI.Report
{
    public partial class MR_InQty_Report : DevExpress.XtraReports.UI.XtraReport
    {

        public string ProjectNum;
        public MR_InQty_Report()
        {
            InitializeComponent();
        }

        private void xrTable1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void MR_InQty_Report_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrlProj.Text = ProjectNum;
            this.xrlPrintDate.Text = DateTime.Now.ToShortDateString();
        }

    }
}
