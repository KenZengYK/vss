using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using PH.LWPM.UI.LB4;

namespace PH.LWPM.UI.Report
{
    public partial class OpsSummaryStep3PartB_HWBondingReport : DevExpress.XtraReports.UI.XtraReport
    {
        public OpsSummaryStep3PartB_HWBondingReport(OpsSummaryStep3Header AHeader, List<OpsSummaryStep3PartBHW> ADataList, string HwIDcount, string WFIDCount, string OptNOCount, string ReportHeaderType)
        {
            InitializeComponent();

            this.lbCustStyle.Text = "Cust Style: " + AHeader.CustStyle;
            this.lbPHStyle.Text = "PH Style: " + AHeader.PHStyle;
            this.lbCust.Text = "Cust: " + AHeader.Cust;
            this.lbStatus.Text = "Status: " + AHeader.Status;
            this.lbOutstanding.Text = "Outstanding: " + AHeader.Outstanding.ToString();
            this.lbALWDesk.Text = "AL W.Desk: " + AHeader.ALWDesk.ToString();
            this.lbTtlWDesk.Text = "Ttl W.Desk: " + AHeader.TotalWDesk.ToString();
            this.lbFirstOptLocation.Text = AHeader.FirstOptStartDate.ToString();
            this.lbLine.Text = "A Workshop / Line No: " + AHeader.FirstOptLocation.ToString();
            this.laQN.Text = "QN: " + AHeader.QN.ToString();

            this.MachineIDCount.Text = HwIDcount;
            this.WFIDCount.Text = WFIDCount;
            this.OptNOCount.Text = OptNOCount;
            this.xrLabel1.Text = ReportHeaderType;
            this.ReportVersion.Text = ReportHelper.OptPermitSummaryReportVersion;

            this.bindingSource1.DataSource = ADataList;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("MachineID") != null && this.GetCurrentColumnValue("MachineID").ToString() != "!")
            {
                xrTableCell18.ForeColor = Color.Black;
            }
            else { xrTableCell18.ForeColor = Color.Red; }

            if (this.GetCurrentColumnValue("McStyleNo") != null && this.GetCurrentColumnValue("McStyleNo").ToString() != "!")
            {
                xrTableCell16.ForeColor = Color.Black;
            }
            else { xrTableCell16.ForeColor = Color.Red; }

            if (this.GetCurrentColumnValue("WorkerID") != null && this.GetCurrentColumnValue("WorkerID").ToString() != "!")
            {
                xrTableCell19.ForeColor = Color.Black;
            }
            else { xrTableCell19.ForeColor = Color.Red; }

            //if (this.GetCurrentColumnValue("MCType").ToString().Substring(0, 4) != this.GetCurrentColumnValue("MachineID").ToString().Substring(0, 4))
            //{
            //    xrTableCell18.ForeColor = Color.Black;
            //}
            //else
            //{
            //    xrTableCell18.ForeColor = Color.Red;
            //}

            if (this.GetCurrentColumnValue("AgreeUnRedFlag") != null && this.GetCurrentColumnValue("AgreeUnRedFlag").ToString() == "a")
            {
                xrTableCell18.ForeColor = Color.Black;
            }
            else
            {
                if (this.GetCurrentColumnValue("MCTypeName").ToString().Trim().Length > 1 && this.GetCurrentColumnValue("MachineID").ToString().Trim().Length > 1 && (this.GetCurrentColumnValue("MCTypeName").ToString().Trim().Length <= this.GetCurrentColumnValue("MachineID").ToString().Trim().Length))
                {
                    if (this.GetCurrentColumnValue("MCTypeName").ToString().Trim() != this.GetCurrentColumnValue("MachineID").ToString().Substring(0, this.GetCurrentColumnValue("MCTypeName").ToString().Trim().Length))
                    {
                        xrTableCell18.ForeColor = Color.Red;
                    }
                    else
                    {

                        xrTableCell18.ForeColor = Color.Black;

                    }
                }
                else
                {
                    xrTableCell18.ForeColor = Color.Red;
                }
            }



        }

    }
}
