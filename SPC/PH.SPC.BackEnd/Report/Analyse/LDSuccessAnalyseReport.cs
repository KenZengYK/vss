using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.BackEnd
{
    public partial class LDSuccessAnalyseReport : DevExpress.XtraReports.UI.XtraReport
    {
        public LDSuccessAnalyseReport()
        {
            InitializeComponent();
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(LDSuccessAnalyseReport_BeforePrint);
        }
        public LDSuccessAnalyseReport(string param)
            : this()
        {
            GetValues(param);
        }
        string _param;
        string _customer;
        string _season1;
        string _season2;
        string _date1;
        string _date2;
        public void GetValues(string parameters)
        {
            _param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;
            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._customer = (ss[0] == null || ss[0] == "") ? "ALL" : ss[0]; ;
            this._season1 = ss[1];
            this._season2 = ss[2];
            //this._date1 = ss[3];
            //this._date2 = ss[4];

            //Xsj2013-02-28:
            this._date1 = ss[17];
            this._date2 = ss[18];
        }
        void LDSuccessAnalyseReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Banding();
        }
        public void Banding()
        {
            this.lbCustomer.Text = string.Format("客戶 : {0}", this._customer);
            this.lbSeason.Text = string.Format("季節 : {0} ~ {1}", this._season1, this._season2);
            this.lbCreateDate.Text = string.Format("時段 : {0} ~ {1}", this._date1, this._date2);

            this.lbQuotationStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "QuotationStyleCount"));
            this.lbLDStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "LDStyleCount"));
            //this.lbLDPercent.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "LDPercent"));
        }

        decimal _QuotationStyleCount = 0;
        decimal _LDStyleCount = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object o = this.GetCurrentColumnValue("QuotationStyleCount");
            if (o != null)
                _QuotationStyleCount += (int)o;

            o = this.GetCurrentColumnValue("LDStyleCount");
            if (o != null)
                _LDStyleCount += (int)o;
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if ((this.Report.DataSource as System.Collections.Generic.List<PH.SPC.BO.SPCAnalyse>).Count == 0)
                return;
            this.lbLDPercent.Text = _QuotationStyleCount == 0 ? "0.00%" : (_LDStyleCount / _QuotationStyleCount).ToString("0.00%");
        }
    }
}
