using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.BackEnd
{
    public partial class SampleOntimeAnalyseDetailReportBK : DevExpress.XtraReports.UI.XtraReport
    {
        string _param;
        string _customer;
        string _season1;
        string _season2;
        string _date1;
        string _date2;

        public SampleOntimeAnalyseDetailReportBK()
        {
            InitializeComponent();
        }
        public SampleOntimeAnalyseDetailReportBK(string param)             
        {
            InitializeComponent();
            GetValues(param);
        }
      
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

            this.lbCustomer.Text = string.Format("客戶 : {0}", this._customer);
            this.lbSeason.Text = string.Format("季節 : {0} ~ {1}", this._season1, this._season2);
            this.lbCreateDate.Text = string.Format("時段 : {0} ~ {1}", this._date1, this._date2);

        }

    }
}
