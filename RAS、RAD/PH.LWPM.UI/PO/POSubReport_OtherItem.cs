using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Linq;
using System.Data.Linq;

namespace PH.LWPM.UI.PO
{
    public partial class POSubReport_OtherItem : DevExpress.XtraReports.UI.XtraReport
    {
        ReportLanguages ReportLang;
        public POSubReport_OtherItem(ReportLanguages AReportLanguage)
        {
            InitializeComponent();
            this.ReportLang = AReportLanguage;
            this.lbPOTotalDesc.Text = AReportLanguage == ReportLanguages.English ? "Grand Total Amount£º" : "½ðî~¿‚Ó‹£º";
        }

        private void lbOtherItemTotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PODetail_OtherItem obj = this.bsPOOtherItem.Current as PODetail_OtherItem;
            if (obj == null || obj.POHeader == null)
            {
                return;
            }

            double Total = obj.POHeader.GetTotal();
            this.lbOtherItemTotal.Text = Total.ToString("N2");
        }

    }
}
