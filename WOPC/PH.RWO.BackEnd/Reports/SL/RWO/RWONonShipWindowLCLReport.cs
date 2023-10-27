using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Linq;
using System.Data.Linq;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using System.Collections.Generic;

namespace PH.RWO.BackEnd
{
    public partial class RWONonShipWindowLCLReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RWONonShipWindowLCLReport()
        {
            InitializeComponent();
        }
        string _customer;
        RoundWorkOrder _RoundWorkOrder = null;
        public RWONonShipWindowLCLReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;

            _RoundWorkOrder = (dataSource as IEnumerable<RoundWorkOrder>).FirstOrDefault();

            this.xrTracking1.Visible = this.xrTracking2.Visible = (customer == "ETAM");
        }

        private void tcT3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcT3.Text = string.Format("{0}\r\n({1})", this.tcT3.Text, DataHelper.GetWeekdayForShort(_RoundWorkOrder.T3));
        }

        private void tcSWStartDate_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcSWStartDate.Text = string.Format("{0}\r\n({1})", this.tcSWStartDate.Text, DataHelper.GetWeekdayForShort(_RoundWorkOrder.LineWorkStartDate_SpecialFactory));
        }

        private void tcWOSWStartDate_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcWOSWStartDate.Text = string.Format("{0}\r\n({1})", this.tcWOSWStartDate.Text, DataHelper.GetWeekdayForShort(_RoundWorkOrder.WorkOrderColor.WorkOrder.LineWorkShipCompleted));
        }

        private void tcWOT3_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcWOT3.Text = string.Format("{0}\r\n({1})", this.tcWOT3.Text, DataHelper.GetWeekdayForShort(_RoundWorkOrder.WorkOrderColor.WorkOrder.T3));
        }
    }
}
