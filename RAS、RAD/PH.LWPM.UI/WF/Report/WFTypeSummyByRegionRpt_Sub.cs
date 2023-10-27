using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFTypeSummyByRegionRpt_Sub : DevExpress.XtraReports.UI.XtraReport
    {
        public WFTypeSummyByRegionRpt_Sub()
        {
            InitializeComponent();
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void WFTypeSummyByRegionRpt_Sub_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            context.CommandTimeout = 8000;
            string sqlcmd = "";


            sqlcmd = string.Format("exec [PROC_SummaryReportByLaborsCost_Sub]");

            IEnumerable<MFSummaryByRegionResult_Sub> datalist = context.ExecuteQuery<MFSummaryByRegionResult_Sub>(sqlcmd);
            this.bsWFSub.DataSource = datalist;

           // List<McSummaryByRegionSub> list1 = new List<McSummaryByRegionSub>();
        }

        int _shead, _phead, _nhead, _sshead,_headcount;
        decimal _sper, _pper, _nper, _ssper;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MFSummaryByRegionResult_Sub mbs = this.GetCurrentRow() as MFSummaryByRegionResult_Sub;

            xtcCost1.Text = mbs.S_Head.ToString() + " / " + mbs.S_Per.ToString()+"%";
            xtcCost2.Text = mbs.P_Head.ToString() + " / " + mbs.P_Per.ToString() + "%";
            xtcCost3.Text = mbs.N_Head.ToString() + " / " + mbs.N_Per.ToString() + "%";
            xtcCost4.Text = mbs.SS_Head.ToString() + " / " + mbs.SS_Per.ToString() + "%";
            xrtHcPer.Text = mbs.HC_Per.ToString() + "%";

            _shead = _shead + mbs.S_Head;
            _phead = _phead + mbs.P_Head;
            _nhead = _nhead + mbs.N_Head;
            _sshead = _sshead + mbs.SS_Head;

            _headcount = _headcount + mbs.HeadCount;

            _sper = _sper + mbs.S_Per;
            _pper = _pper + mbs.P_Per;
            _nper = _nper + mbs.N_Per;
            _ssper = _ssper + mbs.SS_Per;


        }

        int _total = 0;
        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xtcSubCost1.Text = _shead.ToString() + " / " + Math.Round(_shead * 100.0 / _headcount,2).ToString("#0.00")+"%";     /// _sper.ToString() + "%";

            xtcSubCost2.Text = _phead.ToString() + " / " + Math.Round(_phead * 100.0 / _headcount, 2).ToString("#0.00") + "%"; //_pper.ToString() + "%";

            xtcSubCost3.Text = _nhead.ToString() + " / " + Math.Round(_nhead * 100.0 / _headcount, 2).ToString("#0.00") + "%"; //_nper.ToString() + "%";

            xtcSubCost4.Text = _sshead.ToString() + " / " + Math.Round(_sshead * 100.0 / _headcount, 2).ToString("#0.00") + "%"; //_ssper.ToString() + "%";

            xrtSubHcount.Text = _headcount.ToString();
            _total = _total + _headcount;
        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {

            _shead = 0;
            _phead = 0;
            _nhead = 0;
            _sshead = 0;
            _headcount = 0;

            _sper = 0;
            _pper = 0;
            _nper = 0;
            _ssper = 0;
        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xtcTotal.Text = _total.ToString();
        }

    }
}
