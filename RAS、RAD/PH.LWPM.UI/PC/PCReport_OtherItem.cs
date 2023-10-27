using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using DevExpress.XtraPrinting;


namespace PH.LWPM.UI.PC
{
    public partial class PCReport_OtherItem : DevExpress.XtraReports.UI.XtraReport
    {
        public double GrandTotal;
        public PCReport_OtherItem()
        {
            InitializeComponent();
        }

        private void tcGrandTotal_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //IOrderedEnumerable<PCReportMerge> lists = this.bindingSource.DataSource as IOrderedEnumerable<PCReportMerge>;
            //double GrandTotal = lists.Sum(p => p.Amount) ?? 0;
            this.tcGrandTotal.Text = GrandTotal == 0 ? "" : GrandTotal.ToString("N2");
        }

    }
}
