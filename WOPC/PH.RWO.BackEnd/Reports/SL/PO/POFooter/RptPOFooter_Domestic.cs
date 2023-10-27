using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.Reports.SL.PO.POFooter
{
    public partial class RptPOFooter_Domestic : DevExpress.XtraReports.UI.XtraReport
    {

        public string Header, HedarConfirmDT, Toper, ToperConfirmDT;

        public RptPOFooter_Domestic()
        {
            InitializeComponent();
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrHeader.Text = this.Header;
            this.xrHeaderDT.Text = this.HedarConfirmDT;
            this.xrToper.Text = this.Toper;
            this.xrTopConfDT.Text = this.ToperConfirmDT;
        }

    }
}
