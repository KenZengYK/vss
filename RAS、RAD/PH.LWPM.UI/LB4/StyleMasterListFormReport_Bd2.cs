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
    public partial class StyleMasterListFormReport_Bd2 : DevExpress.XtraReports.UI.XtraReport
    {
        public int BindingSourceCount { get; set; }
        public StyleMasterListFormReport_Bd2(DataSet ds, string stepReport)
            //(string Rwo, string Qn, string j_NO, string LineCode, string Bcolor, string J2_job, string Factory, string OptionType, string Steptype, string OTN, DateTime dateTime, string OperationCode, string WorkId,string stepReport, string WPSN)
        {
            InitializeComponent();

            RAPLQDataContext db = ContextBuilder.CreateContext<RAPLQDataContext>();
            List<OpsSpecSheetMaster2> lists = db.GetDataSet2(ds);
                //(Rwo, Qn, j_NO, LineCode, Bcolor, J2_job, Factory, OptionType, Steptype, OTN, dateTime, OperationCode, WorkId, WPSN);
            BindingSourceCount=  lists.Count();
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

            printDate.Text = "Print Date : " + DateTime.Now.ToString("yyyy-MM-dd");
            StepType.Text = stepReport;

            //xrTableCell173.Text = Steptype != "Step 4" ? "This W-Desk(Step 5)" : "";
            //xrTableCell74.Text = Steptype != "Step 4" ? "此工作位(第五步驟)" : "";
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
                    xrTableCell150.Text = "每6件檢1件";
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
                    xrTableCell150.Text = "每6件檢1件";
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
                    xrTableCell150.Text = "每6件檢1件";
                }
            }
            else
            {
                xrTableCell149.Text = "Check 1 in 6 Garments";
                xrTableCell150.Text = "每6件檢1件";
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
