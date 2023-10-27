using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class SummaryListReport : DevExpress.XtraReports.UI.XtraReport
    {
        public SummaryListReport(DataTable ADataTable, string AReportTitle, string AReportType, string AWhse, string ADateFrom, string ADateTo)
        {
            InitializeComponent();

            this.bindingSource1.DataSource = ADataTable;
            lbTitle.Text = AReportTitle;

            lbWhse.Text = AWhse;

            lbDateFrom.Text = ADateFrom;
            lbDateTo.Text = ADateTo;
            if (AReportType == "Daily")
            {
                lbTo.Visible = false;
                lbDateTo.Visible = false;
                tcShowDate.Text = "Date";
            }
            else if (AReportType == "Monthly")
            {
                lbDate.Text = "Month: ";
                tcShowDate.Text = "Month";
            }
            else if (AReportType == "Weekly")
            {
                lbDate.Text = "Wk: ";
                lbDateTo.Text = ADateTo;
                tcShowDate.Text = "Wk";
            }

        }

        private void xrTableCell37_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("PartI_Percent") == null) return;
            string PartI_Percent = this.GetCurrentColumnValue("PartI_Percent").ToString();            
            if (string.IsNullOrEmpty(PartI_Percent)) return;
            decimal APartI_Percent = Convert.ToDecimal(PartI_Percent);
            if (APartI_Percent < 90)
            {
                // e.Appearance.Font = new Font(e.Appearance.Font, FontStyle.Bold);
                xrTableCell37.ForeColor = System.Drawing.Color.Red;
            }
            else 
            {
                xrTableCell37.ForeColor = System.Drawing.Color.Black;
            }


        }

    }
}
