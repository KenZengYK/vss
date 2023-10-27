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
    public partial class MCTypeSummaryForChineseReport : DevExpress.XtraReports.UI.XtraReport
    {
        MCTypeTotalSub MCTypesub = new MCTypeTotalSub();
        public MCTypeSummaryForChineseReport()
        {

        }
        private string _factory;
        private string _language;
        private string _natrue;

        public MCTypeSummaryForChineseReport(string factory)
        {
            InitializeComponent();
            this._factory = factory.ToUpper();
        }
        //public MCTypeSummaryForChineseReport(string factory, string language)
        //{
        //    InitializeComponent();
        //    this._factory = factory;
        //    this._language = language;
        //}

        public MCTypeSummaryForChineseReport(string factory, string natrue)
        {
            InitializeComponent();
            this._factory = factory.ToUpper();
            _natrue = natrue;
        }

        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();

        private void MCTypeSummaryReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            xrLabel11.Text = DateTime.Now.ToShortDateString();
            context.CommandTimeout = 8000;
            string sql = "";
            string sqlsub = "";

            if (this._language == null)
            {
                bool IsBangladesh = false;
                if (this._factory == "BANGLADESH")
                {
                    this._factory = "CL";
                    IsBangladesh = true;
                }


                if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "BANGLADESH") //Off-shore
                {
                    xrlbChangeTypeName.Text = "(" + this._factory.ToString() + ")";// "(Factory)";
                    //sql = string.Format("exec SP_SUMMARY_MC_TYPE_01 '{0}'", _factory);
                    sql = string.Format("exec PROC_SUMMARY_MC_TYPE_01_NEW '{0}','{1}'", _factory, _natrue);
                    xrSubreport1.ReportSource = MCTypesub;


                }
                if (this._factory == "GROUP")
                {
                    xrlbChangeTypeName.Text = "(PH Group)";
                    //sql = string.Format("exec SP_SUMMARY_MC_TYPE_ALLFTY_01 ");
                    sql = string.Format("exec PROC_SUMMARY_MC_TYPE_ALLFTY_01_NEW '{0}'", _natrue);
                }



                if (this._factory == "CHINA" || this._factory == "BANGLADESH")  //Off-shore
                {
                    sql = string.Format("exec PROC_SUMMARY_MC_TYPE_REGION_01_NEW '{0}','{1}'", _factory, _natrue);
                    if (this._factory == "CHINA")
                    {
                        xrlbChangeTypeName.Text = "(China Region)";
                    }
                    //if (this._factory == "")
                    //{
                    //    xrlbChangeTypeName.Text = "(BANGLADESH Region)"; //(Off-shore Region)
                    //}
                    //if (_factory == "BANGLADESH") //Off-shore
                    //{
                    //    //sql = string.Format("exec SP_SUMMARY_MC_TYPE_REGION_01 '{0}'", "OFFSHORE");
                    //    sql = string.Format("exec PROC_SUMMARY_MC_TYPE_REGION_01_NEW '{0}','{1}'", "OFFSHORE", this._natrue);
                    //}
                    //else
                    //{
                    //sql = string.Format("exec SP_SUMMARY_MC_TYPE_REGION_01 '{0}'", _factory);
                    //sql = string.Format("exec PROC_SUMMARY_MC_TYPE_REGION_01_NEW '{0}','{1}'", _factory, _natrue);
                    //}
                }
                if (IsBangladesh)
                {
                    xrlbChangeTypeName.Text = "(BANGLADESH Region)"; //(Off-shore Region)
                    sql = string.Format("exec PROC_SUMMARY_MC_TYPE_01_NEW '{0}','{1}'", _factory, _natrue);
                    //sql = string.Format("exec PROC_SUMMARY_MC_TYPE_REGION_01_NEW '{0}','{1}'", "OFFSHORE", this._natrue);
                }


                this.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sql);
                if (_factory == "GROUP")
                {
                    xrChange.Text = "Group";

                    xrSubreport1.ReportSource = MCTypesub;
                }
                if (_factory == "CHINA" || this._factory == "BANGLADESH") //Off-shore
                {
                    xrChange.Text = "Region";

                    xrSubreport1.ReportSource = MCTypesub;
                }


                if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "BANGLADESH") //Off-shore
                {
                    xrChange.Text = "Factory";
                }

                //sub
                if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "BANGLADESH") //Off-shore
                {
                    //sqlsub = string.Format("exec SP_SUMMARY_MC_TYPE_02 '{0}'", _factory);
                    sqlsub = string.Format("exec PROC_SUMMARY_MC_TYPE_02_NEW '{0}','{1}'", _factory, _natrue);


                }
                if (this._factory == "GROUP")
                {
                    //sqlsub = string.Format("exec SP_SUMMARY_MC_TYPE_ALLFTY_02 ");
                    sqlsub = string.Format("exec PROC_SUMMARY_MC_TYPE_ALLFTY_02_NEW '{0}'", _natrue);
                }
                if (this._factory == "CHINA" || this._factory == "BANGLADESH") //Off-shore
                {
                    if (_factory == "BANGLADESH") //Off-shore
                    {


                        //sqlsub = string.Format("exec SP_SUMMARY_MC_TYPE_REGION_02 '{0}'", "OFFSHORE");
                        sqlsub = string.Format("exec PROC_SUMMARY_MC_TYPE_REGION_02_NEW '{0}','{1}'", "OFFSHORE", _natrue);
                        //sqlsub = string.Format("exec PROC_SUMMARY_MC_TYPE_REGION_02_NEW '{0}','{1}'", "CL", _natrue);
                    }
                    else
                    {
                        //sqlsub = string.Format("exec SP_SUMMARY_MC_TYPE_REGION_02 '{0}'", _factory);
                        sqlsub = string.Format("exec PROC_SUMMARY_MC_TYPE_REGION_02_NEW '{0}','{1}'", _factory, _natrue);
                    }
                }
            }
            else
            {
                xrlbChangeTypeName.Text = "";
                sql = string.Format("exec SP_SUMMARY_MC_TYPE_ALLFTY_01_Report '{0}'", this._factory);
                sqlsub = string.Format("exec SP_SUMMARY_MC_TYPE_ALLFTY_02_Report '{0}'", this._factory);
                this.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sql);
                xrSubreport1.ReportSource = MCTypesub;

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

                IEnumerable<GetMCTypeSummary> em = context.ExecuteQuery<GetMCTypeSummary>(sqlsub);
                if (em != null)
                {
                    foreach (GetMCTypeSummary tb in em)
                    {

                        li.Add(tb);
                        // if (tb.Factory.Trim() == "CG" || tb.Factory.Trim() == "KB" || tb.Factory.Trim() == "RX") remark by joseph
                        //if (tb.Factory.Trim() == "CG" || tb.Factory.Trim() == "KB")
                        if (tb.Factory.Trim() == "CL")
                        {

                            offs += tb.cnt;
                            s1 += tb.seniority1;
                            s2 += tb.seniority2;
                            s3 += tb.seniority3;
                            s4 += tb.seniority4;
                            s5 += tb.seniority5;
                            //if (tb.Factory.Trim() == "CG")
                            //{
                            //    tb.Ts1 = 1;
                            //}
                            //else
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
                tbnew.Factory = "Bangladesh"; //Off-shore
                tbnew.cnt = offs;
                tbnew.seniority1 = s1;
                tbnew.seniority2 = s2;
                tbnew.seniority3 = s3;
                tbnew.seniority4 = s4;
                tbnew.seniority5 = s5;

                tbnew.st1 = tbnew.cnt != 0 ? tbnew.seniority1 * 100 / decimal.Parse(tbnew.cnt.ToString()) : 0;
                tbnew.st2 = tbnew.cnt != 0 ? tbnew.seniority2 * 100 / decimal.Parse(tbnew.cnt.ToString()) : 0;
                tbnew.st3 = tbnew.cnt != 0 ? tbnew.seniority3 * 100 / decimal.Parse(tbnew.cnt.ToString()) : 0;
                tbnew.st4 = tbnew.cnt != 0 ? tbnew.seniority4 * 100 / decimal.Parse(tbnew.cnt.ToString()) : 0;
                tbnew.st5 = tbnew.cnt != 0 ? tbnew.seniority5 * 100 / decimal.Parse(tbnew.cnt.ToString()) : 0;

                tbnew.Ts1 = 3;
                //li.Add(tbnew);

                GetMCTypeSummary _tbnew = new GetMCTypeSummary();
                _tbnew.Factory = "China";
                _tbnew.cnt = _offs;
                _tbnew.seniority1 = _s1;
                _tbnew.seniority2 = _s2;
                _tbnew.seniority3 = _s3;
                _tbnew.seniority4 = _s4;
                _tbnew.seniority5 = _s5;


                _tbnew.st1 = _tbnew.cnt != 0 ? _tbnew.seniority1 * 100 / decimal.Parse(_tbnew.cnt.ToString()) : 0;
                _tbnew.st2 = _tbnew.cnt != 0 ? _tbnew.seniority2 * 100 / decimal.Parse(_tbnew.cnt.ToString()) : 0;
                _tbnew.st3 = _tbnew.cnt != 0 ? _tbnew.seniority3 * 100 / decimal.Parse(_tbnew.cnt.ToString()) : 0;
                _tbnew.st4 = _tbnew.cnt != 0 ? _tbnew.seniority4 * 100 / decimal.Parse(_tbnew.cnt.ToString()) : 0;
                _tbnew.st5 = _tbnew.cnt != 0 ? _tbnew.seniority5 * 100 / decimal.Parse(_tbnew.cnt.ToString()) : 0;

                // _tbnew.Ts1 = 7; remark by joseph
                _tbnew.Ts1 = 8;
                // li.Add(_tbnew);

                List<GetMCTypeSummary> linew = new List<GetMCTypeSummary>();
                foreach (GetMCTypeSummary tb in li)
                {

                    if (tb.Factory.Trim() == "CG")
                    {
                        linew.Add(tb);
                    }
                    //if (tb.Factory.Trim() == "KB")
                    //{
                    //    linew.Add(tb);
                    //}
                }
                linew.Add(tbnew);

                foreach (GetMCTypeSummary tb in li)
                {


                    if (tb.Factory.Trim() == "SL")
                    {
                        tb.Ts1 = 4;
                        linew.Add(tb);
                    }

                    if (tb.Factory.Trim() == "SL (Sales)")
                    {
                        tb.Ts1 = 5;
                        linew.Add(tb);
                    }

                    if (tb.Factory.Trim() == "GG")
                    {
                        tb.Ts1 = 6;
                        linew.Add(tb);
                    }

                    if (tb.Factory.Trim() == "RX") //add by joseph
                    {
                        tb.Ts1 = 7;
                        linew.Add(tb);
                    }

                    //if (tb.Factory.Trim() == "FJ")
                    //{
                    //    tb.Ts1 = 7;
                    //    linew.Add(tb);
                    //}



                }
                linew.Add(_tbnew);

                MCTypesub.bindingSource1.DataSource = linew;
                MCTypesub.xrTableCell14.Text = "PH Group";
                MCTypesub.xrTableCell13.Text = "PH Group";
            }
            else
            {

                MCTypesub.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sqlsub);

            }


        }



        int total = 0;
        int count = 1;
        string beforeFact = "";
        string beforeId = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GetMCTypeSummary mct = this.GetCurrentRow() as GetMCTypeSummary;
            if (mct == null)
                return;

            int rowCount = this.RowCount;
            int nextRow = this.RowIndex;
            if (mct == null) return;
            if (beforeFact != mct.Factory.Trim())
            {
                //xtFactory.Text = "  " + mct.Factory.Trim();
                //   xrMachineClass.Text = mct.MachineClass.Trim();

            }
            else
            {
                xtFactory.Text = "";
                if (beforeId != mct.MachineClass.Trim() && beforeFact == mct.Factory.Trim())
                {
                    //xtFactory.Text = " " + mct.Factory.Trim();
                    //xrMachineClass.Text = mct.MachineClass.Trim();
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
            //MCTypesub.xrSYearPer.Text= Math.Round(sTotal * 100 / total, 2).ToString();
            //MCTypesub.xrBYearPer.Text= Math.Round(bTotal * 100 / total, 2).ToString();
            //MCTypesub.xrMYearPer.Text = Math.Round(mTotal * 100 / total, 2).ToString();
            //MCTypesub.xrLYearPer.Text = Math.Round(lTotal * 100 / total, 2).ToString();
            //MCTypesub.xrTYearPer.Text= Math.Round(tTotal * 100 / total, 2).ToString();

        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {

            GetMCTypeSummary mct = this.GetCurrentRow() as GetMCTypeSummary;
            if (mct != null)
            {

                sTotal += mct.seniority1;
                bTotal += mct.seniority2;
                mTotal += mct.seniority3;
                lTotal += mct.seniority4;
                tTotal += mct.seniority5;
            }
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (total == 0)
            //    return;

            MCTypesub.seniority1tp.Text = total == 0 ? "0" : Math.Round(sTotal * 100 / total, 2).ToString();
            MCTypesub.seniority2tp.Text = total == 0 ? "0" : Math.Round(bTotal * 100 / total, 2).ToString();
            MCTypesub.seniority3tp.Text = total == 0 ? "0" : Math.Round(mTotal * 100 / total, 2).ToString();
            MCTypesub.seniority4tp.Text = total == 0 ? "0" : Math.Round(lTotal * 100 / total, 2).ToString();
            MCTypesub.seniority5tp.Text = total == 0 ? "0" : Math.Round(tTotal * 100 / total, 2).ToString();
        }





    }
}
