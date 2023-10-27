using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;

namespace PH.FabricInspection.UI.Report.AccessoryReport
{
    public partial class AccessoriesResultNoticeReport : DevExpress.XtraReports.UI.XtraReport
    {
        public AccessoriesResultNoticeReport(AccessoryHeader ACurrentHeader, NoticeReportTypes ANoticeReportType)
        {
            InitializeComponent();

            if ((ACurrentHeader.AOverallResultGradeShow != "A" || ACurrentHeader.AOverallResultGradeShow != "A+")
                && ANoticeReportType == NoticeReportTypes.RejectNotice)
            {
                xrTableCell133.Text = "Reject Notice  -  ";
                xrTableCell137.Text = " / æ‹ ’Õ®∏Ê  - ";
            }

            ACurrentHeader.NoticeReportType = ANoticeReportType;
            this.bindingSource.DataSource = ACurrentHeader;
        }

    }
}
