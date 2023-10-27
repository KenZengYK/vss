using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.MC.Report
{
    public partial class MCSummyByGroupRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public MCSummyByGroupRpt()
        {
            InitializeComponent();
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void MCSummyByGroupRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string sql = string.Format("exec [PROC_MCSummary_ByGroup]");
            this.bsMcSumGrp.DataSource = context.ExecuteQuery<McSummaryByGroup>(sql);
        }

        int _subtotal = 0;
        int _phgrouptotal=0;
        int ii = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {            

            McSummaryByGroup mbg = this.GetCurrentRow() as McSummaryByGroup;
            if (mbg == null)
                return;

            _subtotal = mbg.Total_China + mbg.Total_CG;
            this.xtcSubtotal.Text = _subtotal.ToString();
            //this.xtcPerGrp.Text=String.Format("{0.00}", Math.Round(_subtotal * 100.00 / mbg.Total_Group,2));
            this.xtcPerGrp.Text = String.Format("{0:f2}", _subtotal * 100.00 / mbg.Total_Group, 2);
                //(mbg.Total_China + mbg.Total_OffShoe) * 100.00 / mbg.Total_Group;
            //_phgrouptotal = _phgrouptotal + _subtotal;          
            if (ii == 0)
                _phgrouptotal = mbg.Total_Group;
            ii++;

        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           
           // string a = xrTableCell46.Text;
           // string b = xrTableCell43.Text;

        }

        private void xtcFootSum_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xtcFootSum.Text = _phgrouptotal.ToString();
        }

    }
}
