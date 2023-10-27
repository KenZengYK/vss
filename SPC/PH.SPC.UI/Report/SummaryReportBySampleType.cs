using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using System.Linq;
using PH.SPC.BO;
using PH.Platform.BO;

namespace PH.SPC.UI.Report
{
    public partial class SummaryReportBySampleType : DevExpress.XtraReports.UI.XtraReport
    {
        public SummaryReportBySampleType(DateTime ADespatchDateFrom, DateTime ADespatchDateTo, string APrdnSite, string ASeason, string APrdnCategory, string APrdnWs)
        {
            InitializeComponent();

            SPCDataContext db = ContextBuilder.CreateContext<SPCDataContext>();

            string SqlStr = "exec sp_SummaryReportBySampleType '{0}', '{1}', '{2}', '{3}', '{4}', '{5}'";
            SqlStr = string.Format(SqlStr, ADespatchDateFrom.Date, ADespatchDateTo.Date, APrdnSite, ASeason, APrdnCategory, APrdnWs);
            DataTable dt = db.ExecuteDataTable(SqlStr, "dt");
            var DataList = dt.AsEnumerable().Select(dr => new SummaryReportClass
            {
                //CustomerCode = dr["CustomerCode"].ToString(),
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
        }


    }
}
