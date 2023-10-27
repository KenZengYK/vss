using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Collections.Generic;
using System.Linq;
using PH.RWO.BO;

namespace PH.RWO.BackEnd
{
    public partial class WOStyleMakingReport : DevExpress.XtraReports.UI.XtraReport
    {
        public WOStyleMakingReport()
        {
            InitializeComponent();
        }
        string _wono;
        string _customer;
        string _company;
        string _styleno;

        public void GetValues(string parameters)
        {
            if (string.IsNullOrEmpty(parameters)) return;

            string[] c = new string[1] { ";" };
            string[] ss = parameters.Split(c, StringSplitOptions.None);
            this._wono = ss[0];
            this._customer = ss[1].Trim().ToUpper();
            this._company = ss[2];
            this._styleno = ss[3];
        }

        public WOStyleMakingReport(string param)
        {
            InitializeComponent();
            GetValues(param);

            WOStyleMakingReport1 rpt = new WOStyleMakingReport1();
            rpt.DataSource = GetStyleMakingDataSource(_company, _styleno);
            this.xrSubreport1.ReportSource = rpt;
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

        private void SetPivotDataSource()
        {
            WorkOrderSampleList list1 = new WorkOrderSampleList();
            var sample = list1.GetWorkOrderSampleWithSort(_wono);
            this.prPivotSample.DataSource = sample;

            //this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window)" : "(Non - Ship Window)";
            //this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window 航期窗框)" : "(Non - Ship Window 不作航期窗框)";

            string sizedesc = "";
            //string company = "";
            //string styleno = "";
            var aa = this.DataSource as IEnumerable<PH.RWO.BO.WorkOrder>;
            foreach (PH.RWO.BO.WorkOrder wo in aa)
            {
                sizedesc = wo.SizeMatrixStr;
                //company = wo.Company;
                //styleno = wo.StyleNo;
            }

            //bool isFrenchCusomter = DataHelper.IsFrenchCustomer(_customer);
            //if (isFrenchCusomter)
            pivotColSize1.HeaderText = sizedesc;
        }

        private void WOStyleMakingReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            SetPivotDataSource();
        }
    }
}
