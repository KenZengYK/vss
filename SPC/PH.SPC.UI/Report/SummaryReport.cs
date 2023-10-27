using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Linq;
using PH.SPC.BO;
using PH.Platform.BO;
using System.Data;

namespace PH.SPC.UI.Report
{
    public partial class SummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        int TotalSampleQty = 0;
        public SummaryReport(bool AIsByCustGroup, DateTime ADespatchDateFrom, DateTime ADespatchDateTo, string APrdnSite, string ASeason, string APrdnCategory, string APrdnWs)
        {
            InitializeComponent();

            lbTitle.Text = "Sample Summary Report  " + (AIsByCustGroup ? "(by Customer)" : "(by Customer + Sample Type)");

            SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();

            //@ByCustGroup      bit,      --by Customer分组汇总时，传入1, by Customer + Sample Type汇总时传入0 
            //@DespatchDateFrom datetime,
            //@DespatchDateTo   datetime,
            //@PrdnSite         varchar(100) = '',
            //@Season           varchar(100) = '',
            //@PrdnCategory     varchar(100) = '',
            //@PrdnWs           varchar(100) = ''

            string SqlStr = "exec sp_SummaryReport {0}, '{1}', '{2}', '{3}', '{4}', '{5}', '{6}'";
            SqlStr = string.Format(SqlStr, AIsByCustGroup, ADespatchDateFrom.Date, ADespatchDateTo.Date, APrdnSite, ASeason, APrdnCategory, APrdnWs);
            DataTable dt = db.ExecuteDataTable(SqlStr, "dt");
            var DataList = dt.AsEnumerable().Select(dr => new SummaryReportClass
            {
                CustomerCode = dr["CustomerCode"].ToString(),
                SampleType = dr["SampleType"].ToString(),
                StyleQty = Convert.ToInt32(dr["StyleQty"].ToString()),
                SampleQty = Convert.ToInt32(dr["SampleQty"]),
                Ratio = Convert.ToDecimal(dr["Ratio"])
            }).ToList();

            this.bindingSource.DataSource = DataList;

            tcFromDate.Text = ADespatchDateFrom.Date.ToString("yyyy/MM/dd");
            tcToDate.Text = ADespatchDateTo.Date.ToString("yyyy/MM/dd");
            tcPrdnSite.Text = APrdnSite;
            tcSeason.Text = ASeason;
            tcPrdnCategory.Text = APrdnCategory;
            tctcPrdnWs.Text = APrdnWs;

            GroupFooter_CustomerCode.Visible = !AIsByCustGroup;
            TotalSampleQty = DataList.Select(p => p.SampleQty).Sum();
        }

        private void tcCustomerRatio_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            //e.Text = Math.Round(100.0000 * SaveCustomerSampleQty / TotalSampleQty, 2).ToString();
            e.Text = (1.0000 * SaveCustomerSampleQty / TotalSampleQty).ToString("p");
        }

        int SaveCustomerSampleQty = 0;
        private void tcCustomerSampleQty_SummaryCalculated(object sender, TextFormatEventArgs e)
        {
            SaveCustomerSampleQty = Convert.ToInt32(e.Value);
        }




    }
}
