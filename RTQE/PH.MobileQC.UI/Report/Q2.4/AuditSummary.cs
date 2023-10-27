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
using PH.MobileQC.UI.UserControllibrary;

namespace PH.MobileQC.UI.Others
{
    public partial class AuditSummary : PH.Platform.UI.CS.UI0.BlankForm
    {

        string Flag = "";
      
        public AuditSummary()
        {
            InitializeComponent();            

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            cmbFac.Properties.Items.Clear();
            cmbFac.Properties.Items.Add("");
            //cmbFac.Properties.Items.Add("GX");
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cmbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }

        }
        
        public AuditSummary(string flag)
        {
            InitializeComponent();
            Flag = flag;

            ucDateChoice.HideItem(DatePeroidTypes.PeroidRang);            
            ucDateChoice.HideItem(DatePeroidTypes.Monthly);
            ucDateChoice.HideItem(DatePeroidTypes.Daily);

            ucDateChoice.radDateWorkMode.Visible = false;

            ucDateChoice.radDateWorkMode.SelectedIndex = 0;

            
            ucDateChoice.lbDate.Location = new System.Drawing.Point(24, 12);
            ucDateChoice.txtDateFrom.Location = new System.Drawing.Point(111, 13);
            sbut_print.Location = new System.Drawing.Point(132, 97);

            MobileQCDataContext db = ContextBuilder.CreateContext<MobileQCDataContext>();
            DataTable dt = db.GetFactoryType();
            cmbFac.Properties.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                cmbFac.Properties.Items.Add(dt.Rows[i]["Name"].ToString());
            }
        }

        //private void barBtnPrintBase_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        //{

        //}

        private void AuditSummary_Load(object sender, EventArgs e)
        {
           
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
           
            //Flag = radioGroup1.SelectedIndex == 0 ? "A" : "C";

            DatePeroidTypes DateType = ucDateChoice.DatePeroidType;

            if (!ucDateChoice.ProcessDate()) return;
            if (string.IsNullOrEmpty(this.checkedComboBoxEdit1.Text)) return;

            DateTime FromDate = DateTime.MinValue;
            DateTime ToDate = DateTime.MinValue;
            string WeeklyOrMonthly = "";

            if (DateType == DatePeroidTypes.Daily)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = FromDate;
            }
            else if (DateType == DatePeroidTypes.Weekly)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
                WeeklyOrMonthly = DatePeroidTypes.Weekly.ToString();
            }
            else if (DateType == DatePeroidTypes.Monthly)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
                WeeklyOrMonthly = DatePeroidTypes.Monthly.ToString();
            }
            else if (DateType == DatePeroidTypes.PeroidRang)
            {
                FromDate = ucDateChoice.FromDate;
                ToDate = ucDateChoice.ToDate;
            }


            string _start = FromDate.ToString("yyyy-MM-dd");
            string _end = ToDate.ToString("yyyy-MM-dd");



            string _date = string.Format("{0:yyyy/MM/dd}", DateTime.Parse(date_FromDate.EditValue.ToString()));
            //string _fac = this.cmbFac.Text;
            string _fac = this.checkedComboBoxEdit1.Text;

            RptWorkloadEstimationofMobile rpt = new RptWorkloadEstimationofMobile(_fac, _start, _end, Flag);
            rpt.ShowPreview();            
            
        }
    }
}
