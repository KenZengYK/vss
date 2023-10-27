using System;
using System.Drawing;
using System.Collections;
using System.Data;
using System.Linq;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using System.Collections.Generic;
using DevExpress.XtraPrinting;

namespace PH.RWO.BackEnd
{
    public partial class WONonShipWindowLCLReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WONonShipWindowLCLReport()
        {
            InitializeComponent();
        }
        string _customer;
        WorkOrder _WorkOrder;
        public WONonShipWindowLCLReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;

            _WorkOrder = (dataSource as IEnumerable<PH.RWO.BO.WorkOrder>).FirstOrDefault();

            //this.xrTracking1.Visible = this.xrTracking2.Visible = (customer == "ETAM");
            this.xrTracking1.Visible = this.xrTracking2.Visible = false;

            if (this._WorkOrder != null && _WorkOrder.Factory == "CL")
            {
                this.tcFCLCaption.Text = "FCL Ex-Fty dd/time - not apply to Bangladesh now\r\nFCL之離廠日期/時間 - 現暫不適用於孟加拉";
            }
            else
            {
                this.tcFCLCaption.Text = "FCL Ex-Fty dd/time - for reference\r\nFCL之離廠日期/時間 - 作參考用";
            }
        }

        private void tcFCLNonShipExFtyDateStr_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this._WorkOrder != null && _WorkOrder.Factory == "CL")
            {
                this.tcFCLNonShipExFtyDateStr.Text = "n.a.";
                this.tcFCLNonShipExFtyDateStr.Borders = BorderSide.Left | BorderSide.Top;
                this.tcFCLNonShipExFtyDateStr.Width = this.xrTableCell120.Width;
            }
        }

        private void tcFCLExFtyShipCompleted_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this._WorkOrder != null && _WorkOrder.Factory == "CL")
            {
                this.tcFCLExFtyShipCompleted.Width = 0;
                this.tcFCLExFtyShipCompleted.Text = "";
                this.tcFCLExFtyShipCompleted.Borders = BorderSide.Top | BorderSide.Right;
            }

        }

        private void tcT3Date_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcT3Date.Text = string.Format("{0}\r\n({1})", this.tcT3Date.Text, DataHelper.GetWeekdayForShort(_WorkOrder.T3));
        }

        private void tcSWStartDate_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcSWStartDate.Text = string.Format("{0}\r\n({1})", this.tcSWStartDate.Text, DataHelper.GetWeekdayForShort(_WorkOrder.LineWorkShipCompleted_SpecialFactory));
        }

        private void tcDeliveryShipCompleted_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            this.tcDeliveryShipCompleted.Text = string.Format("{0}\r\n({1})", this.tcDeliveryShipCompleted.Text, DataHelper.GetWeekdayForShort(_WorkOrder.DeliveryShipCompleted));
        }

    }
}
