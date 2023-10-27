using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using DevExpress.XtraReports.UI;
using System.Data;

namespace PH.FabricInspection.UI.Report.FabricReport
{
    public partial class SupplierQualPerfReportBySupplier : DevExpress.XtraReports.UI.XtraReport
    {        
        public SupplierQualPerfReportBySupplier(DataTable ADataTable, string AReportTitle,  DateTime ADateFrom, DateTime ADateTo, string AWarehouse)
        {
            InitializeComponent();

            xrWhse.Text = AWarehouse;
            string StrMonth = (ADateFrom.Month == ADateTo.Month ? ADateFrom.ToString("yyyy-MM") : (ADateFrom.ToString("yyyy-MM") + "     To     " + ADateTo.ToString("yyyy-MM")));
            xrMonth.Text = StrMonth;
            

            this.bindingSource1.DataSource = ADataTable;
            lbTitle.Text = AReportTitle;
        }

        private void xrTableCell40_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {

            if (this.GetCurrentColumnValue("PartI_Percent") == null) return;
            string PartI_Percent = this.GetCurrentColumnValue("PartI_Percent").ToString();
            if (string.IsNullOrEmpty(PartI_Percent)) return;
            decimal APartI_Percent = Convert.ToDecimal(PartI_Percent);
            xrTableCell40.ForeColor = APartI_Percent < 90 ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }

        private void xrTableCell43_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("PartII_Percent") == null) return;
            string PartII_Percent = this.GetCurrentColumnValue("PartII_Percent").ToString();
            if (string.IsNullOrEmpty(PartII_Percent)) return;
            decimal APartII_Percent = Convert.ToDecimal(PartII_Percent);
            xrTableCell43.ForeColor = APartII_Percent < 90 ? System.Drawing.Color.Red : System.Drawing.Color.Black;
         
        }

        private void xrTableCell46_BeforePrint(object sender, System.Drawing.Printing.PrintEventArgs e)
        {
            if (this.GetCurrentColumnValue("PartIII_Percent") == null) return;
            string PartIII_Percent = this.GetCurrentColumnValue("PartIII_Percent").ToString();
            if (string.IsNullOrEmpty(PartIII_Percent)) return;
            decimal APartIII_Percent = Convert.ToDecimal(PartIII_Percent);
            xrTableCell46.ForeColor = APartIII_Percent < 90 ? System.Drawing.Color.Red : System.Drawing.Color.Black;
        }

    }
}
