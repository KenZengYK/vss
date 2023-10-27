using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.KB
{
    public partial class RWONonShipWindowFCLReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RWONonShipWindowFCLReport()
        {
            InitializeComponent();
        }
        string _customer;
        public RWONonShipWindowFCLReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;
        }
    }
}
