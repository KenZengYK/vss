using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using PH.MobileQC.BO;

namespace PH.MobileQC.UI.RPT
{
    public partial class OptExamFailureReport : DevExpress.XtraReports.UI.XtraReport
    {
        public OptExamFailureReport(List<sp_MobileQARejectDetailClass> AList, string ATimeHorizon, string AFactory, string AWorkShop)
        {
            InitializeComponent();
            this.xrTimeHorizon.Text = ATimeHorizon;
            this.xrFactory.Text = AFactory;
            this.xrWorkShop.Text = AWorkShop;
            this.xrPrintDate.Text = DateTime.Now.ToString("yyyy-MM-dd");
            this.bindingSource1.DataSource = AList;

            ReportHelper reportHelper = new ReportHelper("00000022");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;      
            xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            title_Cn.Text = reportHelper.ReportInfo.ReportName_CN;
            title_En.Text = reportHelper.ReportInfo.ReportName_EN;
        }

    }
}
