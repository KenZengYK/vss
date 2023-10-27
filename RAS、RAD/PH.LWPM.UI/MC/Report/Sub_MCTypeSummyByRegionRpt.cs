using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Collections.Generic;

namespace PH.LWPM.UI.MC.Report
{
    public partial class Sub_MCTypeSummyByRegionRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public Sub_MCTypeSummyByRegionRpt()
        {
            InitializeComponent();
        }

        int _regionid;
        public Sub_MCTypeSummyByRegionRpt(int regrionid)
        {
            InitializeComponent();
            _regionid = regrionid;
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        int summytotal = 0;
        private void MCTypeSummyByRegionRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           // xrLabel11.Text = DateTime.Now.ToShortDateString();
         
            context.CommandTimeout = 8000;
            string sqlcmd = "";               


            sqlcmd = string.Format("exec [PROC_MCSummary_REGION_SUB] {0}", _regionid);

            IEnumerable<McSummaryByRegionSub> datalist = context.ExecuteQuery<McSummaryByRegionSub>(sqlcmd);

          
            List<McSummaryByRegionSub> list1 = new List<McSummaryByRegionSub>();
            //IEnumerator<McSummaryByRegionSub> ds=datalist.GetEnumerator();

            //foreach (McSummaryByRegionSub ms in ds)
            //{
            //    total = total + ms.SubTotal;
            //}

            foreach (var item in datalist)
            {
                summytotal = summytotal + item.SubTotal;
                list1.Add(item as McSummaryByRegionSub);
            }

           // datalist.GetEnumerator().Reset();

            this.bsSummyMc_sub.DataSource = list1;

        }

        string beforegrp = "";

        int _total = 0;
        int _chinasummy=0;
        int _offshoesummy = 0;

        int icount = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            McSummaryByRegionSub mbs = this.GetCurrentRow() as McSummaryByRegionSub;

            int chinatotal = mbs.Summy_SL + mbs.Summy_GG + mbs.Summy_RX + mbs.Summy_SLSALE; // mbs.Summy_FJ;
            xtcChinaRegion.Text = chinatotal.ToString();
            xtcOffShore.Text = mbs.Summy_CG.ToString();

            _chinasummy = _chinasummy + chinatotal;
            _offshoesummy = _offshoesummy + mbs.Summy_CG;

            xtcPer1.Text = Math.Round(mbs.SubTotal * 100.0 / mbs.Summy_Class,2).ToString("#0.00");

            xtcPer2.Text = Math.Round(chinatotal * 100.0 / mbs.Summy_Class,2).ToString("#0.00");
            xtcPer3.Text = Math.Round(mbs.Summy_CG * 100.0 / mbs.Summy_Class,2).ToString("#0.00");
            

            _total = _total + mbs.SubTotal;

            if (beforegrp != mbs.McClass.Trim())
            {
                beforegrp = mbs.McClass.Trim();
                xtcGroup.Text = mbs.McClass.Trim();
                xrTableCell1.Text = mbs.McClass_EN.Trim();
                xrTableCell28.Text = mbs.McClass_CN.Trim();
              
                //if (icount > 0)
                //{
                //    _chinasummy = 0;
                //    _offshoesummy = 0;
                //}
                //else
                //{
                //    _chinasummy = _chinasummy + chinatotal;
                //    _offshoesummy = _offshoesummy + mbs.Summy_CG;                
                //}
              
            }
            else
            {
                xtcGroup.Text = "";
                xrTableCell1.Text ="";
                xrTableCell28.Text ="";
                //_chinasummy = _chinasummy + chinatotal;
                //_offshoesummy = _offshoesummy + mbs.Summy_CG;
            
            }        

        }

        int _chinatotal = 0,_shoetotal=0;
        private void grpMc_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           // McSummaryByRegionSub msr = this.GetCurrentRow() as McSummaryByRegionSub;
            int _subtotal = int.Parse(xtcGG.Summary.GetResult().ToString());
            xtcPer4.Text = Math.Round(_subtotal * 100.00 / summytotal, 2).ToString("#0.00");
            xtcPerCN.Text = Math.Round(_chinasummy * 100.00 /_subtotal, 2).ToString("#0.00");
            xtcPerOffshoe.Text = Math.Round(_offshoesummy * 100.00 /_subtotal, 2).ToString("#0.00");

            xtcSummyCN.Text = _chinasummy.ToString(); 
            xtcSummyOff.Text = _offshoesummy.ToString();
            _chinatotal = _chinatotal + _chinasummy;
            _shoetotal = _shoetotal + _offshoesummy;
        }


        private void xtcGrdTotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xtcGrdTotal.Text = _total.ToString();

        }

        private void grpMc_AfterPrint(object sender, EventArgs e)
        {
            _chinasummy = 0; _offshoesummy = 0;
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xtcChinaTotal.Text = _chinatotal.ToString();
            this.xtcShoeTotal.Text = _shoetotal.ToString();
            this.xtcChinaPer.Text = Math.Round(_chinatotal * 100.00 / _total, 2).ToString("#0.00");
            this.xtcShoePer.Text = Math.Round(_shoetotal * 100.00 / _total, 2).ToString("#0.00");
        }


    }
}
