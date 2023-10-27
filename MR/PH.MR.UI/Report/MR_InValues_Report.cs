using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MR.UI.Report
{
    public partial class MR_InValues_Report : DevExpress.XtraReports.UI.XtraReport
    {
        public string Project;
        public MR_InValues_Report()
        {
            InitializeComponent();
        }

        private void TopMargin_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrlprjno.Text = this.Project;
            this.xrlPrintDate.Text = DateTime.Now.ToShortDateString();
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

    }
}
