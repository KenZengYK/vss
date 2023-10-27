using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;


namespace PH.LWPM.UI.LB5.Report
{
    public partial class WFMCCountRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public WFMCCountRpt()
        {
            InitializeComponent();
        }
        public WFMCCountRpt(WPMaster _wpmaster)
        {
            this.CurWpmaster = _wpmaster;
            InitializeComponent();
        }
        WPMaster CurWpmaster;
        private void WFMCCountRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            CurWpmaster.YNRunRpt = true;
            bindingSource1.DataSource = CurWpmaster;
        }

    }
}
