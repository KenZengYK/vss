using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.BackEnd
{
    public partial class SampleOntimeAnalyseReport : DevExpress.XtraReports.UI.XtraReport
    {
        public SampleOntimeAnalyseReport()
        {
            InitializeComponent();
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(LDSuccessAnalyseReport_BeforePrint);
        }
        public SampleOntimeAnalyseReport(string param)
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
            //Xsj20130118:注釋掉如下代碼，添加新代碼
            //this._customer = ss[0];
            //this._season1 = ss[1];
            //this._season2 = ss[2];
            //this._date1 = ss[3];
            //this._date2 = ss[4];
            this._customer = ss[0] == "" ? "ALL" : ss[0];
            this._season1 = ss[5];
            this._season2 = ss[6];
            this._date1 = ss[17];
            this._date2 = ss[18];
            //-------End
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

            //this.lbQuotationStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "QuotationStyleCount"));
            //this.lbLDStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "LDStyleCount"));
            //this.lbLDPercent.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "LDPercent"));
        }

        //decimal _QuotationStyleCount = 0;
        //decimal _LDStyleCount = 0;
        //private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    object o = this.GetCurrentColumnValue("QuotationStyleCount");
        //    if (o != null)
        //        _QuotationStyleCount += (decimal)o;

        //    o = this.GetCurrentColumnValue("LDStyleCount");
        //    if (o != null)
        //        _LDStyleCount += (decimal)o;
        //}

        //private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    if ((this.Report.DataSource as System.Collections.Generic.List<PH.SPC.BO. SPCAnalyse>).Count==0)
        //        return;
        //    this.lbLDPercent.Text = _QuotationStyleCount == 0 ? "0.00%" : (_LDStyleCount / _QuotationStyleCount).ToString("0.00%");
        //}
    }
}
