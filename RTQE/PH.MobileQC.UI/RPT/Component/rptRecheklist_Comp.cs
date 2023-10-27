using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MobileQC.BO;
using System.Collections.Generic;

namespace PH.MobileQC.UI
{
    public partial class rptRecheklist_Comp : DevExpress.XtraReports.UI.XtraReport
    {

        List<QC_Master> rechecklist = new List<QC_Master>();
        string DateRange, Flag;
        public rptRecheklist_Comp(List<QC_Master> subdata, string daterange, string flag) 
        {
            InitializeComponent();
            rechecklist = subdata;
            DateRange = daterange;
            Flag = flag;
            this.bsRecheck.DataSource = subdata;
           
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
                QC_Master qm = rechecklist[k];
                if (!aryproc.Contains(qm.W_procedure))
                    aryproc.Add(qm.W_procedure);
                if (qm.FCount == 0)
                    _pass++;

                total = total + qm.QCCount.GetValueOrDefault();
                passqty = passqty + qm.PCount;


            }

           // double aa = Convert.ToDouble(passqty * 100.00 / total);
            double aa = Convert.ToDouble(_pass * 100.00 / rechecklist.Count);
            string _per = String.Format("{0:F}", aa) + "%";
            xrRecheckInfo.Text = string.Format("***重檢(Yt+Yb)共計{0}次,重檢合格率{1}", rechecklist.Count.ToString(), _per);
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


            if (j > 0 && ma.Line != lineno)   
                m++;

            if (m % 2 == 0)
            {
                Color _color = Color.FromArgb(225, 255, 255);
                this.Detail.BackColor = _color;
            }
            else
                this.Detail.BackColor = Color.White;
            k++;
        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            QC_Master ma = this.GetCurrentRow() as QC_Master;
            lineno = ma.Line;
            j++;
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //this.MasterReport.Bands[BandKind.PageHeader].Visible = false;
            xrTitlle.Text = Flag == "A" ? "Master Data (Mobile Audit) Analysis" : "Master Data (Mobile Inspection) Analysis";
            
        }

    }
}
