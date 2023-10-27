using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.RWO.BO;
using System.Linq;

namespace PH.RWO.BackEnd
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
            var sample = list1.GetWorkOrderSampleWithSort1(_wono);
            this.prPivotSample.DataSource = sample;

            //由David加入 2022-11-07
            if (sample.Count() == 0)
            {
                PH.RWO.BO.WorkOrderList WOList = new PH.RWO.BO.WorkOrderList();
                var WO = WOList.GetWorkOrder(_wono);
                if (WO.SampleIsArranged ?? false)
                {
                    this.prPivotSample.GrandTotalText = "N.A.       Total / 總數:-";
                }
            }

            //this.xrShipWindow.Text = (_customer == "SARA") ? "(Ship Window)" : "(Non - Ship Window)";
            //this.xrShipWindow.Text = this.cellWindowTips.Text = (_customer.StartsWith("HBIU")) ? "(Ship Window 航期窗框)" : "(Non - Ship Window 不作航期窗框)";
        }

        private void WOReport_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            string sizedesc = "";
            string company = "";
            string styleno = "";
            var aa = this.DataSource as IEnumerable<PH.RWO.BO.WorkOrder>;

            PH.RWO.BO.WorkOrder workorder = null;
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
            //this.xrShipWindow.Text = this.cellWindowTips.Text = (workorder != null && workorder.IsShipWindow) ?
            //    "(Ship Window 航期窗框)" : "(Non - Ship Window 不作航期窗框)";

            //xrLabel16.Text = "沛恒制衣 ( 東莞 ) 有限公司";
            //if (workorder.Factory == "CL")
            //{
            //    xrLabel16.Text = "P.Y. Garments Mfg.  (Bangladesh) Co. Ltd.";
            //}


            //French: ETAA, ETAM, MONO, DAXO, LARD, TAIL
            XtraReport report;
            report = new WONonShipWindowLCLReport(this.DataSource, this._customer); //統一成一種格式，由David修改 2020-09-04

            //if (workorder != null && workorder.IsShipWindow)
            //    report = new WOShipWindowReport(this.DataSource, this._customer);
            //else
            //    report = new WONonShipWindowLCLReport(this.DataSource, this._customer);


            //switch (_customer)
            //{
            //    //case "SARA"://hans
            //    case "HBIU":
            //        report = new WOShipWindowReport(this.DataSource, this._customer);
            //        break;
            //    //case "TAMA"://tama
            //    //    report = new WONonShipWindowFCLReport(this.DataSource, this._customer);
            //    //    break;
            //    //case "M&S"://tama
            //    //    goto case "TAMA";
            //    default://others include french customers
            //        report = new WONonShipWindowLCLReport(this.DataSource, this._customer);
            //        break;
            //}
            this.xrSubreportShipWindow.ReportSource = report;

            string parms = string.Format("{0};{1};{2};{3}", _wono, _customer, company, styleno);
            WOStyleMakingReport report1 = new WOStyleMakingReport(parms);
            report1.DataSource = this.DataSource;
            xrSubreportStyleMaking.ReportSource = report1;

            GetStyleMakingDataSource(company, styleno);
            //不打印Requistion要求子报表，由David 注释 2020-08-27
            //WOStyleMakingReport1 rpt = new WOStyleMakingReport1();
            //rpt.DataSource = GetStyleMakingDataSource(company, styleno);
            //this.xrSubreport1.ReportSource = rpt;


            //--agreed
            AgreedWOShipWindowReport agreedrpt = new AgreedWOShipWindowReport(this.DataSource, this._customer);
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
                //this.cbInitial.Checked = !(wo.StyleOrder ?? false);
                //this.cbFlow.Checked = !this.cbInitial.Checked;

                //2022-08-25
                if (wo.StyleOrder == null) //用戶什麽都沒以選擇
                {
                    this.cbInitial.Checked = false;
                    this.cbFlow.Checked = !this.cbInitial.Checked;
                    this.cbYes.Checked = false;
                    this.cbNo.Checked = !this.cbYes.Checked;
                }
                else
                {
                    if ((wo.StyleOrder ?? false) == false) //新單 
                    {
                        this.cbInitial.Checked = true;
                        this.cbFlow.Checked = false;
                        this.cbYes.Checked = false;
                        this.cbNo.Checked = false;
                    }

                    else if ((wo.StyleOrder ?? false) == true) //翻單
                    {
                        this.cbInitial.Checked = false;
                        this.cbFlow.Checked = true;
                        this.cbYes.Checked = wo.StyleRevision ?? false;
                        this.cbNo.Checked = !this.cbYes.Checked;
                    }

                }


                // this.cbInitial.Checked = !(wo.StyleOrder ?? false);
                //this.cbFlow.Checked = (wo.StyleOrder ?? false);
                //this.cbYes.Checked = (wo.StyleOrder ?? false) && (wo.StyleRevision ?? false);
                //this.cbNo.Checked = (wo.StyleOrder ?? false) && (!(wo.StyleRevision ?? false));

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
