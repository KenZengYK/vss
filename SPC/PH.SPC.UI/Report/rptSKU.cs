using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.SPC.UI
{
    public partial class rptSKU : DevExpress.XtraReports.UI.XtraReport
    {
        public rptSKU()
        {
            InitializeComponent();

            //this.lblTitle.Text = "Customer Profile - Size Ratio - " + AMaster.Customer + " " + AMaster.Brand;
        }

        public void SetDataSource(object dataSource)
        {
            this.xrPivotGrid1.DataSource = null;
            this.xrPivotGrid1.DataSource = dataSource;
        }

    }
}
