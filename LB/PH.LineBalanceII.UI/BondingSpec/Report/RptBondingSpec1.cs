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

namespace PH.LineBalanceII.UI.BondingSpect.Report
{
    public partial class RptBondingSpec1 : DevExpress.XtraReports.UI.XtraReport
    {
        string CurStyle = "";
        List<BondingSpec> MastList =new List<BondingSpec>();
        BondingSpec CurMaster;
        List<BondingSpecItem> DetailList = new List<BondingSpecItem>();

        public RptBondingSpec1()
        {
            InitializeComponent();
        }

        public RptBondingSpec1(string styleno)
        {
            InitializeComponent();
            CurStyle = styleno;
            GetReportData();
        }
        public void GetReportData()
        {
            CurMaster = LBHelper.LbCtx.BondingSpecs.Where(p => p.PhStyle == CurStyle).FirstOrDefault();
            if (CurMaster != null)
            {
                DetailList = LBHelper.LbCtx.BondingSpecItems.Where(p => p.BondingSpec_Id == CurMaster.BondingSpec_Id).ToList();
                this.bsDetail.DataSource = DetailList;
            }
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
                    _depend ="1)色碼不依靠";
                else if (m==2)
                    _depend ="2)色依靠";
                else if (m==3)
                    _depend ="3)碼依靠";
                else if (m==4)
                    _depend ="4)色碼依靠";

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
                xrApplier.Text = CurMaster.ApplyUser;
                xrManager.Text = CurMaster.Auditer;
                xrPass.Text = CurMaster.Result.GetValueOrDefault().ToString();
            }
        }


        private void SetImage(XRPictureBox pbox, string filepath)
        {
            if (string.IsNullOrEmpty(filepath))
                return;

                //try
                //{
                    //Image obj = Image.FromStream(System.Net.WebRequest.Create(url).GetResponse().GetResponseStream());
                    Image obj = Image.FromFile(filepath, false);
                   if (obj!=null)
                     pbox.Image = obj;
                //}
                //catch (NotSupportedException ne)
                //{
                //    MessageBox.Show("试图读取/查找或写入不支持调用功能的流!");
                //    return;
                //}
                //catch (ArgumentNullException ae)
                //{
                //    MessageBox.Show("以下文件地址 :" + fileDialog.FileName + "錯誤或不存在!");
                //    return;
                //}
                //catch (SecurityException se)
                //{
                //    MessageBox.Show("訪問權限不足!");
                //    return;
                //}
                //catch (Exception ex)
                //{
                //    throw ex;
                //}            

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


 

    }
}
