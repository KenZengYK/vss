using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd
{
    public partial class WONonShipWindowFCLReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WONonShipWindowFCLReport()
        {
            InitializeComponent();
        }
        string _customer;
        public WONonShipWindowFCLReport(object dataSource,string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;
        }
    }
}
