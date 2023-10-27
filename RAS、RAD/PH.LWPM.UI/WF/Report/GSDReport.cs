using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.LWPM.UI.WF.Report
{
    public partial class GSDReport : DevExpress.XtraReports.UI.XtraReport
    {
        public GSDReport(string AFactory, string ADeployment)
        {
            InitializeComponent();

            //this.lbl_factory.Text = String.Format("( {0} )", AFactory);

            if (ADeployment == "All")
            {
                //this.lbTitle.Text = "Summary of dWF List";
                this.lbTitle.Text = "dWF List";
            }
            else if (ADeployment == "Deployment")
            {
                //this.lbTitle.Text = "Summary of dWF List - Deployment";
                this.lbTitle.Text = "dWF List - Deployment";
            }
            else if (ADeployment == "NonDeployment")
            {
                //this.lbTitle.Text = "Summary of dWF List - Non-Deployment";
                this.lbTitle.Text = "dWF List - Non-Deployment";
            }

            this.lbTitle.Text += String.Format("    ( {0} )", AFactory);

            this.lblDateprint.Text = DateTime.Now.ToShortDateString();
        }

        int dWFCount = 0;
        private void lblsumSMF1_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            dWFCount = Convert.ToInt32(e.Value);
        }

        int SumB = 0;
        private void lblsumB_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumB = Convert.ToInt32(e.Value);
        }

        private void lbSumBPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * SumB / dWFCount).ToString("P"));
        }

        int SumF = 0;
        private void lblsumF_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumF = Convert.ToInt32(e.Value);
        }

        private void tcSumFPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * SumF / dWFCount).ToString("P"));
        }

        int SumA = 0;
        private void lblsumA_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumA = Convert.ToInt32(e.Value);
        }

        private void tcSumA_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * SumA / dWFCount).ToString("P"));
        }

        int SumE = 0;
        private void lblsumE_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumE = Convert.ToInt32(e.Value);
        }

        private void tcSumE_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * SumE / dWFCount).ToString("P"));
        }

    }
}
