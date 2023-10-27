using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
namespace PH.LWPM.UI.WF.Report
{
    public partial class SenioritySummaryRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public SenioritySummaryRpt()
        {
            InitializeComponent();
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GetSenioritySummary gbs = this.GetCurrentRow() as GetSenioritySummary;
            if (gbs.Seniority == "Total")
            {
                c_sen.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                c_swf.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                c_fwf.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                c_mwf.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                c_spwf.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                c_fun.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                //c_fwf.Text = gbs.Performance;
                c_fun.DataBindings.Clear();
                c_swf.DataBindings.Clear();
                c_fwf.DataBindings.Clear();
                c_mwf.DataBindings.Clear();
                c_spwf.DataBindings.Clear();
                c_sen.DataBindings.Clear();
                c_swf.Text = string.Empty;
                c_mwf.Text = string.Empty;
                c_spwf.Text = string.Empty;
                c_fun.Text = string.Empty;
                c_fwf.Text = string.Empty;
                c_sen.Text = string.Empty;
            }
        }

    }
}
