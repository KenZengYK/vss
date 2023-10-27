using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using PH.LWPM.BO;
using PH.Platform.BO;

namespace PH.LWPM.UI.LB4.Report
{
    public partial class SuspectReportConditin : PH.Platform.UI.CS.BaseForm
    {
        public SuspectReportConditin()
        {
            InitializeComponent();
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            if (this.deEnd.DateTime.Date < this.deStart.DateTime.Date)
            {
                MessageBox.Show("The end date must later than the start date!");
                return;
            }
            SuspectPlanRpt spr = new SuspectPlanRpt();
            spr.StartDT = deStart.DateTime.Date.ToShortDateString();
            spr.EndDT = deEnd.DateTime.Date.ToShortDateString();
            spr.Factory = cmbFactory.Text;
            spr.CType = 0;
            spr.ShowPreview();


        }

        private void SuspectReportConditin_Load(object sender, EventArgs e)
        {
            //RAPLQDataContext dc = ContextBuilder.CreateContext<RAPLQDataContext>();
            //cmbFactory.Properties.Items.AddRange(dc.BaseCodes.Where(P => P.Type == "FACTORY").Select(S => S.Code).ToArray());
        }

        private void btnPrtWC_Click(object sender, EventArgs e)
        {
            if (this.deEnd.DateTime.Date < this.deStart.DateTime.Date)
            {
                MessageBox.Show("The end date must later than the start date!");
                return;
            }
            SuspectPlanRpt spr = new SuspectPlanRpt();
            spr.StartDT = deStart.DateTime.Date.ToShortDateString();
            spr.EndDT = deEnd.DateTime.Date.ToShortDateString();
            spr.Factory = cmbFactory.Text;
            spr.CType = 1;
            spr.ShowPreview();
        }
    }
}
