using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI.CustQC
{
    public partial class AQLControlPerf_Summarywithdiagram : DevExpress.XtraReports.UI.XtraReport
    {
        public AQLControlPerf_Summarywithdiagram(string ByWeekOrMonth, string Fty, string Cust, List<sp_CustQCPerformceSummaryReportResult> RptSource)
        {
            InitializeComponent();

            string FtyStr = Fty == "" ? "" : (Fty == "CN" ? "Area (區) :" + Fty : "Factory (工廠) :" + Fty);
            string CustStr = Cust == "" ? "" : "Cust (客户) :" + Cust;

            string ByFtyAndCus = FtyStr + "    " + CustStr;

            this.xrLabel1.Text = ByFtyAndCus;
            this.xrByWeekOrMoth.Text = ByWeekOrMonth == "每周" ? "Week\r\n周" : "Month\r\n月份";

            //xrTableRow8.Cells.Remove(ByWeekOrMonth == "每周" ? xrCellWeek : xrCellMonth);

            this.bindingSource1.DataSource = RptSource;

            //CharTitle.Text = ByFtyOrCusText+ " " + ByFtyOrCusHeaderEn + " AQL Control Quality Perf with FPY% Diagram" + "\r\n" + ByFtyOrCusText + ByFtyOrCusHeader + "審管質量表現首通率圖標";
            CharTitle.Text = " AQL Control Quality Perf with FPY% Diagram" + "\r\n" + "審管質量表現首通率圖標";

            xrLabel5.Text = ByWeekOrMonth == "每周" ? "Week\r\n周" : "Month\r\n月份";

            ReportHelper reportHelper = new ReportHelper("00000020");
            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            //xrRptText.Text = ByWeekOrMonth == "每周" ? reportHelper.ReportInfo.ReportCodeDaily : reportHelper.ReportInfo.ReportCodeWeekly;

            xrVerText.Text = ByWeekOrMonth == "每周" ? reportHelper.ReportInfo.ReportCodeDaily : reportHelper.ReportInfo.ReportCodeWeekly;

            title_Cn.Text = string.Format(reportHelper.ReportInfo.ReportName_CN, (ByWeekOrMonth == "每周" ? "每週" : "每月"), Fty);
            title_En.Text = string.Format(reportHelper.ReportInfo.ReportName_EN, (ByWeekOrMonth == "每周" ? "Wkly" : "Mthly"), Fty);

            xrPublishedDateText.Text = string.Format(reportHelper.ReportInfo.PublishedContext, (ByWeekOrMonth == "每周" ? "2" : "3"));
            xrVerNo.Text = reportHelper.ReportInfo.VerNo;
 


            decimal AveExamLotQty = RptSource.Select(p => p.ExamLotQty).Sum();
            decimal AvePassLotQty = (RptSource.Select(p => p.PassLotQty).Sum()) * 100;
            decimal AveExamQty = RptSource.Select(p => p.ExamQty).Sum();
            decimal AvePassShipmentQty = (RptSource.Select(p => p.PassShipmentQty).Sum()) * 100;

            this.xrAveLotFPY.Text = AveExamLotQty == 0 ? "0.00%" : Math.Round(Convert.ToDecimal(AvePassLotQty / AveExamLotQty), 2).ToString("0.00") + "%";
            this.xrAveFPY.Text = AveExamQty == 0 ? "0.00%" : Math.Round(Convert.ToDecimal(AvePassShipmentQty / AveExamQty), 2).ToString("0.00") + "%";

        }

    }
}
