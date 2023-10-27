using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraPrinting.Preview;
using PH.MobileQC.UI.RPT;
using DevExpress.XtraPrinting;
using DevExpress.XtraTab;
using PH.MobileQC.BO;
using PH.Platform.BO;

namespace PH.MobileQC.UI.Others
{
    public partial class WorkShopAnalysis : PH.Platform.UI.CS.UI0.BlankForm
    {

        string Flag = "";
        public WorkShopAnalysis()
        {
            InitializeComponent();
            

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            cmbFac.Properties.Items.Clear();
            //cmbFac.Properties.Items.Add("GX");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cmbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

        }

        public WorkShopAnalysis(string flag)
        {
            InitializeComponent();
            Flag = flag;

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            cmbFac.Properties.Items.Clear();
            cmbFac.Properties.Items.Add("GX");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cmbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

        }

        //private void barBtnPrintBase_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{

        //}

        private void TrafficSummary_Load(object sender, EventArgs e)
        {
            //rptQC_TrafficSummary rpt = new rptQC_TrafficSummary();
            //rpt.ShowPreview();


            //rptQC_TrafficSummary report = new rptQC_TrafficSummary();
            //PrintingSystem ps = report.PrintingSystem;

            // ps.PreviewFormEx.FormClosed+=new FormClosedEventHandler(PreviewFormEx_FormClosed);
            // report.ShowPreview();
            //return;
            //date_FromDate.Properties.

            string d1 = DateTime.Now.Year.ToString() + "-" + DateTime.Now.Month.ToString() + "-" + DateTime.Now.Day.ToString();    //string.Format("{0:d}", DateTime.Now); // DateTime.Now.ToShortDateString();


            date_FromDate.EditValue = d1; // DateTime.Now.ToShortDateString();

            date_ToDate.EditValue = d1; // DateTime.Now.ToShortDateString();
        }

        void PreviewFormEx_FormClosed(object sender, FormClosedEventArgs e)
        {           

            //XtraTabPage tab = this.Parent as XtraTabPage;
            //XtraTabControl tc = tab.TabControl as XtraTabControl;
            //this.Dispose();
            //tc.TabPages.Remove(tab);
            //tab.Dispose();
            //tab = null; 
            //GC.Collect();

        }

        private void sbut_print_Click(object sender, EventArgs e)
        {
            string _date = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(date_FromDate.EditValue.ToString()));

            string _dateto = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(date_ToDate.EditValue.ToString()));

            string _fac = this.cmbFac.Text;
            Flag = radioGroup1.SelectedIndex == 0 ? "A" : "C";
             //rptWorkShopAnalysis rpt = new rptWorkShopAnalysis(_date);
            rptWorkShopAnalysis_Group_V1 rpt = new rptWorkShopAnalysis_Group_V1(_date, _dateto, _fac, Flag);
             rpt.ShowPreview();
      

        }

        private void lblExecDT_Click(object sender, EventArgs e)
        {

        }
    }
}
