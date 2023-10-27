using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.BackEnd
{
    public partial class SampleOntimeAnalyseDetailReport : DevExpress.XtraReports.UI.XtraReport
    {
        public SampleOntimeAnalyseDetailReport()
        {
            InitializeComponent();
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(LDSuccessAnalyseReport_BeforePrint);
        }
        public SampleOntimeAnalyseDetailReport(string param)
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

            //Xsj2013-1-17:注釋掉上面的代碼，添加下面的代碼
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
            //---End
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
           
        }

        
    }
}
