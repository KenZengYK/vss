using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.WF.Report
{
    public partial class dWFListReport : DevExpress.XtraReports.UI.XtraReport
    {
        public dWFListReport(string AFactory, string ADeployment)
        {
            InitializeComponent();

            if (ADeployment == "All")
            {
                //this.lbTitle.Text = "Summary of dWF List";
                this.lbTitle.Text = "dWF detail list";
            }
            else if (ADeployment == "Deployment")
            {
                //this.lbTitle.Text = "Summary of dWF List - Deployment";
                this.lbTitle.Text = "dWF detail list - Deployment";
            }
            else if (ADeployment == "NonDeployment")
            {
                //this.lbTitle.Text = "Summary of dWF List - Non-Deployment";
                this.lbTitle.Text = "dWF detail list - Non-Deployment";
            }

            this.lbTitle.Text += String.Format("    ( {0} )", AFactory);

            this.lblDateprint.Text = DateTime.Now.ToShortDateString();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            string SqlStr = string.Format("exec sp_dWFListReport '{0}', '{1}'", AFactory, ADeployment);
            this.bindingSource1.DataSource = db.ExecuteQuery<dWFListResult>(SqlStr);

            this.ReportFooter.Visible = true;
            if (AFactory == "CL" || AFactory == "SL" || AFactory == "RX" || AFactory == "GG")
            {
                this.ReportFooter.Visible = false;
            }
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

        int SumPadPrint = 0;
        private void tcPadPrintSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumPadPrint = Convert.ToInt32(e.Value);
        }

        private void tcPadPrintPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * SumPadPrint / dWFCount).ToString("P"));
        }

        int SumStrapmarking = 0;
        private void tcStrapMarking_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumStrapmarking = Convert.ToInt32(e.Value);
        }

        private void tcStrapMarkingPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * SumStrapmarking / dWFCount).ToString("P"));

        }


        int GrandTotaldWF = 0;
        private void tcdWFCount_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotaldWF = Convert.ToInt32(e.Value);
        }

        int GrandTotalPadPrint = 0;
        private void tcGrandTotalPadPrint_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalPadPrint = Convert.ToInt32(e.Value);
        }

        private void tcGrandTotalPadPrintPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * GrandTotalPadPrint / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalStapMarking = 0;
        private void tcGrandTotalStrapMarking_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalStapMarking = Convert.ToInt32(e.Value);
        }

        private void tcGrandTotalStrapMarkingPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * GrandTotalStapMarking / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalB = 0;
        private void tcGrandTotalB_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalB = Convert.ToInt32(e.Value);
        }

        private void tcGrandTotalBPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * GrandTotalB / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalF = 0;
        private void tcGrandTotalF_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalF = Convert.ToInt32(e.Value);
        }

        private void tcGrandTotalFPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * GrandTotalF / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalA = 0;
        private void tcGrandTotalA_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalA = Convert.ToInt32(e.Value);
        }

        private void tcGrandTotalAPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * GrandTotalA / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalE = 0;
        private void tcGrandTotalE_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalE = Convert.ToInt32(e.Value);
        }

        private void tcGrandTotalEPer_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            e.Text = string.Format("({0})", (1.00 * GrandTotalE / GrandTotaldWF).ToString("P"));
        }
    }
}
