using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFListByFactoryReportSub : DevExpress.XtraReports.UI.XtraReport
    {
        public WFListByFactoryReportSub()
        {
            InitializeComponent();
        }

        private void xtFactory_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string Factory = this.GetCurrentColumnValue("Factory") == null ? "" : this.GetCurrentColumnValue("Factory").ToString();
            if (!string.IsNullOrEmpty(Factory) && Factory == "Group")
            {
                this.xtFactory.Text = "PH Group";
            }
        }

        private void xrTableRow2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string TotalShowText = this.GetCurrentColumnValue("TotalShowText") == null ? "" : this.GetCurrentColumnValue("TotalShowText").ToString();
            if (!string.IsNullOrEmpty(TotalShowText) && TotalShowText.Contains("Grand"))
            {
                this.xrTableRow2.BackColor = Color.PaleTurquoise;
            }
        }

    }
}
