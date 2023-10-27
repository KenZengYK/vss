using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.SqlClient;
using PH.Platform.BO;
using System.Data.Linq;

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFSummeryReport : DevExpress.XtraReports.UI.XtraReport
    {
        private string _factory;
        public WFSummeryReport(string factory)
        {
            InitializeComponent();
            this._factory = factory;
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        private void WFSummeryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            context.CommandTimeout = 8000;
            string sql = string.Format("exec [MadeSummary] '{0}'", _factory);
            this.bindingSource1.DataSource = context.ExecuteQuery<GetMadeSummary>(sql);
            this.xrFactory.Text = "( " + _factory + " )";
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //PerformanceSummaryRpt sRpt = new PerformanceSummaryRpt();
            //context.CommandTimeout = 8000;
            //string sql = string.Format("exec [PerformanceSummary] '{0}'", _factory);
            //sRpt.bindingSource1.DataSource = context.ExecuteQuery<GetPerSenSummary>(sql);
            //xrPerforSummary.ReportSource = sRpt;

            //RegionSummaryReport regionRpt = new RegionSummaryReport();
            //string reSql = string.Format("exec [RegionSummary] '{0}'", _factory);
            //regionRpt.bindingSource1.DataSource = context.ExecuteQuery<GetRegionSummary>(reSql);
            //xrRegionSummary.ReportSource = regionRpt;


            //SenioritySummaryRpt seniorRpt = new SenioritySummaryRpt();
            //string senSql = string.Format("exec [SerioritySummary] '{0}'", _factory);
            //seniorRpt.bindingSource1.DataSource = context.ExecuteQuery<GetSenioritySummary>(senSql);
            //xrSenioritySummary.ReportSource = seniorRpt;

            
        }
        string beforeId = "";
        int count = 1;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GetMadeSummary gbs = this.GetCurrentRow() as GetMadeSummary;
            int rowCount = this.RowCount;
            int nextRow = this.RowIndex;
            if (gbs == null) return;
            if (beforeId != gbs.dept.Trim() && beforeId != "" && nextRow+1!=rowCount)
            {
                C_made.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Top);
                count = 1;
                C_made.Text = gbs.dept.Trim();
            }
            else 
            {            
                if (gbs.dept == "Total" && gbs.sex == "overall %")
                {
                    C_made.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Bottom);
                }
                else if (count == 1 && nextRow + 1 != rowCount)
                {
                    C_made.Text = gbs.dept.Trim();
                    C_made.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Left);
                }
                else if (nextRow+1==rowCount)
                {
                    C_made.Text = gbs.dept.Trim();
                    C_made.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.All);
                }
                if (count == 2)
                {
                    C_made.Text = "";
                   // C_made.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
                    C_made.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.Left | DevExpress.XtraPrinting.BorderSide.Right | DevExpress.XtraPrinting.BorderSide.Bottom);
                }
                //else if(count==1)
                //{
                //    C_made.Text = "";
                //}
                         
            }
              count++;
            beforeId = gbs.dept.Trim();
            if (gbs.sex == "overall %")
            {
                c_overall.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.None);
            }
            else 
            {
                c_overall.Borders = (DevExpress.XtraPrinting.BorderSide)(DevExpress.XtraPrinting.BorderSide.All);
            }
        }
    }
}
