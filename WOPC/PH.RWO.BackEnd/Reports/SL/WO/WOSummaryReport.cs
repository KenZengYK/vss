using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class WOSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WOSummaryReport()
        {
            InitializeComponent();
        }

        string _customerCode;
        DateTime _exftyFrom;
        DateTime _exftyTo;
        DateTime _deliveryFrom;
        DateTime _deliveryTo;
        string _param;

        public WOSummaryReport(string param)
        {
            InitializeComponent();
            _param = param;
            GetValues(_param);
            SetParamValue();
        }
        public void GetValues(string parameters)
        {
            //string langID = PH.Platform.AuthMgr.BO.Environment.Instance.UserLanguage.LangID.ToUpper();
            //_isSL = langID != "TH";

            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._customerCode = ss[0];
            this._exftyFrom = Convert.ToDateTime(ss[1]);
            this._exftyTo = Convert.ToDateTime(ss[2]);
            this._deliveryFrom = Convert.ToDateTime(ss[3]);
            this._deliveryTo = Convert.ToDateTime(ss[4]);
        }

        private void SetParamValue()
        {
            this.cellCust.Text = this._customerCode;
            this.cellExftyFrom.Text = this._exftyFrom == DateTime.MinValue ? "" : string.Format("{0:yyyy'/'MM'/'dd}", this._exftyFrom);
            this.cellExftyTo.Text = this._exftyTo == DateTime.MinValue ? "" : string.Format("{0:yyyy'/'MM'/'dd}", this._exftyTo);
            this.cellDelDateFrom.Text = this._deliveryFrom == DateTime.MinValue ? "" : string.Format("{0:yyyy'/'MM'/'dd}", this._deliveryFrom);
            this.cellDelDateTo.Text = this._deliveryTo == DateTime.MinValue ? "" : string.Format("{0:yyyy'/'MM'/'dd}", this._deliveryTo);
        }

        private void WOSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            IEnumerable<WorkOrder> ws = this.DataSource as IEnumerable<WorkOrder>;
            if (ws == null) return;

            int iWFC = 0;
            int iWIP = 0;
            int iCompleted = 0;
            int ttl = 0;
            foreach (WorkOrder w in ws)
            {
                switch (w.WOStatusInt)
                {
                    case 0: //return "Waiting for confirmation";
                        iWFC++;
                        break;
                    case 1:// return "WIP";
                        iWIP++;
                        break;
                    case 2:// return "Completed";
                        iCompleted++;
                        break;
                    default:
                        break;
                }
            }
            ttl = iWFC + iWIP + iCompleted;
            if (ttl == 0) return;

            this.cellWFC.Text = string.Format("{0}", iWFC);
            this.cellWIP.Text = string.Format("{0}", iWIP);
            this.cellCompleted.Text = string.Format("{0}", iCompleted);

            this.cellWFCp.Text = string.Format("{0:P0}", Convert.ToDecimal(iWFC) / Convert.ToDecimal(ttl));
            this.cellWIPp.Text = string.Format("{0:P0}", Convert.ToDecimal(iWIP) / Convert.ToDecimal(ttl));
            this.cellCompletedp.Text = string.Format("{0:P0}", Convert.ToDecimal(iCompleted) / Convert.ToDecimal(ttl));
        }

    }
}
