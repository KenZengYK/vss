using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class rptMastList_Comp : DevExpress.XtraReports.UI.XtraReport
    {

        List<QC_Master> RecheckList = new List<QC_Master>();
        rptRecheklist1 SubRpt;
        string DateRange = "", Flag = "A";
        int rowcount = 0, j = 0;
        public rptMastList_Comp(List<QC_Master> rptdata, string cdate, string flag)
        {
            InitializeComponent();

            ReportHelper reportHelper = new ReportHelper("Defect");
            xrVerName.Text = reportHelper.ReportInfo.VerName;
            xrVerText.Text = reportHelper.ReportInfo.VerContext;
            xrPublishedDateName.Text = reportHelper.ReportInfo.PublishedName;
            xrPublishedDateText.Text = reportHelper.ReportInfo.PublishedContext;

            DateRange = cdate;
            rowcount = rptdata.Count;
            this.bsMaster.DataSource = rptdata;
            Flag=flag;

          //  this.bsMaster.Sort = "Factory asc,WorkShop asc,Line asc,QC_time desc";
            this.bsMaster.Sort = "WorkShop asc,Line asc,qc_time desc";
            GetRecheckList(rptdata);
            SubRpt = new rptRecheklist1(RecheckList, DateRange,Flag);
            

            //this.Pages.AddRange(SubRpt.Pages);
            //this.PrintingSystem.ContinuousPageNumbering = true;

            if (Flag == "A")
            {
                xrTableCell12.Text = "審定時間";
                xrTableCell3.Text = "重審定\r\n(?)";
            }
            else
            {
                xrTableCell12.Text = "審查時間";
                xrTableCell3.Text = "重審查\r\n(?)";
            }

    
        }


        private void rptMastList_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            this.xrChkDT.Text = DateRange;
            xrsublist.ReportSource = SubRpt;

        }

        private void GetRecheckList(List<QC_Master> lst)
        {
            foreach (QC_Master qm in lst)
            {
                if (qm.ReAudit_Disp == "Yt" || qm.ReAudit_Disp == "Yb")
                {
                    RecheckList.Add(qm);
                }
            }
        }


        private void GetRecheckList1(IEnumerable<QC_Master> lst)
        {
            foreach (QC_Master qm in lst)
            {
                if (qm.ReAudit_Disp == "Yt" || qm.ReAudit_Disp == "Yb")
                {
                    RecheckList.Add(qm);
                }
            }
        }

        string lineno = "";
        int i = 0, m = 1, k = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            QC_Master ma = this.GetCurrentRow() as QC_Master;
            xrchktime.Text = string.Format("{0:yyyy-MM-dd HH:mm}", ma.QC_time);
            xrrecheck.Text = ma.ReAudit_Disp.ToString();
            xrfqty.Text = ma.FCount.ToString();
            if (ma.ReAudit_Disp == "Yt" || ma.ReAudit_Disp == "Yb")
                xrrecheck.ForeColor = Color.Red;
            else
                xrrecheck.ForeColor = Color.Black;


            if (ma.FCount > 0)
                xrfqty.ForeColor = Color.Red;
            else
                xrfqty.ForeColor = Color.Black;
            
           

            if (j>0&&ma.Line!=lineno)
            {
              //this.Detai
                m++;
            }

            if (m % 2 == 0)
            {
                //Color _color = Color.FromArgb(130, 150, 160);
                Color _color = Color.FromArgb(225, 255, 255);
                this.Detail.BackColor = _color;
            }
            else
                this.Detail.BackColor = Color.White;

            i++;

        }

        private void xrsublist_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           // this.PageHeader.Visible = false;
         
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            QC_Master ma = this.GetCurrentRow() as QC_Master;
            lineno = ma.Line;
            j++;
            k++;
           
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //if (j >= rowcount)
            //    e.Cancel = true;
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            XRPageBreak xrPageBreak = new XRPageBreak();
            xrPageBreak.Visible = true;
           // xrPageBreak.Name = "pb" + _ipage.ToString();
            this.ReportFooter.Controls.Add(xrPageBreak);


            //ArrayList aryproc = new ArrayList();
            //int total = 0, passqty = 0;
            //for (int j = 0; j < RecheckList.Count; j++)
            //{
            //    QC_Master qm = RecheckList[j];
            //    if (!aryproc.Contains(qm.W_procedure))
            //        aryproc.Add(qm.W_procedure);
            //    total = total + qm.QCCount.GetValueOrDefault();
            //    passqty = passqty + qm.PCount;
            //}

            //double aa = Convert.ToDouble(passqty * 100.00 / total);
            //string _per = String.Format("{0:F}", aa) + "%";
            //xrRecheckInfo.Text = string.Format("***重檢(Yt+Yb)共計{0}個工序,重檢合格率{1}", aryproc.Count.ToString(), _per);


            if (k >= 20)
            {
              //  this.xrPbk.Visible = true;
            }
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
            xrTitlle.Text = Flag=="A"?"Master Data (Mobile QA) Analysis":"Master Data (Mobile Inspection) Analysis";
        }

        private void bsMaster_CurrentChanged(object sender, EventArgs e)
        {

        }

    }
}
