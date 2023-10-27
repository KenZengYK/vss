using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.SqlClient;
using PH.Platform.BO;
using System.Data.Linq;

namespace PH.LWPM.UI.MC.Report
{
    public partial class MCTypeSummaryReport : DevExpress.XtraReports.UI.XtraReport
    {

        public MCTypeSummaryReport()
        {
            
        }
        private string _factory;
        public MCTypeSummaryReport(string factory)
        {
            InitializeComponent();
            this._factory = factory;
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        private void MCTypeSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrLabel11.Text = DateTime.Now.ToShortDateString();
            context.CommandTimeout = 8000;
            string sql = string.Format("exec [SP_SUMMARY_MC_TYPE] '{0}'", _factory);
            this.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sql);
        }
       
        int total = 0;
        int count = 1;
        string beforeFact = "";
        string beforeId = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GetMCTypeSummary mct = this.GetCurrentRow() as GetMCTypeSummary;
            int rowCount = this.RowCount;
            int nextRow = this.RowIndex;
            if (mct == null) return;
            if (beforeFact != mct.Factory.Trim())
            {
                xtFactory.Text = "  " + mct.Factory.Trim();
                xrMachineClass.Text = mct.MachineClass.Trim();
              
            }
            else
            {
                xtFactory.Text = "";
             //   xrtmachineclassGroup.Text = "";
                if (beforeId != mct.MachineClass.Trim() && beforeFact == mct.Factory.Trim())
                {
                    xtFactory.Text = " " + mct.Factory.Trim();
                    xrMachineClass.Text = mct.MachineClass.Trim();
                }
                else
                {
                    xtFactory.Text = "";
                    xrMachineClass.Text = "";
                }
                
            }
            count++;
            total = total + mct.cnt;           
            beforeFact = mct.Factory.Trim();
            beforeId = mct.MachineClass.Trim();
        }
        //Xsj20120914:以下代碼為了統計百份比而添加
        private decimal sTotal = 0;
        private decimal bTotal = 0;
        private decimal mTotal = 0;
        private decimal lTotal = 0;
        private decimal tTotal = 0;

        private void GroupHeader3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            sTotal = 0;
            bTotal = 0;
            mTotal = 0;
            lTotal = 0;
            tTotal = 0;
            total = 0;
        }
        private void GroupFooter3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrSYearPer.Text = Math.Round(sTotal * 100 / total, 2).ToString();
            this.xrBYearPer.Text = Math.Round(bTotal * 100 / total, 2).ToString();
            this.xrMYearPer.Text = Math.Round(mTotal * 100 / total, 2).ToString();
            this.xrLYearPer.Text = Math.Round(lTotal * 100 / total, 2).ToString();
            this.xrTYearPer.Text = Math.Round(tTotal * 100 / total, 2).ToString();
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {

            GetMCTypeSummary mct = this.GetCurrentRow() as GetMCTypeSummary;
            sTotal += mct.seniority1;
            bTotal += mct.seniority2;
            mTotal += mct.seniority3;
            lTotal += mct.seniority4;
            tTotal += mct.seniority5;
        }

       
       


    }
}
