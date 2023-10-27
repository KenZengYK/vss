using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class POPCRWOReport : DevExpress.XtraReports.UI.XtraReport
    {
        public POPCRWOReport()
        {
            InitializeComponent();
        }


        private void WOSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //IEnumerable<WorkOrder> ws = this.DataSource as IEnumerable<WorkOrder>;
            //if (ws == null) return;

            //int iWFC = 0;
            //int iWIP = 0;
            //int iCompleted = 0;
            //int ttl = 0;
            //foreach (WorkOrder w in ws)
            //{
            //    switch (w.WOStatusInt)
            //    {
            //        case 0: //return "Waiting for confirmation";
            //            iWFC++;
            //            break;
            //        case 1:// return "WIP";
            //            iWIP++;
            //            break;
            //        case 2:// return "Completed";
            //            iCompleted++;
            //            break;
            //        default:
            //            break;
            //    }
            //}
            //ttl = iWFC + iWIP + iCompleted;
            //if (ttl == 0) return;

            //this.cellWFC.Text = string.Format("{0}", iWFC);
            //this.cellWIP.Text = string.Format("{0}", iWIP);
            //this.cellCompleted.Text = string.Format("{0}", iCompleted);

            //this.cellWFCp.Text = string.Format("{0:P0}", Convert.ToDecimal(iWFC) / Convert.ToDecimal(ttl));
            //this.cellWIPp.Text = string.Format("{0:P0}", Convert.ToDecimal(iWIP) / Convert.ToDecimal(ttl));
            //this.cellCompletedp.Text = string.Format("{0:P0}", Convert.ToDecimal(iCompleted) / Convert.ToDecimal(ttl));
        }

    }
}
