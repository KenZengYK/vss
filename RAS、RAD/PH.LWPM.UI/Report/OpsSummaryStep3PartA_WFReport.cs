using System;
using System.Drawing;
using System.Collections.Generic;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using PH.LWPM.UI.LB4;

namespace PH.LWPM.UI.Report
{
    public partial class OpsSummaryStep3PartA_WFReport : DevExpress.XtraReports.UI.XtraReport
    {
        public OpsSummaryStep3PartA_WFReport(OpsSummaryStep3Header AHeader, List<OpsSummaryStep3PartAWF> ADataList, List<OpsSummaryStep3PartAWFSign> ADDataSign, string HwIDcount, string WFIDCount, string OptNOCount, string ReportHeaderType, bool isApproved, string Factory, DateTime ApprovedDateTime)
        {
            InitializeComponent();

            this.lbCustStyle.Text = "Cust Style: " + AHeader.CustStyle;
            this.lbPHStyle.Text = "PH Style: " + AHeader.PHStyle;
            this.lbCust.Text = "Cust: " + AHeader.Cust;
            this.lbStatus.Text = "Status: " + AHeader.Status;
            this.lbOutstanding.Text = "Outstanding: " + AHeader.Outstanding.ToString();
            this.lbALWDesk.Text = "AL W.Desk: " + AHeader.ALWDesk.ToString();
            this.lbTtlWDesk.Text = "Ttl W.Desk: " + AHeader.TotalWDesk.ToString();
            this.lbFirstOptLocation.Text =  AHeader.FirstOptStartDate.ToString();
            this.lbLine.Text = "A Workshop / Line No: " + AHeader.FirstOptLocation.ToString();
            this.lbQN.Text = "QN: " + AHeader.QN.ToString();

            this.MachineIDCount.Text = HwIDcount;
            this.WFIDCount.Text = WFIDCount;
            this.OptNOCount.Text = OptNOCount;
            
            this.bindingSource.DataSource = ADataList;

            this.xrLabel21.Text = ReportHeaderType;
            OpsSummaryStep3PartA_WFSignReport OpsSign = new OpsSummaryStep3PartA_WFSignReport(ADDataSign, isApproved, Factory, ApprovedDate(ApprovedDateTime),ReportHeaderType);
            xrSubreport1.ReportSource = OpsSign;

            this.ReportVersion.Text = ReportHelper.OptPermitSummaryReportVersion;

        }

        public string  ApprovedDate(DateTime  a) 
        {
            return  a.ToString("yyyy-MM-dd");
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("MachineID").ToString() != "!")
            {
                xrTableCell10.ForeColor = Color.Black;
            }
            else { xrTableCell10.ForeColor = Color.Red; }

            if (this.GetCurrentColumnValue("MachineModelNo").ToString() != "!")
            {
                xrTableCell27.ForeColor = Color.Black;
            }
            else { xrTableCell27.ForeColor = Color.Red; }

            if (this.GetCurrentColumnValue("WorkerID").ToString() != "!")
            {
                xrTableCell11.ForeColor = Color.Black;
            }
            else { xrTableCell11.ForeColor = Color.Red; }


            //HWIDÓ²¼þ¾ŽÌ–×ƒÉ«      
            if (this.GetCurrentColumnValue("AgreeUnRedFlag").ToString() == "a")
            {
                xrTableCell10.ForeColor = Color.Black;
            }
            else
            {
                if (this.GetCurrentColumnValue("MCTypeName").ToString().Trim().Length > 1 && this.GetCurrentColumnValue("MachineID").ToString().Trim().Length > 1 && (this.GetCurrentColumnValue("MCTypeName").ToString().Trim().Length <= this.GetCurrentColumnValue("MachineID").ToString().Trim().Length))
                {
                    if (this.GetCurrentColumnValue("MCTypeName").ToString().Trim() != this.GetCurrentColumnValue("MachineID").ToString().Substring(0, this.GetCurrentColumnValue("MCTypeName").ToString().Trim().Length))
                    {
                        xrTableCell10.ForeColor = Color.Red;
                    }
                    else
                    {

                        xrTableCell10.ForeColor = Color.Black;

                    }
                }
                else
                {
                    xrTableCell10.ForeColor = Color.Red;
                }
            }

       
        }

    }
}
