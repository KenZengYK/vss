using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI.RPT
{
    public partial class rptWorkShopAnalysis : DevExpress.XtraReports.UI.XtraReport
    {
        public rptWorkShopAnalysis()
        {
            InitializeComponent();
        }

        string QueryDate,Factory,Enddate;

        public rptWorkShopAnalysis(string execdate,string enddate,string factory)
        {
            InitializeComponent();
            QueryDate = execdate;
            Factory = factory;
            Enddate = enddate;
            PrepareData();
        }


        public void PrepareData()
        {
            
            List<Proc_WorkShopAnalysiskResult> lst = SqlDataHelper.GetWorkShopAnalyData(QueryDate,Enddate,Factory,"A");

        
            IEnumerable<Proc_WorkShopAnalysiskResult> query = null;
            query = from r in lst orderby r.Cal_Per descending select r;

            //ArrayList sortitems = new ArrayList();
            int i=0;
            double _value = 0;

            foreach (Proc_WorkShopAnalysiskResult item in query)
            {

                if (_value != item.Cal_Per)
                {
                    i++;
                    item.Level = i;
                }
                else
                    item.Level = i;

                _value = item.Cal_Per;


                //if (!sortitems.Contains(item.Cal_Per))
                //{
                //    item.Level = i;
                //    i++;
                //}
                //else
                //    item.Level =sortitems.se
              

            }

            this.bsWsAnaly.DataSource = query.ToList();

        }



        int _t1 = 0, _t2 = 0, _t3 = 0, _t4 = 0, _t5 = 0, _t6 = 0, _t7 = 0,_allpassqty=0;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Proc_WorkShopAnalysiskResult awr = this.GetCurrentRow() as Proc_WorkShopAnalysiskResult;
            if (awr == null) return;

            _t1 = _t1 + awr.OneFailQty;
            _t2 = _t2 + awr.TwoFailQty;
            _t3 = _t3 + awr.ThreeFailQty;
            _t4 = _t4 + awr.FourFailQty;
            _t5 = _t5 + awr.FiveFailQty;
            _t6 = _t6 + awr.SixFailQty;
            _t7 = _t7 + awr.SevenFailQty;

            _allpassqty = _allpassqty + awr.AllPassQty;

            //double aa = Convert.ToDouble(awr.ReauditTimes * 100.00 / awr.AllTimes);

            double aa = Convert.ToDouble(awr.AllPassQty * 100.00 / (awr.AllPassQty + awr.FailTotalQty));

            this.xrPer.Text = String.Format("{0:F}", aa) + "%";


          //  xrPer.Text = awr.Cal_Per.ToString() + "%";

        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrPassTtl.Text = _allpassqty.ToString();
            this.xrOneTtl.Text = _t1.ToString();
            this.xrTwoTtl.Text = _t2.ToString();
            this.xrThreeTtl.Text = _t3.ToString();
            this.xrFourTtl.Text = _t4.ToString();
            this.xrFiveTtl.Text = _t5.ToString();
            this.xrSixTtl.Text = _t6.ToString();
            this.xrSevenTtl.Text = _t7.ToString();
            int _failttl = _t1 + _t2 + _t3 + _t4 + _t5 + _t6 + _t7;

            this.xrFailTtl.Text = _failttl.ToString();

              double aa = Convert.ToDouble( _allpassqty * 100.00 / (this._allpassqty +_failttl) );
              this.xrPerTtl.Text = String.Format("{0:F}", aa) + "%";
        }

    }
}
