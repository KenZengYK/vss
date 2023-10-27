using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;
using System.Linq;

namespace PH.MobileQC.UI
{
    public partial class rptRecheklist : DevExpress.XtraReports.UI.XtraReport
    {

        List<sp_GetExamListResult> rechecklist = new List<sp_GetExamListResult>();
        string DateRange, TextYBYT;
        ReportTypes ReportType;
        string Flag;

        bool IsNoYT;


        public rptRecheklist(List<sp_GetExamListResult> subdata, string daterange, ReportTypes AReportType, string AFlag, string IsWkly)
        {
            InitializeComponent();



            rechecklist = subdata;
            DateRange = daterange;
            ReportType = AReportType;
            this.bsRecheck.DataSource = subdata;
            Flag = AFlag;
            var lists = rechecklist.Where(p => p.ReAudit_Disp == "Ytdy" || p.ReAudit_Disp == "Yb4").Select(p => p.ReAudit_Disp).Distinct();
            if (lists.Count() == 2)
            {
                TextYBYT = "Ytdy + Yb4";
                IsNoYT = true;
            }
            else
            {
                if (lists.Count() == 1)
                {
                    TextYBYT = lists.FirstOrDefault();
                    IsNoYT = true;
                }
                else
                {
                    TextYBYT = lists.FirstOrDefault();
                    IsNoYT = false;
                }

            }


            //if (ReportType ==  ReportTypes.Audit)
            //{
            //    xrTableCell12.Text = "審定時間";
            //    xrTableCell3.Text = "重審定(?)";
            //    xrTableCell19.Text = "審定件數";
            //    xrTableCell18.Text = "巡審定員";
            //}
            //else
            //{
            //    xrTableCell12.Text = "審查時間";
            //    xrTableCell3.Text = "重審查(?)";
            //    xrTableCell19.Text = "審查件數";
            //    xrTableCell18.Text = "巡審查拉長";
            //}
            ReportHelper reportHelper;

            reportHelper = Flag == "Repeat" ? new ReportHelper("00000007") : new ReportHelper("00000006");

            if (Flag == "Repeat")
            {
                //this.xrTitlleCn.Text = ReportType == ReportTypes.Audit ? "工序重審考報告 - 巡審定" : "工序重審考報告 - 巡審查";
                //this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "Opt. Repeat Exam. - Mobile Audit" : "Opt. Repeat Exam. - Mobile Inspection";
                string CNTxt = string.Format(reportHelper.ReportInfo.ReportName_CN, (ReportType == ReportTypes.Audit ? "定" : "查"));
                this.xrTitlleCn.Text = (IsWkly == "Wkly") ? CNTxt.Replace("日", "週") : CNTxt;

                string ENTxt = string.Format(reportHelper.ReportInfo.ReportName_EN, (ReportType == ReportTypes.Audit ? "audit" : "insptn"));
                this.xrTitlle.Text = (IsWkly == "Wkly") ? ENTxt.Replace("Daily", "Wkly") : ENTxt;

               // string CdeTxt = string.Format(reportHelper.ReportInfo.ReportCode, (ReportType == ReportTypes.Audit ? "A" : "B"));
                //xrLabel6.Text = (IsWkly == "Wkly") ? reportHelper.ReportInfo.ReportCodeWeekly : reportHelper.ReportInfo.ReportCodeDaily;

                string CdeTxt = (IsWkly == "Wkly") ? reportHelper.ReportInfo.ReportCodeWeekly : reportHelper.ReportInfo.ReportCodeDaily;
                xrLabel6.Text = string.Format(CdeTxt, (ReportType == ReportTypes.Audit ? "A" : "B"));
            
            }
            else if (Flag == "Failure")
            {
                //this.xrTitlleCn.Text = ReportType == ReportTypes.Audit ? "工序不合格審考報告 - 巡審定" : "工序不合格審考報告 - 巡審查";
                //this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "Opt. Exam. Failure - Mobile Audit" : "Opt. Exam. Failure - Mobile Inspection";

                string CNTxt = string.Format(reportHelper.ReportInfo.ReportName_CN, (ReportType == ReportTypes.Audit ? "定" : "查"));
                this.xrTitlleCn.Text = (IsWkly == "Wkly") ? CNTxt.Replace("日", "週") : CNTxt;
                string ENTxt = string.Format(reportHelper.ReportInfo.ReportName_EN, (ReportType == ReportTypes.Audit ? "Audit" : "Insptn"));
                this.xrTitlle.Text = (IsWkly == "Wkly") ? ENTxt.Replace("Daily", "Wkly") : ENTxt;

                //string CdeTxt = string.Format(reportHelper.ReportInfo.ReportCode, (ReportType == ReportTypes.Audit ? "A" : "B"));
                //xrLabel6.Text = (IsWkly == "Wkly") ? reportHelper.ReportInfo.ReportCodeWeekly : reportHelper.ReportInfo.ReportCodeDaily;
                string CdeTxt = (IsWkly == "Wkly") ? reportHelper.ReportInfo.ReportCodeWeekly : reportHelper.ReportInfo.ReportCodeDaily;
                xrLabel6.Text = string.Format(CdeTxt, (ReportType == ReportTypes.Audit ? "A" : "B"));

            }
            xrLabel3.Text = DateTime.Now.ToString("yyyy-MM-dd");


            

           

            //xrVerName.Text = reportHelper.ReportInfo.VerName;
            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            //xrRptText.Text = reportHelper.ReportInfo.ReportCode;

        }

        private void rptRecheklist_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            // this.MasterReport.Bands[BandKind.PageHeader].Visible = false;
            this.bsRecheck.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";
            xrChkDT.Text = DateRange;
            // this.Pages.Count = this.MasterReport.Pages.Count;
            //this.MasterReport.Pages.AddRange(this.Pages);
            //this.MasterReport.PrintingSystem.ContinuousPageNumbering = true;


        }

        private void ReportHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ArrayList aryproc = new ArrayList();
            //  ArrayList arypass = new ArrayList();
            int _pass = 0;

            int total = 0, passqty = 0;
            for (int k = 0; k < rechecklist.Count; k++)
            {
                sp_GetExamListResult qm = rechecklist[k];
                if (!aryproc.Contains(qm.W_Procedure))
                    aryproc.Add(qm.W_Procedure);
                if (qm.FCount == 0)
                    _pass++;

                total = total + qm.QCCount;
                passqty = passqty + qm.PCount ?? 0;


            }

            // double aa = Convert.ToDouble(passqty * 100.00 / total);
            double aa = Convert.ToDouble(_pass * 100.00 / rechecklist.Count);
            string _per = String.Format("{0:F}", aa) + "%";
            string Str = ReportType == ReportTypes.Audit ? "定" : "查";
            string StrCN = ReportType == ReportTypes.Audit ? "Audit" : "Inspection";
            //xrRecheckInfo1.Text = IsNoYT ? string.Format("***重審{2}工序({3})合共{0}个,重審{2}合格率{1}", rechecklist.Count.ToString(), _per, Str, TextYBYT) : string.Format("***不通過工序合共{0}个", rechecklist.Count.ToString());
            xrRecheckInfo1.Text = IsNoYT ? string.Format("***Repeat {4}. opts ({3}) is totaling {0} units, repeat {4} pass % {1} (重審{2}工序({3})合共{0}个,重審{2}合格率{1})", rechecklist.Count.ToString(), _per, Str, TextYBYT, StrCN) : string.Format("***{1} failure opts is totaling {0} units (不通過工序合共{0}个)", rechecklist.Count.ToString(), StrCN);
            //xrRecheckInfo.Text = string.Format("***不通過工序共計{0}个,重審{2}合格率{1}", rechecklist.Count.ToString(), _per, Str);
            //xrRecheckInfo.Text = string.Format("***重審考工序({3})共計{0}个,重審{2}合格率{1}", rechecklist.Count.ToString(), _per, Str, TextYBYT);

            // xrRecheckInfo.Text = "***重檢(Yt+Yb)共計{0}個工序,重檢合格率{1}";

            //if (j==0)
            //  this.MasterReport.Bands[BandKind.PageHeader].Visible = true;
            //else
            //  this.MasterReport.Bands[BandKind.PageHeader].Visible = false;

            // this.MasterReport.Bands[BandKind.PageHeader].
            //     xrRecheckInfo.Location =
            // this.MasterReport.Bands[BandKind.PageHeader].Height = 0;
        }



        string lineno = "";
        int j = 0, m = 1, k = 0;

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            sp_GetExamListResult ma = this.GetCurrentRow() as sp_GetExamListResult;
            if (ma == null)
                return;

            xrchktime.Text = string.Format("{0:yyyy-MM-dd HH:mm}", ma.QC_Time);

            xrrecheck.Text = ma.ReAudit_Disp.ToString();
            xrfqty.Text = ma.FCount.ToString();
            if (ma.ReAudit_Disp == "Ytdy" || ma.ReAudit_Disp == "Yb4")
                xrrecheck.ForeColor = Color.Red;
            else
                xrrecheck.ForeColor = Color.Black;


            if (ma.FCount > 0)
                xrfqty.ForeColor = Color.Red;
            else
                xrfqty.ForeColor = Color.Black;


            if (j > 0 && ma.Line != lineno)
                m++;

            if (m % 2 == 0)
            {
                Color _color = System.Drawing.Color.LightCyan;// Color.FromArgb(225, 255, 255);
                this.Detail.BackColor = _color;
            }
            else
                this.Detail.BackColor = Color.White;
            k++;


            //if(this.GetCurrentColumnValue("").ToString())
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            QC_Master ma = this.GetCurrentRow() as QC_Master;
            if (ma == null)
                return;

            lineno = ma.Line;
            j++;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.MasterReport.Bands[BandKind.PageHeader].Visible = false;
            //if (Flag == "All")
            //{
            //    this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "Fundamental Data List - Audit" : "Fundamental Data List - Inspection";
            //}
            //else if (Flag == "Repeat")
            //{
            //    this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "QE Moblie Repeat Exam - Audit" : "QE Moblie Repeat Exam - Inspection";
            //}
            //else if (Flag == "Failure")
            //{
            //    this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "QE Moblie Exam. Failure - Audit" : "QE Moblie Exam. Failure - Inspection";
            //}


        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            ArrayList aryproc = new ArrayList();
            //  ArrayList arypass = new ArrayList();
            int _pass = 0;

            int total = 0, passqty = 0;
            for (int k = 0; k < rechecklist.Count; k++)
            {
                sp_GetExamListResult qm = rechecklist[k];
                if (!aryproc.Contains(qm.W_Procedure))
                    aryproc.Add(qm.W_Procedure);
                if (qm.FCount == 0)
                    _pass++;

                total = total + qm.QCCount;
                passqty = passqty + qm.PCount ?? 0;


            }

            double aa = Convert.ToDouble(_pass * 100.00 / rechecklist.Count);
            string _per = String.Format("{0:F}", aa) + "%";
            string Str = ReportType == ReportTypes.Audit ? "定" : "查";
            string StrCN = ReportType == ReportTypes.Audit ? "Audit" : "Inspection";
            //xrRecheckInfo.Text = IsNoYT ? string.Format("***重審考工序({3})共計{0}个,重審{2}合格率{1}", rechecklist.Count.ToString(), _per, Str, TextYBYT) : string.Format("***不通過工序共計{0}个", rechecklist.Count.ToString());
            //xrRecheckInfo.Text = IsNoYT ? string.Format("***Repeat exam. opts ({2}) is totally {0} units ,repeat exam. pass % {1}", rechecklist.Count.ToString(), _per, TextYBYT) : string.Format("***Exam. failure opts is totally {0} units", rechecklist.Count.ToString());
            xrRecheckInfo.Text = IsNoYT ? string.Format("***Repeat {4} opts ({3}) is totally {0} units, repeat {4} pass % {1} (重審{2}工序({3})合共{0}个,重審{2}合格率{1})", rechecklist.Count.ToString(), _per, Str, TextYBYT, StrCN) : string.Format("***{1} failure opts is totally {0} units (審{2}不通過工序合共{0}个)", rechecklist.Count.ToString(), StrCN, Str);

        }

    }
}
