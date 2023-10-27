using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;

namespace PH.LWPM.UI.PI
{
    public partial class PISubReport_OtherItem : DevExpress.XtraReports.UI.XtraReport
    {
        public PISubReport_OtherItem()
        {
            InitializeComponent();
        }

        private void lbOtherItemTotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            PIDetail_OtherItem obj = this.bsPIOtherItem.Current as PIDetail_OtherItem;
            if (obj == null || obj.PIHeader == null)
            {
                return;
            }

            double Total = obj.PIHeader.GetTotal();
            this.lbOtherItemTotal.Text = Total.ToString("N2");
        }

    }
}
