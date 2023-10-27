using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.Reports.SL.PO.POHeader
{
    public partial class RptPOHeader_Domestic : DevExpress.XtraReports.UI.XtraReport
    {
        public RptPOHeader_Domestic()
        {
            InitializeComponent();
        }


        int _headerprintcount = 0;
        private void xrTabCompanyInfo_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

        }

    }
}
