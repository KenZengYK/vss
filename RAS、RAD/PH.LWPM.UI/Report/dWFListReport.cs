using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.LWPM.BO;
using System.Data;
using System.Collections.Generic;
using System.Linq;

namespace PH.LWPM.UI.Report
{
    public partial class dWFListReport : DevExpress.XtraReports.UI.XtraReport
    {
        public dWFListReport(string AFactory, string ADeployment)
        {
            InitializeComponent();

            //if (ADeployment == "All")
            //{
            //    this.lbTitle.Text = "dWF detail list";
            //}
            //else if (ADeployment == "Deployment")
            //{
            //    this.lbTitle.Text = "dWF detail list - Deployment";
            //}
            //else if (ADeployment == "NonDeployment")
            //{
            //    this.lbTitle.Text = "dWF detail list - Non-Deployment";
            //}

            //if (AFactory == "PH Group")
            //{
            //    this.lbTitle.Text = this.lbTitle.Text.Replace("dWF detail list", "dWF of each title - combined by region grouping");
            //}
            //else
            //{
            //    this.lbTitle.Text += String.Format("    ( {0} )", AFactory);
            //}

            //string titletxt = "dWF list for analysis - {0} {1}  {2}";
            //string titleFirst = "";
            //string titleSecond = "";
            //if (AFactory == "ALL Regions")
            //{
            //    titleFirst = "ALL Regions";

            //}

            //if (AFactory == "China" || AFactory == "Bangladesh")
            //{
            //    titleFirst = "single country";
            //}

            //if (AFactory == "HK" || AFactory == "SL" || AFactory == "RX" || AFactory == "CL")
            //{
            //    titleFirst = "single region";
            //}


            //if (ADeployment == "All")
            //{
            //    titleSecond = "";
            //}
            //else if (ADeployment == "Deployment")
            //{
            //    titleSecond = "- Deployment";
            //}
            //else if (ADeployment == "NonDeployment")
            //{
            //    titleSecond = "- Non-Deployment";
            //}


            //string FactoryShow = AFactory == "ALL Regions" ? "" : ("(" + AFactory + ")");
            //this.lbTitle.Text = string.Format(titletxt, titleFirst, titleSecond, FactoryShow);

            //this.lbTitle.Text = string.Format("dWF list for analysis - {0}", AFactory);
            xrTableCell25.Text = AFactory + " Region";
            if (AFactory == "ALL Regions")
            {
                xrTableCell25.Text = AFactory;
            }

            this.lblDateprint.Text = DateTime.Now.ToShortDateString();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();

            string SqlStr = string.Format("exec sp_dWFListReport '{0}', '{1}'", AFactory, ADeployment);

            DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "opts");

            this.bindingSource1.DataSource = MainSource(ds);


            //this.bindingSource1.DataSource = db.ExecuteQuery<dWFListResult>(SqlStr);

            //this.ReportFooter.Visible = true;
            if (AFactory == "CL" || AFactory == "SL" || AFactory == "RX")
            {
                this.ReportFooter.Visible = false;
                xrSubreport1.Visible = false;
            }
            else
            {
                dWFListReport_Sub SubRpt = new dWFListReport_Sub(AFactory, ds);
                xrSubreport1.ReportSource = SubRpt;
            }
        }

        public List<dWFListResult> MainSource(DataSet ds)
        {
            List<dWFListResult> List = ds.Tables[0].AsEnumerable().Select(dr => new dWFListResult()
            {
                //Factory =dr["Factory"].ToString(),
                JobTitleCode = dr["JobTitleCode"].ToString(),
                JobTitleEn = dr["JobTitleEn"].ToString(),
                JobTitleCn = dr["JobTitleCn"].ToString(),
                dWFCount = Convert.ToInt32(dr["dWFQty"].ToString()),
                DeploymentYesQty = Convert.ToInt32(dr["DeploymentYesQty"].ToString()),
                DeploymentNonQty = Convert.ToInt32(dr["DeploymentNonQty"].ToString()),
                HeadOfficeCostQty = Convert.ToInt32(dr["HeadOfficeCostQty"].ToString()),
                FactoryCostQty = Convert.ToInt32(dr["FactoryCostQty"].ToString()),
                B = Convert.ToInt32(dr["B"].ToString()),
                F = Convert.ToInt32(dr["F"].ToString()),
                A = Convert.ToInt32(dr["A"].ToString()),
                E = Convert.ToInt32(dr["E"].ToString()),
                StrapMaking = Convert.ToInt32(dr["StrapMaking"].ToString()),
                PadPrint = Convert.ToInt32(dr["PadPrint"].ToString()),
                OtherWs = Convert.ToInt32(dr["OtherWs"].ToString()),
                PPWs = Convert.ToInt32(dr["PPWs"].ToString()),
                OtherDept = Convert.ToInt32(dr["OtherDept"].ToString()),


            }).ToList();

            return List;
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
            e.Text = string.Format("{0} | {1}", SumB, (1.00 * SumB / dWFCount).ToString("P"));
        }

        int SumF = 0;
        private void lblsumF_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumF = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", SumF, (1.00 * SumF / dWFCount).ToString("P"));
        }

        int SumA = 0;
        private void lblsumA_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumA = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", SumA, (1.00 * SumA / dWFCount).ToString("P"));
        }

        int SumE = 0;
        private void lblsumE_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumE = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", SumE, (1.00 * SumE / dWFCount).ToString("P"));
        }

        int SumPadPrint = 0;
        private void tcPadPrintSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumPadPrint = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", SumPadPrint, (1.00 * SumPadPrint / dWFCount).ToString("P"));
        }

        int SumStrapmarking = 0;
        private void tcStrapMarking_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SumStrapmarking = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", SumStrapmarking, (1.00 * SumStrapmarking / dWFCount).ToString("P"));
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
            e.Text = string.Format("{0} | {1}", GrandTotalPadPrint, (1.00 * GrandTotalPadPrint / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalStapMarking = 0;
        private void tcGrandTotalStrapMarking_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalStapMarking = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GrandTotalStapMarking, (1.00 * GrandTotalStapMarking / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalB = 0;
        private void tcGrandTotalB_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalB = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GrandTotalB, (1.00 * GrandTotalB / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalF = 0;
        private void tcGrandTotalF_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalF = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GrandTotalF, (1.00 * GrandTotalF / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalA = 0;
        private void tcGrandTotalA_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalA = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GrandTotalA, (1.00 * GrandTotalA / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalE = 0;
        private void tcGrandTotalE_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalE = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GrandTotalE, (1.00 * GrandTotalE / GrandTotaldWF).ToString("P"));
        }

        int GrandTotalOtherWs = 0;
        private void tcOtherWs_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            //(1.00 * this.OtherWs / this.dWFCount
            GrandTotalOtherWs = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GrandTotalOtherWs, (1.00 * GrandTotalOtherWs / GrandTotaldWF).ToString("P"));
        }


        int GrandTotalPPWs = 0;
        private void xrTableCell30_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GrandTotalPPWs = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GrandTotalPPWs, (1.00 * GrandTotalPPWs / GrandTotaldWF).ToString("P"));
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("PadPrintShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell21); else FontRegular(xrTableCell21);
            if (this.GetCurrentColumnValue("StrapMakingShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell15); else FontRegular(xrTableCell15);
            if (this.GetCurrentColumnValue("BShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell7); else FontRegular(xrTableCell7);
            if (this.GetCurrentColumnValue("AShow").ToString().Substring(0, 1) != "0") FontBold(lblsumA1); else FontRegular(lblsumA1);
            if (this.GetCurrentColumnValue("EShow").ToString().Substring(0, 1) != "0") FontBold(lblsumE1); else FontRegular(lblsumE1);
            if (this.GetCurrentColumnValue("PPwsShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell18); else FontRegular(xrTableCell18);
            if (this.GetCurrentColumnValue("OtherWsShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell32); else FontRegular(xrTableCell32);
        }

        private void FontBold(XRTableCell AXRTableCell)
        {
            AXRTableCell.Font = new Font(AXRTableCell.Font, FontStyle.Bold);
        }

        private void FontRegular(XRTableCell AXRTableCell)
        {
            AXRTableCell.Font = new Font(AXRTableCell.Font, FontStyle.Regular);
        }

        bool TotalShowRed = false;
        private void xrTableRow1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (Convert.ToBoolean(this.GetCurrentColumnValue("QtyDiffShowRed")))
            {
                tcdWFCount1.ForeColor = Color.Red;
                TotalShowRed = true;
            }
            else
            {
                tcdWFCount1.ForeColor = System.Drawing.SystemColors.ControlText;
            }
        }

        private void tcdWFCount_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (TotalShowRed)
            {
                tcdWFCount.ForeColor = Color.Red;
            }
            else
            {
                tcdWFCount.ForeColor = System.Drawing.SystemColors.ControlText;
            }
        }


    }
}
