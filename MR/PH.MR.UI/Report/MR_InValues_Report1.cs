using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.MR.BO;

namespace PH.MR.UI.Report
{

   
    public partial class MR_InValues_Report1 : DevExpress.XtraReports.UI.XtraReport
    {

        public string Project;
        public MR_InValues_Report1()
        {
            InitializeComponent();
        }

        private void GroupFooter1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            AnticipantMR amr = this.GetCurrentRow() as AnticipantMR;
            xrTableCell37.Text = "Standard Cost:  " + amr.StyleCost.GetValueOrDefault().ToString() + " ";
        }

        private void TopMargin_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.xrlprjno.Text = this.Project;
            this.xrlPrintDate.Text = DateTime.Now.ToShortDateString();
        }

    }
}
