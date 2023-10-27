using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Data.SqlClient;
using PH.Platform.BO;
using System.Data.Linq;
using System.Collections.Generic;

namespace PH.LWPM.UI.MC.Report
{
    public partial class MCDeptSummaryForChineseReport : DevExpress.XtraReports.UI.XtraReport
    {
        public MCDeptSummaryForChineseReport()
        {
            
        }
        private string _factory;
        public MCDeptSummaryForChineseReport(string factory)
        {
            InitializeComponent();
            this._factory = factory;
                  
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();


        MCTypeTotalSub MCDDepSub = new MCTypeTotalSub();
        private void MCDeptSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrLabel11.Text = DateTime.Now.ToShortDateString();
            context.CommandTimeout = 8000;
            string sql = "";
            string sqlsub = "";
            if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "Off-shore")
            {

                xrlbChangeDeptName.Text = "(Factory)";
               sql = string.Format("exec [MCDeptSummaryEN_CN1] '{0}'", _factory);
               
                xrSubreport1.ReportSource = MCDDepSub;


            }
            if (this._factory == "GROUP")
            {
                xrlbChangeDeptName.Text = "(PH Group)";
                sql = string.Format("exec MCDeptSummaryAllFactory1 ");
            }
            if (this._factory == "CHINA" || this._factory == "Off-shore")
            {
                if (this._factory == "CHINA")
                {
                    xrlbChangeDeptName.Text = "(China Region)";
                }
                if (this._factory == "Off-shore")
                {
                    xrlbChangeDeptName.Text = "(Off-shore Region)";
                }


                if (_factory == "Off-shore")
                {
                    sql = string.Format("exec MCDeptSummary_REGION_1 '{0}'", "OFFSHORE");
                }
                else
                {
                    sql = string.Format("exec MCDeptSummary_REGION_1 '{0}'", _factory);
                }
            }

            this.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sql);

            if (_factory == "GROUP")
            {
                xrChange.Text = "Group";

                xrSubreport1.ReportSource = MCDDepSub;
            }
            if (_factory == "CHINA" || this._factory == "Off-shore")
            {
                xrChange.Text = "Region";

                xrSubreport1.ReportSource = MCDDepSub;
            }


            if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "Off-shore")
            {
                xrChange.Text = "Factory";
            }

            //sub
            if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "Off-shore")
            {
                sqlsub = string.Format("exec MCDeptSummaryEN_CN2 '{0}'", _factory);


            }
            if (this._factory == "GROUP")
            {
                sqlsub = string.Format("exec MCDeptSummaryAllFactory2 ");
            }
            if (this._factory == "CHINA" || this._factory == "Off-shore")
            {
                if (_factory == "Off-shore")
                {
                    sqlsub = string.Format("exec MCDeptSummary_REGION_2 '{0}'", "OFFSHORE");
                }
                else
                {
                    sqlsub = string.Format("exec MCDeptSummary_REGION_2 '{0}'", _factory);
                }
            }


               if (this._factory == "GROUP")
            {
                int offs = 0;
                int s1 = 0;
                int s2 = 0;
                int s3 = 0;
                int s4 = 0;
                int s5 = 0;
                int _offs = 0;
                int _s1 = 0;
                int _s2 = 0;
                int _s3 = 0;
                int _s4 = 0;
                int _s5 = 0;
                List<GetMCTypeSummary> li = new List<GetMCTypeSummary>();

               IEnumerable<GetMCTypeSummary> em=context.ExecuteQuery<GetMCTypeSummary>(sqlsub);
                if(em !=null)
                {
                         foreach (GetMCTypeSummary tb in em)
                    {
                        
                        li.Add(tb);
                        //if (tb.Factory.Trim() == "CG" || tb.Factory.Trim() == "KB" || tb.Factory.Trim() == "RX")
                        if (tb.Factory.Trim() == "CG" || tb.Factory.Trim() == "KB")
                        {

                            offs += tb.cnt;
                            s1 += tb.seniority1;
                            s2 += tb.seniority2;
                            s3 += tb.seniority3;
                            s4 += tb.seniority4;
                            s5 += tb.seniority5;
                            if (tb.Factory.Trim() == "CG")
                            {
                                tb.Ts1 = 1;
                            }
                            if (tb.Factory.Trim() == "KB")
                            {
                                tb.Ts1 = 2;
                            }
                            //if (tb.Factory.Trim() == "RX")
                            //{
                            //    tb.Ts1 = 2;
                            //}

                        }
                        else
                        {
                            _offs += tb.cnt;
                            _s1 += tb.seniority1;
                            _s2 += tb.seniority2;
                            _s3 += tb.seniority3;
                            _s4 += tb.seniority4;
                            _s5 += tb.seniority5;
                        }

                       

                    }
                }
                
               
                GetMCTypeSummary tbnew = new GetMCTypeSummary();
                tbnew.Factory = "Off-shore";
                tbnew.cnt = offs;
                tbnew.seniority1 = s1;
                tbnew.seniority2 = s2;
                tbnew.seniority3 = s3;
                tbnew.seniority4 = s4;
                tbnew.seniority5 = s5;

                tbnew.st1 =tbnew.seniority1 * 100 / decimal.Parse(tbnew.cnt.ToString());
                tbnew.st2 = tbnew.seniority2 * 100 / decimal.Parse(tbnew.cnt.ToString());
                tbnew.st3 = tbnew.seniority3 * 100 / decimal.Parse(tbnew.cnt.ToString()); 
                tbnew.st4 = tbnew.seniority4 * 100 / decimal.Parse(tbnew.cnt.ToString());
                tbnew.st5 = tbnew.seniority5 * 100 / decimal.Parse( tbnew.cnt.ToString()) ;
                tbnew.Ts1 = 3;
               // li.Add(tbnew);

                GetMCTypeSummary _tbnew = new GetMCTypeSummary();
                _tbnew.Factory = "China";
                _tbnew.cnt = _offs;
                _tbnew.seniority1 = _s1;
                _tbnew.seniority2 = _s2;
                _tbnew.seniority3 = _s3;
                _tbnew.seniority4 = _s4;
                _tbnew.seniority5 = _s5;
                _tbnew.st1 = _tbnew.seniority1 * 100 /decimal.Parse( _tbnew.cnt.ToString());
                _tbnew.st2 = _tbnew.seniority2 * 100 /decimal.Parse( _tbnew.cnt.ToString()) ;
                _tbnew.st3 = _tbnew.seniority3 * 100 /decimal.Parse( _tbnew.cnt.ToString()) ;
                _tbnew.st4 =_tbnew.seniority4 * 100 / decimal.Parse( _tbnew.cnt.ToString()) ;
                _tbnew.st5 = _tbnew.seniority5 * 100 / decimal.Parse( _tbnew.cnt.ToString()) ;
                _tbnew.Ts1 = 8;
              //  li.Add(_tbnew);

                List<GetMCTypeSummary> linew = new List<GetMCTypeSummary>();
                foreach (GetMCTypeSummary tb in li)
                {
                    
                    if (tb.Factory.Trim() == "CG")
                    {
                        linew.Add(tb);
                    }
                    if (tb.Factory.Trim() == "KB")
                    {
                        linew.Add(tb);
                    }
                    

                }
                linew.Add(tbnew);
                foreach (GetMCTypeSummary tb in li)
                {

                    if (tb.Factory.Trim() == "FJ")
                    {
                        tb.Ts1 = 4;
                        linew.Add(tb);
                    }
                    if (tb.Factory.Trim() == "GG")
                    {
                        tb.Ts1 = 5;
                        linew.Add(tb);
                    }

                    if (tb.Factory.Trim() == "RX") //add by joseph
                    {
                        tb.Ts1 = 6;
                        linew.Add(tb);
                    }

                    if (tb.Factory.Trim() == "SL")
                    {
                        tb.Ts1 = 7;
                        linew.Add(tb);
                    }
                    //if (tb.Factory.Trim() == "RX")
                    //{
                     
                    //    linew.Add(tb);
                    //}
                    
                    

                }
                linew.Add(_tbnew);

                MCDDepSub.bindingSource1.DataSource = linew;
                MCDDepSub.xrTableCell14.Text = "PH Group";
                MCDDepSub.xrTableCell13.Text = "PH Group";
            }
               else
               {

                   MCDDepSub.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sqlsub);

               }

      //      MCDDepSub.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sqlsub);

        }
        string beforeId = "";
        int total = 0;
        int count = 1;
        string beforeFact = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            GetMCTypeSummary mcd = this.GetCurrentRow() as GetMCTypeSummary;
            int rowCount = this.RowCount;
            int nextRow = this.RowIndex;
            if (mcd == null) return;
            if (beforeFact != mcd.Factory.Trim())
            {
             //   xtFactory.Text = "  " + mcd.Factory.Trim();
             //   xtGroup.Text = mcd.MachineClass.Trim();

            }
            else
            {
                xtFactory.Text = "";
                if (beforeId != mcd.MachineClass.Trim() && beforeFact == mcd.Factory.Trim())
                {
                //    xtFactory.Text = "  " + mcd.Factory.Trim();
                //    xtGroup.Text = mcd.MachineClass.Trim();

                }
                else
                {
             //       xtFactory.Text = "";
             //       xtGroup.Text = "";
                }
            }
            count++;
            total = total + mcd.cnt;
            beforeId = mcd.MachineClass.Trim();
            beforeFact = mcd.Factory.Trim();
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
              
            //this.xrSYearPer.Text = Math.Round(sTotal * 100 / total, 2).ToString();
            //this.xrBYearPer.Text = Math.Round(bTotal * 100 / total, 2).ToString();
            //this.xrMYearPer.Text = Math.Round(mTotal * 100 / total, 2).ToString();
            //this.xrLYearPer.Text = Math.Round(lTotal * 100 / total, 2).ToString();
            //this.xrTYearPer.Text = Math.Round(tTotal * 100 / total, 2).ToString();
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {

            //GetMCDeptSummary mcd = this.GetCurrentRow() as GetMCDeptSummary;
            //sTotal += mcd.SYear;
            //bTotal += mcd.BYear;
            //mTotal += mcd.MYear;
            //lTotal += mcd.LYear;
            //tTotal += mcd.TYear;
  

            GetMCTypeSummary mct = this.GetCurrentRow() as GetMCTypeSummary;
            sTotal += mct.seniority1;
            bTotal += mct.seniority2;
            mTotal += mct.seniority3;
            lTotal += mct.seniority4;
            tTotal += mct.seniority5;
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MCDDepSub.seniority1tp.Text = Math.Round(sTotal * 100 / total, 2).ToString();
            MCDDepSub.seniority2tp.Text = Math.Round(bTotal * 100 / total, 2).ToString();
            MCDDepSub.seniority3tp.Text = Math.Round(mTotal * 100 / total, 2).ToString();
            MCDDepSub.seniority4tp.Text = Math.Round(lTotal * 100 / total, 2).ToString();
            MCDDepSub.seniority5tp.Text = Math.Round(tTotal * 100 / total, 2).ToString();
        }

      

    }
}
