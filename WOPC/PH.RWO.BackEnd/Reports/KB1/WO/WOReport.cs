using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.KB
{
    public partial class WOReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WOReport()
        {
            InitializeComponent();
        }
        string _wono;
        string _customer;

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._wono = ss[0];
            this._customer = ss[1].Trim().ToUpper();
        }

        public WOReport(string parameters)
        {
            InitializeComponent();
            GetValues(parameters);
            SetPivotDataSource();
        }

        private void SetPivotDataSource()
        {
            WorkOrderSKUList list = new WorkOrderSKUList();
            var bulk = list.GetWorkOrderSKUBulkWithSort(_wono);
            this.prPivotBulk.DataSource = bulk;

            WorkOrderSampleList list1 = new WorkOrderSampleList();
            var sample = list1.GetWorkOrderSampleWithSort(_wono);
            this.prPivotSample.DataSource = sample;

            this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window ช่วงเวลาการส่งสินค้า)" : "(Non - Ship Window ไม่มี  ช่วงเวลาการส่งสินค้า)";
        }

        private void WOReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string sizedesc = "";
            var aa = this.DataSource as IEnumerable<PH.RWO.BO.WorkOrder>;
            foreach (PH.RWO.BO.WorkOrder wo in aa)
            {
                sizedesc = wo.SizeMatrixStr_KB;
            }

            //bool isFrenchCusomter = DataHelper.IsFrenchCustomer(_customer);
            //if (isFrenchCusomter)
            pivotColSize.HeaderText = pivotColSize1.HeaderText = sizedesc;

            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            XtraReport report;
            switch (_customer)
            {
                case "SARA"://hans
                    report = new KB.WOShipWindowReport(this.DataSource, this._customer);
                    break;
                case "TAMA"://tama
                    report = new KB.WONonShipWindowFCLReport(this.DataSource, this._customer);
                    break;
                case "M&S"://tama
                    goto case "TAMA";
                default://others include french customers
                    report = new KB.WONonShipWindowLCLReport(this.DataSource, this._customer);
                    break;
            }
            this.xrSubreportShipWindow.ReportSource = report;
        }
    }
}
