using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFTypeSummyByRegionRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public WFTypeSummyByRegionRpt()
        {
            InitializeComponent();
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void WFTypeSummyByRegionRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            WFTypeSummyByRegionRpt_Sub subrpt = new WFTypeSummyByRegionRpt_Sub();
            this.xrSubRpt.ReportSource = subrpt;

            this.xrlDate.Text = DateTime.Now.ToShortDateString();
            this.xrlDate1.Text = DateTime.Now.ToShortDateString();

            //bsSummyWF.Sort = "FSeq,LSeq";
            this.bsSummyWF.DataSource = context.ExecuteQuery<MFSummaryByRegionResult>("exec [PROC_SummaryReportByLaborsCost]");
     
        }


        string _factory="", _description="", _wfpart="", _workforcetyen="", _workforcetycn="";

        decimal _subtotal1 = 0, _subtotal2 = 0,_total1=0,_total2=0,_perbycost1=0,_perbycost2=0;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MFSummaryByRegionResult mbr = this.GetCurrentRow() as MFSummaryByRegionResult;

            _subtotal1 = _subtotal1 + mbr.Per1;
            _subtotal2 = _subtotal2 + mbr.Per2;

            _perbycost1 = _perbycost1 + mbr.Per1;
            _perbycost2 = _perbycost2 + mbr.Per2;

            _total1 = _total1 + mbr.Headcount;
            _total2 = _total2 + mbr.Post;

            xtcPer3.Text = mbr.Per1.ToString() + "%";
            xtcPer4.Text = mbr.Per2.ToString() + "%";
           

            if (_factory != mbr.Factory.Trim())
            {
 
                _factory = mbr.Factory.Trim();
                xtcFactory.Text = _factory;
                xtcDesc.Text = mbr.Description.Trim();
                _description = mbr.Description.Trim();



            }
            else
            {
                xtcFactory.Text = "";
                this.xtcDesc.Text = "";
            }

            if (_wfpart != mbr.WFpart.Trim())
            {
                _wfpart = mbr.WFpart.Trim();
                xtcWFPart.Text = _wfpart;
            }
            else
            {
                xtcWFPart.Text = "";
            }

            if (_workforcetyen != mbr.Workforcetyen.Trim())
            {
                _workforcetyen = mbr.Workforcetyen.Trim();
                _workforcetycn = mbr.Workforcetycn.Trim();
                xtcTitleTyen.Text = _workforcetyen;
                xtcTitleTycn.Text = _workforcetycn;
            }
            else
            {
                xtcTitleTyen.Text = "";
                xtcTitleTycn.Text = "";

            }

        }

        private void grpWFSummy_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //MFSummaryByRegionResult mbr = this.GetCurrentRow() as MFSummaryByRegionResult;
            //xtcSubBy.Text = "Sub-total by " + mbr.Workforcetyen;
            //xtcPer1.Text = _subtotal1.ToString() + "%";
            //xtcPer2.Text = _subtotal2.ToString() + "%";
            //xtcTotal1.Text = _total1.ToString();
            //xtcTotal2.Text = _total2.ToString();
            MFSummaryByRegionResult mbr = this.GetCurrentRow() as MFSummaryByRegionResult;
            xtcTotalBy.Text = "Total by : " + mbr.Factory;
        }

        private void grpWFSummy_AfterPrint(object sender, EventArgs e)
        {
            //_subtotal1 = 0; _subtotal2 = 0;
            _total1 = 0; _total2 = 0;
        }

        private void GroupFooter1_AfterPrint(object sender, EventArgs e)
        {
            _perbycost1 = 0; _perbycost2 = 0;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            MFSummaryByRegionResult mbr = this.GetCurrentRow() as MFSummaryByRegionResult;
            this.xtcTotalByCost.Text = "Sub-total by " + mbr.WFpart;
            xtcPerbycost1.Text = _perbycost1>100? "100.00%":_perbycost1.ToString() + "%";
            xtcPerbycost2.Text = _perbycost2>100?"100.00%":_perbycost2.ToString()+"%";


        }

        private void GroupFooter2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MFSummaryByRegionResult mbr = this.GetCurrentRow() as MFSummaryByRegionResult;
            xtcSubBy.Text = "Sub-total by " + mbr.Workforcetyen;
            xtcPer1.Text =_subtotal1>100?"100.00%":_subtotal1.ToString() + "%";
            xtcPer2.Text =_subtotal2>100 ?"100.00%": _subtotal2.ToString() + "%";
        }

        private void GroupFooter2_AfterPrint(object sender, EventArgs e)
        {
            _subtotal1 = 0; _subtotal2 = 0;
        }

    }
}
