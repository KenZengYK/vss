using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class AgreedRWOShipWindowReport : DevExpress.XtraReports.UI.XtraReport
    {
        public AgreedRWOShipWindowReport()
        {
            InitializeComponent();
        }
        string _customer;
        public AgreedRWOShipWindowReport(object dataSource, string customer)
        {
            InitializeComponent();
            _customer = customer;
            this.DataSource = dataSource;
        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            RoundWorkOrder rwo = this.GetCurrentRow() as RoundWorkOrder;
            if (rwo == null) return;

            //rwo.WorkOrderColor.WorkOrder.GetIEBInfor();
            rwo.CalcFW();
            foreach (RWOChooseFW item in rwo.RWOChooseFWs)
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
                        //this.cb3.Checked = item.Chosen ?? false;
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

            this.cellOpt12.Text = string.Format("{0}", ConvertZeroToNA(rwo.Opt4vs3));
            this.cellOpt31.Text = string.Format("{0}", rwo.Opt3vs1);
            this.cellOpt32.Text = string.Format("{0}", rwo.Opt3vs2);

            //this.cellOpt42.Text = string.Format("{0}", rwo.Opt4vs2);
            this.cellOpt42.Text = string.Format("{0}\r\n{1}", ConvertZeroToNA(rwo.Opt4vs2), ConvertZeroToNA(rwo.Opt4vs1));


            //this.cellEFF.Text = string.Format("{0:N2} %", rwo.EFF );
            this.cellWorkingHours.Text = string.Format("{0:N2} %", rwo.CU);

            //this.cellWorkingHours.Text = string.Format("Working Hours/day at {1} = {0} (wt/ave)", wo.Factory == "SL" ? 10.67 : 9.67, wo.Factory);
            this.cellWorkingHours.Text = string.Format("{0}", rwo.Factory == "SL" ? 10.67 : 9.67);
            //this.cellT3.Text = string.Format("{0}", wo.Project.IsShipWindow ? " 5. T3 (Ship Completed) / T3日期 (尾航期):" : " 5. T3 Date / T3日期:");
            this.cellCTdays.Text = string.Format("{0} days/天", rwo.FWvsLW_CalendarDay);

            this.cellWorkingDaysLines.Text = string.Format("{0} ({1:N1})", Convert.ToInt32(Math.Ceiling(Math.Round(rwo.WorkingDaysLines, 1))), rwo.WorkingDaysLines);
        }

        private void DetailReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //WorkOrder wo = this.GetCurrentRow() as WorkOrder;
            //if (wo == null) return;

            //this.cellFWColorTitle.Text = string.Format("FW Start Date / Color dependent - Option {0}", wo.FWOption);
        }

        string ConvertZeroToNA(int? AInt)
        {
            return (AInt ?? 0) == 0 ? "n.a." : (AInt ?? 0).ToString();
        }



    }
}
