using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.Platform.BO;
using PH.LWPM.BO;
namespace PH.LWPM.UI.MC.Report
{
    public partial class MachinePoolRpt : DevExpress.XtraReports.UI.XtraReport
    {
        private string factory;
        private string location;
        private string type;
        private string id;
        private string dept;
        private string wss;
        private string line;
        private int Dt;
        private string Tm;
        public MachinePoolRpt(int _Dt,String _Tm,string _factory,string _location,string _type,string _id,string _dept,string _wss,string _line)
        {
            InitializeComponent();
            this.factory = _factory;
            this.location = _location;
            this.type = _type;
            this.dept = _dept;
            this.wss = _wss;
            this.line = _line;
            this.Dt = _Dt;
            this.Tm = _Tm;
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        private void MachinePoolRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
             context.CommandTimeout = 8000;
            string sql = string.Format("exec [getSummaryMC]  {0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}'", this.Dt,this.Tm,this.factory, this.location, this.type, this.id,this.dept,this.wss,this.line);
            this.bindingSource1.DataSource=context.ExecuteQuery<GetMCResult>(sql);
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            c_Factory.Text = this.factory;
            c_Type.Text = this.type;
            c_location.Text = this.location;
            T_Line.Text = this.line;
            this.c_wss.Text = this.wss;
            this.xrClass.Text = " (" + this.dept + ")";
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MachinePoolSummary sRpt = new MachinePoolSummary();
            context.CommandTimeout = 8000;
            string sql = string.Format("exec [GetSumMC] {0},'{1}'",this.Dt,this.Tm);
            sRpt.bindingSource1.DataSource = context.ExecuteQuery<GetMCSummary>(sql);
            xrMachineSummary.ReportSource = sRpt;
        }
    }
}
