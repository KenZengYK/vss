using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using PH.Platform.BO;

namespace PH.LWPM.UI.MC.Report
{
    public partial class MCTypeTotalSub : DevExpress.XtraReports.UI.XtraReport
    {
        public MCTypeTotalSub()
        {
            InitializeComponent();
        }

      //  private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void MCTypeTotalSub_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //context.CommandTimeout = 8000;
            //string sql = "";


            //sql = string.Format("exec SP_SUMMARY_MC_TYPE_ALLFTY_02");
         
            //List<GetMCTypeSummary> li = new List<GetMCTypeSummary>();
            //IEnumerable<GetMCTypeSummary> eb = context.ExecuteQuery<GetMCTypeSummary>(sql);
            //if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "OFFSHORE")
            //{
            //    sql = string.Format("exec SP_SUMMARY_MC_TYPE_02 '{0}'", _factory);


            //}
            //if (this._factory == "GROUP")
            //{
            //    sql = string.Format("exec SP_SUMMARY_MC_TYPE_ALLFTY_02 ");
            //}
            //if (this._factory == "CHINA" || this._factory == "OFFSHORE")
            //{
            //    sql = string.Format("exec SP_SUMMARY_MC_TYPE_REGION_02 '{0}'", _factory);
            //}
            //this.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sql);
        }

        private decimal seniority1T = 0;
        private decimal seniority2T = 0;
        private decimal seniority3T = 0;
        private decimal seniority4T = 0;
        private decimal seniority5T = 0;
        private decimal Sumtotal = 0;
        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (Sumtotal == 0)
            {
            }
            else
            {

                this.xrseniority1.Text = Math.Round(seniority1T * 100 / Sumtotal, 2).ToString();
                this.xrseniority2.Text = Math.Round(seniority2T * 100 / Sumtotal, 2).ToString();
                this.xrseniority3.Text = Math.Round(seniority3T * 100 / Sumtotal, 2).ToString();
                this.xrseniority4.Text = Math.Round(seniority4T * 100 / Sumtotal, 2).ToString();
                this.xrseniority5.Text = Math.Round(seniority5T * 100 / Sumtotal, 2).ToString();

                xrTotalnew.Text = Sumtotal.ToString();
                xrSTotalnew.Text = seniority1T.ToString();
                xrBTotalnew.Text = seniority2T.ToString();
                xrMTotalnew.Text = seniority3T.ToString();
                xrLTotalnew.Text = seniority4T.ToString();
                xrTTotalnew.Text = seniority5T.ToString();

            }
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            GetMCTypeSummary mct = this.GetCurrentRow() as GetMCTypeSummary;
            if (mct == null)
                return;

            if (mct.Ts1 != 0)
            {
                if (mct.Factory.Trim() != "Off-shore" || mct.Factory.Trim() != "China")
                {
                  
                   // if (mct.Ts1 != 3 && mct.Ts1 != 7) remark by joseph
                    if (mct.Ts1 != 3 && mct.Ts1 != 8)
                    {
                        seniority1T += mct.seniority1;
                        seniority2T += mct.seniority2;
                        seniority3T += mct.seniority3;
                        seniority4T += mct.seniority4;
                        seniority5T += mct.seniority5;
                        Sumtotal += mct.cnt;
                    }
                }
            }
            else
            {
                seniority1T += mct.seniority1;
                seniority2T += mct.seniority2;
                seniority3T += mct.seniority3;
                seniority4T += mct.seniority4;
                seniority5T += mct.seniority5;
                Sumtotal += mct.cnt;
            }

           
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
          //  xrTotal.Text = Sumtotal;
            

        }

        private void MCTypeTotalSub_AfterPrint(object sender, EventArgs e)
        {
          
        }

        private void MCTypeTotalSub_BeforePrint_1(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
         
        }

        private void ReportFooter_AfterPrint(object sender, EventArgs e)
        {
          
        }

        private void xrTable2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GetMCTypeSummary mct = this.GetCurrentRow() as GetMCTypeSummary;
            if (mct == null)
                return;

            if (mct.Factory.Trim() == "Bangladesh" || mct.Factory.Trim() == "China") //Off-shore
            {
                xtFactory.ForeColor = Color.Blue;
                xrTableCell7.Text = "Total:-";
                xrTableCell7.ForeColor = Color.Blue;
                xrTableRow2.ForeColor = Color.Blue;
                xrTableRow1.ForeColor = Color.Blue;
                xrTableRow5.ForeColor = Color.Blue;
                xrTableRow3.ForeColor = Color.Blue;
            }
            else
            {
                xtFactory.ForeColor = Color.Black;
                xrTableCell7.Text = "Sub-total:-";
                xrTableCell7.ForeColor = Color.Black;

                xrTableRow2.ForeColor = Color.Black;
                xrTableRow1.ForeColor = Color.Black;
                xrTableRow5.ForeColor = Color.Black;
                xrTableRow3.ForeColor = Color.Black;
            }
        }

     
    }
}
