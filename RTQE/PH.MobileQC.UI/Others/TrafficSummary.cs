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

namespace PH.MobileQC.UI.Others
{
    public partial class TrafficSummary : PH.Platform.UI.CS.UI0.BlankForm
    {

        string Flag = "A";
        public TrafficSummary()
        {
            InitializeComponent();
        }

        public TrafficSummary(string flag)
        {
            InitializeComponent();
            Flag = flag;
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

            date_FromDate.EditValue = DateTime.Now.ToShortDateString();
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
            //rptQC_TrafficSummary rpt = new rptQC_TrafficSummary(_date);
            //if (rbTraffic.Checked)
            //{
            string _fac = this.cmbFac.Text;
                rptQC_TrafficSummary_New rpt = new rptQC_TrafficSummary_New(_date,_fac);
                rpt.ShowPreview();
            //}
            //else if (rbAuditWorking.Checked)
            //{
            //    rptAuditWorkAnalysis rpt = new rptAuditWorkAnalysis(_date);
            //    rpt.ShowPreview();            
            //}
        }
    }
}
