using System;
using System.Collections;
using System.ComponentModel;
using System.Drawing;
using DevExpress.XtraReports.UI;

namespace PH.RWO.BackEnd.Reports
{
    public partial class OrderDetailReport : DevExpress.XtraReports.UI.XtraReport
    {
        public OrderDetailReport()
        {
            InitializeComponent();
        }

        public OrderDetailReport(int status)
            : this()
        {
            switch (status)
            {
                case 0:
                    this.xrLabelTitle.Text = "(All)";
                    break;
                case 1:
                    this.xrLabelTitle.Text = "(OutStanding)";
                    break;
                case 2:
                    this.xrLabelTitle.Text = "(Completed)";
                    break;
                default:
                    break;
            }

        }

    }
}
