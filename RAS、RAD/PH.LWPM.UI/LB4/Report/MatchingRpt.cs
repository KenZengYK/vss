using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using PH.LWPM.BO;
using System.Linq;
using System.Collections.Generic;
namespace PH.LWPM.UI.LB4.Report
{
    public partial class MatchingRpt : DevExpress.XtraReports.UI.XtraReport
    {
      
         private WPMaster Wps;
        public MatchingRpt()
        {
            InitializeComponent();
        }

        public MatchingRpt(WPMaster wpmaster)
        {
            this.Wps = wpmaster;
            InitializeComponent();
        }

        private void MatchingRpt_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            int Total = 0;
            
            RptTitle.Text += "(" + Convert.ToDateTime(Wps.StartTime).ToString("yyyy/MM/dd") + "~~" + Convert.ToDateTime(Wps.EndTime).ToString("yyyy/MM/dd") + ")";
            bindingSource1.DataSource = Wps;
            foreach (TypeList cs in Wps.MCs)
            {
                
                if (Total == 0)
                {
                    cell_mc1.Text = cs.Type;
                    cell_mc2.Text = cs.Num.ToString();
                }
                else
                {
                    TableMc.Rows.Add(GetNewRow(string.Empty, cs.Type, cs.Num));
                }
                Total += cs.Num;
            }

            TableMc.Rows.Add(GetTotalRow(Total));
            Total =0;
            
            foreach (TypeList cs in Wps.WFs)
            {
                if (Total == 0)
                {
                    cell_wf1.Text = cs.Type;
                    cell_wf2.Text = cs.Num.ToString();
                }
                else
                {
                    TableWF.Rows.Add(GetNewRow(string.Empty, cs.Type, cs.Num));
                }
                Total += cs.Num;
            }
            TableWF.Rows.Add(GetTotalRow(Total));
            
        }

        private void Detail1_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (string.IsNullOrEmpty(DetailReport.GetCurrentColumnValue("addWorkStyle1")!=null?DetailReport.GetCurrentColumnValue("addWorkStyle1").ToString():string.Empty))
                DetailReport1.Visible = false;
            else
                DetailReport1.Visible = true;
        }
        private XRTableRow GetNewRow(string Cx, string Cy, Int32 CxS)
        {
            XRTableRow row = new XRTableRow();
            XRTableCell cel0 = new XRTableCell();
            //cel0.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cel0.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            cel0.Width = 83;
            cel0.Text = Cx;
            
            row.Cells.Add(cel0);
            XRTableCell cel1 = new XRTableCell();
            cel1.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cel1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            cel1.Width = 117;
            cel1.Text = Cy;
            row.Cells.Add(cel1);
            XRTableCell cel2 = new XRTableCell();
            cel2.Borders = DevExpress.XtraPrinting.BorderSide.All;
            cel2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            cel2.Width = 100;
            cel2.Text = CxS.ToString();
            row.Cells.Add(cel2);
            return row;

        }

        private XRTableRow GetTotalRow(int Total)
        {
            XRTableRow TotalRow = new XRTableRow();
            XRTableCell Tcell1 = new XRTableCell();
            Tcell1.Width = 200;
            Tcell1.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            Tcell1.Text = "Total:";
            TotalRow.Cells.Add(Tcell1);
            XRTableCell Tcell2 = new XRTableCell();
            Tcell2.Text = Total.ToString();
            Tcell2.TextAlignment = DevExpress.XtraPrinting.TextAlignment.MiddleCenter;
            Tcell2.Width = 100;
            TotalRow.Cells.Add(Tcell2);
            return TotalRow;
        }

    }
}
