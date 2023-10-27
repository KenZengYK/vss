using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Linq;

namespace PH.LWPM.UI.WF.Report
{
    public partial class RptJobTitle : DevExpress.XtraReports.UI.XtraReport
    {
        public RptJobTitle(IQueryable<Master_data_For_Job_Title>  _datalist,string title)
        {
            InitializeComponent();
            this.bsJobTitle.DataSource = _datalist;
            xrTitle.Text = title;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            Master_data_For_Job_Title _record = this.GetCurrentRow() as Master_data_For_Job_Title;
            if (_record==null)
              return;

            //xrTableCell21,xrTableCell22,xrTableCell23,xrTableCell24
            //xrTableCell21.Text = _record.SewingDirect.GetValueOrDefault()?"Y":"N";
            //xrTableCell22.Text = _record.ProductionIndirect.GetValueOrDefault() ? "Y" : "N";
            //xrTableCell23.Text = _record.NonProduction.GetValueOrDefault() ? "Y" : "N";
            //xrTableCell24.Text = _record.SalesSL_HeadOfficeCost.GetValueOrDefault() ? "Y" : "N";

        }

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrDT.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

    }
}
