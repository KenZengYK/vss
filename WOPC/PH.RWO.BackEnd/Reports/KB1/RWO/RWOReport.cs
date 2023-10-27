using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.KB
{
    public partial class RWOReport : DevExpress.XtraReports.UI.XtraReport
    {
        public RWOReport()
        {
            InitializeComponent();
        }
        string _wono;
        string _customer;
        string _color;
        int _round;
        string _param;

        public void GetValues(string parameters)
        {
            this._param = parameters;
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._wono = ss[0];
            this._customer = ss[1].Trim().ToUpper();
            this._color = ss[2].Trim();
            this._round = Convert.ToInt32(ss[3]);

        }

        public RWOReport(string parameters)
        {
            InitializeComponent();
            GetValues(parameters);
            SetPivotDataSource();
        }

        private void SetPivotDataSource()
        {
            RoundWorkOrderSKUList list = new RoundWorkOrderSKUList();
            var bulk = list.GetRoundWorkOrderSKUBulkWithSort(_wono, _color, _round);
            this.prPivotBulk.DataSource = bulk;
            //this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window)" : "(Non - Ship Window)";
            //this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window ช่วงเวลาที่ยอมรับการการส่งสินค้า)" : "(Non - Ship Window ไม่มี  ช่วงเวลาที่ยอมรับการการส่งสินค้า)";
            this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window ช่วงเวลาการส่งสินค้า)" : "(Non - Ship Window ไม่มี  ช่วงเวลาการส่งสินค้า)";
        }

        private void RWOReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string kbOA = "Prepared by KBOA:\nเตรียมโดยโอเอเมืองไทย :";
            string slOA = "Prepared by SLOA:\nเตรียมโดยโอเอเมืองจีน :";

            string sizedesc = "";
            var aa = this.DataSource as IEnumerable<PH.RWO.BO.RoundWorkOrder>;
            foreach (PH.RWO.BO.RoundWorkOrder rwo in aa)
            {
                sizedesc = rwo.WorkOrderColor.WorkOrder.SizeMatrixStr_KB;
                this.lbPreparebyOA.Text = rwo.WorkOrderColor.WorkOrder.Project.Factory == "KB" ? kbOA : slOA;
            }
            //bool isFrenchCusomter = DataHelper.IsFrenchCustomer(_customer);
            //if (isFrenchCusomter)
            pivotColSize.HeaderText = sizedesc;

            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            XtraReport report;
            switch (_customer)
            {
                case "SARA"://hans
                    report = new KB.RWOShipWindowReport(this.DataSource, this._customer);
                    break;
                case "TAMA"://tama
                    report = new KB.RWONonShipWindowFCLReport(this.DataSource, this._customer);
                    break;
                case "M&S"://tama
                    goto case "TAMA";
                default://others include french customers
                    report = new KB.RWONonShipWindowLCLReport(this.DataSource, this._customer);
                    break;
            }
            this.xrSubreportShipWindow.ReportSource = report;
        }
    }
}
