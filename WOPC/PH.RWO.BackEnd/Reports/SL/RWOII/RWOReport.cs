using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;

namespace PH.RWO.BackEnd.RWOII
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
        string _subFactory;

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
            this._subFactory = ss[4].Trim();

        }

        public RWOReport(string parameters)
        {
            InitializeComponent();
            GetValues(parameters);
            SetPivotDataSource();
        }

        private void SetPivotDataSource()
        {
            RoundWorkOrderIISKUList list = new RoundWorkOrderIISKUList();
            var bulk = list.GetRoundWorkOrderIISKUBulkWithSort(_wono, _color, _round, _subFactory);
            this.prPivotBulk.DataSource = bulk;
            //this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window)" : "(Non - Ship Window)";
            //this.xrShipWindow.Text = (_customer.StartsWith("HBIU")) ? "(Ship Window 航期窗框)" : "(Non - Ship Window 不作航期窗框)";
        }

        private void RWOReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //string kbOA = "Prepared by KBOA:\n甲民武里商務部制訂:";
            //string slOA = "Prepared by SLOA:\n石龍商務部制訂:";

            bool isSubFactory = false;
            string sizedesc = "";
            PH.RWO.BO.RoundWorkOrderII rworkorder2 = null;
            var aa = this.DataSource as IEnumerable<PH.RWO.BO.RoundWorkOrderII>;
            foreach (PH.RWO.BO.RoundWorkOrderII rwo2 in aa)
            {
                rworkorder2 = rwo2;
                sizedesc = rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.SizeMatrixStr;
                cellSubFactory.Text = (rwo2.IsSubFactory) ? "Sub-contracting Fty:\r\n加工廠:" : "Factory:\r\n工廠:";
                this.lblNA.Visible = !rwo2.IsSubFactory;
                if (rwo2.IsSubFactory) this.lblNA.SendToBack();
                else this.lblNA.BringToFront();

                isSubFactory = rwo2.IsSubFactory;
                if (rwo2.RWOVersion != rwo2.RoundWorkOrder.WorkOrderColor.WorkOrder.Version)
                    this.cellRWOVersion.ForeColor = Color.Red;
                else
                    this.cellRWOVersion.ForeColor = SystemColors.ControlText; //this.lbPreparebyOA.Text = rwo.RoundWorkOrder.WorkOrderColor.WorkOrder.Project.Factory == "KB" ? kbOA : slOA;
            }
            //bool isFrenchCusomter = DataHelper.IsFrenchCustomer(_customer);
            //if (isFrenchCusomter)
            pivotColSize.HeaderText = sizedesc;
            this.xrShipWindow.Text = (rworkorder2 != null && rworkorder2.RoundWorkOrder.WorkOrderColor.WorkOrder.IsShipWindow) ?
                "(Ship Window 航期窗框)" : "(Non - Ship Window 不作航期窗框)";

            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            XtraReport report;
            //if (_customer.StartsWith("HBIU"))
            report = new RWONonShipWindowLCLReport(this.DataSource, this._customer, isSubFactory);
            //else
            //    report = new RWONonShipWindowLCLReport(this.DataSource, this._customer, isSubFactory);
            //switch (_customer)
            //{
            //    case "SARA"://hans
            //        report = new RWONonShipWindowLCLReport(this.DataSource, this._customer, isSubFactory);
            //        //report = new RWOShipWindowReport(this.DataSource, this._customer);
            //        break;
            //    //case "TAMA"://tama
            //    //    report = new RWONonShipWindowFCLReport(this.DataSource, this._customer, isSubFactory);
            //    //    break;
            //    //case "M&S"://tama
            //    //    goto case "TAMA";
            //    default://others include french customers
            //        report = new RWONonShipWindowLCLReport(this.DataSource, this._customer, isSubFactory);
            //        break;
            //}
            this.xrSubreportShipWindow.ReportSource = report;
        }
    }
}
