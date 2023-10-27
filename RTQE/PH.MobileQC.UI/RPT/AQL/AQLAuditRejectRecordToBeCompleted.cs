using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;
using PH.MobileQC.BO;
using PH.Platform.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class AQLAuditRejectRecordToBeCompleted : DevExpress.XtraReports.UI.XtraReport
    {

        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();

        int i = 0;
        public AQLAuditRejectRecordToBeCompleted(string AFactory)
        {
            InitializeComponent();
            string str = string.Format("exec sp_AQLRejectRecordToBeCompletedReport '{0}'", AFactory);
            DataSet ds = db.ExecuteDataSet(str, new DataSet(), "opts");

            i = AList(ds).Count;

            bindingSource1.DataSource = AList(ds);

            xrFactory.Text = AFactory;
            xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");
            xrLabel3.Text = DateTime.Now.ToString("yyyy-MM-dd");

            ReportHelper reportHelper = new ReportHelper("00000023");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            title_En.Text = reportHelper.ReportInfo.ReportName_EN;
            //title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;

            //if (AChechComletedIs == "Completed") 
            //{
            //    title_En.Text = "AQL Audit Performance - Reject Record Completed";
            //xrLabel3.Visible = xrllDate.Visible = true;
            //}
        }

        public List<sp_AQLRejectRecordToBeCompletedReportClass> AList(DataSet ds)
        {
            List<sp_AQLRejectRecordToBeCompletedReportClass> AQLDefectList = ds.Tables[0].AsEnumerable().Select(dr => new sp_AQLRejectRecordToBeCompletedReportClass()
            {
                Customer = dr["Customer"].ToString(),
                Line = dr["Line"].ToString(),
                QN = dr["QN"].ToString(),
                Style = dr["Style"].ToString(),
                ShipmentQty = int.Parse(dr["ShipmentQty"].ToString()),
                AQLLevel = dr["AQLLevel"].ToString(),
                SubAQLLevel = dr["SubAQLLevel"].ToString(),
                ReadyExamQty = int.Parse(dr["ReadyExamQty"].ToString()),
                LotNo = int.Parse(dr["LotNo"].ToString()),
                QC_Time = Convert.ToDateTime(dr["QC_Time"].ToString()).ToString("dd-MM"),
                SampleQty = int.Parse(dr["SampleQty"].ToString()),
                MarjonRejQty = int.Parse(dr["MarjonRejQty"].ToString()),
                MinorRejQty = int.Parse(dr["MinorRejQty"].ToString()),
                ExamResult = dr["ExamResult"].ToString(),
                ExamTimes = dr["ExamTimes"].ToString(),

                InlineInspector = dr["InlineInspector"].ToString(),
                EndlineInspector = dr["EndlineInspector"].ToString(),
                MobileAuditor_A = dr["MobileAuditor_A"].ToString(),
                QualAuditor_A = dr["QualAuditor_A"].ToString(),
                LineLeader_A = dr["LineLeader_A"].ToString(),
                Supervisor_A = dr["Supervisor_A"].ToString()

            }).ToList();
            return AQLDefectList;

        }

        string SaveWO;
        int SaveShipmentQty;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (i == 0) return;
            string WO = this.GetCurrentColumnValue("QN").ToString().Substring(0, 7);
            if (WO != SaveWO)
            {
                SaveWO = WO;
                SaveShipmentQty += Convert.ToInt32(this.GetCurrentColumnValue("ShipmentQty"));
            }
        }

        private void tcShipmentQtySummary_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            if (i == 0) return;
            e.Result = SaveShipmentQty;
            e.Handled = true;
        }
    }
}
