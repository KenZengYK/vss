using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.KB
{
    public partial class RWONonShipWindowLCLReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RWONonShipWindowLCLReport()
        {
            InitializeComponent();
        }
        string _customer;
        public RWONonShipWindowLCLReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;

            this.xrTracking1.Visible = this.xrTracking2.Visible = (customer == "ETAM");
        }
    }
}
