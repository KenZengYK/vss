using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using System.Text;
using PH.LWPM.BO;
using PH.Platform.BO;
using System.Data;


namespace PH.LWPM.UI.LB4//PH.MobileQC.UI.RPT.AQL
{
    public partial class StyleMasterListFormReport_B2 : DevExpress.XtraReports.UI.XtraReport
    {
        public int BindingSourceCount { get; set; }
        public StyleMasterListFormReport_B2(DataSet lists, string StepReport)
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            List<OpsSpecSheetMaster2> RptSource = db.GetDataSet2( lists);
            BindingSourceCount=  RptSource.Count();
            this.bindingSource1.DataSource = RptSource;


            string GuidingPlate = db.GetParamVaue("GuidingPlate");
            string FeedingDevice = db.GetParamVaue("FeedingDevice");
            string ThroatPlateSet = db.GetParamVaue("ThroatPlateSet");

            //xrTableCell41.Text = string.Format("Guiding plate - {0}", GuidingPlate);
            //xrTableCell133.Text = string.Format("傍位 - {0}", GuidingPlate);

            //xrTableCell52.Text = string.Format("Feeding device - {0}", FeedingDevice);
            //xrTableCell28.Text = string.Format("輸送器 - {0}", FeedingDevice);

            //xrTableCell54.Text = string.Format("Throat Plate Set (Piece & Code) - {0}", ThroatPlateSet);
            //xrTableCell125.Text = string.Format("針板套裝 (件數&編號) - {0}", ThroatPlateSet);

            printDate.Text = "Print Date : " + DateTime.Now.ToString("yyyy-MM-dd") + "\r\nছাপ তারিখ : " + DateTime.Now.ToString("yyyy-MM-dd");


            StepType.Text = StepReport;
            xrTableCell181.Text = ReportHelper.OptPermitReportVersion;

            //xrTableCell173.Text = Steptype != "Step 4" ? "This W-Desk(Step 5)" : "";ধাপ 4 RD নিশ্চিত
            //xrTableCell74.Text = Steptype != "Step 4" ? "此工作位(第五步驟)" : "";
        }

        public StyleMasterListFormReport_B2(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId, string StepReport, string WPSN,bool IsAllStep5)
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            List<OpsSpecSheetMaster2> lists = db.Step5GetDataSet2(Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime, OperationCode, WorkId, WPSN);
            BindingSourceCount = lists.Count();
            this.bindingSource1.DataSource = lists;


            string GuidingPlate = db.GetParamVaue("GuidingPlate");
            string FeedingDevice = db.GetParamVaue("FeedingDevice");
            string ThroatPlateSet = db.GetParamVaue("ThroatPlateSet");

            //xrTableCell41.Text = string.Format("Guiding plate - {0}", GuidingPlate);
            //xrTableCell133.Text = string.Format("傍位 - {0}", GuidingPlate);

            //xrTableCell52.Text = string.Format("Feeding device - {0}", FeedingDevice);
            //xrTableCell28.Text = string.Format("輸送器 - {0}", FeedingDevice);

            //xrTableCell54.Text = string.Format("Throat Plate Set (Piece & Code) - {0}", ThroatPlateSet);
            //xrTableCell125.Text = string.Format("針板套裝 (件數&編號) - {0}", ThroatPlateSet);

            printDate.Text = "Print Date : " + DateTime.Now.ToString("yyyy-MM-dd") + "\r\n" + "ছাপ তারিখ : " + DateTime.Now.ToString("yyyy-MM-dd");
            
            StepType.Text = StepReport;
            xrTableCell181.Text = ReportHelper.OptPermitReportVersion;

            //xrTableCell173.Text = Steptype != "Step 4" ? "This W-Desk(Step 5)" : "";
            //xrTableCell74.Text = Steptype != "Step 4" ? "此工作位(第五步驟)" : "";
        }

          public StyleMasterListFormReport_B2(DataSet lists, int ALanguage)
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            List<OpsSpecSheetMaster2> RptSource = db.GetDataSet2(lists, ALanguage);
            BindingSourceCount = RptSource.Count();
            this.bindingSource1.DataSource = RptSource;


            string GuidingPlate = db.GetParamVaue("GuidingPlate");
            string FeedingDevice = db.GetParamVaue("FeedingDevice");
            string ThroatPlateSet = db.GetParamVaue("ThroatPlateSet");

            //xrTableCell41.Text = string.Format("Guiding plate - {0}", GuidingPlate);
            //xrTableCell133.Text = string.Format("গাইডিং প্লেট - {0}", GuidingPlate);

            //xrTableCell52.Text = string.Format("Feeding device - {0}", FeedingDevice);
            //xrTableCell28.Text = string.Format("ফিডিং ডিভাইস - {0}", FeedingDevice);

            //xrTableCell54.Text = string.Format("Throat Plate Set (Piece & Code) - {0}", ThroatPlateSet);
            //xrTableCell125.Text = string.Format("থ্রাট প্লেট সেট (পিস এবং কোড) - {0}", ThroatPlateSet);

            printDate.Text = "Print Date : " + DateTime.Now.ToString("yyyy-MM-dd") + "\r\nছাপ তারিখ : " + DateTime.Now.ToString("yyyy-MM-dd");

            StepType.Text = "Step 5 re-arrangement";
            xrTableCell181.Text = ReportHelper.OptPermitReportVersion;
        }


        private void TableCellSetupNA(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (sender is XRTableCell)
            {
                XRTableCell obj = (XRTableCell)sender;
                if (string.IsNullOrEmpty(obj.Text))
                {
                    obj.Text = "--";
                }
            }
        }

        private void xrTableCell2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {


        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {





            if (this.GetCurrentColumnValue("headernumber") != null && this.GetCurrentColumnValue("headernumber").ToString() != "" && this.GetCurrentColumnValue("headernumber").ToString() != "1")
            {


                xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold);
                xrTableCell185.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Bold);

            }
            else
            {
                xrTableCell187.Text = "1"; xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F);
                xrTableCell185.Text = "1"; xrTableCell185.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F);

            }



            if (this.GetCurrentColumnValue("HW1") != null && this.GetCurrentColumnValue("HW1").ToString() != "")
            {
                if (this.GetCurrentColumnValue("HW1").ToString().Substring(0, 4) == "TB1b" || this.GetCurrentColumnValue("HW1").ToString().Substring(0, 4) == "TB1a")
                {
                    xrTableCell149.Text = "100% Check";
                    xrTableCell150.Text = "全檢";
                }
                else
                {
                    xrTableCell149.Text = "Check 1 in 6 Garments";
                    xrTableCell150.Text = "6 টি গার্মেন্টসে 1 পরীক্ষা করুন";
                }
            }
            else if (this.GetCurrentColumnValue("HW2") != null && this.GetCurrentColumnValue("HW2").ToString() != "")
            {
                if (this.GetCurrentColumnValue("HW2").ToString().Substring(0, 4) == "TB1b" || this.GetCurrentColumnValue("HW2").ToString().Substring(0, 4) == "TB1a")
                {
                    xrTableCell149.Text = "100% Check";
                    xrTableCell150.Text = "全檢";
                }
                else
                {
                    xrTableCell149.Text = "Check 1 in 6 Garments";
                    xrTableCell150.Text = "6 টি গার্মেন্টসে 1 পরীক্ষা করুন";
                }
            }
            else if (this.GetCurrentColumnValue("HW3") != null && this.GetCurrentColumnValue("HW3").ToString() != "")
            {
                if (this.GetCurrentColumnValue("HW3").ToString().Substring(0, 4) == "TB1b" || this.GetCurrentColumnValue("HW3").ToString().Substring(0, 4) == "TB1a")
                {
                    xrTableCell149.Text = "100% Check";
                    xrTableCell150.Text = "全檢";
                }
                else
                {
                    xrTableCell149.Text = "Check 1 in 6 Garments";
                    xrTableCell150.Text = "6 টি গার্মেন্টসে 1 পরীক্ষা করুন";
                }
            }
            else
            {
                xrTableCell149.Text = "Check 1 in 6 Garments";
                xrTableCell150.Text = "6 টি গার্মেন্টসে 1 পরীক্ষা করুন";
            }

            //if (this.GetCurrentColumnValue("OptNo3") != null && this.GetCurrentColumnValue("OptNo3").ToString() != "")
            //{

            
            //    xrTableCell187.Text = "3"; xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold);
            //    xrTableCell185.Text = "3"; xrTableCell185.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold);
            //    return;
            //}

            //else if (this.GetCurrentColumnValue("OptNo2") != null && this.GetCurrentColumnValue("OptNo2").ToString() != "")
            //{
            //    xrTableCell187.Text = "2"; xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold);
            //    xrTableCell185.Text = "2"; xrTableCell185.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Bold);
            //    return;
            //}

            //else if (this.GetCurrentColumnValue("OptNo1") != null && this.GetCurrentColumnValue("OptNo1").ToString() != "")
            //{
            //    xrTableCell187.Text = "1"; xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F);
            //    xrTableCell185.Text = "1"; xrTableCell185.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F);
            //    return;
            //}  



            //if (this.GetCurrentColumnValue("OptNo3") != null && this.GetCurrentColumnValue("OptNo3").ToString() !="")
            //{ xrTableCell187.Text = "2"; xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            //    xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 3 opt(s)";
            //    xrTableCell155.Text = "工序描述" + "\r" + "此工作位有3個工序做";
            //    return;
            //}

            //if (this.GetCurrentColumnValue("OptNo2") != null && this.GetCurrentColumnValue("OptNo2").ToString() != "")
            //{
            //    xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 2 opt(s)";
            //    xrTableCell155.Text = "工序描述" + "\r" + "此工作位有2個工序做";
            //    return;
            //}

            //if (this.GetCurrentColumnValue("OptNo1") != null && this.GetCurrentColumnValue("OptNo1").ToString() != "")
            //{
            //    xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 1 opt(s)";
            //    xrTableCell155.Text = "工序描述" + "\r" + "此工作位有1個工序做";
            //    return;
            //}



        }

    }
}
