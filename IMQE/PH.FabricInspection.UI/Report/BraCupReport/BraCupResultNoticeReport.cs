using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Report.BraCupReport
{
    public partial class BraCupResultNoticeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public BraCupResultNoticeReport(BraCupHeader ACurrentBraCupHeader, NoticeReportTypes ANoticeReportType)
        {
            InitializeComponent();

            if ((ACurrentBraCupHeader.AOverallResultGradeShow != "A" || ACurrentBraCupHeader.AOverallResultGradeShow != "A+") 
                && ANoticeReportType == NoticeReportTypes.RejectNotice)
            {
                xrTableCell133.Text = "Reject Notice  -  ";
                xrTableCell137.Text = " / æ‹ ’Õ®∏Ê  - ";
            }
            ACurrentBraCupHeader.NoticeReportType = ANoticeReportType;
            this.bindingSource.DataSource = ACurrentBraCupHeader;
        }

    }
}
