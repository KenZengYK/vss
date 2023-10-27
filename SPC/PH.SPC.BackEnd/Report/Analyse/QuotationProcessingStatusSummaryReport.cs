using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.BackEnd
{
    public partial class QuotationProcessingStatusSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {
        public QuotationProcessingStatusSummaryReport(string Customer,string DateFrom,string DateTo)
        {
            InitializeComponent();
            this.BeforePrint += new System.Drawing.Printing.PrintEventHandler(QuotationProcessingStatusSummaryReport_BeforePrint);


            //Xsj:記錄統計的客戶，如果客戶為ALL，則顯示ALL。
            //時段由CreateDate,RequestComplete Date,發單日期，預設完成日期，實際完成日期。這5個日期條件中的最小值和最大值構成。 
            this._customer = (Customer == "") ? "ALL" : Customer;
            this._date1 = DateFrom;
            this._date2 = DateTo;

        }


        //public QuotationProcessingStatusSummaryReport(string param)
        //    : this()
        //{
        //    GetValues(param);
        //}

        //string _param;
        string _customer;
        string _season1;
        string _season2;
        string _date1;
        string _date2;
        //public void GetValues(string parameters)
        //{
        //    _param = parameters;
        //    if (string.IsNullOrEmpty(parameters)) return;
        //    string[] c = new string[1] { ";" };
        //    string[] ss = parameters.Split(c, StringSplitOptions.None);
        //    this._customer = ss[0];
        //    this._season1 = ss[1];
        //    this._season2 = ss[2];
        //    this._date1 = ss[3];
        //    this._date2 = ss[4];
        //}

        void QuotationProcessingStatusSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Banding();
        }



        public void Banding()
        {
            this.lbCustomer.Text = string.Format("客戶 : {0}", this._customer);
            //this.lbSeason.Text = string.Format("季節 : {0} ~ {1}", this._season1, this._season2);
            this.lbCreateDate.Text = string.Format("時段 : {0} ~ {1}", this._date1, this._date2);

            this.lblQuotationStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "MakeSampleTimes"));
            this.lbLDStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "LDMakedQty"));
            //Xsj20130116:add款式數量統計
            this.lblSubStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "StyleCount"));
            this.lblStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "StyleCount"));
            this.lblSubQuotationStyleCount.DataBindings.Add(new XRBinding("Text", this.Report.DataSource, "MakeSampleTimes")); 
            //---End
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
            //if ((this.Report.DataSource as System.Collections.Generic.List<PH.SPC.BO. SPCAnalyse>).Count==0)
            //    return;
            //this.lbLDPercent.Text = _LDMakedQty == 0 ? "0.00%" : (_SampleMakedQty / _LDMakedQty).ToString("0.00%");
        }
    }
}
