using System;
using System.Drawing;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Linq;
using System.Text;
using PH.LineBalanceII.BO;
using PH.Platform.BO;

//namespace PH.MobileQC.UI.RPT.AQL
namespace PH.LineBalanceII.UI
{
    public partial class StyleMasterListFormReport : DevExpress.XtraReports.UI.XtraReport
    {
        public StyleMasterListFormReport(string ALine, string AWorkshop, string PKHKH, string PPHKH, int PEdition, string PZH, string Mark, string Steptype)
        {
            InitializeComponent();

            LineBalanceIIDataContext db = ContextBuilder.CreateContext<LineBalanceIIDataContext>();
            List<OpsSpecSheetMaster> lists = db.GetOpsSpecSheetMasterList1(PKHKH, PPHKH, PEdition, PZH, Mark);
            this.bindingSource1.DataSource = lists;

            if (!string.IsNullOrEmpty(ALine))
            {
                this.tcLineHeader.Text = "Line#";
                this.tcLineHeader1.Text="拉號";
                this.tcLine.Text = ALine;
            }
            else if (!string.IsNullOrEmpty(AWorkshop))
            {
                this.tcLineHeader.Text = "Ws#";
                this.tcLineHeader1.Text = "工場號";
                this.tcLine.Text = AWorkshop;
            }

            StepType.Text = Steptype;
            
            //if (!string.IsNullOrEmpty(ALine))
            //{
            //    this.tcLineHeader.Text = "Line#" + System.Environment.NewLine + "拉號";
            //    this.tcLine.Text = ALine;
            //}
            //else if (!string.IsNullOrEmpty(AWorkshop))
            //{
            //    this.tcLineHeader.Text = "Ws#" + System.Environment.NewLine + "工場號";
            //    this.tcLine.Text = AWorkshop;
            //}

            //lbTest.Text = "K644" + System.Environment.NewLine +
            //    "-1" + System.Environment.NewLine +
            //    "-1A" + System.Environment.NewLine +
            //    "-PA";

            string GuidingPlate =  db.GetParamVaue("GuidingPlate");
            string FeedingDevice = db.GetParamVaue("FeedingDevice");
            string ThroatPlateSet = db.GetParamVaue("ThroatPlateSet");

            xrTableCell41.Text = string.Format("Guiding plate - {0}", GuidingPlate);
            xrTableCell133.Text = string.Format("傍位 - {0}", GuidingPlate);

            xrTableCell52.Text = string.Format("Feeding device - {0}", FeedingDevice);
            xrTableCell28.Text = string.Format("輸送器 - {0}", FeedingDevice);

            xrTableCell54.Text = string.Format("Throat Plate Set (Piece & Code) - {0}", ThroatPlateSet);
            xrTableCell125.Text = string.Format("針板套裝 (件數&編號) - {0}", ThroatPlateSet);



            printDate.Text = "Print Date : " + DateTime.Now.ToString("yyyy-MM-dd");

        }


        private void TableCellSetupNA(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (sender is XRTableCell)
            {
                XRTableCell obj = (XRTableCell)sender;
                if (string.IsNullOrEmpty(obj.Text))
                {
                    obj.Text = "n.a";
                }
            }
        }

        private void xrTableCell2_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
           

        }

        private void Detail_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            

            if (this.GetCurrentColumnValue("OptNo3") != null && this.GetCurrentColumnValue("OptNo3").ToString() != "")
            {


                xrTableCell187.Text = "3"; xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold);
                xrTableCell185.Text = "3"; xrTableCell185.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold);
              
            }

            else if (this.GetCurrentColumnValue("OptNo2") != null && this.GetCurrentColumnValue("OptNo2").ToString() != "")
            {
                xrTableCell187.Text = "2"; xrTableCell187.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold);
                xrTableCell185.Text = "2"; xrTableCell185.Font = new System.Drawing.Font("Microsoft Sans Serif", 7F, System.Drawing.FontStyle.Bold);
              
            }

            else if (this.GetCurrentColumnValue("OptNo1") != null && this.GetCurrentColumnValue("OptNo1").ToString() != "")
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
            //if (this.GetCurrentColumnValue("OptNo3") != null)
            //{
            //    xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 3 opt(s)";
            //    xrTableCell155.Text = "工序描述" + "\r" + "此工作位有3個工序做";
            //    return;
            //}

            //if (this.GetCurrentColumnValue("OptNo2") != null)
            //{
            //    xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 2 opt(s)";
            //    xrTableCell155.Text = "工序描述" + "\r" + "此工作位有2個工序做";
            //    return;
            //}

            //if (this.GetCurrentColumnValue("OptNo1") != null)
            //{
            //    xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 1 opt(s)";
            //    xrTableCell155.Text = "工序描述" + "\r" + "此工作位有1個工序做";
            //    return;
            //}


            //if (!string.IsNullOrEmpty(xrTableCell12.Text))
            //{
            //    xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 3 opts";
            //    xrTableCell155.Text = "工序描述" + "\r" + "此工作位有3個工序做";
            //}
            //else
            //{
            //    if (!string.IsNullOrEmpty(xrTableCell13.Text))
            //    {
            //        xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 2 opts";
            //        xrTableCell155.Text = "工序描述" + "\r" + "此工作位有2個工序做";
            //    }
            //    else
            //    {
            //        xrTableCell2.Text = "Operation Description" + "\r" + "*This working desk has 1 opts";
            //        xrTableCell155.Text = "工序描述" + "\r" + "此工作位有1個工序做";
            //    }

            //}
        }

    }
}
