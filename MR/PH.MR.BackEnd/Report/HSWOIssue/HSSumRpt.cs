using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MR.BackEnd.Report.HSWOIssue
{
    public partial class HSSumRpt : DevExpress.XtraReports.UI.XtraReport
    {

        public DateTime DTFrom
        {
            get;
            set;
        }

        public DateTime DTTO
        {
            get;
            set;
        }

        public HSSumRpt()
        {
            InitializeComponent();
        }

        private void HSSumRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.cellDate.Text = DTFrom.ToShortDateString() + "~" + DTTO.ToShortDateString();
        }

    }
}
