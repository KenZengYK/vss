using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.BasicInfo.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.BasicInfo.UI.Incoterms.Report
{
    public partial class ENGTipSubRpt : DevExpress.XtraReports.UI.XtraReport
    {
      
        public ENGTipSubRpt()
        {
            InitializeComponent();
        }

        private void CHITipSubRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            bindingSource1.DataSource =ContextBuilder.CreateContext<BasicInfoDataContext>().ForPointDeliveryofDestinationPHKeys.OrderBy(E=>E.Code);
        }

    }
}
