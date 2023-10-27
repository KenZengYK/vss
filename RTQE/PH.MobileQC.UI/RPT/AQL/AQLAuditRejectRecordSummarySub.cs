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
    public partial class AQLAuditRejectRecordSummarySub : DevExpress.XtraReports.UI.XtraReport
    {

        MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
        sp_AQLRejectRecordReportFooterResult _ReportFooterInfo;
      
        public AQLAuditRejectRecordSummarySub(DatePeroidTypes AReportDatePeroidType,  string AWeekOrMonth, string AFactory, string AStartDate, string AEndDate, List<sp_AQLRejectRecordSummaryResult> ADataList, sp_AQLRejectRecordReportFooterResult AReportFooterInfo)
        {
            InitializeComponent();
            _ReportFooterInfo = AReportFooterInfo;
            if (ADataList.Count() == 0) return;
            bindingSource1.DataSource = ADataList;

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
            e.Result = _ReportFooterInfo.CountStyle;
            e.Handled = true;
        }

        private void xrTableCell50_SummaryGetResult(object sender, SummaryGetResultEventArgs e)
        {
            e.Result = _ReportFooterInfo.SumShipmentQty;
            e.Handled = true;
        }

    }
}
