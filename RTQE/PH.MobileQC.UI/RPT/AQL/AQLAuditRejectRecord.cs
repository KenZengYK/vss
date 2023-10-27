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
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI.RPT.AQL
{
    public partial class AQLAuditRejectRecord : DevExpress.XtraReports.UI.XtraReport
    {
        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        sp_AQLRejectRecordReportFooterResult FooterObj;

        public AQLAuditRejectRecord(DatePeroidTypes AReportDatePeroidType, string AFactory, string AWeekOrMonth, string AStartDate, string AEndDate)
        {
            InitializeComponent();
            string str = string.Format("exec sp_AQLRejectRecordReport '{0}', '{1}', '{2}'", AFactory, AStartDate, AEndDate);
            DataSet ds = db.ExecuteDataSet(str, new DataSet(), "opts");

            if (ds.Tables[0].Rows.Count == 0)
            {
                
                bindingSource1.DataSource = null;
                
                
            }

            //得到Report Footer中的Cust Style合計， PDN Shpt Qty合計
            FooterObj = new sp_AQLRejectRecordReportFooterResult();
            FooterObj.CountStyle = int.Parse(ds.Tables[2].Rows[0]["CountStyle"].ToString());
            FooterObj.SumShipmentQty = int.Parse(ds.Tables[2].Rows[0]["SumShipmentQty"].ToString());

            bindingSource1.DataSource = ds.Tables[0].AsEnumerable().Select(dr => new sp_AQLRejectRecordToBeCompletedReportClass()
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


            var SummaryLists = ds.Tables[1].AsEnumerable().Select(dr => new sp_AQLRejectRecordSummaryResult()
             {
                 Line = dr["Line"].ToString(),
                 CustCount = Convert.ToInt32(dr["CustCount"].ToString()),
                 WOCount = Convert.ToInt32(dr["WOCount"].ToString()),
                 QNCount = Convert.ToInt32(dr["QNCount"].ToString()),
                 StyleCount = Convert.ToInt32(dr["StyleCount"].ToString()),
                 ShipmentQty = Convert.ToInt32(dr["ShipmentQty"].ToString()),
                 ReadyExamQty = Convert.ToInt32(dr["ReadyExamQty"].ToString()),
                 ExamDays = Convert.ToInt32(dr["ExamDays"].ToString()),
                 SampleQty = Convert.ToInt32(dr["SampleQty"].ToString()),
                 ExamTimes = Convert.ToInt32(dr["ExamTimes"].ToString()),
                 MarjonRejQty = Convert.ToInt32(dr["MarjonRejQty"].ToString()),
                 MinorRejQty = Convert.ToInt32(dr["MinorRejQty"].ToString()),
                 ExamResult = dr["ExamResult"].ToString(),
                 LotNo = Convert.ToInt32(dr["LotNo"].ToString()),

                 InlineInspector = dr["InlineInspector"].ToString(),
                 EndlineInspector = dr["EndlineInspector"].ToString(),
                 MobileAuditor_A = dr["MobileAuditor_A"].ToString(),
                 QualAuditor_A = dr["QualAuditor_A"].ToString(),
                 LineLeader_A = dr["LineLeader_A"].ToString(),
                 Supervisor_A = dr["Supervisor_A"].ToString()

             }).ToList();

            AQLAuditRejectRecordSummarySub subRptAQLAuditRejectRecordSummary = new AQLAuditRejectRecordSummarySub(AReportDatePeroidType, AWeekOrMonth, AFactory, AStartDate, AEndDate, SummaryLists, FooterObj);
            this.subReport_AQLRejectRecordSummarySub.ReportSource = subRptAQLAuditRejectRecordSummary;

            xrFactory.Text = AFactory;
            xrlPrint.Text = DateTime.Now.ToString("yyyy-MM-dd");
            xrllDate.Text = AStartDate + " ~ " + AEndDate;


            ReportHelper reportHelper = new ReportHelper("00000026");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;
            title_En.Text = reportHelper.ReportInfo.ReportName_EN;

            if (AReportDatePeroidType == DatePeroidTypes.Daily)
            {
                title_En.Text = "Daily " + title_En.Text;
                xrllDate.Text = "[AQL Audit Date/審定日期 : " + AStartDate + "]";
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Weekly)
            {
                title_En.Text = "Weekly " + title_En.Text;
                xrllDate.Text = string.Format("[Week/周 {0} (AQL Audit Date/審定日期 : {1} ~ {2})]", AWeekOrMonth, AStartDate, AEndDate);
            }
            else if (AReportDatePeroidType == DatePeroidTypes.Monthly)
            {
                title_En.Text = "Monthly " + title_En.Text;
                //xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1})]", AWeekOrMonth, ADateFrom.ToString("yyyy-MM-dd"));
                xrllDate.Text = string.Format("[Month/月 {0} (AQL Audit Date/審定日期 : {1} ~ {2})]", AWeekOrMonth, AStartDate, AEndDate);
            }
            else if (AReportDatePeroidType == DatePeroidTypes.PeroidRang)
            {
                title_En.Text = "Period Range of " + title_En.Text;
                xrllDate.Text = string.Format("[Period Range/週期範圍 (AQL Audit Date/審定日期 : {0} ~ {1})]", AStartDate, AEndDate);
            }

        }

        private void xrTableCell49_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = FooterObj.CountStyle;
            e.Handled = true;
        }

        private void xrTableCell50_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = FooterObj.SumShipmentQty;
            e.Handled = true;
        }
    }
}
