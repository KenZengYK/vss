using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Linq;
using System.Collections.Generic;

namespace PH.LWPM.UI.MasterDB
{
    public partial class JobTitleReport : DevExpress.XtraReports.UI.XtraReport
    {
        public JobTitleReport(List<object> AReportData)
        {
            InitializeComponent();
            this.bsJobTitle.DataSource = AReportData;
        }

        //private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        //{
        //    Master_data_For_Job_Title _record = this.GetCurrentRow() as Master_data_For_Job_Title;
        //    if (_record==null)
        //      return;

        //    //xrTableCell21,xrTableCell22,xrTableCell23,xrTableCell24
        //    //xrTableCell21.Text = _record.SewingDirect.GetValueOrDefault()?"Y":"N";
        //    //xrTableCell22.Text = _record.ProductionIndirect.GetValueOrDefault() ? "Y" : "N";
        //    //xrTableCell23.Text = _record.NonProduction.GetValueOrDefault() ? "Y" : "N";
        //    //xrTableCell24.Text = _record.SalesSL_HeadOfficeCost.GetValueOrDefault() ? "Y" : "N";

        //}

        private void PageHeader_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            xrDT.Text = DateTime.Now.ToString("yyyy/MM/dd");
        }

    }
}
