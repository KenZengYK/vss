using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.RWOII
{
    public partial class RWONonShipWindowLCLReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RWONonShipWindowLCLReport()
        {
            InitializeComponent();
        }
        string _customer;
        public RWONonShipWindowLCLReport(object dataSource, string customer, bool isSubFactory)
        {
            InitializeComponent();
            _customer = customer;

            this.xrTracking1.Visible = this.xrTracking2.Visible = (customer == "ETAM");
            this.cellMainFtySupport.Text = isSubFactory ?
                string.Format("{0}\r\n{1}", "[MainFtySuppportWindow] days / 天", "(incl. [MainFtyFrontBack_NonWorkingdays] non-working days)")
            : "N.A.";
            this.cellTransit.Text = isSubFactory ?
                string.Format("{0}\r\n{1}", "[TransitWindow] days / 天", "(incl. [TransitFrontBack_NonWorkingdays] non-working days)")
            : "N.A.";

            this.DataSource = dataSource;
        }
    }
}
