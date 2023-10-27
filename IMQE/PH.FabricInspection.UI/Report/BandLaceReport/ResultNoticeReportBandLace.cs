using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.FabricInspection.BO;
using PH.Platform.BO;
using System.Data;
using System.Collections.Generic;
using System.Linq;

namespace PH.FabricInspection.UI.Report.BandLaceReport
{
    public partial class ResultNoticeReportBandLace : DevExpress.XtraReports.UI.XtraReport
    {
        public ResultNoticeReportBandLace(BandLaceHeader Obj, NoticeReportTypes ANoticeReportType)
        {
            InitializeComponent();
            xrIssuedd1.Text = DateTime.Now.ToString("yyyy-MM-dd");
            xrTable8.Visible = xrTable7.Visible = ANoticeReportType == NoticeReportTypes.ResultNotice;

            ReportFooter.Visible = ANoticeReportType == NoticeReportTypes.ResultNotice;
            xrLabel8.Visible = xrLabel9.Visible = xrLabel10.Visible = xrLabel11.Visible = xrLabel12.Visible = xrLabel13.Visible = ANoticeReportType != NoticeReportTypes.ResultNotice;
           


            Obj.NoticeReportType = ANoticeReportType;
            Obj.Calculate();

            if (ANoticeReportType == NoticeReportTypes.RejectNotice)
            {
                xrTableCell133.Text = "Reject Notice  -  ";
                xrTableCell137.Text = " / æ‹ ’Õ®∏Ê  - ";
            }

            this.bindingSource1.DataSource = Obj;

        }


        private void xrTableRow12_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object NeedEvadeMarker = this.GetCurrentColumnValue("NeedEvadeMarker");
            if (NeedEvadeMarker != null && NeedEvadeMarker.ToString() == "N")
            {
                BSDL1.Text = "";
                ASDL2.Text = "";
                xrTableCell186.Text = "";
                xrSpecialMarker.Text = "";
                AVCD.Text = "";
                xrTableCell189.Text = "";
                BVCD.Text = "";
                xrTableCell191.Text = "";
                xrTableCell192.Text = "";
                xrTableCell193.Text = "";
                xrTableCell194.Text = "";
            }
        }

    }




}
