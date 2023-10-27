using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.MR.BackEnd
{
    public partial class DetailListingPPWs : DevExpress.XtraReports.UI.XtraReport
    {
        public DetailListingPPWs()
        {
            InitializeComponent();
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //ReportDataBanding banding = new ReportDataBanding(this);
           
        }
    }
}
