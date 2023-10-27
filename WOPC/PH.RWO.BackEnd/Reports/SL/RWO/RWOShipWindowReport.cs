using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd
{
    public partial class RWOShipWindowReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RWOShipWindowReport()
        {
            InitializeComponent();
        }
        string _customer;
        public RWOShipWindowReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;
        }
    }
}
