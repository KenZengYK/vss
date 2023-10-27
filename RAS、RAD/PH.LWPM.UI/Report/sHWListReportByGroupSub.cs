using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using PH.Platform.BO;

namespace PH.LWPM.UI.Report
{
    public partial class sHWListReportByGroupSub : DevExpress.XtraReports.UI.XtraReport
    {
        public sHWListReportByGroupSub()
        {
            InitializeComponent();
        }

        private void xrTableRow2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string TotalShowText = this.GetCurrentColumnValue("TotalShowText") == null ? "" : this.GetCurrentColumnValue("TotalShowText").ToString();
            if (!string.IsNullOrEmpty(TotalShowText) && TotalShowText.Contains("Grand"))
            {
                this.xrTableRow2.BackColor = Color.PaleTurquoise;
                this.tcSeqNo.Text = "";
            }
        }
    }
}
