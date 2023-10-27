using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class WOShipWindowReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WOShipWindowReport()
        {
            InitializeComponent();
        }
        string _customer;
        public WOShipWindowReport(object dataSource,string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;
        }


    }
}
