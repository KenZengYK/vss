using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using System.Linq;

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

            //this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window)" : "(Non - Ship Window)";
            //cellWindowTips.Text = this.xrShipWindow.Text = (_customer.StartsWith("HBIU")) ? "(Ship Window ช่วงเวลาการส่งสินค้า)" : "(Non - Ship Window ไม่มี  ช่วงเวลาการส่งสินค้า)";
        }

        private void WOReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string sizedesc = "";
            string company = "";
            string styleno = "";
            PH.RWO.BO.WorkOrder workorder = null;
            var aa = this.DataSource as IEnumerable<PH.RWO.BO.WorkOrder>;
            foreach (PH.RWO.BO.WorkOrder wo in aa)
            {
                workorder = wo;
                sizedesc = wo.SizeMatrixStr;
                company = wo.Company;
                styleno = wo.StyleNo;

                if (wo.WorkOrderColors != null && wo.WorkOrderColors.Count > 1)
                    GroupFooter3.PageBreak = PageBreak.BeforeBand;
                else
                    GroupFooter3.PageBreak = PageBreak.None;
            }

            //bool isFrenchCusomter = DataHelper.IsFrenchCustomer(_customer);
            //if (isFrenchCusomter)
            pivotColSize.HeaderText = pivotColSize1.HeaderText = sizedesc;
            cellWindowTips.Text = this.xrShipWindow.Text = (workorder != null && workorder.IsShipWindow) ?
                "(Ship Window ช่วงเวลาการส่งสินค้า)" : "(Non - Ship Window ไม่มี  ช่วงเวลาการส่งสินค้า)";

            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            XtraReport report;
            if (workorder != null && workorder.IsShipWindow)
                report = new WOShipWindowReport(this.DataSource, this._customer);
            else
                report = new WONonShipWindowLCLReport(this.DataSource, this._customer);
            //switch (_customer)
            //{
            //    case "SARA"://hans
            //        report = new KB.WOShipWindowReport(this.DataSource, this._customer);
            //        break;
            //    //case "TAMA"://tama
            //    //    report = new KB.WONonShipWindowFCLReport(this.DataSource, this._customer);
            //    //    break;
            //    //case "M&S"://tama
            //    //    goto case "TAMA";
            //    default://others include french customers
            //        report = new KB.WONonShipWindowLCLReport(this.DataSource, this._customer);
            //        break;
            //}
            this.xrSubreportShipWindow.ReportSource = report;

            string parms = string.Format("{0};{1};{2};{3}", _wono, _customer, company, styleno);
            KB.WOStyleMakingReport report1 = new KB.WOStyleMakingReport(parms);
            report1.DataSource = this.DataSource;
            xrSubreportStyleMaking.ReportSource = report1;

            KB.WOStyleMakingReport1 rpt = new KB.WOStyleMakingReport1();
            rpt.DataSource = GetStyleMakingDataSource(company, styleno);
            this.xrSubreport1.ReportSource = rpt;

            //--agreed
            KB.AgreedWOShipWindowReport agreedrpt = new KB.AgreedWOShipWindowReport(this.DataSource, this._customer);
            //agreedrpt.DataSource = this.DataSource;
            this.agreedSubRpt.ReportSource = agreedrpt;
        }
        public object GetStyleMakingDataSource(string company, string styleno)
        {
            PH.RWO.BO.WorkOrderList list = new PH.RWO.BO.WorkOrderList();
            var aa = list.GetWorkOrders(_wono);

            PH.RWO.BO.StyleList list1 = new PH.RWO.BO.StyleList();
            var bb = list1.GetStyleList(company, styleno);
            List<PH.RWO.BO.Style> styles = bb.ToList<PH.RWO.BO.Style>();
            if (styles.Count == 0)
            {
                PH.RWO.BO.Style s = new PH.RWO.BO.Style();
                styles.Add(s);
            }

            foreach (PH.RWO.BO.WorkOrder wo in aa)
            {
                this.cbInitial.Checked = !(wo.StyleOrder ?? false);
                this.cbFlow.Checked = (wo.StyleOrder ?? false);
                this.cbYes.Checked = (wo.StyleOrder ?? false) && (wo.StyleRevision ?? false);
                this.cbNo.Checked = (wo.StyleOrder ?? false) && (!(wo.StyleRevision ?? false));

                foreach (PH.RWO.BO.Style style in styles)
                {
                    style.CuttingMixStyles = wo.CuttingMixStyles;
                    style.CuttingMixStyles = wo.CuttingMixStyles;
                    style.CuttingOthersRemark = wo.CuttingOthersRemark;

                    style.TestWashing = wo.TestWashing;
                    style.TestFusing = wo.TestFusing;
                    style.TestAZO = wo.TestAZO;
                    style.TestOEKO = wo.TestShrinkage;
                    style.TestElongation = wo.TestElongation;
                    style.TestOthers = wo.TestOthers;
                    style.TestOthersRemark = wo.TestOthersRemark;
                    style.TestDate = wo.TestDate;
                    style.TestConfirm = wo.TestConfirm;
                }
            }

            return styles;
        }
    }
}
