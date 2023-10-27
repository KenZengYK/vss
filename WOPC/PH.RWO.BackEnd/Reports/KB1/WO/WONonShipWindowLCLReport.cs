using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.KB
{
    public partial class WONonShipWindowLCLReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WONonShipWindowLCLReport()
        {
            InitializeComponent();
        }
        string _customer;
        public WONonShipWindowLCLReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;

            this.xrTracking1.Visible = this.xrTracking2.Visible = this.xrTracking3.Visible = (customer == "ETAM");
        }
    }
}
