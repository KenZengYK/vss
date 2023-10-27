using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LineBalanceII.BO;
using System.Linq;
using System.Collections.Generic;
using System.Diagnostics;
using DevExpress.XtraEditors.Controls;
using System.IO;
using PH.Platform.BO;

namespace PH.LineBalanceII.UI.BondingSpect.Report
{
    public partial class RptBondingSpec : DevExpress.XtraReports.UI.XtraReport
    {
        string CurStyle = "";
        int BondingSpec_Id;
        List<BondingSpec> MastList =new List<BondingSpec>();
        BondingSpec CurMaster;
        List<BondingSpecItem> DetailList = new List<BondingSpecItem>();

        public RptBondingSpec()
        {
            InitializeComponent();
        }

        public RptBondingSpec(string styleno)
        {
            InitializeComponent();
            CurStyle = styleno;
            GetReportData();
        }
          public RptBondingSpec(int ABondingSpec_Id)
        {
            InitializeComponent();
            BondingSpec_Id = ABondingSpec_Id;
            GetReportData_BondingSpec_Id();
        }
        public void GetReportData()
        {
            LineBalanceIIDataContext db = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
           // CurMaster = LBHelper.LbCtx.BondingSpecs.Where(p => p.PhStyle == CurStyle).FirstOrDefault();
            CurMaster = db.BondingSpecs.Where(p => p.PhStyle == CurStyle).FirstOrDefault();
            if (CurMaster != null)
            {
                DetailList = db.BondingSpecItems.Where(p => p.BondingSpec_Id == CurMaster.BondingSpec_Id).OrderBy(p => p.GroupNo.PadLeft(10, '0')).ToList();
                FillData(DetailList.Count);
                this.bsDetail.DataSource = DetailList;
            }
        }

        public void GetReportData_BondingSpec_Id()
        {
            LineBalanceIIDataContext db = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            //CurMaster = LBHelper.LbCtx.BondingSpecs.Where(p => p.PhStyle == CurStyle).FirstOrDefault();
            //CurMaster = LBHelper.LbCtx.BondingSpecs.Where(p => p.BondingSpec_Id == this.BondingSpec_Id).FirstOrDefault();
            CurMaster = db.BondingSpecs.Where(p => p.BondingSpec_Id == this.BondingSpec_Id).FirstOrDefault();
            if (CurMaster != null)
            {
                DetailList = db.BondingSpecItems.Where(p => p.BondingSpec_Id == CurMaster.BondingSpec_Id).OrderBy(p => p.GroupNo.PadLeft(10, '0')).ToList();
                FillData(DetailList.Count);
                this.bsDetail.DataSource = DetailList;
            }
        }

        private void FillData(int vcount)
        {
           // if (vcount < 13)
           // {
           //     for (int j = 0; j < 13 - vcount; j++)
           //     {
           //         BondingSpecItem bsi = new BondingSpecItem();
           //         bsi.GroupNo = "ZZZ";
           //         bsi.OrderNo = 999;
           //         DetailList.Add(bsi);
           //     }
           // }
           // else if (vcount>13 && vcount <= 26)
           // {
           //     for (int j = 0; j < 26 - vcount; j++)
           //     {
           //         BondingSpecItem bsi = new BondingSpecItem();
           //         bsi.GroupNo = "ZZZ";
           //         bsi.OrderNo = 999;
           //         DetailList.Add(bsi);
           //     }            
           // }
           // else if (vcount > 26 && vcount < 39)
           // {
           //     for (int j = 0; j < 39 - vcount; j++)
           //     {
           //         BondingSpecItem bsi = new BondingSpecItem();
           //         bsi.GroupNo = "ZZZ";
           //         bsi.OrderNo = 999;
           //         DetailList.Add(bsi);
           //     }
           // }

           //// DetailList.OrderBy(p=>p.GroupNo
           // int jj = 0;
           // // IOrderedEnumerable<BondingSpecItem>  orderlist =  DetailList.OrderBy(t => new { t.GroupNo }).ThenBy(t => new { t.OrderNo});
           // //var query = from items in DetailList orderby  items.GroupNo.PadLeft(10, '0'), items.OrderNo select items;
           // var query = from items in DetailList orderby items.GroupNo.PadLeft(10, '0') select items;
           // foreach (BondingSpecItem bci in query)
           //  {
           //      if (jj < 13)
           //          bci.GroupSeq = 1;
           //      else
           //          bci.GroupSeq = 2;
           //      jj++;
           //  }           

          


        }
        public void SetHeader()
        {
            if (this.CurMaster != null)
            {
                xrCust.Text = CurMaster.CustNo;
                xrCustStyle.Text = CurMaster.CustStyle;
                xrPhStyle.Text = CurMaster.PhStyle;
                string _depend ="";
                int m =CurMaster.DependType.GetValueOrDefault();
                if (m==1)
                    _depend ="1)É«´a²»ÒÀ¿¿";
                else if (m==2)
                    _depend ="2)É«ÒÀ¿¿";
                else if (m==3)
                    _depend ="3)´aÒÀ¿¿";
                else if (m==4)
                    _depend ="4)É«´aÒÀ¿¿";

                int _type = CurMaster.Mtype.GetValueOrDefault();
                if (_type == 1)
                    xrChkNf.Checked = true;
                else if (_type == 2)
                    xrChkYt.Checked = true;
                else if (_type == 3)
                    xrAll.Checked = true;

                xrDepend.Text = _depend;
                xrNotice.Text = CurMaster.Notice;
                SetImage(xrPic1, CurMaster.ImageFile);
                SetImage(xrPic2, CurMaster.ImageFile1);
                SetImage(xrPic3, CurMaster.ImageFile2);
            }
        }

        public void SetFoot()
        { 
            if (this.CurMaster != null)
            {
                xrUpdInfo.Text = CurMaster.UpdateInfo;
                xrRemark.Text = CurMaster.Remark;
                xrPass.Text = CurMaster.Result.GetValueOrDefault().ToString();
            }
        }


        private void SetImage(XRPictureBox pbox, string filepath)
        {
            if (string.IsNullOrEmpty(filepath))
                return;

            if (File.Exists(filepath) == false)
                return;

            Image obj = Image.FromFile(filepath, false);
           if (obj!=null)
             pbox.Image = obj;          
        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            string _dtstr = DateTime.Now.ToString("MM/dd/yyyy");
            string ss = _dtstr.Substring(5, 5) + "/" + _dtstr.Substring(0, 4);

            this.xrDate.Text = DateTime.Now.ToString("MM/dd/yyyy");
            this.SetHeader();
        }

        private void ReportFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.SetFoot();
        }

        int row = 0;
        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            BondingSpecItem bsi= this.GetCurrentRow() as BondingSpecItem;
            if (bsi == null)
                return;
            if (bsi.OrderNo.GetValueOrDefault() == 999)
            {
                xrTableCell48.Text = ""; //xrTableCell73.Text = "";
            }
            else
            {
                xrTableCell48.Text = bsi.GroupNo; //xrTableCell73.Text = bsi.OrderNo.GetValueOrDefault().ToString();
            }
          

            //if (DetailList.Count > 14 && DetailList.Count <= 26)
            //{
            //    if (row == 13)
            //        this.xrPbreak.Visible = true;
            //    else
            //        this.xrPbreak.Visible = false;
            //}
            //else if (DetailList.Count > 26 && DetailList.Count <= 39)
            //{
            //    if (row == 13 || row == 26)
            //        this.xrPbreak.Visible = true;
            //    else
            //        this.xrPbreak.Visible = false;
            //}
            //else
            //    this.xrPbreak.Visible = false;



        }

        private void Detail_AfterPrint(object sender, EventArgs e)
        {
            row++;

        }

        private void ReportFooter_AfterPrint(object sender, EventArgs e)
        {
            //if (DetailList.Count>12&&DetailList.Count<24&&row == 12)
            //    this.xrPbreak.Visible = true;
            //if (DetailList.Count>=24&&DetailList.Count<36&&(row == 12||row==24))
            //    this.xrPbreak.Visible = true;
            //else
            //    this.xrPbreak.Visible = false;
        }

        private void PageFooter_AfterPrint(object sender, EventArgs e)
        {
           // this.xrPbreak.Visible = false;
        }


        private void SetVisible(bool visible)
        {
            xrLabel3.Visible = visible;
            xrApplier.Visible = visible;
            xrLabel4.Visible =visible;
            xrManager.Visible =visible;
            xrLine1.Visible =visible;
            xrLine2.Visible =visible;
        }

        private void PageFooter_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           
        }

        private void ReportFooter_BeforePrint_1(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrApplier.Text = CurMaster.ApplyUser;
            xrManager.Text = CurMaster.Auditer;
            SetVisible(true);
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SetFoot();
        }

    }
}
