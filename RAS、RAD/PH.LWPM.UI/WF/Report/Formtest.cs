using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.Platform.BO;
using PH.LWPM.BO;

namespace PH.LWPM.UI.WF.Report
{
    public partial class Formtest : Form
    {

        private WorkForceList Context;
        private PH.LWPM.BO.RAPLQDataContext context;
        public Formtest()
        {
            InitializeComponent();
            this.Context = new WorkForceList();
            this.context = ContextBuilder.CreateContext<PH.LWPM.BO.RAPLQDataContext>();
        }

        private void Formtest_Load(object sender, EventArgs e)
        {
            BindCombx();
        }

        private void BindCombx()
        {
            this.T_factory.Properties.Items.AddRange(context.WorkForces.Where(P => P.Factory != "").Select(S => S.Factory).Distinct().ToArray());
        }

        private void BindReport(string factory,GSDReport gsdreport)
        {

            gsdreport.bindingSource1.DataSource = BindReportLbl(factory, gsdreport);

            gsdreport.ShowPreviewDialog();
        }
        private List<GSDreport> BindReportLbl(string factory, GSDReport gsdreport)
        {
            string sql = string.Format("exec rap_GSD '{0}'", factory);
            List<GSDreport> li= context.ExecuteQuery<GSDreport>(sql).ToList();
            int? totalsmfcut=0;
            int? sumStationedcut=0;
            int? sumMobilecut=0;
            int? sumFloatingcut=0;
            decimal lblsumF = 0;
            decimal lblsumA = 0;
            decimal lblsumE = 0;

            foreach (var item in li)
	    {
           
            sumStationedcut=sumStationedcut+item.Stationedcut;
            sumMobilecut=sumMobilecut+item.Mobilecut;
            sumFloatingcut=sumFloatingcut+item.Floatingcut;
            lblsumF=lblsumF+item.F;
            lblsumA=lblsumA+item.A;
            lblsumE=lblsumE+item.E;

            if (item.Stationedcut == null)
            {
                item.strStationedcut = "n.a";
            }
            else
            {
                item.strStationedcut = item.Stationedcut.ToString();
            }
            if (item.Mobilecut == null)
            {
                item.strMobilecut = "n.a";
            }
            else
            {
                item.strMobilecut = item.Mobilecut.ToString();
            }
            if (item.Floatingcut == null)
            {
                item.strFloatingcut = "n.a";
            }
            else
            {
                item.strFloatingcut = item.Floatingcut.ToString();
            }

            if (item.F != 0 && item.SMFcut != 0)
            {
                item.strF = item.F.ToString() +"("+ Math.Round((((item.F) / (decimal)item.SMFcut * 100)),2).ToString() + "%)";
            }
            else
            {
                item.strF = "0("+ 0 + "%)";
            }
            if (item.A != 0 && item.SMFcut != 0)
            {
                item.strA = item.A.ToString() + "(" + Math.Round((((item.A) / (decimal)item.SMFcut * 100)),2).ToString() + "%)";
            }
            else
            {
                item.strA = "0(" + 0 + "%)";
            }
            if (item.E != 0 && item.SMFcut != 0)
            {
                item.strE = item.E.ToString() + "(" +Math.Round((( (item.E) / (decimal)item.SMFcut * 100)),2).ToString() + "%)";
            }
            else
            {
                item.strE = "0(" + 0 + "%)";
            }
            
	    }
            totalsmfcut = li.Select(p => p.tbtotal).FirstOrDefault();
      //      gsdreport.lblTotal_jobtitle.Text = String.Format("Count({0})", totalsmfcut);
            //gsdreport.lblsumStationed.Text = String.Format("Sum({0})", sumStationedcut);
            //gsdreport.lblsumMobile.Text = String.Format("Sum({0})", sumMobilecut);
            //gsdreport.lblsumFloating.Text = String.Format("Sum({0})", sumFloatingcut);

            string strlblsumF = string.Empty;
            string strlblsumA = string.Empty;
            string strlblsumE = string.Empty;
            if (lblsumF != 0 && totalsmfcut != 0)
            {
                strlblsumF = lblsumF.ToString() + "(" + Math.Round((((lblsumF) / (decimal)totalsmfcut * 100)),2).ToString() + "%)";
            }
            else
            {
                strlblsumF = "0(" + 0 + "%)";
            }
            if (lblsumA != 0 && totalsmfcut != 0)
            {
                strlblsumA = lblsumA.ToString() + "(" + Math.Round((((lblsumA) / (decimal)totalsmfcut * 100)),2).ToString() + "%)";
            }
            else
            {
                strlblsumA = "0(" + 0 + "%)";
            }
            if (lblsumE != 0 && totalsmfcut != 0)
            {
                strlblsumE = lblsumE.ToString() + "(" +Math.Round( (((lblsumE) / (decimal)totalsmfcut * 100)),2).ToString() + "%)";
            }
            else
            {
                strlblsumE = "0(" + 0 + "%)";
            }
            gsdreport.lblsumF.Text =  String.Format("{0}", strlblsumF);
            gsdreport.lblsumA.Text = String.Format("{0}", strlblsumA);
            gsdreport.lblsumE.Text = String.Format("{0}", strlblsumE);
            //gsdreport.lbl_factory.Text=String.Format("({0})",li.Select(p=>p.Factory).FirstOrDefault().Trim());


            return li;
        }
        private void bt_ok_Click(object sender, EventArgs e)
        {
            //GSDReport gsdreport = new GSDReport();
            //string factory = this.T_factory.Text.ToString();
            //BindReport(factory,gsdreport);

          
            string a = dateEdit1.Text.ToString() +" "+ timeEdit1.Text.ToString();


        }

    
    }
}
