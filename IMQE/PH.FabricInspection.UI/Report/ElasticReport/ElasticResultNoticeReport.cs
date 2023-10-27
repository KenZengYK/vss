using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Report.ElasticReport
{
    public partial class ElasticResultNoticeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public ElasticResultNoticeReport(ElasticHeader ACurrentElasticHeader, NoticeReportTypes ANoticeReportType)
        {
            InitializeComponent();
            if (ANoticeReportType == NoticeReportTypes.RejectNotice)
            {
                xrTableCell133.Text = "Reject Notice  -  ";
                xrTableCell137.Text = " / æ‹ ’Õ®∏Ê  - ";
            }

            ACurrentElasticHeader.NoticeReportType = ANoticeReportType;

            this.bindingSource.DataSource = ACurrentElasticHeader;
        }

    }
}
