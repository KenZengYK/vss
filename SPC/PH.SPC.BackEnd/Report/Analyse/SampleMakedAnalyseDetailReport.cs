using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.BackEnd
{
    public partial class SampleMakedAnalyseDetailReport : DevExpress.XtraReports.UI.XtraReport
    {
        public SampleMakedAnalyseDetailReport()
        {
            InitializeComponent();
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(SampleMakedAnalyseReport_BeforePrint);
        }
        public SampleMakedAnalyseDetailReport(string param)
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

            //Xsj20130117: 更改如下
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
            //----End

        }
        void SampleMakedAnalyseReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Banding();
        }
        public void Banding()
        { 
            this.lbCreateDate.Text = string.Format("時段 : {0} ~ {1}", this._date1, this._date2);

            //this.lbLDPercent.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "LDMakedPercent"));
        }

        decimal _SampleMakedQty = 0;
        decimal _LDMakedQty = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object o = this.GetCurrentColumnValue("SampleMakedQty");
            if (o != null)
                _SampleMakedQty += (int)o;

            o = this.GetCurrentColumnValue("LDMakedQty");
            if (o != null)
                _LDMakedQty += (decimal)o;
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if ((this.Report.DataSource as System.Collections.Generic.List<PH.SPC.BO. SPCAnalyse>).Count==0)
                return;
        }
    }
}
