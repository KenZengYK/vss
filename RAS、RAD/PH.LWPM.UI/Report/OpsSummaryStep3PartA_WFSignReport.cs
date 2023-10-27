using System;
using System.Drawing;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;

namespace PH.LWPM.UI.Report
{
    public partial class OpsSummaryStep3PartA_WFSignReport : DevExpress.XtraReports.UI.XtraReport
    {
        public bool isApproved;
        public string ReportHeaderType1;
        public OpsSummaryStep3PartA_WFSignReport(List<OpsSummaryStep3PartAWFSign> ADataList, bool isApproved, string Factory, string ApprovedDate, string ReportHeaderType)
        {
            InitializeComponent();

            //this.lbCustStyle.Text = AHeader.CustStyle;
            //this.lbPHStyle.Text = AHeader.PHStyle;
            //this.lbCust.Text = AHeader.Cust;
            //this.lbStatus.Text = AHeader.Status;
            //this.lbOutstanding.Text = AHeader.Outstanding.ToString();
            //this.lbALWDesk.Text = AHeader.ALWDesk.ToString();
            //this.lbTtlWDesk.Text = AHeader.TotalWDesk.ToString();
            this.isApproved = isApproved;
            txtFactory.Text = Factory;
            txtDate1.Text =isApproved? ApprovedDate:"";
            txtDate2.Text =isApproved? ApprovedDate:"";
            this.Approval3.Text = isApproved ? "Y" : "";
            this.Approval4.Text = isApproved ? "Y" : "";
            this.bindingSource.DataSource = ADataList;
            this.ReportHeaderType1 = ReportHeaderType;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if ((ReportHeaderType1 == "Operation Permit (with spec.) - Step 4 / Deployed Summary") || (ReportHeaderType1 == "Operation Permit (with spec.) - Step 5 / Deployed Summary"))
            {
                xrTableCell28.Text = "";
                xrTableCell31.Text = "";
            }
            else 
            {
                xrTableCell28.Text = "--";
                xrTableCell31.Text = "--";
            }
        }

  

    }
}
