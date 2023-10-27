using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using PH.Platform.BO;
using System.Linq;

namespace PH.RWO.BackEnd
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
            //this.xrShipWindow.Text = (_customer.StartsWith("HBIU")) ? "(Ship Window 航期窗框)" : "(Non - Ship Window 不作航期窗框)";
        }

        private void RWOReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            //string kbOA = "1) Prepared by KBOA:\n  甲民武里商務部制訂:";
            //string slOA = "1) Prepared by SLOA:\n  石龍商貿部制訂:";

            string sizedesc = "";
            PH.RWO.BO.RoundWorkOrder rworkorder = null;
            var aa = this.DataSource as IEnumerable<PH.RWO.BO.RoundWorkOrder>;
            foreach (PH.RWO.BO.RoundWorkOrder rwo in aa)
            {
                rworkorder = rwo;
                sizedesc = rwo.WorkOrderColor.WorkOrder.SizeMatrixStr;
                //this.lbPreparebyOA.Text = rwo.WorkOrderColor.WorkOrder.Project.Factory == "KB" ? kbOA : slOA;
                this.tbAppliedPII.Visible = rwo.AppliedToPhaseII ?? false;
                this.cbAll.Checked = rwo.AppliedToALL ?? false;
                this.cbPartial.Checked = !(rwo.AppliedToALL ?? false);
                if (rwo.WOVersion != rwo.WorkOrderColor.WorkOrder.Version)
                    this.cellWOVersion.ForeColor = Color.Red;
                else
                    this.cellWOVersion.ForeColor = SystemColors.ControlText;
            }
            //bool isFrenchCusomter = DataHelper.IsFrenchCustomer(_customer);
            //if (isFrenchCusomter)
            pivotColSize.HeaderText = sizedesc;
            this.xrShipWindow.Text = (rworkorder != null && rworkorder.WorkOrderColor.WorkOrder.IsShipWindow) ?
                "(Ship Window 航期窗框)" : "(Non - Ship Window 不作航期窗框)";

            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            XtraReport report;
            if (rworkorder != null && rworkorder.WorkOrderColor.WorkOrder.IsShipWindow)
                report = new RWOShipWindowReport(this.DataSource, this._customer);
            else
            {
                //改為用新報表格式(與WO的格式一樣) 由David修改 2021-12-31
                report = new RWONonShipWindowLCLReport1(rworkorder.WorkOrderColor.WorkOrder, this._customer);

                //report = new RWONonShipWindowLCLReport(this.DataSource, this._customer);
            }

            //switch (_customer)
            //{
            //    case "SARA"://hans
            //        report = new RWOShipWindowReport(this.DataSource, this._customer);
            //        break;
            //    //case "TAMA"://tama
            //    //    report = new RWONonShipWindowFCLReport(this.DataSource, this._customer);
            //    //    break;
            //    //case "M&S"://tama
            //    //    goto case "TAMA";
            //    default://others include french customers
            //        report = new RWONonShipWindowLCLReport(this.DataSource, this._customer);
            //        break;
            //}
            this.xrSubreportShipWindow.ReportSource = report;


            //--agreed
            AgreedRWOShipWindowReport1 agreedrpt = new AgreedRWOShipWindowReport1(rworkorder.WorkOrderColor.WorkOrder, this._customer); //由David修改 2021-01-04
            //AgreedRWOShipWindowReport agreedrpt = new AgreedRWOShipWindowReport(this.DataSource, this._customer);
            //agreedrpt.DataSource = this.DataSource;
            this.agreedSubRpt.ReportSource = agreedrpt;


            //WorkOrderSKUList list = new WorkOrderSKUList();`
            //var bulk = list.GetWorkOrderSKUBulkWithSort(_wono);
            //this.prPivotBulk.DataSource = bulk;


            RWOSOPCDataContext db = ContextBuilder.CreateContext<RWOSOPCDataContext>();
            this.prPivotSample.DataSource = db.WorkOrderSamples.Where(p => p.WorkOrderNo == _wono && p.ColorCode == _color && (p.SampleQty ?? 0) > 0);

            //WorkOrderSampleList list1 = new WorkOrderSampleList();
            //var sample = list1.GetWorkOrderSampleWithSort(_wono);
            //this.prPivotSample.DataSource = sample;

        }

        private void prPivotSample_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            object ColorCode = this.GetCurrentColumnValue("ColorCode");
            if (ColorCode != null && ColorCode.ToString() == this._color)
            {
                //prPivotSample.get

                //    this.GetEffectiveBackColor() = System.Drawing.Color.FromArgb(235, 241, 222);

                //    //(sender as PH.Platform.Report.PivotGrid.PivotGridColumn).get

                //    //this.BackColor = System.Drawing.Color.FromArgb(235, 241, 222);

            }
        }
    }
}
