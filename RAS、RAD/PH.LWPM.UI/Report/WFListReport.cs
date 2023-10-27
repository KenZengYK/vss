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
    public partial class WFListReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WFListReport(string AFactory)
        {
            InitializeComponent();

            //if (AFactory == "PH Group")
            //{
            //    this.lbTitle.Text = this.lbTitle.Text.Replace("WF detail list", "WF of each title - combined by region grouping");
            //}
            //else
            //{
            //    this.lbTitle.Text += String.Format("    ( {0} )", AFactory);
            //}
            //"PH Group", "China", "HK", "SL", "GG", "RX", "Bangladesh", "CL" 

            //string titletxt = "WF list for analysis - {0}  {1}";
            //string titleFirst = "";
            ////string titleSecond = "";
            //if (AFactory == "ALL Regions")
            //{
            //    titleFirst = "all regions";
            //}


            //if (AFactory == "China" || AFactory == "Bangladesh")
            //{
            //    titleFirst = "single country";
            //}

            //if (AFactory == "HK" || AFactory == "SL" || AFactory == "RX" || AFactory == "CL")
            //{
            //    titleFirst = "single region";
            //}

            //string FactoryShow = AFactory == "Consolidated Regions" ? "" : ("(" + AFactory + ")");

            //this.lbTitle.Text = string.Format(titletxt, titleFirst, FactoryShow);


            //this.lbTitle.Text = string.Format("WF Summary - {0}", AFactory);

            lbRegion.Text = AFactory == "ALL Regions" ? AFactory : (AFactory + " Region");
            this.lblDateprint.Text = DateTime.Now.ToShortDateString();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            string SqlStr = string.Format("exec sp_WFListReport '{0}'", AFactory);
            DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "opts");

            this.bindingSource1.DataSource = MainSource(ds);


            //this.bindingSource1.DataSource = db.ExecuteQuery<WFListReportResult>(SqlStr);

            //this.ReportFooter.Visible = true;
            if (AFactory == "CL" || AFactory == "SL" || AFactory == "RX" || AFactory == "GG" || AFactory == "HK")
            {
                //this.ReportFooter.Visible = true;
                xrSubreport1.Visible = false;
            }
            else
            {
                WFListReport_Sub SubRpt = new WFListReport_Sub(AFactory, ds);
                xrSubreport1.ReportSource = SubRpt;

            }
        }


        public List<WFListReportResult> MainSource(DataSet ds)
        {
            List<WFListReportResult> List = ds.Tables[0].AsEnumerable().Select(dr => new WFListReportResult()
            {
                //Factory =dr["Factory"].ToString(),
                JobTitleCode = dr["JobTitleCode"].ToString(),
                JobTitleEn = dr["JobTitleEn"].ToString(),
                JobTitleCn = dr["JobTitleCn"].ToString(),
                WFQty = Convert.ToInt32(dr["WFQty"].ToString()),
                DeploymentYesQty = Convert.ToInt32(dr["DeploymentYesQty"].ToString()),
                DeploymentNonQty = Convert.ToInt32(dr["DeploymentNonQty"].ToString()),
                HeadOfficeCostQty = Convert.ToInt32(dr["HeadOfficeCostQty"].ToString()),
                FactoryCostQty = Convert.ToInt32(dr["FactoryCostQty"].ToString()),
                Qty_PDDept = Convert.ToInt32(dr["Qty_PDDept"].ToString()),
                Qty_AdminDept = Convert.ToInt32(dr["Qty_AdminDept"].ToString()),
                Qty_QADept = Convert.ToInt32(dr["Qty_QADept"].ToString()),
                Qty_WarehouseDept = Convert.ToInt32(dr["Qty_WarehouseDept"].ToString()),
                Qty_CuttingDept = Convert.ToInt32(dr["Qty_CuttingDept"].ToString()),
                Qty_MouldingDept = Convert.ToInt32(dr["Qty_MouldingDept"].ToString()),
                Qty_SewingDept = Convert.ToInt32(dr["Qty_SewingDept"].ToString()),
                Qty_PackingDept = Convert.ToInt32(dr["Qty_PackingDept"].ToString()),
                Qty_MEDept = Convert.ToInt32(dr["Qty_MEDept"].ToString()),

            }).ToList();

            return List;
        }

        int GroupWFTotalSum = 0;
        private void tcGroupWFTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupWFTotalSum = Convert.ToInt32(e.Value);
        }

        int RptWFTotalSum = 0;
        private void tcRptWFTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptWFTotalSum = Convert.ToInt32(e.Value);
        }

        int GroupPDTotalSum = 0;
        private void tcGroupPDTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupPDTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", e.Value, (1.00 * GroupPDTotalSum / GroupWFTotalSum).ToString("P"));
        }

        int RptPDTotalSum = 0;
        private void tcRptPDTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptPDTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptPDTotalSum, (1.00 * RptPDTotalSum / RptWFTotalSum).ToString("P"));
        }

        int RptAdTotalSum = 0;
        private void tcRptAdTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptAdTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptAdTotalSum, (1.00 * RptAdTotalSum / RptWFTotalSum).ToString("P"));
        }

        int GroupAdTotalSum = 0;
        private void tcGroupAdTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupAdTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupAdTotalSum, (1.00 * GroupAdTotalSum / GroupWFTotalSum).ToString("P"));
        }

        int GroupQATotalSum = 0;
        private void tcGroupQATotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupQATotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupQATotalSum, (1.00 * GroupQATotalSum / GroupWFTotalSum).ToString("P"));
        }

        int RptQATotalSum = 0;
        private void tcRptQATotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptQATotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptQATotalSum, (1.00 * RptQATotalSum / RptWFTotalSum).ToString("P"));

        }

        int GroupWHTotalSum = 0;
        private void tcGroupWHTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupWHTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupWHTotalSum, (1.00 * GroupWHTotalSum / GroupWFTotalSum).ToString("P"));
        }

        int RptWHTotalSum = 0;
        private void tcRptWHTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptWHTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptWHTotalSum, (1.00 * RptWHTotalSum / RptWFTotalSum).ToString("P"));
        }

        int GroupCtTotalSum = 0;
        private void tcGroupCtTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupCtTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupCtTotalSum, (1.00 * GroupCtTotalSum / GroupWFTotalSum).ToString("P"));
        }

        int RptCtTotalSum = 0;
        private void tcRptCtTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptCtTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptCtTotalSum, (1.00 * RptCtTotalSum / RptWFTotalSum).ToString("P"));
        }

        int GroupMoTotalSum = 0;
        private void tcGroupMoTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupMoTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupMoTotalSum, (1.00 * GroupMoTotalSum / GroupWFTotalSum).ToString("P"));
        }

        int RptMoTotalSum = 0;
        private void tcRptMoTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptMoTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptMoTotalSum, (1.00 * RptMoTotalSum / RptWFTotalSum).ToString("P"));

        }

        int GroupSwTotalSum = 0;
        private void tcGroupSwTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupSwTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupSwTotalSum, (1.00 * GroupSwTotalSum / GroupWFTotalSum).ToString("P"));
        }

        int RptSeTotalSum = 0;
        private void tcRptSeTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptSeTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptSeTotalSum, (1.00 * RptSeTotalSum / RptWFTotalSum).ToString("P"));
        }

        int GroupPKTotalSum = 0;
        private void tcGroupPKTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupPKTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupPKTotalSum, (1.00 * GroupPKTotalSum / GroupWFTotalSum).ToString("P"));

        }

        int RptPKTotalSum = 0;
        private void tcRptPKTotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptPKTotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptPKTotalSum, (1.00 * RptPKTotalSum / RptWFTotalSum).ToString("P"));

        }

        int GroupMETotalSum = 0;
        private void tcGroupMETotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            GroupMETotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", GroupMETotalSum, (1.00 * GroupMETotalSum / GroupWFTotalSum).ToString("P"));
        }

        int RptMETotalSum = 0;
        private void tcRptMETotalSum_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            RptMETotalSum = Convert.ToInt32(e.Value);
            e.Text = string.Format("{0} | {1}", RptMETotalSum, (1.00 * RptMETotalSum / RptWFTotalSum).ToString("P"));
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("PDDeptShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell21); else FontRegular(xrTableCell21);
            if (this.GetCurrentColumnValue("AdminDeptShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell15); else FontRegular(xrTableCell15);
            if (this.GetCurrentColumnValue("QADeptShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell7); else FontRegular(xrTableCell7);
            if (this.GetCurrentColumnValue("WarehouseDeptShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell5); else FontRegular(xrTableCell5);
            if (this.GetCurrentColumnValue("CuttingDeptShow").ToString().Substring(0, 1) != "0") FontBold(lblsumA1); else FontRegular(lblsumA1);
            if (this.GetCurrentColumnValue("MouldingDeptShow").ToString().Substring(0, 1) != "0") FontBold(lblsumE1); else FontRegular(lblsumE1);
            if (this.GetCurrentColumnValue("SewingDeptShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell13); else FontRegular(xrTableCell13);
            if (this.GetCurrentColumnValue("PackingDeptShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell11); else FontRegular(xrTableCell11);
            if (this.GetCurrentColumnValue("MEDeptShow").ToString().Substring(0, 1) != "0") FontBold(xrTableCell14); else FontRegular(xrTableCell14);
        }

        private void FontBold(XRTableCell AXRTableCell)
        {
            AXRTableCell.Font = new Font(AXRTableCell.Font, FontStyle.Bold);
        }

        private void FontRegular(XRTableCell AXRTableCell)
        {
            AXRTableCell.Font = new Font(AXRTableCell.Font, FontStyle.Regular);
        }


    }
}
