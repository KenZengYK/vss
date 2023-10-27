using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.KB
{
    public partial class AgreedWOShipWindowReport : DevExpress.XtraReports.UI.XtraReport
    {
        public AgreedWOShipWindowReport()
        {
            InitializeComponent();
        }
        string _customer;
        public AgreedWOShipWindowReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            WorkOrder wo = this.GetCurrentRow() as WorkOrder;
            if (wo == null) return;
            //DetailReport.Visible = (wo.FWOption ?? 0) == 2 || (wo.FWOption ?? 0) == 4;

            wo.GetIEBInfor();
            foreach (WOChooseFW item in wo.WOChooseFWs)
            {
                switch (item.Seq)
                {
                    case 1:
                        this.cellFW1.Text = string.Format("{0:yyyy/MM/dd}", item.FactoryWork);
                        this.cellNonW1.Text = string.Format("{0}", item.NonWorkingDays);
                        this.cellLWWindow1.Text = string.Format("{0}", item.LWWindow);
                        this.cb1.Checked = item.Chosen ?? false;
                        break;
                    case 2:
                        this.cellFW2.Text = string.Format("{0:yyyy/MM/dd}", item.FactoryWork);
                        this.cellNonW2.Text = string.Format("{0}", item.NonWorkingDays);
                        this.cellLWWindow2.Text = string.Format("{0}", item.LWWindow);
                        this.cb2.Checked = item.Chosen ?? false;
                        break;
                    case 3:
                        this.cellFW3.Text = string.Format("{0:yyyy/MM/dd}", item.FactoryWork);
                        this.cellNonW3.Text = string.Format("{0}", item.NonWorkingDays);
                        this.cellLWWindow3.Text = string.Format("{0}", item.LWWindow);
                        this.cb3.Checked = item.Chosen ?? false;
                        break;
                    case 4:
                        this.cellFW4.Text = string.Format("{0:yyyy/MM/dd}", item.FactoryWork);
                        this.cellNonW4.Text = string.Format("{0}", item.NonWorkingDays);
                        this.cellLWWindow4.Text = string.Format("{0}", item.LWWindow);
                        this.cb4.Checked = item.Chosen ?? false;
                        break;
                    default:
                        break;
                }
            }

            this.cellOpt12.Text = string.Format("{0}", wo.Opt2vs1);
            this.cellOpt31.Text = string.Format("{0}", wo.Opt3vs1);
            this.cellOpt32.Text = string.Format("{0}", wo.Opt3vs2);
            this.cellOpt42.Text = string.Format("{0}", wo.Opt4vs2);

            this.cellEFF.Text = string.Format("{0:N2} %", wo.EFF ?? wo.EFF_Default);
            this.cellCU.Text = string.Format("{0:N2} %", wo.CU ?? wo.CU_Default);

            //this.cellWorkingHours.Text = string.Format("Working Hours/day at {1} = {0} (wt/ave)", wo.Factory == "SL" ? 10.67 : 9.67, wo.Factory);
            this.cellWorkingHours.Text = string.Format("{0}", wo.Factory == "SL" ? 10.67 : 9.67);
            //this.cellT3.Text = string.Format("{0}", wo.Project.IsShipWindow ? " 5. T3 (Ship Completed) / T3日期 (尾航期):" : " 5. T3 Date / T3日期:");
            this.cellCTdays.Text = string.Format("{0} days/วัน ", wo.FWvsLW_CalendarDay);

            this.cellWorkingDaysLines.Text = string.Format("{0} ({1:N1})", Convert.ToInt32(Math.Ceiling(Math.Round(wo.WorkingDaysLines, 1))), wo.WorkingDaysLines);
        }

        private void DetailReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
        //    WorkOrder wo = this.GetCurrentRow() as WorkOrder;
        //    if (wo == null) return;

        //    this.cellFWColorTitle.Text = string.Format("FW Start Date / Color dependent - Option {0}", wo.FWOption);
        }


    }
}
