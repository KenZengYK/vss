using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;
using PH.MobileQC.UI.RPT;
using System.Linq;
using DevExpress.Data.Browsing;
using PH.Platform.BO;
using System.Data;

namespace PH.MobileQC.UI
{
    public partial class ExtraExamReport : DevExpress.XtraReports.UI.XtraReport
    {

        List<sp_GetExamListResult> RecheckList = new List<sp_GetExamListResult>();
        rptRecheklist SubRpt;
        string DateRange = "";
        int rowcount = 0, j = 0;
        ReportTypes ReportType;
        string Flag;


        //@Factory   varchar(20),   -- 工廠
        //@Workshop  varchar(20),   -- 車間
        //@Customer  varchar(20),   -- 客戶
        //@CustStyle varchar(100),  -- 客款號
        //@Project   varchar(100),  -- 工程號
        //@Line      varchar(50),   -- 拉 
        //@ExamType  varchar(100)   -- 檢查類型: Audit 或 Inspection
        //exec sp_GetExamDataList_V1 'SL', '', '', '', '', '', 'Audit'

        public ExtraExamReport(string AFactory, string AWorkShop, string ACustomer, string ACustStyle, string AProject, string ALine, string AExamType)
        {
            InitializeComponent();

            xrFty.Text = AFactory;


            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            string SqlStr = "exec sp_GetExamDataList_V1 '{0}', '{1}', '{2}', '{3}', '{4}', '{5}', '{6}'";
            SqlStr = string.Format(SqlStr, AFactory, AWorkShop, ACustomer, ACustStyle, AProject, ALine, AExamType);
            DataSet ds = db.ExecuteDataSet(SqlStr, new DataSet(), "dt");

            xrLabel3.Text = DateTime.Now.ToString("yyy-MM-dd HH:mm");
            xrChkDT.Text = DateTime.Now.ToString("yyy-MM-dd");

            List<sp_GetExamDataList_V1Class> Alist = ds.Tables[0].AsEnumerable().Select(dr => new sp_GetExamDataList_V1Class 
            {
                Workshop = dr["Workshop"].ToString(),
                Line = dr["Line"].ToString(),
                Project = dr["Project"].ToString(),
                QN = dr["QN"].ToString(),
                QNQty = Convert.ToInt32( dr["QNQty"].ToString()),
                Style = dr["Style"].ToString(),
                Worker = dr["Worker"].ToString(),
                W_Procedure = dr["W_Procedure"].ToString(),
                StartDate = dr["StartDate"].ToString() == "" ? "" : Convert.ToDateTime(dr["StartDate"].ToString()).ToString("yyyy-MM-dd HH:mm"),
                LastDate = dr["LastDate"].ToString() == "" ? "" : Convert.ToDateTime(dr["LastDate"].ToString()).ToString("yyyy-MM-dd HH:mm"),
                ReAuditCount = Convert.ToInt32(dr["ReAuditCount"].ToString()),
                ReAuditQty = Convert.ToInt32(dr["ReAuditQty"].ToString()),
                DefectCount = Convert.ToInt32(dr["DefectCount"].ToString()),
                Defects = dr["Defects"].ToString(),
                QCMan = dr["QCMan"].ToString(),

                ChooseType = dr["ChooseType"].ToString(),
                

            }).ToList();


            this.bsDetail.DataSource = Alist;// ds.Tables[0];


            ExamExamSubReport_Opts rptSubReportOpts = new ExamExamSubReport_Opts(ds.Tables[2]);
            SubReport_Opts.ReportSource = rptSubReportOpts;

            ExamExamSubReport_Defect rptSubReportDefect = new ExamExamSubReport_Defect(ds.Tables[1]);
            SubReport_Defect.ReportSource = rptSubReportDefect;

            ReportHelper reportHelper = AExamType == "Audit" ? new ReportHelper("00000033") : new ReportHelper("00000034");
            //xrVerName.Text = reportHelper.ReportInfo.ReportCode;
            xrPublishedDateText.Text = reportHelper.ReportInfo.ReportCode;//  .ReportCodeDaily;

            this.xrTitlle.Text = reportHelper.ReportInfo.ReportName_EN;
            this.xrLabel5.Text = reportHelper.ReportInfo.ReportName_CN;
            xrVerNo.Text = reportHelper.ReportInfo.VerNo;

            //xrVerText.Text = reportHelper.ReportInfo.VerContext;
            //xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            //xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;
            //xrRptText.Text = reportHelper.ReportInfo.ReportCode;

            //  this.bsMaster.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";
            //this.bsMaster.Sort = "WorkShop asc,Line asc,qc_time desc";
            //GetRecheckList(rptdata);

            //rptMastList_New_Sub rtpSub = new rptMastList_New_Sub(rptdata);
            //this.xrSubreport1.ReportSource = rtpSub;
            //SubRpt = new rptRecheklist(RecheckList, DateRange, ReportType, Flag);

            //if (

            //if (ReportType== ReportTypes.Audit)
            //{
            //      //Flag:  Failure、Repeat、All
            //    this.xrTitlle.Text = Flag == "All" ? "QE Moblie Fundamental Data List" : "";
            //}
            //else if 
            //{
            //    this.xrTitlle.Text = "";
            //}

            //if (Flag == "All")
            //{
            //    this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "Fundamental Qual Exam. Data List - Mobile Audit" : "Fundamental Qual Exam. Data List - Mobile Inspection";
            //    this.xrLabel5.Text = ReportType == ReportTypes.Audit ? "基本審考資料明細表 - 巡檢定" : "基本審考資料明細表 - 巡檢查";
            //}
            //else if (Flag == "Repeat")
            //{
            //    this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "QE Mobile Repeat Exam. - Mobile Audit" : "QE Mobile Repeat Exam. - Mobile Inspection";
            //}
            //else if (Flag == "Failure")
            //{
            //    this.xrTitlle.Text = ReportType == ReportTypes.Audit ? "QE Mobile Exam. Failure - Mobile Audit" : "QE Mobile Exam. Failure - Mobile Inspection";
            //}



           // xrLabel3.Text = DateTime.Now.ToString("yyyy-MM-dd");

            //this.Pages.AddRange(SubRpt.Pages);
            //this.PrintingSystem.ContinuousPageNumbering = true;


        }


        private void rptMastList_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            //this.xrChkDT.Text = DateRange;
            //xrsublist.ReportSource = SubRpt;

        }

        private void GetRecheckList(List<sp_GetExamListResult> lst)
        {
            foreach (sp_GetExamListResult qm in lst)
            {
                if (qm.ReAudit_Disp == "Ytdy" || qm.ReAudit_Disp == "Yb4")
                {
                    RecheckList.Add(qm);
                }
            }
        }


        private void GetRecheckList1(IEnumerable<sp_GetExamListResult> lst)
        {
            foreach (sp_GetExamListResult qm in lst)
            {
                if (qm.ReAudit_Disp == "Ytdy" || qm.ReAudit_Disp == "Yb4")
                {
                    RecheckList.Add(qm);
                }
            }
        }

        string lineno = "";
        int i = 0, m = 1, k = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            sp_GetExamDataList_V1Class obj = this.GetCurrentRow() as sp_GetExamDataList_V1Class;
            if (obj == null) return;


            if (obj.ChooseType == "0")  //正常情况，不超过24小时
            {
                this.xrchktime.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
                this.xrchktime.ForeColor = System.Drawing.Color.Black;
            }
            else if (obj.ChooseType == "1")  //超过24小时,未达到36小时
            {
                this.xrchktime.Font = new System.Drawing.Font("Arial Unicode MS", 8F);
                this.xrchktime.ForeColor = System.Drawing.Color.Red;
            }
            else  //超过36小时
            {
                this.xrchktime.Font = new System.Drawing.Font("Arial Unicode MS", 8F, System.Drawing.FontStyle.Bold);
                this.xrchktime.ForeColor = System.Drawing.Color.Red;             
            }

            //sp_GetExamListResult ma = this.GetCurrentRow() as sp_GetExamListResult;
            //xrchktime.Text = string.Format("{0:yyyy-MM-dd HH:mm}", ma.QC_Time);
            //xrrecheck.Text = ma.ReAudit_Disp.ToString();
            //xrfqty.Text = ma.FCount.ToString();
            //if (ma.ReAudit_Disp == "Ytdy" || ma.ReAudit_Disp == "Yb4")
            //    xrrecheck.ForeColor = Color.Red;
            //else
            //    xrrecheck.ForeColor = Color.Black;


            //if (ma.FCount > 0)
            //    xrfqty.ForeColor = Color.Red;
            //else
            //    xrfqty.ForeColor = Color.Black;



            //if (j > 0 && ma.Line != lineno)
            //{
            //    //this.Detai
            //    m++;
            //}

            //if (m % 2 == 0)
            //{
            //    //Color _color = Color.FromArgb(130, 150, 160);
            //    Color _color = System.Drawing.Color.LightCyan;
            //    this.Detail.BackColor = _color;
            //}
            //else
            //    this.Detail.BackColor = Color.White;

            //i++;

        }

        private void xrsublist_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            // this.PageHeader.Visible = false;

        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            //sp_GetExamListResult ma = this.GetCurrentRow() as sp_GetExamListResult;
            //lineno = ma.Line;
            //j++;
            //k++;

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (j >= rowcount)
            //    e.Cancel = true;
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //XRPageBreak xrPageBreak = new XRPageBreak();
            //xrPageBreak.Visible = true;
            //// xrPageBreak.Name = "pb" + _ipage.ToString();
            //this.ReportFooter.Controls.Add(xrPageBreak);


            ////ArrayList aryproc = new ArrayList();
            ////int total = 0, passqty = 0;
            ////for (int j = 0; j < RecheckList.Count; j++)
            ////{
            ////    QC_Master qm = RecheckList[j];
            ////    if (!aryproc.Contains(qm.W_procedure))
            ////        aryproc.Add(qm.W_procedure);
            ////    total = total + qm.QCCount.GetValueOrDefault();
            ////    passqty = passqty + qm.PCount;
            ////}

            ////double aa = Convert.ToDouble(passqty * 100.00 / total);
            ////string _per = String.Format("{0:F}", aa) + "%";
            ////xrRecheckInfo.Text = string.Format("***重檢(Yt+Yb)共計{0}個工序,重檢合格率{1}", aryproc.Count.ToString(), _per);


            //if (k >= 20)
            //{
            //    //  this.xrPbk.Visible = true;
            //}
        }

        private void PageFooter_AfterPrint(object sender, EventArgs e)
        {
            k = 0;
        }

        private void xrPbk_AfterPrint(object sender, EventArgs e)
        {

        }

        private void GroupHeader1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //xrTitlle.Text = ReportType ==  ReportTypes.Audit ? "Master Data (Mobile QA) Analysis" : "Master Data (Mobile Inspection) Analysis";

            //if (ReportType ==  ReportTypes.Audit)
            //{
            //    xrTableCell12.Text = "審定時間";
            //    xrTableCell3.Text = "重審定(?)";
            //    xrTableCell19.Text = "審定\r\n件數";
            //    xrTableCell18.Text = "巡審定員";
            //}
            //else
            //{
            //    xrTableCell12.Text = "審查時間";
            //    xrTableCell3.Text = "重審查(?)";
            //    xrTableCell19.Text = "審查\r\n件數";
            //    xrTableCell18.Text = "巡審查拉長";
            //}

        }

    }
}
