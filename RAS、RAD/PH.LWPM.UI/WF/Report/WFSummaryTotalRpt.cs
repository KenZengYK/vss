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

namespace PH.LWPM.UI.WF.Report
{
    public partial class WFSummaryTotalRpt : DevExpress.XtraReports.UI.XtraReport
    {
        private string _claname;
        private string _factory;
        private string _language;
        private string _jobnature;
        WFSummerySub MCTypesub = new WFSummerySub();
        public WFSummaryTotalRpt()
        {

        }
       
        public WFSummaryTotalRpt(string factory, string clsname, string language)
        {
            InitializeComponent();
            this._claname = clsname;
            this._factory = factory;
            this._language = language;
        }
        public WFSummaryTotalRpt(string factory, string clsname, string language, string jobnature)
        {
            InitializeComponent();
            this._claname = clsname;
            this._factory = factory;
            this._language = language;
            this._jobnature = jobnature;
        }
        private PH.LWPM.BO.RAPLQDataContext context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        private void SetLabel()
        {
            xrLabel11.Text = DateTime.Now.ToShortDateString();
            xrLabel4.Text = "Summary Report of WF Pool";
           
        }
        private void WFSummaryTotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SetLabel();
            context.CommandTimeout = 8000;
            string sql = "";
            string sqlsub = "";
            sql = GetFactorySqlMethod(sql);
            BindSourceMethod(sql);
            //sub
            sqlsub = GetFactorySqlsubMethod(sqlsub);
            SubBindSourceMethod(sqlsub);
            xrSubreport1.ReportSource = MCTypesub;
        }

        private void BindSourceMethod(string sql)
        {
            IEnumerable<GetdWFSummaryEnAndCn> emM = context.ExecuteQuery<GetdWFSummaryEnAndCn>(sql);
            List<GetdWFSummaryEnAndCn> liem = new List<GetdWFSummaryEnAndCn>();
            if (emM != null)
            {
                foreach (GetdWFSummaryEnAndCn tb in emM)
                {
                    liem.Add(tb);
                }
            }
            this.bindingSource1.DataSource = liem;
        }

        private void SubBindSourceMethod(string sqlsub)
        {
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
                tbnew.Ts1 = 3;
                if (tbnew.cnt != 0)
                {
                    tbnew.st1 = tbnew.seniority1 * 100 / decimal.Parse(tbnew.cnt.ToString());
                    tbnew.st2 = tbnew.seniority2 * 100 / decimal.Parse(tbnew.cnt.ToString());
                    tbnew.st3 = tbnew.seniority3 * 100 / decimal.Parse(tbnew.cnt.ToString());
                    tbnew.st4 = tbnew.seniority4 * 100 / decimal.Parse(tbnew.cnt.ToString());
                    tbnew.st5 = tbnew.seniority5 * 100 / decimal.Parse(tbnew.cnt.ToString());
                    tbnew.Ts1 = 3;
                }
                // li.Add(tbnew);

                GetMCTypeSummary _tbnew = new GetMCTypeSummary();
                _tbnew.Factory = "China";
                _tbnew.cnt = _offs;
                _tbnew.seniority1 = _s1;
                _tbnew.seniority2 = _s2;
                _tbnew.seniority3 = _s3;
                _tbnew.seniority4 = _s4;
                _tbnew.seniority5 = _s5;
                if (_tbnew.cnt != 0)
                {
                    _tbnew.st1 = _tbnew.seniority1 * 100 / decimal.Parse(_tbnew.cnt.ToString());
                    _tbnew.st2 = _tbnew.seniority2 * 100 / decimal.Parse(_tbnew.cnt.ToString());
                    _tbnew.st3 = _tbnew.seniority3 * 100 / decimal.Parse(_tbnew.cnt.ToString());
                    _tbnew.st4 = _tbnew.seniority4 * 100 / decimal.Parse(_tbnew.cnt.ToString());
                    _tbnew.st5 = _tbnew.seniority5 * 100 / decimal.Parse(_tbnew.cnt.ToString());
                }
                _tbnew.Ts1 = 7;
                //  li.Add(_tbnew);

                List<GetMCTypeSummary> linew = new List<GetMCTypeSummary>();
         
               
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
                    if (tb.Factory.Trim() == "SL")
                    {
                        tb.Ts1 = 6;
                        linew.Add(tb);
                    }

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
                linew.Add(_tbnew);

                MCTypesub.bindingSource1.DataSource = linew;
                MCTypesub.xrTableCell13.Text = "PH Group";
            }
            else
            {
                MCTypesub.bindingSource1.DataSource = context.ExecuteQuery<GetMCTypeSummary>(sqlsub);
            }
        }

        private string GetFactorySqlsubMethod(string sqlsub)
        {
            if (this._factory != "" && this._factory != "CHINA" && this._factory != "GROUP" && this._factory != "Off-shore")
            {
                sqlsub = string.Format("exec [rapWF_DeptGroup_2] '{0}','{1}'", _factory, _jobnature);
                xrChange.Text = "Factory";

            }
            if (this._factory == "GROUP")
            {
                xrChange.Text = "Group";
                sqlsub = string.Format("exec [rapWF_DeptGroup_ALLFTY_2] '{0}' ", _jobnature);
            }
            if (this._factory == "CHINA" || this._factory == "Off-shore")
            {
                xrChange.Text = "Region";
                if (_factory == "Off-shore")
                {


                    sqlsub = string.Format("exec rapWF_DeptGroup_Region_2 '{0}','{1}'", "OFFSHORE", _jobnature);
                }
                else
                {
                    sqlsub = string.Format("exec [rapWF_DeptGroup_Region_2] '{0}','{1}'", _factory, _jobnature);
                }
            }
            return sqlsub;
        }

        private string GetFactorySqlMethod(string sql)
        {
            switch (_factory)
            {
                case "SL":
                    sql = string.Format(" exec rapWF_DeptGroup '{0}','{1}'", _factory, _jobnature);
                    this.xrLabelFactory.Text = "(" + _factory + ")";
                    break;
                case "FJ":
                    sql = string.Format(" exec rapWF_DeptGroup '{0}','{1}'", _factory, _jobnature);
                    this.xrLabelFactory.Text = "(" + _factory + ")";
                    break;
                case "KB":
                    sql = string.Format(" exec rapWF_DeptGroup '{0}','{1}'", _factory, _jobnature);
                    this.xrLabelFactory.Text = "(" + _factory + ")";
                    break;
                case "GG":
                    this.xrLabelFactory.Text = "(" + _factory + ")";
                    sql = string.Format(" exec rapWF_DeptGroup '{0}','{1}'", _factory, _jobnature);
                    break;
                case "CHINA":
                    sql = string.Format(" exec [rapWF_DeptGroup_Region] '{0}','{1}'", _factory, _jobnature);
                    this.xrLabelFactory.Text = "(China)";
                    break;
                case "Off-shore":
                    sql = string.Format(" exec rapWF_DeptGroup_Region '{0}','{1}'", "OFFSHORE", _jobnature);
                    this.xrLabelFactory.Text = "(Off-Shore Region)";
                    break;
                case "GROUP":
                    sql = string.Format(" exec [rapWF_DeptGroup_ALLFTY] '{0}'", _jobnature);
                    this.xrLabelFactory.Text = "(PH Group)";
                    break;
            }
            return sql;
        }

        string beforeId = "";
        int total = 0;
        int count = 1;
        string beforeFact = "";
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            GetdWFSummaryEnAndCn gft = this.GetCurrentRow() as GetdWFSummaryEnAndCn;
            int rowCount = this.RowCount;
            int nextRow = this.RowIndex;
            //if (gft == null) return;
            //if (beforeFact != gft.Factory.Trim())
            //{
            //    //xtFactory.Text = "  " + gft.Factory.Trim();
            //    //xtGroup.Text = gft.clsname.Trim();

            //}
            //else
            //{
            //    xtFactory.Text = "";
            //    if (beforeId != gft.clsname.Trim() && beforeFact == gft.Factory.Trim())
            //    {
            //        //xtFactory.Text = "  " + gft.Factory.Trim();
            //        //xtGroup.Text = gft.clsname.Trim();

            //    }
            //    else
            //    {
            //        //xtFactory.Text = "";
            //        //xtGroup.Text = "";
            //    }
            //}

           
            count++;
            if (gft != null)
            {
                total = total + gft.Total;
                beforeId = gft.clsname.Trim();
                beforeFact = gft.Factory.Trim();
            }

            //if (xtGroup.Text == "dWF-Core Production")
            //{
            //    xtGroup.Text = "  Core (Stitching) Production";
            //}
            //else if (xtGroup.Text == "dWF-Other Production")
            //{
            //    xtGroup.Text = "  Up / Down - flow Production";
            //}
            //else if (xtGroup.Text == "dWF-Pre-Production")
            //{
            //    xtGroup.Text = "  Pre-Production (Sample)";
            //}
            //else if (xtGroup.Text == "dWF-Pregnancy")
            //{
            //    xtGroup.Text = "  Training Class";
            //}

        }
 

        #region
        //Xsj20120914:以下代碼為了統計百份比而添加
        private decimal sTotal = 0;
        private decimal bTotal = 0;
        private decimal mTotal = 0;
        private decimal lTotal = 0;
        private decimal tTotal = 0; 
        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            sTotal = 0;
            bTotal = 0;
            mTotal = 0;
            lTotal = 0;
            tTotal = 0; 
            total = 0;
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        { 
            //this.xrSTeamPer.Text = Math.Round(sTotal * 100 / total, 2).ToString();
            //this.xrBTeamPer.Text = Math.Round(bTotal * 100 / total, 2).ToString();
            //this.xrMTeamPer.Text = Math.Round(mTotal * 100 / total, 2).ToString();
            //this.xrLTeamPer.Text = Math.Round(lTotal * 100 / total, 2).ToString();
            //this.xrTTeamPer.Text = Math.Round(tTotal * 100 / total, 2).ToString();
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            GetdWFSummaryEnAndCn gft = this.GetCurrentRow() as GetdWFSummaryEnAndCn;
            if (gft != null)
            {
                sTotal += gft.STeam;
                bTotal += gft.BTeam;
                mTotal += gft.MTeam;
                lTotal += gft.LTeam;
                tTotal += gft.TTeam;
            }
        }
        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            MCTypesub.seniority1tp.Text =total==0?"0": Math.Round(sTotal * 100 / total, 2).ToString();
            MCTypesub.seniority2tp.Text = total == 0 ? "0" : Math.Round(bTotal * 100 / total, 2).ToString();
            MCTypesub.seniority3tp.Text = total == 0 ? "0" : Math.Round(mTotal * 100 / total, 2).ToString();
            MCTypesub.seniority4tp.Text = total == 0 ? "0" : Math.Round(lTotal * 100 / total, 2).ToString();
            MCTypesub.seniority5tp.Text = total == 0 ? "0" : Math.Round(tTotal * 100 / total, 2).ToString();

            MCTypesub.xrTotalnew.Text = total.ToString();
            MCTypesub.xrSTotalnew.Text = Math.Round(sTotal, 2).ToString();
            MCTypesub.xrBTotalnew.Text = Math.Round(bTotal, 2).ToString();
            MCTypesub.xrMTotalnew.Text = Math.Round(mTotal, 2).ToString();
            MCTypesub.xrLTotalnew.Text = Math.Round(lTotal, 2).ToString();
            MCTypesub.xrTTotalnew.Text = Math.Round(tTotal, 2).ToString();


          
        } 
        #endregion
    }
}
