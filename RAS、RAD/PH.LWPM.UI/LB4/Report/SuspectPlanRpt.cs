using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;

namespace PH.LWPM.UI.LB4.Report
{
    public partial class SuspectPlanRpt : DevExpress.XtraReports.UI.XtraReport
    {
        public RAPLQDataContext CurDc;
        public string StartDT, EndDT, Factory;
        public int CType;
        public SuspectPlanRpt()
        {
            InitializeComponent();
        }

        private void SuspectPlanRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.CurDc == null)
                return;
            
            string start = "2015-05-01";
            string end = "2015-05-07";
            string fac = "SL";
            this.lbDate.Text = StartDT + " ~ " + EndDT;

            string sqlcmd = string.Format("exec [SP_LB4WFMCBYWEEK] {0},'{1}','{2}','{3}'", CType, Factory, StartDT, EndDT);
            this.bsSuspect.DataSource = CurDc.ExecuteQuery<SuspectRpt>(sqlcmd);
        }

    }
}
